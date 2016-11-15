#version 420 core

in vec3 position;
in vec3 normal;

out vec3 vert_norm;
out vec3 fragPos;

uniform mat4 VPmatrix;

void main()
{
	gl_Position = VPmatrix * vec4(position, 1.0f);
	fragPos = position;
	vert_norm = normal;
}