FIREBALL_SPELL_TEXTURE = Assets.LoadTexture("Textures/firepillar.dds");
FIREBALLLIFETIME = 2
FIREBALLMAXCHARGETIME = 3
FIREBALLDAMAGE = 3

function CreateFireball()
	local fireball = {}
	fireball.type = CreateProjectileType()
	fireball.effect = CreateFireEffect --reference to function
	fireball.lifeTime = FIREBALLLIFETIME
	fireball.damage = 0
	fireball.alive = false
	fireball.speed = 100
	fireball.particles = createFireballParticles() --particles
	fireball.effectFlag = false
	fireball.maxChargeTime = FIREBALLMAXCHARGETIME
	fireball.chargedTime = 0
	fireball.castSFX = "Effects/burn_ice_001.wav"
	fireball.deathSFX = "Effects/explosion.wav"
	fireball.hudtexture = FIREBALL_SPELL_TEXTURE

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, fireball.type.transformID)

	function fireball:Update(dt)
		hits = self.type:Update(dt)
		Sound.SetPosition(self.soundID, self.type.position)
		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then
				self.particles.die(self.type.position)
				if self.effectFlag then
					table.insert(hits[index].effects, self.effect())
				end
				hits[index]:Hurt(self.damage)
				self:Kill()
			end
		end
		self.lifeTime = self.lifeTime - dt

		local posx = math.floor(self.type.position.x/512)
		local posz = math.floor(self.type.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1
		if heightmapIndex < 1 then heightmapIndex = 1 end
		if heightmapIndex > 4 then heightmapIndex = 4 end
		if heightmaps[heightmapIndex]:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y or self.lifeTime < 0 then
			self.particles.die(self.type.position)
			self.Kill(self)
		end
	end
	
	function fireball:Cast(chargetime, effects)
		--self.direction = dir	--Transform.GetLookAt(player.transformID
		chargetime = math.min(chargetime, FIREBALLMAXCHARGETIME)
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed * chargetime)
		self.alive = true
		self.lifeTime = FIREBALLLIFETIME 
		self.particles.cast()
		self.effectFlag = effects
		self.damage = (chargetime/FIREBALLMAXCHARGETIME) * FIREBALLDAMAGE
		self.chargedTime = 0
		self.soundID = Sound.Play(self.castSFX, 13, self.type.position)
		Sound.SetVolume(self.soundID, 1)
		--Transform.SetPosition(self.transformID, self.position)
	end
	
	fireball.Charge = BaseCharge
	fireball.ChargeCast = BaseChargeCast

	function fireball:Kill()
		self.alive = false
		self.type:Kill()
		Sound.Play(self.deathSFX, 13, self.type.position)
	end
	return fireball
end