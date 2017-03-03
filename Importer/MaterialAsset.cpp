#include "MaterialAsset.h"

namespace Importer
{
	MaterialAsset::MaterialAsset()
		: diffuseTexture( nullptr ), specularTexture( nullptr ), normalTexture( nullptr )
	{
	}

	MaterialAsset::~MaterialAsset()
	{
		unload();
	}

	bool MaterialAsset::load( std::string path, Assets* assets )
	{
		bool result = false;

		const int BUFFER_LEN = 64;
		char buffer[BUFFER_LEN];

		FILE* file = NULL;
		fopen_s( &file, path.c_str(), "r" );
		if( file )
		{
			fseek( file, 0, SEEK_END );
			int len = ftell( file );
			fseek( file, 0, SEEK_SET );

			char* text = new char[len+1];
			len = (int)fread( text, 1, len, file );
			text[len] = 0;

			char* start = text;
			char* cur = start;

			while( *cur && cur - text < len )
			{
				while( *cur && isWhitespace( *cur ) )
					cur++;

				start = cur;

				while( *cur && *cur != ':' )
					cur++;

				int nameLen = (int)(cur - start);

				if( *cur && *cur == ':' )
				{
					// remove ':'
					cur++;
					if( strncmp( start, "Ambient color", nameLen ) == 0 )
					{
						ambientColor = parseVec3( &cur );
					}
					else if( strncmp( start, "Diffuse color", nameLen ) == 0 )
					{
						diffuseColor = parseVec3( &cur );
					}
					else if( strncmp( start, "Specular color", nameLen ) == 0 )
					{
						specularColor = parseVec3( &cur );
					}
					else if( strncmp( start, "Shiny factor", nameLen ) == 0 )
					{
						shinyFactor = parseFloat( &cur );
					}
					else if( strncmp( start, "Diffuse texture", nameLen ) == 0 )
					{
						parseString( &cur, buffer );
						if( strcmp( buffer, "NOTEXTURE" ) != 0 )
						{
							diffuseName = "Textures/" + std::string(buffer);
							diffuseTexture = assets->load<TextureAsset>( diffuseName );
						}
					}
					else if( strncmp( start, "Specular texture", nameLen ) == 0 )
					{
						parseString( &cur, buffer );
						if( strcmp( buffer, "NOTEXTURE" ) != 0 )
						{
							specularName = "Textures/" + std::string(buffer);
							specularTexture = assets->load<TextureAsset>( specularName );
						}
					}
					else if( strncmp( start, "Normal texture", nameLen ) == 0 )
					{
						parseString( &cur, buffer );
						if( strcmp( buffer, "NOTEXTURE" ) != 0 )
						{
							normalName = "Textures/" + std::string(buffer);
							normalTexture = assets->load<TextureAsset>( normalName );
						}
					}
					else
					{
						strncpy_s( buffer, start, nameLen );
						buffer[(nameLen < BUFFER_LEN-1 ? nameLen : BUFFER_LEN-1)] = 0;
						printf( "Unrecognized field: \"%s\".\n", buffer );
					}
				}
			}

			delete[] text;

			fclose( file );
			result = true;
		}

		return result;
	}

	void MaterialAsset::unload()
	{
		/*if( diffuseTexture )
			diffuseTexture->decrementReferenceCount();
		if( specularTexture )
			specularTexture->decrementReferenceCount();
		if( normalTexture )
			normalTexture->decrementReferenceCount();*/

		if( !diffuseName.empty() )
			assets->unload<TextureAsset>( diffuseName );
		if( !specularName.empty() )
			assets->unload<TextureAsset>( specularName );
		if( !normalName.empty() )
			assets->unload<TextureAsset>( normalName );
	}

	void MaterialAsset::upload()
	{
	}

	void MaterialAsset::incrementReferenceCount()
	{
		Asset::incrementReferenceCount();

		if( diffuseTexture )
			diffuseTexture->incrementReferenceCount();
		if( specularTexture )
			specularTexture->incrementReferenceCount();
		if( normalTexture )
			normalTexture->incrementReferenceCount();
	}

	void MaterialAsset::decrementReferenceCount()
	{
		Asset::decrementReferenceCount();

		if( !diffuseName.empty() )
			assets->unload<TextureAsset>( diffuseName );
		if( !specularName.empty() )
			assets->unload<TextureAsset>( specularName );
		if( !normalName.empty() )
			assets->unload<TextureAsset>( normalName );
	}

	glm::vec3 MaterialAsset::parseVec3( char** cursor )
	{
		glm::vec3 result;

		char* cur = *cursor;
		for( int i=0; i<3; i++ )
		{
			while( *cur && isWhitespace( *cur ) )
				cur++;

			char* start = cur;
			while( *cur && !isWhitespace( *cur ) )
				cur++;

			result[i] = (float)atof(start);
		}

		*cursor = cur;

		return result;
	}

	float MaterialAsset::parseFloat( char** cursor )
	{
		float result;

		char* cur = *cursor;

		while( *cur && isWhitespace( *cur ) )
			cur++;

		char* start = cur;
		while( *cur && !isWhitespace( *cur ) )
			cur++;

		result = (float)atof(start);
		*cursor = cur;

		return result;
	}

	void MaterialAsset::parseString( char** cursor, char* dst )
	{
		char* cur = *cursor;

		while( *cur && isWhitespace( *cur ) )
			cur++;

		char* start = cur;
		while( *cur && !isWhitespace( *cur ) )
			cur++;

		int len = (int)(cur-start);
		strncpy( dst, start, len );
		dst[len] = 0;

		*cursor = cur;
	}

	bool MaterialAsset::isWhitespace( char c )
	{
		// NOTE: since we include \n and \r it's technically not just whitespace
		return ( c == ' ' || c == '\t' || c == '\n' || c == '\r' );
	}

	glm::vec3 MaterialAsset::getAmbientColor()
	{
		return ambientColor;
	}

	glm::vec3 MaterialAsset::getDiffuseColor()
	{
		return diffuseColor;
	}

	glm::vec3 MaterialAsset::getSpecularColor()
	{
		return specularColor;
	}

	float MaterialAsset::getShinyFactor()
	{
		return shinyFactor;
	}

	TextureAsset* MaterialAsset::getDiffuseTexture()
	{
		return diffuseTexture;
	}

	TextureAsset* MaterialAsset::getSpecularTexture()
	{
		return specularTexture;
	}

	TextureAsset* MaterialAsset::getNormalTexture()
	{
		return normalTexture;
	}

	void MaterialAsset::bindTextures(GLuint program)
	{
		getUniforms(program);

		if (diffuseTexture)
		{
			diffuseTexture->bind(GL_TEXTURE0);

			glUniform1i(diffuseUniform, 0);
			glUniform1i(hasDiffuseUniform, 1);
		}
		else
			glUniform1i(hasDiffuseUniform, 0);

		if (normalTexture)
		{
			normalTexture->bind(GL_TEXTURE1);

			glUniform1i(normalUniform, 1);
			glUniform1i(hasNormalUniform, 1);
		}
		else
			glUniform1i(hasNormalUniform, 0);

		if (specularTexture)
		{
			specularTexture->bind(GL_TEXTURE2);

			glUniform1i(specularUniform, GL_TEXTURE2);
			glUniform1i(hasSpecularUniform, 1);
		}
		else
			glUniform1i(hasSpecularUniform, 0);
	}

	void MaterialAsset::bindMaterial(GLuint program)
	{
		getUniforms(program);

		glUniform3fv(ambientColorUniform, 1, glm::value_ptr(ambientColor));
		glUniform3fv(diffuseColorUniform, 1, glm::value_ptr(diffuseColor));
		glUniform3fv(specularColorUniform, 1, glm::value_ptr(specularColor));
	}

	void MaterialAsset::getUniforms(GLuint program)
	{
		if (program != lastProgram)
		{
			lastProgram = program;

			hasDiffuseUniform = glGetUniformLocation(lastProgram, "hasDiffuse");
			hasSpecularUniform = glGetUniformLocation(lastProgram, "hasSpecular");
			hasNormalUniform = glGetUniformLocation(lastProgram, "hasNormal");

			diffuseUniform = glGetUniformLocation(lastProgram, "diffuseTexture");
			specularUniform = glGetUniformLocation(lastProgram, "specularTexture");
			normalUniform = glGetUniformLocation(lastProgram, "normalTexture");

			ambientColorUniform = glGetUniformLocation(lastProgram, "ambientColor");
			diffuseColorUniform = glGetUniformLocation(lastProgram, "diffuseColor");
			specularColorUniform = glGetUniformLocation(lastProgram, "specularColor");
			shinyFactorUniform = glGetUniformLocation(lastProgram, "shinyFactor");
		}
	}
}