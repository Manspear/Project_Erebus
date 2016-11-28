#version 420 core

in vec3 pos ;
in vec3 norm;

out vec3 normal;

void main(){
	gl_Position = vec4(pos, 1);
	normal = norm;
}