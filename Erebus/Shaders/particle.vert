#version 420 core

in vec3 pos;
in vec3 color;

uniform mat4 modelMatrix;

out Vertex
{
 vec4 color;
} vertex;

void main(){
 
 gl_Position = modelMatrix *  vec4(pos, 1.0);
 vertex.color = vec4(color, 1.0);

}
