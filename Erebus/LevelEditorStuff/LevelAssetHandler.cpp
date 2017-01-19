#include "LevelAssetHandler.h"

LevelAssetHandler* LevelAssetHandler::g_instance = nullptr;

LevelAssetHandler::LevelAssetHandler()
	: selectedPrefab( -1 )
{
}

LevelAssetHandler::~LevelAssetHandler()
{
}

LevelAssetHandler* LevelAssetHandler::getInstance()
{
	if( g_instance == nullptr )
		g_instance = new LevelAssetHandler();
	return g_instance;
}

void LevelAssetHandler::load()
{
	models.clear();

	loadAssets( &prefabs, "LevelEditorStuff/Resources/ActorsXML" );
	loadAssets( &models, "Models", ".model" );
	loadAssets( &textures, "Textures" );

	updateAssetsBar();
}

void LevelAssetHandler::loadAssets( std::vector<std::string>* container, std::string folder, std::string filter )
{
	std::string finalFolder = folder + "\\*";

	WIN32_FIND_DATAA findData;
	HANDLE fileHandle = FindFirstFileA( finalFolder.c_str(), &findData );
	if( fileHandle != INVALID_HANDLE_VALUE )
	{
		do
		{
			int len = strlen( findData.cFileName );
			if( len > 2 ) // skip . and ..
			{
				int dotIndex = -1;
				for( int i=len-1; i>0 && dotIndex < 0; i-- )
				{
					if( findData.cFileName[i] == '.' )
						dotIndex = i;
				}

				if( dotIndex > 0 )
				{
					if( filter.compare("*") == 0 || filter.compare(findData.cFileName+dotIndex) == 0 )
					{
						//std::string finalName = folder + "\\" + findData.cFileName;
						std::string assetName( findData.cFileName, dotIndex );
						container->push_back( assetName );
					}
				}
			}
		} while( FindNextFileA( fileHandle, &findData ) );
	}
}

void LevelAssetHandler::updateBars()
{
	updateAssetsBar();
}

void LevelAssetHandler::updateAssetsBar()
{
	TwRemoveAllVars( assetsBar->getBar() );

	prefabSelection.clear();
	prefabSelectionIndices.clear();

	for( int i=0; i<prefabs.size(); i++ )
	{
		prefabSelection.push_back(false);
		prefabSelectionIndices.push_back(i);
	}

	for( int i=0; i<prefabs.size(); i++ )
	{
		//TwAddButton( assetsBar->getBar(), prefabs[i].c_str(), onSelectPrefab, &prefabs[i], "group='Prefabs'" );
		int* ptr = &prefabSelectionIndices[i];
		TwAddVarCB( assetsBar->getBar(), prefabs[i].c_str(), TW_TYPE_BOOLCPP, onSetPrefab, onGetPrefab, &prefabSelectionIndices[i] , "group='Prefabs'" );
	}
	TwDefine( "Assets/Prefabs opened=false" );

	prefabSelection[0] = true;
	selectedPrefab = 0;

	for( int i=0; i<models.size(); i++ )
		TwAddButton( assetsBar->getBar(), models[i].c_str(), onSelectAsset, &models[i], "group='Models'" );
	TwDefine( "Assets/Models opened=false" );

	for( int i=0; i<textures.size(); i++ )
		TwAddButton( assetsBar->getBar(), textures[i].c_str(), onSelectAsset, NULL, "group='Textures'" );
	TwDefine( "Assets/Textures opened=false" );
}

void LevelAssetHandler::selectAsset( std::string model )
{
	selectedModel = model;
	showContextBar( model );
}

/*void LevelAssetHandler::selectPrefab( std::string prefab )
{
	selectedModel = "";
	hideContextBar();

	if( selectedPrefab >= 0 )
		prefabSelection[selectedPrefab] = false;

	int index = -1;
	for( int i=0; i<prefabs.size() && index < 0; i++ )
		if( prefabs[i] == prefab )
			index = i;

	if( index >= 0 )
		prefabSelection[selectedPrefab] = true;

	selectedPrefab = index;
}*/

void LevelAssetHandler::showContextBar( std::string model )
{
	contextBarVisible = true;

	int xpos = (int)(assetsBar->getPos().x - contextBar->getSize().x);
	int ypos = (int)inputs->getMousePos().y-32;
	char buffer[128] = {};
	sprintf( buffer, "%s visible=true position='%d %d' label='%s'", contextBar->getName().c_str(), xpos, ypos, model.c_str() );
	TwDefine( buffer );
}

void LevelAssetHandler::hideContextBar()
{
	char buffer[128] = {};
	sprintf( buffer, "%s visible=false", contextBar->getName().c_str() );
	TwDefine( buffer );
}

void LevelAssetHandler::addToActor()
{
	if( selectedModel.size() > 0 && selectedModel != "" )
	{
		LevelActor* selectedActor = LevelActorHandler::getInstance()->getSelected();
		if( selectedActor )
		{
			LevelModel* modelComponent = selectedActor->getComponent<LevelModel>();
			if( modelComponent )
			{
				modelComponent->setModelName( selectedModel );
			}
		}
	}

	selectedModel = "";
}

void LevelAssetHandler::selectPrefab( int index )
{
	if( selectedPrefab >= 0 )
		prefabSelection[selectedPrefab] = false;
	prefabSelection[index] = true;
	selectedPrefab = index;

	hideContextBar();
}

int LevelAssetHandler::getSelectedPrefabIndex()
{
	return selectedPrefab;
}

const std::string& LevelAssetHandler::getSelectedPrefab()
{
	return prefabs[selectedPrefab];
}

void LevelAssetHandler::setAssets( Importer::Assets* a )
{
	assets = a;
}

void LevelAssetHandler::setInputs( Inputs* i )
{
	inputs = i;
}

void LevelAssetHandler::setTweakBars( TweakBar* ab, TweakBar* cb )
{
	assetsBar = ab;
	contextBar = cb;

	TwRemoveAllVars( contextBar->getBar() );
	TwAddButton( contextBar->getBar(), "Add to Actor", onAdd, NULL, NULL );
	TwAddButton( contextBar->getBar(), "Close", onClose, NULL, NULL );
	TwDefine( "AssetsContext visible=false iconifiable=false fontresizable=false contained=true" );

	contextBarVisible = false;
}

void TW_CALL LevelAssetHandler::onSetPrefab( const void* value, void* clientData )
{
	int index = *(int*)clientData;
	LevelAssetHandler::getInstance()->selectPrefab( index );
}

void TW_CALL LevelAssetHandler::onGetPrefab( void* value, void* clientData )
{
	int index = *(int*)clientData;
	*(bool*)value = ( index == LevelAssetHandler::getInstance()->getSelectedPrefabIndex() );
}

void TW_CALL LevelAssetHandler::onSelectAsset( void* args )
{
	std::string* str = (std::string*)args;
	//LevelAssetHandler::getInstance()->showContextBar( *str );
	LevelAssetHandler::getInstance()->selectAsset( *str );
}

void TW_CALL LevelAssetHandler::onAdd( void* args )
{
	LevelAssetHandler::getInstance()->addToActor();
	LevelAssetHandler::getInstance()->hideContextBar();
}

void TW_CALL LevelAssetHandler::onClose( void* args )
{
	LevelAssetHandler::getInstance()->hideContextBar();
}