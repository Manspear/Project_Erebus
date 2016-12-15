MAX_ENEMIES = 10
enemies = {}

function LoadEnemies(n)
	if n > MAX_ENEMIES then n = MAX_ENEMIES end
	for i=1, n do
		enemies[i] = {}
		enemies[i].transformID = Transform.Bind()
		enemies[i].movementSpeed = math.random(5,20)
		enemies[i].health = 20
		enemies[i].alive = true

		enemies[i].Hurt = function(self,damage)
			self.health = self.health - damage
			if self.health <= 0 then
				self:Kill()
			end
		end

		enemies[i].Kill = function(self)
			self.health = 0
			self.alive = false
			Transform.ActiveControl(self.transformID,false)
		end

		enemies[i].Spawn = function(self,position)
			self.alive = true
			self.health = 20
			self.position.x = position.x
			self.position.y = position.y
			self.position.z = position.z
			Transform.ActiveControl(self.transformID,true)
		end

		Transform.SetPosition(enemies[i].transformID, {x = math.random(10, 255), y = math.random(15, 30), z = math.random(10, 245)})

		enemies[i].sphereCollider = SphereCollider.Create(enemies[i].transformID)
		enemies[i].sphereCollider:SetRadius(2)
		CollisionHandler.AddSphere(enemies[i].sphereCollider)
	end

	local model = Assets.LoadModel("Models/Robot.model")
	for i=1, n do
		Gear.AddStaticInstance(model, enemies[i].transformID)
	end
end

function UnloadEnemies()
end

function UpdateEnemies(dt)
	for i=1, #enemies do
		if enemies[i].health > 0 then
			Transform.Follow(player.transformID, enemies[i].transformID, enemies[i].movementSpeed, dt)
			local pos = Transform.GetPosition(enemies[i].transformID)
			pos.y = heightmap:GetHeight(pos.x,pos.z)+1
			Transform.SetPosition(enemies[i].transformID, pos)
		end
	end
end

return { Unload = UnloadEnemies, Update = UpdateEnemies }
