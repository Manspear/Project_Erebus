#version 430

in vec2 frag_uv;

uniform sampler2D diffuse;

out vec4 out_color;

void main() {

	vec3 FragPos = vec3(texture2D(diffuse, frag_uv).rgb);

	out_color = vec4(FragPos,1);
}
