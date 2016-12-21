#version 420 core

layout (location = 0) in vec3 position;

out vec4 vPos;
out vec4 vxAxis;
out vec4 vyAxis;
out vec4 vzAxis;
out vec3 vHalfLengths;
out vec3 vColor;


uniform vec3 pos[123];
uniform vec3 xAxis[123];
uniform vec3 yAxis[123];
uniform vec3 zAxis[123];
uniform vec3 halfLengths[123];

uniform vec3 colors[123];


void main(){

	
	vPos = vec4(pos[gl_InstanceID],1);
	vxAxis = vec4(xAxis[gl_InstanceID],1);
	vyAxis = vec4(yAxis[gl_InstanceID],1);
	vzAxis = vec4(zAxis[gl_InstanceID],1);
	vHalfLengths = halfLengths[gl_InstanceID];
	vColor = colors[gl_InstanceID];
}
