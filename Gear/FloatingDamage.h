#pragma once
#include "BaseIncludes.h"
#include "FontAsset.h"
#include "ShaderProgram.h"
#define RANDOM_NUMBER_TOTAL 100
#define FLOATING_MAX_NUMBER 10

struct DamageValue {
	glm::vec3 position;
	float size;
	float alphaVal;
	int fontType;
	//float charHeight;
};
struct fDamageVertex
{
	glm::vec3 pos;
	glm::vec2 attributes; //X = Size, Y=Alpha
	glm::vec4 UV;
	int width;
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

public:
	FloatingDamage();
	~FloatingDamage();

	void init(int screenWidth, int screenHeight);
	void setFont(Importer::FontAsset* font);

	void updateBuffer();
	void print(const std::string &s, const float &baseX, const float &baseY, const float &scale, const glm::vec4 &color);

	void draw();
};

