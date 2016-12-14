#version 420 core

//in vec3 pos ;
//in vec3 normal ;
//in vec2 UV ;
//in vec3 tangent ;
//in ivec4 influences ;
//in vec4 weights ;

layout (location = 0) in vec3 pos ;
layout (location = 1) in vec3 normal ;
layout (location = 2) in vec2 UV ;
layout (location = 3) in vec3 tangent ;
layout (location = 4) in ivec4 influences ;
layout (location = 5) in vec4 weights ;

out vec3 FragPos;
out vec2 TexCoords;
out vec3 Normal;
out mat3 TBN;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec3 viewPos;
uniform mat4 worldMatrices[105];
uniform mat4 jointMatrices[64];

void main()
{	
	//initial values
	vec4 vPos = vec4(0.f, 0.f, 0.f, 0.f);
	vec4 vTan = vec4(0.f, 0.f, 0.f, 0.f);
	vec4 vNorm = vec4(0.f, 0.f, 0.f, 0.f);

	for(int i = 0; i < 4; i++)
	{
		vPos += (jointMatrices[influences[i]] * vec4( pos, 1.0 ) ) * weights[i];
		vTan += (jointMatrices[influences[i]] * vec4( tangent, 0.0 ) ) * weights[i];
		vNorm += (jointMatrices[influences[i]] * vec4( normal, 0.0) ) * weights[i];
	}

	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vPos;
	FragPos = (worldMatrices[gl_InstanceID] * vPos).xyz;
	//vert_viewPos = viewPos;
	Normal = vNorm.xyz;
	//Flipping the Y-axis of the UV
	TexCoords = UV*vec2(1,-1);
	//49
	vec3 T = normalize(vec3(worldMatrices[gl_InstanceID] * vTan));

	vec3 biTangent = normalize(cross(vNorm.xyz, vTan.xyz));

	vec3 B = normalize(vec3(worldMatrices[gl_InstanceID] * vec4(biTangent, 0.0)));
	vec3 N = normalize(vec3(worldMatrices[gl_InstanceID] * vNorm));

	TBN = mat3(T,B,N);
}