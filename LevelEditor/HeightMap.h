#pragma once

#include<stdint.h>


class HeightMap
{
public:



	HeightMap();
	~HeightMap();

	bool loadTexture();

	int getHeight(int x, int z);

private:


};