local screenImages = {}
local imageTextures = {}
local ipString = ""
local incorrectIP = false

function LoadipconnectUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	screenImages["background"] = UI.load(0, 0, 1280, 720);
end

function UnloadipconnectUI()
end

function UpdateipconnectUI(dt)
	DrawipconnectUI()
	ipString = ipKeyboardInput(ipString)
	Gear.Print("Type the ip to connect to", 465, 320)
	Gear.Print(ipString, 465, 380)

	if incorrectIP then
		Gear.Print("Error in ip formatting", 465, 420)
	end

	if Inputs.KeyPressed(Keys.Enter) == true then
		if ipString:match"(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)" ~= nil then
			local result = Erebus.StartNetworkClient(stringToIp(ipString))
			if result == true then
					gamestate.ChangeState(GAMESTATE_GAMEPLAY)
			else
					gamestate.ChangeState(GAMESTATE_MAIN_MENU)
			end
		else
			incorrectIP = true
		end
	end

	if Inputs.KeyPressed(Keys.Escape) == true then
		ipString = ""
		gamestate.ChangeState(GAMESTATE_MAIN_MENU)
	end

end

function DrawipconnectUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
end

function ipKeyboardInput(string)

	if ipString:len() < 15 then
		local tempText = Inputs.GetTextInput()
		if not (tempText == nil or tempText == '') then
			string = string .. tempText
		end
	end
	
	if Inputs.KeyRepeated(Keys.Backspace) == true then
		string = string:sub(1, -2)
		print(string)
	end

	return string
end

function stringToIp(string)
	local a2, b2, c2, d2 = string:match"(%d%d?%d?).(%d%d?%d?).(%d%d?%d?).(%d%d?%d?)"
	return {a = a2, b = b2, c = c2, d = d2}
end

return { Load = LoadipconnectUI, Unload = UnloadipconnectUI, Update = UpdateipconnectUI }