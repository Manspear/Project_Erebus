#version 430

in vec2 frag_uv;

uniform vec3 blurScale;
uniform sampler2D filterTexture;

out vec4 out_color;

void main() {

	vec4 color = vec4(0.0);
	
	color += texture2D(filterTexture, frag_uv + (vec2(-3.0) * blurScale.xy)) * (1.0/64.0);
	color += texture2D(filterTexture, frag_uv + (vec2(-2.0) * blurScale.xy)) * (6.0/64.0);
	color += texture2D(filterTexture, frag_uv + (vec2(-1.0) * blurScale.xy)) * (15.0/64.0);
	color += texture2D(filterTexture, frag_uv + (vec2(0.0) * blurScale.xy))  * (20.0/64.0);
	color += texture2D(filterTexture, frag_uv + (vec2(1.0) * blurScale.xy))  * (15.0/64.0);
	color += texture2D(filterTexture, frag_uv + (vec2(2.0) * blurScale.xy))  * (6.0/64.0);
	color += texture2D(filterTexture, frag_uv + (vec2(3.0) * blurScale.xy))  * (1.0/64.0);
	
	out_color = color;

}
