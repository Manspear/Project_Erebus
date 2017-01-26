#version 420 core

const vec2 quadCorners[4] = { vec2(-0.5, -0.5), vec2(-0.5, 0.5), 
				vec2(0.5, -0.5), vec2(0.5, 0.5) };

const vec2 uvCorners[4] = { vec2(0.0, 0.0), vec2(0.0, 1.0), 
				vec2(1.0, 0.0), vec2(1.0, 1.0) };

layout(points) in ;
layout(triangle_strip, max_vertices = 4) out;

in float size[];

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

out vec2 vertex_UV;

 void main()
 {	
	float sizeZ = size[0];
	if (sizeZ < 0)
		sizeZ = 0.0;
	for(int i = 0; i < 4; i++)
	{		
		vec4 p = viewMatrix * gl_in[0].gl_Position;
		p.xy += quadCorners[i] * sizeZ;
		gl_Position = projectionMatrix * p;
		vertex_UV = uvCorners[i];
		EmitVertex();
	}
	EndPrimitive();
 }