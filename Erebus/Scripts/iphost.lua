local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/iphostUI.lua"
}

function Loadiphost()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function Unloadiphost()
end

function Updateiphost(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
end

function Enteriphost()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function Exitiphost()
end

return { Load = Loadiphost, Unload = Unloadiphost, Update = Updateiphost, Enter = Enteriphost, Exit = Exitiphost }