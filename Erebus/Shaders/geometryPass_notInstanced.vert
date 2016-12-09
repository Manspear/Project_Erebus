#version 420 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;

out vec3 FragPos;
out vec2 TexCoords;
out vec3 Normal;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 worldMatrix;

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrix * vec4(position,1.0);
	
	FragPos = (worldMatrix * vec4(position,1.0)).xyz;
	TexCoords = texCoords;

	mat3 normalMatrix = transpose(inverse(mat3(worldMatrix)));
    Normal = normalMatrix * normal;
}
