#version 430

in vec3 TexCoords;
out vec4 out_color;

uniform samplerCube skyboxDay;
uniform samplerCube skyboxNight;
uniform float blendFactor;
uniform vec3 fogColour;

const float lowerLimit = -1.0;
const float upperLimit = 1.0;

void main()
{    
	vec4 dayColor = texture(skyboxDay, TexCoords);
	vec4 nightColor = texture(skyboxNight, TexCoords);

	vec4 finalColor = mix(dayColor, nightColor, blendFactor);

	float factor = (TexCoords.y - lowerLimit) / (upperLimit - lowerLimit);
	factor = clamp(factor, 0.0, 1.0);
	out_color = mix(vec4(fogColour, 1.0), finalColor, factor);
}
