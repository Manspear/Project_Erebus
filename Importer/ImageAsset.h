#pragma once

#include "BaseIncludes.h"
#include "libpng\png.h"
#include "Assets.h"

#define IMAGE_BPP 4 // 4 bytes per pixel

#define DDS_MAGIC_NUMBER 0x20534444 // 'DDS ' in hex
#define ID_DXT1 0x31545844
#define ID_DXT3 0x33545844
#define ID_DXT5 0x35545844

struct DDS_PIXELFORMAT {
	DWORD dwSize;
	DWORD dwFlags;
	DWORD dwFourCC;
	DWORD dwRGBBitCount;
	DWORD dwRBitMask;
	DWORD dwGBitMask;
	DWORD dwBBitMask;
	DWORD dwABitMask;
};

struct DDS_HEADER {
	DWORD           dwSize;
	DWORD           dwFlags;
	DWORD           dwHeight;
	DWORD           dwWidth;
	DWORD           dwPitchOrLinearSize;
	DWORD           dwDepth;
	DWORD           dwMipMapCount;
	DWORD           dwReserved1[11];
	DDS_PIXELFORMAT ddspf;
	DWORD           dwCaps;
	DWORD           dwCaps2;
	DWORD           dwCaps3;
	DWORD           dwCaps4;
	DWORD           dwReserved2;
};

namespace Importer
{
	class ImageAsset : public Asset
	{
	public:
		typedef union
		{
			uint32_t value;
			struct
			{
				uint8_t red;
				uint8_t green;
				uint8_t blue;
				uint8_t alpha;
			};
		} Pixel;

		IMPORTER_API ImageAsset();
		IMPORTER_API virtual ~ImageAsset();

		IMPORTER_API virtual bool load( std::string path, Assets* assets ) override;
		IMPORTER_API virtual void unload() override;

		IMPORTER_API uint8_t* getPixels() const;
		IMPORTER_API Pixel getPixelValue( int x, int y ) const;
		IMPORTER_API int getWidth() const;
		IMPORTER_API int getHeight() const;
		IMPORTER_API int getSize() const;
		IMPORTER_API GLenum getFormat() const;

	private:
		IMPORTER_API bool loadPNG( FILE* file );
		IMPORTER_API bool loadDDS( FILE* file );

		uint8_t* pixels;
		int width, height, size;
		GLenum format;
	};
}