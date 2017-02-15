#include "ModelInstance.h"

namespace Gear
{
	ModelInstance::ModelInstance()
	{
		activeTransforms = 0;
		instanceVAO = 0;
		instanceVBO = 0;
	}

	ModelInstance::~ModelInstance()
	{
		if (instanceVAO != 0)
			glDeleteBuffers(1, &instanceVAO);
		if (instanceVBO != 0)
			glDeleteBuffers(1, &instanceVBO);
	}

	void ModelInstance::init()
	{
		glGenBuffers(1, &instanceVBO);
		glGenVertexArrays(1, &instanceVAO);

		glBindVertexArray(instanceVAO);
		glBindBuffer(GL_ARRAY_BUFFER, instanceVBO);

		glEnableVertexAttribArray(4);
		glEnableVertexAttribArray(5);
		glEnableVertexAttribArray(6);
		glEnableVertexAttribArray(7);

		glVertexAttribPointer(4, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, 0);
		glVertexAttribPointer(5, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, (void*)(sizeof(glm::vec4)));
		glVertexAttribPointer(6, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, (void*)(sizeof(glm::vec4) * 2));
		glVertexAttribPointer(7, 4, GL_FLOAT, GL_FALSE, sizeof(glm::vec4) * 4, (void*)(sizeof(glm::vec4) * 3));

		glVertexAttribDivisor(4, 1);
		glVertexAttribDivisor(5, 1);
		glVertexAttribDivisor(6, 1);
		glVertexAttribDivisor(7, 1);

		glBindBuffer(GL_ARRAY_BUFFER, 0);
		glBindVertexArray(0);
	}

	void ModelInstance::allocateBuffer()
	{
		if ((instanceVBO | instanceVAO) == 0)
			init();

		//glBindVertexArray(instanceVAO);
		glBindBuffer(GL_ARRAY_BUFFER, instanceVBO);
		glBufferData(GL_ARRAY_BUFFER, sizeof(glm::mat4) * activeTransforms, glm::value_ptr(worldMatrices[0]), GL_STREAM_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
		//glBindVertexArray(0);
	}

	void ModelInstance::bindBuffers()
	{
		glBindVertexArray(instanceVAO);
		glBindBuffer(GL_ARRAY_BUFFER, instanceVBO);
	}

	void ModelInstance::bufferData()
	{
		glBufferData(GL_ARRAY_BUFFER, sizeof(glm::mat4) * activeTransforms, glm::value_ptr(worldMatrices[0]), GL_STREAM_DRAW);
	}

	void ModelInstance::updateWorldMatrices()
	{
		for (int i = 0; i < transforms.size(); i++)
		{
			TransformStruct t = transforms[i];
			glm::vec3 tempLook = glm::normalize(glm::vec3(t.lookAt.x, 0, t.lookAt.z));
			glm::vec3 axis = glm::cross(tempLook, { 0, 1, 0 });

			glm::mat4 matrix = glm::translate(glm::mat4(), t.pos);
			matrix = glm::scale(matrix, t.scale);
			matrix = glm::rotate(matrix, t.rot.z, axis);
			matrix = glm::rotate(matrix, t.rot.y, { 0, 1, 0 });

			worldMatrices[i] = matrix;
		}
	}

	int ModelInstance::addStaticInstance(TransformStruct trans, glm::mat4 world)
	{
		int index = transforms.size();
		transforms.push_back(trans);
		worldMatrices.push_back(world);
		return index;
	}

	int ModelInstance::addAnimatedInstance(TransformStruct trans, glm::mat4 world, Animation* anim)
	{
		int index = transforms.size();
		transforms.push_back(trans);
		worldMatrices.push_back(world);
		animations.push_back(anim);
		return index;
	}

	void ModelInstance::incrActiveTransforms()
	{
		if (activeTransforms < transforms.size())
			activeTransforms++;
	}

	void ModelInstance::decrActiveTransforms()
	{
		if (activeTransforms > 0)
			activeTransforms--;
	}

#pragma region Setters
	void ModelInstance::setAsset(ModelAsset* a)
	{
		if (a)
			asset = a;
	}

	void ModelInstance::setActiveTransforms(int n)
	{
		activeTransforms = n < 0 ? activeTransforms : transforms.size() < n ? transforms.size() : n;
	}

	void ModelInstance::setTransform(int index, TransformStruct trans)
	{
		transforms.at(index) = trans;
	}

	void ModelInstance::setWorldMatrix(int index, glm::mat4 world)
	{
		worldMatrices.at(index) = world;
	}
#pragma endregion

#pragma region Getters
	ModelAsset* ModelInstance::getAsset() const
	{
		return asset;
	}

	int ModelInstance::getWorldMatrixCount() const
	{
		return worldMatrices.size();
	}

	int ModelInstance::getActiveTransforms() const
	{
		return activeTransforms;
	}

	int ModelInstance::getAnimationMatrixIndex(int index) const
	{
		return animations.at(index)->getMatrixIndex();
	}

	GLuint ModelInstance::getVBO() const
	{
		return instanceVBO;
	}

	GLuint ModelInstance::getVAO() const
	{
		return instanceVAO;
	}

	TransformStruct* ModelInstance::getTransform(int index)
	{
		return &transforms.at(index);
	}

	glm::mat4& ModelInstance::getWorldMatrix(int index)
	{
		return worldMatrices.at(index);
	}
#pragma endregion
}