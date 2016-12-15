#version 430

out vec4 FragColor;
in vec2 TexCoords;

uniform sampler2D gPosition;
uniform sampler2D gNormal;
uniform sampler2D gAlbedoSpec;

struct PointLight {
		vec4 pos;
		vec4 color;
		vec4 radius;
};

struct DirLight {
    vec3 direction;
	vec3 color;
};

const int NR_POINT_LIGHTS  = 50;
const int NR_DIR_LIGHTS  = 1;
layout(std430, binding = 0) readonly buffer LightBuffer {
	PointLight data[];
} lightBuffer;
uniform DirLight dirLights[NR_DIR_LIGHTS];
uniform vec3 viewPos;
uniform int drawMode;

vec3 CalcDirLight(DirLight light, vec3 normal, vec3 viewDir);
vec3 CalcPointLight(PointLight light, vec3 normal, vec3 fragPos, vec3 viewDir);  

void main() {

	vec3 FragPos = vec3(texture2D(gPosition, TexCoords)).rgb;
	vec3 Normal  = vec3(texture2D(gNormal, TexCoords)).rgb;
	vec3 Diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	vec3 norm = normalize(Normal);
    vec3 viewDir = normalize(viewPos - FragPos);

	vec3 ambient = Diffuse * 0.1;
	
	vec3 directional = vec3(0);
	for(int i = 0; i < NR_DIR_LIGHTS; i++) //calculate direconal light
		directional += CalcDirLight(dirLights[i], norm, viewDir);

	vec3 point = vec3(0,0,0);
	for(int i = 0; i < NR_POINT_LIGHTS; i++) //calculate point lights
		point += CalcPointLight(lightBuffer.data[i], norm, FragPos, viewDir);

	if(drawMode == 1) //set diffrent draw modes to show textures and light calulations
        FragColor = vec4(ambient + directional + point, 1.0);
    else if(drawMode == 2)
		FragColor = vec4(ambient + point, 1.0);
	else if(drawMode == 3)
		FragColor = vec4(ambient + directional, 1.0);
	else if(drawMode == 4)
        FragColor = vec4(FragPos, 1.0);
    else if(drawMode == 5)
        FragColor = vec4(Normal, 1.0);
    else if(drawMode == 6)
        FragColor = vec4(Diffuse, 1.0);
    else if(drawMode == 7)
		FragColor = vec4(ambient + directional + point, 1.0);
		//FragColor = vec4(vec3(Specular), 1.0);
}

vec3 CalcDirLight(DirLight light, vec3 normal, vec3 viewDir)
{
	vec3 lightDir = normalize(-light.direction);
    // Diffuse shading
    float diff = max(dot(normal, lightDir), 0.0);

	vec3 Diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	vec3 lighting  = vec3(0);// Diffuse * 0.1;

	lighting += max(dot(normal, lightDir), 0.0) * Diffuse * light.color;

	return lighting;
}

vec3 CalcPointLight(PointLight light, vec3 normal, vec3 fragPos, vec3 viewDir)
{
	vec3 Diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	vec3 lighting  = vec3(0);// Diffuse * 0.1;

		float distance = length(light.pos.xyz - fragPos);
		if(distance < 30)
		{
			// Diffuse
            vec3 lightDir = normalize(light.pos.xyz - fragPos);
            vec3 diffuseColor = max(dot(normal, lightDir), 0.0) * Diffuse * light.color.xyz;

			//Specular
			vec3 reflectDir = reflect(-lightDir, normal);
			float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
			vec3 specular = light.color.xyz * spec;

			float attenuation = smoothstep(30, 0, length(light.pos.xyz - fragPos));

			diffuseColor *= attenuation;
			//specular *= attenuation;

			lighting += diffuseColor; //+ specular;
			//lighting = max(dot(Normal, lightDir), 0.0) * Diffuse * lights[i].color;
		}
	return lighting;
}
