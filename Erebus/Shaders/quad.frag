#version 430

in vec2 frag_uv;

uniform sampler2D gPosition;

out vec3 out_color;

void main() {

	vec3 FragPos = vec3(texture2D(gPosition, frag_uv)).rgb;

	out_color = FragPos;
}
