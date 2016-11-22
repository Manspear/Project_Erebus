#version 420 core

in vec3 pos;
in vec3 color;
in vec3 normal;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec3 viewPos;
uniform mat4 modelMatrix;

out Vertex
{
 vec4 color;
 vec3 normal;
} vertex;


out vec3 vert_viewPos;
out vec3 vert_worldPos;

void main(){
 
 gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(pos, 1.0);
 vertex.color = vec4(color, 1.0);
 vertex.normal = normal;
 vert_viewPos = viewPos;
 vert_worldPos = (modelMatrix * vec4(pos, 1.0)).xyz;

}
