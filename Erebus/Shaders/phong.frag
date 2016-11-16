#version 420 core

in vec3 geom_norm;
in vec3 fragPos;

out vec4 finalColor;

uniform vec3 lightAmbient;
uniform vec3 lightDiffuse;
uniform vec3 lightSpecular;

uniform vec3 lightPos;
uniform vec3 viewPos;

void main()
{
	vec3 color = vec3(0.5, 0.9, 0.5); //model base color

	//Ambient
	vec3 ambient = vec3(lightAmbient);

	//Diffuse
	vec3 norm = normalize(vert_norm);
	vec3 lightDir = normalize(lightPos - fragPos);
	float diff = max(dot(norm, lightDir), 0.0);
	vec3 diffuse = vec3(lightDiffuse * diff);
	
	//Specular
	vec3 viewDir = normalize(viewPos - fragPos);
	vec3 reflectDir = reflect(-lightDir, norm);
	float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
	vec3 specular = vec3(lightSpecular * spec);
	
	color = (ambient + diffuse + specular) * color;
	finalColor = vec4(color, 1.0);
}