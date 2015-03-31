import matplotlib.pyplot as plt
import numpy as np
from pprint import pprint as pp

segmentDataFieldT = """    _SegmentData{stop} ("Segment Color {stop}", Color) = {color}\n"""
segmentuniformT = """uniform float4 _SegmentData{stop};\n"""
fragLogicT = """\
        x0 = 0;
        x1 = {x1};
        if (Y <= x1)
            return lerp(_SegmentData{stop}, _SegmentData{stop1}, (Y - x0) / (x1 - x0));
    
"""

def exportColorMap(cm):
    
    d = cm._segmentdata
    dr = d['red']
    dg = d['green']
    db = d['blue']

    x = set(list(zip(*dr))[0])
    x.update(set(list(zip(*dg))[0]))
    x.update(set(list(zip(*db))[0]))
    x = sorted(list(x))
    numstops = float(len(x))

    segData = []
    for i, stop in enumerate(x):

        # colormap does not return the correct color for the last stop
        # e.g. when the stop is 1.0, so we rebuild it from the
        # segment data
        if stop == 1:
            color = (dr[-1][1], dg[-1][1], db[-1][1], 1.0)
        else:
            color = cm(stop)
            
        segData.append(segmentDataFieldT.format(stop='%03i' % i,
                                                color=_strColor(color)))
    segData = ''.join(segData)


    segUniforms = []
    for i, stop in enumerate(x):    
        segUniforms.append(segmentuniformT.format(stop='%03i' % i))
    segUniforms = ''.join(segUniforms)

    fragLogic = []
    for i, stop in enumerate(x[1:]):
        fragLogic.append(fragLogicT.format(x1=stop,
                                           stop='%03i' % i,
                                           stop1='%03i' % (i+1)))
    fragLogic = ''.join(fragLogic)
   
    
    tmplt = open('shader.template').read()

    tmplt = tmplt.format(ShaderName=r'Custom/%s' % cm_name,
                         SegmentDataFields=segData,
                         SegmentDataUniforms=segUniforms,
                         FragLogic=fragLogic)
                 
    with open(r"./shaders/%s.shader" % cm.name, 'w') as fid:
        fid.write(tmplt)

def _strColor(colTup):
    return '(%0.5f, %0.5f, %0.5f, %0.5f)' % colTup

if __name__ == "__main__":

    import pmkmp

    for cm_name in plt.colormaps():
        if cm_name.endswith('_r'):
            continue
        
        cm = plt.get_cmap(cm_name)

        try:
            exportColorMap(cm)
        except:
            print('Could not export %s' % cm_name)
