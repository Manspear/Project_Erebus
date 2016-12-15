#include "ImageAsset.h"

namespace Importer
{
	ImageAsset::ImageAsset()
		: pixels( nullptr ), width( 0 ), height( 0 ), format( GL_RGBA )
	{
	}

	ImageAsset::~ImageAsset()
	{
		unload();
	}

	bool ImageAsset::load( std::string path, Assets* assets )
	{
		bool result = false;

		FILE* file = NULL;
		fopen_s( &file, path.c_str(), "rb" );
		if( file )
		{
			DWORD ddsMagicNumber;
			fread( &ddsMagicNumber, sizeof( ddsMagicNumber ), 1, file );


			if( ddsMagicNumber == DDS_MAGIC_NUMBER )
			{
				result = loadDDS( file );
			}
			else
			{
				fseek( file, 0, SEEK_SET );
				result = loadPNG( file );
			}

			fclose( file );
		}

		return result;
	}

	void ImageAsset::unload()
	{
		if( pixels )
			free( pixels );

		pixels = nullptr;
		width = height = 0;
	}

	uint8_t* ImageAsset::getPixels() const
	{
		return pixels;
	}

	ImageAsset::Pixel ImageAsset::getPixelValue( int x, int y ) const
	{
		return *((Pixel*)(pixels + y*width*IMAGE_BPP + x*IMAGE_BPP));
	}

	int ImageAsset::getWidth() const
	{
		return width;
	}

	int ImageAsset::getHeight() const
	{
		return height;
	}

	int ImageAsset::getSize() const
	{
		return size;
	}

	GLenum ImageAsset::getFormat() const
	{
		return format;
	}

	bool ImageAsset::loadPNG( FILE* file )
	{
		bool result = false;

		png_structp pPNG = png_create_read_struct( PNG_LIBPNG_VER_STRING, 0, 0, 0 );
		png_infop pInfo = png_create_info_struct( pPNG );
		if( !setjmp( png_jmpbuf( pPNG ) ) )
		{
			png_init_io( pPNG, file );

			png_read_info( pPNG, pInfo );
			png_uint_32 w, h;
			int bitDepth, colorType, interlaceType;

			png_get_IHDR( pPNG, pInfo, &w, &h, &bitDepth, &colorType, &interlaceType, NULL, NULL );
			png_set_strip_16( pPNG );

			if( colorType == PNG_COLOR_TYPE_PALETTE )
				png_set_palette_to_rgb( pPNG );
			if( colorType == PNG_COLOR_TYPE_GRAY && bitDepth < 8 )
				png_set_expand_gray_1_2_4_to_8( pPNG );
			if( colorType == PNG_COLOR_TYPE_RGB )
				png_set_add_alpha( pPNG, 0xFF, PNG_FILLER_AFTER );
			if( png_get_valid( pPNG, pInfo, PNG_INFO_tRNS ) )
				png_set_tRNS_to_alpha( pPNG );

			int bpp = 32 / bitDepth;
			width = w;
			height = h;
			size = width * height * IMAGE_BPP;
			format = GL_RGBA;

			png_bytep* rowPointers = (png_bytep*)malloc( height * sizeof( png_bytep ) );
			pixels = (uint8_t*)malloc( width * height * bpp );

			for( unsigned int i = 0; i < height; i++ )
				rowPointers[i] = (png_bytep)&pixels[width*bpp*i];

			png_read_image( pPNG, rowPointers );
			png_read_end( pPNG, pInfo );

			free( rowPointers );

			png_destroy_read_struct( &pPNG, &pInfo, 0 );

			result = true;
		}
		else
			png_destroy_read_struct( &pPNG, &pInfo, 0 );

		return result;
	}

	bool ImageAsset::loadDDS( FILE* file )
	{
		bool result = false;

		DDS_HEADER header;
		fread( &header, sizeof( DDS_HEADER ), 1, file );

		width = header.dwWidth;
		height = header.dwHeight;
		size = header.dwPitchOrLinearSize;

		switch( header.ddspf.dwFourCC )
		{
			default:
			case ID_DXT1: format = GL_COMPRESSED_RGBA_S3TC_DXT1_EXT; break;
			case ID_DXT3: format = GL_COMPRESSED_RGBA_S3TC_DXT3_EXT; break;
			case ID_DXT5: format = GL_COMPRESSED_RGBA_S3TC_DXT5_EXT; break;
		}

		// TODO: Check for DXT10 header and fail appropriately

		pixels = (uint8_t*)malloc( size );
		fread( pixels, sizeof( BYTE ), size, file );

		// NOTE: If we want mipmaps, cube maps, etc, we have to read them below

		result = true;

		return result;
	}
}