#version 420 core

in vec3 pos;
in vec3 normal;
in vec2 UV;

out vec2 vertex_UV[3];

layout (std140, binding = 0) uniform vpBuffer
{
	mat4 projectionMatrix;
	mat4 viewMatrix;
};
uniform mat4 worldMatrices[105];

uniform vec2 blendValue1;
uniform vec2 blendValue2;
uniform vec2 blendValue3;

void main(){

	gl_Position = projectionMatrix * viewMatrix * worldMatrices[gl_InstanceID] * vec4(pos,1.0);
	vec3 dummy = normal;

	vertex_UV[0] = UV + blendValue1;
	vertex_UV[1] = UV + blendValue2;
	vertex_UV[2] = UV + blendValue3;
	
	vertex_UV[0] = vertex_UV[0] * vec2(1,-1); 
	vertex_UV[1] = vertex_UV[1] * vec2(1,-1); 
	vertex_UV[2] = vertex_UV[2] * vec2(1,-1); 

}
