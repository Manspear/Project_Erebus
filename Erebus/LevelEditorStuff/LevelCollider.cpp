#include "LevelCollider.h"

Debug* LevelCollider::s_debugger = nullptr;
const char* LevelCollider::name = "LevelCollider";
const char* LevelCollider::COLLIDER_TYPE_NAMES[MAX_COLLIDER_TYPES] =
{
	"Sphere",
	"AABB",
	"OBB",
	"Ray",
};

LevelCollider::LevelCollider()
	: colliderType( COLLIDER_SPHERE ), position( 0.0f ), color( 0.0f, 1.0f, 0.0f ),
	sphereRadius( 1.0f ),
	aabbMinPos( -1.0f ), aabbMaxPos( 1.0f ),
	xAxis( 1.0f, 0.0f, 0.0f ), yAxis( 0.0f, 1.0f, 0.0f ), zAxis( 0.0f, 0.0f, 1.0f ), halfLengths( 0.5f ),
	rayDirection( 0.0f, 0.0f, 1.0f ), rayLength( 100.0f )
{
}

LevelCollider::~LevelCollider()
{
}

void LevelCollider::initialize( tinyxml2::XMLElement* element )
{
}

void LevelCollider::postInitialize()
{
	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if( transform )
		position = transform->getTransformRef()->getPos();

	parent->setExportType( EXPORT_COLLIDER );
}

std::string LevelCollider::getName()
{
	return name;
}

tinyxml2::XMLElement* LevelCollider::toXml( tinyxml2::XMLDocument* doc )
{
	return nullptr;
}

std::string LevelCollider::toLua( std::string name )
{
	return "";
}

void LevelCollider::update( float deltaTime )
{
	switch( colliderType )
	{
		case COLLIDER_SPHERE: s_debugger->drawSphere( position, sphereRadius, color ); break;
		case COLLIDER_AABB: s_debugger->drawAABB( aabbMinPos, aabbMaxPos, color ); break;
		case COLLIDER_OBB: s_debugger->drawOBB( position, xAxis, yAxis, zAxis, halfLengths, color ); break;
		case COLLIDER_RAY: s_debugger->drawRay( position, rayDirection, rayLength, color ); break;
	}

	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if( transform )
		position = transform->getTransformRef()->getPos();
}

void LevelCollider::setTwStruct( TwBar* bar )
{
	TwAddVarCB( bar, "colliderType", TW_TYPE_COLLIDERS(), onSetType, onGetType, this, "label='Type:'" );
	
	TwAddVarRO( bar, "colliderPosition", LevelUI::TW_TYPE_VECTOR3F(), &position, "label='Position:'" );
	switch( colliderType )
	{
		case COLLIDER_SPHERE:
			TwAddVarRW( bar, "sphereColliderRadius", TW_TYPE_FLOAT, &sphereRadius, "label='Radius:'" );
			break;

		case COLLIDER_AABB:
			TwAddVarRW( bar, "aabbColliderMinPos", LevelUI::TW_TYPE_VECTOR3F(), &aabbMinPos, "label='MinPos:'" );
			TwAddVarRW( bar, "aabbColliderMaxPos", LevelUI::TW_TYPE_VECTOR3F(), &aabbMaxPos, "label='MaxPos:'" );
			break;

		case COLLIDER_OBB:
			TwAddVarRW( bar, "obbColliderXAxis", LevelUI::TW_TYPE_VECTOR3F(), &xAxis, "label='X-Axis:'" );
			TwAddVarRW( bar, "obbColliderYAxis", LevelUI::TW_TYPE_VECTOR3F(), &yAxis, "label='Y-Axis:'" );
			TwAddVarRW( bar, "obbColliderZAxis", LevelUI::TW_TYPE_VECTOR3F(), &zAxis, "label='Z-Axis:'" );
			TwAddVarRW( bar, "obbColliderHalfLengths", LevelUI::TW_TYPE_VECTOR3F(), &halfLengths, "label='Half lengths:'" );
			break;

		case COLLIDER_RAY:
			TwAddVarRW( bar, "rayDirection", LevelUI::TW_TYPE_VECTOR3F(), &rayDirection, "label='Direction:'" );
			TwAddVarRW( bar, "rayLength", TW_TYPE_FLOAT, &rayLength, "label='Length:'" );
			break;
	}
}

void LevelCollider::setType( int type )
{
	colliderType = type;

	LevelActorHandler::getInstance()->updateActorBar();
}

void LevelCollider::setColor( glm::vec3 c )
{
	color = c;
}

int LevelCollider::getType() const
{
	return colliderType;
}

const glm::vec3& LevelCollider::getColor() const
{
	return color;
}

void LevelCollider::setDebugger( Debug* debugger )
{
	s_debugger = debugger;
}

void TW_CALL LevelCollider::onSetType( const void* value, void* clientData )
{
	int type = *(int*)value;
	LevelCollider* collider = (LevelCollider*)clientData;
	collider->setType( type );
}

void TW_CALL LevelCollider::onGetType( void* value, void* clientData )
{
	LevelCollider* collider = (LevelCollider*)clientData;
	*(int*)value = collider->getType();
}