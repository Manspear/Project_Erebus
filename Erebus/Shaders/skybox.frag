#version 430

in vec3 TexCoords;
out vec4 color;

uniform samplerCube skybox;
uniform sampler2D gDepth;

void main()
{    
	
	color = texture(skybox, TexCoords);

	//color = vec4(1,0,0,1);
}
