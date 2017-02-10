CHRONOBALL_SPELL_TEXTURE = Assets.LoadTexture("Textures/firepillar.dds");
CHRONOBALLLIFETIME = 10
CHRONOBALLORBITDISTANCE = 1.5
CHRONOBALLORBITSPEED = 10
CHRONOBALLMAXCHARGETIME = 5

function CreateChronoBall()
	local spell = {}
	local model = Assets.LoadModel( "Models/projectile1.model" )
	spell.type = CreateProjectileType(model)
	spell.effect = CreateTimeSlowEffect
	spell.lifeTime = CHRONOBALLLIFETIME
	spell.alive = false
	spell.speed = 10
	spell.rotatingAngle = 0
	spell.particles = createFireballParticles() --particles
	spell.effectFlag = false
	spell.maxChargeTime = CHRONOBALLMAXCHARGETIME
	spell.chargedTime = 0
	spell.hudtexture = CHRONOBALL_SPELL_TEXTURE
	spell.maxcooldown = -1 --Change to cooldown duration if it has a cooldown otherwise -1
	
	--local model = Assets.LoadModel( "Models/projectile1.model" )
	--Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Update(dt)
		hits = self.type:Update(dt)

		self.rotatingAngle = self.rotatingAngle + dt * CHRONOBALLORBITSPEED
		local anglex =  math.cos(self.rotatingAngle)
		local anglez = math.sin(self.rotatingAngle)

		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z, anglex, 0, anglez)

		for index = 1, #hits do
			if self.effectFlag and hits[index].timeScalar == 1.0then
				table.insert(hits[index].effects, self.effect())
			end
			local hitPos = Transform.GetPosition(self.type.transformID)
			hitPos.x = hitPos.x + anglex * CHRONOBALLORBITDISTANCE
			hitPos.z = hitPos.z + anglez * CHRONOBALLORBITDISTANCE
			Transform.SetPosition(hits[index].transformID, hitPos)
		end
		self.lifeTime = self.lifeTime - dt

		--[[local posx = math.floor(self.type.position.x/512)
		local posz = math.floor(self.type.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1
		if heightmapIndex < 1 then heightmapIndex = 1 end
		if heightmapIndex > 4 then heightmapIndex = 4 end

		if heightmaps[heightmapIndex].asset:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y or self.lifeTime < 0 then
			--self.particles.die(self.type.position.x, self.type.position.y, self.type.position.z)
			self.Kill(self)
		end--]]

		local hm = GetHeightmap(self.type.position)
		if hm and hm.asset:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y then
			self.Kill(self)
		end

		if self.alive and self.lifeTime < 0 then
			self.Kill(self)
		end
	end
	
	function spell:Cast(chargetime, effect)
		self.position = Transform.GetPosition(casterTransID)
		self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed)
		self.alive = true
		self.lifeTime = CHRONOBALLLIFETIME 
		self.chargedTime = chargetime
		self.effectFlag = effect
		--self.particles.cast()
		Transform.SetPosition(self.transformID, self.position)
		self.particles.cast()
		
	end

	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast

	function spell:Kill()
		self.alive = false
		self.particles.die(self.type.position)
		self.type:Kill()
	end
	return spell
end