BOSS_SPELLCD = {}
BOSS_SPELLCD[1] = 25
BOSS_SPELLCD[2] = 1
boss = {}
boss.spells = {}
boss.spellcooldowns = {}

ENEMY_HEALTHBAR_WIDTH = 8
ENEMY_HEALTHBAR_HEIGHT = 0.45

function LoadBoss()
	boss.spells[1] = CreateTimeOrbWave()
	boss.spellcooldowns[1] = 0
	boss.spells[2] = CreateChronoBall(boss)
	boss.spellcooldowns[2] = 0
	boss.transformID = Transform.Bind()
	boss.maxHealth = 500
	boss.health = 500
	boss.effects = {}
	boss.timeScalar = 1
	boss.movementSpeed = 1
	boss.healthbar = UI.load(0, 0, 0, ENEMY_HEALTHBAR_WIDTH, ENEMY_HEALTHBAR_HEIGHT);
	boss.currentHealth = boss.health
	local model = Assets.LoadModel("Models/The_Timelord.model")
	Gear.AddStaticInstance(model, boss.transformID)
	Transform.ActiveControl(boss.transformID, true)
	
	boss.collider = AABBCollider.Create(boss.transformID)
	CollisionHandler.AddAABB(boss.collider, 0)
	AABBCollider.SetActive(boss.collider, true);

	AABBCollider.SetMinPos(boss.collider, -1, -5, -1)
	AABBCollider.SetMaxPos(boss.collider, 1, 3, 1)
	function boss:Hurt(damage)
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
		pos = Transform.GetPosition(boss.transformID)
		UI.reposWorld(boss.healthbar, pos.x, pos.y+7, pos.z)
		if boss.currentHealth > boss.health then
			boss.currentHealth  = boss.currentHealth - (50 * dt);
			if boss.currentHealth < 0 then
				boss.currentHealth = 0;
			end
		end

		a = (boss.currentHealth * ENEMY_HEALTHBAR_WIDTH) / boss.maxHealth;
		UI.resizeWorld(boss.healthbar, a, ENEMY_HEALTHBAR_HEIGHT)

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