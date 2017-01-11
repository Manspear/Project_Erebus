#include "LevelAssetHandler.h"

LevelAssetHandler::LevelAssetHandler( Importer::Assets* a )
	: assets( a )
{
}

LevelAssetHandler::~LevelAssetHandler()
{
}

void LevelAssetHandler::load( std::string assetFolder )
{
	assetFiles.clear();

	std::string finalFolder = assetFolder + "\\*";

	WIN32_FIND_DATAA findData;
	HANDLE fileHandle = FindFirstFileA( finalFolder.c_str(), &findData );
	if( fileHandle != INVALID_HANDLE_VALUE )
	{
		do
		{
			int dotIndex = -1;
			int len = strlen( findData.cFileName );
			for( int i=len-1; i>=0 && dotIndex < 0; i-- )
			{
				if( findData.cFileName[i] == '.' )
					dotIndex = i;
			}

			if( dotIndex >= 0 )
			{
				std::string ext = std::string( findData.cFileName, dotIndex, len-dotIndex );
				
				std::string finalName = assetFolder + "\\" + findData.cFileName;
				if( ext.compare( ".model" ) == 0 )
				{
					Importer::ModelAsset* model = assets->load<Importer::ModelAsset>( finalName );
					if( model )
					{
						models.push_back( model );
						modelNames.push_back( findData.cFileName );
						printf( "Loaded model: %s\n", findData.cFileName );
					}
				}
			}

		} while( FindNextFileA( fileHandle, &findData ) );
	}
}