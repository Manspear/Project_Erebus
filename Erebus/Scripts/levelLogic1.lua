function LoadLogic()

end

function UpdateLogic()
	TutorialBarrier()
end

function LoadLogic()

end

function TutorialBarrier()
	print("1")
end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }