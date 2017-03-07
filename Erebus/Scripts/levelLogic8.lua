--bossKill = {}
--bossKill.notAGameState = false
--bossKill.tranny = Gear.BindForwardInstance(Assets.LoadModel( "Models/blackHole_Sphere.model" ) )
--Transform.SetScale(bossKill.tranny, 15)
--bossKill.someTimer = 2
--bossKill.stage1 = false
function LoadLogic()
	
end

function UpdateLogic(dt)
	if rewinder.rewinding then
		rewinder:Update(dt)
	end
end

function UnloadLogic()

end

return { Load = LoadLogic, Unload = UnloadLogic, Update = UpdateLogic }