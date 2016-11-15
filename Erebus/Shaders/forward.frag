#version 420 core

in vec3 norm;

out vec4 finalColor;

void main (){
	//finalColor = vec4(0.2, 0.34, 0.5, 1.0);
	finalColor = vec4(norm,1.0);
}