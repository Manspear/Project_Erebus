local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/ipconnectUI.lua"
}

function Loadipconnect()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end
end

function Unloadipconnect()
end

function Updateipconnect(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
end

function Enteripconnect()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function Exitipconnect()
end

return { Load = Loadipconnect, Unload = Unloadipconnect, Update = Updateipconnect, Enter = Enteripconnect, Exit = Exitipconnect }