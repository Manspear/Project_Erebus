#include "Controls.h"

Controls::Controls(): sensitivity(300)
{
	xrot = 0;
}

Controls::~Controls()
{

}

void Controls::update( Inputs* input )
{
	if( enabled )
	{
		TransformStruct* controlled = transformHandler->getTransform( transformID );

		//rotate the controlled object (prolly shouldnt be dont here, but fuck it)
		MousePos dPos = input->getDeltaPos();
		//glm::vec3 rotation = controlled->getRotation();
		glm::vec3 rotation = controlled->rot;
		rotation.y += (float)dPos.x / sensitivity;
		xrot += (float)dPos.y / sensitivity;
		if (rotation.y > 2 * 3.14f) 
		{
			rotation.y -= 2 * 3.14f;
		}
		else if( rotation.y < - 2 * 3.14f )
		{
			rotation.y += 2 * 3.14f;
		}
		if( xrot > 3.14f / 2 )
		{
			xrot = 3.14f / 2;
		}
		if (xrot < -3.14f / 2) 
		{
			xrot = -3.14f / 2;
		}

		controlled->rot = rotation;
		controlled->lookAt = glm::normalize(glm::vec3(
			cos(xrot) * sin(rotation.y),
			sin(xrot),
			cos(xrot)*cos(rotation.y)
		));
	}
}

void Controls::setControl( TransformHandler* handler, int id )
{
	transformHandler = handler;
	transformID = id;
}

void Controls::sensitivityFactor(float factor)
{
	sensitivity *= factor;
}

void Controls::setEnabled( bool e )
{
	enabled = e;
}
