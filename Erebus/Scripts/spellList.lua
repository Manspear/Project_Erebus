print("LOADING SPELL LIST")

function wrap(str, limit, indent, indent1)
  indent = indent or ""
  indent1 = indent1 or indent
  limit = limit or 72
  local here = 1-#indent1
  return indent1..str:gsub("(%s+)()(%S+)()",
                          function(sp, st, word, fi)
                            if fi-here > limit then
                              here = st - #indent
                              return "\n"..indent..word
                            end
                          end)
end

SpellList = {}
SpellListPlayer2 = {}

function LoadSpellbook()
	print("CREATING HELL PILLAR")
	local Hellpillar = {texture =  Assets.LoadTexture("Textures/firepillar.dds"),
						info = wrap("'Just as a candle cannot burn without fire, men cannot live without a spiritual life.' - Buddha", 30, "",""),
						spell = CreateHellPillar(player)}

	table.insert(SpellList, Hellpillar)

	print("CREATING BLACK HOLE")
	local BlackHole = {	texture =  Assets.LoadTexture("Textures/blackhole.dds"),
						info = wrap("'Consideration of particle emission from black holes would seem to suggest that God not only plays dice, but also sometimes throws them where they cannot be seen.' - Stephen Hawking", 30, "",""),
						spell = CreateBlackHole(player)}

	table.insert(SpellList, BlackHole)

	print("CREATING ICE GRENADE")
	local IceGrenade = {texture =  Assets.LoadTexture("Textures/icegrenade.dds"),
						info = wrap("'When I'm not longer rapping, I want to open up an ice cream parlor and call myself Scoop Dogg.' - Snoop Dog", 30, "",""),
						spell = CreateIceGrenade(player)
	}
	print("DONE WITH ICE GRENADE")
	table.insert(SpellList, IceGrenade)

	print("CREATING SUN RAY")
	local SunRay = {texture =  Assets.LoadTexture("Textures/sunbeam.dds"),
					info = wrap("'Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.' - Martin Luther King Jr.", 30, "",""),
					spell = CreateSunRay(player)
	}
	table.insert(SpellList, SunRay)

	print("LOADING SPELLS")
	LoadSpells(player)
	print("LOADED SPELLS")
	LoadSpellbookPlayer2()
end


function LoadSpellbookPlayer2()
	
	local Hellpillar = {spell = CreateHellPillar(player2)}
	table.insert(SpellListPlayer2, Hellpillar)

	
	local BlackHole = {spell = CreateBlackHole(player2)}
	table.insert(SpellListPlayer2, BlackHole)

	
	local IceGrenade = {spell = CreateIceGrenade(player2)}
	table.insert(SpellListPlayer2, IceGrenade)

	
	local SunRay = {spell = CreateSunRay(player2)}
	table.insert(SpellListPlayer2, SunRay)

	print("LOADING SPELLS FOR PLAYER 2")
	LoadSpellsPlayer2()
	print("DONE LOADING SPELLS FOR PLAYER 2 ")
end


function UnloadSpellbook()

end

function UpdateSpellbook(dt)

end

return { Load = LoadSpellbook, Unload = UnloadSpellbook, Update = UpdateSpellbook }