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
	this->coliderID = 0;
	//this->coliderID = LevelColiderHandler::getInstance()->getNewID();
	this->parentColiderID = 0;
	this->layer = 0;
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

	child = element->FirstChildElement("IDs");
	this->coliderID = child->IntAttribute("ID");
	if (LevelColiderHandler::getInstance()->getDoesIDExists(this->coliderID))
		this->coliderID = LevelColiderHandler::getInstance()->getNewID();
	this->parentColiderID = child->IntAttribute("parentID");


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
	this->updateLayer();
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

	if (this->parentColiderID != 0) {
		this->parentCollider = LevelColiderHandler::getInstance()->getLoadColider(this->parentColiderID, this);
	}

	LevelColiderHandler::getInstance()->checkIfHighestID(this->coliderID);
		
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

	tinyxml2::XMLElement* idElement = doc->NewElement("IDs");
	idElement->SetAttribute("ID", this->coliderID);
	idElement->SetAttribute("parentID", this->parentColiderID);

	element->LinkEndChild( offsetElement );
	element->LinkEndChild( colorElement );
	element->LinkEndChild(idElement);
	scale = parent->getComponent<LevelTransform>()->getTransformRef()->getScale();
	switch( colliderType )
	{
		case COLLIDER_SPHERE:
		{
			tinyxml2::XMLElement* radiusElement = doc->NewElement("Radius");
			radiusElement->SetAttribute( "r", this->sphereColider->getRadius() / scale.x);

			element->LinkEndChild( radiusElement );
		} break;

		case COLLIDER_AABB:
		{
			tinyxml2::XMLElement* minPosElement = doc->NewElement("MinPos");
			minPosElement->SetAttribute( "x", (abbColider->getMinPos().x - this->position.x)/ scale.x);
			minPosElement->SetAttribute( "y", (abbColider->getMinPos().y - this->position.y)/ scale.y);
			minPosElement->SetAttribute( "z", (abbColider->getMinPos().z - this->position.z)/ scale.z);

			tinyxml2::XMLElement* maxPosElement = doc->NewElement("MaxPos");
			maxPosElement->SetAttribute( "x", (abbColider->getMaxPos().x - this->position.x) / scale.x);
			maxPosElement->SetAttribute( "y", (abbColider->getMaxPos().y - this->position.y) / scale.y);
			maxPosElement->SetAttribute( "z", (abbColider->getMaxPos().z - this->position.z) / scale.z);

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
			halfLengthElement->SetAttribute( "x", this->obbColider->getHalfLengths().x / scale.x);
			halfLengthElement->SetAttribute( "y", this->obbColider->getHalfLengths().y / scale.y);
			halfLengthElement->SetAttribute( "z", this->obbColider->getHalfLengths().z / scale.z);

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

std::string LevelCollider::printChildren(std::string name, std::string depth, int &globalDepth, int parentIndex) {
	this->updateLayer();
	using namespace std;

	int myIndex = globalDepth + 1;


	string luaText = "";

	std::string additionIndexName = "";
	if (parentIndex != 0)
		additionIndexName = to_string(parentIndex);
	

	std::string fullName = "";
	std::string parentFullName = "";

	parentFullName = name + additionIndexName + ".collider";

	
	this->updateLayer();

	for (size_t i = 0; i < this->childColliders.size(); i++)
	{
		glm::vec3 childScale = this->childColliders[i]->parent->getComponent<LevelTransform>()->getTransformRef()->getScale();
		stringstream ss;
		globalDepth++;
		int myIndex = globalDepth;
		std::string tableName = name + std::to_string(myIndex);
		fullName = name + std::to_string(myIndex) + ".collider";
		ss << name + std::to_string(myIndex) << " = {}"<<endl;

		ss << fullName << " = ";
		glm::vec3 totalOffset = (this->childColliders[i]->parent->getComponent<LevelTransform>()->getTransformRef()->getPos() + this->childColliders[i]->offset) -
			(this->parent->getComponent<LevelTransform>()->getTransformRef()->getPos() + this->offset);
		glm::vec3 realMin, realMax;
		switch (colliderType) {
		case COLLIDER_SPHERE:
			ss << "SphereCollider.Create(-1)" << endl;
			ss << fullName << ":SetOffset(" << totalOffset.x << "," << totalOffset.y << "," << totalOffset.z << ")" << endl;
			ss << fullName << ":SetRadius(" << this->childColliders[i]->sphereColider->getRadius() / childScale.x << ")" << endl;
			break;

		case COLLIDER_AABB:
			realMin = this->childColliders[i]->abbColider->getMinPos() - 
				childColliders[i]->parent->getComponent<LevelTransform>()->getTransformRef()->getPos();
			realMax = this->childColliders[i]->abbColider->getMaxPos() -
				childColliders[i]->parent->getComponent<LevelTransform>()->getTransformRef()->getPos();
			ss << "AABBCollider.Create(-1)" << endl;
			ss << fullName << ":SetOffset(" << totalOffset.x << "," << totalOffset.y << "," << totalOffset.z << ")" << endl;
			ss << fullName << ":SetMinPos(" << realMin.x / childScale.x << "," <<
				realMin.y / childScale.y << "," << realMin.z / childScale.z<< ")" << endl;
			ss << fullName << ":SetMaxPos(" << realMax.x / childScale.x << "," <<
				realMax.y / childScale.y << "," << realMax.z / childScale.z << ")" << endl;
			break;
		case COLLIDER_OBB:
			ss << "OBBCollider.Create(-1)" << endl;
			ss << fullName << ":SetOffset(" << totalOffset.x << "," << totalOffset.y << "," << totalOffset.z << ")" << endl;

			ss << fullName << ":SetZAxis(" << this->childColliders[i]->obbColider->getZAxis().x << "," <<
				this->childColliders[i]->obbColider->getZAxis().y << "," << this->childColliders[i]->obbColider->getZAxis().z << ")" << endl;

			ss << fullName << ":SetHalfLengths(" << this->childColliders[i]->obbColider->getHalfLengths().x / childScale.x << ","
				<< this->childColliders[i]->obbColider->getHalfLengths().y / childScale.y << "," << this->childColliders[i]->obbColider->getHalfLengths().z / childScale.z << ")" << endl;
			break;
		case COLLIDER_RAY:
			ss << "RayCollider.Create(" << name << ".transformID)" << endl;
			ss << fullName << ":SetOffset(" << offset.x << "," << offset.y << "," << offset.z << ")" << endl;
			ss << fullName << ":SetDirection(" << this->rayColider->getDirection().x << "," <<
				this->rayColider->getDirection().y << "," << this->rayColider->getDirection().z << ")" << endl;
			break;
		}
		

		ss << parentFullName << ":AddChild(" << fullName<<")" << endl;
		ss << "table.insert(colliders," << tableName << ")"<<endl;
		
		luaText += ss.str() + this->childColliders[i]->printChildren(name, std::to_string(globalDepth), globalDepth, myIndex);
	}

	return luaText;
}

std::string LevelCollider::toLua( std::string name )
{
	
	this->updateLayer();
	using namespace std;
	stringstream ss;

	std::string depth = "";

	std::string fullName = name + depth + ".collider";
	std::string coliderType = "";
	ss << fullName <<" = ";
	scale = parent->getComponent<LevelTransform>()->getTransformRef()->getScale();
	glm::vec3 realMin, realMax;
	if (this->parentCollider == nullptr) { // TOP PARENT
		switch (colliderType)
		{
		case COLLIDER_SPHERE:
			ss << "SphereCollider.Create("<< name <<".transformID)" << endl;
			ss << fullName << ":SetOffset(" << offset.x << "," << offset.y << "," << offset.z << ")" << endl;
			ss << fullName << ":SetRadius(" << this->sphereColider->getRadius() / scale.x << ")" << endl;
			coliderType = "AddSphere(";
			break;

		case COLLIDER_AABB:
			realMin = this->abbColider->getMinPos() -
				this->parent->getComponent<LevelTransform>()->getTransformRef()->getPos();
			realMax = this->abbColider->getMaxPos() -
				this->parent->getComponent<LevelTransform>()->getTransformRef()->getPos();
			ss << "AABBCollider.Create(temp.transformID)" << endl;
			ss << fullName << ":SetOffset(" << offset.x << "," << offset.y << "," << offset.z << ")" << endl;
			ss << fullName << ":SetMinPos(" << realMin.x / scale.x << "," <<
				realMin.y / scale.y << "," << realMin.z / scale.z << ")" << endl;
			ss << fullName << ":SetMaxPos(" << realMax.x / scale.x << "," <<
				realMax.y / scale.y << "," << realMax.z / scale.z << ")" << endl;
			coliderType = "AddAABB(";
			break;

		case COLLIDER_OBB:
			ss << "OBBCollider.Create(" << name << ".transformID)" << endl;
			
			ss << fullName << ":SetOffset(" << offset.x << "," << offset.y << "," << offset.z << ")" << endl;

			ss << fullName << ":SetZAxis(" << this->obbColider->getZAxis().x << "," <<
				this->obbColider->getZAxis().y << "," << this->obbColider->getZAxis().z << ")" << endl;

			ss << fullName << ":SetHalfLengths(" << this->obbColider->getHalfLengths().x / scale.x << ","
				<< this->obbColider->getHalfLengths().y / scale.y << "," << this->obbColider->getHalfLengths().z / scale.x<< ")" << endl;

			coliderType = "AddOBB(";
			break;

		case COLLIDER_RAY:
			ss << "RayCollider.Create(" << name << ".transformID)" << endl;
			ss << fullName << ":SetOffset(" << offset.x << "," << offset.y << "," << offset.z << ")" << endl;
			ss << fullName << ":SetDirection(" << this->rayColider->getDirection().x << "," <<
				this->rayColider->getDirection().y << "," << this->rayColider->getDirection().z << ")" << endl;
			coliderType = "AddRay(";
			break;
		}
		int gi = 0;
		ss<<printChildren(name, depth, gi, 0);
		ss << "CollisionHandler."<< coliderType << fullName << ", "<< this->layer<<")" << endl;
		for (size_t i = 1; i < gi+1; i++)
		{
			std::string tableName = name + std::to_string(i);
			ss << tableName << " = nil" << endl;
		}
		

	}
	else {//CHILD

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
			scale = transform->getTransformRef()->getScale();
			this->sphereColider->setPos(position);
			this->sphereColider->setRadius(sphereRadius * scale.x);
			break;
		case COLLIDER_AABB: 
			scale = transform->getTransformRef()->getScale();
			this->abbColider->setPos(this->position);
			this->abbColider->setMinPos(glm::vec3(this->aabbMinPos.x * scale.x, this->aabbMinPos.y * scale.y, this->aabbMinPos.z * scale.z));
			this->abbColider->setMaxPos(glm::vec3(this->aabbMaxPos.x * scale.x, this->aabbMaxPos.y * scale.y, this->aabbMaxPos.z * scale.z));
			
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
		
		case COLLIDER_SPHERE:
			s_debugger->drawSphere( this->sphereColider->getPos(), this->sphereColider->getRadius(), color );
			break;
		case COLLIDER_AABB: s_debugger->drawAABB( this->abbColider->getMinPos(), this->abbColider->getMaxPos(), color ); break;
		case COLLIDER_OBB: s_debugger->drawOBB(this->obbColider->getPos(), this->obbColider->getXAxis(), this->obbColider->getYAxis(),
			this->obbColider->getZAxis(), this->obbColider->getHalfLengths(), color ); break;
		case COLLIDER_RAY: s_debugger->drawRay(this->rayColider->getPosition(), this->rayColider->getDirection(), 10000.f, color ); break;
		default:
			std::cout << "WARNING: Colider doesnt have type!" << std::endl;
			break;
	}


		
}

static void TW_CALL setParentID(const void *value, void *s /*clientData*/)
{
	// Set: copy the value of s from AntTweakBar
	const int val = (*static_cast<const int*>(value));
	LevelCollider* actor = (LevelCollider*)s;
	
	LevelCollider* parent = LevelColiderHandler::getInstance()->getColiderWithID(val, actor);
	if (parent != nullptr) {
		actor->setParentColider(parent);
		actor->setParentColiderID(val);
		LevelActorHandler::getInstance()->updateTweakBars();
	}
	
	//actor->setParentColiderID(*srcPtr);
	//LevelActorHandler::getInstance()->updateTweakBars();

}

static void TW_CALL getParentID(void *value, void *s /*clientData*/)
{
	// Get: copy the value of s to AntTweakBar
	int *destPtr = static_cast<int *>(value);
	LevelCollider* actor = (LevelCollider*)s;
	*destPtr = actor->getParendColiderID(); // the use of TwCopyStdStringToLibrary is required here
}

void LevelCollider::addChildColider(LevelCollider* colider) {
	this->childColliders.push_back(colider);
}

LevelCollider* LevelCollider::getParentColider() {
	return this->parentCollider;
}

void LevelCollider::deleteChildColider(LevelCollider * colider)
{
	for (size_t i = 0; i < this->childColliders.size(); i++)
	{
		if (colider == this->childColliders.at(i)) {
			this->childColliders.erase(this->childColliders.begin() + i);
		}
	}

}

unsigned int LevelCollider::getParendColiderID() {
	return this->parentColiderID;
}
void LevelCollider::setParentColiderID(unsigned int ID) {
	this->parentColiderID = ID;
}

void LevelCollider::setParentColider(LevelCollider* colider) {
	this->parentCollider = colider;
}


void LevelCollider::setTwStruct( TwBar* bar )
{
	TwAddVarRO(bar, "coliderID", TW_TYPE_INT16, &this->coliderID, "");
	TwAddVarCB(bar, "coliderParent", TW_TYPE_INT32, setParentID, getParentID, this, "");

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

unsigned int LevelCollider::getColiderID()
{
	return this->coliderID;
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

void LevelCollider::updateLayer() {
	int tempLayer = 0;
	if (this->parentCollider == nullptr) {
		switch (this->parent->getExportType()) {
		case EXPORT_ENEMY:
			tempLayer = 2;
			break;
		case EXPORT_PLAYER:
			tempLayer = 1;
			break;
		case EXPORT_HEALTH_ORB:
			tempLayer = 5;
			break;
		
		case EXPORT_STATIC:
			tempLayer = 4;
			break;
		case EXPORT_COLLIDER:
			tempLayer = 4;
			break;
		}
	}
	else {
		//tempLayer = this->parentCollider->layer;
	}
	layer = tempLayer;
}