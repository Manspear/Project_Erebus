#version 420 core

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 UV;
layout (location = 3) in mat4 worldMatrix;

out vec3 vert_worldPos;
out vec2 vert_UV;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec2 aValue;

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrix * vec4(pos,1.0);
	vert_worldPos = (worldMatrix * vec4(pos,1.0)).xyz;
	vec3 dummy = normal;
	vert_UV = UV + aValue;
	//vert_UV += aValue;
}
