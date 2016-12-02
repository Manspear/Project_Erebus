nrOfActors = 50
nrOfEnemies = 39
nrOfBullets = 10
player = {}
enemy = {trans = {}, ms = {}}
Engine.InitStuff(nrOfActors)

bullets = { }
bulletIndex = 1
activeBullets = 0

modelPaths = {{"Models/moleman.model", 25}, {"Models/molerat.model", 25}}
print(#modelPaths)
for i = 1, #modelPaths do
	Engine.LoadModels(modelPaths[i][1], modelPaths[i][2])
end

 
player.trans = Transform.Bind()
player.moveSpeed = 40
player.ySpeed = 0
player.canJump = false
 

for i = 1, 10 do
	bullets[i] = {trans = 0, ms= 0, lifeLeft= 0, alive = false}
	bullets[i].trans = Transform.Bind()
	bullets[i].ms = 100
	bullets[i].lifeLeft = 10
	bullets[i].alive = false
end

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
        if buttons[i] == 0 then forward = player.moveSpeed  end
        if buttons[i] == 1 then forward = -player.moveSpeed  end
        if buttons[i] == 2 then left = player.moveSpeed  end
        if buttons[i] == 3 then left = -player.moveSpeed  end
		--if buttons[i] == 4 then up = player.moveSpeed  else up = -player.moveSpeed  end
		if buttons[i] == 4 and player.canJump then
			player.ySpeed = 0.5
			player.canJump = false
		end
        if buttons[i] == 6 then ChangePlayer() end
		if buttons[i] == 7 then shoot() end
	end

	Transform.Move(player.trans, forward, player.ySpeed, left)
    buttons = {}   
end
 
function doDaHustle()
    for i = 1, nrOfEnemies do
		Transform.Follow(player.trans, enemy.trans[i], enemy.ms[i] )
    end
end

function Update(dt)
	local pos = Transform.GetPos(player.trans)
	pos.y = pos.y + player.ySpeed
	player.ySpeed = player.ySpeed - 0.982*dt		--add gravity to vertical speed
	Transform.SetPos(player.trans,pos)

	--TEMP
	if Transform.ToHeightmap(player.trans) then
		player.canJump = true
		player.ySpeed = 0
	end
end
function updateBullets( dt )
	print(activeBullets ..  "  : :  " ..  bulletIndex)
	for i = 1 , nrOfBullets do
		bullets[i].lifeLeft = bullets[i].lifeLeft - dt
		if bullets[i].lifeLeft < 0 and bullets[i].alive == true 
			then
				bullets[i].alive = false
				activeBullets = activeBullets - 1
			else 
				Transform.fly(bullets[i].trans, bullets[i].ms)
		end
	end
end

function shoot()
	if activeBullets < nrOfBullets
	then
		bullets[bulletIndex].alive = true
		bullets[bulletIndex].lifeLeft = 5
		Transform.Shoot(bullets[bulletIndex].trans, player.trans)
		bulletIndex = (bulletIndex % nrOfBullets) + 1
		activeBullets = activeBullets + 1
	end
end