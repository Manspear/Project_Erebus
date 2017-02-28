#pragma once

#include <map>
#include "Importer.h"

#define ASSETS_HOTLOAD_DELAY 0.5f
#define ASSETS_MAX_UNLOAD_PER_FRAME 5

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
		Asset();
		virtual ~Asset();

		virtual bool load( std::string path, Assets* assets ) = 0;
		virtual void unload() = 0;
		virtual void upload() = 0;

		IMPORTER_API void incrementReferenceCount();
		IMPORTER_API void decrementReferenceCount();

		IMPORTER_API void setAssets( Assets* assets );

		IMPORTER_API FileInfo* getFileInfo();
		IMPORTER_API int getReferenceCount();

	protected:
		Assets* assets;

	private:
		FileInfo fileInfo;
		int referenceCount;
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
					pending.push_back( result );
				}
				else
				{
					printf( "Failed to load asset \"%s\"\n", path.c_str() );
					delete result;
					result = nullptr;
				}
			}

			if( result )
			{
				result->setAssets( this );
				result->incrementReferenceCount();
			}

			return result;
		}

		template<typename T>
		void unload( std::string path )
		{
			AssetID id( path, typeid(T).hash_code() );

			std::map<AssetID, Asset*>::iterator it = assets.find( id );
			if( it != assets.end() )
			{
				it->second->decrementReferenceCount();
			}
		}

		IMPORTER_API void upload();

		IMPORTER_API void checkHotload( float dt );
		IMPORTER_API void checkReferences();

		IMPORTER_API const std::map<AssetID, Asset*>& getAssets() const;

	private:
		float elapsedTime;
		std::map<AssetID, Asset*> assets;
		std::vector<Asset*> pending;
	};
}