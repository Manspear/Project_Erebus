#include "LevelAssetHandler.h"
#include <strstream>

LevelAssetHandler* LevelAssetHandler::g_instance = nullptr;

LevelAssetHandler::LevelAssetHandler()
	: selectedPrefab( -1 ), assetType( ASSET_MODEL )
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

void LevelAssetHandler::deleteInstance()
{
	if (g_instance != nullptr)
		delete g_instance;
}

void LevelAssetHandler::resetInstance() {
	if (g_instance != nullptr)
		delete g_instance;
	g_instance = new LevelAssetHandler();
}


void LevelAssetHandler::load()
{
	models.clear();
	prefabs.clear();
	textures.clear();
	sounds.clear();
	particles.clear();

	loadAssets( &prefabs, "LevelEditorStuff/Resources/ActorsXML" );
	loadAssets( &models, "Models", ".model" );
	loadAssets( &textures, "Textures", ".png" );
	loadAssets( &sounds, "Audio/Effects" );
	loadAssets( &sounds, "Audio/Music" );
	loadAssets(&particles, "ParticleFiles");

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

std::string getBarLabel(std::string preText, int &index, std::string desiredName) {
	std::stringstream ss;
	ss << preText << "label='" << desiredName << "'";
	index++;
	return ss.str();
}

void LevelAssetHandler::updateAssetsBar()
{
	int curIndex = 0;
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
		//TwAddVarCB(assetsBar->getBar(), prefabs[i].c_str(), TW_TYPE_BOOLCPP, onSetPrefab, onGetPrefab, &prefabSelectionIndices[i], "group='Prefabs'");
		//std::string derp = ;
		//std::string derp =
			TwAddVarCB(assetsBar->getBar(), std::to_string(curIndex).c_str(), TW_TYPE_BOOLCPP, onSetPrefab,
				onGetPrefab, &prefabSelectionIndices[i], getBarLabel("group='Prefabs' ", curIndex, prefabs[i].c_str()).c_str());
	}
	TwDefine( "Assets/Prefabs opened=false" );

	if(prefabSelection.size()>0)
		prefabSelection[0] = true;
	selectedPrefab = 0;

	for( int i=0; i<models.size(); i++ )
		
		TwAddButton( assetsBar->getBar(), std::to_string(curIndex).c_str(), onSelectModel, &models[i], getBarLabel("group='Models' ", curIndex, models[i].c_str()).c_str() );
	if( models.size() > 0 )
		TwDefine( "Assets/Models opened=false" );

	for( int i=0; i<textures.size(); i++ )
		TwAddButton( assetsBar->getBar(), std::to_string(curIndex).c_str(), onSelectTexture, &textures[i], getBarLabel("group='Textures' ", curIndex, textures[i].c_str()).c_str());
	if( textures.size() > 0 )
		TwDefine( "Assets/Textures opened=false" );

	for( int i=0; i<sounds.size(); i++ )
		TwAddButton( assetsBar->getBar(), std::to_string(curIndex).c_str(), onSelectSound, &sounds[i], getBarLabel("group='Sounds' ", curIndex, sounds[i].c_str()).c_str());
	if( sounds.size() > 0 )
		TwDefine( "Assets/Sounds opened=false" );

	for (int i = 0; i<particles.size(); i++)
		TwAddButton(assetsBar->getBar(), std::to_string(curIndex).c_str(), onSelectParticle, &particles[i], getBarLabel("group='Particle' ", curIndex, particles[i].c_str()).c_str());
	if (sounds.size() > 0)
		TwDefine("Assets/Sounds opened=false");
}

void LevelAssetHandler::selectModel( std::string model )
{
	selectedAsset = model;
	assetType = ASSET_MODEL;
	showContextBar( model );
}

void LevelAssetHandler::selectTexture( std::string texture )
{
	selectedAsset = texture;
	assetType = ASSET_TEXTURE;
	showContextBar( texture );
}

void LevelAssetHandler::selectSound( std::string sound )
{
	selectedAsset = sound;
	assetType = ASSET_SOUND;
	showContextBar( sound );
}

void LevelAssetHandler::selectParticle(std::string particle) {
	selectedAsset = particle;
	assetType = ASSET_PARTICLE;
	showContextBar(particle);
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

void LevelAssetHandler::showContextBar( std::string asset )
{
	contextBarVisible = true;

	int xpos = (int)(assetsBar->getPos().x - contextBar->getSize().x);
	int ypos = (int)inputs->getMousePos().y-32;
	char buffer[128] = {};
	sprintf( buffer, "%s visible=true position='%d %d' label='%s'", contextBar->getName().c_str(), xpos, ypos, asset.c_str() );
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
	if( !selectedAsset.empty() )
	{
		LevelActor* selectedActor = LevelActorHandler::getInstance()->getSelected();
		if( selectedActor )
		{
			if( assetType == ASSET_MODEL )
			{
				LevelModel* modelComponent = selectedActor->getComponent<LevelModel>();
				if( modelComponent )
				{
					modelComponent->setModelName( selectedAsset );
				}
				else
				{
					modelComponent = (LevelModel*)LevelActorFactory::getInstance()->getNewComponent( LevelModel::name );
					modelComponent->setModelName( selectedAsset );
					selectedActor->addComponent( modelComponent );
					modelComponent->postInitialize();
				}
			}
			else if( assetType == ASSET_TEXTURE )
			{
				LevelHeightmap* heightmapComponent = selectedActor->getComponent<LevelHeightmap>();
				if( heightmapComponent )
				{
					heightmapComponent->setTextureName( selectedAsset );
				}
				else
				{
					//MessageBoxA( NULL, "Can't add heightmap texture without a heightmap component.", "Level Editor - Error", MB_OK );
					if( MessageBoxA( NULL, "This actor has no heightmap component.\nWould you like to add one?", "Level Editor - Add Heightmap Component?", MB_YESNO ) == IDYES )
					{
						heightmapComponent = (LevelHeightmap*)LevelActorFactory::getInstance()->getNewComponent( LevelHeightmap::name );
						selectedActor->addComponent( heightmapComponent );
						heightmapComponent->postInitialize();
						heightmapComponent->setTextureName( selectedAsset );
					}
				}
			}
			else if (assetType == ASSET_PARTICLE) {
				LevelParticleSystem* particleSystemComponent = selectedActor->getComponent<LevelParticleSystem>();

				if (particleSystemComponent){
					particleSystemComponent->assignParticleSystem(selectedAsset);
				}
				else
				{
					//MessageBoxA( NULL, "Can't add heightmap texture without a heightmap component.", "Level Editor - Error", MB_OK );
					if (MessageBoxA(NULL, "This actor has no Particle component.\nWould you like to add one?", "Level Editor - Add Particle Component?", MB_YESNO) == IDYES)
					{
						particleSystemComponent = (LevelParticleSystem*)LevelActorFactory::getInstance()->getNewComponent(LevelParticleSystem::name);
						selectedActor->addComponent(particleSystemComponent);
						particleSystemComponent->postInitialize();
						particleSystemComponent->assignParticleSystem(selectedAsset);
					}
				}
			}
			else
			{
				LevelSound* soundComponent = selectedActor->getComponent<LevelSound>();
				if( soundComponent )
				{
					soundComponent->setSoundName( selectedAsset );
				}
				else
					MessageBoxA( NULL, "Can't add sound file to an actor without a sound component.", "Level Editor - Error", MB_OK );
			}

			LevelActorHandler::getInstance()->updateActorBar();
		}
	}

	selectedAsset = "";
}

void LevelAssetHandler::onMouseReleased()
{
	hideContextBar();
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

void LevelAssetHandler::setTweakBars( TweakBar* ab, TweakBar* cb)
{
	assetsBar = ab;
	contextBar = cb;

	TwRemoveAllVars( contextBar->getBar() );
	TwAddButton( contextBar->getBar(), "Add to Actor", onAdd, NULL, NULL ); //yhis is for when you add a model
	TwAddButton( contextBar->getBar(), "Close", onClose, NULL, NULL );
	TwDefine( "AssetsContext visible=false iconifiable=false fontresizable=false contained=true" );

	contextBarVisible = false;
}

Importer::Assets* LevelAssetHandler::getAssets()
{
	return assets;
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

void TW_CALL LevelAssetHandler::onSelectModel( void* args )
{
	std::string* str = (std::string*)args;
	LevelAssetHandler::getInstance()->selectModel( *str );
}

void TW_CALL LevelAssetHandler::onSelectTexture( void* args )
{
	std::string* str = (std::string*)args;
	LevelAssetHandler::getInstance()->selectTexture( *str );
}

void TW_CALL LevelAssetHandler::onSelectSound( void* args )
{
	std::string* str = (std::string*)args;
	LevelAssetHandler::getInstance()->selectSound( *str );
}

void TW_CALL LevelAssetHandler::onSelectParticle(void* args)
{
	std::string* str = (std::string*)args;
	LevelAssetHandler::getInstance()->selectParticle(*str);
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

