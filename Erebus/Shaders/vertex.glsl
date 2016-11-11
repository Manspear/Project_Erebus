#version 420 core

in vec2 pos ;
in vec2 texIn ;

out vec2 texOut;

void main(){
	gl_Position = vec4(pos, 1, 1);

	texOut = texIn;
}