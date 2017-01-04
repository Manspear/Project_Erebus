#include "ParticleImport.h"

Importer::ParticleImport::ParticleImport()
	:dataptr(nullptr), texAsset(nullptr)
{
}

Importer::ParticleImport::~ParticleImport()
{
	unload();
}

IMPORTER_API bool Importer::ParticleImport::load(std::string path, Assets * assets)
{
	bool result = false;

	FILE* file;
	fopen_s(&file, path.c_str(), "rb");
	
	if (file)
	{
		int datasize;
		fread(&datasize, sizeof(int), 1, file);

		fread(&numParticleSys, sizeof(numParticleSystems), 1, file);

		dataptr = malloc(datasize + sizeof(GLuint)*numParticleSys.numPS);
		fread(dataptr, 1, datasize, file);

		fclose(file);

		char* ptr = (char*)dataptr;

		part = (particle*)ptr;
		ptr += sizeof(particle)*numParticleSys.numPS;
		
		texAsset = assets->load<TextureAsset>("Textures/" + std::string(numParticleSys.textureName));

		if (texAsset)
		{
			result = true;
		}

	}

	return result;
}

IMPORTER_API void Importer::ParticleImport::unload()
{
	free(dataptr);
	dataptr = nullptr;

}
