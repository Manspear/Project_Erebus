#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;
layout (location = 3) in vec3 tangent;

out vec3 FragPos;
out vec2 TexCoords;
out vec3 Normal;
out mat3 TBN;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 worldMatrices[100];

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vec4(position,1.0); 
	
	FragPos = (worldMatrices[gl_InstanceID] * vec4(position,1.0)).xyz;
	TexCoords = texCoords * vec2(1,-1);

	mat3 normalMatrix = transpose(inverse(mat3(worldMatrices[gl_InstanceID])));
    Normal = normalMatrix * normal;

	vec3 T = normalize(vec3(worldMatrices[gl_InstanceID] * vec4(tangent, 0.0))); //calculate TBN matrix

	vec3 biTangent = normalize(cross(normal, tangent));

	vec3 B = normalize(vec3(worldMatrices[gl_InstanceID] * vec4(biTangent, 0.0)));
	vec3 N = normalize(vec3(worldMatrices[gl_InstanceID] * vec4(normal, 0.0)));

	TBN = mat3(T,B,N);
}
