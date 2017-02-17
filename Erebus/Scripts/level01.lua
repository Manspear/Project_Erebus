props = {}
heightmaps = {}
colliders = {}
triggers = {}

local ID2name = {}
ID2name.transformID = Transform.Bind()
Transform.SetPosition(ID2name.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(ID2name.transformID, 1, 1, 1)
Transform.SetRotation(ID2name.transformID, {x=0, y=0, z=0})
ID2name.model = Assets.LoadModel('Models/tile1.model')
Gear.AddStaticInstance(ID2name.model, ID2name.transformID)
ID2name.asset = Assets.LoadHeightmap("Textures/tile1_128.png")
ID2name.asset:SetPosition({x=0, y=3, z=128})
ID2name.heightMultiplier = (36.5-3) / 255
ID2name.asset:SetHeightMultiplier(ID2name.heightMultiplier)
ID2name.surrounding = { 2 }
heightmaps[1] = ID2name
ID2name = nil

local ID3name = {}
ID3name.transformID = Transform.Bind()
Transform.SetPosition(ID3name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID3name.transformID, 1, 1, 1)
Transform.SetRotation(ID3name.transformID, {x=0, y=0, z=0})
ID3name.model = Assets.LoadModel('Models/tile1_assets.model')
Gear.AddStaticInstance(ID3name.model, ID3name.transformID)
table.insert(props,ID3name)
ID3name = nil

local ID4name = {}
ID4name.transformID = Transform.Bind()
Transform.SetPosition(ID4name.transformID, {x=47.3438, y=13.7729, z=137.75})
Transform.SetScaleNonUniform(ID4name.transformID, 1, 1, 1)
Transform.SetRotation(ID4name.transformID, {x=0, y=0, z=0})
Transform.SetPosition(player.transformID, {x=47.3438, y=13.7729, z=137.75})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,ID4name)
ID4name = nil

local ID5name = {}
ID5name.transformID = Transform.Bind()
Transform.SetPosition(ID5name.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(ID5name.transformID, 1, 1, 1)
Transform.SetRotation(ID5name.transformID, {x=0, y=0, z=0})
ID5name.model = Assets.LoadModel('Models/tile2.model')
Gear.AddStaticInstance(ID5name.model, ID5name.transformID)
ID5name.asset = Assets.LoadHeightmap("Textures/tile2_heights.png")
ID5name.asset:SetPosition({x=128, y=31, z=0})
ID5name.heightMultiplier = (60.18-31.26) / 255
ID5name.asset:SetHeightMultiplier(ID5name.heightMultiplier)
ID5name.surrounding = { 1 }
heightmaps[2] = ID5name
ID5name = nil

local ID6name = {}
ID6name.transformID = Transform.Bind()
ID6name.collider = SphereCollider.Create(ID6name.transformID)
ID6name.collider:SetRadius(2)
Transform.SetPosition(ID6name.transformID, {x=120, y=32, z=220})
CollisionHandler.AddSphere(ID6name.collider, 4)
ID6name.OnTrigger = function(dt) showTutorialImage(114,36,232,dt) end --Gear.Print("Triggered", 400, 400) end
ID6name.OnExit = function() hideTutorialImage() end --Gear.Print("Triggered", 400, 400) end
ID6name.triggered = false
table.insert(triggers,ID6name)
ID6name = nil

CollisionHandler.SetLayerCollision(0,4,true);
CollisionHandler.SetLayerCollision(1,4,false);
CollisionHandler.SetLayerCollision(2,4,false);
CollisionHandler.SetLayerCollision(3,4,false);
CollisionHandler.SetLayerCollision(4,4,false);

sid = Sound.Play("Music/Area1.ogg", 48)
Sound.SetVolume(sid, 0.06)
Sound.Resume(sid)

--TEMP: This should probably not be hardcoded into every level?
AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
	AI.AddHeightMap(heightmaps[i].asset,i)
end

local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)--,#heightmaps,widthTest,heightTest)

Transform.SetPosition(player.transformID, {x=124, y=32, z=220})
CreateEnemy(ENEMY_MELEE, {x=122, y=32, z=230})
CreateEnemy(ENEMY_MELEE, {x=120, y=32, z=230})
CreateEnemy(ENEMY_MELEE, {x=110, y=42, z=230})

CreateEnemy(ENEMY_MELEE, {x=112, y=32, z=230})
CreateEnemy(ENEMY_MELEE, {x=107, y=32, z=230})
CreateEnemy(ENEMY_MELEE, {x=118, y=42, z=230})


CreateEnemy(ENEMY_MELEE, {x=112, y=32, z=240})
CreateEnemy(ENEMY_MELEE, {x=107, y=32, z=240})
CreateEnemy(ENEMY_MELEE, {x=118, y=42, z=240})

