function CreateProjectileType()
	local projectile = {}
	projectile.velocity = {x=0,y=0,z=0}

	function projectile:Update(spell)
		if not spell.alive then return end
		spell.position.x = spell.position.x + self.velocity.x
		spell.position.y = spell.position.y + self.velocity.y
		spell.position.z = spell.position.z + self.velocity.z
		
	end

	return projectile
end