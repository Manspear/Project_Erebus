SUNRAY_DURATION = 2
SUNRAY_MAX_CHARGETIME = 3
SUNRAY_DAMAGE = 3
SUNRAY_COOLDOWN = 5

function CreateSunRay()
	local sunRay = {}
	sunRay.type = CreateProjectileType()
	sunRay.effect = CreateFireEffect --reference to function
	sunRay.lifeTime = SUNRAY_DURATION
	sunRay.damage = 0
	sunRay.alive = false
	sunRay.speed = 100
	sunRay.effectFlag = false
	sunRay.maxChargeTime = SUNRAY_MAX_CHARGETIME
	sunRay.chargedTime = 0
	sunRay.Charge = BaseCharge
	sunRay.ChargeCast = BaseChargeCast	
	sunRay.particles = createFireballParticles()

	sunRay.moveImpairment = 0.5;

	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, sunRay.type.transformID)

	function sunRay:Update(dt)
		hits = self.type:Update(dt)
		self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].Hurt then	
				if self.effectFlag then
					table.insert(hits[index].effects, self.effect())
				end
				hits[index]:Hurt(self.damage)
			end
		end
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), 0)
		self.lifeTime = self.lifeTime - dt
		if self.lifeTime < 0 then 
			self.particles.die(self.type.position) 
			self:Kill() 
		end
	end
	
	function sunRay:Cast(chargetime, effects)
		self.particles.cast()
		Camera.SetSensitivity(self.moveImpairment)
		chargetime = math.min(chargetime, SUNRAY_MAX_CHARGETIME)
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), 0)
		self.alive = true
		self.lifeTime = SUNRAY_DURATION 
		self.effectFlag = effects
		self.damage = (chargetime/SUNRAY_MAX_CHARGETIME) * SUNRAY_DAMAGE
		self.chargedTime = 0
	end

	function sunRay:Kill()
		self.alive = false
		Camera.SetSensitivity(1 / self.moveImpairment)
		self.type:Kill()
	end
	return sunRay
end