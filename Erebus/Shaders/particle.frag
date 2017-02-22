#version 420 core

in vec2 vertex_UV;

out vec4 out_color;

uniform sampler2D tex;
void main (){
	vec4 color = texture(tex, vertex_UV);
	if(color.w < 0.5)
		discard;
	out_color = color; 
}
