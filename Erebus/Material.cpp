#include "Material.h"

Material::Material(float shiny, glm::vec3 ambient, glm::vec3 diffuse, glm::vec3 specular, std::string diffusePath, std::string specularPath, std::string normalPath)
{
	this->shinyFactor = shiny;

	this->ambientColor = ambient;
	this->diffuseColor = diffuse;
	this->specularColor = specular;

	this->diffuseTextureFilePath = diffusePath;
	this->specularTextureFilePath = specularPath;
	this->normalTextureFilePath = normalPath;
}

Material::~Material()
{
}

void Material::bindTextures(ShaderProgram * program)
{
	if (diffuseTexture == NULL)
	{
		int a = 10;
	}
}
