#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;
layout (location = 3) in vec3 tangent;
layout (location = 4) in mat4 worldMatrix;

const int NUM_CASCADES = 3;

uniform mat4 ViewProjectionMatrix;

void main(){
	gl_Position = ViewProjectionMatrix * worldMatrix * vec4(position,1.0); 
}
