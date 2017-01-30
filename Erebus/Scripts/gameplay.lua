function LoadGameplay()
end

function UnloadGameplay()
end

function UpdateGameplay(dt)
	Gear.QueueModels(true)
	CollisionHandler.DrawHitboxes()
end

return { Load = LoadGameplay, Unload = UnloadGameplay, Update = UpdateGameplay }