#include "Assets.h"

namespace Importer
{
	Asset::~Asset()
	{
	}

	AssetID::AssetID( std::string p, size_t h )
		: path( p ), hash( h )
	{
	}

	AssetID::~AssetID()
	{
	}

	AssetID& AssetID::operator=( const AssetID& ref )
	{
		path = ref.path;
		hash = ref.hash;

		return *this;
	}

	bool AssetID::operator==( const AssetID& ref ) const
	{
		return ( path == ref.path && hash == ref.hash );
	}

	bool AssetID::operator!=( const AssetID& ref ) const
	{
		return !operator==( ref );
	}

	bool AssetID::operator<( const AssetID& ref ) const
	{
		bool result = false;

		if( path == ref.path )
			result = ( hash < ref.hash );
		else
			result = ( path < ref.path );

		return result;
	}

	bool AssetID::operator>( const AssetID& ref ) const
	{
		bool result = false;

		if( path == ref.path )
			result = ( hash > ref.hash );
		else
			result = ( path > ref.path );

		return result;
	}

	Assets::Assets()
	{
	}

	Assets::~Assets()
	{
		unload();
	}

	void Assets::unload()
	{
		//for( std::map<std::string, Asset*>::iterator it = assets.begin(); it != assets.end(); it++ )
		for( std::map<AssetID, Asset*>::iterator it = assets.begin(); it != assets.end(); it++ )
		{
			it->second->unload();
			delete it->second;
		}

		assets.clear();
	}
}