#version 420 core

const vec2 quadCorners[4] = { vec2(0.0, 0.0), vec2(0.0, 1.0), 
				vec2(1.0, 0.0), vec2(1.0, 1.0) };

layout(points) in ;
layout(triangle_strip, max_vertices = 4) out;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

uniform float particleSize;

//in vec3 vertex_color[];

out vec3 geom_pos;
//out vec3 vertexColor;
out vec2 vertex_UV;

 void main()
 {
	
	for(int i = 0; i < 4; i++)
	{		
		vec4 p = viewMatrix * gl_in[0].gl_Position;
		p.xy += (quadCorners[i] - vec2(0.5)) * particleSize;
		geom_pos = gl_in[0].gl_Position.xyz;
		gl_Position = projectionMatrix * p;
		//vertexColor = vertex_color[0];
		vertex_UV = quadCorners[i];

		EmitVertex();
	}

	EndPrimitive();

 }