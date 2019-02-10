Shader "Chapter3/SingleColor"
{
    //ShaderLab 스크립트
    Properties
    {
        //유니티 머터리얼 내에서 조절가능한 변수들
        _Color ("Color", Color) = (1,1,1,1)
         
    }

    SubShader
    {
        Pass
        {
            CGPROGRAM
            //CG 쉐이더 코드 시작

            #pragma vertex vert
            #pragma fragment frag

            float4 vert (float4 vertex: POSITION) : SV_POSITION
            {
                //버텍스 쉐이더
                return UnityObjectToClipPos(vertex);
            }
            
            float4 _Color;
            //ShaderLab의 Properties에서 설정한 Color값 불러오기

            fixed4 frag () : SV_Target
            {   
                //프레그먼트 쉐이더
                return _Color;
            }
            ENDCG
            //CG 쉐이더 코드 종료
        }
    }
}
