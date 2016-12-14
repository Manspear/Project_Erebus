#version 420 core

layout (location = 0) in vec3 position;

out vec4 vPos1;
out float vRad;
out vec3 vColor;


uniform vec3 pos1[256];
uniform float rad[256];
uniform vec3 colors[256];


void main(){

	
	vPos1 = vec4(pos1[gl_InstanceID],1);
	vColor = colors[gl_InstanceID];
	vRad = rad[gl_InstanceID];
}
