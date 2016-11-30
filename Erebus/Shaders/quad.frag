#version 430

in vec2 frag_uv;

out vec3 out_color;

uniform sampler2D texture;

void main() {

	vec3 color = vec3(texture2D(texture, frag_uv));

	out_color = color;
}
