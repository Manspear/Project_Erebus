#version 420 core

uniform vec3 vertexColor;
in vec2 vertex_UV;

uniform sampler2D tex;
void main (){
	vec4 color = texture(tex, vertex_UV);
	if (color.a < 0.3)
		discard;
	gl_FragColor = color;
}
