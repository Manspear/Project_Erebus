local screenImages = {}
local imageTextures = {}

function LoadMenuUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/menuBackground.png");
	imageTextures["play"] = Assets.LoadTexture("Textures/button.png");
	imageTextures["host"] = Assets.LoadTexture("Textures/buttonConnect.png");
	imageTextures["connect"] = Assets.LoadTexture("Textures/buttonHost.png");

	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["play"] = UI.load(350, 300, 350, 100);
	screenImages["host"] = UI.load(350, 425, 350, 100);
	screenImages["connect"] = UI.load(350, 550, 350, 100);

end

function UnloadMenuUI()

end

function UpdateMenuUI(dt)

	DrawMenuUI()
	x,y = Inputs.GetMousePos()
	if UI.mousePick(screenImages["play"], x,y) then
		
	end

end

function DrawMenuUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["play"], imageTextures["play"]);
	UI.drawImage(screenImages["host"], imageTextures["host"]);
	UI.drawImage(screenImages["connect"], imageTextures["connect"]);
end

return { Load = LoadMenuUI, Unload = UnloadMenuUI, Update = UpdateMenuUI }