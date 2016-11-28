#version 420 core

in vec3 normal;

layout(location = 0) out vec4 finalColor;

void main (){
	//finalColor = vec4(0.5, 0.3, 0.1, 1.0);
	//finalColor = vec4(normal,1.0);
	finalColor = vec4( 1.0, 0.0, 0.0, 1.0 );
}