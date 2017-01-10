#version 420 core

layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

in float vert_width[];
in float vert_height[];

out vec2 geom_UV;

uniform mat4 projectionMatrix;

void main()
{
	vec4 pos;

	//Bottom left
	pos = gl_in[0].gl_Position;
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(0.f, 0.f);
	EmitVertex();

	//Bottom right
	pos = gl_in[0].gl_Position;
	pos.x += vert_width[0];
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(1.f, 0.f);
	EmitVertex();

	//Top left
	pos = gl_in[0].gl_Position;
	pos.y += vert_height[0];
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(0.f, 1.f);
	EmitVertex();

	//Top right
	pos = gl_in[0].gl_Position;
	pos.x += vert_width[0];
	pos.y += vert_height[0];
	gl_Position = projectionMatrix * pos;
	geom_UV = vec2(1.f, 1.f);
	EmitVertex();

	EndPrimitive();
}