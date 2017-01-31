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
	: colliderType(COLLIDER_SPHERE), position(0.0f), color(0.0f, 1.0f, 0.0f), parentCollider(nullptr),
	sphereRadius(1.0f),
	aabbMinPos(-1.0f), aabbMaxPos(1.0f),
	xAxis(1.0f, 0.0f, 0.0f), yAxis(0.0f, 1.0f, 0.0f), zAxis(0.0f, 0.0f, 1.0f), halfLengths(0.5f),
	rayDirection(0.0f, 0.0f, 1.0f), totalRot(0)
{
	this->sphereColider = new SphereCollider();
	this->abbColider = new AABBCollider();
	this->obbColider = new OBBCollider();
	this->rayColider = new RayCollider(); 


	this->sphereColider->setPos(position);
	this->sphereColider->setRadius(sphereRadius);


	this->abbColider->setPos(this->position);
	this->abbColider->setMinPos(this->aabbMinPos);
	this->abbColider->setMaxPos(this->aabbMaxPos);

	this->obbColider->setPos(this->position);
	this->obbColider->setXAxis(this->xAxis);
	this->obbColider->setYAxis(this->yAxis);
	this->obbColider->setZAxis(this->zAxis);
	this->obbColider->setXHalfLength(this->halfLengths.x);
	this->obbColider->setYHalfLength(this->halfLengths.y);
	this->obbColider->setYHalfLength(this->halfLengths.z);

	this->rayColider->setPos(this->position);
	this->rayColider->setDirection(this->rayDirection);
	
	obbRotationStep = " ";
	obbRotationStep +=  LevelUI::actorBarName;
	obbRotationStep += "/coliderRotation step=1 ";
	int k = 0;

}

LevelCollider::~LevelCollider()
{
	delete this->sphereColider;
	delete this->obbColider;
	delete this->abbColider;
	delete this->rayColider;
}

void LevelCollider::initialize( tinyxml2::XMLElement* element )
{
	colliderType = element->IntAttribute("type");


	tinyxml2::XMLElement* child = element->FirstChildElement("Offset");
	offset.x = child->FloatAttribute("x");
	offset.y = child->FloatAttribute("y");
	offset.z = child->FloatAttribute("z");

	child = element->FirstChildElement("Color");
	color.x = child->FloatAttribute("x");
	color.y = child->FloatAttribute("y");
	color.z = child->FloatAttribute("z");

	this->position += this->offset;

	switch( colliderType )
	{
		case COLLIDER_SPHERE:
			child = element->FirstChildElement("Radius");
			sphereRadius = child->FloatAttribute("r");
			this->sphereColider->setPos(position);
			this->sphereColider->setRadius(sphereRadius);
			break;

		case COLLIDER_AABB:
			child = element->FirstChildElement("MinPos");
			aabbMinPos.x = child->FloatAttribute("x");
			aabbMinPos.y = child->FloatAttribute("y");
			aabbMinPos.z = child->FloatAttribute("z");

			child = element->FirstChildElement("MaxPos");
			aabbMaxPos.x = child->FloatAttribute("x");
			aabbMaxPos.y = child->FloatAttribute("y");
			aabbMaxPos.z = child->FloatAttribute("z");

			this->abbColider->setPos(this->position);
			this->abbColider->setMinPos(this->aabbMinPos);
			this->abbColider->setMaxPos(this->aabbMaxPos);
			break;

		case COLLIDER_OBB:
			child = element->FirstChildElement("Rotation");
			rotation.x = child->FloatAttribute("x");
			rotation.y = child->FloatAttribute("y");
			rotation.z = child->FloatAttribute("z");

			child = element->FirstChildElement("HalfLengths");
			halfLengths.x = child->FloatAttribute("x");
			halfLengths.y = child->FloatAttribute("y");
			halfLengths.z = child->FloatAttribute("z");

			this->obbColider->setPos(this->position);
			obbColider->setXAxis({ 1,0,0 });
			obbColider->rotateAroundX(rotation.x);
			obbColider->rotateAroundY(rotation.y);
			obbColider->rotateAroundZ(rotation.z);
			obbColider->setSize(halfLengths.x, halfLengths.y, halfLengths.z);
			this->obbColider->setXHalfLength(this->halfLengths.x);
			this->obbColider->setYHalfLength(this->halfLengths.y);
			this->obbColider->setYHalfLength(this->halfLengths.z);
			break;

		case COLLIDER_RAY:
			child = element->FirstChildElement("Direction");
			rayDirection.x = child->FloatAttribute("x");
			rayDirection.y = child->FloatAttribute("y");
			rayDirection.z = child->FloatAttribute("z");

			this->rayColider->setPos(this->position);
			this->rayColider->setDirection(this->rayDirection);

			break;
	}
}

void LevelCollider::postInitialize()
{
	LevelTransform* transform = parent->getComponent<LevelTransform>();
	if( transform )
		position = transform->getTransformRef()->getPos();

	bool onlyComponent = true;
	for (auto element : parent->getAllComponents()) {
		if (element.second->getName() != LevelTransform::name && element.second->getName() != LevelCollider::name) {
			onlyComponent = false;
			break;
		}
	}
	
	if (onlyComponent)
		parent->setExportType(EXPORT_COLLIDER);
		
}

std::string LevelCollider::getName()
{
	return name;
}

tinyxml2::XMLElement* LevelCollider::toXml( tinyxml2::XMLDocument* doc )
{
	tinyxml2::XMLElement* element = doc->NewElement(name);

	element->SetAttribute("type", this->colliderType);

	tinyxml2::XMLElement* offsetElement = doc->NewElement("Offset");
	offsetElement->SetAttribute( "x", offset.x );
	offsetElement->SetAttribute( "y", offset.y );
	offsetElement->SetAttribute( "z", offset.z );

	tinyxml2::XMLElement* colorElement = doc->NewElement("Color");
	colorElement->SetAttribute( "x", color.x );
	colorElement->SetAttribute( "y", color.y );
	colorElement->SetAttribute( "z", color.z );

	element->LinkEndChild( offsetElement );
	element->LinkEndChild( colorElement );

	switch( colliderType )
	{
		case COLLIDER_SPHERE:
		{
			tinyxml2::XMLElement* radiusElement = doc->NewElement("Radius");
			radiusElement->SetAttribute( "r", this->sphereColider->getRadius() );

			element->LinkEndChild( radiusElement );
		} break;

		case COLLIDER_AABB:
		{
			tinyxml2::XMLElement* minPosElement = doc->NewElement("MinPos");
			minPosElement->SetAttribute( "x", abbColider->getMinPos().x - this->position.x );
			minPosElement->SetAttribute( "y", abbColider->getMinPos().y - this->position.y);
			minPosElement->SetAttribute( "z", abbColider->getMinPos().z - this->position.z);

			tinyxml2::XMLElement* maxPosElement = doc->NewElement("MaxPos");
			maxPosElement->SetAttribute( "x", abbColider->getMaxPos().x - this->position.x);
			maxPosElement->SetAttribute( "y", abbColider->getMaxPos().y - this->position.y);
			maxPosElement->SetAttribute( "z", abbColider->getMaxPos().z - this->position.z);

			element->LinkEndChild( minPosElement );
			element->LinkEndChild( maxPosElement );
		} break;

		case COLLIDER_OBB:
		{

			tinyxml2::XMLElement* rotationElement = doc->NewElement("Rotation");
			rotationElement->SetAttribute("x", this->rotation.x);
			rotationElement->SetAttribute("y", this->rotation.y);
			rotationElement->SetAttribute("z", this->rotation.z);

			tinyxml2::XMLElement* halfLengthElement = doc->NewElement("HalfLengths");
			halfLengthElement->SetAttribute( "x", this->obbColider->getHalfLengths().x);
			halfLengthElement->SetAttribute( "y", this->obbColider->getHalfLengths().y);
			halfLengthElement->SetAttribute( "z", this->obbColider->getHalfLengths().z);

			element->LinkEndChild(rotationElement);
			element->LinkEndChild( halfLengthElement );
		} break;

		case COLLIDER_RAY:
		{
			tinyxml2::XMLElement* directionElement = doc->NewElement("Direction");
			directionElement->SetAttribute( "x", this->rayColider->getDirection().x );
			directionElement->SetAttribute( "y", this->rayColider->getDirection().y);
			directionElement->SetAttribute( "z", this->rayColider->getDirection().z);

			element->LinkEndChild( directionElement );
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
	//static OBBCollider* colider = new OBBCollider();
	LevelTransform* transform = parent->getComponent<LevelTransform>();
	position = transform->getTransformRef()->getPos() + this->offset;
	
	if (transform) {

		switch (colliderType) {
		case COLLIDER_SPHERE:
			this->sphereColider->setPos(position);
			this->sphereColider->setRadius(sphereRadius);
			break;
		case COLLIDER_AABB: 
			this->abbColider->setPos(this->position);
			this->abbColider->setMinPos(this->aabbMinPos);
			this->abbColider->setMaxPos(this->aabbMaxPos);
			
			break;
		case COLLIDER_OBB:
			totalRot = transform->getTransformRef()->getRotation() + rotation;// +transform->getTransformRef()->getLookAt();// +this->rotation;
			scale = transform->getTransformRef()->getScale();
			this->obbColider->setPos(this->position);
			//this->obbColider->setXAxis(this->xAxis);
			//this->obbColider->setYAxis(this->yAxis);
			//this->obbColider->setZAxis(this->zAxis);
			if(parent->getExportType() == EXPORT_COLLIDER)
				obbColider->setZAxis(glm::normalize(transform->getTransformRef()->getLookAt()));
			else {
				obbColider->setXAxis({ 1,0,0 });
				obbColider->rotateAroundX(totalRot.x);
				obbColider->rotateAroundY(totalRot.y);
				obbColider->rotateAroundZ(totalRot.z);
			}
			
			obbColider->setXHalfLength(halfLengths.x * scale.x);
			obbColider->setYHalfLength(halfLengths.y * scale.y);
			obbColider->setZHalfLength(halfLengths.z * scale.z);
			//glm::rotate(glm::vec3(0, 0, 1), transform->getTransformRef()->getRotation());

			
			break;
		case COLLIDER_RAY: 
			this->rayColider->setPos(this->position);
			this->rayColider->setDirection(this->rayDirection);
			break;
		}
		
		//colider->setPos(position);
		//glm::rotate(glm::vec3(0, 0, 1), transform->getTransformRef()->getRotation());
		//colider->setXAxis({ 1,0,0 });
		
		//colider->rotateAroundX(transform->getTransformRef()->getRotation().x);
		//colider->rotateAroundY(transform->getTransformRef()->getRotation().y);
		//colider->rotateAroundZ(transform->getTransformRef()->getRotation().z);
		//colider->setSize(halfLengths.x, halfLengths.y, halfLengths.z);
		//s_debugger->drawOBB(colider->getPos(), colider->getXAxis(), colider->getYAxis(), colider->getZAxis(), colider->getHalfLengths(), { 1,0,0 });
	}

	switch( colliderType )
	{
		
		case COLLIDER_SPHERE: s_debugger->drawSphere( this->sphereColider->getPos(), this->sphereColider->getRadius(), color ); break;
		case COLLIDER_AABB: s_debugger->drawAABB( this->abbColider->getMinPos(), this->abbColider->getMaxPos(), color ); break;
		case COLLIDER_OBB: s_debugger->drawOBB(this->obbColider->getPos(), this->obbColider->getXAxis(), this->obbColider->getYAxis(),
			this->obbColider->getZAxis(), this->obbColider->getHalfLengths(), color ); break;
		case COLLIDER_RAY: s_debugger->drawRay(this->rayColider->getPosition(), this->rayColider->getDirection(), 10000.f, color ); break;
		default:
			std::cout << "WARNING: Colider doesnt have type!" << std::endl;
			break;
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
	
	TwAddVarRW( bar, "coliderOffset", LevelUI::TW_TYPE_VECTOR3F(), &offset, "label='Offset:'" );

	if(this->parentCollider == nullptr)
		TwAddVarRW(bar, "coliderLayer", TW_TYPE_INT16, &layer, "label='Layer:'");

	
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
			//TwAddVarRW( bar, "obbColliderXAxis", LevelUI::TW_TYPE_VECTOR3F(), &xAxis, "label='X-Axis:'" );
			//TwAddVarRW( bar, "obbColliderYAxis", LevelUI::TW_TYPE_VECTOR3F(), &yAxis, "label='Y-Axis:'" );
	
			//TwAddVarRW( bar, "obbColliderZAxis", LevelUI::TW_TYPE_VECTOR3F(), &zAxis, "label='Z-Axis:'" );
			TwAddVarRW( bar, "obbColliderHalfLengths", LevelUI::TW_TYPE_VECTOR3F(), &halfLengths, "label='Half lengths:'" );

			TwAddVarRW(bar, "coliderRotation", LevelUI::TW_TYPE_VECTOR3F(), &rotation, "label='Rotation:'");

			break;

		case COLLIDER_RAY:
			TwAddVarRW( bar, "rayDirection", LevelUI::TW_TYPE_VECTOR3F(), &rayDirection, "label='Direction:'" );
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