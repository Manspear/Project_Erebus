#version 420 core

layout (location = 0) in vec3 position;

out vec4 vMinPos;
out vec4 vMaxPos;
out vec3 vColor;


uniform vec3 minPos[256];
uniform vec3 maxPos[256];
uniform vec3 colors[256];


void main(){

	
	vMinPos = vec4(minPos[gl_InstanceID],1);
	vMaxPos = vec4(maxPos[gl_InstanceID],1);
	vColor = colors[gl_InstanceID];
}
