#pragma once

#include "Assets.h"
#include "TextureAsset.h"
#include <string>

namespace Importer
{
	class MaterialAsset : public Asset
	{
	public:
		IMPORTER_API MaterialAsset();
		IMPORTER_API ~MaterialAsset();

		IMPORTER_API bool load( std::string path, Assets* assets ) override;
		IMPORTER_API void unload() override;
		IMPORTER_API void upload() override;

		IMPORTER_API glm::vec3 getAmbientColor();
		IMPORTER_API glm::vec3 getDiffuseColor();
		IMPORTER_API glm::vec3 getSpecularColor();
		IMPORTER_API float getShinyFactor();
		IMPORTER_API TextureAsset* getDiffuseTexture();
		IMPORTER_API TextureAsset* getSpecularTexture();
		IMPORTER_API TextureAsset* getNormalTexture();

		IMPORTER_API void bindTextures( GLuint program );
		IMPORTER_API void bindMaterial( GLuint program );

	private:
		glm::vec3 parseVec3( char** cursor );
		float parseFloat( char** cursor );
		void parseString( char** cursor, char* dst );
		void getUniforms( GLuint program );
		bool isWhitespace( char c );

		glm::vec3 ambientColor;
		glm::vec3 diffuseColor;
		glm::vec3 specularColor;
		float shinyFactor;

		TextureAsset* diffuseTexture;
		TextureAsset* specularTexture;
		TextureAsset* normalTexture;

		GLuint diffuseUniform, specularUniform, normalUniform, hasDiffuseUniform, hasSpecularUniform, hasNormalUniform;
		GLuint ambientColorUniform, diffuseColorUniform, specularColorUniform, shinyFactorUniform;
		GLuint lastProgram = -1;
	};
}