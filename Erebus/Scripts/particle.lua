function createFireballParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, koncentration på spruuut
	local fireball = {}
	fireball.fly = Particle.Bind("ParticleFiles/test.Particle")  
	fireball.exploda = Particle.Bind("ParticleFiles/test.Particle")
	
	function fireball.cast()
		Particle.SetAlive(fireball.fly)
	end

	function fireball.die(pos)
		Particle.SetDead(fireball.fly)
		Particle.SetPosition(fireball.exploda, pos.x, pos.y, pos.z)
		Particle.SetDirection(fireball.exploda, 0, 0, 0)
		Particle.Explode(fireball.exploda)	
	end

	function fireball.update(x, y, z)
		Particle.SetPosition(fireball.fly, x, y, z)
		Particle.SetDirection(fireball.fly, 0, 0, 0)
	end

	return fireball
end
