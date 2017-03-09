function LoadLogic2()
	
end

function UpdateLogic()
	if loadedStream then UnloadLogic1() end
end

function UnloadLogic2()

end

return { Load = LoadLogic2, Unload = UnloadLogic2, Update = UpdateLogic }