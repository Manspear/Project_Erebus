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

	Importer::Assets *assets = Importer::Assets::getInstance();

	if (diffuseTextureFilePath != "")
		diffuseTexture = assets->load<Importer::TextureAsset>(diffuseTextureFilePath);

	if (specularTextureFilePath != "")
		specularTexture = assets->load<Importer::TextureAsset>(specularTextureFilePath);

	if (normalTextureFilePath != "")
		normalTexture = assets->load<Importer::TextureAsset>(normalTextureFilePath);

}

Material::~Material()
{
}

void Material::bindTextures(ShaderProgram * program)
{
	if (program->getProgramID() != lastProgram)
	{
		lastProgram = program->getProgramID();

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

	glUniform3fv(ambientColorUnifrom, 1, glm::value_ptr(ambientColor));
	glUniform3fv(diffuseColorUnifrom, 1, glm::value_ptr(diffuseColor));
	glUniform3fv(specularColorUnifrom, 1, glm::value_ptr(specularColor));

	if (diffuseTextureFilePath != "")
	{
		diffuseTexture->bind(GL_TEXTURE0);
		
		glUniform1i(diffuseUnifrom, GL_TEXTURE0);
		glUniform1i(hasDiffuseUnifrom, 1);
	}
	else
		glUniform1i(hasDiffuseUnifrom, 0);

	
	if (diffuseTextureFilePath != "")
	{
		diffuseTexture->bind(GL_TEXTURE0);
		
		glUniform1i(specularUnifrom, GL_TEXTURE0);
		glUniform1i(hasSpecularUnifrom, 1);
	}
	else
		glUniform1i(hasSpecularUnifrom, 0);

	
	if (diffuseTextureFilePath != "")
	{
		diffuseTexture->bind(GL_TEXTURE0);
		
		glUniform1i(normalUnifrom, GL_TEXTURE0);
		glUniform1i(hasNormalUnifrom, 1);
	}
	else
		glUniform1i(hasNormalUnifrom, 0);
}
