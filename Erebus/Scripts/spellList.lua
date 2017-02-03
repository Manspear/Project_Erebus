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

function LoadSpellbook()
	local Hellpillar = {texture =  Assets.LoadTexture("Textures/firepillar.dds"),
						info = wrap("'Just as a candle cannot burn without fire, men cannot live without a spiritual life.' - Buddha", 30, "",""),
						spell = CreateHellPillar(player)}

	table.insert(SpellList, Hellpillar)

	local BlackHole = {	texture =  Assets.LoadTexture("Textures/blackhole.dds"),
						info = wrap("'Consideration of particle emission from black holes would seem to suggest that God not only plays dice, but also sometimes throws them where they cannot be seen.' - Stephen Hawking", 30, "",""),
						spell = CreateBlackHole(player)}

	table.insert(SpellList, BlackHole)

	local IceGrenade = {texture =  Assets.LoadTexture("Textures/icegrenade.dds"),
						info = wrap("'When I'm not longer rapping, I want to open up an ice cream parlor and call myself Scoop Dogg.' - Snoop Dog", 30, "",""),
						spell = CreateIceGrenade(player)
	}

	table.insert(SpellList, IceGrenade)

	local SunRay = {texture =  Assets.LoadTexture("Textures/sunbeam.dds"),
					info = wrap("'Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.' - Martin Luther King Jr.", 30, "",""),
					spell = CreateSunRay(player)
	}
	table.insert(SpellList, SunRay)

	LoadSpells(player)
	LoadSpells(player2)
end

function UnloadSpellbook()

end

function UpdateSpellbook(dt)

end

return { Load = LoadSpellbook, Unload = UnloadSpellbook, Update = UpdateSpellbook }