#version 420 core

layout(points) in;
layout(line_strip, max_vertices = 16) out;

in vec4 vPos[];
in vec4 vxAxis[];
in vec4 vyAxis[];
in vec4 vzAxis[];
in vec3 vHalfLengths[];
in vec3 vColor[];

out vec3 gColor;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

//Prety fugly, but works
void main(){
	gColor = vColor[0];
	vec3 halfLengths = vHalfLengths[0];
	mat4 viewProjection = projectionMatrix * viewMatrix;

	vec4 posX = vxAxis[0]*halfLengths.x;
	vec4 negX = vxAxis[0]*-halfLengths.x;
	vec4 posY = vyAxis[0]*halfLengths.y;
	vec4 negY = vyAxis[0]*-halfLengths.y;
	vec4 posZ = vzAxis[0]*halfLengths.z;
	vec4 negZ = vzAxis[0]*-halfLengths.z;
	
	vec4 nearBotRightPos = (vPos[0] + posX + negY +  negZ);
	vec4 nearBotLeftPos = (vPos[0] + negX + negY+  negZ);
	vec4 nearTopRightPos = (vPos[0] + posX + posY +  negZ);
	vec4 nearTopLeftPos = (vPos[0] + negX +posY +  negZ);

	vec4 farBotRightPos = (vPos[0] + posX + negY+  posZ);
	vec4 farBotLeftPos = (vPos[0] + negX + negY +  posZ);
	vec4 farTopRightPos = (vPos[0] +posX + posY +  posZ);
	vec4 farTopLeftPos = (vPos[0] + negX + posY +  posZ);

	nearBotRightPos.w = 1;
	nearBotLeftPos.w = 1;
	nearTopRightPos.w = 1;
	nearTopLeftPos.w = 1;

	farBotRightPos.w = 1;
	farBotLeftPos.w = 1;
	farTopRightPos.w = 1;
	farTopLeftPos.w = 1;

	vec4 nearBotRight = viewProjection * nearBotRightPos;
	vec4 nearBotLeft = viewProjection * nearBotLeftPos;
	vec4 nearTopRight= viewProjection * nearTopRightPos;
	vec4 nearTopLeft= viewProjection * nearTopLeftPos;

	vec4 farBotRight= viewProjection * farBotRightPos;
	vec4 farBotLeft= viewProjection * farBotLeftPos;
	vec4 farTopRight= viewProjection * farTopRightPos;
	vec4 farTopLeft= viewProjection * farTopLeftPos;

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
}
