function createFireballParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut
	local fireball = {}
	fireball.fly = Particle.Bind(50, 1, 30, 50, 1, 10)
	fireball.exploda = Particle.Bind(200, 1, 4, 1, 200, 1)

	function fireball.cast()
		Particle.SetAlive(fireball.fly)
	end

	function fireball.die(x, y, z)
		Particle.SetDead(fireball.fly)
		Particle.SetPosition(fireball.exploda, x, y, z)
		Particle.SetDirection(fireball.exploda, 0, 0, 0)
		Particle.Explode(fireball.exploda)	
	end

	function fireball.update(x, y, z)
		Particle.SetPosition(fireball.fly, x, y, z)
		Particle.SetDirection(fireball.fly, 0, 10, 0)
	end

	return fireball
end
