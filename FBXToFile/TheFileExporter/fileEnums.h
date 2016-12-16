#pragma once
enum eObjectType
{
	MODEL,
	MESH,
	SPAWN,
	LIGHT,
	NOTYPE
};
enum eModelType
{
	STATIC,
	ANIMATED
};

enum eLightType
{
	POINT,
	DIRECTIONAL,
	SPOTLIGHT,
	AREALIGHT,
	VOLUMELIGHT
};