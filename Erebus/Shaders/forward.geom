#version 420 core
layout(triangles) in ;
layout(triangle_strip, max_vertices = 3) out;

in vec3 vert_worldPos[];
in vec2 vert_UV[];

out vec3 geom_worldPos;
out vec2 geom_UV;

 void main()
 {

	for(int i = 0; i<3;i++){
		gl_Position = gl_in[i].gl_Position;
		geom_UV = vert_UV[i];
		EmitVertex();
	}
	EndPrimitive();
 }