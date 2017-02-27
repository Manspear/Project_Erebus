#version 430 core
layout (location = 0) out vec2 gDepth;

const int NUM_CASCADES = 3;

void main (){
	float depth = gl_FragCoord.z;

	float dx = dFdx(depth);
	float dy = dFdy(depth);
	float moment2 = depth * depth + 0.25 * (dx * dx + dy * dy);
	
	gDepth = vec2(depth,moment2);
}
