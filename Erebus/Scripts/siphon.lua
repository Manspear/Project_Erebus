SIPHON_DAMAGE = 2
SIPHON_CHAIN_DURATION = 5
SIPHON_COOLDOWN = 15
SIPHON_SPAM_COOLDOWN = 0
SIPHON_SPAM_DURATION = 0.5
SIPHON_DAMAGE_INTERVAL = 1
SIPHON_HITBOX_LENGTH = 20
SIPHON_CHAIN_INTERVAL = 1
SIPHON_TEXTURE1 = Assets.LoadTexture("Textures/siphon_Tex.dds")
SIPHON_TEXTURE2 = Assets.LoadTexture("Textures/siphon_AnimTex.dds")

function CreateSiphon(entity)
	local spell = {}
	spell.element = NATURE
	spell.damage = SIPHON_DAMAGE
	spell.combineDamage = 4
	spell.owner = entity
	spell.steal = SIPHON_HEALTH_STEAL
	spell.hudtexture = Assets.LoadTexture("Textures/IconSiphon.dds");
	spell.effects = {}
	table.insert(spell.effects, LIFE_STEAL_EFFECT_INDEX)
	local model = Assets.LoadModel( "Models/Siphon.model" )
	spell.transformID = Gear.BindBlendingInstance(model)
	Transform.ActiveControl(spell.transformID, false)

	spell.collider = OBBCollider.Create(spell.transformID)
	CollisionHandler.AddOBB(spell.collider, 2)
	OBBCollider.SetActive(spell.collider, false);
	spell.length = SIPHON_HITBOX_LENGTH

	spell.collider.SetSize(spell.collider, SIPHON_HITBOX_LENGTH, 1, 1)
	spell.isActiveSpell = false
	spell.hits = {}
	spell.alive = false
	spell.shooting = false
	spell.hitchecker = false
	spell.spamcooldown = 0
	spell.maxcooldown = SIPHON_COOLDOWN
	spell.spamduration = SIPHON_SPAM_DURATION
	spell.spamming = false
	spell.interval = 0
	spell.chargedTime = 0
	spell.maxChargeTime = 0			spell.minChargeTime = 0
	spell.chained = nil
	spell.chaininterval = 0
	spell.duration = SIPHON_CHAIN_DURATION
	spell.temppos = {x=0,y=0,z=0}
	spell.uvPush = {x = 0, y = 0}
	spell.isRay = true
	spell.chargeAlive = false
	--For animation timing 
	spell.hasSpamAttack = true
	spell.cooldown = 0 --spells no longer have an internal cooldown for spam attacks. The player's castSpeed determines this.
	SIPHON_CASTSPEED_MULTIPLE = 2
	spell.castTimeAttack = 0.5 * SIPHON_CASTSPEED_MULTIPLE
	spell.castAnimationPlayTime = 2 * SIPHON_CASTSPEED_MULTIPLE --the true cast time of the animation
	spell.castTimeFirstAttack = 0.1875 * SIPHON_CASTSPEED_MULTIPLE
	spell.blendingIndex = Gear.SetBlendTextures(-1, 2, SIPHON_TEXTURE1, SIPHON_TEXTURE2)
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
		self.alive = true
	end

	function spell:GetCollider()
		local result = {}
		table.insert(result, self.collider:GetID())
		return result
	end
	function spell:Charge(dt)
		self:rotatetoowner()
		if self == nil then
			return
		end
		if self.chargedTime < self.maxChargeTime then 
			self.chargedTime = self.chargedTime + dt
		end
		if self.owner == player then
			ZoomInCamera()
		end
	end

	function spell:ChargeCast()
		if self.cooldown < 0 then 
			self.chained = self:getcollisions()
			if self.chained then
				self.chargeAlive = true
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
				if collisionIDs[curID] == enemies[curEnemy].collider:GetID() then
					hit = enemies[curEnemy]
					break
				end
			end
			if boss.alive and collisionIDs[curID] == boss.collider:GetID() then
				hit = boss
			end
		end

		return hit
	end
	function spell:rotatetoowner()
		local direction = Transform.GetLookAt(self.owner.transformID)
		local pos = Transform.GetPosition(self.owner.transformID)
		Transform.SetPosition(self.transformID, pos)
		
		local oobpos = {x=0,y=0,z=0}
		oobpos.x = direction.x * (SIPHON_HITBOX_LENGTH )
		oobpos.y = direction.y * (SIPHON_HITBOX_LENGTH )
		oobpos.z =  direction.z * (SIPHON_HITBOX_LENGTH )

		OBBCollider.SetXAxis(self.collider, direction.x, direction.y, direction.z)
		OBBCollider.SetOffset(self.collider, oobpos.x, oobpos.y, oobpos.z)
	
		Transform.RotateToVector(self.transformID, direction)
	end
	function spell:rotatetotarget()
		if self.chained then
			if self.chained.health > 0 then
				self.temppos = Transform.GetPosition(self.chained.transformID)
			end
			local direction = Math.GetDir( Transform.GetPosition(self.owner.transformID), self.temppos)
			self.length = Transform.GetDistanceBetweenTransAndPos(self.owner.transformID, self.temppos)
			local pos = Transform.GetPosition(self.owner.transformID)
	
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
		self.uvPush.y = self.uvPush.y - dt
		if self.spamming and self.chained == nil then
			self:rotatetoowner()
			self.spamduration = self.spamduration - dt
			self.interval = self.interval - dt
			hit = self:getcollisions()
			if hit then
				Transform.ActiveControl(self.transformID, true)
				Gear.SetBlendUniformValue(self.blendingIndex, 2, {x=0,y=0}, self.uvPush)
				if self.interval < 0 then
					hit:Hurt(self.damage, self.owner, self.element)
					if(self.owner.health < 100) then
						local newHealth = self.owner.health + self.damage
						if newHealth > 100 then
							newHealth = 100
						end
						self.owner.health = newHealth
						Gear.PrintDamage(self.damage, HEAL, self.owner.position.x, self.owner.position.y+1, self.owner.position.z )
					elseif (self.owner.health > 100) then
						self.owner.health = 100
					end
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
			Gear.SetBlendUniformValue(self.blendingIndex, 2, {x=0,y=0}, self.uvPush)
			if self.chaininterval < 0 then
				local collisionIDs = self.collider:GetCollisionIDs()
				for curID = 1, #collisionIDs do
					for curEnemy=1, #enemies do
						if collisionIDs[curID] == enemies[curEnemy].collider:GetID() then
							enemies[curEnemy]:Hurt(self.damage, self.owner, self.element)
							for i = 1, #self.effects do
								local effect = effectTable[self.effects[i]](self.owner, 3)
								enemies[curEnemy]:Apply(effect)
							end
						end
					end
					if boss.alive and collisionIDs[curID] == boss.collider:GetID() then
						boss:Hurt(self.damage, self.owner, self.element)
						for i = 1, #self.effects do
							local effect = effectTable[self.effects[i]](self.owner, 3)
							boss:Apply(effect)
						end
					end
				end
				self.chaininterval = SIPHON_CHAIN_INTERVAL

			end
			
			if self.duration < 0 then
				self.chargeAlive = false
				if self.owner == player then
					ZoomOutCamera()
				end
				self.chained = nil
				Transform.ActiveControl(self.transformID, false)
				self.length = SIPHON_HITBOX_LENGTH
				OBBCollider.SetSize(self.collider, self.length, 1, 1)
				self.damage = SIPHON_DAMAGE
				if #self.effects > 1 then
					table.remove(self.effects)
				end
			end
		end
	end
	function spell:Kill()
		Transform.ActiveControl(self.transformID, false)

		self.hits = {}
		self.alive = false
		self.shooting = false
	end
	
	function spell:Aim()	
	end

	function spell:Change()
		self.isActiveSpell = not self.isActiveSpell
		
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

function DestroySiphon(siphon)
	Gear.UnbindInstance(siphon.transformID)

	Assets.UnloadTexture( "Textures/IconSiphon.dds" )
	Assets.UnloadTexture( "Textures/siphon_Tex.dds" )
	Assets.UnloadTexture( "Textures/siphon_AnimTex.dds" )
	Assets.UnloadModel( "Models/Siphon.model" )

	siphon = nil
end