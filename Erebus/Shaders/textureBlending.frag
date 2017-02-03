#version 420 core

in vec2 vertex_UV[3];

out vec4 finalColor;

uniform sampler2D diffuseTexture[3];
uniform int numTextures;

void main (){

	vec4 color = vec4(0);
	for(int i = 0; i < numTextures; i++)
	{
		color += texture( diffuseTexture[i], vertex_UV[i]);
	}

	finalColor = color;
}
