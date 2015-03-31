
Shader "Custom/gist_ncar" {
	
Properties {
	_MainTex ("32bit Float Map", RECT) = "white" {}
	
	_FloatMin ("Min Value", float) = -1
	_FloatMax ("Max Value", float) =  1
    
    _SegmentData000 ("Segment Color 000", Color) = (0.00000, 0.00000, 0.50200, 1.00000)
    _SegmentData001 ("Segment Color 001", Color) = (0.00000, 0.37206, 0.02238, 1.00000)
    _SegmentData002 ("Segment Color 002", Color) = (0.00000, 0.00012, 0.93485, 1.00000)
    _SegmentData003 ("Segment Color 003", Color) = (0.00000, 0.05513, 1.00000, 1.00000)
    _SegmentData004 ("Segment Color 004", Color) = (0.00000, 0.71967, 1.00000, 1.00000)
    _SegmentData005 ("Segment Color 005", Color) = (0.00000, 0.75357, 1.00000, 1.00000)
    _SegmentData006 ("Segment Color 006", Color) = (0.00000, 0.77523, 1.00000, 1.00000)
    _SegmentData007 ("Segment Color 007", Color) = (0.00000, 0.94808, 0.99986, 1.00000)
    _SegmentData008 ("Segment Color 008", Color) = (0.00000, 0.99994, 0.92273, 1.00000)
    _SegmentData009 ("Segment Color 009", Color) = (0.00000, 0.98040, 0.63991, 1.00000)
    _SegmentData010 ("Segment Color 010", Color) = (0.00000, 0.98040, 0.61403, 1.00000)
    _SegmentData011 ("Segment Color 011", Color) = (0.00000, 0.98040, 0.53220, 1.00000)
    _SegmentData012 ("Segment Color 012", Color) = (0.00002, 0.99675, 0.12307, 1.00000)
    _SegmentData013 ("Segment Color 013", Color) = (0.04997, 0.99982, 0.04124, 1.00000)
    _SegmentData014 ("Segment Color 014", Color) = (0.07495, 0.98507, 0.00033, 1.00000)
    _SegmentData015 ("Segment Color 015", Color) = (0.37464, 0.80819, 0.00000, 1.00000)
    _SegmentData016 ("Segment Color 016", Color) = (0.39940, 0.82097, 0.00000, 1.00000)
    _SegmentData017 ("Segment Color 017", Color) = (0.48483, 0.96151, 0.00000, 1.00000)
    _SegmentData018 ("Segment Color 018", Color) = (0.50043, 0.98706, 0.03118, 1.00000)
    _SegmentData019 ("Segment Color 019", Color) = (0.51828, 0.99984, 0.04680, 1.00000)
    _SegmentData020 ("Segment Color 020", Color) = (0.73245, 1.00000, 0.23416, 1.00000)
    _SegmentData021 ("Segment Color 021", Color) = (0.94661, 1.00000, 0.04673, 1.00000)
    _SegmentData022 ("Segment Color 022", Color) = (1.00000, 0.97106, 0.00000, 1.00000)
    _SegmentData023 ("Segment Color 023", Color) = (1.00000, 0.85500, 0.00000, 1.00000)
    _SegmentData024 ("Segment Color 024", Color) = (1.00000, 0.72927, 0.05487, 1.00000)
    _SegmentData025 ("Segment Color 025", Color) = (1.00000, 0.27981, 0.00367, 1.00000)
    _SegmentData026 ("Segment Color 026", Color) = (1.00000, 0.26107, 0.00000, 1.00000)
    _SegmentData027 ("Segment Color 027", Color) = (1.00000, 0.03730, 0.00000, 1.00000)
    _SegmentData028 ("Segment Color 028", Color) = (1.00000, 0.00001, 0.13832, 1.00000)
    _SegmentData029 ("Segment Color 029", Color) = (1.00000, 0.00000, 0.97303, 1.00000)
    _SegmentData030 ("Segment Color 030", Color) = (0.94627, 0.02686, 1.00000, 1.00000)
    _SegmentData031 ("Segment Color 031", Color) = (0.64910, 0.17552, 0.99996, 1.00000)
    _SegmentData032 ("Segment Color 032", Color) = (0.62208, 0.19871, 0.99525, 1.00000)
    _SegmentData033 ("Segment Color 033", Color) = (0.92353, 0.50018, 0.93412, 1.00000)
    _SegmentData034 ("Segment Color 034", Color) = (0.99610, 0.97250, 0.99610, 1.00000)

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
uniform float4 _SegmentData016;
uniform float4 _SegmentData017;
uniform float4 _SegmentData018;
uniform float4 _SegmentData019;
uniform float4 _SegmentData020;
uniform float4 _SegmentData021;
uniform float4 _SegmentData022;
uniform float4 _SegmentData023;
uniform float4 _SegmentData024;
uniform float4 _SegmentData025;
uniform float4 _SegmentData026;
uniform float4 _SegmentData027;
uniform float4 _SegmentData028;
uniform float4 _SegmentData029;
uniform float4 _SegmentData030;
uniform float4 _SegmentData031;
uniform float4 _SegmentData032;
uniform float4 _SegmentData033;
uniform float4 _SegmentData034;


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
        x1 = 0.051;
        if (Y <= x1)
            return lerp(_SegmentData000, _SegmentData001, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.1059;
        if (Y <= x1)
            return lerp(_SegmentData001, _SegmentData002, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.1098;
        if (Y <= x1)
            return lerp(_SegmentData002, _SegmentData003, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.1569;
        if (Y <= x1)
            return lerp(_SegmentData003, _SegmentData004, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.1608;
        if (Y <= x1)
            return lerp(_SegmentData004, _SegmentData005, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.1647;
        if (Y <= x1)
            return lerp(_SegmentData005, _SegmentData006, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.2039;
        if (Y <= x1)
            return lerp(_SegmentData006, _SegmentData007, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.2157;
        if (Y <= x1)
            return lerp(_SegmentData007, _SegmentData008, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.2588;
        if (Y <= x1)
            return lerp(_SegmentData008, _SegmentData009, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.2627;
        if (Y <= x1)
            return lerp(_SegmentData009, _SegmentData010, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.2706;
        if (Y <= x1)
            return lerp(_SegmentData010, _SegmentData011, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.3098;
        if (Y <= x1)
            return lerp(_SegmentData011, _SegmentData012, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.3176;
        if (Y <= x1)
            return lerp(_SegmentData012, _SegmentData013, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.3216;
        if (Y <= x1)
            return lerp(_SegmentData013, _SegmentData014, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.3686;
        if (Y <= x1)
            return lerp(_SegmentData014, _SegmentData015, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.3725;
        if (Y <= x1)
            return lerp(_SegmentData015, _SegmentData016, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.4157;
        if (Y <= x1)
            return lerp(_SegmentData016, _SegmentData017, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.4235;
        if (Y <= x1)
            return lerp(_SegmentData017, _SegmentData018, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.4275;
        if (Y <= x1)
            return lerp(_SegmentData018, _SegmentData019, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.4745;
        if (Y <= x1)
            return lerp(_SegmentData019, _SegmentData020, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.5216;
        if (Y <= x1)
            return lerp(_SegmentData020, _SegmentData021, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.5333;
        if (Y <= x1)
            return lerp(_SegmentData021, _SegmentData022, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.5804;
        if (Y <= x1)
            return lerp(_SegmentData022, _SegmentData023, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.6314;
        if (Y <= x1)
            return lerp(_SegmentData023, _SegmentData024, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.6863;
        if (Y <= x1)
            return lerp(_SegmentData024, _SegmentData025, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.6902;
        if (Y <= x1)
            return lerp(_SegmentData025, _SegmentData026, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.7373;
        if (Y <= x1)
            return lerp(_SegmentData026, _SegmentData027, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.7451;
        if (Y <= x1)
            return lerp(_SegmentData027, _SegmentData028, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.7922;
        if (Y <= x1)
            return lerp(_SegmentData028, _SegmentData029, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.8;
        if (Y <= x1)
            return lerp(_SegmentData029, _SegmentData030, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.8431;
        if (Y <= x1)
            return lerp(_SegmentData030, _SegmentData031, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.8471;
        if (Y <= x1)
            return lerp(_SegmentData031, _SegmentData032, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.898;
        if (Y <= x1)
            return lerp(_SegmentData032, _SegmentData033, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 1.0;
        if (Y <= x1)
            return lerp(_SegmentData033, _SegmentData034, (Y - x0) / (x1 - x0));
    


	return float4(0, 0, 0, 0);
}
ENDCG

		}
	}
}

Fallback off

}