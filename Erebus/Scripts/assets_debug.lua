DEBUG_ASSETS = false

function UpdateDebugAssets()
	if DEBUG_ASSETS then
		local assets = Assets.GetAssets()
		local numAssets = 0
		for _,_ in pairs(assets) do
			numAssets = numAssets + 1
		end

		Gear.Print("Assets (" .. numAssets .. "):", 0, 128, 0.5)
		local offset = 16
		for k,v in pairs(assets) do
			Gear.Print(v, 0, 128+offset, 0.5)
			Gear.Print(k, 32, 128+offset, 0.5)
			offset = offset + 16
		end
	end
end