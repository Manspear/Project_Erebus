#include "TextureAsset.h"

namespace Importer
{
	TextureAsset::TextureAsset()
		: id( 0 ), width( 0 ), height( 0 ), hasImage( false ), minFilter( GL_LINEAR ), magFilter( GL_LINEAR )
	{
	}

	TextureAsset::~TextureAsset()
	{
		unload();
	}

	bool TextureAsset::load( std::string path, Assets* assets )
	{
		/*ImageAsset image;
		if( image.load( path, assets ) )
		{
			glGenTextures( 1, &id );
			glBindTexture( GL_TEXTURE_2D, id );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
			if( image.getFormat() == GL_RGBA )
				glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, image.getWidth(), image.getHeight(), 0, image.getFormat(), GL_UNSIGNED_BYTE, image.getPixels() );
			else
				glCompressedTexImage2D( GL_TEXTURE_2D, 0, image.getFormat(), image.getWidth(), image.getHeight(), 0, image.getSize(), image.getPixels() );
			glBindTexture( GL_TEXTURE_2D, 0 );

			width = image.getWidth();
			height = image.getHeight();
			result = true;
		}*/

		hasImage = image.load( path, assets );

		return hasImage;
	}

	void TextureAsset::unload()
	{
		if( hasImage )
		{
			image.unload();
			hasImage = false;
		}

		if( id )
			glDeleteTextures( 1, &id );
		id = 0;
	}

	void TextureAsset::upload()
	{
		if( hasImage )
		{
			glGenTextures( 1, &id );
			glBindTexture( GL_TEXTURE_2D, id );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, minFilter );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, magFilter );
			if( image.getFormat() == GL_RGBA )
				glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, image.getWidth(), image.getHeight(), 0, image.getFormat(), GL_UNSIGNED_BYTE, image.getPixels() );
			else
				glCompressedTexImage2D( GL_TEXTURE_2D, 0, image.getFormat(), image.getWidth(), image.getHeight(), 0, image.getSize(), image.getPixels() );
			glBindTexture( GL_TEXTURE_2D, 0 );

			width = image.getWidth();
			height = image.getHeight();

			image.unload();
			hasImage = false;
		}
	}

	void TextureAsset::bind( GLenum position )
	{
		glActiveTexture( position );
		glBindTexture( GL_TEXTURE_2D, id );
	}

	void TextureAsset::setMinimizeFilter(GLenum filter)
	{
		minFilter = filter;
	}

	void TextureAsset::setMagnifyFilter(GLenum filter)
	{
		magFilter = filter;
	}

	int TextureAsset::getWidth()
	{
		return width;
	}

	int TextureAsset::getHeight()
	{
		return height;
	}
}