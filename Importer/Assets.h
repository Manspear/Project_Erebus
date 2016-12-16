#pragma once

#include <map>
#include "Importer.h"

#define ASSETS_HOTLOAD_DELAY 0.5f

namespace Importer
{
	class FileInfo
	{
	public:
		FileInfo();
		~FileInfo();

		IMPORTER_API bool hasChanged();

		IMPORTER_API void setPath( std::string& path );
		IMPORTER_API const std::string& getPath() const;
		
	private:
		uint64_t getWriteTime();

		std::string path;
		uint64_t timestamp;
	};

	class Assets;
	class Asset
	{
	public:
		virtual ~Asset();

		virtual bool load( std::string path, Assets* assets ) = 0;
		virtual void unload() = 0;

		IMPORTER_API FileInfo* getFileInfo();

	private:
		FileInfo fileInfo;
	};

	class AssetID
	{
	public:
		IMPORTER_API AssetID( std::string path, size_t hash );
		IMPORTER_API ~AssetID();

		IMPORTER_API AssetID& operator=( const AssetID& ref );
		IMPORTER_API bool operator==( const AssetID& ref ) const;
		IMPORTER_API bool operator!=( const AssetID& ref ) const;
		IMPORTER_API bool operator<( const AssetID& ref ) const;
		IMPORTER_API bool operator>( const AssetID& ref ) const;

	private:
		std::string path;
		size_t hash;
	};

	class Assets
	{
	public:
		IMPORTER_API Assets();
		IMPORTER_API virtual ~Assets();

		template<typename T>
		T* load( std::string path )
		{
			T* result = nullptr;

			// NOTE: Since hash_code is a hash, it is not guaranteed to be unique.
			// But it should be good enough for our limited purposes
			AssetID id( path, typeid(T).hash_code() );

			std::map<AssetID, Asset*>::iterator it = assets.find( id );
			if( it != assets.end() )
				result = (T*)it->second;
			else
			{
				result = new T();
				if( result->load( path, this ) )
				{
					result->getFileInfo()->setPath( path );
					assets.insert( std::pair<AssetID, Asset*>( id, result ) );
				}
				else
				{
					delete result;
					result = nullptr;
				}
			}

			return result;
		}
		void unload();

		IMPORTER_API void checkHotload( float dt );

	private:
		float elapsedTime;
		std::map<AssetID, Asset*> assets;
	};
}