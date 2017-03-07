
function CreateRewinder()
	local rew = {}
	rew.duration = 2
	rew.rewinding = false
	rew.particles = createCloudParticles()

	function rew:Cast()
		--Rewind
		self.duration = 2
		self.rewinding = true
	end

	function rew:Update(dt)
		self.duration = self.duration - dt
		if self.duration < 0 then 
			print("Nu spolar vi")
			self.rewinding = false
			Rewind()
		end
		return false
	end

	return rew
end
rewinder = CreateRewinder()