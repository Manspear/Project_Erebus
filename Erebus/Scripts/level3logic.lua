function LoadLogic()

end

function UpdateLogic()
	TutorialBarrier()
end

function LoadLogic()

end

function TutorialBarrier()
	if player.charging == true then 
		print("3")
	end
end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }