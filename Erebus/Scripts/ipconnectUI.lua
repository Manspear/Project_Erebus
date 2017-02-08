local screenImages = {}
local imageTextures = {}
local ipString = ""
local ourIpString = ""
local incorrectIP = false

function LoadipconnectUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	imageTextures["Input"] = Assets.LoadTexture("Textures/HealthBackground.png");
	imageTextures["host"] = Assets.LoadTexture("Textures/buttonHost.png");
	imageTextures["connect"] = Assets.LoadTexture("Textures/buttonConnect.png");
	imageTextures["back"] = Assets.LoadTexture("Textures/buttonReturn.png");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["Input"] = UI.load(340, 370, 600, 35);
	screenImages["host"] = UI.load(350, 415, 230, 45);
	screenImages["connect"] = UI.load(700, 415, 230, 45);

	screenImages["back"] = UI.load(465, 500, 350, 60);

	ourIpString = Network.GetIP()
end

function UnloadipconnectUI()
end

function UpdateipconnectUI(dt)
	DrawipconnectUI()
	Gear.Print("Your IP address is:", 488, 250)
	Gear.Print(ourIpString, 531, 285)

	ipString = ipKeyboardInput(ipString)
	Gear.Print("Type the IP to connect to", 446, 320)
	Gear.Print(ipString, 465, 370)

	if incorrectIP then
		Gear.Print("Error in IP formatting", 465, 460)
	end

	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["connect"], x,y) then
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

		if UI.mousePick(screenImages["host"], x,y) then
			local result = Erebus.StartNetworkHost()			
			if result == true then
				gamestate.ChangeState(GAMESTATE_GAMEPLAY)
			end
		end

		if UI.mousePick(screenImages["back"], x,y) then
			ipString = ""
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		end
	end
	

end

function DrawipconnectUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["Input"], imageTextures["Input"]);
	UI.drawImage(screenImages["host"], imageTextures["host"]);
	UI.drawImage(screenImages["connect"], imageTextures["connect"]);
	UI.drawImage(screenImages["back"], imageTextures["back"]);
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