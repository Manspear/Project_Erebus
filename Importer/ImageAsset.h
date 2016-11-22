#pragma once

#include "BaseIncludes.h"
#include "libpng\png.h"
#include "Assets.h"

#define IMAGE_BPP 4 // 4 bytes per pixel


namespace Importer
{
	class ImageAsset : public Asset
	{
	public:
		struct RGBPoint
		{
			__int8 red;
			__int8 green;
			__int8 blue;
			__int8 alpha;
		};

		IMPORTER_API ImageAsset();
		IMPORTER_API virtual ~ImageAsset();

		IMPORTER_API virtual bool load( std::string path, Assets* assets ) override;
		IMPORTER_API virtual void unload() override;

		uint8_t* getPixels() const;
		uint8_t getPixelValue( int x, int y ) const;
		int getWidth() const;
		int getHeight() const;

	private:
		uint8_t* pixels;
		int width, height;
	};
}