#version 420 core
layout(triangles) in ;
layout(triangle_strip, max_vertices = 4) out;

in vec3 vert_normal[];
in vec3 vert_viewPos[];
in vec3 vert_worldPos[];
in vec2 vert_UV[];

out vec3 geom_normal;
out vec3 geom_viewPos;
out vec3 geom_worldPos;
out vec2 geom_UV;

 void main()
 {
	vec3 worldToView = normalize(vert_viewPos[0] - vert_worldPos[0]);
	vec3 temp_normal1 = normalize(cross((vert_worldPos[1]- vert_worldPos[0]), (vert_worldPos[2]- vert_worldPos[0])));

	if(dot(worldToView, temp_normal1)>=-0.0)
	{
		for(int i = 0; i<3;i++){
			gl_Position = gl_in[i].gl_Position;
			geom_normal = vert_normal[i];
			geom_viewPos = vert_viewPos[i];
			geom_worldPos = vert_worldPos[i];
			geom_UV = vert_UV[i];
			EmitVertex();
		}
		EndPrimitive();
	}
 }