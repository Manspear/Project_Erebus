#version 420 core

//layout (location = 0) out vec3 gPosition;
//layout (location = 1) out vec3 gNormal;
//layout (location = 2) out vec4 gAlbedoSpec;

in vec2 TexCoords;
in vec3 FragPos;
in vec3 Normal;

uniform sampler2D diffuseTexture;

out vec3 gPosition;

void main (){
	// Store the fragment position vector in the first gbuffer texture
    gPosition = vec3(0,0.5,0.5);
    //// Also store the per-fragment normals into the gbuffer
    //gNormal = normalize(Normal);
    //// And the diffuse per-fragment color
    //gAlbedoSpec.rgb = texture(diffuseTexture, TexCoords).rgb;
}
