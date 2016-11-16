#version 420 core

in vec3 pos ;
in vec3 normal ;

out vec3 vert_normal;
out vec3 vert_viewPos;
out vec3 vert_worldPos;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec3 viewPos;

void main(){
	gl_Position = projectionMatrix * viewMatrix * vec4(pos, 1.0);
	vert_normal = normal;
	vert_viewPos = viewPos;
	vert_worldPos = pos;
}
