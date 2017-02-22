TIMELASER_NR_OF_LASERS = 3

function CreateTimeLaser()
	local spell = {}
	spell.transformIDs = {}
	spell.angles = {}
	spell.colliders = {}
	local model = Assets.LoadModel( "Models/Siphon.model" )
	for i = 1, TIMELASER_NR_OF_LASERS do
		spell.transformIDs[i] = Gear.BindForwardInstance(model)
		spell.angles[i] = (i-1)*2*3.1415/TIMELASER_NR_OF_LASERS
		spell.colliders[i] = OBBCollider.Create(spell.transformIDs[i])
		--spell.modelIndex = Gear.AddForwardInstance(model, spell.transformIDs[i])
		spell.colliders[i].SetSize(spell.colliders[i], 30, 1, 1)
		CollisionHandler.AddOBB(spell.colliders[i], 1)
	end
	spell.angle = 0

	function spell:Cast( entity )
		local dir = {x=0,y=0,z=0}
		for i = 1, #self.transformIDs do
			Transform.SetScaleNonUniform(self.transformIDs[i], 2,2,30)
			Transform.ActiveControl(self.transformIDs[i], true)
			local pos = Transform.GetPosition(entity.transformID)
			pos.y = pos.y - 4
			Transform.SetPosition(self.transformIDs[i], pos)
			spell.angles[i] = (i-1)* 2*3.1415/TIMELASER_NR_OF_LASERS
			dir.x = math.sin(spell.angles[i])
			dir.z = math.cos(spell.angles[i])
			Transform.RotateToVector(spell.transformIDs[i], dir)
			OBBCollider.SetActive(self.colliders[i], true)
			OBBCollider.SetXAxis(self.colliders[i], dir.x, dir.y, dir.z)
		end
	end

	function spell:Update(dt)
		local increment = dt/4
		local dir = {x=0,y=0,z=0}
		local oobpos = {x=0,y=0,z=0}
		for i = 1, #self.transformIDs do
			self.angles[i] = self.angles[i] + increment
			dir.x = math.sin(spell.angles[i])
			dir.z = math.cos(spell.angles[i])
			Transform.RotateToVector(spell.transformIDs[i], dir)
			OBBCollider.SetXAxis(self.colliders[i], dir.x, dir.y, dir.z)
			oobpos.x = dir.x * (30 )
			oobpos.y = dir.y * (30 )
			oobpos.z =  dir.z * (30 )
			OBBCollider.SetOffset(self.colliders[i], oobpos.x, oobpos.y, oobpos.z)
		end
	end
	return spell
end