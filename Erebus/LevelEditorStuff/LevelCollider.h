#pragma once

#include "LevelActorComponent.h"
#include "Debug.h"
#include "..\SphereCollider.h"
#include "..\AABBCollider.h"
#include "..\OBBCollider.h"
#include "..\RayCollider.h"
#include "LevelActorHandler.h"
#include "LevelColiderHandler.h"
enum
{	COLLIDER_ERROR = -1,
	COLLIDER_SPHERE = 0,
	COLLIDER_AABB,
	COLLIDER_OBB,
	COLLIDER_RAY,
	MAX_COLLIDER_TYPES
};

class LevelCollider : public LevelActorComponent
{
public:
	LevelCollider();
	~LevelCollider();

	void initialize(tinyxml2::XMLElement* element) override;
	void postInitialize() override;
	std::string getName() override;
	tinyxml2::XMLElement* toXml(tinyxml2::XMLDocument* doc) override;
	std::string toLua(std::string name) override;
	void update( float deltaTime ) override;


	void setTwStruct(TwBar * twBar) override;
	void setType( int type );
	void setColor( glm::vec3 color );

	int getType() const;

	const glm::vec3& getColor() const;

	static const char* name;
	static const char* COLLIDER_TYPE_NAMES[MAX_COLLIDER_TYPES];
	static void setDebugger( Debug* debug );
	void updateLayer();

	unsigned int getParendColiderID();
	void setParentColiderID(unsigned int ID);
	void setParentColider(LevelCollider* colider);
	unsigned int getColiderID();
	void addChildColider(LevelCollider* colider);
	void deleteChildColider(LevelCollider* colider);
	LevelCollider* getParentColider();
private:
	TwType TW_TYPE_COLLIDERS()
	{
		TwEnumVal colliderVals[] = { 
			{ COLLIDER_SPHERE, COLLIDER_TYPE_NAMES[COLLIDER_SPHERE] },
			{ COLLIDER_AABB, COLLIDER_TYPE_NAMES[COLLIDER_AABB] },
			{ COLLIDER_OBB, COLLIDER_TYPE_NAMES[COLLIDER_OBB] } ,
			{ COLLIDER_RAY, COLLIDER_TYPE_NAMES[COLLIDER_RAY] },
		};

		static TwType result = TwDefineEnum( "colliderTypesEnum", colliderVals, MAX_COLLIDER_TYPES );

		return result;
	}

	static void TW_CALL onSetType( const void* value, void* clientData );
	static void TW_CALL onGetType( void* value, void* clientData );

	unsigned int coliderID, parentColiderID;
	int colliderType;
	unsigned int layer;
	glm::vec3 position, offset, color, rotation;
	LevelCollider* parentCollider;
	std::vector<LevelCollider*> childColliders;
	std::string printChildren(std::string name, std::string depth, int &globalDepth, int parentIndex);



	// sphere
	//glm::vec3 spherePosition;
	SphereCollider* sphereColider;
	float sphereRadius;

	// aabb
	glm::vec3 aabbMinPos, aabbMaxPos;
	AABBCollider* abbColider;

	// obb
	//glm::vec3 obbPosition;
	glm::vec3 xAxis, yAxis, zAxis;
	glm::vec3 halfLengths;
	glm::vec3 totalRot;
	std::string obbRotationStep;
	glm::vec3 scale;
	OBBCollider* obbColider;

	// ray
	glm::vec3 rayDirection;
	RayCollider* rayColider;

	static Debug* s_debugger;
};