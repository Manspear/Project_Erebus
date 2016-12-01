#version 430

out vec4 FragColor;
in vec2 TexCoords;

uniform sampler2D gPosition;
uniform sampler2D gNormal;
uniform sampler2D gAlbedoSpec;

struct PointLight {
		vec3 pos;
		vec3 color;
		float radius;
};

const int NR_LIGHTS = 2;
uniform PointLight lights[NR_LIGHTS];
uniform vec3 viewPos;

void main() {

	vec3 FragPos = vec3(texture2D(gPosition, TexCoords)).rgb;
	vec3 Normal  = vec3(texture2D(gNormal, TexCoords)).rgb;
	vec3 Diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	vec3 lighting  = Diffuse * 0.1;
	vec3 viewDir  = normalize(viewPos - FragPos);
	for(int i = 0; i < NR_LIGHTS; i++)
    {
		//float distance = length(vec3(0,0,0) - FragPos);
  //     if(distance < 30)
	 // {
			// Diffuse
            vec3 lightDir = normalize(vec3(0,0,0) - FragPos);
            vec3 diffuseColor = max(dot(Normal, lightDir), 0.0) * Diffuse * lights[i].color;

			float attenuation = smoothstep(30, 0, length(vec3(0,0,0) - FragPos));

			diffuseColor *= attenuation;
			lighting += diffuseColor;
			//lighting = max(dot(Normal, lightDir), 0.0) * Diffuse * lights[i].color;
		//}
	}

	FragColor = vec4(lighting, 1.0);
}
