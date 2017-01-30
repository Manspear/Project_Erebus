#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;

out vec3 FragPos;
out vec3 fColor;
out vec3 fragNormal;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 worldMatrices[100];
uniform vec3 instanceColors[100];

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vec4(position,1.0);
	
	FragPos = (worldMatrices[gl_InstanceID] * vec4(position,1.0)).xyz;

	fColor = instanceColors[gl_InstanceID];

	fragNormal = normalize(normal);
}
