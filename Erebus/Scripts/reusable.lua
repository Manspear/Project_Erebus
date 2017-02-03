function BaseCharge(self, dt)
	self.chargedTime = self.chargedTime + dt
	ZoomInCamera()
end
function BaseChargeCast(self, entity)
	self:Cast(entity, math.min(self.chargedTime, self.maxChargeTime))
end