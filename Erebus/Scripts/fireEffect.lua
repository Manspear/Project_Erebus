FIREEFFECTINTERVAL = 0.5
FIREEFFECTDURATION = 5
FIREEFFECTDAMAGE = 1

function CreateFireEffect(effectowner)
	local effect = {}
	effect.owner = effectowner
	effect.damage = FIREEFFECTDAMAGE
	effect.duration = FIREEFFECTDURATION
	effect.interval = FIREEFFECTINTERVAL
	effect.particles = GetNextFireEffectParticle()
	function effect:Apply(entity)
		self.particles:Update(Transform.GetPosition(entity.transformID))
		self.particles:Cast()
	end

	function effect:Deapply(entity)
		self.particles:Die()
	end

	function effect:Update(entity, dt) --return false if you want the enemy to remove the effect from its effect list
		self.duration = self.duration - dt
		self.interval = self.interval - dt
		self.particles:Update(Transform.GetPosition(entity.transformID))
		if self.interval < 0 then
			self.interval = self.interval + FIREEFFECTINTERVAL
			entity:Hurt(self.damage, self.owner, FIRE)
		end
		
		return self.duration > 0 
	end

	return effect
end

function DestroyFireEffect(effect)
	effect = nil
end