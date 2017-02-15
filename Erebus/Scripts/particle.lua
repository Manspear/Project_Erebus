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

CHARGE_PARTICLES_TEX = Assets.LoadTexture("Textures/fire1.png");
function createChargeParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt
	local charge = {}
	charge.ID = Emitter.Bind(38, 0.5, 25, 75, 1, 0, 0, 0, 1)  
	Emitter.SetTexture(charge.ID, CHARGE_PARTICLES_TEX)
	function charge.cast()
		Emitter.SetAlive(charge.ID)
	end

	function charge.die()
		Emitter.SetDead(charge.ID)	
	end

	function charge.update(pos)
		Emitter.SetPosition(charge.ID, pos)
	end

	function charge.extrovert(yesNo)
		Emitter.SetExtro(charge.ID, yesNo)
	end

	return charge
end

function createSparklyParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, koncentration på spruuut
	local sparkles = {}
	sparkles.fly = Particle.Bind("ParticleFiles/grenadeParticles.Particle")  
	
	function sparkles:cast()
		Particle.SetAlive(self.fly)
	end

	function sparkles:die(pos)
		Particle.SetDead(self.fly)
	end

	function sparkles:update(pos)
		Particle.SetPosition(self.fly, pos)
	end
	return sparkles
end

function createCloudParticles()
	local cloud = {}
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt
	cloud.ID = Emitter.Bind(30, 0.8, 4, 0, 0, 0, 1, 1, 1)   
	Emitter.SetDirection(cloud.ID, {x = 0, y = 1, z = 0})
	Emitter.SetTexture(cloud.ID, CHARGE_PARTICLES_TEX)
	function cloud:poof(pos)
		Emitter.SetPosition(self.ID, pos)
		Emitter.Explode(self.ID)	
	end
	return cloud
end