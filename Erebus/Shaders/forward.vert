#version 420 core

in vec3 pos;
in vec3 normal;
in vec2 UV;

out vec3 vert_normal;
out vec3 vert_viewPos;
out vec3 vert_worldPos;
out vec2 vert_UV;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec3 viewPos;
uniform mat4 worldMatrices[105];

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vec4(pos,1.0);
	vert_normal = normal;
	vert_viewPos = viewPos;
	vert_worldPos = (worldMatrices[gl_InstanceID] * vec4(pos,1.0)).xyz;
	vert_UV = UV*vec2(1,-1);
}
