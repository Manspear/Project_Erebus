#include "Ray.h"

/*
To implement:
Ray agaisnt Hitbox


*/

Ray::Ray(GLFWwindow* window, glm::mat4* projectionMatrix)
{
	this->windowRef = window;
	this->projectionMatrixRef = projectionMatrix;
	//glfwGetCt
}

Ray::~Ray()
{
}

void Ray::updateRay(const glm::mat4& viewMat, const glm::vec3& cameraPos) {
	glfwGetCursorPos(this->windowRef, &mousePosX, &mousePosY);

	//std::cout << "MousePos X, Y: " << mousePosX << ", " << mousePosY << std::endl;


	ray_ndc = glm::vec3((2.f*mousePosX / WINDOW_WIDTH - 1.f),
		1.f - (2.f*mousePosY) / WINDOW_HEIGHT,
		1.f);

	ray_clip = glm::vec4(ray_ndc.x, ray_ndc.y, -1.f, 1.f);
	ray_eye = glm::inverse(*projectionMatrixRef) * ray_clip;
	ray_eye = glm::vec4(ray_eye.x, ray_eye.y, -1.f, 0.f);
	ray_world = glm::vec3(glm::inverse(viewMat)* ray_eye);
	ray_world = glm::normalize(ray_world);

	rayDirection = ray_world;
	rayPosition = cameraPos;

	//std::cout << glm::to_string(ray_world) << std::endl;

	////RAY AGAINST TRIANGLE
	//int cIndex = 0;
	//float distance = 0;
	//for (size_t i = 0; i < totalVertices; i+=3)
	//{
	//	if (triangleIntersection(glm::vec3(objVertices[cIndex]), glm::vec3(objVertices[cIndex+1]), glm::vec3(objVertices[cIndex+2]), cameraPos, ray_world, distance)) {
	//		std::cout << "HIT: " << distance << " AT point: " << glm::to_string(cameraPos + (ray_world * distance)) << std::endl;
	//	}
	//}

	//
	//glm::vec3 vert1 = glm::vec3(0, 5, 0);
	//glm::vec3 vert2 = glm::vec3(5, 0, 0);
	//glm::vec3 vert3 = glm::vec3(-5, 0, 0);
	
}


//Möller-Trumbore Alghorithm
int Ray::triangleIntersection(const glm::vec3 vert1, const glm::vec3 vert2, const glm::vec3 vert3,
	const glm::vec3 rayO, const glm::vec3 rayD, float& distance)
{
	float EPSILON = 0.000001f;
	glm::vec3 edge1, edge2;
	glm::vec3 P, Q, T;
	float det, inv_det, u, v;
	float t;

	edge1 = vert2 - vert1;
	edge2 = vert3 - vert1;


	P = glm::cross(rayD, edge2);

	det = glm::dot(edge1, P);


	if (det > -EPSILON && det < EPSILON) return 0;

	inv_det = 1.f / det;

	T = rayO - vert1;

	u = glm::dot(T, P) * inv_det;

	//The intersection point is outside the triangle
	if (u<0.f || u>1.f) return 0;

	Q = glm::cross(T, edge1);

	v = dot(rayD, Q) * inv_det;

	//The intersection point is outside the triangle
	if (v<0.f || u + v > 1.f) return 0;

	t = glm::dot(edge2, Q)* inv_det;

	if (t > EPSILON) {
		distance = t;
		return 1;
	}

	//There was no hit
	return 0;

}


