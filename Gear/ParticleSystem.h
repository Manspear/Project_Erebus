#pragma once
#include "BaseIncludes.h"
#include "TextureAsset.h"
#include "ParticleImport.h"

const float MAX_LIFESPAN = 10.0;

struct Partikel
{
	glm::vec3 direction;
	float lifeSpan;
};

struct Color
{
	GLfloat r, g, b;
};

struct Particle
{
	int numOfParticles;
	float lifeTime;
	float speed;
	float emitPerSecond;
	int nrOfParticlesPerEmit;
	/*float dirX, dirY, dirZ;*/
	char textureName[32];
};

namespace Gear
{
	class ParticleSystem
	{

	public:
		GEAR_API ParticleSystem();
		GEAR_API ParticleSystem(int n, float life, float speed, float rate, int number, float focusSpread);
		GEAR_API ParticleSystem(std::string path, Importer::Assets* assets, float focusSpread);
		GEAR_API ~ParticleSystem();

		GEAR_API void update(const float &dt);
		GEAR_API void explode();
		GEAR_API GLuint getPartVertexBuffer();
		GEAR_API void setEmmiterPos(glm::vec3 pos);
		GEAR_API void setDirection(float r, float g, float b);
		GEAR_API int getNrOfActiveParticles();
		GEAR_API void activate();
		GEAR_API void deActivate();
		GEAR_API Partikel* getThePartikels();
		GEAR_API glm::vec3* getPositions();
		GEAR_API void setColor(float r, float g, float b);
		GEAR_API Color getColor() const;
		GEAR_API void setTextrue(Importer::TextureAsset* tAParticles);
		GEAR_API Importer::TextureAsset* getTexture();
		bool isActive;
		bool alive;
	private:
		GLuint particleVertexBuffer;
		glm::vec3 position;
		glm::vec3 direction;
		int maxParticles;
		int nrOfActiveParticles;
		Partikel* allParticles;
		glm::vec3* particlePos;
		float lifeTime;
		float partSpeed;
		float particleRate;
		float focus;
		int partPerRate;
		float timer;
		float gravityFactor;
		Color color;
		Importer::TextureAsset* textureAssetParticles;
	};
}