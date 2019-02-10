//vertex 쉐이더

Shader "Chapter3/Diffuse Simple"
{
    Properties
    {   
        _Color ("Color", Color) = (1,1,1,1)
    }
    SubShader{
        Tags { "RenderType" = "Opaque"}

        CGPROGRAM
        //CG 쉐이더 코드 시작
        #pragma surface surf Lambert    //렘버트 라이트
        struct Input{
            float4 color : COLOR;
        };

        float4 _Color;
        //ShaderLab의 Properties 불러오기

        void surf (Input IN, inout SurfaceOutput o){
            o.Albedo = _Color;
        }
        ENDCG
        //CG 쉐이더 코드 종료
    }
    FallBack "Diffuse"
}
