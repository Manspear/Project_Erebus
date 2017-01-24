in vec2 texCoords;
uniform sampler2D tex;

void main(){
	
	vec4 color = texture(tex, texCoords);
	gl_FragColor = color;
}