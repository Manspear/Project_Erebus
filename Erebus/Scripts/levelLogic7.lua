function LoadLogic()

end

function UpdateLogic()
	TutorialBarrier()
end

function LoadLogic()

end

function TutorialBarrier()
	print("Du klarade det")
end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }