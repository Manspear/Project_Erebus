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

		std::string textureFile;
		std::string infoFile;

		size_t lastSlash = path.find_last_of( '\\' );
		size_t forwardSlash = path.find_last_of( '/' );
		if( forwardSlash > lastSlash )
			lastSlash = forwardSlash;

		size_t dot = path.find( '.' );
		if( dot > lastSlash ) // the user supplied a file extension
		{
			textureFile = path.substr(0, dot-1) + ".dds";
			infoFile = path.substr(0,dot-1) + ".font";
		}
		else
		{
			textureFile = path + ".dds";
			infoFile = path + ".font";
		}

		texture = assets->load<TextureAsset>( textureFile );
		if( texture )
		{
			FILE* file = NULL;
			fopen_s( &file, infoFile.c_str(), "rb" );
			if( file )
			{
				fread( &info, sizeof(FontInfo), 1, file );
				fclose( file );

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

	FontInfo* FontAsset::getInfo()
	{
		return &info;
	}

	TextureAsset* FontAsset::getTexture()
	{
		return texture;
	}
}