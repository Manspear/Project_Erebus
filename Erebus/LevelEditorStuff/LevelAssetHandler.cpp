#include "LevelAssetHandler.h"

LevelAssetHandler* LevelAssetHandler::g_instance = nullptr;

LevelAssetHandler::LevelAssetHandler()
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

	selectionIndices.clear();

	TwAddButton( assetsBar->getBar(), "Models:", NULL, NULL, NULL );
	for( int i=0; i<models.size(); i++ )
	{
		TwAddButton( assetsBar->getBar(), models[i].c_str(), onSelectAsset, &models[i], NULL );
	}

	TwAddSeparator( assetsBar->getBar(), "sep1", NULL );

	TwAddButton( assetsBar->getBar(), "Textures:", NULL, NULL, NULL );
	for( int i=0; i<textures.size(); i++ )
		TwAddButton( assetsBar->getBar(), textures[i].c_str(), onSelectAsset, NULL, NULL );
}

void LevelAssetHandler::selectAsset( std::string model )
{
	selectedModel = model;

	showContextBar( model );
}

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