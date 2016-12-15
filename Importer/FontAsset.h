#pragma once

#include "Assets.h"
#include "TextureAsset.h"

#define FONT_RANGE_START 32 // ASCII space
#define FONT_RANGE_END 127 // last ascii character
#define FONT_RANGE (FONT_RANGE_END-FONT_RANGE_START)

namespace Importer
{
	struct FontInfo
	{
		uint8_t size;
		uint8_t widths[FONT_RANGE];
		uint16_t xoffsets[FONT_RANGE];
		uint16_t yoffsets[FONT_RANGE];
	};

	class FontAsset : public Asset
	{
	public:
		IMPORTER_API FontAsset();
		IMPORTER_API ~FontAsset();

		IMPORTER_API bool load( std::string path, Assets* assets ) override;
		IMPORTER_API void unload() override;

		IMPORTER_API int getWidth( char c );
		IMPORTER_API glm::vec4 getUV( char c );
		IMPORTER_API glm::vec2 getOffset( char c );

		IMPORTER_API FontInfo* getInfo();
		IMPORTER_API TextureAsset* getTexture();

	private:
		FontInfo info;
		TextureAsset* texture;
	};
}