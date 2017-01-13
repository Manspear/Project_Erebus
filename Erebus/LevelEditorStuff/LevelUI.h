#pragma once
#include <AntTweakBar.h>
#include <BaseIncludes.h>
#include <memory>
#include"LevelActorFactory.h"

#define USE_ANT
struct uiVec3 {
	float x, y, z;
};

class LevelUI
{
private:
	LevelActorFactory * factory;
	TwBar* mainBar;

	TwBar* bar2;
	TwBar* bar3;
	std::string vec2ToString(glm::vec2& val, std::string type = "");
	std::string vec3ToString(glm::vec3& val, std::string type = "");
public:
	float radius;

	TwBar* getMainBar();

	TwType TW_TYPE_VECTOR3F;
	LevelUI(GLFWwindow* window, LevelActorFactory*);
	~LevelUI();
	void Draw();
};

