function LoadLogic4()

end

function UpdateLogic()
	if loadedLake then UnloadLogic2() end
end

function UnloadLogic4()

end

return { Load = LoadLogic4, Unload = UnloadLogic4, Update = UpdateLogic }