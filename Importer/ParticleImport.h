#pragma once
#include "Importer.h"

namespace Importer
{
	class ParticleImport
	{

	public:
		IMPORTER_API ParticleImport();
		IMPORTER_API ~ParticleImport();
		IMPORTER_API bool load(std::string path);
		IMPORTER_API void unload();

	private:
		Particle* p;

	};
}
