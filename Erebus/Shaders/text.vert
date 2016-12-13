#version 420 core

layout (location = 0) in vec2 pos ;
layout (location = 1) in vec4 UV ;
layout (location = 2) in float width ;

out vec4 vert_UV;
out float vert_width;

//uniform mat4 projectionMatrix;

void main()
{
	gl_Position = vec4(pos, 0.f, 1.f);
	//gl_Position = projectionMatrix * vec4(pos, 0.f, 1.f);
	vert_UV = UV;
	vert_width = width;
}