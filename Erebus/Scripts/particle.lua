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
FIREBALL_PARTICLES_TEX = Assets.LoadTexture("Textures/fireSpellRed.dds")

function CreateFireEffectParticles()
	local fire = {}
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt
	fire.ID = Emitter.Bind(25, 0.3, 4, 50, 2, 0, 0, 1, -2)  
	Emitter.SetTexture(fire.ID, FIREBALL_PARTICLES_TEX)
	function fire:Cast()
		Emitter.SetAlive(self.ID)
	end

	function fire:Die()
		Emitter.SetDead(self.ID)	
	end

	function fire:Update(pos)
		Emitter.SetPosition(self.ID, pos)
	end

	return fire
end

function CreateFireballParticles()
	local particle = {}
	particle.burn = Particle.Bind("ParticleFiles/firetest4.particle")
	function particle:Cast()
		Particle.SetAlive(self.burn)
	end
	function particle:Die()
		Particle.SetDead(self.burn)
	end

	function particle:Update(pos)
		Particle.SetPosition(self.burn, pos)
	end
	return particle
end

CHARGE_PARTICLES_TEX = Assets.LoadTexture("Textures/fireSpell.dds")
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
--STAR_PARTICLES_TEX = Assets.LoadTexture("Textures/stars.png");
STAR_PARTICLES_TEX = Assets.LoadTexture("Textures/stars.dds");
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

function createSparklyParticles2()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt 
	local sparkles = {}
	sparkles.ID = Emitter.Bind(50, 1.0, 2, 25, 2, 8, 0, 1, -1)   
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
	tumbleParticles.fly = Particle.Bind("ParticleFiles/leafParticles.Particle");

	function tumbleParticles:cast(x, y, z)
		Particle.SetAlive(self.fly)
		Particle.SetDirection(self.fly, x, y, z);
	end

	function tumbleParticles:die()
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

function createWindParticles()
	local wind = {}
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration på spruuut, storlek, tillväxt 
	wind.ID = Particle.Bind("ParticleFiles/wind.Particle")   

	function wind:poof(pos, direction)	
		Particle.SetPosition(self.ID, pos)
		Particle.SetDirection(self.ID, direction.x, direction.y, direction.z)		
		Particle.Explode(self.ID, pos)
	end
	return wind
end

function createTimeslowParticles()
	local timeslowParticles = {}
	timeslowParticles.ID = Particle.Bind("ParticleFiles/timeClocks.Particle");

	function timeslowParticles:cast()
		Particle.SetAlive(self.ID)
	end

	function timeslowParticles:die(pos)
		Particle.SetDead(self.ID)
	end

	function timeslowParticles:update(pos)
		Particle.SetPosition(self.ID, pos)
	end
	return timeslowParticles
end