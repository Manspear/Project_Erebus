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


void main(){
	gColor = vColor[0];
	vec3 halfLengths = vHalfLengths[0];
	mat4 viewProjection = projectionMatrix * viewMatrix;

	
	vec4 nearBotRight = viewProjection * (vPos[0] + (vxAxis[0]*halfLengths.x) + (vyAxis[0]*-halfLengths.y) +  (vzAxis[0]*-halfLengths.z));
	vec4 nearBotLeft = viewProjection * (vPos[0] + (vxAxis[0]*-halfLengths.x) + (vyAxis[0]*-halfLengths.y) +  (vzAxis[0]*-halfLengths.z));
	vec4 nearTopRight= viewProjection * (vPos[0] + (vxAxis[0]*halfLengths.x) + (vyAxis[0]*halfLengths.y) +  (vzAxis[0]*-halfLengths.z));
	vec4 nearTopLeft= viewProjection * (vPos[0] + (vxAxis[0]*-halfLengths.x) + (vyAxis[0]*halfLengths.y) +  (vzAxis[0]*-halfLengths.z));

	vec4 farBotRight= viewProjection * (vPos[0] + (vxAxis[0]*halfLengths.x) + (vyAxis[0]*-halfLengths.y) +  (vzAxis[0]*halfLengths.z));
	vec4 farBotLeft= viewProjection * (vPos[0] + (vxAxis[0]*-halfLengths.x) + (vyAxis[0]*-halfLengths.y) +  (vzAxis[0]*halfLengths.z));
	vec4 farTopRight= viewProjection * (vPos[0] + (vxAxis[0]*halfLengths.x) + (vyAxis[0]*halfLengths.y) +  (vzAxis[0]*halfLengths.z));
	vec4 farTopLeft= viewProjection * (vPos[0] + (vxAxis[0]*-halfLengths.x) + (vyAxis[0]*halfLengths.y) +  (vzAxis[0]*halfLengths.z));

	//vec4 nearBotRight =viewProjection * vec4((vxAxis[0]*halfLengths.x), (vyAxis[0]*-halfLengths.y) , (vzAxis[0]*-halfLengths.z), 1);
	//vec4 nearBotLeft = viewProjection * vec4((vxAxis[0]*-halfLengths.x), (vyAxis[0]*-halfLengths.y) , (vzAxis[0]*-halfLengths.z), 1);
	//vec4 nearTopRight =viewProjection * vec4((vxAxis[0]*halfLengths.x), (vyAxis[0]*halfLengths.y) , (vzAxis[0]*-halfLengths.z), 1);
	//vec4 nearTopLeft =viewProjection * vec4((vxAxis[0]*-halfLengths.x), (vyAxis[0]*halfLengths.y) , (vzAxis[0]*-halfLengths.z), 1);

	//vec4 farBotRight =viewProjection * vec4((vxAxis[0]*halfLengths.x), (vyAxis[0]*-halfLengths.y) , (vzAxis[0]*halfLengths.z), 1);
	//vec4 farBotLeft = viewProjection * vec4((vxAxis[0]*-halfLengths.x), (vyAxis[0]*-halfLengths.y) , (vzAxis[0]*halfLengths.z), 1);
	//vec4 farTopRight = viewProjection * vec4((vxAxis[0]*halfLengths.x), (vyAxis[0]*halfLengths.y) , (vzAxis[0]*halfLengths.z), 1);
	//vec4 farTopLeft =viewProjection * vec4((vxAxis[0]*-halfLengths.x), (vyAxis[0]*halfLengths.y) , (vzAxis[0]*halfLengths.z), 1);

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
