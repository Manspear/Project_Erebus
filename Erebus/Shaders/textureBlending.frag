#version 420 core

in vec2 vertex_UV[3];

out vec4 finalColor;

uniform sampler2D tex1;
uniform sampler2D tex2;
uniform sampler2D tex3;
//uniform int numTextures;
uniform int nrOfTex;
void main (){

	vec4 color1 = vec4(0);
	vec4 color2 = vec4(0);
	
	if (nrOfTex > 0)
	{
		color1 += texture( tex1, vertex_UV[0]);
		color1.rgb *= color1.a; 
	}
	if (nrOfTex > 1)
	{
		color2 += texture( tex2, vertex_UV[1]); 
		color2.rgb *= color2.a;
	}

	finalColor = color1 + color2;
}
