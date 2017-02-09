#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;
layout (location = 3) in vec3 tangent;
layout (location = 4) in mat4 worldMatrix;

out vec3 FragPos;
out vec2 TexCoords;
out vec3 Normal;
out mat3 TBN;

layout (std140, binding = 0) uniform test
{
	mat4 test1;
	mat4 test2;
};

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

void main(){
	gl_Position = projectionMatrix * viewMatrix * worldMatrix * vec4(position,1.0); 
	
	FragPos = (worldMatrix * vec4(position,1.0)).xyz;
	TexCoords = texCoords * vec2(1,-1);

	mat3 normalMatrix = transpose(inverse(mat3(worldMatrix)));
    Normal = normalMatrix * normal;

	vec3 T = normalize(vec3(worldMatrix * vec4(tangent, 0.0))); //calculate TBN matrix

	vec3 biTangent = normalize(cross(normal, tangent));

	vec3 B = normalize(vec3(worldMatrix * vec4(biTangent, 0.0)));
	vec3 N = normalize(vec3(worldMatrix * vec4(normal, 0.0)));

	TBN = mat3(T,B,N);
}
