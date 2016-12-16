#version 420 core

layout(points) in;
layout(line_strip, max_vertices = 16) out;


in vec4 vMinPos[];
in vec4 vMaxPos[];
in vec3 vColor[];

out vec3 gColor;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;


void main(){
	gColor = vColor[0];
	mat4 viewProjection = projectionMatrix * viewMatrix;

	vec4 nearBotRight =viewProjection * vec4(vMaxPos[0].x, vMinPos[0].y, vMinPos[0].z, 1);
	vec4 nearBotLeft = viewProjection * vMinPos[0];
	vec4 nearTopRight =viewProjection * vec4(vMaxPos[0].x, vMaxPos[0].y, vMinPos[0].z,1);
	vec4 nearTopLeft =viewProjection * vec4(vMinPos[0].x, vMaxPos[0].y, vMinPos[0].z,1);

	vec4 farBotRight =viewProjection * vec4(vMaxPos[0].x, vMinPos[0].y, vMaxPos[0].z,1);
	vec4 farBotLeft =viewProjection * vec4(vMinPos[0].x, vMinPos[0].y, vMaxPos[0].z,1
	);
	vec4 farTopRight = viewProjection * vMaxPos[0];
	vec4 farTopLeft =viewProjection * vec4(vMinPos[0].x, vMaxPos[0].y, vMaxPos[0].z,1);
	//gl_Position = viewProjection * ((x, y, z, 0) + vPos1[0]);
	//Green
	gl_Position = farTopLeft;
	EmitVertex();
	gl_Position = farBotLeft;
	EmitVertex();
	gl_Position = nearBotLeft;
	EmitVertex();
	gl_Position = nearBotRight;
	EmitVertex();
	gl_Position = farBotRight;
	EmitVertex();
	gl_Position = farBotLeft;
	EmitVertex();

	EndPrimitive();

	//Blue
	gl_Position = nearBotLeft;
	EmitVertex();
	gl_Position = nearTopLeft;
	EmitVertex();
	gl_Position = farTopLeft;
	EmitVertex();
	gl_Position = farTopRight;
	EmitVertex();
	gl_Position = nearTopRight;
	EmitVertex();
	gl_Position = nearBotRight;
	EmitVertex();

	EndPrimitive();

	//Brown
	gl_Position = nearTopLeft;
	EmitVertex();
	gl_Position = nearTopRight;
	EmitVertex();
	gl_Position = farTopRight;
	EmitVertex();
	gl_Position = farBotRight;
	EmitVertex();

	EndPrimitive();

	//	objectToDrawTemp.push_back(createLine(nearBotLeft, nearBotRight));
	//objectToDrawTemp.push_back(createLine(nearBotLeft, nearTopLeft));
	//objectToDrawTemp.push_back(createLine(nearBotRight, nearTopRight));
	//objectToDrawTemp.push_back(createLine(nearTopLeft, nearTopRight));

	////Far Face
	//objectToDrawTemp.push_back(createLine(farBotLeft, farBotRight));
	//objectToDrawTemp.push_back(createLine(farBotLeft, farTopLeft));
	//objectToDrawTemp.push_back(createLine(farBotRight, farTopRight));
	//objectToDrawTemp.push_back(createLine(farTopLeft, farTopRight));

	//objectToDrawTemp.push_back(createLine(farBotLeft, nearBotLeft));
	//objectToDrawTemp.push_back(createLine(farTopLeft, nearTopLeft));
	//objectToDrawTemp.push_back(createLine(farBotRight, nearBotRight));
	//objectToDrawTemp.push_back(createLine(farTopRight, nearTopRight));

	
}



	//std::vector<staticNonModels*> objectToDrawTemp;
	//vec3 nearBotRight =vec3(vMaxPos[0].x, vMinPos[0].y, vMinPos[0].z);
	//vec3 nearBotLeft = vMinPos[0];
	//vec3 nearTopRight =vec3(vMaxPos[0].x, vMaxPos[0].y, vMinPos[0].z);
	//vec3 nearTopLeft =vec3(vMinPos[0].x, vMaxPos[0].y, vMinPos[0].z);

	//vec3 farBotRight =vec3(vMaxPos[0].x, vMinPos[0].y, vMaxPos[0].z);
	//vec3 farBotLeft =vec3(vMinPos[0].x, vMinPos[0].y, vMaxPos[0].z);
	//vec3 farTopRight = vMaxPos[0];
	//vec3 farTopLeft =vec3(vMinPos[0].x, vMaxPos[0].y, vMaxPos[0].z);


	////Front face
	//objectToDrawTemp.push_back(createLine(nearBotLeft, nearBotRight));
	//objectToDrawTemp.push_back(createLine(nearBotLeft, nearTopLeft));
	//objectToDrawTemp.push_back(createLine(nearBotRight, nearTopRight));
	//objectToDrawTemp.push_back(createLine(nearTopLeft, nearTopRight));

	////Far Face
	//objectToDrawTemp.push_back(createLine(farBotLeft, farBotRight));
	//objectToDrawTemp.push_back(createLine(farBotLeft, farTopLeft));
	//objectToDrawTemp.push_back(createLine(farBotRight, farTopRight));
	//objectToDrawTemp.push_back(createLine(farTopLeft, farTopRight));

	//objectToDrawTemp.push_back(createLine(farBotLeft, nearBotLeft));
	//objectToDrawTemp.push_back(createLine(farTopLeft, nearTopLeft));
	//objectToDrawTemp.push_back(createLine(farBotRight, nearBotRight));
	//objectToDrawTemp.push_back(createLine(farTopRight, nearTopRight));

	//this->objectsToDraw.push_back(new ObjectsToDraw(objectToDrawTemp, color));

