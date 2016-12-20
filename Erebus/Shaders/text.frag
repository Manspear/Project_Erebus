#version 420 core

in vec2 geom_UV;

uniform sampler2D font;
uniform vec4 color;

void main()
{
	vec4 texCol = texture( font, geom_UV );
	//gl_FragColor = texture( font, geom_UV );
	gl_FragColor = texCol * color;
}