
Shader "Custom/Cubic YF" {
	
Properties {
	_MainTex ("32bit Float Map", RECT) = "white" {}
	
	_FloatMin ("Min Value", float) = 1580.0
	_FloatMax ("Max Value", float) = 1630.0

	_SegmentData00 ("Segment Color 00", Color) = (0.5151, 0.0482, 0.6697, 1)
	_SegmentData01 ("Segment Color 01", Color) = (0.5199, 0.1762, 0.8083, 1)
	_SegmentData02 ("Segment Color 02", Color) = (0.4884, 0.2912, 0.9234, 1)
	_SegmentData03 ("Segment Color 03", Color) = (0.4297, 0.3855, 0.9921, 1)
	_SegmentData04 ("Segment Color 04", Color) = (0.3893, 0.4792, 0.9775, 1)
	_SegmentData05 ("Segment Color 05", Color) = (0.3337, 0.5650, 0.9056, 1)
	_SegmentData06 ("Segment Color 06", Color) = (0.2795, 0.6419, 0.8287, 1)
	_SegmentData07 ("Segment Color 07", Color) = (0.2210, 0.7123, 0.7258, 1)
	_SegmentData08 ("Segment Color 08", Color) = (0.2468, 0.7612, 0.6248, 1)
	_SegmentData09 ("Segment Color 09", Color) = (0.2833, 0.8125, 0.5069, 1)
	_SegmentData10 ("Segment Color 10", Color) = (0.3198, 0.8492, 0.3956, 1)
	_SegmentData11 ("Segment Color 11", Color) = (0.3602, 0.8896, 0.2919, 1)
	_SegmentData12 ("Segment Color 12", Color) = (0.4568, 0.9136, 0.3018, 1)
	_SegmentData13 ("Segment Color 13", Color) = (0.6033, 0.9255, 0.3295, 1)
	_SegmentData14 ("Segment Color 14", Color) = (0.7066, 0.9255, 0.3414, 1)
	_SegmentData15 ("Segment Color 15", Color) = (0.8000, 0.9255, 0.3529, 1)
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

uniform float4 _SegmentData00;
uniform float4 _SegmentData01;
uniform float4 _SegmentData02;
uniform float4 _SegmentData03;
uniform float4 _SegmentData04;
uniform float4 _SegmentData05;
uniform float4 _SegmentData06;
uniform float4 _SegmentData07;
uniform float4 _SegmentData08;
uniform float4 _SegmentData09;
uniform float4 _SegmentData10;
uniform float4 _SegmentData11;
uniform float4 _SegmentData12;
uniform float4 _SegmentData13;
uniform float4 _SegmentData14;
uniform float4 _SegmentData15;

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
//	float Y = Luminance(col);
	float Y =  Color2Float(col);
	Y = Normalize(Y);

	float x0, x1, normed;

	x0 = 0;
	x1 = 1.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData00, _SegmentData01, normed);
	}
	
	x0 = x1;
	x1 = 2.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData01, _SegmentData02, normed);
	}

	x0 = x1;
	x1 = 3.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData02, _SegmentData03, normed);
	}

	x0 = x1;
	x1 = 4.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData03, _SegmentData04, normed);
	}
	
	x0 = x1;
	x1 = 5.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData04, _SegmentData05, normed);
	}
	
	x0 = x1;
	x1 = 6.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData05, _SegmentData06, normed);
	}
	
	x0 = x1;
	x1 = 7.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData06, _SegmentData07, normed);
	}
	
	x0 = x1;
	x1 = 8.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData07, _SegmentData08, normed);
	}
	
	x0 = x1;
	x1 = 9.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData08, _SegmentData09, normed);
	}
	
	x0 = x1;
	x1 = 10.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData09, _SegmentData10, normed);
	}
	
	x0 = x1;
	x1 = 11.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData10, _SegmentData11, normed);
	}
	
	x0 = x1;
	x1 = 12.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData11, _SegmentData12, normed);
	}
	
	x0 = x1;
	x1 = 13.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData12, _SegmentData13, normed);
	}
	
	x0 = x1;
	x1 = 14.0 / 15.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData13, _SegmentData14, normed);
	}
	
	x0 = x1;
	x1 = 1.0;
	if (Y <= x1)
	{
		normed = (Y - x0) / (x1 - x0);
		return lerp(_SegmentData14, _SegmentData15, normed);
	}


	return float4(0, 0, 0, 1);
}
ENDCG

		}
	}
}

Fallback off

}