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


	fullLight = glm::vec3(253.0f / 255.0f, 248.0f / 255.0f, 223.0f / 255.0f);
	fullDark = glm::vec3(32.0f / 255.0f, 28.0f / 255.0f, 46.0f / 255.0f);
	dawnDuskFog = glm::vec3(133.0f / 255.0f, 124.0f / 255.0f, 102.0f / 255.0f);
	dayFog = glm::vec3(180.0f / 255.0f, 208.0f / 255.0f, 209.0f / 255.0f);
	nightFog = glm::vec3(12.0f / 255.0f, 15.0f / 255.0f, 91.0f / 255.0f);

	sun.color = glm::vec3(0.75, 0.75, 0.94);
	sun.direction = glm::vec3(0, 0, 1);

	std::vector<const GLchar*> faces;
	faces.push_back("skybox/right.dds");
	faces.push_back("skybox/left.dds");
	faces.push_back("skybox/top.dds");
	faces.push_back("skybox/bottom.dds");
	faces.push_back("skybox/front.dds");
	faces.push_back("skybox/back.dds");
	dayTextureID = this->loadCubemap(faces);

	faces.clear();

	faces.push_back("skybox/neatherRight.dds");
	faces.push_back("skybox/neatherLeft.dds");
	faces.push_back("skybox/neatherTop.dds");
	faces.push_back("skybox/neatherBottom.dds");
	faces.push_back("skybox/neatherFront.dds");
	faces.push_back("skybox/neatherBack.dds");
	nightTextureID = this->loadCubemap(faces);

	shadowMap.Init(CASCADE_TEXTURE_SIZE, CASCADE_TEXTURE_SIZE, &sun);
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
	UpdateBlendFactor(dt);
	UpdateFog(dt);
	UpdateAmbient(dt);
	UpdateLight(dt);
	UpdateLightAngle(dt);

	float deltaTime = dt;
	rotation += ROTATE_SPEED * deltaTime;
}

GEAR_API void Gear::Skybox::setFogColor(glm::vec3 color, bool force)
{
	if (!force)
	{
		fogLerp = 0.f;
		fogHasChanged = true;
		this->fogColorTarget = color;
		this->fogColorStart = this->fogColor;
	}
	else {
		this->fogColor = color;
	}
}

GEAR_API void Gear::Skybox::setAmbient(glm::vec3 color, bool force)
{
	if (!force)
	{
		ambientLerp = 0.f;
		ambientHasChanged = true;
		this->ambientTarget = color;
		this->ambientStart = this->ambient;
	}
	else {
		this->ambient = color;
	}
}


GEAR_API void Gear::Skybox::setBlend(float blend, bool force)
{
	if (!force)
	{
		blendLerp = 0.f;
		blendHasChanged = true;
		this->blendTarget = blend;
		this->blendStart = this->skyboxBlendFactor;
	}
	else {
		this->skyboxBlendFactor = blend;
	}

}

GEAR_API void Gear::Skybox::setColor(glm::vec3 color, bool force)
{
	if (!force)
	{
		SunColorLerp = 0.f;
		sunColorHasChanged = true;
		this->sunColorTarget = color;
		this->sunColorStart = sun.color;
	}
	else {
		sun.color = color;
	}
}

GEAR_API void Gear::Skybox::setSunAngle(float angle, bool force)
{
	if (!force)
	{
		sunAngleLerp = 0.f;
		sunAngleHasChanged = true;
		sunAngleTarget = angle;
		sunAngleStart = currentAngle;
	}
	else {
		sun.direction = glm::rotate(glm::vec3(0, 0, 1), glm::radians(angle), glm::vec3(1, 0, 0));
		currentAngle = angle;
	}
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
	return this->sun;
}

void Gear::Skybox::UpdateLight(float dt)
{
	if (sunColorHasChanged && SunColorLerp < 1.0f)
	{
		SunColorLerp += dt / 4.0f;
		sun.color = glm::lerp(sunColorStart, sunColorTarget, SunColorLerp);
	}
	else if (sunColorHasChanged)
	{
		sunColorHasChanged = false;
	}
}

void Gear::Skybox::UpdateLightAngle(float dt)
{
	if (sunAngleHasChanged && sunAngleLerp < 1.0f)
	{
		sunAngleLerp += dt / 4.0f;

		currentAngle = sunAngleStart + (sunAngleTarget - sunAngleStart) * sunAngleLerp;
		sun.direction = glm::rotate(glm::vec3(0,0,1), glm::radians(currentAngle), glm::vec3(1, 0, 0));
	}
	else if (sunAngleHasChanged)
	{
		sunAngleHasChanged = false;
	}
}

void Gear::Skybox::UpdateFog(float dt)
{
	if (fogHasChanged && fogLerp < 1.0f)
	{
		fogLerp += dt / 4.0f;
		fogColor = glm::lerp(fogColorStart, fogColorTarget, fogLerp);
	}
	else if(fogHasChanged)
	{
		fogHasChanged = false;
	}
}

void Gear::Skybox::UpdateBlendFactor(float dt)
{
	if (blendHasChanged && blendLerp < 1.0f)
	{
		blendLerp += dt / 4.0f;
		skyboxBlendFactor = blendStart + (blendTarget - blendStart) * blendLerp;
	}
	else if(blendHasChanged)
	{
		blendHasChanged = false;
	}
}

void Gear::Skybox::UpdateAmbient(float dt)
{
	if (ambientHasChanged && ambientLerp < 1.0f)
	{
		ambientLerp += dt / 4.0f;
		ambient = glm::lerp(ambientStart, ambientTarget, ambientLerp);
	}
	else if (ambientHasChanged)
	{
		ambientHasChanged = false;
	}
}

void Gear::Skybox::LoadTextures()
{
}
