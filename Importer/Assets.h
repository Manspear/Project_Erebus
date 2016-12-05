#pragma once

#include <map>
#include "Importer.h"

namespace Importer
{
	class Assets;
	class Asset
	{
	public:
		virtual ~Asset();

		virtual bool load( std::string path, Assets* assets ) = 0;
		virtual void unload() = 0;
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

	private:
		std::map<AssetID, Asset*> assets;
	};
}