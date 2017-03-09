MAX_FIRE_EFFECT_PARTICLES = 50

TIME_TABLE = {}
TIME_TABLE[1] = 10.0
TIME_TABLE[2] = 16.0
TIME_TABLE[3] = 19.0
TIME_TABLE[4] = 22.0

TILE_ATMOSPHERE_TABLE = {}

TILE_ATMOSPHERE_TABLE[1] = {
AMBIENCECOLOR = {r = 1,g=0.976470,b=0.6196078},
FOGCOLOR ={r=0.76,g=0.9,b=0.72},
SKYBOX = 0,
SUNCOLOR =  {r = 1,g=0.976470,b=0.6196078},
SUNANGLE = 89
}
TILE_ATMOSPHERE_TABLE[2] = {
AMBIENCECOLOR = {r = 0.8,g=0.676470,b=0.8196078},
FOGCOLOR = {r=0.76,g=0.9,b=0.92},
SKYBOX = 0,
SUNCOLOR = {r = 0.7,g=0.876470,b=0.6196078},
SUNANGLE = 85
}

TILE_ATMOSPHERE_TABLE[3] = {
AMBIENCECOLOR = {r = 0.60,g=0.5,b=0.6},
FOGCOLOR = {r=0.66,g=0.75,b=0.84}, 
SKYBOX = 0,
SUNCOLOR = {r = 0.5,g=0.676470,b=0.4196078},
SUNANGLE = 77
}

TILE_ATMOSPHERE_TABLE[4] = {
AMBIENCECOLOR = {r = 0.4,g=0.4,b=0.4},
FOGCOLOR ={r=0.47,g=0.6,b=0.78},
SKYBOX = 0,
SUNCOLOR =  {r = 0.4,g=0.576470,b=0.3196078},
SUNANGLE = 72
}

TILE_ATMOSPHERE_TABLE[5] = {
AMBIENCECOLOR = {r = 0.4,g=0.4,b=0.4},
FOGCOLOR = {r=0.36,g=0.8,b=0.62}, 
SKYBOX = 1,
SUNCOLOR =  {r = 0.4,g=0.576470,b=0.3196078},
SUNANGLE = 72
}


TILE_ATMOSPHERE_TABLE[6] = {
AMBIENCECOLOR = {r = 0.4,g=0.4,b=0.4},
FOGCOLOR ={r=0.36,g=0.8,b=0.62}, 
SKYBOX = 1,
SUNCOLOR =  {r = 0.0,g=0.1 ,b=0.1},
SUNANGLE = 61
}

TILE_ATMOSPHERE_TABLE[7] = {
AMBIENCECOLOR = {r = 0.4,g=0.4,b=0.4},
FOGCOLOR ={r=0.56,g=0.3,b=0.62}, 
SKYBOX = 1,
SUNCOLOR =  {r = 0.0,g=1.1 ,b=0.1},
SUNANGLE = 56
}

TILE_ATMOSPHERE_TABLE[8] = {
AMBIENCECOLOR =  {r = 0.47450980,g=0.23137,b=0.49411},
FOGCOLOR = {r=0.5,g=0.3,b=0.5},
SKYBOX = 1,
SUNCOLOR =  {r = 0.0,g=0.1 ,b=0.1},
SUNANGLE = 50
}


OVEREALAMBIENCE = {r = -0.2,g=-0.1,b=-0.1}

function BaseCombine(self, effect,damage)
	if #self.effects < 2 then
		table.insert(self.effects, effect)
		self.damage = self.damage + 2 * damage
	end
end

function BaseCharge(self, dt)
	if self == nil then
		return
	end
	if self.chargedTime < self.maxChargeTime then 
		self.chargedTime = self.chargedTime + dt
	end
	if self.owner == player then
		ZoomInCamera()
	end
end

function BaseChargeCast(self, entity)
	if self.owner == player then
		ZoomOutCamera()
	end
	self:Cast(entity, self.chargedTime)
end

function BaseChange(self)
	self.isActiveSpell = not self.isActiveSpell
end

function BaseGetEffect(self)
	return self.effects[1]
end

function GetHeightmap(position)
	local result = nil
	for _,v in pairs(heightmaps) do
		if v.asset:Inside(position) then
			result = v
		end
	end
	return result
end


fireeffectparticles = {particles = {}, nextIndex = 0}
function InitFireEffectParticles()
	for i = 1, MAX_FIRE_EFFECT_PARTICLES do
		fireeffectparticles.particles[i] = CreateFireEffectParticles()
	end
end

function UnInitFireEffectParticles()
	for i=1, MAX_FIRE_EFFECT_PARTICLES do
		DestroyFireEffectParticles(fireeffectparticles.particles[i])
	end
end

function GetNextFireEffectParticle()
	fireeffectparticles.nextIndex = (fireeffectparticles.nextIndex%MAX_FIRE_EFFECT_PARTICLES)+1
	return fireeffectparticles.particles[fireeffectparticles.nextIndex]
end

--InitFireEffectParticles()

function PrintInfo() 
	if player.printInfo then
		local scale = 0.8
		local color = {0.4, 1, 0.4, 1}
		local info = "Player"
		Gear.Print(info, 60, 570, scale, color)

		local position = Transform.GetPosition(player.transformID)
		info = "Position\nx:"..Round(player.position.x, 1).."\ny:"..Round(player.position.y, 1).."\nz:"..Round(player.position.z, 1)
		Gear.Print(info, 0, 600, scale, color)

		local direction = Transform.GetLookAt(player.transformID)
		info = "LookAt\nx:"..Round(direction.x, 3).."\ny:"..Round(direction.y, 3).."\nz:"..Round(direction.z, 3)
		Gear.Print(info, 120, 600, scale, color)

		info = "Camera"
		Gear.Print(info, 60, 400, scale, color)

		position = Camera.GetPos()
		info = "Position\nx:"..Round(player.position.x, 1).."\ny:"..Round(player.position.y, 1).."\nz:"..Round(player.position.z, 1)
		Gear.Print(info, 0, 430, scale, color)

		direction = Camera.GetDirection()
		info = "Direction\nx:"..Round(direction.x, 3).."\ny:"..Round(direction.y, 3).."\nz:"..Round(direction.z, 3)
		Gear.Print(info, 120, 430, scale, color)
	end
end

function TriggerChecks(dt)
	for _,v in pairs(levels[player.levelIndex].triggers) do
		if v.collider:CheckCollision() then
			if not v.collider.triggered then
				if v.collider.OnEnter then
					v.collider:OnEnter()
				else
					if v.collider.OnTriggering then
						v.collider:OnTriggering(dt)
					end
				end
				v.collider.triggered = true
			else
				if v.collider.OnTriggering then
					v.collider:OnTriggering(dt)
				end
			end
		else
			if v.collider.triggered then
				if v.collider.OnExit then
					v.collider:OnExit()
				end
				v.collider.triggered = false
			end
		end
	end	
end

function Rewind()
	boss.health = 500
	--UnloadGameplay()
	LEVEL_ROUND = LEVEL_ROUND + 1
	--EnterGameplay()
	if LEVEL_ROUND > 3 then
			gamestate.ChangeState(GAMESTATE_WIN)
	else
		for levelIndex,level in pairs(levels) do
			if loadedLevels[levelIndex] then
				level.unload()
				print("unloaded level ".. levelIndex)
			end
			loadedLevels[levelIndex] = false
		end
		--UnloadEnemies()
		levels[1].load()
		loadedLevels[1] = true
		for _,v in pairs(levels[1].surrounding) do
			levels[v].load()
			loadedLevels[v] = true
			print("level: " .. v .. " loaded!")
		end
		Transform.SetPosition(player.transformID, {x=150, y=0, z=210})
		player:ChangeHeightmap(1)



		OVEREALAMBIENCE.r = OVEREALAMBIENCE.r* (LEVEL_ROUND-1)
		OVEREALAMBIENCE.g = OVEREALAMBIENCE.g* (LEVEL_ROUND-1)
		OVEREALAMBIENCE.b = OVEREALAMBIENCE.b*(LEVEL_ROUND-1)

		--Sky.SetTime(TIMETABLE[math.min(LEVEL_ROUND-1,#TIMETABLE)])


		boss.alive = true
		RewindPlayer(player)
		RewindPlayer(player2)
	end

end

function RewindPlayer(rewindPlayer)
		rewindPlayer.moveSpeed = PLAYER_MOVESPEED
		rewindPlayer.health = 100
		rewindPlayer.isAlive = true
		rewindPlayer.effects = {}
		rewindPlayer.isCombined = false
		rewindPlayer.combined = false
		rewindPlayer.spamCasting = false
		rewindPlayer.charging = false
		rewindPlayer.firstAttack = true
		rewindPlayer.invulnerable = false
		rewindPlayer.useRayAttack = false
		rewindPlayer.firstRayAttack = true
		rewindPlayer.dashtime = 0
		rewindPlayer.dashcd = 0
		rewindPlayer.dashTimer = 0
		rewindPlayer.Startdash = false
		rewindPlayer.damagedTint = {r=1, g=0, b=0, a=0}
		rewindPlayer.animationController.animation:SetTint(rewindPlayer.damagedTint)
		
		rewindPlayer.spells[1]:Kill()
		rewindPlayer.spells[2]:Kill()
		rewindPlayer.spells[3]:Kill()
end