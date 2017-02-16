LIFE_STEAL_DURATION = 2
LIFE_STEAL_INTERVAL = 1
LIFE_STEAL_DAMAGE = 2
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
			print("owner health is now:" .. self.owner.health)
			self.owner.health = self.owner.health + self.damage
			entity:Hurt(self.damage, self.owner)
			self.interval = LIFE_STEAL_INTERVAL
		end
		return self.duration > 0
	end
	return effect
end