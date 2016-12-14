#version 430 core

layout (location = 0) out vec3 gPosition;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec4 gAlbedoSpec;


in vec3 FragPos;
in vec3 fColor;

void main (){
	//Store the fragment position vector in the first gbuffer texture
    gPosition = FragPos;
	 //gPosition = vec3(0,1,0);
	
	gNormal = vec3(0,1,0);
    // Also store the per-fragment normals into the gbuffer
    // And the diffuse per-fragment color
    gAlbedoSpec.rgb = fColor;
    // Store specular intensity in gAlbedoSpec's alpha component
    //gAlbedoSpec.a = texture(texture_specular1, TexCoords).r;
}
