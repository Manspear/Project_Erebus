#version 420 core

out vec4 finalColor;
in vec2 texOut;

uniform sampler2D texSampler;
void main (){
	finalColor = texture(texSampler, texOut);
}