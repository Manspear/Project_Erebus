TIMELASER_NR_OF_LASERS = 3
TIMELASER_LENGTH = 20
TIMELASER_HIT_INTERVAL = 1
TIMELASER_DAMAGE = 15
TIMELASER_DURATION = 10

function CreateTimeLaser( entity )
	local spell = {}
	spell.transformIDs = {}
	spell.angles = {}
	spell.colliders = {}
	spell.hitTimers = {}
	local model = Assets.LoadModel( "Models/Siphon.model" )
	for i = 1, TIMELASER_NR_OF_LASERS do
		--spell.transformIDs[i] = Transform.Bind()
		spell.angles[i] = (i-1)*2*3.1415/TIMELASER_NR_OF_LASERS
		spell.transformIDs[i] = Gear.BindForwardInstance(model)
		spell.colliders[i] = OBBCollider.Create(spell.transformIDs[i])
		spell.colliders[i].SetSize(spell.colliders[i], TIMELASER_LENGTH, 1, 1)
		spell.hitTimers[i] = 0
		CollisionHandler.AddOBB(spell.colliders[i], 1)
	end
	spell.angle = 0
	spell.owner = entity
	spell.effect = FIRE_EFFECT_INDEX
	spell.damage = TIMELASER_DAMAGE
	spell.lifetime = 0
	spell.alive = false

	function spell:Cast( entity )
		local dir = {x=0,y=0,z=0}
		for i = 1, TIMELASER_NR_OF_LASERS do
			Transform.SetScaleNonUniform(self.transformIDs[i], 2,2,TIMELASER_LENGTH)
			Transform.ActiveControl(self.transformIDs[i], true)
			local pos = Transform.GetPosition(entity.transformID)
			pos.y = pos.y - 4
			Transform.SetPosition(self.transformIDs[i], pos)
			self.angles[i] = (i-1)* 2*3.1415/TIMELASER_NR_OF_LASERS
			dir.x = math.sin(self.angles[i])
			dir.z = math.cos(self.angles[i])
			Transform.RotateToVector(self.transformIDs[i], dir)
			OBBCollider.SetActive(self.colliders[i], true)
			OBBCollider.SetXAxis(self.colliders[i], dir.x, dir.y, dir.z)
			self.hitTimers[i] = 0
		end
		self.lifeTime = TIMELASER_DURATION
		self.alive = true
	end

	function spell:Update(dt)
		if self.alive then
			local increment = dt/4
			self.lifeTime = self.lifeTime - dt
			local dir = {x=0,y=0,z=0}
			local oobpos = {x=0,y=0,z=0}
			for i = 1, TIMELASER_NR_OF_LASERS do
				self.angles[i] = self.angles[i] + increment
				dir.x = math.sin(self.angles[i])
				dir.z = math.cos(self.angles[i])
				Transform.RotateToVector(self.transformIDs[i], dir)
				OBBCollider.SetXAxis(self.colliders[i], dir.x, dir.y, dir.z)
				oobpos.x = dir.x * (TIMELASER_LENGTH )
				oobpos.y = dir.y * (TIMELASER_LENGTH )
				oobpos.z =  dir.z * (TIMELASER_LENGTH )
				OBBCollider.SetOffset(self.colliders[i], oobpos.x, oobpos.y, oobpos.z)
				self.hitTimers[i] = self.hitTimers[i] - dt
				if self.hitTimers[i] < 0 then
					local collisionIDs = self.colliders[i]:GetCollisionIDs()
					for curID = 1, #collisionIDs do
						if collisionIDs[curID] == player.sphereCollider:GetID() then
							player:Hurt(self.damage, self.owner)
							local effect = effectTable[self.effect](self.owner)
							player:Apply(effect)
							self.hitTimers[i] = TIMELASER_HIT_INTERVAL
						end
					end
				end
			end
			if self.lifeTime < 0 then
				self:Kill()
			end
		end
	end

	function spell:Kill()
		self.alive = false
		for i = 1, TIMELASER_NR_OF_LASERS do 
			Transform.ActiveControl(self.transformIDs[i], false)
			OBBCollider.SetActive(self.colliders[i], false)


		end
	end

	return spell
end

function DestroyTimeLaser(laser)
	for _,v in pairs(laser.transformIDs) do
		Gear.UnbindInstance(v)
	end

	Assets.UnloadModel( "Models/Siphon.model" )

	laser = nil
end