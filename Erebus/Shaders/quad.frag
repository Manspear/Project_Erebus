#version 430

in vec2 frag_uv;

uniform sampler2D gPosition;
uniform sampler2D gNormal;
uniform sampler2D gAlbedoSpec;

out vec3 out_color;

void main() {

	vec3 FragPos = vec3(texture2D(gPosition, frag_uv)).rgb;
	vec3 Normal  = vec3(texture2D(gNormal, frag_uv)).rgb;
	vec3 Albedo  = vec3(texture2D(gAlbedoSpec, frag_uv)).rgb;

	out_color = FragPos;
}
