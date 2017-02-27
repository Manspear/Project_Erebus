#version 420 core

layout (location = 0) in vec3 pos ;
layout (location = 1) in vec3 attributes ;
layout (location = 2) in vec4 UV ;
layout (location = 3) in float width ;

out vec4 vert_UV;
out float vert_width;

void main()
{
	gl_Position = vec4(pos, 1.f);
	vert_UV = UV;
	vert_width = width;
}