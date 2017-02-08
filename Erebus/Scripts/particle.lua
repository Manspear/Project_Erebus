function createFireballParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, koncentration på spruuut
	local fireball = {}
	fireball.fly = Particle.Bind("ParticleFiles/fireballPart.Particle")  
	fireball.exploda = Particle.Bind("ParticleFiles/fireballPart.Particle")
	
	function fireball.cast()
		Particle.SetAlive(fireball.fly)
	end

	function fireball.die(pos)
		Particle.SetDead(fireball.fly)
		Particle.SetPosition(fireball.exploda, pos)
		Particle.SetDirection(fireball.exploda, 0, 0, 0)
		Particle.Explode(fireball.exploda)	
	end

	function fireball.update(x, y, z, mx, my, mz)
		Particle.SetPosition(fireball.fly, x, y, z)
		Particle.SetDirection(fireball.fly, 0, 0, 0)
	end

	return fireball
end

function createIceGrenadeParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, koncentration på spruuut
	local fireball = {}
	fireball.fly = Particle.Bind("ParticleFiles/grenadeParticles.Particle")  
	fireball.exploda = Particle.Bind("ParticleFiles/grenadeParticles.Particle")
	
	function fireball.cast()
		Particle.SetAlive(fireball.fly)
	end

	function fireball.die(pos)
		Particle.SetDead(fireball.fly)
		Particle.SetPosition(fireball.exploda, pos)
		Particle.Explode(fireball.exploda)	
	end

	function fireball.update(pos)
		Particle.SetPosition(fireball.fly, pos)
	end
	return fireball
end

function CreateFireEffectParticles()
	local particle = {}
	particle.burn = Particle.Bind("ParticleFiles/yoooo.particle")
	function particle:Cast()
		Particle.SetAlive(particle.burn)
	end
	function particle:Die()
		Particle.SetDead(self.burn)
	end

	function particle:Update(pos)
		Particle.SetPosition(self.burn, pos)
	end
	return particle
end

function createChargeParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, koncentration på spruuut
	local charge = {}
	charge.fly = Particle.Bind("ParticleFiles/grenadeParticles.Particle")  
		
	function charge.cast()
		Particle.SetAlive(charge.fly)
	end

	function charge.die()
		Particle.SetDead(charge.fly)	
	end

	function charge.update(pos)
		Particle.SetPosition(charge.fly, pos)
	end

	function charge.extrovert(yesNo)
		Particle.SetExtro(charge.fly, yesNo)
	end

	return charge
end