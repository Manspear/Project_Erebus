#version 430 core
layout (location = 0) out vec2 gDepth1;
layout (location = 0) out vec2 gDepth2;
layout (location = 0) out vec2 gDepth3;

const int NUM_CASCADES = 3;

void main (){
	float depth = gl_FragCoord.z;

	float dx = dFdx(depth);
	float dy = dFdy(depth);
	float moment2 = depth * depth + 0.25 * (dx * dx + dy * dy);
	
	gDepth1 = vec2(depth,moment2);
}
