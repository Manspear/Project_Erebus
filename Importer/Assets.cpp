#include "Assets.h"

namespace Importer
{
	Asset::~Asset()
	{
	}

	Assets::Assets()
	{
	}

	Assets::~Assets()
	{
		for( std::map<std::string, Asset*>::iterator it = assets.begin(); it != assets.end(); it++ )
		{
			it->second->unload();
			delete it->second;
		}
	}
}