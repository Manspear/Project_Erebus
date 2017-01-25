#version 420 core

uniform vec3 vertexColor;
in vec2 vertex_UV;

uniform sampler2D tex;
void main (){
	vec4 tempColor = texture(tex, vertex_UV);
	if(tempColor.a == 0)
		discard;
	gl_FragColor = tempColor;
}
