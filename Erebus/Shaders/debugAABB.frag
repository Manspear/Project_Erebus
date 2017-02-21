#version 420 core

in vec3 gColor;

out vec4 out_color;

void main (){
	out_color = vec4(gColor,1);
}
