#pragma once
#include <stdio.h>      /* printf, scanf, puts, NULL */
#include <stdlib.h>     /* srand, rand */
#include <vector>


namespace RNG {
#pragma region 

	inline int range(int min, int max)
	{
		if (max == min) { return max; };
		if (max < min) { int temp = max; max = min; min = temp; }
		

		int random_integer = rand() % (max + (1) - min);
		random_integer += min;

		return random_integer;
	};

	inline float range(float min, float max)
	{
		if (max == min) { return max; };
		if (max < min) { float temp = max; max = min; min = temp; }
		
		float random_float = ((float)rand() / RAND_MAX) *(max - min) + min;
		return random_float;
	};



	inline unsigned int PickIndexVector(std::vector<unsigned int>* vector)
	{
		
		unsigned int result = rand() % vector->size();

		return result;


	}
#pragma endregion	

}

