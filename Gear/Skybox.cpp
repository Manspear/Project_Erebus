#include "Skybox.h"

Gear::Skybox::Skybox()
{
	fogColor = glm::vec3(0.5f, 0.5f, 0.5f);
}

Gear::Skybox::~Skybox()
{
	delete skyboxShader;
}

void Gear::Skybox::init()
{
	glGenVertexArrays(1, &skyboxVAO);
	glGenBuffers(1, &skyboxVBO);
	glBindVertexArray(skyboxVAO);
	glBindBuffer(GL_ARRAY_BUFFER, skyboxVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(skyboxVertices), &skyboxVertices, GL_STATIC_DRAW);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0);
	glBindVertexArray(0);

	skyboxShader = new ShaderProgram(shaderBaseType::VERTEX_FRAGMENT, "skybox");

	dayCycleLength = 60.0f;
	hoursPerDay = 24.0f;
	dawnTimeOffset = 3.0f;
	quarterDay = dayCycleLength * 0.25f;
	halfquarterDay = dayCycleLength * 0.125f;
	dawnTime = 0.0f;
	dayTime = dawnTime + halfquarterDay;
	duskTime = dayTime + quarterDay + halfquarterDay;
	nightTime = duskTime + halfquarterDay;
	timePerHour = dayCycleLength / hoursPerDay;
	currentPhase = DayPhase::Night;

	fullLight = glm::vec3(253.0f / 255.0f, 248.0f / 255.0f, 223.0f / 255.0f);
	fullDark = glm::vec3(32.0f / 255.0f, 28.0f / 255.0f, 46.0f / 255.0f);
	dawnDuskFog = glm::vec3(133.0f / 255.0f, 124.0f / 255.0f, 102.0f / 255.0f);
	dayFog = glm::vec3(180.0f / 255.0f, 208.0f / 255.0f, 209.0f / 255.0f);
	nightFog = glm::vec3(12.0f / 255.0f, 15.0f / 255.0f, 91.0f / 255.0f);

	sun.color = glm::vec3(0.75, 0.75, 0.94);
	sun.direction = glm::vec3(0, 0, 1);

	currentSun.color = glm::vec3(0.75, 0.75, 0.94);
	currentSun.direction = glm::vec3(0, 0, 1);
}

GLuint Gear::Skybox::loadTexture(GLchar * path, GLboolean alpha)
{
	return NULL;
}

GLuint Gear::Skybox::loadCubemap(std::vector<const GLchar*> faces)
{
	GLuint textureID;
	glGenTextures(1, &textureID);

	//int width, height;

	glBindTexture(GL_TEXTURE_CUBE_MAP, textureID);
	Importer::ImageAsset image;
	for (GLuint i = 0; i < faces.size(); i++)
	{
		image.load(faces[i], NULL);

		if (image.getFormat() == GL_RGBA)
			glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, GL_RGBA, image.getWidth(), image.getHeight(), 0, image.getFormat(), GL_UNSIGNED_BYTE, image.getPixels());
		else
			glCompressedTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 0, image.getFormat(), image.getWidth(), image.getHeight(), 0, image.getSize(), image.getPixels());

		
		image.unload();
	}
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
	glBindTexture(GL_TEXTURE_CUBE_MAP, 0);

	this->textureID = textureID;

	return textureID;
}

GEAR_API void Gear::Skybox::addUniform(std::string uniform)
{
	skyboxShader->addUniform(uniform);
}

void Gear::Skybox::draw()
{
	glDepthFunc(GL_LEQUAL);  // Change depth function so depth test passes when values are equal to depth buffer's content
	skyboxShader->use();
	
	// skybox cube
	glBindVertexArray(skyboxVAO);

	glActiveTexture(GL_TEXTURE0 + TEXTURE_LOC);
	skyboxShader->setUniform(TEXTURE_LOC, "skybox");
	glBindTexture(GL_TEXTURE_CUBE_MAP, textureID);

	glDrawArrays(GL_TRIANGLES, 0, 36);
	glBindVertexArray(0);
	glDepthFunc(GL_LESS); // Set depth function back to default
	skyboxShader->unUse();
}

void Gear::Skybox::update(Camera* camera)
{
	skyboxShader->use();

	glm::mat4 view = glm::mat4(glm::mat3(camera->getViewMatrix()));

	view = glm::rotate(view,(float) glm::radians(rotation), glm::vec3(0, 1, 0));

	skyboxShader->setUniform(view, "view");
	skyboxShader->setUniform(camera->getProjectionMatrix(), "projection");
	skyboxShader->setUniform(fogColor, "fogColour");

	skyboxShader->unUse();
}

GEAR_API void Gear::Skybox::update(float dt)
{
	if (currentCycleTime > nightTime && currentPhase == DayPhase::Dusk)
	{
		SetNight();
	}
	else if (currentCycleTime > duskTime && currentPhase == DayPhase::Day) {
		SetDusk();
	}
	else if (currentCycleTime > dayTime && currentPhase == DayPhase::Dawn) {
		SetDay();
	}
	else if (currentCycleTime > dawnTime && currentCycleTime < dayTime && currentPhase == DayPhase::Night) {
		SetDawn();
	}

	rotation += ROTATE_SPEED * dt;

	UpdateWorldTime();
	UpdateFog();
	UpdateLight();

	currentCycleTime += dt;
	currentCycleTime = fmod(currentCycleTime, dayCycleLength);
}

GEAR_API void Gear::Skybox::setFogColor(glm::vec3 color)
{

}

GEAR_API glm::vec3 Gear::Skybox::getFogColor()
{
	return this->fogColor;
}

GEAR_API Lights::DirLight& Gear::Skybox::getDirLight()
{
	return this->currentSun;
}

void Gear::Skybox::SetDawn()
{
	printf("Phase: Dawn Hour: %d Minute: %d\n", worldTimeHour, minutes);
	currentPhase = DayPhase::Dawn;
}

void Gear::Skybox::SetDay()
{
	printf("Phase: Day Hour: %d Minute: %d\n", worldTimeHour, minutes);
	currentPhase = DayPhase::Day;
}

void Gear::Skybox::SetDusk()
{
	printf("Phase: Dusk Hour: %d Minute: %d\n", worldTimeHour, minutes);
	currentPhase = DayPhase::Dusk;
}

void Gear::Skybox::SetNight()
{
	printf("Phase: Night Hour: %d Minute: %d\n", worldTimeHour, minutes);
	currentPhase = DayPhase::Night;
}

void Gear::Skybox::UpdateWorldTime()
{
	worldTimeHour = (int)(fmod((ceilf((currentCycleTime / dayCycleLength) * hoursPerDay) + dawnTimeOffset), hoursPerDay)) + 1;
	minutes = (int)(ceilf(fmod((currentCycleTime * (60 / timePerHour)), 60.0f)));
}

void Gear::Skybox::UpdateLight()
{

	float degrees = (currentCycleTime / dayCycleLength) * 360;
	currentSun.direction = glm::rotate(sun.direction, glm::radians(degrees), glm::vec3(1,0,0));


	if (currentPhase == DayPhase::Dawn)
	{
		float relativeTime = currentCycleTime - dawnTime;

		//Color = Lerp(fullDark, fullLight, relativeTime / halfQuaterDay)
	}
	else if (currentPhase == DayPhase::Dusk)
	{
		float relativeTime = currentCycleTime - duskTime;
		//Color = Lerp(fullLight, fullDark, relativeTime / halfQuaterDay)
	}
}

void Gear::Skybox::UpdateFog()
{
	if (currentPhase == DayPhase::Dawn)
	{
		float relativeTime = currentCycleTime - dawnTime;
		fogColor = glm::mix(dawnDuskFog, dayFog, relativeTime/(halfquarterDay));
	}
	else if (currentPhase == DayPhase::Day)
	{
		float relativeTime = currentCycleTime - dayTime;
		fogColor = glm::mix(dayFog, dawnDuskFog, relativeTime / (quarterDay + halfquarterDay));
	}
	else if (currentPhase == DayPhase::Dusk)
	{
		float relativeTime = currentCycleTime - duskTime;
		fogColor = glm::mix(dawnDuskFog, nightFog, relativeTime / (halfquarterDay));
	}
	else if (currentPhase == DayPhase::Night)
	{
		float relativeTime = currentCycleTime - nightTime;
		fogColor = glm::mix(nightFog, dawnDuskFog, relativeTime / (quarterDay + halfquarterDay));
	}
}

void Gear::Skybox::UpdateBlendFactor()
{
	if (currentPhase == DayPhase::Dawn)
	{
		float relativeTime = currentCycleTime - dawnTime;
		skyboxBlendFactor = 1 - (relativeTime / halfquarterDay);
	}
	else if(currentPhase == DayPhase::Day)
	{
		skyboxBlendFactor = 0.0f;
	}
	else if (currentPhase == DayPhase::Dusk)
	{
		float relativeTime = currentCycleTime - duskTime;
		skyboxBlendFactor = (relativeTime / halfquarterDay);
	}
	else if (currentPhase == DayPhase::Night)
	{
		skyboxBlendFactor = 1.0f;
	}
}
