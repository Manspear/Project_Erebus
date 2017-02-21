#pragma once

#include "LevelActorComponent.h"
#include "Debug.h"
#include "..\SphereCollider.h"
#include "..\AABBCollider.h"
#include "..\OBBCollider.h"
#include "..\RayCollider.h"
#include "LevelActorHandler.h"
#include "LevelColiderHandler.h"
enum ColiderType
{	COLLIDER_ERROR = -1,
	COLLIDER_SPHERE = 0,
	COLLIDER_AABB,
	COLLIDER_OBB,
	COLLIDER_RAY,
	MAX_COLLIDER_TYPES
};

enum ColiderBehavior
{
	COLLIDER_BEHAVE_COLLISION,
	COLLIDER_BEHAVE_TRIGGER,
	MAX_COLLIDER_BEHAVIOR
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
	std::string toLuaLoad(std::string name) override;
	std::string toLuaUnload(std::string name) override;
	void update( float deltaTime ) override;


	void setTwStruct(TwBar * twBar) override;
	void setType( int type );
	void setColor( glm::vec3 color );

	int getType() const;

	int getBehave()const;
	void setBehave(int behavior);

	std::string getOnTriggeringString();
	void setOnTriggeringString(std::string function);
	std::string getOnEnterString();
	void setOnEnterString(std::string function);
	std::string getOnExitString();
	void setOnExitString(std::string function);


	const glm::vec3& getColor() const;

	static const char* name;
	static const char* COLLIDER_TYPE_NAMES[MAX_COLLIDER_TYPES];
	
	static const char* COLLIDER_BEHAVIOR_NAMES[MAX_COLLIDER_BEHAVIOR];
	static void setDebugger( Debug* debug );
	void updateLayer();

	unsigned int getParendColiderID();
	void setParentColiderID(unsigned int ID);
	void setParentColider(LevelCollider* colider);
	unsigned int getColiderID();
	void addChildColider(LevelCollider* colider);
	void deleteChildColider(LevelCollider* colider);
	LevelCollider* getParentColider();
	void removeComponent() override;
	std::vector<LevelCollider*>& getChildColiders();
	void updateHierecyBehavior(ColiderBehavior newBehave);
	std::string getLuaTriggerString(std::string colName);
	void removeMeFromParent();
	void removeChildrensParents();
	OBBCollider* getObbCollider();
	void adjustAABB(AABBCollider* colliderToCopy);
	AABBCollider* getAbbCollider();
	unsigned int getMainColliderID();
	std::vector<HitBox*>* getMainColliderChildren();

	void adjustObbCollider(OBBCollider* colToCopy);
	void setOffset(glm::vec3 offset);
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

	TwType TW_BEHAVIOR_COLLIDERS()
	{
		TwEnumVal colliderVals[] = {
			{ COLLIDER_BEHAVE_COLLISION, COLLIDER_BEHAVIOR_NAMES[COLLIDER_BEHAVE_COLLISION] },
			{ COLLIDER_BEHAVE_TRIGGER, COLLIDER_BEHAVIOR_NAMES[COLLIDER_BEHAVE_TRIGGER] },
		};

		static TwType result = TwDefineEnum("colliderBehaveEnum", colliderVals, MAX_COLLIDER_BEHAVIOR);

		return result;
	}

	static void TW_CALL onSetType( const void* value, void* s );
	static void TW_CALL onGetType( void* value, void* s );

	static void TW_CALL onSetBehave(const void* value, void* s);
	static void TW_CALL onGetBehave(void* value, void* s);

	static void TW_CALL setOnTriggeringEventCB(const void* value, void* s);
	static void TW_CALL getOnTriggeringEventCB(void* value, void* s);

	static void TW_CALL setOnEnterEventCB(const void* value, void* s);
	static void TW_CALL getOnEnterEventCB(void* value, void* s);

	static void TW_CALL setOnExitEventCB(const void* value, void* s);
	static void TW_CALL getOnExitEventCB(void* value, void* s);



	unsigned int coliderID, parentColiderID;
	int colliderType;
	unsigned int layer;
	glm::vec3 position, offset, color, rotation;
	LevelCollider* parentCollider;
	std::vector<LevelCollider*> childColliders;
	std::string printChildren(std::string name, std::string depth, int &globalDepth, int parentIndex);
	int colliderBehavior;
	std::string onTriggeringEventString, onEnterEventString, onExitEventString;
	

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