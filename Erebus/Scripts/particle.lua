function createFireball()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut
	local fireball = {}
	fireball.fly = Particle.Bind(50, 1, 4, 10, 5)
	fireball.exploda = Particle.Bind(50, 1, 10, 1, 50)
	oneMoreTime = true
	function fireball.cast()
		Particle.SetAlive(fireball.fly)
	end

	function fireball.die(x, y, z)
		Particle.SetDead(fireball.fly)
		Particle.SetPosition(fireball.exploda, x, y, z)
		Particle.Explode(fireball.exploda)	
	end

	function fireball.update(x , y, z)
		Particle.SetPosition(fireball.fly, x, y, z)
	end

	return fireball
end
