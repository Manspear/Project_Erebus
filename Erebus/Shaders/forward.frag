#version 420 core

in vec3 geom_normal;
in vec3 geom_viewPos;
in vec3 geom_worldPos;
in vec2 geom_UV;

out vec4 finalColor;

uniform vec3 lightPos;
uniform vec3 lightColor;
uniform sampler2D diffuseTexture;

void main (){
	//vec3 color = vec3(0.5, 0.9, 0.5); //model base color, replace with texture sampling
	vec3 color = texture( diffuseTexture, geom_UV ).rgb;

	//Ambient
	vec3 ambient = vec3(lightColor * 0.1);

	//Diffuse
	vec3 norm = normalize(geom_normal);
	vec3 lightDir = normalize(lightPos - geom_worldPos);
	float diff = max(dot(norm, lightDir), 0.0);
	vec3 diffuse = vec3(lightColor * diff);
	
	//Specular
	vec3 viewDir = normalize(geom_viewPos - geom_worldPos);
	vec3 reflectDir = reflect(-lightDir, norm);
	float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
	vec3 specular = vec3(lightColor * spec);
	
	color = (ambient + diffuse + specular)/2 * color;
	finalColor = vec4(color, 1.0);
}
