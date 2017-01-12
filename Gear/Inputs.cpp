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
	int isAntTweak = TwEventKeyGLFW(key, action);
	if (isAntTweak == 0) {
		keys[key] = action > 0;
		keysRepeated[key] = action > 0;
		if (action == GLFW_PRESS) {
			keysPressedThisFrame[key] = true;
		}
		if (action == GLFW_RELEASE) {
			keysReleasedThisFrame[key] = true;
		}
	}

}

void Inputs::text_callback(GLFWwindow* window, unsigned int key)
{
	int isAntTweak = TwEventCharGLFW(key, GLFW_PRESS);
	if (isAntTweak==0) {
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
