BOSS_SPELLCD = {}
BOSS_SPELLCD[1] = 25
BOSS_SPELLCD[2] = 1
BOSS_SPELLCD[3] = 10

boss = {alive = false}
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
	--local model = Assets.LoadModel("Models/The_Timelord.model")
	--Gear.AddStaticInstance(model, boss.transformID)
	boss.healthbar = UI.load(0, 0, 0, BOSS_HEALTHBAR_WIDTH, BOSS_HEALTHBAR_HEIGHT);
	boss.currentHealth = boss.health

	--Invulnerable until combat has started when both players are close enough (39 units)
	boss.combatStarted = false
	boss.loaded = true
	--Bools set for the benefit of bossController. bossController sets them to false.
	boss.castSpells = {}

	boss.position = {{x=321.2,y=120,z=435.7}}	
	boss.collider = AABBCollider.Create(boss.transformID)
	CollisionHandler.AddAABB(boss.collider, 0)
	AABBCollider.SetMinPos(boss.collider, -1, -5, -1)
	AABBCollider.SetMaxPos(boss.collider, 1, 3, 1)

	
	function boss:Reset()
		local hm = GetHeightmap({x=321.2,y=0,z=435.7})
		if hm then
			Transform.SetPosition(boss.transformID, { x=321.2, y= hm.asset:GetHeight(321.2, 435.7)-13, z=435.7 })
		end
		boss.realDead = false
		--Timer to time boss animations to spellcasts, threshhold set by the HITTIME-variables.
		Transform.ActiveControl(boss.transformID, false)
		boss.castTimer = 0
		boss.castTimerStart = false
		boss.castTimerThreshhold = 0
		boss.spellIndex = -1
		boss.castSpells[TIMEORBWAVE_INDEX] = false
		boss.castSpells[CHRONOBALL_INDEX] = false
		boss.castSpells[TIMELASER_INDEX] = false
		boss.aggroAnimationTimer = 0
		boss.maxHealth = 500
		boss.health = boss.maxHealth
		boss.currentHealth = boss.maxHealth
		boss.alive = true
		boss.effects = {}
		boss.timeScalar = 1
		boss.movementSpeed = 1
		boss.pickInterval = COMBATSTART_ANIMATIONTIME
		boss.damagedTint = {r=0,g=0,b=0,a=0}
		boss.damagedTintDuration = 0
		boss.deathTimer = DYING_TIME_EFTER_JA

		--as soon as this is called, the boss stops moving no matter what I send in...
		boss.animationController.animation:StopAnimationUpdating(false)
		boss.animationController.waitForRewindTimer = 0
		boss.animationController.animation:ResetSegmentPlayTime(0)
	end

	function boss:Spawn()
		Transform.ActiveControl(boss.transformID, true)
		AABBCollider.SetActive(boss.collider, true)
	end
	boss:Reset()

	function boss:Hurt(damage, source, element)
		if source ~= player2 then
			if boss.combatStarted then 		
				local pos = Transform.GetPosition(boss.transformID)
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
					end
				else
					Network.SendBossHealthPacket(element, damage) -- Very bad
				end
				if boss.health <= 0 then				
					boss.Kill()
				end
			end
		end
	end
	function boss:Kill()
		if boss.alive then
			boss.alive = false
			bossAggroWindupDone = false
			bossAggroFlyupDone = false
			bossAggroFlyDownDone = false
			bossAggroTimeOnGroundDone = false
			AABBCollider.SetActive(boss.collider, false)
			boss.spells[1]:Kill()
			boss.spells[2]:Kill()
			boss.spells[3]:Kill()

			boss.health = -1
		end
	end

	function boss:RealKill()
		boss.combatStarted = false
		--boss.animationController.deathTimer = 0
		rewinder:Cast()
		boss.realDead = true
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
			if boss.currentHealth ~= boss.health then
				boss.currentHealth  = boss.currentHealth + (boss.health - boss.currentHealth) * dt;
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
		if LEVEL_ROUND == 3 then 
			BOSS_DEAD = true
			
			local hm = GetHeightmap({x=321.2,y=0,z=435.7})
			if hm then
				Transform.SetPosition(boss.transformID, { x=321.2, y= hm.asset:GetHeight(321.2, 435.7)+3, z=435.7 })
			end

		end
	end

	if not boss.alive then
		boss.deathTimer = boss.deathTimer - dt
		if boss.deathTimer < 0 then
			boss.RealKill()
		end
	end
end