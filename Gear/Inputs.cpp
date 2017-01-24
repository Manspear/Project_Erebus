#include "Inputs.h"

bool Inputs::keys[GLFW_KEY_LAST] = {false};
bool Inputs::keysRepeated[GLFW_KEY_LAST] = {};
bool Inputs::keysPressedThisFrame[GLFW_KEY_LAST] = { false };
bool Inputs::keysReleasedThisFrame[GLFW_KEY_LAST] = { false };
MousePos Inputs::mousePos = { 0.0, 0.0 };
MousePos Inputs::deltaPos = { 0.0, 0.0 };
bool Inputs::mouseButtons[GLFW_MOUSE_BUTTON_LAST] = { false };
bool Inputs::mouseButtonsPressedThisFrame[GLFW_MOUSE_BUTTON_LAST] = { false };
bool Inputs::mouseButtonsReleasedThisFrame[GLFW_MOUSE_BUTTON_LAST] = { false };
double Inputs::dScrollY = 0.0;
double Inputs::scrollY = 0.0;
char Inputs::textInput[INPUTS_MAX_TEXT_INPUT] = {};
int Inputs::textInputLength = 0;
const std::unordered_map<int, int> Inputs::glfw3to2_keymapping = {// Keyboard key definitions [GLFW3 -> GLFW2]
{ 255,	256 },
{ 256,	257 },
{ 290,	258 },
{ 291,	259 },
{ 292,	260 },
{ 293,	261 },
{ 294,	262 },
{ 295,	263 },
{ 296,	264 },
{ 297,	265 },
{ 298,	266 },
{ 299,	267 },
{ 300,	268 },
{ 301,	269 },
{ 302,	270 },
{ 303,	271 },
{ 304,	272 },
{ 305,	273 },
{ 306,	274 },
{ 307,	275 },
{ 308,	276 },
{ 309,	277 },
{ 310,	278 },
{ 311,	279 },
{ 312,	280 },
{ 313,	281 },
{ 314,	282 },
{ 265,	283 },
{ 264,	284 },
{ 263,	285 },
{ 262,	286 },
{ 340,	287 },
{ 344,	288 },
{ 341,	289 },
{ 345,	290 },
{ 342,	291 },
{ 346,	292 },
{ 258,	293 },
{ 257,	294 },
{ 259,	295 },
{ 260,	296 },
{ 261,	297 },
{ 266,	298 },
{ 267,	299 },
{ 268,	300 },
{ 269,	301 },
{ 320,	302 },
{ 321,	303 },
{ 322,	304 },
{ 323,	305 },
{ 324,	306 },
{ 325,	307 },
{ 326,	308 },
{ 327,	309 },
{ 328,	310 },
{ 329,	311 },
{ 331,	312 },
{ 332,	313 },
{ 333,	314 },
{ 334,	315 },
{ 330,	316 },
{ 336,	317 },
{ 335,	318 },
};
const std::unordered_map<int, int> Inputs::glfw2to3_keymapping ={
	// Keyboard key definitions [GLFW2 -> GLFW3]
	{ 256, 255 },
	{ 257, 256 },
	{ 258, 290 },
	{ 259, 291 },
	{ 260, 292 },
	{ 261, 293 },
	{ 262, 294 },
	{ 263, 295 },
	{ 264, 296 },
	{ 265, 297 },
	{ 266, 298 },
	{ 267, 299 },
	{ 268, 300 },
	{ 269, 301 },
	{ 270, 302 },
	{ 271, 303 },
	{ 272, 304 },
	{ 273, 305 },
	{ 274, 306 },
	{ 275, 307 },
	{ 276, 308 },
	{ 277, 309 },
	{ 278, 310 },
	{ 279, 311 },
	{ 280, 312 },
	{ 281, 313 },
	{ 282, 314 },
	{ 283, 265 },
	{ 284, 264 },
	{ 285, 263 },
	{ 286, 262 },
	{ 287, 340 },
	{ 288, 344 },
	{ 289, 341 },
	{ 290, 345 },
	{ 291, 342 },
	{ 292, 346 },
	{ 293, 258 },
	{ 294, 257 },
	{ 295, 259 },
	{ 296, 260 },
	{ 297, 261 },
	{ 298, 266 },
	{ 299, 267 },
	{ 300, 268 },
	{ 301, 269 },
	{ 302, 320 },
	{ 303, 321 },
	{ 304, 322 },
	{ 305, 323 },
	{ 306, 324 },
	{ 307, 325 },
	{ 308, 326 },
	{ 309, 327 },
	{ 310, 328 },
	{ 311, 329 },
	{ 312, 331 },
	{ 313, 332 },
	{ 314, 333 },
	{ 315, 334 },
	{ 316, 330 },
	{ 317, 336 },
	{ 318, 335 },
};

Inputs::Inputs(GLFWwindow* w)
{
	deltaPos = {0.0 , 0.0};
	
	scrollY = 0;
	dScrollY = 0;
	for (size_t i = 0; i < GLFW_KEY_LAST; i++)
	{
		keys[i] = false;
		keysPressedThisFrame[i] = false;
		keysReleasedThisFrame[i] = false;
	}
	for (size_t i = 0; i < GLFW_MOUSE_BUTTON_LAST; i++)
	{
		mouseButtons[i] = false;
		mouseButtonsPressedThisFrame[i] = false;
		mouseButtonsReleasedThisFrame[i] = false;
	}
	window = w;

	glfwGetCursorPos(window, &mousePos.x, &mousePos.y);

	
	
}

Inputs::~Inputs()
{
}

void Inputs::update()
{
	MousePos newPos;
	glfwGetCursorPos(window, &newPos.x, &newPos.y);
	deltaPos = { mousePos.x - newPos.x, mousePos.y - newPos.y };
	mousePos = newPos;
	
	memset( textInput, 0, textInputLength );
	textInputLength = 0;

	dScrollY = 0;
	for (size_t i = 0; i < GLFW_KEY_LAST; i++)
	{
		keysRepeated[i] = false;
		keysPressedThisFrame[i] = false;
		keysReleasedThisFrame[i] = false;
	} 
	for (size_t i = 0; i < GLFW_MOUSE_BUTTON_LAST; i++)
	{
		mouseButtonsPressedThisFrame[i] = false;
		mouseButtonsReleasedThisFrame[i] = false;
	}
	glfwPollEvents();
}

bool Inputs::keyPressed(unsigned int key)
{
	return keys[key];
}

bool Inputs::keyRepeated(unsigned int key)
{
	return keysRepeated[key];
}

bool Inputs::keyPressedThisFrame(unsigned int key)
{
	return keysPressedThisFrame[key];
}

GEAR_API bool Inputs::keyReleasedThisFrame(unsigned int key)
{
	return keysReleasedThisFrame[key];
}

bool Inputs::buttonPressed(unsigned int button)
{
	return mouseButtons[button];
}

bool Inputs::buttonPressedThisFrame(unsigned int button)
{
	return mouseButtonsPressedThisFrame[button];
}

GEAR_API bool Inputs::buttonReleasedThisFrame(unsigned int button)
{
	return mouseButtonsReleasedThisFrame[button];
}

GEAR_API int Inputs::getScroll()
{
	return scrollY;
}

GEAR_API int Inputs::getDeltaScroll()
{
	return dScrollY;
}

MousePos Inputs::getMousePos()
{
	return mousePos;
}

MousePos Inputs::getDeltaPos()
{
	return deltaPos;
}

char* Inputs::getTextInput( int* length )
{
	if( length )
		*length = textInputLength;
	return textInput;
}

void Inputs::key_callback(GLFWwindow * window, int key, int scancode, int action, int mods)
{	

	int isAntTweak = TwEventKeyGLFW(TwConvertKeyGLFW2to3(key), action);
	int isAntTweak1 = 0;
	if (isAntTweak == 0)
		isAntTweak1 = TwEventKeyGLFW(TwConvertKeyGLFW3to2(key), action);

	keys[key] = action > 0;
	keysRepeated[key] = action > 0;
	if (action == GLFW_PRESS) {
		keysPressedThisFrame[key] = true;
	}
	if (action == GLFW_RELEASE) {
		keysReleasedThisFrame[key] = true;
	}
	//if (action == GLFW_PRESS)
	//	holdingDownKey = true;
	//else if(action == GLFW_RELEASE){
	//	std::cout << "releasing key!" << std::endl;
	//	holdingDownKey = false;

	//}
	//	
	//keyCB = key;
	//scancodeCB = scancode;
	//actionCB = action;
	//modsCB = mods;
	////if (isAntTweak == 0 && isAntTweak1 == 0) {
	//	keys[key] = action > 0;
	//	keysRepeated[key] = action > 0;
	//	if (action == GLFW_PRESS) {
	//		keysPressedThisFrame[key] = true;
	//	}
	//	if (action == GLFW_RELEASE) {
	//		keysReleasedThisFrame[key] = true;
	//	}
	//}

}

void Inputs::text_callback(GLFWwindow* window, unsigned int key)
{
	
	int isAntTweak = TwEventCharGLFW(key, GLFW_PRESS);
	if (isAntTweak == 0) {
		if (key > 0 && key < 128 && textInputLength < INPUTS_MAX_TEXT_INPUT)
			textInput[textInputLength++] = (char)key;
	}
}

void Inputs::mouse_button_callback(GLFWwindow * window, int button, int action, int mods)
{
	int isAntTweak = TwEventMouseButtonGLFW(button, action);
	if (isAntTweak == 0) {
		mouseButtons[button] = action > 0;
		if (action == GLFW_PRESS) {
			mouseButtonsPressedThisFrame[button] = true;
		}
		if (action == GLFW_RELEASE) {
			mouseButtonsReleasedThisFrame[button] = true;
		}
	}

}

void Inputs::scroll_callback(GLFWwindow * window, double xoffset, double yoffset)
{
	int isAntTweak = TwEventMouseWheelGLFW(xoffset);
	if (isAntTweak == 0) {
		scrollY += yoffset;
		dScrollY = yoffset;
	}

}
inline int Inputs::TwConvertKeyGLFW3to2(int key)
{
	auto itr = glfw3to2_keymapping.find(key);
	if (itr != glfw3to2_keymapping.end())
		return itr->second;

	return key;
}

inline int Inputs::TwConvertKeyGLFW2to3(int key)
{
	auto itr = glfw2to3_keymapping.find(key);
	if (itr != glfw2to3_keymapping.end())
		return itr->second;

	return key;
}
