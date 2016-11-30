#version 420 core
in vec2 vert_uv;

uniform sampler2D diffuseTexture;

void main (){
	//vec3 color = texture( diffuseTexture, vert_uv ).rgb;
	gl_FragColor = texture( diffuseTexture, vert_uv );
}
