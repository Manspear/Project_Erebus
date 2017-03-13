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

RemoveList = {}
RemoveListPlayer2 = {}

function LoadSpellbook()
	local Hellpillar = {texture =  Assets.LoadTexture("Textures/IconHellPiller.dds"),
						info = wrap("Hell Pillar \n\nCreates a pillar of fire. Charge for a bigger and more powerful pillar.", 30, "",""),
						spell = CreateHellPillar(player)}
	Hellpillar.spell.spellListId = 1
	table.insert(SpellList, Hellpillar)
	RemoveList.Hellpillar = Hellpillar

	local BlackHole = {	texture =  Assets.LoadTexture("Textures/IconBlackHole.dds"),
						info = wrap("Black Hole \n\nNo such thing as a weak black hole, therefore a black hole can only be charged!", 30, "",""),
						spell = CreateBlackHole(player)
	}
	BlackHole.spell.spellListId = 2
	table.insert(SpellList, BlackHole)
	RemoveList.BlackHole = BlackHole

	local FireBall = {texture =  Assets.LoadTexture("Textures/IconFireball.dds"),
					info = wrap("Fireball \n\nShoot balls of fire, or charge up for a big controlable fireball.", 30, "",""),
					spell = CreateFireball(player)
	}
	FireBall.spell.spellListId = 3
	table.insert(SpellList, FireBall)
	RemoveList.FireBall = FireBall

	local IceGrenade = {texture =  Assets.LoadTexture("Textures/IconIceGrenade.dds"),
						info = wrap("Ice Grenade \n\nLob a grenade of ice at your enemies. Charge longer for more damage.", 30, "",""),
						spell = CreateIceGrenade(player)
	}
	IceGrenade.spell.spellListId = 4
	table.insert(SpellList, IceGrenade)
	RemoveList.IceGrenade = IceGrenade

	local SunRay = {texture =  Assets.LoadTexture("Textures/IconSunRay.dds"),
					info = wrap("Sun Ray \n\nPowerful ray of light that burns through enemies.", 30, "",""),
					spell = CreateSunRay(player)
	}
	SunRay.spell.spellListId = 5
	table.insert(SpellList, SunRay)
	RemoveList.SunRay = SunRay

	local siphon = {texture =  Assets.LoadTexture("Textures/IconSiphon.dds"),
					info = wrap("Life Syphon \n\nDrain life from an enemy. Charge to create a chain between you and the target, that drains the targets life and hurts anybody who crosses the link.", 30, "",""),
					spell = CreateSiphon(player)
	}
	siphon.spell.spellListId = 6
	table.insert(SpellList, siphon)
	RemoveList.siphon = siphon

	local polymorph = {texture =  Assets.LoadTexture("Textures/IconPolymorph.dds"),
					info = wrap("Polymorph \n\nAre goblins too ugly? Charge to turn them into something else.", 30, "",""),
					spell = CreatePolymorph(player)
	}
	table.insert(SpellList, polymorph)
	polymorph.spell.spellListId = 7
	RemoveList.polymorph = polymorph

	local tumblethorns = {texture =  Assets.LoadTexture("Textures/IconTumblethorne.dds"),
					info = wrap("Tumble Thorn \n\nSend out a rolling thornbush to hurt foes. If you miss your plant you can call it back to your position.", 30, "",""),
					spell = CreateTumblethorns(player)
	}
	tumblethorns.spell.spellListId = 8
	table.insert(SpellList, tumblethorns)
	RemoveList.tumblethorns = tumblethorns

	local windknockback = {texture =  Assets.LoadTexture("Textures/IconWindKnockback.dds"),
					info = wrap("Wind Knockback \n\nBlow away anybody that bugs you!", 30, "",""),
					spell = CreateWindknockback(player)
	}
	table.insert(SpellList, windknockback)
	windknockback.spell.spellListId = 9
	RemoveList.windknockback = windknockback

	LoadSpells(player)
	LoadSpellbookPlayer2()
end


function LoadSpellbookPlayer2()
	local Hellpillar = {spell = CreateHellPillar(player2)}
	Hellpillar.spell.spellListId = 1
	table.insert(SpellListPlayer2, Hellpillar)
	RemoveListPlayer2.Hellpillar = Hellpillar

	local BlackHole = {spell = CreateBlackHole(player2)}
	BlackHole.spell.spellListId = 2
	table.insert(SpellListPlayer2, BlackHole)
	RemoveListPlayer2.BlackHole = BlackHole

	local FireBall = {spell = CreateFireball(player2)}
	FireBall.spell.spellListId = 3
	table.insert(SpellListPlayer2, FireBall)
	RemoveListPlayer2.FireBall = FireBall

	local IceGrenade = {spell = CreateIceGrenade(player2)}
	IceGrenade.spell.spellListId = 4
	table.insert(SpellListPlayer2, IceGrenade)
	RemoveListPlayer2.IceGrenade = IceGrenade
	
	local SunRay = {spell = CreateSunRay(player2)}
	SunRay.spell.spellListId = 5
	table.insert(SpellListPlayer2, SunRay)
	RemoveListPlayer2.SunRay = SunRay
	
	local siphon = {spell = CreateSiphon(player2)}
	siphon.spell.spellListId = 6
	table.insert(SpellListPlayer2, siphon)
	RemoveListPlayer2.siphon = siphon
	
	local polymorph = {spell = CreatePolymorph(player2)}
	polymorph.spell.spellListId = 7
	table.insert(SpellListPlayer2, polymorph)
	RemoveListPlayer2.polymorph = polymorph

	local tumblethorns = {spell = CreateTumblethorns(player2)}
	tumblethorns.spell.spellListId = 8
	table.insert(SpellListPlayer2, tumblethorns)
	RemoveListPlayer2.tumblethorns = tumblethorns

	local windknockback = {spell = CreateWindknockback(player2)}
	windknockback.spell.spellListId = 9
	table.insert(SpellListPlayer2, windknockback)
	RemoveListPlayer2.windknockback = windknockback

	LoadSpellsPlayer2()
end


function UnloadSpellbook()
	DestroyHellPillar(RemoveList.Hellpillar)
	DestroyBlackHole(RemoveList.BlackHole)
	DestroyFireball(RemoveList.FireBall)
	DestroyIceGrenade(RemoveList.IceGrenade)
	DestroySunRay(RemoveList.SunRay)
	DestroySiphon(RemoveList.siphon)
	DestroyPolymorph(RemoveList.polymorph)
	DestroyTumblethorns(RemoveList.tumblethorns)
	DestroyWindknockback(RemoveList.windknockback)

	DestroyHellPillar(RemoveListPlayer2.Hellpillar)
	DestroyBlackHole(RemoveListPlayer2.BlackHole)
	DestroyFireball(RemoveListPlayer2.FireBall)
	DestroyIceGrenade(RemoveListPlayer2.IceGrenade)
	DestroySunRay(RemoveListPlayer2.SunRay)
	DestroySiphon(RemoveListPlayer2.siphon)
	DestroyPolymorph(RemoveListPlayer2.polymorph)
	DestroyTumblethorns(RemoveListPlayer2.tumblethorns)
	DestroyWindknockback(RemoveListPlayer2.windknockback)

	Assets.UnloadTexture( "Textures/IconHellPiller.dds" )
	Assets.UnloadTexture( "Textures/IconBlackHole.dds" )
	Assets.UnloadTexture( "Textures/IconFireball.dds" )
	Assets.UnloadTexture( "Textures/IconIceGrenade.dds" )
	Assets.UnloadTexture( "Textures/IconSunRay.dds" )
	Assets.UnloadTexture( "Textures/IconSiphon.dds" )
	Assets.UnloadTexture( "Textures/IconPolymorph.dds" )
	Assets.UnloadTexture( "Textures/IconTumblethorne.dds" )
	Assets.UnloadTexture( "Textures/IconWindKnockback.dds" )

	SpellList = {}
	SpellListPlayer2 = {}
end

function UpdateSpellbook(dt)

end

return { Load = LoadSpellbook, Unload = UnloadSpellbook, Update = UpdateSpellbook }