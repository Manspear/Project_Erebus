#version 420 core

//uniform vec3 color;

in vec3 gColor;

uniform sampler2D gDepth;

void main (){
	//vec3 color = texture( diffuseTexture, vert_uv ).rgb;
	gl_FragColor = vec4(gColor,1);
}
