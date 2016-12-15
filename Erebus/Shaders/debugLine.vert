#version 420 core

layout (location = 0) in vec3 position;

out vec4 vPos1;
out vec4 vPos2;
out vec3 vColor;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

uniform vec3 pos1[256];
uniform vec3 pos2[256];
uniform vec3 colors[256];


void main(){

	mat4 viewProjection = projectionMatrix * viewMatrix;
	vPos1 = viewProjection * vec4(pos1[gl_InstanceID],1);
	vPos2 = viewProjection * vec4(pos2[gl_InstanceID],1);
	vColor = colors[gl_InstanceID];
}
