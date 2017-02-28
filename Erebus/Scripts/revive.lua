REVIVE_TIME = 3
REVIVE_LENGTH = 3
REVIVE_FALLSPEED = 1
function CreateRevive(entity)
	local spell = {}
	spell.owner = entity
	spell.reviveTime = REVIVE_TIME
	spell.target = nil
	spell.reviving = false

	spell.position = {x = 0, y = 0, z = 0}		spell.rotation = {x = 0, y = 0, z = 0}
	--spell.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/Revive.model" )
	spell.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(spell.transformID, false)
	--local model = Assets.LoadModel( "Models/grenade.model" )
	--Gear.AddForwardInstance(model, spell.transformID)
	
	spell.light = nil

	function spell:Update(dt)
		local vector = vec3sub(self.owner.position, self.target.position)
		self.reviving = vec3length(vector) <= REVIVE_LENGTH and true or false
		if self.reviving then
			self.reviveTime = self.reviveTime - dt
			self.position.y = self.position.y - REVIVE_FALLSPEED * dt
			Transform.SetPosition(self.transformID, self.position )
			self.rotation.y = self.rotation.y + dt * 3
			Transform.SetRotation(self.transformID, self.rotation )
			Light.updatePos(self.light, self.position.x, self.position.y, self.position.z, true)
			if self.reviveTime < 0 then 
				if self.owner.transformID == player.transformID then
					self.target.health = 100
					self.target.isAlive = true
					Network.SendRessurectionPacket(self.target.transformID, self.target.health)
				else
					self.owner.castingRevive = false
				end
				self.reviving = false
				self:Kill()
			end
		end
	end

	function spell:Cast(target)
		self.target = target
		self.reviveTime = REVIVE_TIME
		local vector = vec3sub(self.owner.position, self.target.position)
		self.reviving = vec3length(vector) <= REVIVE_LENGTH and true or false
		if self.reviving then
			Transform.ActiveControl(spell.transformID, true)
			vec3gief(self.position, self.target.position)
			self.position.y = self.position.y + 3.0
			self.light = Light.addLight(self.position.x , self.position.y , self.position.z, 0.9, 0.9, 0.5, 5, 20, true)
			Transform.SetPosition(self.transformID, self.position )		
		end
	end

	function spell:Kill()
		self.reviving = false
		self.target = nil
		self.reviveTime = REVIVE_TIME
		Transform.ActiveControl(spell.transformID, false)
		if self.light then		Light.removeLight(self.light, true)	 self.light = nil	end
	end
	return spell
end

function DestroyRevive(revive)
	Gear.UnbindInstance(revive.transformID)
end