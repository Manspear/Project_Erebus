#pragma once
#include"BaseIncludes.h"
#include"AGI.h"
class InfluenceNode
{
public:
	AGI_API InfluenceNode()
	{
		pos = glm::vec2(INFINITE, INFINITE);
		strength = 1;
		gCost = 0;
		hCost = 0;
		parentNode = nullptr;
		occupied = false;
	};

	AGI_API InfluenceNode(InfluenceNode & copyFrom,int x,int y)
	{
		pos = glm::vec2(x, y);
		strength = copyFrom.getStrength();
		gCost = 0;
		hCost = 0;
		parentNode = nullptr;
		occupied = false;
	};

	AGI_API InfluenceNode(glm::vec2 inPos, float inStrength)
	{
		pos = inPos;
		strength = inStrength;

		occupied = false;

		gCost = 0;
		hCost = 0;
		parentNode = nullptr;
	};

	AGI_API ~InfluenceNode()
	{
		//delete parentNode;
	};

	AGI_API glm::vec2 getPos()
	{
		return pos;
	}

	AGI_API float getStrength()
	{
		return strength;
	}

	AGI_API void setPos(glm::vec2 inPos)
	{
		pos = inPos;
	}

	AGI_API void setStrength(const float &inStrength)
	{
		if (inStrength <=  0)
			strength = inStrength;
		else
			strength = strength + inStrength;
	}

	AGI_API void setParent(InfluenceNode* parent)
	{
		this->parentNode = parent;
	}
	 
	AGI_API InfluenceNode * getParent()
	{
		return parentNode;
	}

	AGI_API void setHCost(int inCost)
	{
		hCost = inCost;
	}

	AGI_API int getHCost()
	{
		return hCost;
	}

	AGI_API void setGCost(int inCost)
	{
		gCost = inCost;
	}

	AGI_API int getGCost()
	{
		return gCost;
	}

	AGI_API int getFCost()
	{
		return gCost + hCost;
	}

	AGI_API bool checkIfOccupied()
	{
		return occupied;
	}

	AGI_API void setIfOccupied(bool inBool)
	{
		occupied = inBool;
	}

private:
	InfluenceNode * parentNode;

	int gCost;
	int hCost;

	bool occupied;

	glm::vec2 pos;
	float strength;
};