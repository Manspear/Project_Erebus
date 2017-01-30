#include "MFileImporter.h"
#include <iostream>
#include <sstream>
using namespace std;
int main(int argc, char *argv[])
{
	if (argc == 3)
	{
		MFileImporter fileIm;

		fileIm.importFbx(argv[1], 24);
		fileIm.writeToBinary(argv[2]);
		std::cout << argv[1] << " is done";
		getchar();

		return 0;
	}
	else
	{
		/*
		HOW TO USE:
		Animations:
		- All joints must be a part of all layers
		- All joints need at least 2 keyframes on each layer
		Models:
		- Triangulate the mesh before exporting to FBX
		- It is allowed to parent meshes to joints and meshes
		Tags:
		- If you want a mesh to be interpreted as a boundingbox, make a custom attribute in maya called BOUNDINGBOX
		- If you want a mesh to be interpreted as a spawn, make a custom attribute in maya called SPAWN
		*/
		//cout << "Filepath to .fbx: " << endl;
		//string fbxPath;
		//getline(cin, fbxPath);
		//
		//cout << "Filepath where you want files to go: " << endl;
		//string filePath;
		//getline(cin, filePath);

		////Replace \ with /
		//for (int i = 0; i < fbxPath.size(); i++)
		//{
		//	if (fbxPath.at(i) == '\\')
		//		fbxPath.at(i) = '/';
		//}
		//for (int i = 0; i < filePath.size(); i++)
		//{
		//	if (filePath.at(i) == '\\')
		//		filePath.at(i) = '/';
		//}
		//const char* fbx = fbxPath.c_str();
		//const char* file = filePath.c_str();
		MFileImporter fileIm;

		//Imports and exports
		//fileIm.importFbx(fbx, 24);

		//fileIm.importFbx(fbx, 24);
		//fileIm.writeToBinary(file);

		//fileIm.importFbx("C:/Users/GiS-1/Desktop/Goblin/Goblin.fbx", 24);
		//fileIm.writeToBinary("C:/Users/GiS-1/Desktop/Goblin/");

		fileIm.importFbx("C:/Project_Erebus/FBXHelper/grenade.fbx", 24);
		fileIm.writeToBinary("C:/Project_Erebus/FBXHelper/");
		//

		/*
		The file order

		SCENE -> TRANSFORMS -> MODELS -> SPAWNS -> LIGHTS -> MATERIALS -> OFFSETS ->
		MESHES -> BBOXES -> SKELETONS -> JOINTS -> ANIMATION STATES ->
		KEYFRAMES -> MESH INDICES ->  MESH VERTICES -> MESH SKELETAL VERTICES ->
		SPAWN INDICES -> SPAWN VERTICES
		*/

		return 0;
	}
}