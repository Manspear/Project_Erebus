#include "MenuTest.h"

MenuTest::MenuTest()
{
	myBar = TwNewBar("Bar");



	TwDefine(" GLOBAL help='This example shows how to integrate AntTweakBar with GLFW and OpenGL.' "); // Message added to the help bar.



	TwAddVarRW(myBar, "ugly", TW_TYPE_BOOL32, &ugly,
		" label='Wireframe mode' key=w help='Toggle wireframe display mode.' ");

	

}


MenuTest::~MenuTest()
{

}