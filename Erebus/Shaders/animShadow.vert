#version 420 core

layout (location = 0) in vec3 pos ;
layout (location = 1) in vec3 normal ;
layout (location = 2) in vec2 UV ;
layout (location = 3) in vec3 tangent ;
layout (location = 4) in ivec4 influences ;
layout (location = 5) in vec4 weights ;

uniform mat4 ViewProjectionMatrix;
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

	gl_Position = ViewProjectionMatrix * worldMatrices[gl_InstanceID] * vPos;
}