#version 420 core

layout (location = 0) in vec4 pos;
out float size;
void main(){
    size = pos.w;
	gl_Position = vec4(pos.xyz, 1.0);
}
