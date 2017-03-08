
function CreateRewinder()
	local rew = {}
	rew.duration = 2
	rew.rewinding = false
	rew.particles = createCloudParticles()

	function rew:Cast()
		--Rewind
		self.duration = 5
		self.rewinding = true
		player.isControlable = false
	end

	function rew:Update(dt)
		self.duration = self.duration - dt
		if self.duration < 0 then 	
			self:RewindEnd()
		end
		return false
	end

	function rew:RewindEnd()
		player.isControlable = true
		self.rewinding = false
		Rewind()
	end

	return rew
end
rewinder = CreateRewinder()