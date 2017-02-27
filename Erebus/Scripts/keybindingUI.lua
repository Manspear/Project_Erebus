OPTIONS_RETURN_STATE = 1
local screenImages = {}
local topImages = {}
local imageTextures = {}
local num_keys = 14
local enter_key_text = "Press Key:"
local selected_key = -1
local Keychanges = {}

function LoadKeybindingUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.dds");
	imageTextures["back"] = Assets.LoadTexture("Textures/buttonReturn.dds");
	imageTextures["buttonBack"] = Assets.LoadTexture("Textures/buttonBackground.dds");

	topImages[0] = UI.load(383, 40, 250, 35);
	topImages[1] = UI.load(653, 40, 250, 35);

	for i=1, num_keys do
		screenImages[num_keys + i] = UI.load(383, 40 + i * 40, 250, 35);

		screenImages[i] = UI.load(653, 40 + i * 40, 250, 35);
	end

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["back"] = UI.load(465, 650, 350, 60);
end

function UnloadKeybindingUI()

end

function UpdateKeybindingUI(dt)

	DrawKeybindingUI()
	x,y = Inputs.GetMousePos()
	if Inputs.ButtonReleased(Buttons.Left) then
		if UI.mousePick(screenImages["back"], x,y) then
			Sound.Play("Effects/button.wav", 2)
			gamestate.ChangeState(GAMESTATE_OPTIONS)
		end
	end

	for i=1, num_keys do
		if Inputs.ButtonReleased(Buttons.Left) then
			if UI.mousePick(screenImages[i], x,y) then
				selected_key = i
			end
		end
	end

	if(selected_key ~= -1) then
		local newText = Inputs.GetTextInput()
		if #newText > 0 then
			Keychanges[selected_key] = string.upper(newText)
			selected_key = -1
		end
	end
end

function DrawKeybindingUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);

	Gear.Print("Command:", 383, 40)
	Gear.Print("Key:", 658, 40)
	
	UI.drawImage(topImages[0], imageTextures["buttonBack"]);
	UI.drawImage(topImages[1], imageTextures["buttonBack"]);

	for i=1, num_keys * 2 do
		UI.drawImage(screenImages[i], imageTextures["buttonBack"]);
	end
		Gear.Print("Move Forward:", 383, 80)
		Gear.Print("Move Left:", 383, 120)
		Gear.Print("Move Right:", 383, 160)
		Gear.Print("Move Back:", 383, 200)

		Gear.Print("Dash:", 383, 240)

		Gear.Print("Normal Attack:", 383, 280)
		Gear.Print("Charged Attack:", 383, 320)

		Gear.Print("Spell 1:", 383, 360)
		Gear.Print("Spell 2:", 383, 400)
		Gear.Print("Spell 3:", 383, 440)

		Gear.Print("Spellbook:", 383, 480)
		Gear.Print("Menu:", 383, 520)
		Gear.Print("Combine Spell:", 383, 560)
		Gear.Print("Ping Player:", 383, 600)

		for i=1, num_keys do
			if(i == selected_key) then
				Gear.Print(enter_key_text, 658, 40 + i * 40)
			else
				Gear.Print(Keychanges[i], 658, 40 + i * 40)
			end
		end

	UI.drawImage(screenImages["back"], imageTextures["back"]);
end

function loadKeySettings()
	Keychanges[1] = SETTING_KEYBIND_FORWARD
	Keychanges[2] = SETTING_KEYBIND_LEFT
	Keychanges[3] = SETTING_KEYBIND_BACK
	Keychanges[4] = SETTING_KEYBIND_RIGHT
	Keychanges[5] = SETTING_KEYBIND_DASH
	Keychanges[6] = SETTING_KEYBIND_NORMAL_ATTACK
	Keychanges[7] = SETTING_KEYBIND_CHARGED_ATTACK
	Keychanges[8] = SETTING_KEYBIND_SPELL_ONE
	Keychanges[9] = SETTING_KEYBIND_SPELL_TWO
	Keychanges[10] = SETTING_KEYBIND_SPELL_THREE
	Keychanges[11] = SETTING_KEYBIND_SPELLBOOK
	Keychanges[12] = SETTING_KEYBIND_MENU
	Keychanges[13] = SETTING_KEYBIND_COMBINE
	Keychanges[14] = SETTING_KEYBIND_PING
end

function saveKeySettings()
	 SETTING_KEYBIND_FORWARD = Keychanges[1]
	 SETTING_KEYBIND_LEFT = Keychanges[2]
	 SETTING_KEYBIND_BACK = Keychanges[3]
	 SETTING_KEYBIND_RIGHT = Keychanges[4]
	 SETTING_KEYBIND_DASH = Keychanges[5]
	 SETTING_KEYBIND_NORMAL_ATTACK = Keychanges[6]
	 SETTING_KEYBIND_CHARGED_ATTACK = Keychanges[7]
	 SETTING_KEYBIND_SPELL_ONE = Keychanges[8]
	 SETTING_KEYBIND_SPELL_TWO = Keychanges[9]
	 SETTING_KEYBIND_SPELL_THREE = Keychanges[10]
	 SETTING_KEYBIND_SPELLBOOK = Keychanges[11]
	 SETTING_KEYBIND_MENU = Keychanges[12]
	 SETTING_KEYBIND_COMBINE = Keychanges[13]
	 SETTING_KEYBIND_PING = Keychanges[14]
end

return { Load = LoadKeybindingUI, Unload = UnloadKeybindingUI, Update = UpdateKeybindingUI }