function BaseCharge(self, dt)
	self.chargedTime = self.chargedTime + dt
	ZoomInCamera()
end
function BaseChargeCast(self, entity)
	self:Cast(entity, math.min(self.chargedTime, self.maxChargeTime))
end
function GetHeightmap(position)
	local result = player.currentHeightmap
	if not result.asset:Inside(position) then
		result = nil

		for _,hmIndex in pairs(player.currentHeightmap.surrounding) do
			if heightmaps[hmIndex].asset:Inside(position) then
				hm = heightmaps[hmIndex]
				break
			end
		end
	end

	return result
end