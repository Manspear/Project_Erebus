#pragma once

#ifdef AGI_BEHAVE
#define AGI_API __declspec(dllexport)   
#else  
#define AGI_API __declspec(dllexport)   
#endif

#include "Debug.h"
#include"RadiusInfluenceNode.h"
#include"InfluenceNode.h"

#include"HeightMap.h"
namespace AGI
{
	class AGIEngine
	{

	public:
		AGI_API AGIEngine()
		{
			imWidth = 0;
			imHeight = 0;
			resolution = 0.4f;  // Never above 1

			influenceMap = nullptr;
		}

		AGI_API ~AGIEngine()
		{
			for (int n = 0; n < imWidth; n++)
			{
				for (int i = 0; i < imHeight; i++)
				{
					if (influenceMap[n][i])
						delete influenceMap[n][i];
				}
				delete [] influenceMap[n];
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

		AGI_API glm::vec2 dirToTarget(glm::vec2 pos, glm::vec2 target)
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

		AGI_API bool checkIfTargetNodeIsOccupied(glm::vec3 inPos)
		{
			int x = round(((inPos.x / mapWidth)*imWidth));
			int y = round(((inPos.z / mapHeight)*imHeight));

			if (x >= 0 && x < imWidth)
				if (y >= 0 && y  < imHeight)
					if (influenceMap[x][y])
						if (influenceMap[x][y]->getStrength() == -1)
							return true;

			return false;
		}

		AGI_API void drawDebug(Importer::HeightMap * HP,glm::vec3 pos)
		{
			debugRef->drawSphere(glm::vec3(pos.x, HP->getPos(pos.x, pos.z), pos.z), 3, glm::vec3(3 * 0.02, 2* 0.02, 0.4));
		}

		AGI_API void drawDebug(Importer::HeightMap * HP)
		{
			for (int h = 0; h < imHeight; h++)
			{
				for (int w = 0; w < imWidth; w++)
				{

					if (influenceMap[w][h] != nullptr)
					{
						int tempStrength = influenceMap[w][h]->getStrength();
						if (tempStrength == 0)
							debugRef->drawSphere(glm::vec3(influenceMap[w][h]->getPos().x, HP->getPos(influenceMap[w][h]->getPos().x, influenceMap[w][h]->getPos().y), influenceMap[w][h]->getPos().y), 1, glm::vec3(0, 0, 0));
						else
							debugRef->drawSphere(glm::vec3(influenceMap[w][h]->getPos().x, HP->getPos(influenceMap[w][h]->getPos().x, influenceMap[w][h]->getPos().y), influenceMap[w][h]->getPos().y), 1, glm::vec3(tempStrength * 0.1, tempStrength* 0.1, 0.4));
					}
				}

			}


			//debugRef->drawSphere(glm::vec3(influenceMap[0][0].pos.x, 0, influenceMap[0][0].pos.y), 3);
		}
		//Radius Kind

		AGI_API void addDebug(Debug * bugg)
		{
			debugRef = bugg;
		}

		////Calculate radius
		/*  Calculate Radius
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
		AGI_API void createInfluenceMap(Importer::HeightMap* heightmap ,int width,int height)
		{
			//width -= 100;
			//height -= 300;
			this->mapWidth = width;
			this->mapHeight = height;
			this->imWidth = width * resolution;
			this->imHeight = height* resolution;

			influenceMap = new InfluenceNode**[this->imWidth];

			for( int x=0; x<imWidth; x++ )
			{
				influenceMap[x] = new InfluenceNode*[this->imHeight];
				for( int y=0; y<imHeight; y++ )
				{
					float w = (float)x / (resolution);
					float h = (float)y / (resolution);
					if (checkSurroundingHeightMap(heightmap, x, y))
						influenceMap[x][y] = new InfluenceNode(glm::vec2(w, h), 0);
					else
						influenceMap[x][y] = nullptr;
				}
			}
		}

		AGI_API bool checkSurroundingHeightMap(Importer::HeightMap* heightmap, int x, int y)
		{
			float doJump = 9.0f;

			float maxHeight = 0.0f;

		#pragma region x,y+1
			float w = ((float)x) / (resolution);
			float h = ((float)y+doJump) / (resolution);

			float inHeight = heightmap->getPos(w, h);
			if (glm::abs(inHeight - maxHeight) > maxHeight)
				maxHeight = glm::abs(inHeight - maxHeight);
		#pragma endregion

		#pragma region x-1,y
			 w = ((float)x+-doJump) / (resolution);
			 h = ((float)y) / (resolution);

			 inHeight = heightmap->getPos(w, h);
			if (glm::abs(inHeight - maxHeight) > maxHeight)
				maxHeight = glm::abs(inHeight - maxHeight);
		#pragma endregion

		#pragma region x+1,y
			 w = ((float)x+doJump) / (resolution);
			 h = ((float)y) / (resolution);

			 inHeight = heightmap->getPos(w, h);
			if (glm::abs(inHeight - maxHeight) > maxHeight)
				maxHeight = glm::abs(inHeight - maxHeight);
		#pragma endregion

		#pragma region x,y-1
			 w = ((float)x) / (resolution);
			 h = ((float)y+-doJump) / (resolution);

			 inHeight = heightmap->getPos(w, h);
			if (glm::abs(inHeight - maxHeight) > maxHeight)
				maxHeight = glm::abs(inHeight - maxHeight);
		#pragma endregion


			float testHeight = heightmap->getPos(w, h);
			if (glm::abs(testHeight - maxHeight) > 14 || testHeight == 0)
				return false;

			return true;
		}

		AGI_API void resetIM(glm::vec3 inPos, float inStr)
		{
			int x = round(((inPos.x / mapWidth)*imWidth));
			int y = round(((inPos.z / mapHeight)*imHeight));
			if (inStr != 0)
			{
				inStr = inStr *(resolution * 10);

				for (int strX = -inStr; strX <= inStr; strX++)
				{
					if (x + strX >= 0 && x + strX < imWidth&& x < imWidth && x >= 0)
						for (int strY = -inStr; strY <= inStr; strY++)
						{
							if (y + strY >= 0 && y + strY < imHeight&& y < imHeight && y >= 0)
								if(influenceMap[x + strX][y + strY] != nullptr)
									influenceMap[x + strX][y + strY]->setStrength(0);
						}
				}
			}
			else
			{
				if (x >= 0 && x < imWidth)
					if (y >= 0 && y < imHeight)
						if (influenceMap[x ][y ] != nullptr)
						influenceMap[x][y]->setStrength(0);
			}

		}

		AGI_API void addInfluencePoint(glm::vec3 inPos, float inStr)
		{
			if (inStr != -1)
				inStr = inStr *(resolution * 10);
			float str = inStr;

			int x = round(((inPos.x / mapWidth)*imWidth));
			int y = round(((inPos.z / mapHeight)*imHeight));


			float tempX = (float)((mapWidth / imWidth)*inStr);
			float tempY = (float)((mapHeight / imHeight)*inStr);

			float maxDistance = glm::distance(glm::vec2(tempX, tempY), glm::vec2(0, 0));

				for (int strX = -inStr; strX <= inStr; strX++)
				{

					if(x + strX >=0 && x + strX< imWidth&& x < imWidth && x>=0)
						for (int strY = -inStr; strY <= inStr; strY++)
						{
							if (y + strY >= 0 && y + strY < imHeight&& y < imHeight && y >= 0)
							{
								//float tempStrength = str / inStr;// / (resolution));
								//tempStrength = tempStrength / resolution;
								//influenceMap[x + strX][y + strY].setStrength(tempStrength);

								if (influenceMap[x + strX][y + strY])
								{
									///TESt THIS

									float tempStrength = glm::distance(glm::vec2(inPos.x,inPos.z), influenceMap[x + strX][y + strY]->getPos());
									tempStrength = maxDistance / tempStrength *0.5f;
									influenceMap[x + strX][y + strY]->setStrength(tempStrength);
								}
							}
						}
				}

				if (x >= 0 && x < imWidth)
					if (y >= 0 && y  < imHeight)
						if (influenceMap[x][y])
							influenceMap[x][y]->setStrength(-1);

		}

		AGI_API glm::vec3 calculateIMPath(glm::vec3 enemyPos)
		{
			glm::vec3 returnPos = glm::vec3(0, -1, 0);

			int x = round(((enemyPos.x / mapWidth)*imWidth));
			int y = round(((enemyPos.z / mapHeight)*imHeight));

		//	if ((x >= 0 && x < imWidth) && (y >= 0 && y < imHeight))
			//	debugRef->drawSphere(glm::vec3(influenceMap[x][y].getPos().x, 1, influenceMap[x][y].getPos().y), 3, glm::vec3(1, 1, 0.4));

			float mostPosetive = 0;
			int mpX = -1;
			int mpY = -1;

			for (int strX = -1; strX <= 1; strX++)
			{
				if (x + strX >= 0 && x + strX< imWidth)
					for (int strY = -1; strY <= 1; strY++)
					{
						if (y + strY >= 0 && y + strY < imHeight)
						{
							if(influenceMap[x + strX][y + strY])
								if (mostPosetive < influenceMap[x + strX][y + strY]->getStrength())
								{
									mpX = x + strX;
									mpY = y + strY;
									mostPosetive = influenceMap[x + strX][y + strY]->getStrength();
								}
						}
					}
			}

			if (mostPosetive > 0)
			{
				float dirX = influenceMap[mpX][mpY]->getPos().x;// -enemyPos.x;
				float dirZ = influenceMap[mpX][mpY]->getPos().y;// -enemyPos.z;

				returnPos = glm::vec3(dirX,0, dirZ);

				influenceMap[mpX][mpY]->setStrength(-1);
			}

			return returnPos;
		}


	private:
		

		InfluenceNode *** influenceMap;
		int imWidth, imHeight;
		int mapWidth,mapHeight;

		
		float resolution;//Resolution between 0.0 - 1.0, at 1.0 we will create a influenceNode for ever tile of the map

		//RadiusInfluenceNode * radiusInfluenceNodes;
		int nrOfNodes = 1;
		Debug* debugRef;
	};
}