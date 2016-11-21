#version 420 core

in vec4 vertexColor;
out vec4 fragColor;

void main (){

  fragColor = vec4(t, 1.0) * vertexColor;

}