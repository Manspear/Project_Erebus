#version 420 core

in vec3 gColor;

void main (){
	gl_FragColor = vec4(gColor,1);
}
