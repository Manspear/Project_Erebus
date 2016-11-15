#version 420 core
layout(triangles) in;
layout(triangle_strip, max_vertices = 6) out;

in vec3 vert_normal[];
in vec3 vert_viewPos[];
in vec3 vert_worldPos[];

out vec3 geom_normal;

 void main()
 {
	vec3 worldToView = normalize(vert_viewPos[0] - vert_worldPos[0]);
	vec3 temp_normal1 = normalize(cross((vert_worldPos[1]- vert_worldPos[0]), (vert_worldPos[2]- vert_worldPos[0])));

	if(dot(worldToView, temp_normal1)>=-0.0)
	{
		for(int i = 0; i<3;i++){
			gl_Position = gl_in[i].gl_Position;
			geom_normal = vert_normal[i];
			EmitVertex();
		}
		EndPrimitive();
	}
 }