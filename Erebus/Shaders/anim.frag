#version 430 core

layout (location = 0) out vec3 gPosition;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec4 gAlbedoSpec;

in vec3 vert_normal;
in vec3 vert_viewPos;
in vec3 vert_worldPos;
in vec2 vert_UV;

uniform sampler2D diffuseTexture;
uniform sampler2D specularTexture;
uniform sampler2D normalTexture;

void main (){
	//Store the fragment position vector in the first gbuffer texture
    gPosition = vert_worldPos;
	 //gPosition = vec3(0,1,0);
    // Also store the per-fragment normals into the gbuffer
    gNormal = normalize(vert_normal);
    // And the diffuse per-fragment color
    gAlbedoSpec.rgb = texture(diffuseTexture, vert_UV).rgb;
}
