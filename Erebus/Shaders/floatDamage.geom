//#version 420 core

//layout(points) in;
//layout(triangle_strip, max_vertices = 4) out;

//const vec2 quadCorners[4] = { vec2(-0.5, -0.5), vec2(-0.5, 0.5), 
//				vec2(0.5, -0.5), vec2(0.5, 0.5) };

//in vec4 vert_UV[];
//in float vert_width[];
//in float vert_height[];

//out vec2 geom_UV;

//uniform mat4 projectionMatrix;
//uniform mat4 viewMatrix;

//void main()
//{
//	//vec4 temp = gl_in[0].gl_Position * viewMatrix;

//	//	for(int i = 0; i < 4; i++)
//	//{		
//	//	vec4 p = viewMatrix * gl_in[0].gl_Position;
//	//	p.xy += quadCorners[i] * sizeZ;
//	//	gl_Position = projectionMatrix * p;
//	//	vertex_UV = uvCorners[i];
//	//	EmitVertex();
//	//}

//	float height = vert_height[0];
//	float width = vert_width[0];

//	vec4 pos = viewMatrix * gl_in[0].gl_Position;

//	//Bottom left
//	pos = viewMatrix * gl_in[0].gl_Position;
//	pos.xy += quadCorners[0] * width;
//	gl_Position = projectionMatrix * pos;
//	geom_UV = vec2(vert_UV[0].x, vert_UV[0].y);
//	EmitVertex();

//	//Bottom right
//	pos = viewMatrix * gl_in[0].gl_Position;
//	pos.xy += quadCorners[1] * width;
//	gl_Position = projectionMatrix * pos;
//	geom_UV = vec2(vert_UV[0].z, vert_UV[0].y);
//	EmitVertex();

//	//Top left
//	pos = viewMatrix * gl_in[0].gl_Position;
//	pos.xy += quadCorners[2] * width;
//	gl_Position = projectionMatrix * pos;
//	geom_UV = vec2(vert_UV[0].x, vert_UV[0].w);
//	EmitVertex();

//	//Top right
//	pos = viewMatrix * gl_in[0].gl_Position;
//	pos.xy += quadCorners[3] * width;
//	gl_Position = projectionMatrix * pos;
//	geom_UV = vec2(vert_UV[0].z, vert_UV[0].w);
//	EmitVertex();

//	EndPrimitive();
//}


#version 420 core

const vec2 quadCorners[4] = { vec2(-0.5, -0.5), vec2(-0.5, 0.5), 
				vec2(0.5, -0.5), vec2(0.5, 0.5) };


layout(points) in ;
layout(triangle_strip, max_vertices = 4) out;

in vec4 vert_UV[];
in float vert_width[];
in float vert_height[];
in float vert_index[];
in vec4 vert_color[];
in float vert_amountNr[];


out vec2 geom_UV;
out vec4 geom_color;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

 void main()
 {	

 //	geom_UV = vec2(vert_UV[0].x, vert_UV[0].y); //Bot-left
//	geom_UV = vec2(vert_UV[0].z, vert_UV[0].y); //Bot-Right
//	geom_UV = vec2(vert_UV[0].x, vert_UV[0].w); //Top-Left
//	geom_UV = vec2(vert_UV[0].z, vert_UV[0].w); //Top-Right
	vec2 uvCorners[4] = { vec2(vert_UV[0].x, vert_UV[0].w) ,vec2(vert_UV[0].x, vert_UV[0].y), 
				vec2(vert_UV[0].z, vert_UV[0].w), vec2(vert_UV[0].z, vert_UV[0].y)};

				//const vec2 quadCorners[4] = { vec2(-0.5, -0.5) BOT LEFT, vec2(-0.5, 0.5) TOP LEFT, 
				//vec2(0.5, -0.5) BOT RIGHT, vec2(0.5, 0.5) TOP RIGHT };
	float sizeX = vert_width[0];
	float sizeY = vert_height[0];

	
	for(int i = 0; i < 4; i++)
	{		
		vec4 p = viewMatrix * gl_in[0].gl_Position;
		p.x += quadCorners[i].x * sizeX;
		p.y += quadCorners[i].y * sizeY;
		
		p.x += vert_index[0] * sizeX;
		p.x -= (vert_amountNr[0]/2)*sizeX;
		gl_Position = projectionMatrix * p;

		geom_UV = uvCorners[i];
		geom_color = vert_color[0];
		EmitVertex();
	}
	EndPrimitive();
 }