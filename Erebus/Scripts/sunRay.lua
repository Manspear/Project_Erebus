SUNRAY_DURATION = 2
SUNRAY_MAX_CHARGETIME = 3
SUNRAY_DAMAGE = 3
SUNRAY_COOLDOWN = 2.7

function CreateSunRay()
	local sunRay = {}
	sunRay.type = CreateRayType()
	sunRay.effect = CreateFireEffect --reference to function
	sunRay.lifeTime = SUNRAY_DURATION
	sunRay.damage = 0
	sunRay.alive = false
	sunRay.maxChargeTime = SUNRAY_MAX_CHARGETIME
	sunRay.chargedTime = 0
	sunRay.Charge = BaseCharge
	sunRay.ChargeCast = BaseChargeCast	
	sunRay.particles = createFireballParticles()
	sunRay.owner = {}
	sunRay.moveImpairment = 0.5
	sunRay.cameraSlow = 2.0
	sunRay.cooldown = 0.0
	sunRay.caster = 0
	sunRay.castSFX = {}
	sunRay.castSFX[1] = "Effects/CK_Blaster_Shot-226.wav"
	sunRay.castSFX[2] = "Effects/CK_Force_Field_Loop-32.wav"
	sunRay.hitSFX = "Effects/burn_ice_001.wav"
	sunRay.soundID = {}
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, sunRay.type.transformID)

	function sunRay:Update(dt)
		if self.alive then
			hits = self.type:Update(Transform.GetPosition(self.caster))
			self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
			Transform.SetRotation(self.type.transformID, Transform.GetRotation(self.caster))
			Transform.SetLookAt(self.type.transformID, Transform.GetLookAt(self.caster))
			for index = 1, #hits do
				if hits[index].Hurt then	
					if self.effectFlag then
						table.insert(hits[index].effects, self.effect())
					end
					hits[index]:Hurt(self.damage)
					Sound.Play(self.hitSFX, 1, hits[index].position)
				end
			end
			self.lifeTime = self.lifeTime - dt
			if self.lifeTime < 0 then 
				self.particles.die(self.type.position) 
				self:Kill() 
			end
		end
		self.cooldown = self.cooldown - dt;
	end
	
	function sunRay:Cast(entity, chargetime, effects)
		if (self.cooldown < 0.0) then
			self.caster = entity.transformID
			self.type:Cast(Transform.GetPosition(self.caster))
			Transform.SetRotation(self.type.transformID, Transform.GetRotation(self.caster))
			Transform.SetLookAt(self.type.transformID, Transform.GetLookAt(self.caster))
			self.particles.cast()
			Erebus.CameraSensitivity(self.cameraSlow)
			chargetime = math.min(chargetime, SUNRAY_MAX_CHARGETIME)
			entity.moveSpeed = entity.moveSpeed * self.moveImpairment 	
			self.alive = true
			self.lifeTime = SUNRAY_DURATION 
			self.effectFlag = effects
			self.damage = (chargetime/SUNRAY_MAX_CHARGETIME) * SUNRAY_DAMAGE
			self.chargedTime = 0
			self.cooldown = SUNRAY_COOLDOWN
			for index = 1, #self.castSFX do
				self.soundID[index] = Sound.Play(self.castSFX[index], 13, self.type.position)
				Sound.SetVolume(self.soundID[index], 0.8)
			end
		end
	end

	function sunRay:Kill()
		self.alive = false
		Sound.Pause(self.soundID[2])
		Erebus.CameraSensitivity(1 / self.cameraSlow)
		player.moveSpeed = player.moveSpeed * (1 / self.moveImpairment) 
		self.type:Kill()
	end
	return sunRay
end