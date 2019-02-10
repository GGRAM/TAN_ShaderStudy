Shader "Chapter4/RGBB"
{
    Properties
    {
        _Red ("Red", range(0,1.0)) = 1.0
        _Blue ("Blue", range(0,1.0)) = 1.0
        _Green ("Green", range(0,1.0)) = 1.0
        _Brightness ("Brightness", range(-1.0,1.0)) = 1.0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        #pragma surface surf Standard fullforwardshadows

        #pragma target 3.0

        struct Input
        {
            float2 uv_MainTex;
        };

        float _Red;
        float _Blue;
        float _Green;
        float _Brightness;

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            o.Albedo = float4(_Red,_Blue,_Green,1)+_Brightness;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
