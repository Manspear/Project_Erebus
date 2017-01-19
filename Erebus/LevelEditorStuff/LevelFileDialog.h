#pragma once

#include <Windows.h>
#include <ShObjIdl.h>
#include "BaseIncludes.h"

enum
{
	DIALOG_SAVE_FILE = 0,
	DIALOG_OPEN_FILE,
	DIALOG_OPEN_DIRECTORY,
};

struct FileFilter
{
	std::wstring name;
	std::wstring pattern;
};

class LevelFileDialog
{
public:
	LevelFileDialog();
	~LevelFileDialog();

	bool show( int mode );

	void setFilters( FileFilter* filters, int len );
	void setDefaultExtension( const std::string& ext );
	void setFilePath( const std::string& path );

	const std::string& getFilePath() const;
	bool getValid();

private:
	FileFilter* filters;
	int numFilters;
	std::string defaultExtension;
	std::string filePath;
	bool valid;
};