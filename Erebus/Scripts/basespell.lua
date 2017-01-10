local base = {}
base.transformID = Transform.Bind()
base.position = {x=0, y=0, z=0}
base.velocity = {x=0, y=0, z=0}
base.alive = false



function base:Kill()
	Transform.ActiveControl(self.transformID, false)
	self.alive = false
	self.position.x = 0
	self.position.y = 0
	self.position.z = 0
	Transform.SetPosition(self.transformID, self.position)
end

function base:UpdatePosition(dt)
	self.position.x = self.position.x + self.velocity.x*dt
	self.position.y = self.position.y + self.velocity.y*dt
	self.position.z = self.position.z + self.velocity.z*dt
end

function base:BaseUpdate(dt)
	if not self.alive then return end

	self:UpdatePosition(dt)

	self:Update(dt)

	Transform.SetPosition(self.transformID, self.position)
end


function base:Cast()
	--empy... DONT USE
end

function base:Update(dt)
	--empy... DONT USE
end

return base