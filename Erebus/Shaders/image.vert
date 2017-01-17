#version 420 core

layout (location = 0) in vec2 pos ;
layout (location = 1) in float width ;
layout (location = 2) in float height ;

out float vert_width;
out float vert_height;

void main()
{
	gl_Position = vec4(pos, 0.f, 1.f);
	vert_width = width;
	vert_height = height;
}