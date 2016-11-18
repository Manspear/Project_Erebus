#pragma once

#include <map>

#ifdef IMPORTER_EXPORT
#define IMPORTER_API __declspec(dllexport)   
#else  
#define IMPORTER_API __declspec(dllimport)   
#endif
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

	class Assets
	{
	public:
		IMPORTER_API Assets();
		IMPORTER_API virtual ~Assets();

		template<typename T>
		T* load( std::string path )
		{
			T* result = nullptr;

			std::map<std::string, Asset*>::iterator it = assets.find( path );
			if( it != assets.end() )
				result = (T*)it->second;
			else
			{
				result = new T();
				if( result->load( path, this ) )
					assets.insert( std::pair<std::string, Asset*>( path, result ) );
				else
				{
					delete result;
					result = nullptr;
				}
			}

			return result;
		}

	private:
		std::map<std::string, Asset*> assets;
	};
}