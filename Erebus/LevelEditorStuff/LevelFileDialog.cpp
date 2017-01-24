#include "LevelFileDialog.h"

LevelFileDialog::LevelFileDialog()
	: valid( false ), filters( nullptr )
{
	defaultExtension = ".xml";

	FileFilter filter = { L"XML Document", L"*.xml" };
	setFilters( &filter, 1 );
}

LevelFileDialog::~LevelFileDialog()
{
	if (filters)
		delete[]filters;
}

bool LevelFileDialog::show( int mode )
{
	filePath = "";
	valid = false;

	switch(mode)
	{
		case DIALOG_SAVE_FILE:
		{
			IFileSaveDialog *pFileOpen;

			// Create the FileOpenDialog object.
			HRESULT hr = CoCreateInstance(CLSID_FileSaveDialog, NULL, CLSCTX_ALL, 
				IID_IFileSaveDialog, (void**)(&pFileOpen));

			if (SUCCEEDED(hr))
			{
				COMDLG_FILTERSPEC* fileTypes = new COMDLG_FILTERSPEC[numFilters];
				for( int i=0; i<numFilters; i++ )
				{
					fileTypes[i] = { filters[i].name.c_str(), filters[i].pattern.c_str() };
				}
				pFileOpen->SetFileTypes(numFilters, fileTypes);
				delete[]fileTypes;
				// Show the Open dialog box.
				std::wstring wideExt( defaultExtension.begin(), defaultExtension.end() );
				hr = pFileOpen->SetDefaultExtension(wideExt.c_str());
				hr = pFileOpen->Show(NULL);

				// Get the file name from the dialog box.
				if (SUCCEEDED(hr))
				{
					IShellItem *pItem;
					hr = pFileOpen->GetResult(&pItem);
					if (SUCCEEDED(hr))
					{
						PWSTR pszFilePath;
						hr = pItem->GetDisplayName(SIGDN_FILESYSPATH, &pszFilePath);

						// Display the file name to the user.
						if (SUCCEEDED(hr))
						{
							LPWSTR path = pszFilePath;
							std::wstring file = path;

							filePath = std::string(file.begin(), file.end());
							valid = true;

							CoTaskMemFree(pszFilePath);
						}
						pItem->Release();
					}
				}
			}
		} break;

		case DIALOG_OPEN_FILE:
		{
			HRESULT hr = CoInitializeEx( NULL, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE );
			if( SUCCEEDED(hr) )
			{
				IFileOpenDialog* fileDialog;

				hr = CoCreateInstance( CLSID_FileOpenDialog, NULL, CLSCTX_ALL, IID_IFileOpenDialog, (void**)&fileDialog );
				if( SUCCEEDED(hr) )
				{
					hr = fileDialog->Show( NULL );

					if( SUCCEEDED(hr) )
					{
						IShellItem* item;
						hr = fileDialog->GetResult( &item );
						if( SUCCEEDED(hr) )
						{
							PWSTR itemPathPtr;
							hr = item->GetDisplayName( SIGDN_FILESYSPATH, &itemPathPtr );

							if( SUCCEEDED(hr) )
							{
								LPWSTR itemPath = itemPathPtr;
								std::wstring wpath = itemPath;
								filePath = std::string( wpath.begin(), wpath.end() );
								valid = true;

								CoTaskMemFree( itemPathPtr );
							}
							item->Release();
						}
					}
					
					fileDialog->Release();
				}

				CoUninitialize();
			}
		} break;

		case DIALOG_OPEN_DIRECTORY:
		{
		} break;

		default:
			printf( "Invalid file dialog mode: %d.\n", mode );
			break;
	}

	return valid;
}

void LevelFileDialog::setFilters( FileFilter* f, int len )
{
	if( filters )
		delete[] filters;

	filters = new FileFilter[len];
	for( int i=0; i<len; i++ )
		filters[i] = f[i];

	numFilters = len;
}

void LevelFileDialog::setDefaultExtension( const std::string& ext )
{
	defaultExtension = ext;
}

void LevelFileDialog::setFilePath( const std::string& path )
{
	filePath = path;
}

const std::string& LevelFileDialog::getFilePath() const
{
	return filePath;
}

bool LevelFileDialog::getValid()
{
	return valid;
}