#pragma once
enum eObjectType
{
	MODEL,
	MESH,
	SPAWN,
	LIGHT,
	NOTSET
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