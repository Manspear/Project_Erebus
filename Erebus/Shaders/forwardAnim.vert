#version 420 core

in vec3 pos ;
in vec3 normal ;
in vec2 UV ;
in vec3 tangent ;
in ivec4 influences ;
in vec4 weights ;

out vec3 vert_normal;
out vec3 vert_viewPos;
out vec3 vert_worldPos;
out vec2 vert_UV;

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
	vert_worldPos = (worldMatrices[gl_InstanceID] * vPos).xyz;
	vert_viewPos = viewPos;
	vert_normal = vNorm.xyz;
	//Flipping the Y-axis of the UV
	vert_UV = UV*vec2(1,-1);
}