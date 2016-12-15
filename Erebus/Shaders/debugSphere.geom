#version 420 core

layout(points) in;
layout(line_strip, max_vertices = 64) out;


in vec4 vPos1[];
in float vRad[];
in vec3 vColor[];

out vec3 gColor;

const float PI = 3.1415926;
const int totalDegree = 360;
const int linesPerSphere = 16;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

void doCenterCircle(int incremention, mat4 viewProjection){
	for (float i = 0; i < totalDegree; i+= incremention)
	{
		float rad = 2*PI * i/totalDegree;
		gl_Position = viewProjection * (vec4(cos(rad) * vRad[0], 0, sin(rad)*vRad[0],0) + vPos1[0]);
		EmitVertex();
	}
	gl_Position = viewProjection * (vec4(cos(0) * vRad[0], 0, sin(0)*vRad[0],0) + vPos1[0]);
	EmitVertex();
	EndPrimitive();
}

void doTopCircle(int incremention, mat4 viewProjection){
	for (float i = 0; i < totalDegree; i+= incremention)
	{
		float rad = 2*PI * i/totalDegree;
		gl_Position = viewProjection * (vec4(0, cos(rad)*vRad[0], sin(rad)*vRad[0],0) + vPos1[0]);
		EmitVertex();
	}
	gl_Position = viewProjection * (vec4(0, cos(0)*vRad[0], sin(0)*vRad[0],0) + vPos1[0]);
	EmitVertex();
	EndPrimitive();
}

void doSideCircle(int incremention, mat4 viewProjection){
	for (float i = 0; i < totalDegree; i+= incremention)
	{
		float rad = 2*PI * i/totalDegree;
		gl_Position = viewProjection * (vec4(cos(rad) * vRad[0],  sin(rad)*vRad[0], 0,0) + vPos1[0]);
		EmitVertex();
	}
	gl_Position = viewProjection * (vec4(cos(0) * vRad[0],  sin(0)*vRad[0], 0,0) + vPos1[0]);
	EmitVertex();
	EndPrimitive();
}

void main(){
	gColor = vColor[0];
	int incremention = totalDegree / linesPerSphere;

	mat4 viewProjection = projectionMatrix * viewMatrix;

	doCenterCircle (incremention, viewProjection);
	doTopCircle(incremention, viewProjection);
	doSideCircle(incremention, viewProjection);
	
}

