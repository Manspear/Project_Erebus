#pragma once

#include "BaseIncludes.h"
#include "Assets.h"
#include "TextureAsset.h"
#include "Importer.h"

namespace Importer
{
	class ParticleImport: public Asset
	{
	public:

		IMPORTER_API ParticleImport();
		IMPORTER_API virtual ~ParticleImport();

		IMPORTER_API virtual bool load(std::string path, Assets* assets) override;
		IMPORTER_API virtual void unload() override;

	private:

		numParticleSystems numParticleSys;
		particle* part;
		TextureAsset* texAsset;
		void* dataptr;

	};

}