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
	local Hellpillar = {texture =  Assets.LoadTexture("Textures/firepillar.dds"),
						info = wrap("'Just as a candle cannot burn without fire, men cannot live without a spiritual life.' - Buddha", 30, "",""),
						spell = CreateHellPillar(player)}
	Hellpillar.spell.spellListId = 1
	table.insert(SpellList, Hellpillar)

	local BlackHole = {	texture =  Assets.LoadTexture("Textures/blackhole.dds"),
						info = wrap("'Consideration of particle emission from black holes would seem to suggest that God not only plays dice, but also sometimes throws them where they cannot be seen.' - Stephen Hawking", 30, "",""),
						spell = CreateBlackHole(player)
	}
	BlackHole.spell.spellListId = 2
	table.insert(SpellList, BlackHole)

	local FireBall = {texture =  Assets.LoadTexture("Textures/fireball.png"),
					info = wrap("'Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.' - Martin Luther King Jr.", 30, "",""),
					spell = CreateFireball(player)
	}
	FireBall.spell.spellListId = 3
	table.insert(SpellList, FireBall)

	local IceGrenade = {texture =  Assets.LoadTexture("Textures/icegrenade.dds"),
						info = wrap("'When I'm not longer rapping, I want to open up an ice cream parlor and call myself Scoop Dogg.' - Snoop Dog", 30, "",""),
						spell = CreateIceGrenade(player)
	}
	IceGrenade.spell.spellListId = 4
	table.insert(SpellList, IceGrenade)

	local SunRay = {texture =  Assets.LoadTexture("Textures/sunbeam.dds"),
					info = wrap("'Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.' - Martin Luther King Jr.", 30, "",""),
					spell = CreateSunRay(player)
	}
	SunRay.spell.spellListId = 5
	table.insert(SpellList, SunRay)

	local siphon = {texture =  Assets.LoadTexture("Textures/siphon.png"),
					info = wrap("i steal life yo", 30, "",""),
					spell = CreateSiphon(player)
	}
	table.insert(SpellList, siphon)
	
	local polymorph = {texture =  Assets.LoadTexture("Textures/polymorph.png"),
					info = wrap("'Sma grodorna, sma grodorna'", 30, "",""),
					spell = CreatePolymorph(player)
	}

	table.insert(SpellList, polymorph)
	
	local tumblethorns = {texture =  Assets.LoadTexture("Textures/tumblethorns.png"),
					info = wrap("'Akta alla sma taggar va?!'", 30, "",""),
					spell = CreateTumblethorns(player)
	}
	table.insert(SpellList, tumblethorns)

	LoadSpells(player)
	LoadSpellbookPlayer2()
end


function LoadSpellbookPlayer2()
	local Hellpillar = {spell = CreateHellPillar(player2)}
	table.insert(SpellListPlayer2, Hellpillar)

	local BlackHole = {spell = CreateBlackHole(player2)}
	table.insert(SpellListPlayer2, BlackHole)

	local FireBall = {spell = CreateFireball(player2)}
	table.insert(SpellListPlayer2, FireBall)

	local IceGrenade = {spell = CreateIceGrenade(player2)}
	table.insert(SpellListPlayer2, IceGrenade)

	local SunRay = {spell = CreateSunRay(player2)}
	table.insert(SpellListPlayer2, SunRay)

	LoadSpellsPlayer2()
end


function UnloadSpellbook()

end

function UpdateSpellbook(dt)

end

return { Load = LoadSpellbook, Unload = UnloadSpellbook, Update = UpdateSpellbook }