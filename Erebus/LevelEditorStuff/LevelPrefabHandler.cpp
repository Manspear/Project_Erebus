#include "LevelPrefabHandler.h"

void TW_CALL setSelectedCallback( const void* value, void* clientData )
{
	int index = *(int*)clientData;
	LevelPrefabHandler::getInstance()->setSelected( index );
}

void TW_CALL getSelectedCallback( void* value, void* clientData )
{
	int index = *(int*)clientData;
	*(int*)value = LevelPrefabHandler::getInstance()->getSelected( index );
}

LevelPrefabHandler* LevelPrefabHandler::g_instance = nullptr; 

LevelPrefabHandler::LevelPrefabHandler()
{
	selectedPrefab = -1;
	bar = TwNewBar( "PrefabBar" );
	TwDefine( "PrefabBar label='Prefabs'" );
}

LevelPrefabHandler::~LevelPrefabHandler()
{
}

LevelPrefabHandler* LevelPrefabHandler::getInstance()
{
	if( g_instance == nullptr )
		g_instance = new LevelPrefabHandler();
	return g_instance;
}

void LevelPrefabHandler::load( std::string folder )
{
	TwRemoveAllVars(bar);

	prefabs.clear();

	std::string finalFolder = folder + "\\*";

	WIN32_FIND_DATAA findData;
	HANDLE fileHandle = FindFirstFileA( finalFolder.c_str(), &findData );
	if( fileHandle != INVALID_HANDLE_VALUE )
	{
		int prefabIndex = 0;
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
					std::string finalName = std::string(findData.cFileName,dotIndex);

					LevelActor* prefab = LevelActorFactory::getInstance()->createActor( finalName );
					if( prefab )
					{
						prefabs.push_back( finalName );
						indices[prefabIndex] = prefabIndex;

						TwAddVarCB( bar, finalName.c_str(), TW_TYPE_BOOL32, setSelectedCallback, getSelectedCallback, &indices[prefabIndex], NULL );
						prefabIndex++;
					}
				}
			}

		} while( FindNextFileA( fileHandle, &findData ) );
	}

	selectedPrefab = 0;
	selected[0] = true;
	for( int i=1; i<MAX_PREFABS; i++ )
		selected[i] = 0;
}

const std::vector<std::string>& LevelPrefabHandler::getPrefabNames() const
{
	return prefabs;
}

int LevelPrefabHandler::getPrefabCount() const
{
	return prefabs.size();
}

std::string& LevelPrefabHandler::getSelectedPrefab()
{
	if( selectedPrefab < 0 )
		return std::string("");
	return prefabs[selectedPrefab];
}

void LevelPrefabHandler::setSelected( int index )
{
	for( int i=0; i<prefabs.size(); i++ )
		selected[i] = false;
	selected[index] = true;
	selectedPrefab = index;
}

bool LevelPrefabHandler::getSelected( int index )
{
	return selected[index];
}