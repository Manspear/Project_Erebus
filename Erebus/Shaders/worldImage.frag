#version 420 core

in vec2 UV;

uniform sampler2D diffuse;

out vec4 out_color;

void main()
{
	out_color = texture( diffuse, vec2(UV.x, 1-UV.y) );
}