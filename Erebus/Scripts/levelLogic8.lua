bossKill = {}
bossKill.notAGameState = false
bossKill.tranny = Gear.BindForwardInstance(Assets.LoadModel( "Models/blackHole_Sphere.model" ) )
Transform.SetScale(bossKill.tranny, 15)
bossKill.someTimer = 2
bossKill.stage1 = false
bossKill.stage2 = false
function LoadLogic()
	
end

function UpdateLogic(dt)
	RewindEvent(dt)
end

function RewindEvent(dt)
	if not boss.alive and not bossKill.stage1 then
	print(bossKill)
		bossKill.stage1 = true
		player.isControlable = false
		local pos = player.position
		pos.y = pos.y + 150
		Transform.SetPosition(tranny, pos)
		camera.toFollow = player.dummyTrans
		bossKill.someTimer = 2
	end
	if bossKill.stage1 then
		bossKill.someTimer = bossKill.someTimer - dt
		if bossKill.someTimer < 0 then
			bossKill.stage1 = false
			bossKill.stage2 = true
			Transform.ActiveControl(bossKill.tranny, true)
			Sky.SetAmbient({r = 0.0, g = 0.0, b = 0.0})
			bossKill.someTimer = 8
		end
	end
	if bossKill.stage2 then
		bossKill.someTimer = bossKill.someTimer - dt
		Transform.CopyPosition(tranny, player.transformID)
		Transform.CopyPosition(player.transformID, player.dummyTrans.transformID)
		UpdateCamera(0)
		if bossKill.someTimer < 0 then		
			camera.toFollow = player
			notAGameState = false
			player.isControlable = true
			Rewind()
			Particle.Explode(player.dashEndParticles, player.position)			
		end
	end
end

function UnloadLogic()
	--Gear.UnbindInstance( bossKill.tranny )
	--Assets.UnloadModel("Models/blackHole_Sphere.model")
end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }