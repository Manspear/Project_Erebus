BOSS_SPELLCD = {}
BOSS_SPELLCD[1] = 25
BOSS_SPELLCD[2] = 1
BOSS_SPELLCD[3] = 10

boss = {}
boss.spells = {}
boss.spellinfo = {}

BOSS_HEALTHBAR_WIDTH = 8
BOSS_HEALTHBAR_HEIGHT = 0.45
BOSS_ATTACK_INTERVAL = 5

TIMEORBWAVE_INDEX = 1
CHRONOBALL_INDEX = 2
TIMELASER_INDEX = 3

BOSS_AGGRO_WINDUP = 0.83
bossAggroWindupDone = false
BOSS_AGGRO_FLYUP = 0.66
bossAggroFlyupDone = false
BOSS_AGGRO_FLYDOWN = 1.66
bossAggroFlyDownDone = false
BOSS_AGGRO_TIMEONGROUND = 2.08
bossAggroTimeOnGroundDone = false

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

	boss.animationController = CreateBossController(boss)
	local model = Assets.LoadModel( "Models/The_Timelord.model" )
	boss.transformID = Gear.BindAnimatedInstance(model, boss.animationController.animation)
	boss.maxHealth = 500
	boss.health = boss.maxHealth
	boss.alive = true
	boss.effects = {}
	boss.timeScalar = 1
	boss.movementSpeed = 1
	boss.pickInterval = COMBATSTART_ANIMATIONTIME
	boss.damagedTint = {r=0,g=0,b=0,a=0}
	boss.damagedTintDuration = 0
	--local model = Assets.LoadModel("Models/The_Timelord.model")
	--Gear.AddStaticInstance(model, boss.transformID)
	boss.healthbar = UI.load(0, 0, 0, BOSS_HEALTHBAR_WIDTH, BOSS_HEALTHBAR_HEIGHT);
	boss.currentHealth = boss.health

	--Invulnerable until combat has started when both players are close enough (39 units)
	boss.combatStarted = false

	--Bools set for the benefit of bossController. bossController sets them to false.
	boss.castSpells = {}
	boss.castSpells[TIMEORBWAVE_INDEX] = false
	boss.castSpells[CHRONOBALL_INDEX] = false
	boss.castSpells[TIMELASER_INDEX] = false

	--Timer to time boss animations to spellcasts, threshhold set by the HITTIME-variables.
	boss.castTimer = 0
	boss.castTimerStart = false
	boss.castTimerThreshhold = 0
	boss.spellIndex = -1

	boss.firstTimeLoad = true

	boss.position = {}
	boss.aggroAnimationTimer = 0

	Transform.ActiveControl(boss.transformID, true)
	
	boss.collider = AABBCollider.Create(boss.transformID)
	CollisionHandler.AddAABB(boss.collider, 0)
	AABBCollider.SetActive(boss.collider, true);

	AABBCollider.SetMinPos(boss.collider, -1, -5, -1)
	AABBCollider.SetMaxPos(boss.collider, 1, 3, 1)
	function boss:Hurt(damage, source, element)
		if source ~= player2 then
			if boss.combatStarted then 		
				local pos = Transform.GetPosition(boss.transformID)
				boss.health = boss.health - damage
				boss.damagedTint = {r = FIRE == element and 1, g = NATURE == element and 1, b = ICE == element and 1, a = 1}
				if Network.GetNetworkHost() == true then
					boss.health = boss.health - damage
					if boss.health > 0 then
						Network.SendBossHealthPacket(element, boss.health) -- Much cheating
					else
						Network.SendBossHealthPacket(element, 0) -- Much cheating
					end
					if element then
						Network.SendBossDamageTextPacket(boss.transformID, damage, element)
						Gear.PrintDamage(damage, element, pos.x, pos.y+10, pos.z )
					else
						Network.SendBossHealthPacket(element, damage) -- Very bad
					end
				end
				if boss.health <= 0 then				
					boss.Kill()
					boss.combatStarted = false	
				end
			end
		end
	end
	function boss:Kill()
		if boss.alive then
			boss.alive = false
			boss.combatStarted = false

			--bossAggroWindupDone = true
			--bossAggroFlyupDone = false
			--bossAggroFlyDownDone = false
			--bossAggroTimeOnGroundDone = false

			--boss.firstTimeLoad = true

			Rewind()
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
	Assets.UnloadModel( "Models/The_Timelord.model" )

	boss = {}
	boss.spells = {}
	boss.spellinfo = {}
end

function UpdateBoss(dt)	
	boss.animationController:AnimationUpdate(dt, Network)
	
	local player1BossDistance = Transform.GetDistanceBetweenTrans(player.transformID, boss.transformID)
	local player2BossDistance = Transform.GetDistanceBetweenTrans(player2.transformID, boss.transformID)
	if player1BossDistance <= 39 then--and player2BossDistance <= 39 then 
		boss.combatStarted = true
	end

	if boss.alive then
		local newBossHealth, elementID, bossHealth = Network.GetBossHealthPacket()

		if newBossHealth == true then
			if Network.GetNetworkHost() == true then
				boss:Hurt(bossHealth, player, elementID) 
			else
				boss.health = bossHealth
				if boss.health <= 0 then
					boss.Kill()
				end
			end
		end

		if Network.GetNetworkHost() == false then
			local newBossDamageText, bossDamageTextID, bossDamage, bossDamageElement = Network.GetBossDamageTextPacket()

			if newBossDamageText == true then
				local pos = Transform.GetPosition(boss.transformID)
				Gear.PrintDamage(bossDamage, bossDamageElement, pos.x, pos.y+10, pos.z )
			end
		end

		dt = dt * boss.timeScalar

		--if first time boss is loaded, get his position form the heightmap
		if boss.firstTimeLoad then 
			local hm = GetHeightmap({x=321.2,y=0,z=435.7})
			if hm then
				--                                                                                was +5
				Transform.SetPosition(boss.transformID, { x=321.2, y= hm.asset:GetHeight(321.2, 435.7)-13, z=435.7 })
				boss.firstTimeLoad = false
			end
		end

		if boss.combatStarted then 
			--if boss just entered combat, do the jump-thing
			boss.position = Transform.GetPosition(boss.transformID)
			
			if bossAggroWindupDone == false then
				boss.aggroAnimationTimer = boss.aggroAnimationTimer + dt
				if boss.aggroAnimationTimer >= BOSS_AGGRO_WINDUP then 
					bossAggroWindupDone = true
					boss.aggroAnimationTimer = 0
				end
			elseif bossAggroFlyupDone == false then 
				boss.position.y = boss.position.y + 39 * dt
				boss.aggroAnimationTimer = boss.aggroAnimationTimer + dt
				if boss.aggroAnimationTimer >= BOSS_AGGRO_FLYUP then 
					bossAggroFlyupDone = true
					boss.aggroAnimationTimer = 0
				end
			elseif bossAggroFlyDownDone == false then
				boss.position.y = boss.position.y + -5 * dt
				boss.aggroAnimationTimer = boss.aggroAnimationTimer + dt
				if boss.aggroAnimationTimer >= BOSS_AGGRO_FLYDOWN then 
					bossAggroFlyDownDone = true
					boss.aggroAnimationTimer = 0
				end
			elseif bossAggroTimeOnGroundDone == false then
				boss.aggroAnimationTimer = boss.aggroAnimationTimer + dt
				if boss.aggroAnimationTimer >= BOSS_AGGRO_FLYDOWN then 
					bossAggroFlyDownDone = true
					boss.aggroAnimationTimer = 0
				end
			end
			
			Transform.SetPosition(boss.transformID, { x = boss.position.x, y = boss.position.y , z = boss.position.z })


			pos = Transform.GetPosition(boss.transformID)
			UI.reposWorld(boss.healthbar, pos.x, pos.y+7, pos.z)
			if boss.currentHealth > boss.health then
				boss.currentHealth  = boss.currentHealth - (50 * dt);
				if boss.currentHealth < 0 then
					boss.currentHealth = 0;
				end
			end
			local vectorstuffabc = vec3sub(Transform.GetPosition(player.transformID), pos)
			Transform.RotateToVector(boss.transformID, vectorstuffabc)
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
				--boss.pickInterval = BOSS_ATTACK_INTERVAL
				local rngnum = math.random(0,99)
				for i = 1, #boss.spells do
					if rngnum >= boss.spellinfo[i].interval[1] and rngnum < boss.spellinfo[i].interval[2] then
						if boss.spellinfo[i].cd < 0 then
							
							boss.castTimerStart = true

							--boss.spellinfo[i].cd = BOSS_SPELLCD[i]
							--boss.spells[i]:Cast(boss)
							
							boss.castSpells[i] = true

							if i == TIMEORBWAVE_INDEX then 
								boss.pickInterval = TIMEORBWAVE_ANIMATIONTIME + 1
								boss.castTimerThreshhold = TIMEORBWAVE_HITTIME
							end
							if i == CHRONOBALL_INDEX then 
								boss.pickInterval = CHRONOORB_ANIMATIONTIME + 1
								boss.castTimerThreshhold = CHRONOORB_HITTIME
							end
							if i == TIMELASER_INDEX then 
								boss.pickInterval = TIMELASER_ANIMATIONTIME + 1
								boss.castTimerThreshhold = TIMELASER_HITTIME
							end

							boss.spellIndex = i

							break
						end
					end
				end
			end

			if boss.castTimerStart then
				boss.castTimer = boss.castTimer + dt 
				if boss.castTimer >= boss.castTimerThreshhold then 
					boss.castTimer = 0
					boss.castTimerStart = false
					boss.spellinfo[boss.spellIndex].cd = BOSS_SPELLCD[boss.spellIndex]
					boss.spells[boss.spellIndex]:Cast(boss)
				end
			end

		end
	elseif not BOSS_DEAD then
		BOSS_DEAD = true
	end
end
return { Load = LoadBoss, Unload = UnloadBoss, Update = UpdateBoss }