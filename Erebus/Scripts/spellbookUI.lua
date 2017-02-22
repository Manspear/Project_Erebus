local screenImages = {}
local screenImagesSpells = {}
local imageTextures = {}

local selectedPlayerSpell = -1
local selectedBookSpell = -1

function LoadSpellbookUI()
	imageTextures["background"] = Assets.LoadTexture("Textures/spellBook.dds");
	imageTextures["back"] = Assets.LoadTexture("Textures/buttonReturn.dds");
	imageTextures["select"] = Assets.LoadTexture("Textures/select.dds")


	screenImages["background"] = UI.load(0, 0, 1280, 720);
	screenImages["back"] = UI.load(710, 620, 350, 60);

	--players selected spells

	screenImages[1] = UI.load(268, 102, 128, 128);
	screenImages[2] = UI.load(268, 308, 128, 128);
	screenImages[3] = UI.load(268, 514, 128, 128);

	--selectable spells row 1
	screenImagesSpells[1] = UI.load(693, 153, 96, 96);
	screenImagesSpells[2] = UI.load(805, 153, 96, 96);
	screenImagesSpells[3] = UI.load(917, 153, 96, 96);
	screenImagesSpells[4] = UI.load(1029, 153, 96, 96);

	--selectable spells row 2
	screenImagesSpells[5] = UI.load(693, 270, 96, 96);
	screenImagesSpells[6] = UI.load(805, 270, 96, 96);
	screenImagesSpells[7] = UI.load(917, 270, 96, 96);
	screenImagesSpells[8] = UI.load(1029, 270, 96, 96);

	--selectable spells row 3
	screenImagesSpells[9] = UI.load(693, 387, 96, 96);
	screenImagesSpells[10] = UI.load(805, 387, 96, 96);
	screenImagesSpells[11] = UI.load(917, 387, 96, 96);
	screenImagesSpells[12] = UI.load(1029, 387, 96, 96);

	--selectable spells row 4
	screenImagesSpells[13] = UI.load(693, 504, 96, 96);
	screenImagesSpells[14] = UI.load(805, 504, 96, 96);
	screenImagesSpells[15] = UI.load(917, 504, 96, 96);
	screenImagesSpells[16] = UI.load(1029, 504, 96, 96);
end

function UnloadSpellbookUI()

end

function UpdateSpellbookUI(dt)

	DrawSpellbookUI()
	if Inputs.KeyReleased("B") then -- Close the book with B
		Network.SendChangeSpellsPacket(player.spells[1].spellListId, player.spells[2].spellListId, player.spells[3].spellListId)
		gamestate.ChangeState(GAMESTATE_GAMEPLAY)
		player.isControlable = true
	end


	if Inputs.ButtonReleased(Buttons.Left) then
		x,y = Inputs.GetMousePos()
		if UI.mousePick(screenImages["back"], x,y) then -- Close the book with mouse
				Network.SendChangeSpellsPacket(player.spells[1].spellListId, player.spells[2].spellListId, player.spells[3].spellListId)
				gamestate.ChangeState(GAMESTATE_GAMEPLAY)
				player.isControlable = true
		end
		
		for i=1, #screenImages do
			if UI.mousePick(screenImages[i], x,y) then
				selectedPlayerSpell = i
				break
			end
		end

		for i=1, #SpellList do
			if UI.mousePick(screenImagesSpells[i], x,y) then
				selectedBookSpell = i
				break
			end
		end



		if selectedPlayerSpell ~= -1 and selectedBookSpell ~= -1 then
			if player.spells[selectedPlayerSpell].cooldown < 0 and SpellList[selectedPlayerSpell].spell.cooldown < 0 then
				for i=1, #player.spells do
					if player.spells[i] ==  SpellList[selectedBookSpell].spell and player.spells[selectedPlayerSpell].cooldown < 0 then
						player.spells[i] = player.spells[selectedPlayerSpell]
						print("changed spell: "..i.." to spell: "..selectedPlayerSpell .. " Bookspell: " .. selectedBookSpell)
						break
					end
				end
				player.spells[selectedPlayerSpell]:Kill()
				player.spells[player.currentSpell]:Change()
				player.spells[selectedPlayerSpell] = SpellList[selectedBookSpell].spell
				player.spells[player.currentSpell]:Change()
				selectedPlayerSpell = -1
				selectedBookSpell = -1
			else 
				selectedPlayerSpell = -1
				selectedBookSpell = -1
			end
		end

	elseif Inputs.ButtonReleased(Buttons.Right) then
		selectedPlayerSpell = -1
		selectedBookSpell = -1
	end
end

function DrawSpellbookUI()
	UI.drawImage(screenImages["background"], imageTextures["background"]);
	UI.drawImage(screenImages["back"], imageTextures["back"]);

	for i=1, #screenImages do
		UI.drawImage(screenImages[i], player.spells[i].hudtexture);
	end

	for i=1, #SpellList do
		UI.drawImage(screenImagesSpells[i], SpellList[i].texture);
	end

	if selectedPlayerSpell ~= -1 then
		UI.drawImage(screenImages[selectedPlayerSpell], imageTextures["select"]);
	end

	if selectedBookSpell ~= -1 then
		UI.drawImage(screenImagesSpells[selectedBookSpell], imageTextures["select"]);
		Gear.Print(SpellList[selectedBookSpell].info, 415,150, 0.5, {0,0,0,1})
	end
end

return { Load = LoadSpellbookUI, Unload = UnloadSpellbookUI, Update = UpdateSpellbookUI }