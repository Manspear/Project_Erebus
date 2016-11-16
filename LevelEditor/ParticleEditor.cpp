#include "ParticleEditor.h"

glm::vec3 tempPos;
GLfloat tempDuration;
GLfloat tempSpeed;
GLfloat tempAngle;
glm::vec3 tempColor;

ParticleEditor::ParticleEditor()
{
	part = new Particle();
	tempPos = part->getPos();
	tempDuration = part->getDuration();
	tempSpeed = part->getSpeed();
	tempAngle = part->getAngle();
	tempColor = part->getColor();
}

ParticleEditor::~ParticleEditor()
{
	delete part;
}

void TW_CALL addParticle(void*)
{
	//Particle* par = new Particle(tempPos, tempDuration, tempSpeed, tempAngle, tempColor);
}

void ParticleEditor::particleEditorBar()
{
	particleBar = TwNewBar("Particle Editor Bar");

	
	
	TwAddVarRW(particleBar, "Position", TW_TYPE_DIR3F, &tempPos, " label='Pos'");
	TwAddVarRW(particleBar, "Duration", TW_TYPE_FLOAT, &tempDuration, " label='Duration' min=0 max=10 step=0.01");
	TwAddVarRW(particleBar, "Speed", TW_TYPE_FLOAT, &tempSpeed, " label='Speed' min=1 max=10 step=0.1");
	TwAddVarRW(particleBar, "Angle", TW_TYPE_FLOAT, &tempAngle, " label='Angle' min=0 max=180 step=1");
	TwAddVarRW(particleBar, "Color", TW_TYPE_COLOR3F, &tempColor, " label='Color'");
	TwAddSeparator(particleBar, "Sep", NULL);
	TwAddButton(particleBar, "AddParticleButton", addParticle, NULL, "label='Add Particle'");
}