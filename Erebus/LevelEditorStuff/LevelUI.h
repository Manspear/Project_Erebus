#pragma once
#include <AntTweakBar.h>
#include <BaseIncludes.h>
#include <memory>

#define USE_ANT
struct uiVec3 {
	float x, y, z;
};

class LevelUI
{
private:

	TwBar* mainBar;
	
public:

	TwBar* getMainBar();
	TwType TW_TYPE_VECTOR3F;
	LevelUI(GLFWwindow* window);
	~LevelUI();
	void Draw();
};

