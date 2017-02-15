#version 420 core

in vec2 UV;
out vec4 FragColor;

uniform sampler2D diffuse;

void main()
{
	FragColor = texture( diffuse, vec2(UV.x, 1-UV.y) );
}