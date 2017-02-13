#version 420 core

layout (location = 0) in vec3 squareVertices;
layout (location = 1) in vec3 pos;
layout (location = 2) in float width;
layout (location = 3) in float height;

out vec2 UV;

uniform vec3 CameraRight_worldspace;
uniform vec3 CameraUp_worldspace;
uniform mat4 VP;
void main()
{
	vec3 center_worldspace = pos;

	vec3 vertexPos_worldspace =
		center_worldspace
		+ CameraRight_worldspace * squareVertices.x * width
		+ CameraUp_worldspace * squareVertices.y * height;

	gl_Position = VP * vec4(vertexPos_worldspace, 1.0f);

	UV = squareVertices.xy + vec2(0.5, 0.5);
}