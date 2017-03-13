#pragma once

#ifdef AGI_BEHAVE
#define AGI_API __declspec(dllexport)   
#else  
#define AGI_API __declspec(dllexport)   
#endif

#include "Debug.h"
#include"RadiusInfluenceNode.h"
#include"InfluenceNode.h"
#include"AStarNode.h"
#include "CollisionHandler.h"

#include"WorkQueue.h"

#include"HeightMap.h"

const int MAXSIZEPATH = 240;

namespace AGI
{
	struct Enemy
	{
		int id;
		InfluenceNode targetPath[MAXSIZEPATH];
		int nrOfNodesInPath = 0;
		Enemy()
		{
			this->id = -1;
			nrOfNodesInPath = 0;
			//targetPath.clear();
		};

		Enemy(int inID)
		{
			this->id = inID;
		};

		~Enemy()
		{
			clearPath();
		};

		void clearPath()
		{
			nrOfNodesInPath = 0;
		//	for (int i = 0; i < targetPath.size(); i++)
		//		delete targetPath[i];

			//targetPath.clear();
		}

		bool matchId(int checkId)
		{
			if (checkId == id)
				return true;
			return false;
		}

		bool hasTarget()
		{
			if (nrOfNodesInPath > 0)
				return true;

			return false;
		}

		void hasReachedTarget(int xEnemyPos,int yEnemyPos, int playerPosX,int playerPosY)
		{
			glm::vec2 tempPos = targetPath[0].getPos();
			if (tempPos.x == xEnemyPos && tempPos.y == yEnemyPos)
			{
				clearPath();
			}


			if (glm::abs(tempPos.x - playerPosX) > 2 || glm::abs(tempPos.y - playerPosY) > 2)
			{
				clearPath();
			}
		}

		void addInfluenceNode(InfluenceNode nodeIN)
		{
			targetPath[nrOfNodesInPath++] = nodeIN;
		}

		float getStrengthAt(int x, int y)
		{
			for (int n = 0; n < nrOfNodesInPath; n++)
			{
				glm::vec2 tempPos = targetPath[n].getPos();

				if (tempPos.x == x && tempPos.y == y)
					return targetPath[n].getStrength();
			}

			return -99;
		}
	};


	class AGIEngine
	{

	public:
		AGI_API AGIEngine()
		{

			imWidth = 0;
			imHeight = 0;
			resolution = 0.5f;  // Never above 1

			dynamicInfluenceMap = nullptr;
			staticInfluenceMap = nullptr;
		}

		AGI_API ~AGIEngine()
		{
			enemies.clear();

			destroyInfluenceMap();

			

			//delete [] dynamicInfluenceMap;
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

		AGI_API bool checkIfTargetNodeIsOccupied(glm::vec3 inPos)
		{
			int x = round(((inPos.x / mapWidth)*imWidth));
			int y = round(((inPos.z / mapHeight)*imHeight));

			if (x >= 0 && x < imWidth)
				if (y >= 0 && y  < imHeight)
					if (dynamicInfluenceMap[x][y])
					{
						if (dynamicInfluenceMap[x][y]->getStrength() == -1)
							return true;
					}
					else
					{
						return true;
					}

			return false;
		}

		AGI_API void drawDebug(Importer::HeightMap * HP, glm::vec3 pos)
		{
			debugRef->drawSphere(glm::vec3(pos.x, HP->getPos(pos.x, pos.z), pos.z), 3, glm::vec3(3 * 0.02, 2 * 0.02, 0.4));
		}

		AGI_API void drawDebug(Importer::HeightMap ** HP)
		{
			for (int h = 0; h < imHeight; h++)
			{
				for (int w = 0; w < imWidth; w++)
				{

					if (dynamicInfluenceMap[w][h] != nullptr)
					{

						int stupid = 1;

					/*	for (int n = 0; n < 8; n++)
						{*/

							if (HP[stupid]->inside(glm::vec3(dynamicInfluenceMap[w][h]->getPos().x, 0, dynamicInfluenceMap[w][h]->getPos().y)))
							{
							//	stupid = n;
							
						//}

								int tempStrength = getCombinedStrength(w, h, 193);

							if (dynamicInfluenceMap[w][h]->checkIfOccupied())
								debugRef->drawSphere(glm::vec3(staticInfluenceMap[w][h]->getPos().x, HP[stupid]->getPos(staticInfluenceMap[w][h]->getPos().x, staticInfluenceMap[w][h]->getPos().y), staticInfluenceMap[w][h]->getPos().y), 1, glm::vec3(42, 0, 42));
							else if (tempStrength == 0)
								debugRef->drawSphere(glm::vec3(staticInfluenceMap[w][h]->getPos().x, HP[stupid]->getPos(staticInfluenceMap[w][h]->getPos().x, staticInfluenceMap[w][h]->getPos().y), staticInfluenceMap[w][h]->getPos().y), 1, glm::vec3(0, 0, 0));
							else
								debugRef->drawSphere(glm::vec3(staticInfluenceMap[w][h]->getPos().x, HP[stupid]->getPos(staticInfluenceMap[w][h]->getPos().x, staticInfluenceMap[w][h]->getPos().y), staticInfluenceMap[w][h]->getPos().y), 1, glm::vec3(tempStrength * 0.1, tempStrength* 0.1, 0.4));
							}
							//}
					}
				}

			}


			//debugRef->drawSphere(glm::vec3(dynamicInfluenceMap[0][0].pos.x, 0, dynamicInfluenceMap[0][0].pos.y), 3);
		}
		//Radius Kind

		AGI_API void addDebug(Debug * bugg)
		{
			debugRef = bugg;
		}

		AGI_API void createInfluenceMap(Importer::HeightMap** heightmaps, Collisions::CollisionHandler* collisionHandler,int width, int height)
		{
			destroyInfluenceMap();

			width = 730;
			height = 800;
			this->mapWidth = width;
			this->mapHeight = height;
			this->imWidth = width * resolution;
			this->imHeight = height* resolution;

			dynamicInfluenceMap = new InfluenceNode**[this->imWidth];
			staticInfluenceMap = new InfluenceNode**[this->imWidth];
			for (int x = 0; x<imWidth; x++)
			{
				dynamicInfluenceMap[x] = new InfluenceNode*[this->imHeight];
				staticInfluenceMap[x] = new InfluenceNode*[this->imHeight];

				for (int y = 0; y<imHeight; y++)
				{

					float w = (float)x / (resolution);
					float h = (float)y / (resolution);

					if (checkSurroundingHeightMap(heightmaps, collisionHandler, x, y))
					{
						dynamicInfluenceMap[x][y] = new InfluenceNode(glm::vec2(w, h), 0);
						staticInfluenceMap[x][y] = new InfluenceNode(glm::vec2(w, h), 0);
					}
					else
					{
						dynamicInfluenceMap[x][y] = nullptr;
						staticInfluenceMap[x][y] = nullptr;
					}
				}
			}


			/*for (int iteration = 0; iteration < 2; iteration++)
			{
				for (int x = 0; x < imWidth; x++)
				{

					for (int y = 0; y < imHeight; y++)
					{
						float sumBlur = 0;
						if (staticInfluenceMap[x][y] != nullptr)
						{
							for (int surroundX = -1; surroundX <= 1; surroundX++)
							{
								for (int surroundY = -1; surroundY <= +1; surroundY++)
								{
									if (x + surroundX >= 0 && x + surroundX < imWidth && y + surroundY >= 0 && y + surroundY < imHeight)
									{
										if (staticInfluenceMap[x + surroundX][y + surroundY] == nullptr)
										{
											if (iteration == 0)
												sumBlur = sumBlur + -1;
										}
										else
											sumBlur = sumBlur + dynamicInfluenceMap[x + surroundX][y + surroundY]->getStrength();
									}

								}

							}
							staticInfluenceMap[x][y]->setStrength((sumBlur / 9));
						}
					}
				}
				copyBuffer(imWidth, imHeight);

			}

			clearDynamic(imWidth, imHeight);*/
		}

		AGI_API void destroyInfluenceMap()
		{
			for (int n = 0; n < imWidth; n++)
			{
				for (int i = 0; i < imHeight; i++)
				{
					if (dynamicInfluenceMap[n][i])
						delete dynamicInfluenceMap[n][i];
				}
				delete[] dynamicInfluenceMap[n];
			}
			delete[]dynamicInfluenceMap;


			for (int n = 0; n < imWidth; n++)
			{
				for (int i = 0; i < imHeight; i++)
				{
					if (staticInfluenceMap[n][i])
						delete staticInfluenceMap[n][i];
				}
				delete[] staticInfluenceMap[n];
			}
			delete[]staticInfluenceMap;

			imWidth = imHeight = 0;
			dynamicInfluenceMap = nullptr;
			staticInfluenceMap = nullptr;
		}

		AGI_API void copyBuffer(int width, int height)
		{
			for (int x = 0; x < width; x++)
			{
				for (int y = 0; y < height; y++)
				{
					if (staticInfluenceMap[x][y] != nullptr)
						dynamicInfluenceMap[x][y]->setStrength(staticInfluenceMap[x][y]->getStrength());
				}
			}
		}

		AGI_API void clearDynamic(int width, int height)
		{
			for (int x = 0; x < width; x++)
			{
				for (int y = 0; y < height; y++)
				{
					if (dynamicInfluenceMap[x][y] != nullptr)
						dynamicInfluenceMap[x][y]->setStrength(0);
				}
			}
		}

		AGI_API bool checkSurroundingHeightMap(Importer::HeightMap** heightmaps, Collisions::CollisionHandler* collisionHandler, int x, int y)
		{
			float doJump = 1.0f;

			float maxHeight = 0.0f;
			//x -= 0.4f;
			//y += 1.5f;
			float w = ((float)x) / (resolution);
			float h = ((float)y) / (resolution);

			int stupid = 0;

			for (int n = 0; n < 8; n++)
			{
				if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
				{
					stupid = n;
				}
			}

			float centerHeight = heightmaps[stupid]->getPos(w, h);

			#pragma region x-1,y+1 MAYBEE

						w = ((float)x - doJump) / (resolution);
						h = ((float)y + doJump) / (resolution);
						for (int n = 0; n < 8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						float inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);

						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x,y+1

						w = ((float)x) / (resolution);
						h = ((float)y + doJump) / (resolution);
						for (int n = 0; n < 8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);

						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x+1,y+1  Maybee

						w = ((float)x + doJump) / (resolution);
						h = ((float)y + doJump) / (resolution);
						for (int n = 0; n < 8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);

						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x-1,y
						w = ((float)x - doJump) / (resolution);
						h = ((float)y) / (resolution);
						for (int n = 0; n < 8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);
						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x+1,y
						w = ((float)x + doJump) / (resolution);
						h = ((float)y) / (resolution);
						for (int n = 0; n <8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);

						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x-1,y-1  MAYBE
						w = ((float)x - doJump) / (resolution);
						h = ((float)y - doJump) / (resolution);
						for (int n = 0; n < 8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);
						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x,y-1
						w = ((float)x) / (resolution);
						h = ((float)y - doJump) / (resolution);
						for (int n = 0; n < 8; n++)
						{

							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);
						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			#pragma region x+1,y-1  MAYBE
						w = ((float)x + doJump) / (resolution);
						h = ((float)y - doJump) / (resolution);
						for (int n = 0; n < 8; n++)
						{
							if (heightmaps[n]->inside(glm::vec3(w, 0, h)))
							{
								stupid = n;
							}
						}
						inHeight = heightmaps[stupid]->getPos(w, h);
						inHeight = glm::abs(inHeight - centerHeight);
						if (inHeight > maxHeight)
							maxHeight = glm::abs(inHeight - centerHeight);
			#pragma endregion

			w = ((float)x) / (resolution);
			h = ((float)y) / (resolution);


			if (centerHeight-heightmaps[stupid]->getPosition().y < 0.7f) {
				return false;
			}

			if (centerHeight <= 3)
				return false;



			Collisions::SphereCollider temp(glm::vec3(w, centerHeight,h), 1/resolution);
			return !collisionHandler->checkCollisionsBetweenHitboxAndLayer(&temp, 3);
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
								if (dynamicInfluenceMap[x + strX][y + strY] != nullptr)
								{
									dynamicInfluenceMap[x + strX][y + strY]->setStrength(0);
									dynamicInfluenceMap[x + strX][y + strY]->setIfOccupied(false);
									dynamicInfluenceMap[x + strX][y + strY]->setGCost(0);
									dynamicInfluenceMap[x + strX][y + strY]->setHCost(0);
									dynamicInfluenceMap[x + strX][y + strY]->setParent(nullptr);
								}
						}
				}
			}
			else
			{
				if (x >= 0 && x < imWidth)
					if (y >= 0 && y < imHeight)
						if (dynamicInfluenceMap[x][y] != nullptr)
						{
							dynamicInfluenceMap[x][y]->setStrength(0);
							dynamicInfluenceMap[x][y]->setIfOccupied(false);
							dynamicInfluenceMap[x][y]->setGCost(0);
							dynamicInfluenceMap[x][y]->setHCost(0);
							dynamicInfluenceMap[x][y]->setParent(nullptr);
						}
			}

		}

		AGI_API void addInfluencePoint(glm::vec3 inPos, float inStr, float range)
		{
			//if (inStr != -1)
			//	range = range *(resolution * 10);

			int x = round(((inPos.x / mapWidth)*imWidth));
			int y = round(((inPos.z / mapHeight)*imHeight));


			float tempX = (float)((mapWidth / imWidth)*range + 1);
			float tempY = (float)((mapHeight / imHeight)*range + 1);

			float maxDistance = glm::distance(glm::vec2(tempX, tempY), glm::vec2(0, 0));

			for (int strX = -range; strX <= range; strX++)
			{

				if (x + strX >= 0 && x + strX< imWidth&& x < imWidth && x >= 0)
					for (int strY = -range; strY <= range; strY++)
					{
						if (y + strY >= 0 && y + strY < imHeight&& y < imHeight && y >= 0)
						{
							//float tempStrength = str / inStr;// / (resolution));
							//tempStrength = tempStrength / resolution;
							//dynamicInfluenceMap[x + strX][y + strY].setStrength(tempStrength);

							if (dynamicInfluenceMap[x + strX][y + strY])
							{
								///TESt THIS
								float tempStrength = glm::distance(glm::vec2(inPos.x, inPos.z), dynamicInfluenceMap[x + strX][y + strY]->getPos());
								tempStrength = maxDistance / tempStrength * inStr;
								dynamicInfluenceMap[x + strX][y + strY]->setStrength(tempStrength);
							}
						}
					}
			}

			if (x >= 0 && x < imWidth)
				if (y >= 0 && y  < imHeight)
					if (dynamicInfluenceMap[x][y])
						if (inStr < 0)
						{
							dynamicInfluenceMap[x][y]->setStrength(-1);
							dynamicInfluenceMap[x][y]->setIfOccupied(true);
						}
						else
						{
							dynamicInfluenceMap[x][y]->setIfOccupied(true);
							dynamicInfluenceMap[x][y]->setStrength(-2);
						}
		}

		AGI_API void addInfluencePoint(glm::vec2 inPos, float inStr, float range)
		{
			//if (inStr != -1)
			//	range = range *(resolution * 10);

			int x = inPos.x;
			int y = inPos.y;

			for (int strX = -range; strX <= range; strX++)
			{
				if (x + strX >= 0 && x + strX< imWidth&& x < imWidth && x >= 0)
					for (int strY = -range; strY <= range; strY++)
					{
						if (y + strY >= 0 && y + strY < imHeight&& y < imHeight && y >= 0)
						{
							//float tempStrength = str / inStr;// / (resolution));
							//tempStrength = tempStrength / resolution;
							//dynamicInfluenceMap[x + strX][y + strY].setStrength(tempStrength);

							if (dynamicInfluenceMap[x + strX][y + strY])
							{
								///TESt THIS
							//	float tempStrength = glm::distance(glm::vec2(inPos.x, inPos.y), dynamicInfluenceMap[x + strX][y + strY]->getPos());
							//	if (tempStrength == 0)
							//		tempStrength = 1;

							//	tempStrength = maxDistance / tempStrength;

							//	tempStrength = tempStrength * inStr;

								dynamicInfluenceMap[x + strX][y + strY]->setStrength(inStr);
							}
						}
					}
			}

			/*	if (x >= 0 && x < imWidth)
			if (y >= 0 && y  < imHeight)
			if (dynamicInfluenceMap[x][y])
			dynamicInfluenceMap[x][y]->setStrength(inStr);
			*/
		}

		#pragma region A Star Search

		AGI_API void aStarSearch(int id, glm::vec3 from, glm::vec3 target)
		{
			int enemyPos = -1;
			bool matchedAnyId = false;
			for (int n = 0; n < enemies.size(); n++)
			{
				if (enemies[n].matchId(id))
				{
					matchedAnyId = true;
					enemyPos = n;
				}
			}

			if (!matchedAnyId)
			{
				enemies.push_back(Enemy(id));
				enemyPos = enemies.size()-1;
			}

			int xFrom = round(((from.x / mapWidth)*imWidth));
			int yFrom = round(((from.z / mapHeight)*imHeight));

			int xPlayerPos = round(((target.x / mapWidth)*imWidth));
			int yPlayerPos = round(((target.z / mapHeight)*imHeight));

			if (xFrom < 0 || xPlayerPos < 0 || yFrom < 0 || yPlayerPos < 0)
				return;

			if (xFrom >= imWidth || xPlayerPos >= imWidth || yFrom >= imHeight || yPlayerPos>= imHeight)
				return;

			if (enemies.at(enemyPos).hasTarget())
			{
				enemies.at(enemyPos).hasReachedTarget(xFrom, yFrom, xPlayerPos, yPlayerPos);
			}
			else
			{

				InfluenceNode *openList[MAXSIZEPATH];
				int sizeOfOpenList = 0;

				InfluenceNode *closedList[MAXSIZEPATH];
				int sizeOfClosedList = 0;
				
				InfluenceNode* starterNode = dynamicInfluenceMap[xFrom][yFrom];
				//if (starterNode->getParent() == starterNode)
				//	resetIM(glm::vec3(starterNode->getPos().x, 0, starterNode->getPos().y),0);
				InfluenceNode* finishNode = nullptr;

				if (starterNode != nullptr && (xFrom != xPlayerPos || yFrom != yPlayerPos))
				{
					starterNode->setParent(nullptr);
					starterNode->setGCost(0);
					starterNode->setHCost(0);
					starterNode->setStrength(0);

					addToClosedList(starterNode, xPlayerPos, yPlayerPos, openList,sizeOfOpenList, closedList, sizeOfClosedList);
					int superCounter = 0;
					while (finishNode == nullptr && superCounter < MAXSIZEPATH - 14)
					{
						finishNode = checkOpenList(xPlayerPos, yPlayerPos, openList, sizeOfOpenList, closedList, sizeOfClosedList);
						superCounter++;
					}

					if (superCounter < MAXSIZEPATH - 14)
					{
						float countDown = 66;
						if (finishNode != nullptr)
							finishNode = finishNode->getParent();

						//superCounter = 0;
						while (finishNode != nullptr && finishNode != finishNode->getParent())
						{
							//superCounter++;
							glm::vec2 inPos = finishNode->getPos();

							int tempX = round(((inPos.x / mapWidth)*imWidth));
							int tempY = round(((inPos.y / mapHeight)*imHeight));

							enemies.at(enemyPos).addInfluenceNode(InfluenceNode(glm::vec2(tempX, tempY), countDown));

							//addInfluencePoint(inPos, countDown, 2);
							//addInfluencePoint(glm::vec2(tempX, tempY), countDown, 1);

							countDown = countDown * 0.8f;
							finishNode = finishNode->getParent();
						}
					}


					//addInfluenceAroundPath(enemyPos);
				}
			}
		}

		AGI_API void clearAStarSearch(int id)
		{
			int enemyPos = -1;
			for (int n = 0; n < enemies.size(); n++)
			{
				if (enemies[n].matchId(id))
				{
					enemyPos = n;
				}
			}

			if (enemyPos != -1)
			{
				for (int n = 0; n < enemies.at(enemyPos).nrOfNodesInPath; n++)
				{
					InfluenceNode tempNode = enemies.at(enemyPos).targetPath[n];
					resetIM(glm::vec3(tempNode.getPos().x, 0,tempNode.getPos().y), 0);
					//addInfluencePoint(tempNode.getPos(),, 1);
				}

				enemies[enemyPos].clearPath();
			}
		}

		AGI_API void addInfluenceAroundPath(int enemyPos)
		{
			for (int n = 0; n < enemies.at(enemyPos).nrOfNodesInPath; n++)
			{
				InfluenceNode tempNode = enemies.at(enemyPos).targetPath[n];

				addInfluencePoint(tempNode.getPos(), tempNode.getStrength(), 1);
			}
		}

		AGI_API void addToClosedList(InfluenceNode * inNode, int xTarget, int yTarget, InfluenceNode *openList[MAXSIZEPATH],int & openSize, InfluenceNode *closedList[MAXSIZEPATH],int &closedSize)
		{
			int xFrom = round(((inNode->getPos().x / mapWidth)*imWidth));
			int yFrom = round(((inNode->getPos().y / mapHeight)*imHeight));

			if (inNode->getParent() == inNode)
				inNode->setParent(nullptr);
			int n = 0;
			for (; n < openSize; n++)
			{
				if (openList[n] == dynamicInfluenceMap[xFrom][yFrom])
				{
					swapListPos(openList, n, openSize);
					//openList.erase(openList.begin() + n);
				}
			}

			closedList[closedSize++] = dynamicInfluenceMap[xFrom][yFrom];

			//TOP
			if (checkIfNodeIsAlreadyChecked(xFrom - 1, yFrom - 1, openList,openSize, closedList,closedSize))
			{
				dynamicInfluenceMap[xFrom - 1][yFrom - 1]->setParent(inNode);
				dynamicInfluenceMap[xFrom - 1][yFrom - 1]->setGCost(inNode->getGCost() + 14);
				dynamicInfluenceMap[xFrom - 1][yFrom - 1]->setHCost(calculateH(xFrom - 1, yFrom - 1, xTarget, yTarget));

				openList[openSize++] = dynamicInfluenceMap[xFrom - 1][yFrom - 1];
				//openList.push_back(dynamicInfluenceMap[xFrom - 1][yFrom - 1]);
			}

			if (checkIfNodeIsAlreadyChecked(xFrom, yFrom - 1, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom][yFrom - 1]->setParent(inNode);
				dynamicInfluenceMap[xFrom][yFrom - 1]->setGCost(inNode->getGCost() + 10);
				dynamicInfluenceMap[xFrom][yFrom - 1]->setHCost(calculateH(xFrom, yFrom - 1, xTarget, yTarget));

				openList[openSize++] = dynamicInfluenceMap[xFrom][yFrom - 1];
			}

			if (checkIfNodeIsAlreadyChecked(xFrom + 1, yFrom - 1, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom + 1][yFrom - 1]->setParent(inNode);
				dynamicInfluenceMap[xFrom + 1][yFrom - 1]->setGCost(inNode->getGCost() + 14);
				dynamicInfluenceMap[xFrom + 1][yFrom - 1]->setHCost(calculateH(xFrom + 1, yFrom - 1, xTarget, yTarget));

				//openList.push_back(dynamicInfluenceMap[xFrom + 1][yFrom - 1]);
				openList[openSize++] = dynamicInfluenceMap[xFrom + 1][yFrom - 1];

			}

			//MID
			if (checkIfNodeIsAlreadyChecked(xFrom - 1, yFrom, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom - 1][yFrom]->setParent(inNode);
				dynamicInfluenceMap[xFrom - 1][yFrom]->setGCost(inNode->getGCost() + 10);
				dynamicInfluenceMap[xFrom - 1][yFrom]->setHCost(calculateH(xFrom - 1, yFrom, xTarget, yTarget));

				//openList.push_back(dynamicInfluenceMap[xFrom - 1][yFrom]);
				openList[openSize++] = dynamicInfluenceMap[xFrom - 1][yFrom ];
			}

			if (checkIfNodeIsAlreadyChecked(xFrom + 1, yFrom, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom + 1][yFrom]->setParent(inNode);
				dynamicInfluenceMap[xFrom + 1][yFrom]->setGCost(inNode->getGCost() + 10);
				dynamicInfluenceMap[xFrom + 1][yFrom]->setHCost(calculateH(xFrom + 1, yFrom, xTarget, yTarget));

				//openList.push_back(dynamicInfluenceMap[xFrom + 1][yFrom]);
				openList[openSize++] = dynamicInfluenceMap[xFrom + 1][yFrom];
			}


			//BOT
			if (checkIfNodeIsAlreadyChecked(xFrom - 1, yFrom + 1, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom - 1][yFrom + 1]->setParent(inNode);
				dynamicInfluenceMap[xFrom - 1][yFrom + 1]->setGCost(inNode->getGCost() + 14);
				dynamicInfluenceMap[xFrom - 1][yFrom + 1]->setHCost(calculateH(xFrom - 1, yFrom + 1, xTarget, yTarget));

				//openList.push_back(dynamicInfluenceMap[xFrom - 1][yFrom + 1]);
				openList[openSize++] = dynamicInfluenceMap[xFrom - 1][yFrom + 1];
			}

			if (checkIfNodeIsAlreadyChecked(xFrom, yFrom + 1, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom][yFrom + 1]->setParent(inNode);
				dynamicInfluenceMap[xFrom][yFrom + 1]->setGCost(inNode->getGCost() + 10);
				dynamicInfluenceMap[xFrom][yFrom + 1]->setHCost(calculateH(xFrom, yFrom + 1, xTarget, yTarget));

				//openList.push_back(dynamicInfluenceMap[xFrom][yFrom + 1]);
				openList[openSize++] = dynamicInfluenceMap[xFrom][yFrom + 1];
			}

			if (checkIfNodeIsAlreadyChecked(xFrom + 1, yFrom + 1, openList, openSize, closedList, closedSize))
			{
				dynamicInfluenceMap[xFrom + 1][yFrom + 1]->setParent(inNode);
				dynamicInfluenceMap[xFrom + 1][yFrom + 1]->setGCost(inNode->getGCost() + 14);
				dynamicInfluenceMap[xFrom + 1][yFrom + 1]->setHCost(calculateH(xFrom + 1, yFrom + 1, xTarget, yTarget));

				//openList.push_back(dynamicInfluenceMap[xFrom + 1][yFrom + 1]);
				openList[openSize++] = dynamicInfluenceMap[xFrom + 1][yFrom + 1];
			}

		}

		AGI_API bool checkIfNodeIsAlreadyChecked(int xFrom, int yFrom, InfluenceNode *openList[], int & openSize, InfluenceNode *closedList[], int &closedSize)
		{
			if (xFrom < 0 || yFrom < 0)
				return false;
			if (dynamicInfluenceMap[xFrom][yFrom] == nullptr)
				return false;

			//if (dynamicInfluenceMap[xFrom][yFrom]->getStrength() < 0)
			//	return false;

			//if (dynamicInfluenceMap[xFrom][yFrom]->checkIfOccupied())
			//	return false;


			for (int n = 0; n <openSize; n++)
			{
				if (openList[n] == dynamicInfluenceMap[xFrom][yFrom])
					return false;
			}

			for (int n = 0; n < closedSize; n++)
			{
				if (closedList[n] == dynamicInfluenceMap[xFrom][yFrom])
					return false;
			}

			bool returnerBool = true;
			for (int n = 0; n < enemies.size(); n++)
			{
				for (int i = 0; i <4 ; i++)
				{
					if (enemies[n].nrOfNodesInPath > 0 && enemies[n].nrOfNodesInPath > i)
					{
						glm::vec2 tempVec2 = enemies[n].targetPath[i].getPos();

						if (tempVec2.x == xFrom && tempVec2.y == yFrom)
							returnerBool = false;
					}
				}
			}

			return returnerBool;
		}

		AGI_API InfluenceNode * checkOpenList(int xTarget, int yTarget, InfluenceNode **openList, int & openSize, InfluenceNode **closedList, int &closedSize)
		{
			int lowestValue = 9999999;
			int lowestPos = -1;

			for (int n = 0; n < openSize; n++)
			{
				if (dynamicInfluenceMap[xTarget][yTarget] == openList[n])
					return openList[n];

				int tempFCost = openList[n]->getFCost();
				if (tempFCost < lowestValue)
				{
					lowestValue = tempFCost;
					lowestPos = n;
				}
			}

			if (lowestPos == -1)
				return dynamicInfluenceMap[xTarget][yTarget];

			addToClosedList(openList[lowestPos], xTarget, yTarget, openList, openSize, closedList,closedSize);

			return nullptr;

		}

		AGI_API int calculateH(int fromX, int fromY, int targetX, int targetY)
		{
			return (glm::abs(fromX - targetX) * 10) + (glm::abs(fromY - targetY) * 10);
		}

		AGI_API void swapListPos(InfluenceNode *list[],int n, int &size)
		{
			list[n] = list[size-1];
			size--;
		}

		#pragma endregion

		AGI_API glm::vec3 calculateIMPath(int id,glm::vec3 enemyPos)
		{
			glm::vec3 returnPos = glm::vec3(0, -1, 0);
			
			int x = round(((enemyPos.x / mapWidth)*imWidth));
			int y = round(((enemyPos.z / mapHeight)*imHeight));

			float mostPosetive = -1;
			int mpX = -1;
			int mpY = -1;

			for (int strX = -1; strX <= 1; strX++)
			{
				if (x + strX >= 0 && x + strX< imWidth)
					for (int strY = -1; strY <= 1; strY++)
					{
						if (y + strY >= 0 && y + strY < imHeight)
						{
							if (dynamicInfluenceMap[x + strX][y + strY] && !dynamicInfluenceMap[x + strX][y + strY]->checkIfOccupied())
								if (mostPosetive < getCombinedStrength(x + strX, y + strY, id))
								{
									mpX = x + strX;
									mpY = y + strY;
									mostPosetive = getCombinedStrength(x + strX, y + strY, id);
								}
						}
					}
			}

			if (mostPosetive > -1)
			{
				float posX = dynamicInfluenceMap[mpX][mpY]->getPos().x;// -enemyPos.x;
				float posZ = dynamicInfluenceMap[mpX][mpY]->getPos().y;// -enemyPos.z;


				returnPos = glm::vec3(posX, 0, posZ);

				//dynamicInfluenceMap[mpX][mpY]->setStrength(-1);
				//dynamicInfluenceMap[mpX][mpY]->setIfOccupied(true);
			}

			return returnPos;
		}

		AGI_API glm::vec3 setTargetRangeFromPlayer(glm::vec3 enemyPos, glm::vec3 playerPos, float range)
		{
			glm::vec3 tempPos = playerPos - (((glm::normalize(playerPos - enemyPos))) * range);

			int x = round(((tempPos.x / mapWidth)*imWidth));
			int y = round(((tempPos.z / mapHeight)*imHeight));
			while (dynamicInfluenceMap[x][y] == nullptr)
			{
				range -= 2;
				tempPos = playerPos - (((glm::normalize(playerPos - enemyPos))) * range);

				x = round(((tempPos.x / mapWidth)*imWidth));
				y = round(((tempPos.z / mapHeight)*imHeight));
			}

			return glm::vec3(dynamicInfluenceMap[x][y]->getPos().x, 0, dynamicInfluenceMap[x][y]->getPos().y);
		}

		AGI_API glm::vec3 setTargetRangeFromPlayer(glm::vec3 playerPos, float range, int maxNrOfCirclingEnemies, int indexOfCirclingEnemies)
		{
			//range = range *(resolution * 10);
			float tempRange = 0;
			float angleInCircle = indexOfCirclingEnemies * (glm::pi<float>() * 2 / maxNrOfCirclingEnemies);

			InfluenceNode * testIN;
			testIN = traverseIMRangeFromPlayer(playerPos, tempRange, angleInCircle);
			if (testIN != nullptr && tempRange<range)
			{
				do
				{
					tempRange += 1;
					testIN = traverseIMRangeFromPlayer(playerPos, tempRange, angleInCircle);
				} while (testIN != nullptr && tempRange < range);
			}

			if (testIN != nullptr)
				return glm::vec3(testIN->getPos().x, 0, testIN->getPos().y);

			return glm::vec3(0, -1, 0);
		}

		AGI_API InfluenceNode * traverseIMRangeFromPlayer(glm::vec3 playerPos, float tempRange, float angleInCircle)
		{
			glm::vec3 testPos = playerPos - (glm::vec3(glm::cos(angleInCircle), 0, glm::sin(angleInCircle))*(tempRange));

			int x = round(((testPos.x / mapWidth)*imWidth));
			int y = round(((testPos.z / mapHeight)*imHeight));

			if (x >= 0 && x<imWidth && y >= 0 && y<imHeight)
				return dynamicInfluenceMap[x][y];

			return nullptr;
		}

		AGI_API float getCombinedStrength(int x, int y, int enemyId = -1)
		{
			if (enemyId != -1)
			{
				int enemyPos = -1;
				for (int n = 0; n < enemies.size(); n++)
				{
					
					if (enemyId == enemies[n].id)
					{
						enemyPos = n;
					}
				}

				if (enemyPos != -1)
				{
					return enemies[enemyPos].getStrengthAt(x,y);
				}
			}

			return dynamicInfluenceMap[x][y]->getStrength();// +staticInfluenceMap[x][y]->getStrength();;
		}

	private:

		std::vector<Enemy> enemies;

		InfluenceNode*** dynamicInfluenceMap;

		InfluenceNode *** staticInfluenceMap;

		int imWidth, imHeight;
		int mapWidth, mapHeight;


		float resolution;//Resolution between 0.0 - 1.0, at 1.0 we will create a influenceNode for ever tile of the map

		int nrOfNodes = 1;
		Debug* debugRef;
	};
}