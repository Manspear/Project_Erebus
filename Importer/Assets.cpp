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

	Asset::~Asset()
	{
	}

	FileInfo* Asset::getFileInfo()
	{
		return &fileInfo;
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
}