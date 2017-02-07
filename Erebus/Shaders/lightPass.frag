#version 430

#include <include.glsl>

out vec4 FragColor;
in vec2 TexCoords;

uniform sampler2D gDepth;
uniform sampler2D gNormal;
uniform sampler2D gAlbedoSpec;
uniform sampler2D gShadowMap;

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

uniform DirLight dirLights;
uniform vec3 viewPos;
uniform int drawMode;
uniform mat4 shadowVPM;
uniform mat4 invView;
uniform mat4 invProj;

vec3 CalcDirLight(DirLight light, vec3 normal, vec3 viewDir, float Specular);
vec3 CalcPointLight(PointLight light, vec3 normal, vec3 fragPos, vec3 viewDir, float Specular);
float CalcShadowAmount(sampler2D shadowMap, vec4 initialShadowMapCoords);
float SampleShadowMap(sampler2D shadowMap, vec2 coords, float compare);
float SampleVarianceShadowMap(sampler2D shadowMap, vec2 coords, float compare);
vec3 WorldPosFromDepth(float depth);

void main() {

	float Depth = vec3(texture2D(gDepth, TexCoords)).r;

	vec3 FragPos = WorldPosFromDepth(Depth);

	vec3 Normal = vec3(texture2D(gNormal, TexCoords).rgb);
	
	Normal = normalize(Normal);

	vec3 Diffuse  = vec4(texture2D(gAlbedoSpec, TexCoords)).rgb;
	float Specular = vec4(texture2D(gAlbedoSpec, TexCoords)).a;

	vec4 shadowMapCoords = shadowVPM * vec4(FragPos,1.0);
	vec3 shadowcoords = (shadowMapCoords.xyz/shadowMapCoords.w) * vec3(0.5) + vec3(0.5);
	
	vec3 norm = normalize(Normal);
    vec3 viewDir = normalize(viewPos - FragPos);

	vec3 ambient = Diffuse * 0.1;
	
	vec3 directional = vec3(0);
	for(int i = 0; i < NR_DIR_LIGHTS; i++) //calculate direconal light
		directional += CalcDirLight(dirLights, norm, viewDir, Specular);

	vec3 point = vec3(0,0,0);
	for(int i = 0; i < NR_POINT_LIGHTS; i++) //calculate point lights
		point += CalcPointLight(lightBuffer.data[i], norm, FragPos, viewDir, Specular);

	vec3 outputColor = (ambient + directional + point);

	outputColor = mix(outputColor, vec3(0.50,0.50,0.50),getFogFactor(length(FragPos - viewPos)));

	if(drawMode == 1) //set diffrent draw modes to show textures and light calulations
        FragColor = vec4(outputColor, 1.0);
    else if(drawMode == 2)
		FragColor = vec4(FragPos, 1.0);
	else if(drawMode == 3)
		FragColor = vec4(Normal, 1.0);
	else if(drawMode == 4)
        FragColor = vec4(Depth,Depth,Depth, 1);//vec4(FragPos, 1.0);
    else if(drawMode == 5)
        FragColor = vec4(Diffuse, 1);//vec4(Normal, 1.0);
    else if(drawMode == 6)
        FragColor = vec4(Specular,Specular,Specular, 1.0);
    else if(drawMode == 7)
		FragColor = vec4(ambient + (directional * CalcShadowAmount(gShadowMap, shadowMapCoords)) + point, 1.0);
		//FragColor = vec4(vec3(Specular), 1.0);
}
 
vec3 CalcDirLight(DirLight light, vec3 normal, vec3 viewDir, float Specular)
{
	vec3 lightDir = normalize(-light.direction);
    // Diffuse shading
    float diff = max(dot(normal, lightDir), 0.0);

	vec3 diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	diffuse = max(dot(normal, lightDir), 0.0) * diffuse * light.color;

	vec3 halfwayDir = normalize(lightDir + viewDir);
	float spec = pow(max(dot(normal, halfwayDir), 0.0), 16.0);
	vec3 specular = light.color * spec * (Specular);;

	vec3 lighting  = diffuse + specular;

	return lighting;
}

vec3 CalcPointLight(PointLight light, vec3 normal, vec3 fragPos, vec3 viewDir, float Specular)
{
	vec3 Diffuse  = vec3(texture2D(gAlbedoSpec, TexCoords)).rgb;

	vec3 lighting  = vec3(0);// Diffuse * 0.1;

		float distance = length(light.pos.xyz - fragPos);
		if(distance < light.radius.x)
		{
			// Diffuse
            vec3 lightDir = normalize(light.pos.xyz - fragPos);
            vec3 diffuseColor = max(dot(normal, lightDir), 0.0) * Diffuse * light.color.xyz;

			//Specular
			vec3 halfwayDir = normalize(lightDir + viewDir);
			float spec = pow(max(dot(normal, halfwayDir), 0.0), 16.0);
			vec3 specular = light.color.xyz * spec * (Specular/16.0);

			float attenuation = smoothstep(light.radius.x, 0.0f, length(light.pos.xyz - fragPos));

			diffuseColor *= attenuation;
			specular *= attenuation;

			lighting += diffuseColor + specular;
		}
	return lighting;
}

float CalcShadowAmount(sampler2D shadowMap, vec4 initialShadowMapCoords)
{
	vec3 shadowcoords = (initialShadowMapCoords.xyz/initialShadowMapCoords.w) * vec3(0.5) + vec3(0.5);

	return SampleVarianceShadowMap(shadowMap, shadowcoords.xy, shadowcoords.z);
}

float SampleShadowMap(sampler2D shadowMap, vec2 coords, float compare)
{
	return step(compare - 0.005, texture2D(shadowMap, coords.xy).r);
}

float linstep(float low, float high, float v)
 {
	return clamp((v - low) / (high - low), 0.0, 1.0);

 }

float SampleVarianceShadowMap(sampler2D shadowMap, vec2 coords, float compare)
{
	vec2 moments = texture2D(shadowMap, coords.xy).xy;

	float p = step(compare, moments.x);
	float variance = max(moments.y - moments.x * moments.x, 0.00002);

	float d = compare - moments.x;
	float pMax = linstep(0.2, 1.0, variance / (variance + d*d));

	return min(max(p, pMax), 1.0);
	
	//return step(compare, texture2D(shadowMap, coords.xy).r);
}

vec3 WorldPosFromDepth(float depth){
	float z = depth * 2.0 - 1.0;

	vec4 clipSpacePosition = vec4(TexCoords.xy * 2.0 - 1.0, z, 1.0);
	vec4 viewSpacePosition = invProj * clipSpacePosition;

	//Perspective division
	viewSpacePosition /= viewSpacePosition.w;

	vec4 worldSpacePosition = invView * viewSpacePosition;

	return worldSpacePosition.xyz;
}
