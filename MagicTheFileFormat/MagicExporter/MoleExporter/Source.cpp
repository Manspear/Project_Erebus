#include "FbxImport.h"
using namespace std;

int main()
{
	FbxImport fbx;
	fbx.initializeImporter("Models/fbx/donut.fbx", 24);

	fbx.WriteToBinary("Models/mole/donut.mole");

	cin.get();
	return 0;
}
