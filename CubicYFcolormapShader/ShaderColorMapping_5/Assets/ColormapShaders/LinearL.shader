
Shader "Custom/LinearL" {
	
Properties {
	_MainTex ("32bit Float Map", RECT) = "white" {}
	
	_FloatMin ("Min Value", float) = -1
	_FloatMax ("Max Value", float) =  1
    
    _SegmentData000 ("Segment Color 000", Color) = (0.01430, 0.01430, 0.01430, 1.00000)
    _SegmentData001 ("Segment Color 001", Color) = (0.14130, 0.05550, 0.12560, 1.00000)
    _SegmentData002 ("Segment Color 002", Color) = (0.17610, 0.09110, 0.27820, 1.00000)
    _SegmentData003 ("Segment Color 003", Color) = (0.17100, 0.13140, 0.45400, 1.00000)
    _SegmentData004 ("Segment Color 004", Color) = (0.10740, 0.22340, 0.49840, 1.00000)
    _SegmentData005 ("Segment Color 005", Color) = (0.06860, 0.30440, 0.50680, 1.00000)
    _SegmentData006 ("Segment Color 006", Color) = (0.00080, 0.39270, 0.42670, 1.00000)
    _SegmentData007 ("Segment Color 007", Color) = (0.00000, 0.47630, 0.34640, 1.00000)
    _SegmentData008 ("Segment Color 008", Color) = (0.00000, 0.55650, 0.24690, 1.00000)
    _SegmentData009 ("Segment Color 009", Color) = (0.00000, 0.63810, 0.16380, 1.00000)
    _SegmentData010 ("Segment Color 010", Color) = (0.21670, 0.69660, 0.00000, 1.00000)
    _SegmentData011 ("Segment Color 011", Color) = (0.38980, 0.75630, 0.00000, 1.00000)
    _SegmentData012 ("Segment Color 012", Color) = (0.69120, 0.77950, 0.00000, 1.00000)
    _SegmentData013 ("Segment Color 013", Color) = (0.85480, 0.80410, 0.45550, 1.00000)
    _SegmentData014 ("Segment Color 014", Color) = (0.97120, 0.84290, 0.72870, 1.00000)
    _SegmentData015 ("Segment Color 015", Color) = (0.96920, 0.92730, 0.89610, 1.00000)

}

Category {
	SubShader {
		Tags {"Queue" = "Geometry"}
//		Zwrite Off
		Pass {
			Fog { Mode off }
				
CGPROGRAM
// Upgrade NOTE: excluded shader from Xbox360, OpenGL ES 2.0 because it uses unsized arrays
#pragma target 4.0
#pragma exclude_renderers xbox360 gles
#pragma vertex vert_img
#pragma fragment frag
#pragma fragmentoption ARB_precision_hint_fastest 
#include "UnityCG.cginc"

uniform sampler2D _MainTex;

uniform float _FloatMin;
uniform float _FloatMax;

uniform float4 _SegmentData000;
uniform float4 _SegmentData001;
uniform float4 _SegmentData002;
uniform float4 _SegmentData003;
uniform float4 _SegmentData004;
uniform float4 _SegmentData005;
uniform float4 _SegmentData006;
uniform float4 _SegmentData007;
uniform float4 _SegmentData008;
uniform float4 _SegmentData009;
uniform float4 _SegmentData010;
uniform float4 _SegmentData011;
uniform float4 _SegmentData012;
uniform float4 _SegmentData013;
uniform float4 _SegmentData014;
uniform float4 _SegmentData015;


float Normalize(float Y)
{
	return (Y - _FloatMin) / (_FloatMax - _FloatMin);
}
 
float Color2Float(float4 c)
{
	float f;
	int fi;
					
	fi = c.a * 256;
	int i32 = (fi & 128) / 128;
	int i31 = (fi & 64) / 64;
	int i30 = (fi & 32) / 32;
	int i29 = (fi & 16) / 16;
	int i28 = (fi & 8) / 8;
	int i27 = (fi & 4) / 4;
	int i26 = (fi & 2) / 2;
	int i25 = (fi & 1) / 1;
					
	fi = c.r * 256;
	int i24 = (fi & 128) / 128;
	int i23 = (fi & 64) / 64;
	int i22 = (fi & 32) / 32;
	int i21 = (fi & 16) / 16;
	int i20 = (fi & 8) / 8;
	int i19 = (fi & 4) / 4;
	int i18 = (fi & 2) / 2;
	int i17 = (fi & 1) / 1;
					
	fi = c.g * 256;
	int i16 = (fi & 128) / 128;
	int i15 = (fi & 64) / 64;
	int i14 = (fi & 32) / 32;
	int i13 = (fi & 16) / 16;
	int i12 = (fi & 8) / 8;
	int i11 = (fi & 4) / 4;
	int i10 = (fi & 2) / 2;
	int i09 = (fi & 1) / 1;
					
	fi = c.b * 256;
	int i08 = (fi & 128) / 128;
	int i07 = (fi & 64) / 64;
	int i06 = (fi & 32) / 32;
	int i05 = (fi & 16) / 16;
	int i04 = (fi & 8) / 8;
	int i03 = (fi & 4) / 4;
	int i02 = (fi & 2) / 2;
	int i01 = (fi & 1) / 1;
					
	float _sign = 1.0;
	if (i32==1)
	{
		_sign = -1.0;
	}
	float _bias = 127.0;
	float _exponent = i24 + i25*2.0 + i26*4.0 + i27*8.0 + i28*16.0 + i29*32.0 + i30*64.0 + i31*128.0;
	float _mantisa = 1.0 + (i23/2.0) + (i22/4.0) + (i21/8.0) + (i20/16.0) + (i19/32.0) + (i18/64.0) + (i17/128.0) + (i16/256.0) + (i15/512.0) + (i14/1024.0) + (i13/2048.0) + (i12/4096.0) + (i11/8192.0) + (i10/16384.0) + (i09/32768.0) + (i08/65536.0) + (i07/131072.0) + (i06/262144.0) + (i05/524288.0) + (i04/1048576.0) + (i03/2097152.0) + (i02/4194304.0) + (i01/8388608.0);
					
	if (((_exponent==255.0) || (_exponent==0.0)) && (_mantisa==0.0))
	{
		f = 0.0;
	} else
	{
		_exponent = _exponent - _bias;
		f = _sign * _mantisa * pow(2.0, _exponent);
	} 
			
	return f;
}

float4 frag (v2f_img i) : COLOR
{
	float4 col = tex2D(_MainTex, i.uv);
	float Y =  Color2Float(col);
	Y = Normalize(Y);

	float x0, x1, normed;

        x0 = 0;
        x1 = 0.0666666666667;
        if (Y <= x1)
            return lerp(_SegmentData000, _SegmentData001, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.133333333333;
        if (Y <= x1)
            return lerp(_SegmentData001, _SegmentData002, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.2;
        if (Y <= x1)
            return lerp(_SegmentData002, _SegmentData003, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.266666666667;
        if (Y <= x1)
            return lerp(_SegmentData003, _SegmentData004, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.333333333333;
        if (Y <= x1)
            return lerp(_SegmentData004, _SegmentData005, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.4;
        if (Y <= x1)
            return lerp(_SegmentData005, _SegmentData006, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.466666666667;
        if (Y <= x1)
            return lerp(_SegmentData006, _SegmentData007, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.533333333333;
        if (Y <= x1)
            return lerp(_SegmentData007, _SegmentData008, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.6;
        if (Y <= x1)
            return lerp(_SegmentData008, _SegmentData009, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.666666666667;
        if (Y <= x1)
            return lerp(_SegmentData009, _SegmentData010, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.733333333333;
        if (Y <= x1)
            return lerp(_SegmentData010, _SegmentData011, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.8;
        if (Y <= x1)
            return lerp(_SegmentData011, _SegmentData012, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.866666666667;
        if (Y <= x1)
            return lerp(_SegmentData012, _SegmentData013, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.933333333333;
        if (Y <= x1)
            return lerp(_SegmentData013, _SegmentData014, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 1.0;
        if (Y <= x1)
            return lerp(_SegmentData014, _SegmentData015, (Y - x0) / (x1 - x0));
    


	return float4(0, 0, 0, 0);
}
ENDCG

		}
	}
}

Fallback off

}