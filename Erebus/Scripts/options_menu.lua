local scriptsMenu = {}
local scriptFilesMenu =
{
 "Scripts/optionsUI.lua"
}

function LoadOptionsMenu()
	-- run scripts
	for i=1, #scriptFilesMenu do
		scriptsMenu[i] = dofile(scriptFilesMenu[i])
	end

	-- call their load function
	for key,value in pairs(scriptsMenu) do
		if value.Load then value.Load() end
	end

	local file
	if file_check("settings.lua") == false then
		file = io.open("settings.lua", "w")
		file:write("SETTING_FULLSCREEN = false\n")
		file:write("SETTING_DEBUG = true\n")
		file:close()
	end
	scriptsMenu[(#scriptFilesMenu+1)] = dofile("settings.lua")

	Gear.Fullscreen(SETTING_FULLSCREEN);

end

function UnloadOptionsMenu()
file = io.open("settings.lua", "w")
	if file then
		
		file:write("SETTING_FULLSCREEN = " .. boolToString(SETTING_FULLSCREEN) .. "\n")
		file:write("SETTING_DEBUG = " .. boolToString(SETTING_DEBUG) .. "\n")
	end
file:close()
end

function UpdateOptionsMenu(dt)
	for key,value in pairs(scriptsMenu) do
		value.Update(dt)
	end
	if gamestate.states[GAMESTATE_GAMEPLAY].gameStarted then
		gamestate.states[GAMESTATE_GAMEPLAY].Update(dt)
	end
end

function EnterOptionsMenu()
	Gear.QueueModels(false)
	CollisionHandler.Disable()
	Gear.CursorVisible(true)
end

function ExitOptionsMenu()
	
end

function file_check(file_name)
	
  local file_found=io.open(file_name, "r")      
  
  if file_found==nil then
    file_found=false
  else
	file_found:close()
    file_found=true
  end
  return file_found
end

function boolToString(boolean)
	local output
	if boolean then
		output = "true"
	else
		output = "false"
	end
	return output
end

return { Load = LoadOptionsMenu, Unload = UnloadOptionsMenu, Update = UpdateOptionsMenu, Enter = EnterOptionsMenu, Exit = ExitOptionsMenu }