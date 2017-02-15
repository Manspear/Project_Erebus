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
	local ice = {}
	ice.fly = Particle.Bind("ParticleFiles/grenadeParticles.Particle")  
	ice.exploda = Particle.Bind("ParticleFiles/ice.Particle")
	
	function ice.cast()
		Particle.SetAlive(ice.fly)
	end

	function ice.die(pos)
		Particle.SetDead(ice.fly)
		Particle.Explode(ice.exploda, pos)	
	end

	function ice.update(pos)
		Particle.SetPosition(ice.fly, pos)
	end
	return ice
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

CHARGE_PARTICLES_TEX = Assets.LoadTexture("Textures/fire1.dds");
function createChargeParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt
	local charge = {}
	charge.ID = Emitter.Bind(38, 0.5, 25, 75, 1, 0, 0, 0, 1)  
	Emitter.SetTexture(charge.ID, CHARGE_PARTICLES_TEX)
	function charge:cast()
		Emitter.SetAlive(self.ID)
	end

	function charge:die()
		Emitter.SetDead(self.ID)	
	end

	function charge:update(pos)
		Emitter.SetPosition(self.ID, pos)
	end

	function charge:extrovert(yesNo)
		Emitter.SetExtro(self.ID, yesNo)
	end

	return charge
end
STAR_PARTICLES_TEX = Assets.LoadTexture("Textures/stars.png");
function createSparklyParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt 
	local sparkles = {}
	sparkles.ID = Emitter.Bind(50, 1.0, 2, 25, 2, 0, 0, 1, -1)   
	Emitter.SetTexture(sparkles.ID, STAR_PARTICLES_TEX)

	function sparkles:cast()
		Emitter.SetAlive(self.ID)
	end

	function sparkles:die()
		Emitter.SetDead(self.ID)
	end

	function sparkles:update(pos)
		Emitter.SetPosition(self.ID, pos)
	end
	return sparkles
end

function  createTumbleParticles()
	local tumbleParticles = {}
	tumbleParticles.fly = Particle.Bind("ParticleFiles/nature.Particle");

	function tumbleParticles:cast(x, y, z)
		Particle.SetAlive(self.fly)
		Particle.SetDirection(Particle.fly, x, y, z);

	end

	function tumbleParticles:die(pos)
		Particle.SetDead(self.fly)
	end

	function tumbleParticles:update(pos)
		Particle.SetPosition(self.fly, pos)
	end
	return tumbleParticles
end


function createCloudParticles()
	local cloud = {}
	cloud.ID = Particle.Bind("ParticleFiles/smokeParticles.Particle")
	function cloud:poof(pos)
		Particle.Explode(self.ID, pos)
	end
	return cloud
end
