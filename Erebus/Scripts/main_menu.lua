function UpdateMainMenu(dt)
	Gear.QueueModels(false)
	CollisionHandler.Disable()
end

return { Update = UpdateMainMenu }