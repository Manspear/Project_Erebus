MAX_CHARGE_TIME_PILLAR = 3
MIN_CHARGE_TIME_PILLAR = 1.5
MAX_DAMAGE_PILLAR = 1000
SPEED_PILLAR = 75
EXPLOSION_RADIUS_PILLAR = 10

MIN_FALLOFF_PILLAR = 30
MAX_FALLOFF_PILLAR = 50

Y_SPEED_PILLAR = 15

function CreateHellPillar()
	function initNade()
		local nade = {}
		nade.type = CreateGrenadeType()
		nade.effectflag = false
		nade.damage = 0
		nade.alive = false
		nade.particles = createFireballParticles()
		nade.exploding = false
		local model = Assets.LoadModel( "Models/projectile1.model" )
		Gear.AddStaticInstance(model, nade.type.transformID)
		return nade
	end
	
	local spell = {}
	spell.maxChargeTime = MAX_CHARGE_TIME_PILLAR
	spell.effect = CreateSlowEffect
	spell.nades = {}
	spell.spamcd = SPAM_CD_PILLAR
	spell.timeSinceSpam = 0
	spell.chargedTime = 0
	spell.nade = initNade()
	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast
	spell.spamcd = SPAM_CD_ICENADE

	function spell:Cast(entity, chargetime)
		if self.timeSinceSpam > self.spamcd then
			if not self.nade.alive then
				local factor = chargetime / self.maxChargeTime
				local pos = Transform.GetPosition(entity.transformID)
				local dir = Transform.GetLookAt(entity.transformID)
				dir.y = dir.y + Y_SPEED_PILLAR 
				local falloff = MAX_FALLOFF_ICENADE
				local radius = factor * EXPLOSION_RADIUS_ICENADE
				self.nade.type:Cast(pos, dir, falloff, MIN_CHARGE_TIME_PILLAR + SPEED_PILLAR * factor, radius)
				self.nade.damage = factor * MAX_DAMAGE_ICENADE		
				self.nade.effectflag = effectflag
				self.nade.alive = true
				self.nade.particles.cast()
				self.timeSinceSpam = 0
				spell.chargedTime = 0
			end
		end
	end
	
	function spell:Update(dt)
		self.timeSinceSpam = self.timeSinceSpam + dt
		if self.nade.alive then
			self.nade.particles.update(self.nade.type.position.x, self.nade.type.position.y, self.nade.type.position.z)
			if not self.nade.exploding then
				self.nade.exploding = self.nade.type:flyUpdate(dt)
			else
				self.nade.particles.die(self.nade.type.position)
				hits = self.nade.type:Update(dt)
					
				for index = 1, #hits do
					if hits[index].Hurt then
						if self.nade.effectFlag then
							local effect = self.effect()
							table.insert(hits[index].effects, effect)
							effect:Apply(hits[index])
						end
						hits[index]:Hurt(self.nade.damage)
					end
				end
				if self.nade.type.explodetime > GRENADE_EXPLODE_TIME then
					self:Kill(i)
				end
			end
		end		
	end
	
	function spell:Kill()
		self.nade.type:Kill()
		self.nade.alive = false
		self.nade.exploding = false
	end
	return spell
end