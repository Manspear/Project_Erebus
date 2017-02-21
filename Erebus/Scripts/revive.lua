REVIVE_TIME = 3
REVIVE_LENGTH = 3
function CreateRevive(entity)
	local spell = {}
	spell.owner = entity
	spell.reviveTime = REVIVE_TIME
	spell.target = nil
	spell.reviving = false
	function spell:Update(dt)
		local vector = vec3sub(self.owner.position, self.target.position)
		self.reviving = vec3length(vector) <= REVIVE_LENGTH and true or false
		if self.reviving then
			self.reviveTime = self.reviveTime - dt
			if self.reviveTime < 0 then 
				self.target.health = 100
				self.target.isAlive = true
				print("Nu borde jag börja leve egentligen")
				self.reviving = false
			end
		end
	end

	function spell:Cast(target)
		self.target = target
		self.reviveTime = REVIVE_TIME
		local vector = vec3sub(self.owner.position, self.target.position)
		self.reviving = vec3length(vector) <= REVIVE_LENGTH and true or false
		if self.reviving then
			print("tja2")
		end
	end

	function spell:Kill()
		print("Shåår balla bejkon")
	end
	return spell
end