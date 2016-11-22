#version 420 core
layout(points) in;
layout(triangle_strip, max_vertices = 4) out;

uniform mat4 projectionMatrix;

uniform float particleSize;

in Vertex
{
 vec4 color;
 vec3 normal;
}vertex[];

in vec3 vert_viewPos[];
in vec3 vert_worldPos[];

out vec4 vertexColor;
out vec3 geom_normal;
out vec3 geom_viewPos;
out vec3 geom_worldPos;

 void main()
 {
	
	vec4 p = gl_in[0].gl_Position;

	vec2 quadA = p.xy + vec2(-0.5, -0.5) * particleSize;
	gl_Position = projectionMatrix * vec4(quadA, p.zw);
	vertexColor = vertex[0].color;
	geom_normal = vertex[0].normal;
	EmitVertex();

	vec2 quadB = p.xy + vec2(-0.5, 0.5) * particleSize;
	gl_Position = projectionMatrix * vec4(quadB, p.zw);
	vertexColor = vertex[0].color;
	geom_normal = vertex[0].normal;
	EmitVertex();

	vec2 quadC = p.xy + (0.5, 0.5) * particleSize;
	gl_Position = projectionMatrix * vec4(quadC, p.zw);
	vertexColor = vertex[0].color;
	geom_normal = vertex[0].normal;
	EmitVertex();

	vec2 quadD = p.xy + vec2(0.5, -0.5) * particleSize;
	gl_Position = projectionMatrix * vec4(quadD, p.zw);
	vertexColor = vertex[0].color;
	geom_normal = vertex[0].normal;
	EmitVertex();

	EndPrimitive();

 }