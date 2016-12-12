#version 420 core

in vec3 geom_pos;
in vec2 geom_UV;

out vec4 finalColor;

uniform sampler2D font;

void main()
{
	gl_FragColor = texture( font, geom_UV );
}