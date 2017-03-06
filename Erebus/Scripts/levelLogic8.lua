function LoadLogic()
	
end

function UpdateLogic(dt)
	if not boss.alive and not notAGameState then
		notAGameState = true
		player.isControlable = false
		tranny = Gear.BindForwardInstance(Assets.LoadModel( "Models/blackHole_Sphere.model" ) )
		Transform.SetScale(tranny, 15)
		Transform.ActiveControl(tranny, true)
		local pos = player.position
		pos.y = pos.y + 150
		Transform.SetPosition(tranny, pos)
		someTimer = 10
	end
	if notAGameState then
		someTimer = someTimer - dt
		Transform.CopyPosition(tranny, player.transformID)
		UpdateCamera(0)
		if someTimer < 0 then
			Gear.UnbindInstance( tranny )
			Assets.UnloadModel("Models/blackHole_Sphere.model")
			notAGameState = nil
			player.isControlable = true
			someTimer = nil
			Rewind()
		end
	end
end

function UnloadLogic()

end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }