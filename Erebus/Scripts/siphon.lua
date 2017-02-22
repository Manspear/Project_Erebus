SIPHON_SPELL_TEXTURE = Assets.LoadTexture("Textures/siphon.dds");
SIPHON_DAMAGE = 2
SIPHON_CHAIN_DURATION = 5
SIPHON_COOLDOWN = 15
SIPHON_SPAM_COOLDOWN = 3
SIPHON_SPAM_DURATION = 3
SIPHON_DAMAGE_INTERVAL = 1
SIPHON_HITBOX_LENGTH = 20
SIPHON_CHAIN_INTERVAL = 1
--SIPHON_

function CreateSiphon(entity)
	local spell = {}
	spell.damage = SIPHON_DAMAGE
	spell.owner = entity
	spell.steal = SIPHON_HEALTH_STEAL
	spell.hudtexture = SIPHON_SPELL_TEXTURE
	spell.effects = {}
	table.insert(spell.effects, LIFE_STEAL_EFFECT_INDEX)
	spell.transformID = Transform.Bind()
	Transform.ActiveControl(spell.transformID, false)

	spell.collider = OBBCollider.Create(spell.transformID)
	CollisionHandler.AddOBB(spell.collider, 1)
	OBBCollider.SetActive(spell.collider, false);
	spell.length = SIPHON_HITBOX_LENGTH

	spell.collider.SetSize(spell.collider, SIPHON_HITBOX_LENGTH, 1, 1)
	local model = Assets.LoadModel( "Models/Siphon.model" )
	spell.modelIndex = Gear.AddForwardInstance(model, spell.transformID)
	spell.isActiveSpell = false
	spell.hits = {}
	spell.alive = false
	spell.shooting = false
	spell.hitchecker = false
	spell.cooldown = 0
	spell.spamcooldown = 0
	spell.maxcooldown = SIPHON_COOLDOWN
	spell.spamduration = SIPHON_SPAM_DURATION
	spell.spamming = false
	spell.interval = 0
	spell.chargedTime = 0
	spell.maxChargeTime = 0
	spell.chained = nil
	spell.chaininterval = 0
	spell.duration = SIPHON_CHAIN_DURATION
	function spell:Cast()
		if self.spamcooldown < 0 then
			if self.owner == player then
				ZoomInCamera()
			end
			self.spamming = true
			self.spamduration = SIPHON_SPAM_DURATION
			self.spamcooldown = SIPHON_SPAM_COOLDOWN
		end
		self:rotatetoowner()
		--Transform.ActiveControl(self.transformID, true)
		self.alive = true
	end

	function spell:GetCollider()
		local result = {}
		table.insert(result, self.collider:GetID())
		return result
	end

	spell.Charge = BaseCharge
	function spell:ChargeCast()
		if self.cooldown < 0 then 
			self.chained = self:getcollisions()
			if self.chained then
				self.alive = true
				self.cooldown = SIPHON_COOLDOWN
				Transform.ActiveControl(self.transformID, true)
				self.spamming = false
				self.duration = SIPHON_CHAIN_DURATION
				if self.owner == player then
					ZoomInCamera()
				end
			end
		end
	end
	function spell:getcollisions() --may change to return the closest enemy and not just the first it finds ( needs som bantering luls)
		local hit = nil
		local collisionIDs = self.collider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					hit = enemies[curEnemy]
					break
				end
			end
			if collisionIDs[curID] == boss.collider:GetID() then
				hit = boss
			end
		end

		return hit
	end
	function spell:rotatetoowner()
		local direction = Transform.GetLookAt(self.owner.transformID)
		local pos = Transform.GetPosition(self.owner.transformID)
		--pos.x = pos.x + direction.x * self.length/2 
		--pos.y = pos.y + direction.y * self.length/2
		--pos.z = pos.z + direction.z * self.length/2
		Transform.SetPosition(self.transformID, pos)
		
		local oobpos = {x=0,y=0,z=0}
		oobpos.x = direction.x * (SIPHON_HITBOX_LENGTH )
		oobpos.y = direction.y * (SIPHON_HITBOX_LENGTH )
		oobpos.z =  direction.z * (SIPHON_HITBOX_LENGTH )
		--local xoffset = self.length/2 * direction.x
		--local yoffset = self.length/2 * direction.y
		--local zoffset = self.length/2 * direction.z
		OBBCollider.SetXAxis(self.collider, direction.x, direction.y, direction.z)
		OBBCollider.SetOffset(self.collider, oobpos.x, oobpos.y, oobpos.z)
		--[[local theRotation = Transform.GetRotation(self.owner.transformID) 
		Transform.SetRotation(self.transformID, theRotation)
		Transform.SetLookAt(self.transformID, direction)]]
		Transform.RotateToVector(self.transformID, direction)
	end
	function spell:rotatetotarget()
		if self.chained then
			local direction = Math.GetDir( Transform.GetPosition(self.owner.transformID), Transform.GetPosition(self.chained.transformID))
			self.length = Transform.GetDistanceBetweenTrans(self.owner.transformID, self.chained.transformID)
			local pos = Transform.GetPosition(self.owner.transformID)
			--pos.x = pos.x + direction.x * self.length/2 
			--pos.y = pos.y + direction.y * self.length/2
			--pos.z = pos.z + direction.z * self.length/2
			local xoffset = self.length/2 * direction.x
			local yoffset = self.length/2 * direction.y
			local zoffset = self.length/2 * direction.z
			OBBCollider.SetOffset(self.collider, xoffset, yoffset, zoffset)

			Transform.SetPosition(self.transformID, pos)
			Transform.RotateToVector(self.transformID, direction)
			OBBCollider.SetXAxis(self.collider, direction.x, direction.y, direction.z)
			Transform.SetScaleNonUniform(self.transformID,  2, 2, self.length/1.6)
		end
	end
	function spell:Update(dt)
		self.cooldown = self.cooldown - dt
		self.spamcooldown = self.spamcooldown - dt
		if self.spamming and not self.chained then
			self.spamduration = self.spamduration - dt
			self.interval = self.interval - dt
			hit = self:getcollisions()
			if hit then
				if self.interval < 0 then
					hit:Hurt(self.damage, self.owner)
					if(self.owner.health < 100) then
						self.owner.health = self.owner.health + self.damage
					elseif (self.owner.health > 100) then
						self.owner.health = 100
					end
					Transform.ActiveControl(self.transformID, true)
					self.interval = SIPHON_DAMAGE_INTERVAL
				end
				self.length = Transform.GetDistanceBetweenTrans(self.owner.transformID, hit.transformID)
				Transform.SetScaleNonUniform(self.transformID, 2, 2, self.length/1.6)
			else
				Transform.ActiveControl(self.transformID, false)
			end
			if self.spamduration < 0 then
				self.spamming = false
				Transform.ActiveControl(self.transformID, false)
				if self.isActiveSpell and self.owner == player then
					ZoomOutCamera()
				end
			end
		end
		if self.chained then
			self:rotatetotarget()
			OBBCollider.SetSize(self.collider, self.length/2, 1, 1)	
			self.duration = self.duration - dt
			self.chaininterval = self.chaininterval - dt
			if self.chaininterval < 0 then
				local collisionIDs = self.collider:GetCollisionIDs()
				for curID = 1, #collisionIDs do
					for curEnemy=1, #enemies do
						if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
							enemies[curEnemy]:Hurt(self.damage, self.owner)
							for i = 1, #self.effects do
								local effect = effectTable[self.effects[i]](self.owner, 3)
								enemies[curEnemy]:Apply(effect)
							end
						end
					end
					if collisionIDs[curID] == boss.collider:GetID() then
						boss:Hurt(self.damage, self.owner)
						for i = 1, #self.effects do
							local effect = effectTable[self.effects[i]](self.owner, 3)
							boss:Apply(effect)
						end
					end
				end
				self.chaininterval = SIPHON_CHAIN_INTERVAL
			end
			if self.duration < 0 then
				if self.owner == player then
					ZoomOutCamera()
				end
				self.chained = nil
				Transform.ActiveControl(self.transformID, false)
				self.length = SIPHON_HITBOX_LENGTH
				OBBCollider.SetSize(self.collider, self.length, 1, 1)
				if #self.effects > 1 then
					table.remove(self.effects)
				end
			end
		else
			self:rotatetoowner()
		end
	end
	function spell:Kill()
		Transform.ActiveControl(self.transformID, false)

		self.hits = {}
		--self.owner.moveSpeed = self.owner.moveSpeed / BLACK_HOLE_CASTER_SLOW --if you want the player to be "unable" to walk while casting black hole
		self.alive = false
		self.shooting = false
	end
	
	function spell:Aim()	
		--local lookAt = Transform.GetLookAt(self.caster)
		--local aPos = Transform.GetPosition(self.caster)
		--self.aimPos = {x = aPos.x + lookAt.x *10, y = aPos.y + lookAt.y *10, z = aPos.z + lookAt.z *10 }
		--player.aim:SetPos(self.aimPos)
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		--Transform.ActiveControl(self.owner.aim.transformID, self.isActiveSpell)
		
		OBBCollider.SetActive(spell.collider, self.isActiveSpell);
	end

	function spell:GetEffect()
		return self.effects[1]
	end
	function spell:Combine(effect, damage)
		if #self.effects < 2 then
			self.damage = self.damage + 2 * damage
			table.insert(self.effects, effect)
		end
	end
	return spell
end