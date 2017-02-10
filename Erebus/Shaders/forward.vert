#version 420 core

in vec3 pos;
in vec3 normal;
in vec2 UV;

out vec3 vert_worldPos;
out vec2 vert_UV;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec2 aValue;
uniform mat4 worldMatrices[105];

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vec4(pos,1.0);
	vert_worldPos = (worldMatrices[gl_InstanceID] * vec4(pos,1.0)).xyz;
	vec3 dummy = normal;

	vert_UV = UV + aValue;
	vert_UV = vert_UV * vec2(1, -1);
	//vert_UV += aValue;
}
