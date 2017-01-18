
function BaseCharge(self, dt)
	self.chargedTime = self.chargedTime + dt
end
function BaseChargeCast(self)
	self:Cast(math.min(self.chargedTime, self.maxChargeTime), true)
	--self.chargedTime = 0
end