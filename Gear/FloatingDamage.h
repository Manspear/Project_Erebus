#pragma once
#include "BaseIncludes.h"
#include "FontAsset.h"
#include "ShaderProgram.h"
#include "Camera.h"
#define RANDOM_NUMBER_TOTAL 1000
#define FLOATING_MAX_NUMBER 10

struct DamageValue {
	glm::vec3 position;
	float damage;
	float size;
	float alphaVal;
	int damageType;
	//float charHeight;
};
struct fDamageVertex
{
	glm::vec3 pos;
	//glm::vec3 attributes; //X = Size, Y=Alpha, Z = OffsetX
	glm::vec4 UV;
	glm::vec4 color;
	glm::vec4 attributes;

};
struct fDamageSomeData
{
	fDamageVertex data;
	float lifetime;
};
struct fDamageLine
{
	fDamageVertex characters[FLOATING_MAX_NUMBER];
	glm::vec4 color;
	float scale;
	size_t numberOfCharacters;
};

enum eDamageTypes {
	FIRE,
	COLD,
	GRASS,
	NUM_DAMAGE_TYPES
};


class FloatingDamage
{
private:
	float xOffsetRandom[RANDOM_NUMBER_TOTAL];
	float yOffsetRandom[RANDOM_NUMBER_TOTAL];
	const float charWidth = 1;
	int currentOffset;

	Importer::FontAsset* font;
	ShaderProgram* shader;
	GLuint heightLoc, colorLoc, projectionLoc, viewLoc;
	GLuint VAO, VBO;

	std::vector<fDamageLine> lines;
	std::vector<fDamageLine> bufferedLines;
	std::vector<DamageValue> dataToSend[NUM_DAMAGE_TYPES];
	std::vector<fDamageSomeData> dataToSendYeah;
	std::vector<float> lifeTimes;

	DamageValue*dataToSend2[NUM_DAMAGE_TYPES];
	fDamageVertex printDamage(const std::string &s, const float &scale, const glm::vec4 &color, glm::vec3 worldPos);
	const float upSpeed = 1.5f;
	glm::vec4 diffColors[eDamageTypes::NUM_DAMAGE_TYPES];
	const float baseDamage = 30.f;
	const float maxScale = .25f; // minscale + maxScale = TotalScale
	const float minScale = .3f;
	const float maxLifeTime = 2.f;
	const float baseAlpha = 1.f;

public:
	GEAR_API FloatingDamage();
	GEAR_API ~FloatingDamage();

	GEAR_API void Update(const float& dt);

	GEAR_API void init(int screenWidth, int screenHeight);
	GEAR_API void setFont(Importer::FontAsset* font);

	GEAR_API void updateBuffer();
	GEAR_API void print(const std::string &s, const float &scale, const glm::vec4 &color, glm::vec3 worldPos);
	GEAR_API void addDamage(float damage, int damageType, glm::vec3 positionOverHead);

	GEAR_API void draw(Camera* camera);
};

