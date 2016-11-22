#include "TextureAsset.h"

namespace Importer
{
	TextureAsset::TextureAsset()
		: id( 0 ), width( 0 ), height( 0 )
	{
	}

	TextureAsset::~TextureAsset()
	{
		unload();
	}

	bool TextureAsset::load( std::string path, Assets* assets )
	{
		bool result = false;

		ImageAsset image;
		if( image.load( path, assets ) )
		{
			glGenTextures( 1, &id );
			glBindTexture( GL_TEXTURE_2D, id );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
			glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, image.getWidth(), image.getHeight(), 0, GL_RGBA, GL_UNSIGNED_BYTE, image.getPixels() );
			glBindTexture( GL_TEXTURE_2D, 0 );

			result = true;
		}

		return result;
	}

	void TextureAsset::unload()
	{
		if( id )
			glDeleteTextures( 1, &id );
		id = 0;
	}

	void TextureAsset::bind()
	{
		glBindTexture( GL_TEXTURE_2D, id );
	}
}