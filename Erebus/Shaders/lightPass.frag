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

const int NR_LIGHTS = 32;
uniform PointLight lights[NR_LIGHTS];
uniform vec3 viewPos;

void main() {

	vec3 FragPos = vec3(texture2D(gPosition, TexCoords)).rgb;
	vec3 Normal  = vec3(texture2D(gNormal, TexCoords)).rgb;
	vec3 Diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	vec3 lighting  = Diffuse * 0.1;
	vec3 viewDir  = normalize(viewPos - FragPos);
	int numLight = 0;
	for(int i = 0; i < NR_LIGHTS; ++i)
    {
		//float distance = length(lights[i].pos - FragPos);
  //      if(distance < lights[i].radius)
  //      {
			numLight = numLight + 1;
			// Diffuse
            vec3 lightDir = normalize(lights[i].pos - FragPos);
            vec3 diffuse = max(dot(Normal, lightDir), 0.0) * Diffuse * vec3(1,0,0);

			float attenuation = smoothstep(lights[i].radius, 0, length(lights[i].pos - FragPos));

			diffuse *= attenuation;

			lighting += diffuse;
		//}
	}
	//if(lighting.r > 1)
	//	lighting.r = 1;
	//if(lighting.g > 1)
	//	lighting.g = 1;
	//if(lighting.b > 1)
	//	lighting.b = 1;

	FragColor = vec4(lighting, 1.0);
}
