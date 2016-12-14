#version 420 core

layout(points) in;
layout(line_strip, max_vertices = 25) out;


in vec4 vPos1[];
in float vRad[];
in vec3 vColor[];

out vec3 gColor;

const float PI = 3.1415926;
const int totalDegree = 360;
const int linesPerSphere = 16;

void main(){
	gColor = vColor[0];
	int incremention = totalDegree / linesPerSphere;

	for (float i = 0; i < totalDegree; i+= incremention)
	{
		float rad = 2*PI * i/totalDegree;
		vec4 pos1 = vec4(cos(rad) * vRad[0], 0, sin(rad)*vRad[0],1) + vPos1[0];
		gl_Position = pos1;
		EmitVertex();
	}
	EndPrimitive();
}