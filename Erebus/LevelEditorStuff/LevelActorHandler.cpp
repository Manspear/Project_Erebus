#include "LevelActorHandler.h"

LevelActorHandler* LevelActorHandler::g_instance = nullptr;

void TW_CALL setComponentCallback(const void* value, void* clientData)
{
	LevelUI::DiffComponents NewComp = *(LevelUI::DiffComponents*)value;
	LevelActorHandler::getInstance()->setSelectedComponentCB(NewComp);
	
}
void TW_CALL getComponentCallback(void* value, void* clientData)
{
	LevelUI::DiffComponents index = *(LevelUI::DiffComponents*)clientData;
	*(LevelUI::DiffComponents*)value = LevelActorHandler::getInstance()->getSelectedComponentCB(index);
}

LevelUI::DiffComponents LevelActorHandler::getSelectedComponentCB(int index)
{
	return selectedComponent;
}


void LevelActorHandler::setSelectedComponentCB(LevelUI::DiffComponents index) {
	if (index != 0 && this->selectedActor)
	{
		this->selectedComponent = index;
		LevelActorComponent* c = LevelActorFactory::getInstance()->getNewComponent(LevelUI::componentLinker[index]);
		if (!selectedActor->addComponent(c)) {
			c->postInitialize();
			updateActorBar();
			
		}
		else
			delete c;
		this->selectedComponent = LevelUI::SELECT_COMPONENT;
		
	}
}
LevelActorHandler::LevelActorHandler()
	: worldBar( nullptr ), actorBar( nullptr ), selectedActor( nullptr )
{
	this->selectedComponent = LevelUI::SELECT_COMPONENT;
}

LevelActorHandler::~LevelActorHandler()
{
	for (size_t i = 0; i < actors.size(); i++)
	{
		delete actors[i];
	}
}

LevelActorHandler* LevelActorHandler::getInstance()
{
	if( g_instance == nullptr )
		g_instance = new LevelActorHandler();
	return g_instance;
}

void LevelActorHandler::addActor( LevelActor* actor )
{
	actor->setActorDisplayName(this->tryActorName(actor->getActorDisplayName()));
	actors.insert( std::pair<unsigned int,LevelActor*>( actor->id, actor ) );
	updateTweakBars();
}

void LevelActorHandler::removeActor( LevelActor* actor )
{
	removeActor( actor->id );
}

void LevelActorHandler::removeActor( unsigned int id )
{
	LevelActor* actor = actors.at(id);

	actors.erase( id );

	delete actor;
	selectedActor = nullptr;

	updateTweakBars();
}

void LevelActorHandler::removeSelectedActor()
{
	removeActor( selectedActor );
}

void LevelActorHandler::updateActors()
{
	for( ActorIT it = actors.begin(); it != actors.end(); it++ )
		it->second->update();
}

void LevelActorHandler::setSelected( unsigned int id )
{
	ActorIT it = actors.find( id );
	if( it != actors.end() )
	{
		selectedActor = it->second;
	}
	else
		selectedActor = nullptr;

	updateActorBar();
}

void LevelActorHandler::setSelected( LevelActor* actor )
{
	setSelected( actor->id );
}

void LevelActorHandler::setTweakBars( TweakBar* world, TweakBar* actor )
{
	worldBar = world;
	actorBar = actor;

	updateTweakBars();
}

LevelActor* LevelActorHandler::getSelected()
{
	return selectedActor;
}

std::map<unsigned int, LevelActor*>& LevelActorHandler::getActors()
{
	return actors;
}

void LevelActorHandler::updateTweakBars()
{
	if( worldBar )
		updateWorldBar();
	if( actorBar )
		updateActorBar();
}

void LevelActorHandler::updateWorldBar()
{
	TwRemoveAllVars( worldBar->getBar() );
	
	std::map<std::string,int> numActorsByType;
	for( ActorIT it = actors.begin(); it != actors.end(); it++ )
	{
		std::string type = it->second->getActorType();
		if( type.empty() )
			type = "None";

		std::map<std::string,int>::iterator mapIT = numActorsByType.find( type );
		if( mapIT == numActorsByType.end() )
			numActorsByType.insert(std::pair<std::string,int>( type, 1 ));
		else
			mapIT->second++;
	}

	for( ActorIT it = actors.begin(); it != actors.end(); it++ )
	{
		std::string displayName = it->second->getActorDisplayName();
		std::string type = it->second->getActorType();

		char buf[64] = {};
		if( !type.empty() )
			sprintf_s( buf, "label='%s' group='%s (%d)'", displayName.c_str(), type.c_str(), numActorsByType[type] );
		else
			sprintf_s( buf, "label='Actor' group='None (%d)'", numActorsByType["None"] );
		TwAddButton( worldBar->getBar(), NULL, onActorSelected, it->second, buf );
	}
}

void LevelActorHandler::updateActorBar()
{
	TwRemoveAllVars( actorBar->getBar() );
	if( selectedActor )
	{
		selectedActor->setAsSelectedActor(actorBar->getBar());
		TwAddVarCB(actorBar->getBar(), "AddComponent", LevelUI::TW_TYPE_COMPONENTS(), setComponentCallback, getComponentCallback, (void*)&selectedComponent, "label='Add Component'");
		TwAddVarCB(actorBar->getBar(), "ExportType", LevelActor::TW_TYPE_EXPORT_TYPES(), onSetExportType, onGetExportType, selectedActor, "label='Export Type'");
		TwAddButton( actorBar->getBar(), "SavePrefab", onSavePrefab, selectedActor, "label='Save Prefab'");
		TwAddButton( actorBar->getBar(), "DeleteActor", onDelete, selectedActor, "label='Delete'" );
	}
}

void LevelActorHandler::exportToLua()
{
	FileFilter filter = { L"Lua Level File", L"*.lua" };
	fileDialog.setFilters( &filter, 1 );

	if( fileDialog.show( DIALOG_SAVE_FILE ) )
	{
		FILE* file = NULL;
		fopen_s( &file, fileDialog.getFilePath().c_str(), "w" );
		if( file )
		{
			fprintf( file, "props = {}\nheightmaps = {}\n" );

			for( ActorIT it = actors.begin(); it != actors.end(); it++ )
			{
				fprintf( file, "%s", it->second->toLua().c_str() );
			}

			fprintf( file, "--TEMP: This should probably not be hardcoded into every level?\n" );
			fprintf( file, "local widthTest = heightmaps[1].asset:GetMapWidth()\n" );
			fprintf( file, "local heightTest = heightmaps[1].asset:GetMapHeight()\n" );
			fprintf( file, "AI.SetNav(widthTest,heightTest)\n" );

			fclose( file );
		}
	}
}

void LevelActorHandler::savePrefab( LevelActor* actor )
{
	FileFilter filter = { L"XML Prefab", L"*.xml" };
	fileDialog.setFilters( &filter, 1 );

	if( fileDialog.show( DIALOG_SAVE_FILE) )
	{
		FILE* file = NULL;
		fopen_s( &file, fileDialog.getFilePath().c_str(), "w" );
		if( file )
		{
			fprintf( file, "%s", actor->toXml().c_str() );
			fclose( file );
		}
	}
}

void LevelActorHandler::onActorSelected( void* args )
{
	LevelActor* actor = (LevelActor*)args;
	LevelActorHandler::getInstance()->setSelected( actor->id );
}

void LevelActorHandler::onSavePrefab( void* args )
{
	LevelActor* actor = (LevelActor*)args;
	LevelActorHandler::getInstance()->savePrefab(actor);
}

void LevelActorHandler::onSetExportType( const void* value, void* clientData )
{
	int type = *(int*)value;
	LevelActor* actor = (LevelActor*)clientData;
	actor->setExportType(type);
	//LevelActorHandler::updateActorBar();
}

void LevelActorHandler::onGetExportType( void* value, void* clientData )
{
	LevelActor* actor = (LevelActor*)clientData;
	*(int*)value = actor->getExportType();
}

void LevelActorHandler::onDelete( void* args )
{
	LevelActor* actor = (LevelActor*)args;
	LevelActorHandler::getInstance()->removeActor( actor );
}

const std::string LevelActorHandler::tryActorName(std::string name) {
	std::string currentName = name;
	int currentActorIndex = 0;
	bool foundNew = true;
	while (foundNew) {
		foundNew = false;
		for (ActorIT it = actors.begin(); it != actors.end(); it++) {
			
			if (it->second->getActorDisplayName() == currentName) {
				currentActorIndex++;
				currentName = name + std::to_string(currentActorIndex);
				foundNew = true;
				it == actors.end();
			}
		}
	}

		
	return currentName;
}

void LevelActorHandler::deleteInstance()
{
	if (g_instance != nullptr)
		delete g_instance;
}

void LevelActorHandler::resetInstance()
{
	if (g_instance != nullptr)
		delete g_instance;
	g_instance = new LevelActorHandler();
}
