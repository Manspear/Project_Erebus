#version 420 core

layout(points) in;
layout(line_strip, max_vertices = 2) out;

in vec4 vPos1[];
in vec4 vPos2[];
in vec3 vColor[];

out vec3 gColor;

void main(){
	gColor = vColor[0];

	gl_Position = vPos1[0];
	EmitVertex();
	gl_Position = vPos2[0];
	EmitVertex();

	EndPrimitive();
}