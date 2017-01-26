#pragma once
#include "BaseIncludes.h"
#include "TextureAsset.h"

struct Partikel
{
	glm::vec3 direction;
	float lifeSpan;
};

struct Color
{
	GLfloat r, g, b;
};

struct Emitter
{
	int numOfParticles;
	float posX, posY, posZ;
	float lifeTime;
	float speed;
	float particleRate;
	int partPerRate;
	float gravity;
	float focusSpread;
	float particleSize;
	float dirX, dirY, dirZ;
	char textureName[32];
};

namespace Gear
{
	class ParticleEmitter
	{

	public:
		GEAR_API ParticleEmitter();
		GEAR_API ~ParticleEmitter();
		GEAR_API void emitterInit(Emitter emitter, Importer::Assets* assets);

		GEAR_API void update(const float & dt);
		GEAR_API void explode();
		GEAR_API GLuint getPartVertexBuffer();
		GEAR_API void setEmitterPos(glm::vec3 pos);
		GEAR_API void setDirection(glm::vec3 dir);
		GEAR_API int getNrOfActiveParticles();
		GEAR_API Partikel* getThePartikels();
		GEAR_API glm::vec3* getPositions();
		GEAR_API void setParticlePosition(glm::vec3* pos);
		GEAR_API void setColor(float r, float g, float b);
		GEAR_API Color getColor() const;
		GEAR_API Importer::TextureAsset* getTexture();
		GEAR_API void resetEmitter();

		Importer::TextureAsset* textureAssetParticles;
		bool isActive;
		float particleSize;
		glm::vec3 position;
		glm::vec3 localPos;
		int maxParticles;
		float lifeTime;
		float partSpeed;
		float particleRate;
		int partPerRate;
		float focus;
		glm::vec3 direction;
		float gravityFactor;
		bool alive;
	private:
		float timer;
		Partikel* allParticles;
		glm::vec3* particlePos;
		int nrOfActiveParticles;
		GLuint particleVertexBuffer;
		
		Color color;

	};
}


