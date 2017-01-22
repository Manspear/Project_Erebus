#version 430

in vec3 TexCoords;
out vec4 color;

uniform samplerCube skybox;
uniform sampler2D gDepth;

void main()
{    
	float Depth = vec3(texture2D(gDepth, gl_FragCoord.xy)).r;

	if(Depth < 0.1)
	{
		color = vec4(1,0,0,1);
	}
	else
	{		
		color = texture(skybox, TexCoords);
	}

	//color = vec4(1,0,0,1);
}
