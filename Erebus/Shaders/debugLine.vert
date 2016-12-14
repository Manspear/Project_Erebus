#version 420 core

in vec3 pos ;

out vec3 vPos1;
out vec3 vPos2;
out vec3 vColor;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

uniform vec3 pos1[100];
uniform vec3 pos2[100];
uniform vec3 colors[100];


void main(){
	gl_Position = projectionMatrix * viewMatrix * vec4(pos, 1.0);

	vPos1 = pos1[gl_InstanceID];
	vPos2 = pos2[gl_InstanceID];
	vColor = colors[gl_InstanceID];
}
