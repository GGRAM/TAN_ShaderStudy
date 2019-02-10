//vertex Lit

Shader "Chapter3/VertexLit"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Shininess ("Shininess", Range (0.01 ,1 )) = 0.7
    }
    SubShader
    {
        pass{
            Material{
                Diffuse [_Color]
                Specular [_SpecColor]
                Shininess [_Shininess]
            }
            Lighting On
            SeparateSpecular On
        }
    }
}
