#include "ParticleImport.h"

Importer::ParticleImport::ParticleImport()
{

}

Importer::ParticleImport::~ParticleImport()
{
	unload();
}

IMPORTER_API bool Importer::ParticleImport::load(std::string path)
{
	//FILE* file;
	//file = fopen("particle.dp", "rb");

	//if (file)
	//{
	//	fread(p, sizeof(Particle), 1, file);

	//	fclose(file);
	//}

	return true;

}

IMPORTER_API void Importer::ParticleImport::unload()
{
	//free(p);
	//p = nullptr;
}


