#version 420 core

in vec3 pos ;
in vec2 uv ;

out vec2 vert_uv;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 worldMatrix;

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrix * vec4(pos, 1.0);
	vert_uv = uv*vec2(1,-1);
}
