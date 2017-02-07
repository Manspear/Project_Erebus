#version 420 core

in vec2 vertex_UV[3];

out vec4 finalColor;

uniform sampler2D tex1;
uniform sampler2D tex2;
uniform sampler2D tex3;
//uniform int numTextures;

void main (){

	vec4 color = vec4(0);

	color += texture( tex1, vertex_UV[0]);
	color += texture( tex2, vertex_UV[1]);

	finalColor = color;
}
