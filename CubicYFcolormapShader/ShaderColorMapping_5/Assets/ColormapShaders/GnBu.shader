
Shader "Custom/GnBu" {
	
Properties {
	_MainTex ("32bit Float Map", RECT) = "white" {}
	
	_FloatMin ("Min Value", float) = -1
	_FloatMax ("Max Value", float) =  1
    
    _SegmentData000 ("Segment Color 000", Color) = (0.96863, 0.98824, 0.94118, 1.00000)
    _SegmentData001 ("Segment Color 001", Color) = (0.87812, 0.95282, 0.85849, 1.00000)
    _SegmentData002 ("Segment Color 002", Color) = (0.79889, 0.92114, 0.77206, 1.00000)
    _SegmentData003 ("Segment Color 003", Color) = (0.65675, 0.86588, 0.71050, 1.00000)
    _SegmentData004 ("Segment Color 004", Color) = (0.47958, 0.79846, 0.76955, 1.00000)
    _SegmentData005 ("Segment Color 005", Color) = (0.30319, 0.69896, 0.82584, 1.00000)
    _SegmentData006 ("Segment Color 006", Color) = (0.16540, 0.54570, 0.74344, 1.00000)
    _SegmentData007 ("Segment Color 007", Color) = (0.03137, 0.40354, 0.66988, 1.00000)
    _SegmentData008 ("Segment Color 008", Color) = (0.03137, 0.25098, 0.50588, 1.00000)

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
        x1 = 0.125;
        if (Y <= x1)
            return lerp(_SegmentData000, _SegmentData001, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.25;
        if (Y <= x1)
            return lerp(_SegmentData001, _SegmentData002, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.375;
        if (Y <= x1)
            return lerp(_SegmentData002, _SegmentData003, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.5;
        if (Y <= x1)
            return lerp(_SegmentData003, _SegmentData004, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.625;
        if (Y <= x1)
            return lerp(_SegmentData004, _SegmentData005, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.75;
        if (Y <= x1)
            return lerp(_SegmentData005, _SegmentData006, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.875;
        if (Y <= x1)
            return lerp(_SegmentData006, _SegmentData007, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 1.0;
        if (Y <= x1)
            return lerp(_SegmentData007, _SegmentData008, (Y - x0) / (x1 - x0));
    


	return float4(0, 0, 0, 0);
}
ENDCG

		}
	}
}

Fallback off

}