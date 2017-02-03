#include "LevelParticleSystem.h"

const char* LevelParticleSystem::name = "LevelParticleSystem";
const char* LevelParticleSystem::baseParticleSystem = "fireballPart";
LevelParticleSystem::LevelParticleSystem() : offset(0), alive(true) {
	this->systemRef = nullptr;
	this->systemRef = LevelParticleHandler::getInstance()->addParticleSystem(baseParticleSystem);
	updateActive();
	this->particleFile = baseParticleSystem;
	this->particleFileLocation = LevelParticleHandler::getInstance()->getFullParticleLocation(this->particleFile);
}
LevelParticleSystem::~LevelParticleSystem() {
	if (this->systemRef != nullptr)
		LevelParticleHandler::getInstance()->deleteParticleSystem(this->systemRef);
}
void LevelParticleSystem::initialize(tinyxml2::XMLElement* element) {
	this->particleFile = element->FirstChildElement("ParticleLocation")->Attribute("Location");
	this->offset.x = std::stof(element->FirstChildElement("Offset")->Attribute("x"));
	this->offset.y = std::stof(element->FirstChildElement("Offset")->Attribute("y"));
	this->offset.z = std::stof(element->FirstChildElement("Offset")->Attribute("z"));

	this->alive = std::atoi(element->FirstChildElement("Alive")->Attribute("IsAlive"));
}
void LevelParticleSystem::update(float deltaTime) {

}

void LevelParticleSystem::assignParticleSystem(std::string particleLocation) {
	if (this->systemRef != nullptr)
		LevelParticleHandler::getInstance()->deleteParticleSystem(this->systemRef);
	this->systemRef = LevelParticleHandler::getInstance()->addParticleSystem(particleLocation);
	this->setWorldPos(this->parent->getComponent<LevelTransform>());
	this->particleFile = particleLocation;
	this->particleFileLocation = LevelParticleHandler::getInstance()->getFullParticleLocation(this->particleFile);

	updateActive();
}

void LevelParticleSystem::updateActive()
{
	if (this->systemRef != nullptr) {
		if (this->alive)
			this->systemRef->activate();
		else
			this->systemRef->deActivate();
	}

}

std::string LevelParticleSystem::getName() {
	return LevelParticleSystem::name;
}
tinyxml2::XMLElement* LevelParticleSystem::toXml(tinyxml2::XMLDocument* doc) {
	tinyxml2::XMLElement* element = doc->NewElement(LevelParticleSystem::name);
	
	tinyxml2::XMLElement* fileElement = doc->NewElement("ParticleLocation");
	fileElement->SetAttribute("Location", this->particleFile.c_str());

	tinyxml2::XMLElement* positionElement = doc->NewElement("Offset");
	positionElement->SetAttribute("x", this->offset.x);
	positionElement->SetAttribute("y", this->offset.y);
	positionElement->SetAttribute("z", this->offset.z);

	tinyxml2::XMLElement* aliveElement = doc->NewElement("Alive");
	aliveElement->SetAttribute("IsAlive", (int)alive);




	element->LinkEndChild(positionElement);
	element->LinkEndChild(aliveElement);
	element->LinkEndChild(fileElement);
	

	return element;
}
std::string LevelParticleSystem::toLua(std::string name) {
	std::stringstream ss;
	std::string fullName = name + ".particle";
	ss<<fullName << " = Particle.Bind("<<'"' << particleFileLocation << '"'<<")" << std::endl;
	ss << "Particle.SetPosition(" << fullName << ", " << this->systemRef->systemPos.x << ", " 
		<< this->systemRef->systemPos.y << ", " << this->systemRef->systemPos.z << ")" << std::endl;
	ss << "Particle.SetAlive("<<fullName<<")" << std::endl;

	return ss.str();
}


void TW_CALL setAliveCB(const void *value, void *s /*clientData*/)
{
	const bool *srcPtr = static_cast<const bool *>(value);
	LevelParticleSystem* particleSystem = (LevelParticleSystem*)s;
	particleSystem->swapAlive();
	LevelActorHandler::getInstance()->updateTweakBars();

}

void TW_CALL getAliveCB(void *value, void *s /*clientData*/)
{
	LevelParticleSystem* particleSystem = (LevelParticleSystem*)s;
	*(bool*)value = particleSystem->getAlive();
}

void LevelParticleSystem::swapAlive() {
	this->alive = !this->alive;
	updateActive();
}

void LevelParticleSystem::postInitialize() {
	this->parent->getComponent<LevelTransform>()->addListener(this);
	assignParticleSystem(this->particleFile);
}

//TODO!!! ADD CB FOR ALIVE!!!!
void LevelParticleSystem::setTwStruct(TwBar * twBar) {
	TwAddVarRO(twBar, "ParticleName", TW_TYPE_STDSTRING, (void*)&this->particleFile, NULL);
	TwAddVarRW(twBar, "Offset", LevelUI::TW_TYPE_VECTOR3F(), (void*)&this->offset, NULL);
	TwAddVarCB(twBar, "Alive", TW_TYPE_BOOL16, setAliveCB, getAliveCB, (void*)this, NULL);
	//TwAddVarRW(twBar, "Alive", LevelUI)
	//TwAddVarRW(tempBar, "Color", LevelUI::TW_TYPE_VECTOR3F(), (void*)&this->light->color, NULL);
}

void LevelParticleSystem::setWorldPos(LevelTransform* myTransform) {
	this->systemRef->setSystemPos(myTransform->getChangeTransformRef()->getPos() + this->offset);
}

void LevelParticleSystem::callListener(LevelActorComponent* component) {
	if(this->systemRef != nullptr)
		setWorldPos(((LevelTransform*)component));
	//std::cout << "NEW WORLD POS"<<glm::to_string(worldPos) << std::endl;
}

Gear::ParticleSystem* LevelParticleSystem::getParticleSystemRef() {
	return this->systemRef;
}

void LevelParticleSystem::setAlive(bool val) {
	this->alive = val;
	updateActive();
}
bool LevelParticleSystem::getAlive(){
	return this->alive;
}