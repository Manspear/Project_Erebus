#include "LevelPrefabHandler.h"

LevelPrefabHandler::LevelPrefabHandler()
{
}

LevelPrefabHandler::~LevelPrefabHandler()
{
}

void LevelPrefabHandler::load( std::string folder )
{
	prefabs.clear();

	std::string finalFolder = folder + "\\*";

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

				if( ext.compare( ".xml" ) == 0 )
				{
					//std::string finalName = folder + "\\" + std::string(findData.cFileName,dotIndex);

					std::string finalName = std::string(findData.cFileName,dotIndex);

					LevelActor* prefab = LevelActorFactory::getInstance()->createActor( finalName );
					if( prefab )
					{
						prefabs.push_back( prefab );
						prefabNames.push_back( findData.cFileName );
					}
				}
			}

		} while( FindNextFileA( fileHandle, &findData ) );
	}
}