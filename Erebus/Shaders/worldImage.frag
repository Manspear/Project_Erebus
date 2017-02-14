#version 420 core

in vec2 UV;

uniform sampler2D texture;

void main()
{
	gl_FragColor = texture( texture, vec2(UV.x, 1-UV.y) );
}