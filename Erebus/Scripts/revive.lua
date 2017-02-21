
function CreateRevive(entity)
	local spell = {}
	spell.owner = entity
	spell.reviveTime = 3
	spell.target = nil
	function spell:Update(dt)
		self.reviveTime = self.reviveTime - dt
		if self.reviveTime < 0 then 
			self.target.health = self.owner.health
			self.target.isAlive = true
		end
	end

	function spell:Cast(target)
		self.target = target
	end
	return spell
end