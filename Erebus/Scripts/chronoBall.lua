CHRONOBALLLIFETIME = 10
CHRONOBALLORBITDISTANCE = 1.5
CHRONOBALLORBITSPEED = 10

function CreateChronoBall()
	local spell = {}
	spell.type = CreateProjectileType()
	spell.effect = CreateTimeSlowEffect
	spell.lifeTime = CHRONOBALLLIFETIME
	spell.alive = false
	spell.speed = 10
	spell.rotatingAngle = 0
	
	local model = Assets.LoadModel( "Models/projectile1.model" )
	Gear.AddStaticInstance(model, spell.type.transformID)

	function spell:Update(dt)
		hits = self.type:Update(dt)
		--self.particles.update(self.type.position.x, self.type.position.y, self.type.position.z)
		for index = 1, #hits do
			if hits[index].timeScalar == 1.0 then
				table.insert(hits[index].effects, self.effect())
			end
			local hitPos = Transform.GetPosition(self.type.transformID)
			hitPos.x = hitPos.x + math.cos(self.rotatingAngle)*CHRONOBALLORBITDISTANCE
			hitPos.z = hitPos.z + math.sin(self.rotatingAngle)*CHRONOBALLORBITDISTANCE
			self.rotatingAngle = self.rotatingAngle + dt * CHRONOBALLORBITSPEED
			Transform.SetPosition(hits[index].transformID, hitPos)
		end
		self.lifeTime = self.lifeTime - dt

		local posx = math.floor(self.type.position.x/512)
		local posz = math.floor(self.type.position.z/512)
		local heightmapIndex = (posz*2 + posx)+1

		if heightmaps[heightmapIndex]:GetHeight(self.type.position.x, self.type.position.z) > self.type.position.y or self.lifeTime < 0 then
			--self.particles.die(self.type.position.x, self.type.position.y, self.type.position.z)
			self.Kill(self)
		end
	end
	
	function spell:Cast()
		self.position = Transform.GetPosition(casterTransID)
		self.direction = dir	--Transform.GetLookAt(player.transformID
		self.type:Shoot(Transform.GetPosition(player.transformID), Camera.GetDirection(), self.speed)
		self.alive = true
		self.lifeTime = CHRONOBALLLIFETIME 
		--self.particles.cast()
		Transform.SetPosition(self.transformID, self.position)
		
	end

	function spell:Kill()
		self.alive = false
		self.type:Kill()
	end
	return spell
end