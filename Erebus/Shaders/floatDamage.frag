#version 420 core

in vec2 geom_UV;

uniform sampler2D font;
uniform vec4 color;

out vec4 out_color;

void main()
{
	vec4 texCol = texture( font, geom_UV );
	//gl_FragColor = texture( font, geom_UV );
	out_color = texCol * color;
}