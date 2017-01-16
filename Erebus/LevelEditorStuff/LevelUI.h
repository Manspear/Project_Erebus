#pragma once
#include <AntTweakBar.h>
#include <BaseIncludes.h>
#include <memory>

#define USE_ANT
struct uiVec3 {
	float x, y, z;
};

class TweakBar {
private:
	
	std::stringstream sStream;
	glm::vec2 posVal, sizeVal;
	glm::vec4 colorVal;
	float alphaVal;
	std::string posStr, sizeStr, colorStr, alphaStr, barName;
	const std::string resizeStr = " resizable=false"
					, moveableStr = " movable=false"
					, refreshStr = " refresh=1.5";
	TwBar* bar;

	std::string floatToString(float& val, std::string type) {
		std::stringstream ss;
		ss << type << val;
		return ss.str();
	}

	std::string vec2ToString(glm::vec2& val, std::string type) {
		std::stringstream ss;
		ss << type << "'" << val.x << " " << val.y << "'";
		return ss.str();
	}

	std::string vec3ToString(glm::vec3& val, std::string type) {
		std::stringstream ss;
		ss << type << "'" << val.x << " " << val.y << " " << val.z << "'";
		return ss.str();
	}

	void setupTweakBar() {
		this->bar  = TwNewBar(barName.c_str());
		posStr = this->vec2ToString(posVal, " position=");
		sizeStr = this->vec2ToString(sizeVal, " size=");
		colorStr = this->vec3ToString(glm::vec3(colorVal), " color=");
		alphaStr = this->floatToString(alphaVal, " alpha=");
		
		sStream << barName << posStr << sizeStr << colorStr <<
			(alphaVal > 0 ? alphaStr : "")
			<< refreshStr << resizeStr << moveableStr;

		TwDefine(sStream.str().c_str());
		sStream.clear();
	}

public:
	static const float getMainThickness() {
		return .125f;
	}
	//Pos in screen space, size of the window, color defines 3 color, and alpha in w if desired
	TweakBar(glm::vec2 pos, glm::vec2 size, glm::vec4 color, std::string title="UNIQUE_NAME") {
		posVal = pos;
		sizeVal = size;
		colorVal = color;
		alphaVal = color.w; 
		barName = title;
		setupTweakBar();
		
	}

	TweakBar() {}

	TwBar* getBar() {
		return this->bar;
	}

	void deleteTweakBar() {
		TwDeleteBar(this->bar);
	}
};

class LevelUI
{
private:
	TweakBar* bars[3];
	std::string vec2ToString(glm::vec2& val, std::string type = "");
	std::string vec3ToString(glm::vec3& val, std::string type = "");
public:


	TwType TW_TYPE_VECTOR3F;
	LevelUI(GLFWwindow* window);
	~LevelUI();
	void Draw();
};

