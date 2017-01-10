#version 420 core

layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

in vec4 vert_UV[];
in float vert_width[];

out vec2 geom_UV;

uniform mat4 projectionMatrix;
uniform float height;

void main()
{
	vec4 pos;

	//Top left
	pos = gl_in[0].gl_Position;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].x, vert_UV[0].y);
	EmitVertex();

	//Top right
	pos = gl_in[0].gl_Position;
	pos.x += vert_width[0];
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].z, vert_UV[0].y);
	EmitVertex();

	//Bottom left
	pos = gl_in[0].gl_Position;
	pos.y += height;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].x, vert_UV[0].w);
	EmitVertex();

	//Bottom right
	pos = gl_in[0].gl_Position;
	pos.x += vert_width[0];
	pos.y += height;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(vert_UV[0].z, vert_UV[0].w);
	EmitVertex();

	EndPrimitive();
}