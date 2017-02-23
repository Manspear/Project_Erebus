#version 420 core

layout (location = 0) in vec3 pos;
layout (location = 1) in vec2 attributes;
out float size;
out float alpha;
void main(){
    size = attributes.x;
	alpha = attributes.y;
	gl_Position = vec4(pos.xyz, 1.0);
}
