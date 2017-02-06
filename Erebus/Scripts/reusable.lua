function BaseCharge(self, dt)
	if self.chargedTime < self.maxChargeTime then 
		self.chargedTime = self.chargedTime + dt
	end
	ZoomInCamera()
end

function BaseChargeCast(self, entity)
	self:Cast(entity, self.chargedTime)
end
function GetHeightmap(position)
	local result = player.currentHeightmap

	assert( result, "Player has no current heightmap!" )

	if not result.asset:Inside(position) then
		result = nil

		for _,hmIndex in pairs(player.currentHeightmap.surrounding) do
			if heightmaps[hmIndex].asset:Inside(position) then
				result = heightmaps[hmIndex]
				break
			end
		end
	end

	return result
end