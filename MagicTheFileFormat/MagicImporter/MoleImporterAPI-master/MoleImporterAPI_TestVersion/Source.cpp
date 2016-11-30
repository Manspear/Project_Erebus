#include "MoleReader.h"
#include <iostream>

using namespace std;
int main()
{
	MoleReader wololo;
	wololo.readFromBinary("testBox2.mole");
	wololo.readFromBinary("test3.mole");
	

	/*const std::vector<MoleReader::read_sMesh>* myMeshList = wololo.getMeshList();
	const std::vector<MoleReader::read_sMaterial>* myMaterialList = wololo.getMaterialList();
	const std::vector<MoleReader::read_m>* myVertexList = wololo.getVertexList();
	const std::vector<MoleReader::read_sCamera>* myCameraList = wololo.getCameraList();
	const std::vector<MoleReader::read_sLight>* myLightList = wololo.getLightList();
*/
	//wololo.readFromBinary("testBox.mole");
	
	/*MoleReader::read_sVertex v = myVertexList[0][0].vList.data()[0];

	if (myMeshList[0][0].isAnimated == false) {
		cout << "I am Kyle" << endl;
	}*/
	//I am returning a reference to the private variable... Good or bad idéa?
	//Neither good nor bad?
	//Having a reference speeds up file-loading quite a bit since we don't have to do any copying.

	return 0;
}