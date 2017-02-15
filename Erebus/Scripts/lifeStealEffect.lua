LIFE_STEAL_DURATION = 2
LIFE_STEAL_INTERVAL = 0.1

function CreateLifeStealEffect(entity, duration)
	local effect = {}
	effect.duration = duration or LIFE_STEAL_DURATION
	effect.interval = LIFE_STEAL_INTERVAL
	effect.owner = entity

	function effect:Apply(entity) end
	function effect:DeApply(entity) end
	function effect:Update(entity, dt)
		self.interval = self.interval - dt
		self.duration = self.duration - dt
		if self.interval < 0 then
			self.owner.health = self.owner.health + self.damage
			--entity:Hurt(self.damage, self.owner)
			interval = LIFE_STEAL_INTERVAL
		end
		return self.duration > 0
	end

end