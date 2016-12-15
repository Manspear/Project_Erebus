#pragma once

#include "BaseIncludes.h"
#include "libpng/png.h"
#include "Assets.h"
#include "ImageAsset.h"

namespace Importer
{
	class TextureAsset : public Asset
	{
	public:
		IMPORTER_API TextureAsset();
		IMPORTER_API virtual ~TextureAsset();

		IMPORTER_API virtual bool load( std::string path, Assets* assets ) override;
		IMPORTER_API virtual void unload() override;

		IMPORTER_API void bind( GLenum position = GL_TEXTURE0 );

		IMPORTER_API int getWidth();
		IMPORTER_API int getHeight();

	private:
		GLuint id;
		int width, height;
	};
}