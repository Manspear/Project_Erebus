function Fireball()
	local fireball = {}
	fireball.speed = 100
	fireball.damage = 5
	
	function fireball:update(transID)
		Transform.move(transID, self.speed)
	end

end