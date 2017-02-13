#version 430 core

layout (location = 0) in vec3 position;

out vec3 FragPos;
out vec3 fColor;

layout (std140, binding = 0) uniform vpBuffer
{
	mat4 projectionMatrix;
	mat4 viewMatrix;
};

uniform mat4 worldMatrices[100];
uniform vec3 instanceColors[100];

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vec4(position,1.0);
	
	FragPos = (worldMatrices[gl_InstanceID] * vec4(position,1.0)).xyz;

	fColor = instanceColors[gl_InstanceID];
}
