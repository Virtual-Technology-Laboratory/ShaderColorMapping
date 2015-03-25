from __future__ import print_function

import warnings

import numpy as np
from scipy import ndimage

#import matplotlib.pyplot as plt
#from matplotlib.colors import LightSource, Normalize

from osgeo import gdal, osr
from osgeo.gdalconst import *

def haversine(coord1, coord2, radius=6367):
    """
    Calculate the great circle distance between two points 
    on the earth (specified in decimal degrees)
    """
    (lon1, lat1) = coord1
    (lon2, lat2) = coord2

    # convert decimal degrees to radians 
    lon1, lat1, lon2, lat2 = list(map(np.radians, [lon1, lat1, lon2, lat2]))

    # haversine formula 
    dlon = lon2 - lon1 
    dlat = lat2 - lat1 
    a = np.sin(dlat/2)**2 + np.cos(lat1) * np.cos(lat2) * np.sin(dlon/2)**2
    c = 2 * np.arcsin(np.sqrt(a)) 

    km = radius * c
    return km 

class DEM32:
    """
    make shift class to represent a 32-bit DEM
    """
    
    # I monkey wrench this to make it do what I need as needed
    def __init__(self, fname):

            # open the image
            ds = gdal.Open(fname, GA_ReadOnly)

            if ds is None:
                raise Exception('Could not open "%s"' % fname)

            self.fname = fname
            self.ds = ds
            proj = ds.GetProjectionRef()
            srs = None
            if proj is not None:
                srs = osr.SpatialReference()
                srs.ImportFromWkt(proj)
            self.proj, self.srs = proj, srs
            
            self.band = ds.GetRasterBand(1)
            self.transform = self.ds.GetGeoTransform(can_return_null = True)
            self.xres = self.transform[1]
            self.yres = self.transform[5]

            nx, ny = ds.RasterXSize, ds.RasterYSize
            
            ul = self.ul= self.getLngLat(0, 0)
            ll = self.ll = self.getLngLat(0, ny)
            ur = self.ur= self.getLngLat(nx, 0)
            lr = self.lr = self.getLngLat(nx, ny)
            
            corners=[ul, ll, ur, lr]
            self.extents = [min(zip(*corners)[0]), max(zip(*corners)[1]), 
                            max(zip(*corners)[0]), min(zip(*corners)[1])]
          
    def getLngLat(self, x, y):
        assert self.transform != None

        xOrigin, xPixSize, xZero, yOrigin, yZero, yPixSize = self.transform

        assert xZero == yZero == 0.0

        lng = xOrigin + xPixSize*x 
        lat = yOrigin + yPixSize*y  

        return lng, lat
    
    def getData(self):
        """
        data isn't loaded by default to conserve memory
        """
        return self.band.ReadAsArray()

    def getElevationLimits(self):
        # read one row at a time to handle huge files
        # this is slower, but saves memory
        
        nx, ny = self.ds.RasterXSize, self.ds.RasterYSize
        band = self.band

        zmin = 1e38
        zmax = -1e38
        
        for i in xrange(ny):
            data = band.ReadAsArray(0, i, nx, 1, ny, 1)

            dmin = np.min(data)
            dmax = np.max(data)

            if dmin < zmin:
                zmin = dmin

            if dmax > zmax:
                zmax = dmax

        return zmin, zmax
    
    def getMeshGrid(self):
        ds = self.ds
        
        nx = ds.RasterXSize
        ny = ds.RasterYSize
        
        xmin, ymax, xmax, ymin = self.extents
        
        xi = np.linspace(xmin, xmax, nx)
        yi = np.linspace(ymin, ymax, ny)
        return np.meshgrid(xi, yi) 
   
    def _calculate_surface_normals(self, scale):
        xres, yres = self.xres, self.yres
        
        elevation = self.getData() * scale
        
        # gradient in x and y directions
        dy, dx = np.gradient(elevation)  # find gradient
        dx /=  -xres
        dy /=  -yres
        
        slope = np.arctan(np.hypot(dx, dy))
        dz = np.cos(slope)
        
        d = np.sqrt(dx**2 + dy**2 + dz**2)
        
        return dx/d, dy/d, dz/d
         
    def _write_ds(self, bands, dst_fname, drivername, dtype=GDT_Byte):
        nx, ny = self.ds.RasterXSize, self.ds.RasterYSize
        nb = len(bands)
        
        # initialize raster
        driver = gdal.GetDriverByName(drivername)
        ds = driver.Create(dst_fname, nx, ny, nb, dtype)

        # set projection

        wkt = self.srs.ExportToWkt()
        proj = osr.SpatialReference()
        proj.CopyGeogCSFrom(self.srs)
        status = proj.ImportFromWkt(wkt)

        ds.SetProjection(proj.ExportToWkt())

        # set geotransform
        ds.SetGeoTransform(self.transform)

        # write data
        for i, b in enumerate(bands):
            ds.GetRasterBand(i+1).WriteArray(b)

        ds = None  # Writes and closes file

    def set_nodata_to_zero(self, dst_fname, nodata=0.0, drivername='GTiff'):
        data = self.getData()
        nodata_indx = np.where(data < 0)
        data[nodata_indx] = 0.0
        self._write_ds([data], dst_fname, drivername, dtype=GDT_Float32)
        
    def feet_to_meters(self, dst_fname, drivername='GTiff'):
        data = self.getData()
        data *= 0.3048
        self._write_ds([data], dst_fname, drivername, dtype=GDT_Float32)

    def gaussian_blur(self, dst_fname, sigma=1, drivername='GTiff'):
        data = self.getData()
        data = ndimage.filters.gaussian_filter(data, sigma)
        
        self._write_ds([data], dst_fname, drivername, dtype=GDT_Float32)
        
    def slope_map(self, dst_fname, drivername='GTiff'):
        xres, yres = self.xres, self.yres
        elevation = self.getData()
        
        dy, dx = np.gradient(elevation) 
        
        slope = np.arctan(np.hypot(dx/xres, dy/yres)) # slope in radians 
        slope = np.array( slope / np.max(slope) * 255.0, dtype=np.uint8)
                         
        self._write_ds([slope], dst_fname, drivername)
        
    def aspect_map(self, dst_fname, drivername='GTiff'):
        xres, yres = self.xres, self.yres
        elevation = self.getData()
        
        dy, dx = np.gradient(elevation) 
        
        aspect = np.arctan2(dx, dy)
        aspect = 127.5 * (aspect/np.pi + 1.0)
                         
        self._write_ds([aspect], dst_fname, drivername)
        
        
    def normal_map(self, dst_fname, drivername='GTiff', scale=1.0):
        dx, dy, dz = self._calculate_surface_normals(scale)
        
        r = np.array(127.5 * (dx + 1.0), dtype=np.uint8)
        g = np.array(127.5 * (dy + 1.0), dtype=np.uint8)
        b = np.array(127.5 * (dz + 1.0), dtype=np.uint8)
        
        self._write_ds([r, g, b], dst_fname, drivername)

def make_normal(src, dst, drivername='GTiff', scale=1.0):
    gt = DEM32(src)
    gt.normal_map(dst, drivername, scale)

if __name__ == '__main__':
        
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('mode', type=str,
                        help='Utility has 2 modes: normal, splat')
    parser.add_argument('src_dataset', type=str,
                        help='The input raster to be processed')
    parser.add_argument('dst_dataset', type=str,
                        help='The output raster produced')
    parser.add_argument('--drivername',
                        help='path to elemlist file ("Gtiff")')
    
    args = parser.parse_args()
    mode = args.mode
    src_dataset = args.src_dataset
    dst_dataset = args.dst_dataset
    
    drivername = (args.drivername, 'GTiff')[args.drivername is None]

    if mode.lower().strip() == 'normal':
        make_normal(src_dataset, dst_dataset, drivername)
    
    
