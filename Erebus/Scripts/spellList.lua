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
						info = wrap("Creates a pillar of fire. \n Can be charged for a bigger and more powerful pillar.", 30, "",""),
						spell = CreateHellPillar(player)}
	Hellpillar.spell.spellListId = 1
	table.insert(SpellList, Hellpillar)

	local BlackHole = {	texture =  Assets.LoadTexture("Textures/blackhole.dds"),
						info = wrap("No such thing as a weak black hole, therefore a black hole can only be charged", 30, "",""),
						spell = CreateBlackHole(player)
	}
	BlackHole.spell.spellListId = 2
	table.insert(SpellList, BlackHole)

	local FireBall = {texture =  Assets.LoadTexture("Textures/fireball.png"),
					info = wrap("Shoot balls of fire, or charge up for a big controlable fireball.", 30, "",""),
					spell = CreateFireball(player)
	}
	FireBall.spell.spellListId = 3
	table.insert(SpellList, FireBall)

	local IceGrenade = {texture =  Assets.LoadTexture("Textures/icegrenade.dds"),
						info = wrap("Lob a grenade of ice at your enemies, or charge it up to deal more damage and slow your foes", 30, "",""),
						spell = CreateIceGrenade(player)
	}
	IceGrenade.spell.spellListId = 4
	table.insert(SpellList, IceGrenade)

	local SunRay = {texture =  Assets.LoadTexture("Textures/sunbeam.dds"),
					info = wrap("Powerful ray of light that burns through enemies. Need power? Just charge!", 30, "",""),
					spell = CreateSunRay(player)
	}
	SunRay.spell.spellListId = 5
	table.insert(SpellList, SunRay)

	local siphon = {texture =  Assets.LoadTexture("Textures/siphon.png"),
					info = wrap("Drain life from others. Or charge up to create a chain between you and the target, that drains the targets life and hurts anybody who crosses the link", 30, "",""),
					spell = CreateSiphon(player)
	}
	siphon.spell.spellListId = 6
	table.insert(SpellList, siphon)
	
	local polymorph = {texture =  Assets.LoadTexture("Textures/polymorph.dds"),
					info = wrap("Are goblins too ugly? Turn them into something else. Charge if you want them to stay something else for a longer time", 30, "",""),
					spell = CreatePolymorph(player)
	}
	table.insert(SpellList, polymorph)
	polymorph.spell.spellListId = 7
	
	local tumblethorns = {texture =  Assets.LoadTexture("Textures/tumblethorns.png"),
					info = wrap("Send out a rolling thornbush to hurt foes. If you miss your plant you can call it back to your position.", 30, "",""),
					spell = CreateTumblethorns(player)
	}
	tumblethorns.spell.spellListId = 8
	table.insert(SpellList, tumblethorns)

	local windknockback = {texture =  Assets.LoadTexture("Textures/windknockback.png"),
					info = wrap("Blow away anybody that bugs you!", 30, "",""),
					spell = CreateWindknockback(player)
	}
	table.insert(SpellList, windknockback)
	windknockback.spell.spellListID = 9

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
	
	local siphon = {spell = CreateSiphon(player2)}
	table.insert(SpellListPlayer2, siphon)
	
	local polymorph = {spell = CreatePolymorph(player2)}
	table.insert(SpellListPlayer2, polymorph)

	local tumblethorns = {spell = CreateTumblethorns(player2)}
	table.insert(SpellListPlayer2, tumblethorns)

	LoadSpellsPlayer2()
end


function UnloadSpellbook()

end

function UpdateSpellbook(dt)

end

return { Load = LoadSpellbook, Unload = UnloadSpellbook, Update = UpdateSpellbook }