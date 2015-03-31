
Shader "Custom/pink" {
	
Properties {
	_MainTex ("32bit Float Map", RECT) = "white" {}
	
	_FloatMin ("Min Value", float) = -1
	_FloatMax ("Max Value", float) =  1
    
    _SegmentData000 ("Segment Color 000", Color) = (0.11780, 0.00000, 0.00000, 1.00000)
    _SegmentData001 ("Segment Color 001", Color) = (0.19494, 0.10166, 0.10166, 1.00000)
    _SegmentData002 ("Segment Color 002", Color) = (0.24937, 0.14448, 0.14448, 1.00000)
    _SegmentData003 ("Segment Color 003", Color) = (0.29389, 0.17702, 0.17702, 1.00000)
    _SegmentData004 ("Segment Color 004", Color) = (0.33250, 0.20444, 0.20444, 1.00000)
    _SegmentData005 ("Segment Color 005", Color) = (0.36707, 0.22859, 0.22859, 1.00000)
    _SegmentData006 ("Segment Color 006", Color) = (0.39865, 0.25043, 0.25043, 1.00000)
    _SegmentData007 ("Segment Color 007", Color) = (0.42791, 0.27050, 0.27050, 1.00000)
    _SegmentData008 ("Segment Color 008", Color) = (0.45529, 0.28919, 0.28919, 1.00000)
    _SegmentData009 ("Segment Color 009", Color) = (0.48112, 0.30674, 0.30674, 1.00000)
    _SegmentData010 ("Segment Color 010", Color) = (0.50562, 0.32334, 0.32334, 1.00000)
    _SegmentData011 ("Segment Color 011", Color) = (0.52900, 0.33912, 0.33912, 1.00000)
    _SegmentData012 ("Segment Color 012", Color) = (0.55138, 0.35421, 0.35421, 1.00000)
    _SegmentData013 ("Segment Color 013", Color) = (0.57289, 0.36867, 0.36867, 1.00000)
    _SegmentData014 ("Segment Color 014", Color) = (0.59363, 0.38259, 0.38259, 1.00000)
    _SegmentData015 ("Segment Color 015", Color) = (0.61366, 0.39603, 0.39603, 1.00000)
    _SegmentData016 ("Segment Color 016", Color) = (0.63784, 0.41222, 0.41222, 1.00000)
    _SegmentData017 ("Segment Color 017", Color) = (0.65653, 0.42472, 0.42472, 1.00000)
    _SegmentData018 ("Segment Color 018", Color) = (0.67470, 0.43686, 0.43686, 1.00000)
    _SegmentData019 ("Segment Color 019", Color) = (0.69239, 0.44867, 0.44867, 1.00000)
    _SegmentData020 ("Segment Color 020", Color) = (0.70964, 0.46018, 0.46018, 1.00000)
    _SegmentData021 ("Segment Color 021", Color) = (0.72648, 0.47141, 0.47141, 1.00000)
    _SegmentData022 ("Segment Color 022", Color) = (0.74294, 0.48237, 0.48237, 1.00000)
    _SegmentData023 ("Segment Color 023", Color) = (0.75904, 0.49309, 0.49309, 1.00000)
    _SegmentData024 ("Segment Color 024", Color) = (0.76611, 0.51670, 0.50358, 1.00000)
    _SegmentData025 ("Segment Color 025", Color) = (0.77291, 0.53959, 0.51386, 1.00000)
    _SegmentData026 ("Segment Color 026", Color) = (0.77964, 0.56155, 0.52393, 1.00000)
    _SegmentData027 ("Segment Color 027", Color) = (0.78632, 0.58268, 0.53382, 1.00000)
    _SegmentData028 ("Segment Color 028", Color) = (0.79294, 0.60307, 0.54352, 1.00000)
    _SegmentData029 ("Segment Color 029", Color) = (0.79951, 0.62280, 0.55306, 1.00000)
    _SegmentData030 ("Segment Color 030", Color) = (0.80602, 0.64192, 0.56243, 1.00000)
    _SegmentData031 ("Segment Color 031", Color) = (0.81248, 0.66048, 0.57165, 1.00000)
    _SegmentData032 ("Segment Color 032", Color) = (0.82049, 0.68299, 0.58298, 1.00000)
    _SegmentData033 ("Segment Color 033", Color) = (0.82684, 0.70047, 0.59188, 1.00000)
    _SegmentData034 ("Segment Color 034", Color) = (0.83313, 0.71753, 0.60065, 1.00000)
    _SegmentData035 ("Segment Color 035", Color) = (0.83939, 0.73419, 0.60929, 1.00000)
    _SegmentData036 ("Segment Color 036", Color) = (0.84559, 0.75048, 0.61781, 1.00000)
    _SegmentData037 ("Segment Color 037", Color) = (0.85176, 0.76642, 0.62622, 1.00000)
    _SegmentData038 ("Segment Color 038", Color) = (0.85787, 0.78204, 0.63452, 1.00000)
    _SegmentData039 ("Segment Color 039", Color) = (0.86395, 0.79736, 0.64270, 1.00000)
    _SegmentData040 ("Segment Color 040", Color) = (0.86998, 0.81238, 0.65079, 1.00000)
    _SegmentData041 ("Segment Color 041", Color) = (0.87597, 0.82713, 0.65878, 1.00000)
    _SegmentData042 ("Segment Color 042", Color) = (0.88192, 0.84162, 0.66667, 1.00000)
    _SegmentData043 ("Segment Color 043", Color) = (0.88783, 0.85587, 0.67446, 1.00000)
    _SegmentData044 ("Segment Color 044", Color) = (0.89370, 0.86988, 0.68217, 1.00000)
    _SegmentData045 ("Segment Color 045", Color) = (0.89953, 0.88367, 0.68979, 1.00000)
    _SegmentData046 ("Segment Color 046", Color) = (0.90532, 0.89725, 0.69733, 1.00000)
    _SegmentData047 ("Segment Color 047", Color) = (0.91108, 0.91063, 0.70479, 1.00000)
    _SegmentData048 ("Segment Color 048", Color) = (0.91822, 0.91822, 0.73092, 1.00000)
    _SegmentData049 ("Segment Color 049", Color) = (0.92390, 0.92390, 0.75186, 1.00000)
    _SegmentData050 ("Segment Color 050", Color) = (0.92954, 0.92954, 0.77224, 1.00000)
    _SegmentData051 ("Segment Color 051", Color) = (0.93515, 0.93515, 0.79209, 1.00000)
    _SegmentData052 ("Segment Color 052", Color) = (0.94073, 0.94073, 0.81145, 1.00000)
    _SegmentData053 ("Segment Color 053", Color) = (0.94627, 0.94627, 0.83037, 1.00000)
    _SegmentData054 ("Segment Color 054", Color) = (0.95178, 0.95178, 0.84886, 1.00000)
    _SegmentData055 ("Segment Color 055", Color) = (0.95725, 0.95725, 0.86695, 1.00000)
    _SegmentData056 ("Segment Color 056", Color) = (0.96270, 0.96270, 0.88468, 1.00000)
    _SegmentData057 ("Segment Color 057", Color) = (0.96812, 0.96812, 0.90206, 1.00000)
    _SegmentData058 ("Segment Color 058", Color) = (0.97350, 0.97350, 0.91911, 1.00000)
    _SegmentData059 ("Segment Color 059", Color) = (0.97886, 0.97886, 0.93584, 1.00000)
    _SegmentData060 ("Segment Color 060", Color) = (0.98419, 0.98419, 0.95229, 1.00000)
    _SegmentData061 ("Segment Color 061", Color) = (0.98949, 0.98949, 0.96845, 1.00000)
    _SegmentData062 ("Segment Color 062", Color) = (0.99476, 0.99476, 0.98435, 1.00000)
    _SegmentData063 ("Segment Color 063", Color) = (1.00000, 1.00000, 1.00000, 1.00000)

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
        x1 = 0.015873;
        if (Y <= x1)
            return lerp(_SegmentData000, _SegmentData001, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.031746;
        if (Y <= x1)
            return lerp(_SegmentData001, _SegmentData002, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.047619;
        if (Y <= x1)
            return lerp(_SegmentData002, _SegmentData003, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.063492;
        if (Y <= x1)
            return lerp(_SegmentData003, _SegmentData004, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.079365;
        if (Y <= x1)
            return lerp(_SegmentData004, _SegmentData005, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.095238;
        if (Y <= x1)
            return lerp(_SegmentData005, _SegmentData006, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.111111;
        if (Y <= x1)
            return lerp(_SegmentData006, _SegmentData007, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.126984;
        if (Y <= x1)
            return lerp(_SegmentData007, _SegmentData008, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.142857;
        if (Y <= x1)
            return lerp(_SegmentData008, _SegmentData009, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.15873;
        if (Y <= x1)
            return lerp(_SegmentData009, _SegmentData010, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.174603;
        if (Y <= x1)
            return lerp(_SegmentData010, _SegmentData011, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.190476;
        if (Y <= x1)
            return lerp(_SegmentData011, _SegmentData012, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.206349;
        if (Y <= x1)
            return lerp(_SegmentData012, _SegmentData013, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.222222;
        if (Y <= x1)
            return lerp(_SegmentData013, _SegmentData014, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.238095;
        if (Y <= x1)
            return lerp(_SegmentData014, _SegmentData015, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.253968;
        if (Y <= x1)
            return lerp(_SegmentData015, _SegmentData016, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.269841;
        if (Y <= x1)
            return lerp(_SegmentData016, _SegmentData017, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.285714;
        if (Y <= x1)
            return lerp(_SegmentData017, _SegmentData018, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.301587;
        if (Y <= x1)
            return lerp(_SegmentData018, _SegmentData019, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.31746;
        if (Y <= x1)
            return lerp(_SegmentData019, _SegmentData020, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.333333;
        if (Y <= x1)
            return lerp(_SegmentData020, _SegmentData021, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.349206;
        if (Y <= x1)
            return lerp(_SegmentData021, _SegmentData022, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.365079;
        if (Y <= x1)
            return lerp(_SegmentData022, _SegmentData023, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.380952;
        if (Y <= x1)
            return lerp(_SegmentData023, _SegmentData024, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.396825;
        if (Y <= x1)
            return lerp(_SegmentData024, _SegmentData025, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.412698;
        if (Y <= x1)
            return lerp(_SegmentData025, _SegmentData026, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.428571;
        if (Y <= x1)
            return lerp(_SegmentData026, _SegmentData027, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.444444;
        if (Y <= x1)
            return lerp(_SegmentData027, _SegmentData028, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.460317;
        if (Y <= x1)
            return lerp(_SegmentData028, _SegmentData029, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.47619;
        if (Y <= x1)
            return lerp(_SegmentData029, _SegmentData030, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.492063;
        if (Y <= x1)
            return lerp(_SegmentData030, _SegmentData031, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.507937;
        if (Y <= x1)
            return lerp(_SegmentData031, _SegmentData032, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.52381;
        if (Y <= x1)
            return lerp(_SegmentData032, _SegmentData033, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.539683;
        if (Y <= x1)
            return lerp(_SegmentData033, _SegmentData034, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.555556;
        if (Y <= x1)
            return lerp(_SegmentData034, _SegmentData035, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.571429;
        if (Y <= x1)
            return lerp(_SegmentData035, _SegmentData036, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.587302;
        if (Y <= x1)
            return lerp(_SegmentData036, _SegmentData037, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.603175;
        if (Y <= x1)
            return lerp(_SegmentData037, _SegmentData038, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.619048;
        if (Y <= x1)
            return lerp(_SegmentData038, _SegmentData039, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.634921;
        if (Y <= x1)
            return lerp(_SegmentData039, _SegmentData040, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.650794;
        if (Y <= x1)
            return lerp(_SegmentData040, _SegmentData041, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.666667;
        if (Y <= x1)
            return lerp(_SegmentData041, _SegmentData042, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.68254;
        if (Y <= x1)
            return lerp(_SegmentData042, _SegmentData043, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.698413;
        if (Y <= x1)
            return lerp(_SegmentData043, _SegmentData044, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.714286;
        if (Y <= x1)
            return lerp(_SegmentData044, _SegmentData045, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.730159;
        if (Y <= x1)
            return lerp(_SegmentData045, _SegmentData046, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.746032;
        if (Y <= x1)
            return lerp(_SegmentData046, _SegmentData047, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.761905;
        if (Y <= x1)
            return lerp(_SegmentData047, _SegmentData048, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.777778;
        if (Y <= x1)
            return lerp(_SegmentData048, _SegmentData049, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.793651;
        if (Y <= x1)
            return lerp(_SegmentData049, _SegmentData050, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.809524;
        if (Y <= x1)
            return lerp(_SegmentData050, _SegmentData051, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.825397;
        if (Y <= x1)
            return lerp(_SegmentData051, _SegmentData052, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.84127;
        if (Y <= x1)
            return lerp(_SegmentData052, _SegmentData053, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.857143;
        if (Y <= x1)
            return lerp(_SegmentData053, _SegmentData054, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.873016;
        if (Y <= x1)
            return lerp(_SegmentData054, _SegmentData055, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.888889;
        if (Y <= x1)
            return lerp(_SegmentData055, _SegmentData056, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.904762;
        if (Y <= x1)
            return lerp(_SegmentData056, _SegmentData057, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.920635;
        if (Y <= x1)
            return lerp(_SegmentData057, _SegmentData058, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.936508;
        if (Y <= x1)
            return lerp(_SegmentData058, _SegmentData059, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.952381;
        if (Y <= x1)
            return lerp(_SegmentData059, _SegmentData060, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.968254;
        if (Y <= x1)
            return lerp(_SegmentData060, _SegmentData061, (Y - x0) / (x1 - x0));
    
        x0 = 0;
        x1 = 0.984127;
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