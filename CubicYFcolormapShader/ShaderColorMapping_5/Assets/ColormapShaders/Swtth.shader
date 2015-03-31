
Shader "Custom/Swtth" {
	
Properties {
	_MainTex ("32bit Float Map", RECT) = "white" {}
	
	_FloatMin ("Min Value", float) = -1
	_FloatMax ("Max Value", float) =  1
    
    _SegmentData000 ("Segment Color 000", Color) = (1.00000, 0.53950, 1.00000, 1.00000)
    _SegmentData001 ("Segment Color 001", Color) = (1.00000, 0.50639, 1.00000, 1.00000)
    _SegmentData002 ("Segment Color 002", Color) = (1.00000, 0.47290, 1.00000, 1.00000)
    _SegmentData003 ("Segment Color 003", Color) = (1.00000, 0.43891, 1.00000, 1.00000)
    _SegmentData004 ("Segment Color 004", Color) = (0.97580, 0.40425, 1.00000, 1.00000)
    _SegmentData005 ("Segment Color 005", Color) = (0.88171, 0.36872, 1.00000, 1.00000)
    _SegmentData006 ("Segment Color 006", Color) = (0.78435, 0.33203, 1.00000, 1.00000)
    _SegmentData007 ("Segment Color 007", Color) = (0.68701, 0.29380, 1.00000, 1.00000)
    _SegmentData008 ("Segment Color 008", Color) = (0.58949, 0.25373, 1.00000, 1.00000)
    _SegmentData009 ("Segment Color 009", Color) = (0.49088, 0.21110, 1.00000, 1.00000)
    _SegmentData010 ("Segment Color 010", Color) = (0.38933, 0.16450, 1.00000, 1.00000)
    _SegmentData011 ("Segment Color 011", Color) = (0.27900, 0.11050, 1.00000, 1.00000)
    _SegmentData012 ("Segment Color 012", Color) = (0.13180, 0.03348, 1.00000, 1.00000)
    _SegmentData013 ("Segment Color 013", Color) = (0.01682, 0.07689, 0.98975, 1.00000)
    _SegmentData014 ("Segment Color 014", Color) = (0.10316, 0.11837, 0.99801, 1.00000)
    _SegmentData015 ("Segment Color 015", Color) = (0.17966, 0.20374, 1.00000, 1.00000)
    _SegmentData016 ("Segment Color 016", Color) = (0.21905, 0.31347, 1.00000, 1.00000)
    _SegmentData017 ("Segment Color 017", Color) = (0.22428, 0.39509, 1.00000, 1.00000)
    _SegmentData018 ("Segment Color 018", Color) = (0.21740, 0.47244, 1.00000, 1.00000)
    _SegmentData019 ("Segment Color 019", Color) = (0.20325, 0.54629, 1.00000, 1.00000)
    _SegmentData020 ("Segment Color 020", Color) = (0.18443, 0.61742, 1.00000, 1.00000)
    _SegmentData021 ("Segment Color 021", Color) = (0.16180, 0.68640, 1.00000, 1.00000)
    _SegmentData022 ("Segment Color 022", Color) = (0.13452, 0.75380, 1.00000, 1.00000)
    _SegmentData023 ("Segment Color 023", Color) = (0.09963, 0.82022, 1.00000, 1.00000)
    _SegmentData024 ("Segment Color 024", Color) = (0.04410, 0.88586, 1.00000, 1.00000)
    _SegmentData025 ("Segment Color 025", Color) = (0.00198, 0.95281, 0.99533, 1.00000)
    _SegmentData026 ("Segment Color 026", Color) = (0.00000, 0.97144, 0.93806, 1.00000)
    _SegmentData027 ("Segment Color 027", Color) = (0.00000, 0.93745, 0.83217, 1.00000)
    _SegmentData028 ("Segment Color 028", Color) = (0.00000, 0.89883, 0.72685, 1.00000)
    _SegmentData029 ("Segment Color 029", Color) = (0.00000, 0.85891, 0.62652, 1.00000)
    _SegmentData030 ("Segment Color 030", Color) = (0.00000, 0.81808, 0.53349, 1.00000)
    _SegmentData031 ("Segment Color 031", Color) = (0.00000, 0.77673, 0.45063, 1.00000)
    _SegmentData032 ("Segment Color 032", Color) = (0.00000, 0.72439, 0.36718, 1.00000)
    _SegmentData033 ("Segment Color 033", Color) = (0.00000, 0.68225, 0.32030, 1.00000)
    _SegmentData034 ("Segment Color 034", Color) = (0.00000, 0.63964, 0.29160, 1.00000)
    _SegmentData035 ("Segment Color 035", Color) = (0.00000, 0.59566, 0.27291, 1.00000)
    _SegmentData036 ("Segment Color 036", Color) = (0.00000, 0.54807, 0.24451, 1.00000)
    _SegmentData037 ("Segment Color 037", Color) = (0.00000, 0.49708, 0.20304, 1.00000)
    _SegmentData038 ("Segment Color 038", Color) = (0.00000, 0.44676, 0.14885, 1.00000)
    _SegmentData039 ("Segment Color 039", Color) = (0.00000, 0.47409, 0.17553, 1.00000)
    _SegmentData040 ("Segment Color 040", Color) = (0.00000, 0.52417, 0.21218, 1.00000)
    _SegmentData041 ("Segment Color 041", Color) = (0.00000, 0.56886, 0.22781, 1.00000)
    _SegmentData042 ("Segment Color 042", Color) = (0.00000, 0.60740, 0.22020, 1.00000)
    _SegmentData043 ("Segment Color 043", Color) = (0.00000, 0.63853, 0.17524, 1.00000)
    _SegmentData044 ("Segment Color 044", Color) = (0.03652, 0.66282, 0.00411, 1.00000)
    _SegmentData045 ("Segment Color 045", Color) = (0.23700, 0.70614, 0.00000, 1.00000)
    _SegmentData046 ("Segment Color 046", Color) = (0.36475, 0.74791, 0.00000, 1.00000)
    _SegmentData047 ("Segment Color 047", Color) = (0.47809, 0.78774, 0.00000, 1.00000)
    _SegmentData048 ("Segment Color 048", Color) = (0.61439, 0.83447, 0.00000, 1.00000)
    _SegmentData049 ("Segment Color 049", Color) = (0.72244, 0.86980, 0.00000, 1.00000)
    _SegmentData050 ("Segment Color 050", Color) = (0.83069, 0.90314, 0.00000, 1.00000)
    _SegmentData051 ("Segment Color 051", Color) = (0.92421, 0.92022, 0.00000, 1.00000)
    _SegmentData052 ("Segment Color 052", Color) = (0.92764, 0.84816, 0.00000, 1.00000)
    _SegmentData053 ("Segment Color 053", Color) = (0.93004, 0.77516, 0.00000, 1.00000)
    _SegmentData054 ("Segment Color 054", Color) = (0.93102, 0.70078, 0.00000, 1.00000)
    _SegmentData055 ("Segment Color 055", Color) = (0.92997, 0.62477, 0.00000, 1.00000)
    _SegmentData056 ("Segment Color 056", Color) = (0.92622, 0.54656, 0.00000, 1.00000)
    _SegmentData057 ("Segment Color 057", Color) = (0.91885, 0.46532, 0.00000, 1.00000)
    _SegmentData058 ("Segment Color 058", Color) = (0.90664, 0.37982, 0.00000, 1.00000)
    _SegmentData059 ("Segment Color 059", Color) = (0.88850, 0.28695, 0.00000, 1.00000)
    _SegmentData060 ("Segment Color 060", Color) = (0.86316, 0.17616, 0.00056, 1.00000)
    _SegmentData061 ("Segment Color 061", Color) = (0.83120, 0.00000, 0.01896, 1.00000)
    _SegmentData062 ("Segment Color 062", Color) = (0.80151, 0.00000, 0.14646, 1.00000)
    _SegmentData063 ("Segment Color 063", Color) = (0.76060, 0.00000, 0.17690, 1.00000)

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
uniform float4 _SegmentData035;
uniform float4 _SegmentData036;
uniform float4 _SegmentData037;
uniform float4 _SegmentData038;
uniform float4 _SegmentData039;
uniform float4 _SegmentData040;
uniform float4 _SegmentData041;
uniform float4 _SegmentData042;
uniform float4 _SegmentData043;
uniform float4 _SegmentData044;
uniform float4 _SegmentData045;
uniform float4 _SegmentData046;
uniform float4 _SegmentData047;
uniform float4 _SegmentData048;
uniform float4 _SegmentData049;
uniform float4 _SegmentData050;
uniform float4 _SegmentData051;
uniform float4 _SegmentData052;
uniform float4 _SegmentData053;
uniform float4 _SegmentData054;
uniform float4 _SegmentData055;
uniform float4 _SegmentData056;
uniform float4 _SegmentData057;
uniform float4 _SegmentData058;
uniform float4 _SegmentData059;
uniform float4 _SegmentData060;
uniform float4 _SegmentData061;
uniform float4 _SegmentData062;
uniform float4 _SegmentData063;


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
        x1 = 0.015873015873;
        if (Y <= x1)
            return lerp(_SegmentData000, _SegmentData001, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.031746031746;
        if (Y <= x1)
            return lerp(_SegmentData001, _SegmentData002, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.047619047619;
        if (Y <= x1)
            return lerp(_SegmentData002, _SegmentData003, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.0634920634921;
        if (Y <= x1)
            return lerp(_SegmentData003, _SegmentData004, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.0793650793651;
        if (Y <= x1)
            return lerp(_SegmentData004, _SegmentData005, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.0952380952381;
        if (Y <= x1)
            return lerp(_SegmentData005, _SegmentData006, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.111111111111;
        if (Y <= x1)
            return lerp(_SegmentData006, _SegmentData007, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.126984126984;
        if (Y <= x1)
            return lerp(_SegmentData007, _SegmentData008, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.142857142857;
        if (Y <= x1)
            return lerp(_SegmentData008, _SegmentData009, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.15873015873;
        if (Y <= x1)
            return lerp(_SegmentData009, _SegmentData010, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.174603174603;
        if (Y <= x1)
            return lerp(_SegmentData010, _SegmentData011, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.190476190476;
        if (Y <= x1)
            return lerp(_SegmentData011, _SegmentData012, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.206349206349;
        if (Y <= x1)
            return lerp(_SegmentData012, _SegmentData013, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.222222222222;
        if (Y <= x1)
            return lerp(_SegmentData013, _SegmentData014, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.238095238095;
        if (Y <= x1)
            return lerp(_SegmentData014, _SegmentData015, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.253968253968;
        if (Y <= x1)
            return lerp(_SegmentData015, _SegmentData016, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.269841269841;
        if (Y <= x1)
            return lerp(_SegmentData016, _SegmentData017, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.285714285714;
        if (Y <= x1)
            return lerp(_SegmentData017, _SegmentData018, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.301587301587;
        if (Y <= x1)
            return lerp(_SegmentData018, _SegmentData019, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.31746031746;
        if (Y <= x1)
            return lerp(_SegmentData019, _SegmentData020, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.333333333333;
        if (Y <= x1)
            return lerp(_SegmentData020, _SegmentData021, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.349206349206;
        if (Y <= x1)
            return lerp(_SegmentData021, _SegmentData022, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.365079365079;
        if (Y <= x1)
            return lerp(_SegmentData022, _SegmentData023, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.380952380952;
        if (Y <= x1)
            return lerp(_SegmentData023, _SegmentData024, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.396825396825;
        if (Y <= x1)
            return lerp(_SegmentData024, _SegmentData025, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.412698412698;
        if (Y <= x1)
            return lerp(_SegmentData025, _SegmentData026, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.428571428571;
        if (Y <= x1)
            return lerp(_SegmentData026, _SegmentData027, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.444444444444;
        if (Y <= x1)
            return lerp(_SegmentData027, _SegmentData028, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.460317460317;
        if (Y <= x1)
            return lerp(_SegmentData028, _SegmentData029, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.47619047619;
        if (Y <= x1)
            return lerp(_SegmentData029, _SegmentData030, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.492063492063;
        if (Y <= x1)
            return lerp(_SegmentData030, _SegmentData031, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.507936507937;
        if (Y <= x1)
            return lerp(_SegmentData031, _SegmentData032, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.52380952381;
        if (Y <= x1)
            return lerp(_SegmentData032, _SegmentData033, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.539682539683;
        if (Y <= x1)
            return lerp(_SegmentData033, _SegmentData034, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.555555555556;
        if (Y <= x1)
            return lerp(_SegmentData034, _SegmentData035, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.571428571429;
        if (Y <= x1)
            return lerp(_SegmentData035, _SegmentData036, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.587301587302;
        if (Y <= x1)
            return lerp(_SegmentData036, _SegmentData037, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.603174603175;
        if (Y <= x1)
            return lerp(_SegmentData037, _SegmentData038, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.619047619048;
        if (Y <= x1)
            return lerp(_SegmentData038, _SegmentData039, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.634920634921;
        if (Y <= x1)
            return lerp(_SegmentData039, _SegmentData040, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.650793650794;
        if (Y <= x1)
            return lerp(_SegmentData040, _SegmentData041, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.666666666667;
        if (Y <= x1)
            return lerp(_SegmentData041, _SegmentData042, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.68253968254;
        if (Y <= x1)
            return lerp(_SegmentData042, _SegmentData043, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.698412698413;
        if (Y <= x1)
            return lerp(_SegmentData043, _SegmentData044, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.714285714286;
        if (Y <= x1)
            return lerp(_SegmentData044, _SegmentData045, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.730158730159;
        if (Y <= x1)
            return lerp(_SegmentData045, _SegmentData046, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.746031746032;
        if (Y <= x1)
            return lerp(_SegmentData046, _SegmentData047, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.761904761905;
        if (Y <= x1)
            return lerp(_SegmentData047, _SegmentData048, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.777777777778;
        if (Y <= x1)
            return lerp(_SegmentData048, _SegmentData049, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.793650793651;
        if (Y <= x1)
            return lerp(_SegmentData049, _SegmentData050, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.809523809524;
        if (Y <= x1)
            return lerp(_SegmentData050, _SegmentData051, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.825396825397;
        if (Y <= x1)
            return lerp(_SegmentData051, _SegmentData052, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.84126984127;
        if (Y <= x1)
            return lerp(_SegmentData052, _SegmentData053, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.857142857143;
        if (Y <= x1)
            return lerp(_SegmentData053, _SegmentData054, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.873015873016;
        if (Y <= x1)
            return lerp(_SegmentData054, _SegmentData055, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.888888888889;
        if (Y <= x1)
            return lerp(_SegmentData055, _SegmentData056, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.904761904762;
        if (Y <= x1)
            return lerp(_SegmentData056, _SegmentData057, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.920634920635;
        if (Y <= x1)
            return lerp(_SegmentData057, _SegmentData058, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.936507936508;
        if (Y <= x1)
            return lerp(_SegmentData058, _SegmentData059, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.952380952381;
        if (Y <= x1)
            return lerp(_SegmentData059, _SegmentData060, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.968253968254;
        if (Y <= x1)
            return lerp(_SegmentData060, _SegmentData061, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.984126984127;
        if (Y <= x1)
            return lerp(_SegmentData061, _SegmentData062, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 1.0;
        if (Y <= x1)
            return lerp(_SegmentData062, _SegmentData063, (Y - x0) / (x1 - x0));
    


	return float4(0, 0, 0, 0);
}
ENDCG

		}
	}
}

Fallback off

}