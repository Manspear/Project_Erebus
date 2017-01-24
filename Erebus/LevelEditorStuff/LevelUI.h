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
			<< refreshStr << resizeStr << moveableStr << " valueswidth=fit";

		TwDefine(sStream.str().c_str());
		sStream.clear();
	}

public:
	static const float getMainThickness() {
		return .175f;
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

	glm::vec2 getPos() {
		return posVal;
	}

	glm::vec2 getSize() {
		return sizeVal;
	}

	const std::string& getName() const {
		return barName;
	}
};

class LevelUI
{
private:
	TweakBar* bars[5];
	void initBars();
	
public:
	typedef enum{SELECT_COMPONENT, TRANSFORM, MODEL, POINT_LIGHT, NUM_DIFF_COMPONENTS} DiffComponents;
	static const char *componentLinker[];
	TwEnumVal *componentsEVs;
	TwType componentType;

	static const char* actorBarName;
	static const char* worldBarName;
	static const char* assetBarName;
	static const char* assetContextBarName;
	static const char* actionBarName;
	static TwType vector3Tw;
	static TwType componentTw;
	static std::string vec2ToString(glm::vec2& val, std::string type = "");
	static std::string vec3ToString(glm::vec3& val, std::string type = "");

	void reset(GLFWwindow* window);
#pragma region defines
	static TwType TW_TYPE_COMPONENTS() {

		TwEnumVal componentsEVs[] = { 
			{ DiffComponents::SELECT_COMPONENT, "Select Component" },
			{ DiffComponents::TRANSFORM, "Transform"},
			{ DiffComponents::MODEL, "Model" } ,
			{ DiffComponents::POINT_LIGHT, "Point Light"} 
		};

		if (componentTw == TW_TYPE_FLOAT) {
			return componentTw = TwDefineEnum("SeasonType", componentsEVs, DiffComponents::NUM_DIFF_COMPONENTS);
		}
		return componentTw;
	}

	static TwType TW_TYPE_VECTOR3F() {
		TwStructMember vector3fMember[] = {
			{ "x", TW_TYPE_FLOAT, offsetof(uiVec3, x), "" },
			{ "y", TW_TYPE_FLOAT, offsetof(uiVec3, y), "" },
			{ "z", TW_TYPE_FLOAT, offsetof(uiVec3, z), "" }
		};
		if (vector3Tw == TW_TYPE_FLOAT) {
			return vector3Tw = TwDefineStruct("Vector3f", vector3fMember, 3, sizeof(uiVec3), NULL, NULL);
		}
		return vector3Tw;
	}
#pragma endregion
	LevelUI(GLFWwindow* window);
	~LevelUI();
	void Draw();
	TwBar* getMainBar();
};

