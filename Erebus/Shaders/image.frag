#version 420 core

in vec2 geom_UV;

uniform sampler2D font;

out vec4 out_color;

void main()
{
	out_color = texture( font, geom_UV );
}