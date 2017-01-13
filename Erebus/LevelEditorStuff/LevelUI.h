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

public:
	float radius;

	TwBar* getMainBar();
	TwType TW_TYPE_VECTOR3F;
	LevelUI(GLFWwindow* window, LevelActorFactory*);
	~LevelUI();
	void Draw();
};

