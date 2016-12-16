function createFireball()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut
	local fireball = {}
	fireball.fly = Particle.Bind(50, 1, 2, 50, 1)
	fireball.exploda = Particle.Bind(500, 1, 5, 1, 500)
	Particle.SetColor(fireball.fly, 0.2, 0.5, 0.7)
	Particle.SetColor(fireball.exploda, 0.85, 0.21, 0.11)

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
