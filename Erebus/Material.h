#pragma once
#include "BaseIncludes.h"
#include "TextureAsset.h"
#include "ShaderProgram.h"
class Material
{
public:
	Material(float shiny = 0, glm::vec3 ambient = glm::vec3(1,1,1), glm::vec3 diffuse = glm::vec3(1,1,1),
		glm::vec3 specular = glm::vec3(1,1,1), std::string diffusePath = NULL, std::string specularPath = NULL, std::string normalPath = NULL);
	~Material();

	void bindTextures(ShaderProgram* program);
private:
	float shinyFactor;

	glm::vec3 ambientColor;
	glm::vec3 diffuseColor;
	glm::vec3 specularColor;

	std::string diffuseTextureFilePath;
	std::string specularTextureFilePath;
	std::string normalTextureFilePath;

	Importer::TextureAsset* diffuseTexture;
	Importer::TextureAsset* specularTexture;
	Importer::TextureAsset* normalTexture;
};

