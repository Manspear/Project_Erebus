#version 420 core

uniform vec3 vertexColor;
in vec2 vertex_UV;

uniform sampler2D tex;
void main (){

	vec4 tempColor = vec4(1.0, 0.0, 0.0, 1.0);
	//gl_FragColor = vec4(vertexColor, 1.0);
	vec4 color =  texture(tex, vertex_UV);
	if(color.w < 0.5)
		discard;
	gl_FragColor = color;
}
