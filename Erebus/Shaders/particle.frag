#version 420 core

uniform vec3 vertexColor;
in vec2 vertex_UV;

uniform sampler2D tex;
void main (){
	if(color.w < 0.5)
		discard;
	gl_FragColor = color; 
}
