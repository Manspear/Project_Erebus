BOSS_SPELLCD = {}
BOSS_SPELLCD[1] = 25
BOSS_SPELLCD[2] = 1
boss = {}
boss.spells = {}
boss.spellcooldowns = {}

function LoadBoss()
	boss.spells[1] = CreateTimeOrbWave()
	boss.spellcooldowns[1] = 0
	boss.spells[2] = CreateChronoBall(boss)
	boss.spellcooldowns[2] = 0
	boss.transformID = Transform.Bind()
	boss.health = 500
	boss.effects = {}
	boss.timeScalar = 1
	boss.movementSpeed = 1
	local model = Assets.LoadModel("Models/The_Timelord.model")
	Gear.AddStaticInstance(model, boss.transformID)
	Transform.ActiveControl(boss.transformID, true)
	
	boss.sphereCollider = SphereCollider.Create(boss.transformID)
	CollisionHandler.AddSphere(boss.sphereCollider, 0)
	SphereCollider.SetActive(boss.sphereCollider, true);

	function boss:Hurt(damage)
		print("boss got hit omfgwtfbbq   "..boss.health )
		boss.health = boss.health - damage
	end
	function boss:Apply(effect)
		table.insert(boss.effects, effect)
		effect:Apply(boss)
	end
end
function UnloadBoss()

end
function UpdateBoss(dt)
	if boss.health > 0 then
		dt = dt * boss.timeScalar
		local hm = GetHeightmap({x=15,y=0,z=150})
		if hm then
			Transform.SetPosition(boss.transformID, { x=14, y= hm.asset:GetHeight(14, 150)+5, z=150 })
		end
		for i = #boss.effects, 1, -1 do
			if not boss.effects[i]:Update(boss, dt) then
				boss.effects[i]:Deapply(boss)
				table.remove(boss.effects, i)
			end
		end
		for i = 1, #boss.spells do
			boss.spells[i]:Update(dt)
			boss.spellcooldowns[i]  = boss.spellcooldowns[i] - dt
			if boss.spellcooldowns[i] < 0 then
				--print("shot")
				boss.spellcooldowns[i] = BOSS_SPELLCD[i]
				--boss.spells[i]:Cast(boss)
			end
		end
	end
end

return { Load = LoadBoss, Unload = UnloadBoss, Update = UpdateBoss }