#version 430

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 uv;

const int NUM_CASCADES = 3;

out vec2 TexCoords;
out float ClipSpacePosZ;

void main()
{
 
	gl_Position = vec4(position, 1);

	TexCoords = uv;
}