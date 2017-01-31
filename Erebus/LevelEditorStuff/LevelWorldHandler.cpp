#include "LevelWorldHandler.h"
LevelWorldHandler* LevelWorldHandler::g_instance = nullptr;

LevelWorldHandler* LevelWorldHandler::getInstance() {
	if (g_instance == nullptr)
		g_instance = new LevelWorldHandler();
	return g_instance;
}
void LevelWorldHandler::deleteInstance() {
	if (g_instance != nullptr)
		delete g_instance;
}


LevelWorldHandler::LevelWorldHandler()
	: elapsedTime( 0.0f ), currentAutosave( 0 )
{

}
LevelWorldHandler::~LevelWorldHandler() {

}

void LevelWorldHandler::addStuff(Gear::GearEngine * engineRef, Assets * assetsRef, LevelUI * levelUiRef, Window * windowRef, Inputs * inputRef, Camera * cameraRef, Debug* debugRef)
{
	this->engineRef = engineRef;
	this->assetsRef = assetsRef;
	this->levelUiRef = levelUiRef;
	this->windowRef = windowRef;
	this->inputRef = inputRef;
	this->cameraRef = cameraRef;
	this->debugRef = debugRef;
}

void LevelWorldHandler::resetWorld()
{
	
	LevelActorFactory::resetInstance();
	LevelActorHandler::resetInstance();
	LevelAssetHandler::resetInstance();
	LevelActionHandler::resetInstance();
	LevelLightHandler::resetInstance();
	LevelTransformHandler::resetInstance(engineRef);
	LevelModelHandler::resetInstance(LevelTransformHandler::getInstance(), engineRef, assetsRef);
	LevelBrushHandler::resetInstance();

	this->levelUiRef->reset(windowRef->getGlfwWindow());

	LevelAssetHandler::getInstance()->setAssets(assetsRef);
	LevelAssetHandler::getInstance()->setInputs(inputRef);
	LevelAssetHandler::getInstance()->load();

	LevelActionHandler::getInstance()->setupGizmo(debugRef, cameraRef, inputRef);

	//levelGizmo = new LevelGizmo();
	//levelGizmo->addVariables(Debugger::getInstance(), this->camera, this->inputs);
	LevelLightHandler::getInstance()->addDebugger(debugRef);


	//engineRef->queueParticles(ps);
	engineRef->queueDynamicModels(LevelModelHandler::getInstance()->getModels());
	engineRef->queueAnimModels(LevelModelHandler::getInstance()->getAnimatedModels());
}

void LevelWorldHandler::updateAutosave( float deltaTime )
{
	elapsedTime += deltaTime;
	if( elapsedTime >= LEVEL_AUTOSAVE_TIME )
	{
		elapsedTime = 0.0f;

		std::string autosaveName = "LevelEditorStuff/Resources/AutosaveXML/Autosave_" + std::to_string( currentAutosave+1 ) + ".xml";

		LevelActorFactory::getInstance()->saveWorld( autosaveName );

		currentAutosave = (++currentAutosave) % LEVEL_MAX_AUTOSAVES;
	}
}

int LevelWorldHandler::findLastAutosave()
{
	int lastAutosave = 0;

	uint64_t times[LEVEL_MAX_AUTOSAVES] = {};

	WIN32_FIND_DATAA findData;
	HANDLE file = FindFirstFileA( "LevelEditorStuff/Resources/AutosaveXML/*", &findData );
	int curFile = 0;
	do
	{
		times[curFile] = (uint64_t)findData.ftLastWriteTime.dwHighDateTime << 32 | findData.ftLastWriteTime.dwLowDateTime;
	} while( FindNextFileA( file, &findData ) );

	uint64_t newest = times[0];
	for( int i=1; i < curFile; i++ )
	{
		if( times[i] > newest )
		{
			newest = times[i];
			lastAutosave = i;
		}
	}

	return lastAutosave;
}

std::string LevelWorldHandler::getLastAutosaveFile()
{
	int lastAutosave = findLastAutosave();
	std::string result = "LevelEditorStuff/Resources/AutosaveXML/" + std::to_string(lastAutosave+1) + ".xml";
	return result;
}