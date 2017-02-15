#pragma once
#include"BaseIncludes.h"
#include"AGI.h"
class AStarNode
{
public:
	AGI_API AStarNode()
	{
		parentNode = nullptr;

		surroundNodes = nullptr;
	};

	AGI_API AStarNode(AStarNode * parentNode,int x,int y,float inG,float inH)
	{
		xyPos = glm::vec2(x, y);

		parentNode = parentNode;

		surroundNodes = nullptr;

		G = inG;
		H = inH;
	};

	AGI_API AStarNode(AStarNode * parentNode,int x, int y)
	{
		xyPos = glm::vec2(x,y);
		parentNode = parentNode;

		surroundNodes = nullptr;

		G = 0;
	};

	AGI_API ~AStarNode()
	{

	};

	AGI_API AStarNode * getToTarget(InfluenceNode *** fromMap, int targetX, int targetY)
	{
		if (xyPos.x == targetX && xyPos.y == targetY)
		{
			return this;
		}
		if (surroundNodes == nullptr)
		{
			createSurroundingNodes(targetX,targetY);
			return nullptr;
		}

		float lowestF = INFINITE;
		int lowPos = -1;
		for (int n = 0; n < 8; n++)
		{
			
			if (fromMap[(int)surroundNodes[n].getPos().x][(int)surroundNodes[n].getPos().y] != nullptr)
			{
				float inValue = surroundNodes[n].getFValue();
				if (lowestF > inValue)
				{
					lowestF = inValue;
					lowPos = n;
				}
			}

		}

		return surroundNodes[lowPos].getToTarget(fromMap,targetX, targetY);

	}

	AGI_API  AStarNode * getParent()
	{
		return parentNode;
	}

	AGI_API glm::vec2 getPos()
	{
		return xyPos;
	}

	AGI_API void createSurroundingNodes(int targetX, int targetY)
	{
		surroundNodes = new AStarNode[8];

		//TOP
		surroundNodes[0] = AStarNode(this,xyPos.x-1, xyPos.y-1,G+14, calculateH(xyPos.x - 1, xyPos.y - 1, targetX, targetY));
		surroundNodes[1] = AStarNode(this, xyPos.x , xyPos.y - 1, G + 10, calculateH(xyPos.x, xyPos.y - 1, targetX, targetY));
		surroundNodes[2] = AStarNode(this, xyPos.x + 1, xyPos.y - 1, G + 14, calculateH(xyPos.x + 1, xyPos.y - 1, targetX, targetY));

		// MID
		surroundNodes[3] = AStarNode(this, xyPos.x - 1, xyPos.y , G + 10, calculateH(xyPos.x - 1, xyPos.y, targetX, targetY));
		surroundNodes[4] = AStarNode(this, xyPos.x + 1, xyPos.y , G + 10, calculateH(xyPos.x + 1, xyPos.y, targetX, targetY));

		//LOW
		surroundNodes[5] = AStarNode(this, xyPos.x - 1, xyPos.y + 1, G + 14, calculateH(xyPos.x - 1, xyPos.y + 1, targetX, targetY));
		surroundNodes[6] = AStarNode(this, xyPos.x, xyPos.y + 1, G + 10, calculateH(xyPos.x , xyPos.y + 1, targetX, targetY));
		surroundNodes[7] = AStarNode(this, xyPos.x + 1, xyPos.y + 1, G + 14, calculateH(xyPos.x + 1, xyPos.y + 1, targetX, targetY));

	}

	AGI_API float calculateH(int fromX,int fromY,int targetX,int targetY)
	{
		return (glm::abs(fromX - targetX) * 10) + (glm::abs(fromY - targetY) * 10);
	}

	AGI_API float getFValue()
	{
		return G + H;
	};

	AGI_API float getGValue()
	{
		return G;
	};


private:
	
	AStarNode * parentNode;

	AStarNode * surroundNodes;

	//X and Y pos on the influenceMap
	glm::vec2 xyPos;

	// The movement cost of arriving to the node
	float G;

	//Estimated distance to the target
	float H;

};