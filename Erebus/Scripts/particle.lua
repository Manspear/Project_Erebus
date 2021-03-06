function createIceGrenadeParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, koncentration p� spruuut
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

function destroyIceGrenadeParticles(p)
	Particle.Unbind(p.fly)
	Particle.Unbind(p.exploda)
	p = nil
end

function CreateFireEffectParticles()
	local fire = {}
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration p� spruuut, storlek, tillv�xt
	fire.ID = Emitter.Bind(25, 0.3, 4, 50, 2, 0, 0, 1, -2)  
	Emitter.SetTexture(fire.ID, Assets.LoadTexture("Textures/fireSpellRed.dds"))
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

function DestroyFireEffectParticles(p)
	Emitter.Unbind(p.ID)
	p = nil
	Assets.UnloadTexture( "Textures/fireSpellRed.dds" )
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

function DestroyFireballParticles(p)
	Particle.Unbind(p.burn)
	p = nil
end

function createSparklyParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration p� spruuut, storlek, tillv�xt 
	local sparkles = {}
	sparkles.ID = Emitter.Bind(50, 1.0, 2, 25, 2, 0, 0, 1, -1)   
	Emitter.SetTexture(sparkles.ID, Assets.LoadTexture("Textures/stars.dds"))

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

function destroySparklyParticles(p)
	Emitter.Unbind(p.ID)
	p = nil

	Assets.UnloadTexture("Textures/stars.dds");
end

function createSparklyParticles2()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration p� spruuut, storlek, tillv�xt 
	local sparkles = {}
	sparkles.ID = Emitter.Bind(50, 1.0, 2, 25, 2, 8, 0, 1, -1)   
	Emitter.SetTexture(sparkles.ID, Assets.LoadTexture("Textures/stars.dds"))

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

function destroySparklyParticles2(p)
	Emitter.Unbind(p.ID)
	p = nil
	Assets.UnloadTexture("Textures/stars.dds")
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
	function tumbleParticles:explode(pos)
		Particle.Explode(self.fly, pos)
	end
	function tumbleParticles:setFocus(focus)
		Particle.SetFocus(self.fly, focus)
	end
	return tumbleParticles
end

function destroyTumbleParticles(p)
	Particle.Unbind(p.fly)
	p = nil
end

function createCloudParticles()
	local cloud = {}
	cloud.ID = Particle.Bind("ParticleFiles/smokeParticles.Particle")
	function cloud:poof(pos)
		Particle.Explode(self.ID, pos)
	end
	return cloud
end

function destroyCloudParticles(p)
	Particle.Unbind(p.ID)
	p = nil
end

function createWindParticles()
	local wind = {}
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration p� spruuut, storlek, tillv�xt 
	wind.ID = Particle.Bind("ParticleFiles/wind2.Particle")   

	function wind:poof(pos, direction)	
		Particle.SetPosition(self.ID, pos)
		Particle.SetDirection(self.ID, direction.x, direction.y, direction.z)		
		Particle.Explode(self.ID, pos)
	end
	return wind
end

function destroyWindParticles(p)
	Particle.Unbind(p.ID)
	p = nil
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

function destroyTimeslowParticles(p)
	Particle.Unbind(p.ID)
	p = nil
end

function createParticlesByElement()
	local chargePart = {}
	chargePart.ID = Emitter.Bind(38, 0.5, 25, 75, 1, 0, 0, 0, 1)
	chargePart.FIRE_TEX = Assets.LoadTexture("Textures/fireSpell.dds")
	chargePart.NATURE_TEX = Assets.LoadTexture("Textures/greenDot.dds")
	chargePart.ICE_TEX = Assets.LoadTexture("Textures/brightParticle.dds")
	
	function chargePart:fireElement()
		Emitter.SetTexture(self.ID, self.FIRE_TEX)
	end	
	function chargePart:natureElement()
		Emitter.SetTexture(self.ID, self.NATURE_TEX)
	end
	function chargePart:iceElement()
		Emitter.SetTexture(self.ID, self.ICE_TEX)
	end

	function chargePart:cast()
		Emitter.SetAlive(self.ID)
	end
	function chargePart:die()
		Emitter.SetDead(self.ID)	
	end
	function chargePart:update(pos)
		Emitter.SetPosition(self.ID, pos)
	end
	function chargePart:extrovert(yesNo)
		Emitter.SetExtro(self.ID, yesNo)
	end

	return chargePart
end

function destroyParticlesByElement(part)
	Emitter.Unbind(part)

	Assets.UnloadTexture("Textures/fireSpell.dds")
	Assets.UnloadTexture("Textures/greenDot.dds")
	Assets.UnloadTexture("Textures/brightParticle.dds")

	part = nil
end

function createHoldingParticles()
	--Args = Antal partiklar, livstid, hastighet, utskjut/sekund, antal/utskjut, gravitation, koncentration p� spruuut, storlek, tillv�xt 
	local holder = {}
	holder.ID = Emitter.Bind(25, 1.0, 2, 5, 5, 0, 0, 0, 1)   
	Emitter.SetTexture(holder.ID, Assets.LoadTexture("Textures/timeClockPurple.dds"))
	Emitter.SetExtro(holder.ID, false)
	function holder:cast(pos)
		Emitter.SetPosition(self.ID, pos)
		Emitter.SetAlive(self.ID)
	end

	function holder:die()
		Emitter.SetDead(self.ID)
	end
	return holder
end

function destroyParticlesByElement(part)
	Emitter.Unbind(part)
	Assets.UnloadTexture("Textures/timeClockPurple.dds")
	part = nil
end
