#version 420 core
in vec2 geom_UV;

out vec4 finalColor;

uniform sampler2D diffuseTexture;

void main (){
	vec4 color = texture( diffuseTexture, geom_UV );
	finalColor = vec4(color);
}
