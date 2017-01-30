local returnTable = {}

function updateClientAI()
	newtransformvalue, id, pos_x, pos_y, pos_z, lookAt_x, lookAt_y, lookAt_z, rotation_x, rotation_y, rotation_z = Network.GetAITransformPacket()

	if newtransformvalue == true then
		Transform.SetPosition(id, {x=pos_x, y=pos_y, z=pos_z})
		Transform.SetLookAt(id, {x=lookAt_x, y=lookAt_y, z=lookAt_z})
		Transform.SetRotation(id, {x=rotation_x, y=rotation_y, z=rotation_z})
	end

	netAIValue, transformID, aiState = Network.GetAIPacket()

	--if netAIValue == true then
	--	print(transformID, aiState)
	--end
end


returnTable.updateClientAI= updateClientAI

return returnTable