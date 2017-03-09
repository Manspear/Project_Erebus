function LoadLogic2()
	
end

function UpdateLogic()
	if loadedStream then UnloadLogic1() end
end

function UnloadLogic()

end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }