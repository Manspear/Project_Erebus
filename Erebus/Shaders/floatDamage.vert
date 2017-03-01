#version 420 core

layout (location = 0) in vec3 pos ;
//layout (location = 1) in vec3 attributes ;
layout (location = 1) in vec4 UV ;
layout (location = 2) in vec4 color ;
layout (location = 3) in vec4 attributes ; //x = Width, y = Index,


out vec4 vert_UV;
out float vert_width;
out float vert_index;
out float vert_amountNr;
out vec4 vert_color;
out float vert_height;

void main()
{
	gl_Position = vec4(pos, 1.f);
	vert_width = attributes.x;
	vert_height = attributes.w;
	vert_index = attributes.y;
	vert_amountNr = attributes.z;
	vert_UV = UV;
	vert_color = color;
	
}