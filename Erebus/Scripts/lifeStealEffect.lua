LIFE_STEAL_DURATION = 2
LIFE_STEAL_INTERVAL = 1
LIFE_STEAL_DAMAGE = 1
function CreateLifeStealEffect(entity, duration)
	local effect = {}
	effect.duration = duration or LIFE_STEAL_DURATION
	effect.interval = 0
	effect.owner = entity
	effect.damage = LIFE_STEAL_DAMAGE

	function effect:Apply(entity) end
	function effect:Deapply(entity) end
	function effect:Update(entity, dt)
		self.interval = self.interval - dt
		self.duration = self.duration - dt
		if self.interval < 0 then
			if self.owner.health < 100 and self.owner.isAlive then
				self.owner.health = self.owner.health + self.damage
				Gear.PrintDamage(self.damage, HEAL, self.owner.position.x, self.owner.position.y+1, self.owner.position.z )
			end
			entity:Hurt(self.damage, self.owner, NATURE)
			self.interval = LIFE_STEAL_INTERVAL
		end
		return self.duration > 0
	end
	return effect
end

function DestroyLifeStealEffect(effect)
	effect = nil
end