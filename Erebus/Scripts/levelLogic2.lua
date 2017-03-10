loadedLake = false

function LoadLogic2()
	WaterID = {}
	WaterID.model = Assets.LoadModel('Models/lake.model')
	WaterID.transformID, WaterID.blendingIndex = Gear.BindForwardInstance(WaterID.model, 1)
	Transform.SetScale(WaterID.transformID, 120)
	WaterID.blendValue = {x = 0, y = 0}
	Transform.ActiveControl(WaterID.transformID, true)
	Transform.SetPosition(WaterID.transformID, {x = 205, y = 30, z = 200})
	loadedLake = true
end

function UpdateLogic(dt)
	if loadedStream then UnloadLogic1() end
	if not loadedLake then
		LoadLogic2()
	else
		StreamDaLake(dt)
	end 
end

function StreamDaLake(dt)
	WaterID.blendValue.x = WaterID.blendValue.x + 0.1*dt
	WaterID.blendValue.y = WaterID.blendValue.y + 0.1*dt
	Gear.SetUniformValue(WaterID.blendingIndex, 0.05*math.sin(WaterID.blendValue.x), 0.1*math.cos(WaterID.blendValue.y))
end

function UnloadLogic2()
	if WaterID then
		Gear.UnbindInstance(WaterID.transformID)
		Assets.UnloadModel('Models/lake.model')
		Gear.UnbindForward()
	end
	WaterID = nil
	loadedLake = false
end

return { Load = LoadLogic2, Unload = UnloadLogic2, Update = UpdateLogic }