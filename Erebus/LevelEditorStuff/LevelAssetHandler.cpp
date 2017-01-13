#include "LevelAssetHandler.h"

/*LevelAssetHandler::LevelAssetHandler( Importer::Assets* a )
	: assets( a )
{
}*/

LevelAssetHandler* LevelAssetHandler::g_instance = nullptr;

void TW_CALL dummyCallback( void* args )
{
}

LevelAssetHandler::LevelAssetHandler()
{
	bar = TwNewBar( "AssetsBar" );
	TwDefine( "AssetsBar label='Assets'" );
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
	textures.clear();

	TwRemoveAllVars( bar );

	loadAssets( &models, "Models", ".model" );
	loadAssets( &textures, "Textures" );

	TwAddButton( bar, "Models:", NULL, NULL, NULL );
	for( int i=0; i<models.size(); i++ )
		TwAddButton( bar, models[i].c_str(), dummyCallback, NULL, NULL );

	TwAddSeparator( bar, "sep1", NULL );

	TwAddButton( bar, "Textures:", NULL, NULL, NULL );
	for( int i=0; i<textures.size(); i++ )
		TwAddButton( bar, textures[i].c_str(), dummyCallback, NULL, NULL );
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
						container->push_back( findData.cFileName );
					}
				}
			}
		} while( FindNextFileA( fileHandle, &findData ) );
	}
}

void LevelAssetHandler::setAssets( Importer::Assets* a )
{
	assets = a;
}