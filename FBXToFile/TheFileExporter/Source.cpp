#include "MFileImporter.h"
#include <iostream>
#include <sstream>
using namespace std;
int main()
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
	fileIm.importFbx("C:/Git_Repos/Project_Erebus/FBXToFile/Models/testGuy.fbx", 24);
	fileIm.writeToBinary("C:/Git_Repos/Project_Erebus/Erebus/Models/");

	//fileIm.importFbx("C:/Git_Repos/FBX Importer/FBXToFile/Models/cube3.fbx", 24);
	//fileIm.writeToBinary("C:/Git_Repos/FBX Importer/FBXToFile/Exported/");
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