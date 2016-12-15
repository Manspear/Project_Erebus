#include "Material.h"

Material::Material(Importer::Assets* asset, const char* diffusePath, const char* normalPath, const char* specularPath, float shiny, glm::vec3 ambient, glm::vec3 diffuse, glm::vec3 specular)
{
	this->shinyFactor = shiny;

	this->ambientColor = ambient;
	this->diffuseColor = diffuse;
	this->specularColor = specular;

	this->diffuseTextureFilePath = diffusePath;
	this->specularTextureFilePath = specularPath;
	this->normalTextureFilePath = normalPath;

	if (diffuseTextureFilePath != "")
		diffuseTexture = asset->load<Importer::TextureAsset>(diffuseTextureFilePath);

	if (specularTextureFilePath != "")
		specularTexture = asset->load<Importer::TextureAsset>(specularTextureFilePath);

	if (normalTextureFilePath != "")
		normalTexture = asset->load<Importer::TextureAsset>(normalTextureFilePath);

}

Material::~Material()
{
}

void Material::bindTextures(GLuint program)
{
	getUnifroms(program);

	if (diffuseTextureFilePath != "")
	{
		diffuseTexture->bind(GL_TEXTURE0);
		
		glUniform1i(diffuseUnifrom, 0);
		glUniform1i(hasDiffuseUnifrom, 1);
	}
	else
		glUniform1i(hasDiffuseUnifrom, 0);

	if (normalTextureFilePath != "")
	{
		normalTexture->bind(GL_TEXTURE1);

		glUniform1i(normalUnifrom, 1);
		glUniform1i(hasNormalUnifrom, 1);
	}
	else
		glUniform1i(hasNormalUnifrom, 0);
	
	if (specularTextureFilePath != "")
	{
		specularTexture->bind(GL_TEXTURE2);
		
		glUniform1i(specularUnifrom, GL_TEXTURE2);
		glUniform1i(hasSpecularUnifrom, 1);
	}
	else
		glUniform1i(hasSpecularUnifrom, 0);
}

void Material::bindMaterial(GLuint program)
{
	getUnifroms(program);

	glUniform3fv(ambientColorUnifrom, 1, glm::value_ptr(ambientColor));
	glUniform3fv(diffuseColorUnifrom, 1, glm::value_ptr(diffuseColor));
	glUniform3fv(specularColorUnifrom, 1, glm::value_ptr(specularColor));
}

void Material::getUnifroms(GLuint program)
{
	if (program != lastProgram)
	{
		lastProgram = program;

		hasDiffuseUnifrom = glGetUniformLocation(lastProgram, "hasDiffuse");
		hasSpecularUnifrom = glGetUniformLocation(lastProgram, "hasSpecular");
		hasNormalUnifrom = glGetUniformLocation(lastProgram, "hasNormal");

		diffuseUnifrom = glGetUniformLocation(lastProgram, "diffuseTexture");
		specularUnifrom = glGetUniformLocation(lastProgram, "specularTexture");
		normalUnifrom = glGetUniformLocation(lastProgram, "normalTexture");

		ambientColorUnifrom = glGetUniformLocation(lastProgram, "ambientColor");
		diffuseColorUnifrom = glGetUniformLocation(lastProgram, "diffuseColor");
		specularColorUnifrom = glGetUniformLocation(lastProgram, "specularColor");
		shinyFactorUniform = glGetUniformLocation(lastProgram, "shinyFactor");
	}
}
