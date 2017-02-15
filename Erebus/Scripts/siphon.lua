SIPHON_SPELL_TEXTURE = Assets.LoadTexture("Textures/siphon.png");
SIPHON_DAMAGE = 0
SIPHON_CHAIN_DURATION = 5
SIPHON_COOLDOWN = 3
SIPHON_SPAM_DURATION = 3
SIPHON_DAMAGE_INTERVAL = 1
SIPHON_HITBOX_LENGTH = 20
--SIPHON_

function CreateSiphon(entity)
	local spell = {}
	spell.damage = SIPHON_DAMAGE
	spell.owner = entity
	spell.steal = SIPHON_HEALTH_STEAL
	spell.hudtexture = SIPHON_SPELL_TEXTURE
	spell.effects = {}
	table.insert(spell.effects, LIFE_STEAL_EFFECT_INDEX)
	--spell.transformID = Transform.Bind()
	local model = Assets.LoadModel( "Models/SunRayInner.model" )
	spell.transformID = Gear.BindForwardInstance(model)
	Transform.ActiveControl(spell.transformID, false)

	spell.collider = OBBCollider.Create(spell.transformID)
	CollisionHandler.AddOBB(spell.collider, 1)
	OBBCollider.SetActive(spell.collider, false);
	spell.length = 20

	spell.collider.SetSize(spell.collider, SIPHON_HITBOX_LENGTH, 1, 1)
	--local model = Assets.LoadModel( "Models/SunRayInner.model" )
	--spell.modelIndex = Gear.AddForwardInstance(model, spell.transformID)
	spell.isActiveSpell = false
	spell.hits = {}
	spell.alive = false
	spell.shooting = false
	spell.hitchecker = false
	spell.cooldown = 0
	spell.maxcooldown = 10
	spell.spamduration = SIPHON_SPAM_DURATION
	spell.spamming = false
	spell.interval = 0


	function spell:Cast()
		if self.cooldown < 0 then
			spell.spamming = true
			spell.spamduration = SIPHON_SPAM_DURATION
		end
		self:rotatetoowner()
		--Transform.ActiveControl(self.transformID, true)
		self.alive = true
	end
	spell.Charge = BaseCharge
	spell.ChargeCast = BaseChargeCast
	function spell:getcollisions()
		local hit = nil
		local collisionIDs = self.collider:GetCollisionIDs()
		for curID = 1, #collisionIDs do
			for curEnemy=1, #enemies do
				if collisionIDs[curID] == enemies[curEnemy].sphereCollider:GetID() then
					hit = enemies[curEnemy]
					break
				end
			end
		end

		return hit
	end
	function spell:rotatetoowner()
		direction = Transform.GetLookAt(self.owner.transformID)
		local pos = Transform.GetPosition(self.owner.transformID)
		pos.x = pos.x + direction.x * self.length/2 
		pos.y = pos.y + direction.y * self.length/2
		pos.z = pos.z + direction.z * self.length/2
		Transform.SetPosition(self.transformID, pos)

		local oobpos = {x=0,y=0,z=0}
		oobpos.x = direction.x * (SIPHON_HITBOX_LENGTH - self.length/2)
		oobpos.y = direction.y * (SIPHON_HITBOX_LENGTH - self.length/2)
		oobpos.z =  direction.z * (SIPHON_HITBOX_LENGTH - self.length/2)
		OBBCollider.SetXAxis(self.collider, direction.x, direction.y, direction.z)
		OBBCollider.SetOffset(self.collider, oobpos.x, oobpos.y, oobpos.z)
		--[[local theRotation = Transform.GetRotation(self.owner.transformID) 
		Transform.SetRotation(self.transformID, theRotation)
		Transform.SetLookAt(self.transformID, direction)]]
		Transform.RotateToVector(self.transformID, direction)
	end
	function spell:Update(dt)
		self:rotatetoowner()
		self.cooldown = self.cooldown - dt
		if self.spamming then
			self.spamduration = self.spamduration - dt
			self.interval = self.interval - dt
			hit = self:getcollisions()
			if hit then
				if self.interval < 0 then
					hit:Hurt(self.damage, player)
					self.owner.health = self.owner.health + self.damage
					Transform.ActiveControl(self.transformID, true)
					self.interval = SIPHON_DAMAGE_INTERVAL
				end
				self.length = Transform.GetDistanceBetweenTrans(self.owner.transformID, hit.transformID)
				print(self.length)
				Transform.SetScaleNonUniform(self.transformID, 1, 1, self.length/(SUNRAY_HALF_LENGTH*2))
			else
				Transform.ActiveControl(self.transformID, false)
				--self.spamming = false
			end
			if self.spamduration < 0 then
				self.spamming = false
				Transform.ActiveControl(self.transformID, false)
			end
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