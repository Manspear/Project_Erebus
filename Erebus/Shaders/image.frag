#version 420 core

in vec2 geom_UV;

uniform sampler2D font;

void main()
{
	gl_FragColor = texture( font, geom_UV );
}