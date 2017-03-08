
function CreateRewinder()
	local rew = {}
	rew.duration = 5
	rew.rewinding = false
	rew.particles = createCloudParticles()
	rew.holdParticles = createHoldingParticles()
	rew.light = nil
	rew.intensity = 2

	function rew:Cast()
		self.duration = 5
		self.rewinding = true
		player.isControlable = false
		
		camera.toFollow = player.dummyTrans
		Transform.CopyTransform(player.transformID, player.dummyTrans.transformID)
		Erebus.SetControls(player.dummyTrans.transformID)
		local pos = Transform.GetPosition(boss.transformID)
		self.light = Light.addLight(pos.x, pos.y+4, pos.z, 72/255,0,1, 0, 0, true)
		self.holdParticles:cast(player.position)
	end

	function rew:Update(dt)
		self.duration = self.duration - dt
		if self.duration < 0 then 	
			self:RewindEnd()
		end
		self:Rewinding(dt)
		return false
	end

	function rew:Rewinding(dt)
		self.intensity = self.intensity + dt 
		Light.updateIntensity(self.light, self.intensity * self.intensity )
		Light.updateRadius(self.light, self.intensity * self.intensity * 2)
	end

	function rew:RewindEnd()
		if self.light then		Light.removeLight(self.light, true)	 self.light = nil	end
		self.rewinding = false
		self.intensity = 2

		player.isControlable = true
		camera.toFollow = player
		Erebus.SetControls(player.transformID)
		
		boss:Reset()
		Rewind()
		local pos = Transform.GetPosition(player.transformID)
		pos.y = pos.y + 34
		self.particles:poof(pos)
		self.holdParticles:die()
	end

	return rew
end
rewinder = CreateRewinder()