#version 430 core

layout (location = 0) out vec3 gPosition;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec4 gAlbedoSpec;
layout (location = 3) out float fragmentdepth;

in vec2 TexCoords;
in vec3 FragPos;
in vec3 Normal;

uniform sampler2D diffuseTexture;
uniform sampler2D specularTexture;
uniform sampler2D normalTexture;

//uniform int hasDiffuse;
//uniform int hasSpecular;
//uniform int hasNormal;

//uniform vec3 ambientColor;
//uniform vec3 diffuseColor;
//uniform vec3 specularColor;

void main (){
	//Store the fragment position vector in the first gbuffer texture
    gPosition = FragPos;
	 //gPosition = vec3(0,1,0);
    // Also store the per-fragment normals into the gbuffer
    gNormal = normalize(Normal);
    // And the diffuse per-fragment color
    gAlbedoSpec.rgb = texture(diffuseTexture, TexCoords).rgb;
    // Store specular intensity in gAlbedoSpec's alpha component
    //gAlbedoSpec.a = texture(texture_specular1, TexCoords).r;

	fragmentdepth = gl_FragCoord.z;
}
