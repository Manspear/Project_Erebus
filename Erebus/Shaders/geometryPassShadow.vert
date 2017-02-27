#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;
layout (location = 3) in vec3 tangent;

const int NUM_CASCADES = 3;

uniform mat4 ViewProjectionMatrix;
uniform mat4 worldMatrices[100];

void main(){
	gl_Position = ViewProjectionMatrix * worldMatrices[gl_InstanceID] * vec4(position,1.0); 
}
