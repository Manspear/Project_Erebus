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
		//glBufferData(GL_ARRAY_BUFFER, sizeof(glm::mat4) * activeTransforms, glm::value_ptr(worldMatrices[0]), GL_STREAM_DRAW);

		if( activeTransforms > 0 )
		{
			static glm::mat4 temp[100];
			for( int i=0; i<transforms.size(); i++ )
			{
				if( transforms.at(i).active )
				{
					memcpy( temp+i, &worldMatrices[i], sizeof(glm::mat4) );
				}
			}

			glBufferData( GL_ARRAY_BUFFER, sizeof(glm::mat4)*activeTransforms, glm::value_ptr(temp[0]), GL_STREAM_DRAW );
		}
		else
		{
			glBufferData( GL_ARRAY_BUFFER, sizeof(glm::mat4), NULL, GL_STREAM_DRAW );
		}

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
		//glBufferData(GL_ARRAY_BUFFER, sizeof(glm::mat4) * activeTransforms, glm::value_ptr(worldMatrices[0]), GL_STREAM_DRAW);

		if( activeTransforms > 0 )
		{
			static glm::mat4 temp[100];
			for( int i=0; i<transforms.size(); i++ )
			{
				if( transforms.at(i).active )
				{
					memcpy( temp+i, &worldMatrices[i], sizeof(glm::mat4) );
				}
			}

			glBufferData( GL_ARRAY_BUFFER, sizeof(glm::mat4)*activeTransforms, glm::value_ptr(temp[0]), GL_STREAM_DRAW );
		}
		else
		{
			glBufferData( GL_ARRAY_BUFFER, sizeof(glm::mat4), NULL, GL_STREAM_DRAW );
		}
	}

	void ModelInstance::updateWorldMatrices()
	{
		activeTransforms = 0;
		for (int i = 0; i < transforms.size(); i++)
		{
			TransformStruct& t = transforms[i];
			if( t.active )
				activeTransforms++;

			glm::vec3 tempLook = glm::normalize(glm::vec3(t.lookAt.x, 0, t.lookAt.z));
			glm::vec3 axis = glm::cross(tempLook, { 0, 1, 0 });

			glm::mat4 matrix = glm::translate(glm::mat4(), t.pos);
			matrix = glm::rotate(matrix, t.rot.z, axis);
			matrix = glm::rotate(matrix, t.rot.x, t.lookAt );
			matrix = glm::rotate(matrix, t.rot.y, { 0, 1, 0 });
			matrix = glm::scale(matrix, t.scale);

			worldMatrices[i] = matrix;
		}
	}

	/*int ModelInstance::addStaticInstance(TransformStruct trans, glm::mat4 world)
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
	}*/

	int ModelInstance::pushStaticInstance( const TransformStruct& trans, const glm::mat4& world )
	{
		/*int index = transforms.size();
		transforms.push_back(trans);
		worldMatrices.push_back(world);
		return index;*/

		int index = -1;
		for( int i=0; i<transforms.size() && index < 0; i++ )
			if( vacant[i] )
				index = i;

		if( index < 0 )
		{
			index = transforms.size();
			transforms.push_back(trans);
			worldMatrices.push_back(world);
			vacant.push_back(false);
		}
		else
		{
			transforms.at(index) = trans;
			worldMatrices.at(index) = world;
			vacant.at(index) = false;
		}

		return index;
	}

	int ModelInstance::pushAnimatedInstance( const TransformStruct& trans, const glm::mat4& world, Animation* anim )
	{
		/*int index = transforms.size();
		transforms.push_back(trans);
		worldMatrices.push_back(world);
		animations.push_back(anim);
		vacant.push_back(false);
		return index;*/

		int index = -1;
		for( int i=0; i<transforms.size() && index < 0; i++ )
			if( vacant[i] )
				index = i;

		if( index < 0 )
		{
			index = transforms.size();
			transforms.push_back(trans);
			worldMatrices.push_back(world);
			animations.push_back(anim);
			vacant.push_back(false);
		}
		else
		{
			transforms.at(index) = trans;
			worldMatrices.at(index) = world;
			animations.at(index) = anim;
			vacant.at(index) = false;
		}

		return index;
	}

	/*void ModelInstance::popStaticInstance()
	{
		transforms.pop_back();
		worldMatrices.pop_back();
	}

	void ModelInstance::popAnimatedInstance()
	{
		transforms.pop_back();
		worldMatrices.pop_back();
		animations.pop_back();
	}*/

	/*void ModelInstance::popInstance()
	{
		assert( transforms.size() > 0 );

		transforms.pop_back();
		worldMatrices.pop_back();
		if( animations.size() > 0 )
			animations.pop_back();
	}*/

	void ModelInstance::popInstance( int index )
	{
		vacant.at(index) = true;
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

	void ModelInstance::setAnimation( int index, Animation* animation )
	{
		animations.at(index) = animation;
	}

	void ModelInstance::setActive( int index, bool active )
	{
		transforms.at(index).active = active;
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

	Animation* ModelInstance::getAnimation( int index )
	{
		return animations.at(index);
	}

	bool ModelInstance::getActive( int index )
	{
		return transforms.at(index).active;
	}
#pragma endregion
}