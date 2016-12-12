#version 420 core

const vec2 quadCorners[4] = { vec2(0.0, 0.0), vec2(0.0, 1.0), 
				vec2(1.0, 0.0), vec2(1.0, 1.0) };

layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

in vec4 vert_UV[];
in float vert_width[];

out vec3 geom_pos;
out vec2 geom_UV;

uniform mat4 projectionMatrix;
uniform float height;

void main()
{
	vec4 pos;

	//Top left
	pos = gl_in[0].gl_Position;
	geom_pos = pos.xyz;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].x, vert_UV[0].y);
	EmitVertex();

	//Top right
	pos = gl_in[0].gl_Position;
	pos.x += vert_width[0];
	geom_pos = pos.xyz;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].z, vert_UV[0].y);
	EmitVertex();

	//Bottom left
	pos = gl_in[0].gl_Position;
	pos.y -= height;
	geom_pos = pos.xyz;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].x, vert_UV[0].w);
	EmitVertex();

	//Bottom right
	pos = gl_in[0].gl_Position;
	pos.x += vert_width[0];
	pos.y -= height;
	geom_pos = pos.xyz;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].z, vert_UV[0].w);
	EmitVertex();

	EndPrimitive();
}