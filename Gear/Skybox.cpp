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

	dayCycleLength = 120.0f;
	hoursPerDay = 24.0f;
	dawnTimeOffset = 3.0f;
	quarterDay = dayCycleLength * 0.25f;
	halfquarterDay = dayCycleLength * 0.125f;
	dawnTime = 0.0f;
	dayTime = dawnTime + halfquarterDay;
	duskTime = dayTime + quarterDay + halfquarterDay;
	nightTime = duskTime + halfquarterDay;
	timePerHour = dayCycleLength / hoursPerDay;
	currentPhase = DayPhase::Dawn;
	currentCycleTime = 0;
	UpdateWorldTime();


	fullLight = glm::vec3(253.0f / 255.0f, 248.0f / 255.0f, 223.0f / 255.0f);
	fullDark = glm::vec3(32.0f / 255.0f, 28.0f / 255.0f, 46.0f / 255.0f);
	dawnDuskFog = glm::vec3(133.0f / 255.0f, 124.0f / 255.0f, 102.0f / 255.0f);
	dayFog = glm::vec3(180.0f / 255.0f, 208.0f / 255.0f, 209.0f / 255.0f);
	nightFog = glm::vec3(12.0f / 255.0f, 15.0f / 255.0f, 91.0f / 255.0f);

	sun.color = glm::vec3(0.75, 0.75, 0.94);
	sun.direction = glm::vec3(0, 0, 1);

	currentSun.color = glm::vec3(0.75, 0.75, 0.94);
	currentSun.direction = glm::vec3(0, 0, 1);
	//Set the values to the correct one as the beginning
	float relativeTime = currentCycleTime - dawnTime;
	currentSun.color = glm::mix(fullDark, fullLight, relativeTime / halfquarterDay);

	relativeTime = currentCycleTime - dawnTime;
	fogColor = glm::mix(dawnDuskFog, dayFog, relativeTime / (halfquarterDay));

	relativeTime = currentCycleTime - dawnTime;
	skyboxBlendFactor = 1 - (relativeTime / halfquarterDay);

	setTime(8, true);

	std::vector<const GLchar*> faces;
	faces.push_back("skybox/right.dds");
	faces.push_back("skybox/left.dds");
	faces.push_back("skybox/top.dds");
	faces.push_back("skybox/bottom.dds");
	faces.push_back("skybox/front.dds");
	faces.push_back("skybox/back.dds");
	dayTextureID = this->loadCubemap(faces);

	faces.clear();

	faces.push_back("skybox/nightRight.dds");
	faces.push_back("skybox/nightLeft.dds");
	faces.push_back("skybox/nightTop.dds");
	faces.push_back("skybox/nightBottom.dds");
	faces.push_back("skybox/nightFront.dds");
	faces.push_back("skybox/nightBack.dds");
	nightTextureID = this->loadCubemap(faces);

	shadowMap.Init(CASCADE_TEXTURE_SIZE, CASCADE_TEXTURE_SIZE, &currentSun);
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

	glActiveTexture(GL_TEXTURE0 + TEXTURE_LOC_DAY);
	skyboxShader->setUniform(TEXTURE_LOC_DAY, "skyboxDay");
	glBindTexture(GL_TEXTURE_CUBE_MAP, dayTextureID);

	glActiveTexture(GL_TEXTURE0 + TEXTURE_LOC_NIGHT);
	skyboxShader->setUniform(TEXTURE_LOC_NIGHT, "skyboxNight");
	glBindTexture(GL_TEXTURE_CUBE_MAP, nightTextureID);

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
	skyboxShader->setUniform(skyboxBlendFactor, "blendFactor");

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

	float deltaTime = dt;
	if (luaOverride && timeHasChanged)
	{
		if (lerpTime <= lerpMaxTime)
		{
			deltaTime = dt;
			lerpTime += dt;

			if (targetTime < startTime)
			{
				currentCycleTime = (startTime + (lerpTime / lerpMaxTime) * (dayCycleLength - startTime));

				if (lerpTime >= lerpMaxTime)
				{
					startTime = 0;
					lerpTime = 0;
					lerpMaxTime = (targetTime) * 0.5;
				}
			}
			else {
				currentCycleTime = (startTime + (lerpTime / lerpMaxTime) * (targetTime - startTime));
				currentCycleTime = fmod(currentCycleTime, dayCycleLength);
			}
			UpdateWorldTime();
			UpdateFog();
			UpdateLight();
			UpdateBlendFactor();

			
		}
		else
		{
			timeHasChanged = false;
		}
	}
	else if (!luaOverride) {
		UpdateWorldTime();
		UpdateFog();
		UpdateLight();
		UpdateBlendFactor();

		deltaTime = dt;
		currentCycleTime += dt;
		currentCycleTime = fmod(currentCycleTime, dayCycleLength);
	}
	rotation += ROTATE_SPEED * deltaTime;
}

GEAR_API void Gear::Skybox::setFogColor(glm::vec3 color)
{
	this->fogColor = color;
}

GEAR_API void Gear::Skybox::setAmbient(glm::vec3 color)
{
	this->ambient = color;
}

GEAR_API void Gear::Skybox::setPhase(DayPhase phase)
{
	switch (phase)
	{
	case Gear::Night:
		targetTime = nightTime;
		break;
	case Gear::Dawn:
		targetTime = dawnTime;
		break;
	case Gear::Day:
		targetTime = dayTime;
		break;
	case Gear::Dusk:
		targetTime = duskTime;
		break;
	default:
		break;
	}
}

GEAR_API void Gear::Skybox::setBlend(float blend)
{
	this->skyboxBlendFactor = blend;
}

GEAR_API void Gear::Skybox::setColor(glm::vec3 color)
{
	sun.color = color;
}

GEAR_API void Gear::Skybox::setDirection(glm::vec3 direction)
{
	sun.direction = direction;
}

GEAR_API int Gear::Skybox::getHours()
{
	return this->worldTimeHour;
}

GEAR_API int Gear::Skybox::getMinutes()
{
	return this->minutes;
}

GEAR_API void Gear::Skybox::unbindShadow()
{
	shadowMap.unBind();
}

GEAR_API void Gear::Skybox::updateCascadeShadows(Camera* camera)
{
	shadowMap.calcOrthoProjs(camera);
}

GEAR_API void Gear::Skybox::updateLightPass(ShaderProgram * shader)
{
	for (GLuint i = 0; i < shadowMap.getNumCascades(); i++)
	{
		shadowMap.bindTexture(shader, ("gShadowMap[" + std::to_string(i) + "]").c_str(), 3 + i, i);

		shader->setUniform((shadowMap.getShadowMatrix()[i]), ("lightWVP[" + std::to_string(i) + "]").c_str());
		shader->setUniform((shadowMap.getSplitDistance()[i]), ("CascadeEndClipSpace[" + std::to_string(i) + "]").c_str());
	}
}

GEAR_API bool Gear::Skybox::isShadowsEnabled()
{
	return this->shadowsEnabled;
}

GEAR_API void Gear::Skybox::setShadowsEnabled(bool enabled)
{
	this->shadowsEnabled = enabled;
}

GEAR_API int Gear::Skybox::numCascades()
{
	return this->shadowMap.getNumCascades();
}

GEAR_API void Gear::Skybox::readyShadowForDraw(int cascadeIndex, ShaderProgram * geomerty, ShaderProgram * animation)
{
	geomerty->use();
	geomerty->setUniform(shadowMap.getShadowMatrix()[cascadeIndex], "ViewProjectionMatrix");
	geomerty->unUse();

	animation->use();
	animation->setUniform(shadowMap.getShadowMatrix()[cascadeIndex], "ViewProjectionMatrix");

	shadowMap.bind(cascadeIndex);
}

GEAR_API glm::vec3 Gear::Skybox::getFogColor()
{
	return this->fogColor;
}

GEAR_API glm::vec3 Gear::Skybox::getAmbient()
{
	return this->ambient;
}

GEAR_API Lights::DirLight& Gear::Skybox::getDirLight()
{
	return this->currentSun;
}

GEAR_API void Gear::Skybox::setTime(int hours, bool force)
{
	float hourToCycleTime = (dayCycleLength / hoursPerDay);

	if (hours < (dawnTimeOffset + 1))
	{
		hours = hoursPerDay + hours;
	}

	targetTime = fmod(((hours * hourToCycleTime) - (dawnTimeOffset + 2) * hourToCycleTime), dayCycleLength);

	if (targetTime < currentCycleTime)
	{
		lerpMaxTime = (dayCycleLength - currentCycleTime) * 4;
	}
	else
	{
		lerpMaxTime = (targetTime - currentCycleTime) * 4;
	}

	timeHasChanged = true;
	startTime = currentCycleTime;
	lerpTime = 0.0f;
	if (force)
	{
		currentCycleTime = targetTime;
		UpdateWorldTime();
		UpdateFog();
		UpdateLight();
		UpdateBlendFactor();
	}
}

GEAR_API void Gear::Skybox::overrideLua(bool luaOverride)
{
	this->luaOverride = luaOverride;
}

void Gear::Skybox::SetDawn()
{
	printf("Phase: Dawn Hour: %d Minute: %d\n", worldTimeHour, minutes);
	currentPhase = DayPhase::Dawn;
}

void Gear::Skybox::SetDay()
{
	printf("Phase: Day Hour: %d Minute: %d %f : %f\n", worldTimeHour, minutes, currentCycleTime, targetTime);
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
		currentSun.color = glm::mix(fullDark, fullLight, relativeTime / halfquarterDay);
		ambient = glm::mix(fullDark, fullLight, relativeTime / halfquarterDay);
	}
	else if (currentPhase == DayPhase::Dusk)
	{
		float relativeTime = currentCycleTime - duskTime;
		currentSun.color = glm::mix(fullLight, fullDark, relativeTime / halfquarterDay);
		ambient = glm::mix(fullLight, fullDark, relativeTime / halfquarterDay);
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

void Gear::Skybox::LoadTextures()
{
}
