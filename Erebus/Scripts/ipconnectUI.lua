HOST_TIMEOUT_LIMIT = 60
local screenImages = {}
local imageTextures = {}
local ipString = ""
local hostText = "Waiting For Connection"
local ourIpString = ""
local incorrectIP = false
local hosting = false
local textFieldSelected = true
local hostFailed = false
local connectFailed = false
local textCounter = 1
local timeoutCounter = 0;

function LoadipconnectUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.dds");
	imageTextures["Input"] = Assets.LoadTexture("Textures/HealthBackground.dds");
	imageTextures["host"] = Assets.LoadTexture("Textures/buttonHost.dds");
	imageTextures["connect"] = Assets.LoadTexture("Textures/buttonConnect.dds");
	imageTextures["back"] = Assets.LoadTexture("Textures/buttonReturn.dds");
	imageTextures["cancel"] = Assets.LoadTexture("Textures/buttonCancel.dds");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["Input"] = UI.load(340, 370, 600, 45);
	screenImages["host"] = UI.load(350, 420, 230, 45);
	screenImages["connect"] = UI.load(700, 420, 230, 45);
	screenImages["textField"] = UI.load(375, 375, 526, 25);

	screenImages["back"] = UI.load(465, 500, 350, 60);

	ourIpString = Network.GetIP()

	if NETWORK_LATESTIP ~= nil then
		ipString = NETWORK_LATESTIP
	end
end

function UnloadipconnectUI()

end

function UpdateipconnectUI(dt)
	DrawipconnectUI()
	timeoutCounter = timeoutCounter + dt

	local enterPressed = Inputs.KeyPressed(Keys.Enter)

	if Inputs.ButtonReleased(Buttons.Left) or enterPressed then
		x,y = Inputs.GetMousePos()
		connectFailed = false;

		if ( UI.mousePick(screenImages["connect"], x,y ) or enterPressed ) and hosting == false then
			if ipString == "" then
				ipString = Network.GetIP()
			end
			if ipString:match"(%d%d?%d?)%p(%d%d?%d?)%p(%d%d?%d?)%p(%d%d?%d?)" ~= nil then
				local result = Erebus.StartNetworkClient(stringToIp(ipString))
				if result == true then
						NETWORK_LATESTIP = ipString
						gamestate.ChangeState(GAMESTATE_GAMEPLAY)
				else
						Erebus.ShutdownNetwork()
						connectFailed = true;
				end
			else
				incorrectIP = true
			end
		end

		if UI.mousePick(screenImages["host"], x,y) then
			if hosting then
				hosting = false
				Erebus.ShutdownNetwork()
			else
				hosting = Erebus.InitNetworkHost()
				timeoutCounter = 0
			end
			
		end

		if UI.mousePick(screenImages["textField"], x,y) and hosting == false then
			textFieldSelected = true
		else
			textFieldSelected = false
		end

		if UI.mousePick(screenImages["back"], x,y) then
			hosting = false
			Erebus.ShutdownNetwork()
			gamestate.ChangeState(GAMESTATE_MAIN_MENU)
		end
	end

	if hosting then
		if timeoutCounter >= HOST_TIMEOUT_LIMIT then
			hosting = false
			hostFailed = true
			timeoutCounter = 0
			Erebus.ShutdownNetwork()
		end
		local text = hostText
		for i=1, math.floor(textCounter) do
			text = text .. "."
		end
		Gear.Print(text, 464, 320)
		if Erebus.StartNetworkHost() then
			hosting = false
			gamestate.ChangeState(GAMESTATE_GAMEPLAY)
		end
		textCounter = textCounter + (1 * dt)
		if textCounter > 4 then 
			textCounter = 1
		end
	else
		Gear.Print("Enter Host Address To Join Game", 378, 320)
	end


	Gear.Print("Your IP Address Is:", 488, 250)
	Gear.Print(ourIpString, 531, 285)

	ipString = ipKeyboardInput(ipString)
	
	local tempTextfieldText = ipString
	if textFieldSelected and (math.floor(timeoutCounter*2) % 2) == 0 then
		tempTextfieldText = tempTextfieldText .. "_"
	end

	Gear.Print(tempTextfieldText, 531, 375)

	if incorrectIP then
		Gear.Print("Error In IP Formatting", 465, 465)
	end

	if  timeoutCounter >= 4 then
		hostFailed = false
	elseif hostFailed then
		Gear.Print("Connection Failed: No Player Connected!", 321, 465)
	end

	if connectFailed then
		Gear.Print("Connection Failed: no host on the entered ip!", 321, 465)
	end

	if timeoutCounter > HOST_TIMEOUT_LIMIT then
		timeoutCounter = 0
	end
end

function DrawipconnectUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["Input"], imageTextures["Input"]);
	if hosting then
		UI.drawImage(screenImages["host"], imageTextures["cancel"]);
	else
		UI.drawImage(screenImages["host"], imageTextures["host"]);
	end
	UI.drawImage(screenImages["connect"], imageTextures["connect"]);
	UI.drawImage(screenImages["back"], imageTextures["back"]);
end

function ipKeyboardInput(string)

	if ipString:len() < 15 and textFieldSelected then
		local tempText = Inputs.GetTextInput()
		if not (tempText == nil or tempText == '') then
			string = string .. tempText
		end
	end
	
	if Inputs.KeyRepeated(Keys.Backspace) == true and textFieldSelected then
		string = string:sub(1, -2)
	end

	return string
end

function stringToIp(string)
	local a2, b2, c2, d2 = string:match"(%d%d?%d?).(%d%d?%d?).(%d%d?%d?).(%d%d?%d?)"
	return {a = a2, b = b2, c = c2, d = d2}
end

function file_check(file_name)
	
  local file_found=io.open(file_name, "r")      
  
  if file_found==nil then
    file_found=false
  else
	file_found:close()
    file_found=true
  end
  return file_found
end

return { Load = LoadipconnectUI, Unload = UnloadipconnectUI, Update = UpdateipconnectUI }