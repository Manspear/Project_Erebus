nrOfActors = 50
nrOfEnemies = 49
player = {}
enemy = {trans = {}, ms = {}}
enemySpeeds = {}
Engine.InitStuff(nrOfActors)

modelPaths = {{"Models/moleman.model", 25}}
print(#modelPaths)
for i = 1, #modelPaths do
	Engine.LoadModels(modelPaths[i][1], modelPaths[i][2])
end

player.trans = Transform.Bind()
player.moveSpeed = 40

for i = 1, nrOfEnemies do
		enemy.trans[i] = Transform.Bind()
		enemy.ms[i] = math.random(5, 20)
end

function ChangePlayer()
	player.trans = (player.trans + 1) % nrOfActors
	Transform.Switch(player.trans)	
end

buttons = {}
function Controls()
	forward, left, up = 0, 0, 0
	for i = 1, #buttons do
		if buttons[i] == 0 then	forward = player.moveSpeed  end
		if buttons[i] == 1 then	forward = -player.moveSpeed  end
		if buttons[i] == 2 then	left = player.moveSpeed  end
		if buttons[i] == 3 then left = -player.moveSpeed  end
		if buttons[i] == 4 then up = player.moveSpeed  else up = -player.moveSpeed  end
		if buttons[i] == 6 then ChangePlayer() end
	end	
	Transform.Move(player.trans, forward, up, left)
	buttons = {}	
end

function doDaHustle()
	for i = 1, nrOfEnemies do
		Transform.Follow(player.trans, enemy.trans[i], enemy.ms[i] )
	end
end

