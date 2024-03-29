#include "FontAsset.h"

namespace Importer
{
	FontAsset::FontAsset()
		: texture( nullptr )
	{
		info = {};
	}

	FontAsset::~FontAsset()
	{
		unload();
	}

	bool FontAsset::load( std::string path, Assets* assets )
	{
		bool result = false;

		std::string infoFile;

		size_t lastSlash = path.find_last_of( '\\' );
		size_t forwardSlash = path.find_last_of( '/' );
		if( forwardSlash > lastSlash )
			lastSlash = forwardSlash;

		size_t dot = path.find( '.' );
		if( dot > lastSlash ) // the user supplied a file extension
		{
			textureName = path.substr(0, dot-1) + ".dds";
			infoFile = path.substr(0,dot-1) + ".font";
		}
		else
		{
			textureName = path + ".dds";
			infoFile = path + ".font";
		}

		texture = assets->load<TextureAsset>( textureName );
		if( texture )
		{
			FILE* file = NULL;
			fopen_s( &file, infoFile.c_str(), "rb" );
			if( file )
			{
				fread( &info, sizeof(FontInfo), 1, file );
				fclose( file );

				/*texture->bind();
				glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
				glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);*/

				result = true;
			}
		}

		return result;
	}

	void FontAsset::unload()
	{
		if( texture )
		{
			texture->unload();
			texture = nullptr;
		}
	}

	void FontAsset::upload()
	{
	}

	void FontAsset::incrementReferenceCount()
	{
		Asset::incrementReferenceCount();

		if( texture )
			texture->incrementReferenceCount();
	}

	void FontAsset::decrementReferenceCount()
	{
		Asset::decrementReferenceCount();
		if( !textureName.empty() )
			assets->unload<TextureAsset>( textureName );
	}

	int FontAsset::getWidth( char c )
	{
		char index = c - FONT_RANGE_START;
		return info.widths[index];
	}

	glm::vec4 FontAsset::getUV( char c )
	{
		char index = c - FONT_RANGE_START;
		glm::vec2 offset = getOffset( c );

		float x = offset.x / texture->getWidth();
		float y = offset.y / texture->getHeight();
		float z = (offset.x + info.widths[index]) / texture->getWidth();
		float w = (offset.y + info.size) / texture->getHeight();

		return glm::vec4(x, y, z, w);
	}

	glm::vec2 FontAsset::getOffset( char c )
	{
		char index = c - FONT_RANGE_START;
		return glm::vec2( info.xoffsets[index], info.yoffsets[index]);
	}

	FontInfo* FontAsset::getInfo()
	{
		return &info;
	}

	TextureAsset* FontAsset::getTexture()
	{
		return texture;
	}
}