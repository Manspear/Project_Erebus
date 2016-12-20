#pragma once

#ifdef AGI_BEHAVE
#define AGI_API __declspec(dllexport)   
#else  
#define AGI_API __declspec(dllexport)   
#endif

#include "Debug.h"
#include"RadiusInfluenceNode.h"
#include"InfluenceNode.h"
namespace AGI
{
	class AGIEngine
	{

	public:
		AGI_API AGIEngine()
		{
			imWidth = 0;
			imHeight = 0;
			resolution = 0.04f;

			influenceMap = nullptr;
		}

		AGI_API ~AGIEngine()
		{
			for (int n = 0; n < imWidth; n++)
			{
				if (influenceMap[n])
					delete[] influenceMap[n];
			}
			delete[]influenceMap;

			//delete [] influenceMap;
			//if (!radiusInfluenceNodes)
			//	delete radiusInfluenceNodes;
		}

		AGI_API glm::vec3 dirToTarget(glm::vec3 pos, glm::vec3 target)
		{
			return pos - target;
		}

		AGI_API void setTarget(glm::vec3 pos)
		{
		//	radiusInfluenceNodes[0].setPos(pos);
		}

		AGI_API void addNewInfluenceNode(glm::vec3 pos, float influence)
		{

		}
		AGI_API void drawDebug(glm::vec3 pos)
		{
		//	debugRef->drawSphere(glm::vec3(pos.x, 9, pos.z), 3, glm::vec3(3 * 0.02, 2* 0.02, 0.4));
		}
		AGI_API void drawDebug()
		{
			/*for (int w = 0; w < imWidth; w ++)
			{
				for (int h = 0; h < imHeight; h ++)
				{
					int tempStrength = influenceMap[w][h].getStrength();
					debugRef->drawSphere(glm::vec3(influenceMap[w][h].getPos().x, 0, influenceMap[w][h].getPos().y), 3,glm::vec3(tempStrength * 0.02, tempStrength* 0.02, 0.4));
				}
			}*/
			//debugRef->drawSphere(glm::vec3(influenceMap[0][0].pos.x, 0, influenceMap[0][0].pos.y), 3);
		}
		//Radius Kind

		AGI_API void addDebug(Debug * bugg)
		{
			debugRef = bugg;
		}
		/*
		AGI_API glm::vec3 calculateRadiusPath(glm::vec3 enemyPos)
		{
			glm::vec3 outDir = glm::vec3(0, 0, 0);
			float * inRange = new float[nrOfNodes];
			float dubby = 0;
			for (int n = 0; n < nrOfNodes; n++)
			{
				if (radiusInfluenceNodes[n].withinRange(enemyPos))
				{
					inRange[n] = 1.000f - (radiusInfluenceNodes[n].getDistance(enemyPos) / radiusInfluenceNodes[n].getRadius());
					dubby += inRange[n];
				
				}
			} 

			for (int n = 0; n < nrOfNodes; n++)
			{
				if (outDir == glm::vec3(0,0,0))
				{
					outDir = radiusInfluenceNodes[n].getDir(enemyPos);
				}
				else
				{
					outDir += radiusInfluenceNodes[n].getDir(enemyPos) * (inRange[n]/ dubby);
				}
			}

			delete[]inRange;

			return outDir;
		}
		*/
		
		//// CLASSIC INFLUENCE MAP
		AGI_API void createInfluenceMap(int width,int height)
		{
			this->mapWidth = width;
			this->mapHeight = height;
			this->imWidth = width * resolution;
			this->imHeight = height* resolution;

			influenceMap = new InfluenceNode*[this->imWidth];

			for( int x=0; x<imWidth; x++ )
			{
				influenceMap[x] = new InfluenceNode[this->imHeight];
				for( int y=0; y<imHeight; y++ )
				{
					float w = (float)x / resolution;
					float h = (float)y / resolution;
					influenceMap[x][y] = InfluenceNode( glm::vec2( w, h ), 0 );
				}
			}
		}

		AGI_API void resetIM()
		{
			for (int w = 0; w < imWidth; w ++)
			{
				for (int h = 0; h < imHeight; h ++)
				{
					influenceMap[w][h].setStrength(0);
				}
			}
		}

		AGI_API void addInfluencePoint(glm::vec3 inPos,int inStr)
		{
			if(inStr != -1)
				inStr = inStr*(resolution * 20);
			int str = inStr;

			int x = round(((inPos.x / mapWidth)*imWidth));
			int y = round(((inPos.z / mapHeight)*imHeight));

			if (x >= 0 && x < imWidth)
				if (y  >= 0 && y  < imHeight)
					influenceMap[x][y].setStrength(str);

			
			while (inStr>1)
			{
				for (int strX = -inStr; strX < inStr; strX++)
				{
					if(x + strX >=0 && x + strX< imWidth)
						for (int strY = -inStr; strY < inStr; strY++)
						{
							if (y + strY >= 0 && y + strY < imHeight)
							{
								float tempStrength = (float)((float)str / (float)inStr);// / (resolution));
								tempStrength = tempStrength / resolution;
								influenceMap[x + strX][y + strY].setStrength(tempStrength);
							}
						}
				}
				inStr--;
			}
		}

		AGI_API glm::vec3 calculateIMPath(glm::vec3 enemyPos)
		{
			glm::vec3 returnPos = glm::vec3(0, -1, 0);

			int x = round(((enemyPos.x / mapWidth)*imWidth));
			int y = round(((enemyPos.z / mapHeight)*imHeight));

		//	if ((x >= 0 && x < imWidth) && (y >= 0 && y < imHeight))
			//	debugRef->drawSphere(glm::vec3(influenceMap[x][y].getPos().x, 1, influenceMap[x][y].getPos().y), 3, glm::vec3(1, 1, 0.4));

			int mostPosetive = 0;
			int mpX = -1;
			int mpY = -1;

			for (int strX = -1; strX < 1; strX++)
			{
				if (x + strX >= 0 && x + strX< imWidth)
					for (int strY = -1; strY < 1; strY++)
					{
						if (y + strY >= 0 && y + strY < imHeight)
						{
							if (mostPosetive < influenceMap[x + strX][y + strY].getStrength())
							{
								mpX = x + strX;
								mpY = y + strY;
								mostPosetive = influenceMap[x + strX][y + strY].getStrength();
							}
						}
					}
			}

			if (mostPosetive > 0)
			{

				float dirX = influenceMap[mpX][mpY].getPos().x;// -enemyPos.x;
				float dirZ = influenceMap[mpX][mpY].getPos().y;// -enemyPos.z;

				returnPos = glm::vec3(dirX,0, dirZ);
			}

			return returnPos;
		}


	private:
		

		InfluenceNode ** influenceMap;
		int imWidth, imHeight;
		int mapWidth,mapHeight;

		
		float resolution;//Resolution between 0.0 - 1.0, at 1.0 we will create a influenceNode for ever tile of the map

		//RadiusInfluenceNode * radiusInfluenceNodes;
		int maxAmountNodes = 10;
		int nrOfNodes = 1;
		Debug* debugRef;
	};
}