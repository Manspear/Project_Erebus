#version 430 core

layout (location = 0) out vec4 gAlbedoSpec;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out float gDepth;

in vec2 TexCoords;
in vec3 FragPos;
in vec3 Normal;
in mat3 TBN;

uniform sampler2D diffuseTexture;
uniform sampler2D specularTexture;
uniform sampler2D normalTexture;

uniform int hasDiffuse;
uniform int hasSpecular;
uniform int hasNormal;

uniform vec4 tint;

void main (){
	gDepth = gl_FragCoord.z;
	//Store the fragment position vector in the first gbuffer texture
    // Also store the per-fragment normals into the gbuffer
	if(hasNormal == 1) //has normal texture use it else use model normal
	{
		vec3 normal = texture2D(normalTexture, TexCoords).rgb;
		normal = normalize(normal * 2.0 - 1.0);
		normal = normalize(TBN * normal);
		gNormal = normal;
	}
	else
	{
		vec3 normal = normalize(Normal);
		gNormal = normal;
	}
    // And the diffuse per-fragment color
	if(hasDiffuse == 1) //if has diffuse texture it else use error color
		gAlbedoSpec.rgb = texture2D(diffuseTexture, TexCoords).rgb;
	else
		gAlbedoSpec.rgb = vec3(1,0,0.8);
	
	if(hasSpecular == 1) //if has Specular texture it else use error value
		gAlbedoSpec.a = texture(specularTexture, TexCoords).r;
	else
		gAlbedoSpec.a = 0.0f;
	
	gAlbedoSpec.r += (tint.r - gAlbedoSpec.r) * tint.a;
	gAlbedoSpec.g += (tint.g - gAlbedoSpec.g) * tint.a;
	gAlbedoSpec.b += (tint.b - gAlbedoSpec.b) * tint.a;
}
