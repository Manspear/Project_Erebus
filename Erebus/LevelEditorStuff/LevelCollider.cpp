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
	: colliderType( COLLIDER_SPHERE ), position( 0.0f ), color( 0.0f, 1.0f, 0.0f ), parentCollider( nullptr ),
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
	colliderType = element->IntAttribute("type");

	tinyxml2::XMLElement* child = element->FirstChildElement("Position");
	position.x = child->FloatAttribute("x");
	position.y = child->FloatAttribute("y");
	position.z = child->FloatAttribute("z");

	child = element->FirstChildElement("Offset");
	offset.x = child->FloatAttribute("x");
	offset.y = child->FloatAttribute("y");
	offset.z = child->FloatAttribute("z");

	child = element->FirstChildElement("Color");
	color.x = child->FloatAttribute("x");
	color.y = child->FloatAttribute("y");
	color.z = child->FloatAttribute("z");

	switch( colliderType )
	{
		case COLLIDER_SPHERE:
			child = element->FirstChildElement("Radius");
			sphereRadius = child->FloatAttribute("r");
			break;

		case COLLIDER_AABB:
			child = element->FirstChildElement("MinPos");
			aabbMinPos.x = element->FloatAttribute("x");
			aabbMinPos.y = element->FloatAttribute("y");
			aabbMinPos.z = element->FloatAttribute("z");

			child = element->FirstChildElement("MaxPos");
			aabbMaxPos.x = element->FloatAttribute("x");
			aabbMaxPos.y = element->FloatAttribute("y");
			aabbMaxPos.z = element->FloatAttribute("z");
			break;

		case COLLIDER_OBB:
			child = element->FirstChildElement("xAxis");
			xAxis.x = element->FloatAttribute("x");
			xAxis.y = element->FloatAttribute("y");
			xAxis.z = element->FloatAttribute("z");

			child = element->FirstChildElement("yAxis");
			yAxis.x = element->FloatAttribute("x");
			yAxis.y = element->FloatAttribute("y");
			yAxis.z = element->FloatAttribute("z");

			child = element->FirstChildElement("zAxis");
			zAxis.x = element->FloatAttribute("x");
			zAxis.y = element->FloatAttribute("y");
			zAxis.z = element->FloatAttribute("z");

			child = element->FirstChildElement("HalfLengths");
			halfLengths.x = element->FloatAttribute("x");
			halfLengths.y = element->FloatAttribute("y");
			halfLengths.z = element->FloatAttribute("z");
			break;

		case COLLIDER_RAY:
			child = element->FirstChildElement("Direction");
			rayDirection.x = child->FloatAttribute("x");
			rayDirection.y = child->FloatAttribute("y");
			rayDirection.z = child->FloatAttribute("z");

			child = element->FirstChildElement("Length");
			rayLength = child->FloatAttribute("l");
			break;
	}
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
	tinyxml2::XMLElement* element = doc->NewElement(name);

	tinyxml2::XMLElement* positionElement = doc->NewElement("Position");
	positionElement->SetAttribute( "x", position.x );
	positionElement->SetAttribute( "y", position.y );
	positionElement->SetAttribute( "z", position.z );

	tinyxml2::XMLElement* offsetElement = doc->NewElement("Position");
	offsetElement->SetAttribute( "x", offset.x );
	offsetElement->SetAttribute( "y", offset.y );
	offsetElement->SetAttribute( "z", offset.z );

	tinyxml2::XMLElement* colorElement = doc->NewElement("Color");
	colorElement->SetAttribute( "x", color.x );
	colorElement->SetAttribute( "y", color.y );
	colorElement->SetAttribute( "z", color.z );

	element->LinkEndChild( positionElement );
	element->LinkEndChild( offsetElement );
	element->LinkEndChild( colorElement );

	switch( colliderType )
	{
		case COLLIDER_SPHERE:
		{
			tinyxml2::XMLElement* radiusElement = doc->NewElement("Radius");
			radiusElement->SetAttribute( "r", sphereRadius );

			element->LinkEndChild( radiusElement );
		} break;

		case COLLIDER_AABB:
		{
			tinyxml2::XMLElement* minPosElement = doc->NewElement("MinPos");
			minPosElement->SetAttribute( "x", aabbMinPos.x );
			minPosElement->SetAttribute( "y", aabbMinPos.y );
			minPosElement->SetAttribute( "z", aabbMinPos.z );

			tinyxml2::XMLElement* maxPosElement = doc->NewElement("MinPos");
			maxPosElement->SetAttribute( "x", aabbMaxPos.x );
			maxPosElement->SetAttribute( "y", aabbMaxPos.y );
			maxPosElement->SetAttribute( "z", aabbMaxPos.z );

			element->LinkEndChild( minPosElement );
			element->LinkEndChild( maxPosElement );
		} break;

		case COLLIDER_OBB:
		{
			tinyxml2::XMLElement* xAxisElement = doc->NewElement("xAxis");
			xAxisElement->SetAttribute( "x", xAxis.x );
			xAxisElement->SetAttribute( "y", xAxis.y );
			xAxisElement->SetAttribute( "z", xAxis.z );

			tinyxml2::XMLElement* yAxisElement = doc->NewElement("yAxis");
			yAxisElement->SetAttribute( "x", yAxis.x );
			yAxisElement->SetAttribute( "y", yAxis.y );
			yAxisElement->SetAttribute( "z", yAxis.z );

			tinyxml2::XMLElement* zAxisElement = doc->NewElement("zAxis");
			zAxisElement->SetAttribute( "x", zAxis.x );
			zAxisElement->SetAttribute( "y", zAxis.y );
			zAxisElement->SetAttribute( "z", zAxis.z );

			tinyxml2::XMLElement* halfLengthElement = doc->NewElement("HalfLengths");
			halfLengthElement->SetAttribute( "x", halfLengths.x );
			halfLengthElement->SetAttribute( "y", halfLengths.y );
			halfLengthElement->SetAttribute( "z", halfLengths.z );

			element->LinkEndChild( xAxisElement );
			element->LinkEndChild( yAxisElement );
			element->LinkEndChild( zAxisElement );
			element->LinkEndChild( halfLengthElement );
		} break;

		case COLLIDER_RAY:
		{
			tinyxml2::XMLElement* directionElement = doc->NewElement("Direction");
			directionElement->SetAttribute( "x", rayDirection.x );
			directionElement->SetAttribute( "y", rayDirection.y );
			directionElement->SetAttribute( "z", rayDirection.z );

			tinyxml2::XMLElement* lengthElement = doc->NewElement("Length");
			lengthElement->SetAttribute("l", rayLength);

			element->LinkEndChild( directionElement );
			element->LinkEndChild( lengthElement );
		} break;
	}

	return element;
}

std::string LevelCollider::toLua( std::string name )
{
	using namespace std;
	stringstream ss;

	ss << name << ".collider = ";

	switch( colliderType )
	{
		case COLLIDER_SPHERE:
			ss << "SphereCollider.Create(" << name << ".transformID)" << endl;
			ss << "CollisionHandler.AddSphere(" << name << ".collider)" << endl;
			break;

		case COLLIDER_AABB:
			ss << "AABBCollider.Create(" << name << ".transformID)" << endl;
			ss << "CollisionHandler.AddAABB(" << name << ".collider)" << endl;
			break;

		case COLLIDER_OBB:
			ss << "OBBCollider.Create(" << name << ".transformID)" << endl;
			ss << "CollisionHandler.AddOBB(" << name << ".collider)" << endl;
			break;

		case COLLIDER_RAY:
			ss << "RayCollider.Create(" << name << ".transformID)" << endl;
			ss << "CollisionHandler.AddRay(" << name << ".collider)" << endl;
			break;
	}

	return ss.str();
}

void LevelCollider::update( float deltaTime )
{
	static OBBCollider* colider = new OBBCollider();
	switch( colliderType )
	{
		case COLLIDER_SPHERE: s_debugger->drawSphere( position, sphereRadius, color ); break;
		case COLLIDER_AABB: s_debugger->drawAABB( position+aabbMinPos, position+aabbMaxPos, color ); break;
		//case COLLIDER_OBB: s_debugger->drawOBB( position, xAxis, yAxis, zAxis, halfLengths, color ); break;
		case COLLIDER_RAY: s_debugger->drawRay( position, rayDirection, rayLength, color ); break;
	}

	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if (transform) {
		position = transform->getTransformRef()->getPos();
		colider->setPos(position);
		//glm::rotate(glm::vec3(0, 0, 1), transform->getTransformRef()->getRotation());
		colider->setXAxis({ 1,0,0 });

		colider->rotateAroundX(transform->getTransformRef()->getRotation().x);
		colider->rotateAroundY(transform->getTransformRef()->getRotation().y);
		colider->rotateAroundZ(transform->getTransformRef()->getRotation().z);
		colider->setSize(halfLengths.x, halfLengths.y, halfLengths.z);
		s_debugger->drawOBB(colider->getPos(), colider->getXAxis(), colider->getYAxis(), colider->getZAxis(), colider->getHalfLengths(), { 1,0,0 });
	}
		
}

void LevelCollider::addChildCollider( LevelCollider* collider )
{
	childColliders.push_back( collider );
}

void LevelCollider::removeChildCollider( int index )
{
	childColliders.erase( childColliders.begin() + index );
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

	//TwAddVarRW( bar, "colliderColor", LevelUI::TW_TYPE_VECTOR3F(), &color, "label='Color:'" );
	TwAddVarRW( bar, "colliderColor", TW_TYPE_COLOR3F, &color, "label='Color:'" );
}

void LevelCollider::setType( int type )
{
	colliderType = type;

	LevelActorHandler::getInstance()->updateActorBar();
}

void LevelCollider::setParentCollider( LevelCollider* parent )
{
	parentCollider = parent;
}

void LevelCollider::setColor( glm::vec3 c )
{
	color = c;
}

int LevelCollider::getType() const
{
	return colliderType;
}

LevelCollider* LevelCollider::getParentCollider()
{
	return parentCollider;
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