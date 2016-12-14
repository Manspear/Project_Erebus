#version 420 core

layout(points) in;
layout(line_strip, max_vertices = 2) out;

in vec4 vPos1[];
in float vRad[];
in vec3 vColor[];

out vec3 gColor;

void main(){
	gColor = vColor[0];

	gl_Position = vPos1[0];
	EmitVertex();
	gl_Position = vPos1[0] + vec3(0,10,0);
	EmitVertex();

	EndPrimitive();

	int totalDegree = 360, linesPerSphere = 16;
	//debugSpheres[totalDebugLines++] = debugSphereStruct(position, radius, color);
	std::vector<staticNonModels*> objectToDrawTemp;
	const int totalDegree = 360, linesPerSphere = 16;


	int incremention = totalDegree / linesPerSphere;
	float rad = 0;
	glm::vec3 circle1[totalDegree / linesPerSphere];
	glm::vec3 circle2[totalDegree / linesPerSphere];
	glm::vec3 circle3[totalDegree / linesPerSphere];
	for (float i = 0; i < totalDegree; i+= incremention)
	{
		float rad = 2 * glm::pi<float>() * i / totalDegree;
		circle1[(int)i/ incremention] = glm::vec3(glm::cos(rad)*radius, 0, glm::sin(rad)*radius) + position;
		circle2[(int)i / incremention] = glm::vec3(0, glm::cos(rad)*radius, glm::sin(rad)*radius) + position;
		circle3[(int)i / incremention] = glm::vec3(glm::cos(rad)*radius, glm::sin(rad)*radius, 0) + position;
		
		
	}

	for (size_t i = 0; i < totalDegree; i+= incremention)
	{
		objectToDrawTemp.push_back(createLine(circle1[(int)i / incremention],
			circle1[(i+ incremention >=totalDegree? 0 :((int)i / incremention)+1)]));
		objectToDrawTemp.push_back(createLine(circle2[(int)i / incremention],
			circle2[(i + incremention >= totalDegree ? 0 : ((int)i / incremention) + 1)]));
		objectToDrawTemp.push_back(createLine(circle3[(int)i / incremention],
			circle3[(i + incremention >= totalDegree ? 0 : ((int)i / incremention) + 1)]));
	}

	this->objectsToDraw.push_back(new ObjectsToDraw(objectToDrawTemp, color));
}