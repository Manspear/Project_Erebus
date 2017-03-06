BOSS_SPELLCD = {}
BOSS_SPELLCD[1] = 25
BOSS_SPELLCD[2] = 1
BOSS_SPELLCD[3] = 10

boss = {}
boss.spells = {}
boss.spellinfo = {}

BOSS_HEALTHBAR_WIDTH = 8
BOSS_HEALTHBAR_HEIGHT = 0.45
BOSS_ATTACK_INTERVAL = 1

BOSS_DEAD = false

TIMETABLE = {}
table.insert(TIMETABLE, 17)
table.insert(TIMETABLE, 20)

function LoadBoss()
	boss.spells[1] = CreateTimeOrbWave()
	boss.spellinfo[1] = {cd = 0, interval = {0,10}}
	boss.spells[2] = CreateChronoBall(boss)
	boss.spellinfo[2] = {cd = 0, interval = {10,60}}
	boss.spells[3] = CreateTimeLaser(boss)
	boss.spellinfo[3] = {cd = 0, interval = {60,80}}
	--boss.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/THe_Timelord.model" )
	boss.transformID = Gear.BindStaticInstance(model)
	boss.maxHealth = 500
	boss.health = boss.maxHealth
	boss.alive = true
	boss.effects = {}
	boss.timeScalar = 1
	boss.movementSpeed = 1
	boss.pickInterval = 1
	boss.damagedTint = {r=0,g=0,b=0,a=0}
	boss.damagedTintDuration = 0
	--local model = Assets.LoadModel("Models/The_Timelord.model")
	--Gear.AddStaticInstance(model, boss.transformID)
	boss.healthbar = UI.load(0, 0, 0, BOSS_HEALTHBAR_WIDTH, BOSS_HEALTHBAR_HEIGHT);
	boss.currentHealth = boss.health
	Transform.ActiveControl(boss.transformID, true)
	
	boss.collider = AABBCollider.Create(boss.transformID)
	CollisionHandler.AddAABB(boss.collider, 0)
	AABBCollider.SetActive(boss.collider, true);

	AABBCollider.SetMinPos(boss.collider, -1, -5, -1)
	AABBCollider.SetMaxPos(boss.collider, 1, 3, 1)
	function boss:Hurt(damage, source, element)
		local pos = Transform.GetPosition(boss.transformID)
		boss.health = boss.health - damage
		boss.damagedTint = {r = FIRE == element and 1, g = NATURE == element and 1, b = ICE == element and 1, a = 1}
		if element then
			Network.SendBossDamageTextPacket(boss.transformID, damage, element)
			Gear.PrintDamage(damage, element, pos.x, pos.y+10, pos.z )
			print("printed some dmg")
		end
		if boss.health < 0 then
			boss.Kill()
		end	
	end
	function boss:Kill()
		if boss.alive then
			boss.alive = false
			--Rewind()
		end
	end
	function boss:Apply(effect)
		table.insert(boss.effects, effect)
		effect:Apply(boss)
	end
end

function UnloadBoss()
	DestroyTimeOrbWave(boss.spells[1])
	DestroyChronoBall(boss.spells[2])
	DestroyTimeLaser(boss.spells[3])

	Gear.UnbindInstance(boss.transformID)
	Assets.UnloadModel( "Models/THe_Timelord.model" )

	boss = {}
	boss.spells = {}
	boss.spellinfo = {}
end

function UpdateBoss(dt)
	if boss.alive then
		dt = dt * boss.timeScalar
		local hm = GetHeightmap({x=321.2,y=0,z=435.7})
		if hm then
			Transform.SetPosition(boss.transformID, { x=321.2, y= hm.asset:GetHeight(321.2, 435.7)+5, z=435.7 })
		end
		pos = Transform.GetPosition(boss.transformID)
		UI.reposWorld(boss.healthbar, pos.x, pos.y+7, pos.z)
		if boss.currentHealth > boss.health then
			boss.currentHealth  = boss.currentHealth - (50 * dt);
			if boss.currentHealth < 0 then
				boss.currentHealth = 0;
			end
		end

		a = (boss.currentHealth * BOSS_HEALTHBAR_WIDTH) / boss.maxHealth;
		UI.resizeWorld(boss.healthbar, a, BOSS_HEALTHBAR_HEIGHT)

		for i = #boss.effects, 1, -1 do
			if not boss.effects[i]:Update(boss, dt) then
				boss.effects[i]:Deapply(boss)
				table.remove(boss.effects, i)
			end
		end
		boss.pickInterval = boss.pickInterval - dt

		for i = 1, #boss.spells do
			boss.spells[i]:Update(dt)
			boss.spellinfo[i].cd  = boss.spellinfo[i].cd - dt
		end
		if boss.pickInterval < 0 then
			boss.pickInterval = BOSS_ATTACK_INTERVAL
			local rngnum = math.random(0,99)
			for i = 1, #boss.spells do
				if rngnum >= boss.spellinfo[i].interval[1] and rngnum < boss.spellinfo[i].interval[2] then
					if boss.spellinfo[i].cd < 0 then
						boss.spellinfo[i].cd = BOSS_SPELLCD[i]
						boss.spells[i]:Cast(boss)
						break
					end
				end
			end
		end
	elseif not BOSS_DEAD then
		BOSS_DEAD = true
	end
end
return { Load = LoadBoss, Unload = UnloadBoss, Update = UpdateBoss }