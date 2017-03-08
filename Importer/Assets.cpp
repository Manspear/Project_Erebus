#include "Assets.h"

namespace Importer
{
	FileInfo::FileInfo()
	{
	}

	FileInfo::~FileInfo()
	{
	}

	bool FileInfo::hasChanged()
	{
		bool result = false;

		uint64_t curTime = getWriteTime();
		if( curTime != timestamp )
		{
			timestamp = curTime;
			result = true;
		}

		return result;
	}

	void FileInfo::setPath( std::string& p )
	{
		path = p;
		timestamp = getWriteTime();
	}

	const std::string& FileInfo::getPath() const
	{
		return path;
	}

	uint64_t FileInfo::getWriteTime()
	{
		uint64_t result = 0;

		HANDLE file = CreateFile( path.c_str(),
									GENERIC_READ,
									FILE_SHARE_READ,
									NULL,
									OPEN_EXISTING,
									FILE_ATTRIBUTE_NORMAL,
									NULL );
		if( file )
		{
			FILETIME writeTime;
			GetFileTime( file, NULL, NULL, &writeTime );

			result = ((uint64_t)writeTime.dwHighDateTime << 32 ) | writeTime.dwLowDateTime;

			CloseHandle( file );
		}

		return result;
	}

	Asset::Asset()
		: referenceCount( 0 )
	{
	}

	Asset::~Asset()
	{
	}

	void Asset::incrementReferenceCount()
	{
		referenceCount++;
	}

	void Asset::decrementReferenceCount()
	{
		// if this assertion fails, we're trying to unload the same assets too many times
		//assert( referenceCount > 0 );

		if( referenceCount > 0 )
			referenceCount--;
	}

	void Asset::setAssets( Assets* a )
	{
		assets = a;
	}

	FileInfo* Asset::getFileInfo()
	{
		return &fileInfo;
	}

	int Asset::getReferenceCount()
	{
		return referenceCount;
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
		: elapsedTime( 0.0f )
	{
		pending.reserve(10);
		removes.reserve(10);
	}

	Assets::~Assets()
	{
		bool done = false;
		while( !done )
		{
			std::map<AssetID, Asset*>::iterator it = assets.begin();
			if( it != assets.end() )
			{
				it->second->unload();
				delete it->second;
				assets.erase( it );
			}
			else
				done = true;
		}

		assets.clear();
	}

	void Assets::upload()
	{
		for( int i=0; i<pending.size(); i++ )
			pending.at(i)->upload();

		pending.clear();
	}

	void Assets::checkHotload( float dt )
	{
		elapsedTime += dt;
		if( elapsedTime >= ASSETS_HOTLOAD_DELAY )
		{
			elapsedTime = 0.0f;

			for( std::map<AssetID, Asset*>::iterator it = assets.begin(); it != assets.end(); it++ )
			{
				if( it->second->getFileInfo()->hasChanged() )
				{
					it->second->unload();
					it->second->load( it->second->getFileInfo()->getPath(), this );
				}
			}
		}
	}

	void Assets::checkReferences()
	{
		for( int i=0; i<unloads.size(); i++ )
		{
			std::map<AssetID, Asset*>::iterator it = assets.find( unloads[i] );
			if( it != assets.end() )
			{
				it->second->decrementReferenceCount();
			}
		}

		unloads.clear();

		/*std::map<AssetID, Asset*>::iterator removes[ASSETS_MAX_UNLOAD_PER_FRAME];
		int nremoves = 0;

		for( std::map<AssetID, Asset*>::iterator it = assets.begin(); it != assets.end() && nremoves < ASSETS_MAX_UNLOAD_PER_FRAME; it++ )
		{
			if( it->second->getReferenceCount() <= 0 )
			{
				removes[nremoves++] = it;
			}
		}

		for( int i=0; i<nremoves; i++ )
		{
			removes[i]->second->unload();
			delete removes[i]->second;
			assets.erase( removes[i] );
		}*/

		for( std::map<AssetID, Asset*>::iterator it = assets.begin(); it != assets.end(); it++ )
		{
			if( it->second->getReferenceCount() <= 0 )
				removes.push_back( it );
		}

		for( int i=0; i<removes.size(); i++ )
		{
			removes[i]->second->unload();
			delete removes[i]->second;
			assets.erase( removes[i] );
		}

		removes.clear();
	}

	const std::map<AssetID, Asset*>& Assets::getAssets() const
	{
		return assets;
	}
}