props = {}
heightmaps = {}
colliders = {}
local ID2name = {}
ID2name.transformID = Transform.Bind()
Transform.SetPosition(ID2name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID2name.transformID, 1, 1, 1)
Transform.SetRotation(ID2name.transformID, {x=0, y=0, z=0})
ID2name.model = Assets.LoadModel('Models/tile1_game_x1.model')
Gear.AddStaticInstance(ID2name.model, ID2name.transformID)
table.insert(props,ID2name)
ID2name = nil

local ID3name = {}
ID3name.transformID = Transform.Bind()
Transform.SetPosition(ID3name.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(ID3name.transformID, 1, 1, 1)
Transform.SetRotation(ID3name.transformID, {x=0, y=0, z=0})
ID3name.model = Assets.LoadModel('Models/tile1_game_x1_assets.model')
Gear.AddStaticInstance(ID3name.model, ID3name.transformID)
table.insert(props,ID3name)
ID3name = nil

local ID4name = {}
ID4name.transformID = Transform.Bind()
Transform.SetPosition(ID4name.transformID, {x=131.082, y=56.2813, z=37.5938})
Transform.SetScaleNonUniform(ID4name.transformID, 1, 1, 1)
Transform.SetRotation(ID4name.transformID, {x=0, y=0, z=0})
table.insert(props,ID4name)
ID4name = nil

local ID5name = {}
ID5name.transformID = Transform.Bind()
Transform.SetPosition(ID5name.transformID, {x=97.8125, y=33.8505, z=73.0168})
Transform.SetScaleNonUniform(ID5name.transformID, 1, 1, 1)
Transform.SetRotation(ID5name.transformID, {x=0, y=0, z=0})
table.insert(props,ID5name)
ID5name = nil

local ID6name = {}
ID6name.transformID = Transform.Bind()
Transform.SetPosition(ID6name.transformID, {x=21.0658, y=7.48623, z=219.905})
Transform.SetScaleNonUniform(ID6name.transformID, 272, 10, 30)
Transform.SetRotation(ID6name.transformID, {x=0, y=0, z=0})
ID6name.model = Assets.LoadModel('Models/testGuy.model')
Gear.AddStaticInstance(ID6name.model, ID6name.transformID)
table.insert(props,ID6name)
ID6name = nil

local ID7name = {}
ID7name.transformID = Transform.Bind()
Transform.SetPosition(ID7name.transformID, {x=52.5938, y=8.33188, z=43.0625})
Transform.SetScaleNonUniform(ID7name.transformID, 1, 1, 1)
Transform.SetRotation(ID7name.transformID, {x=0, y=0, z=0})
ID7name.collider = AABBCollider.Create(ID7name.transformID)
ID7name.collider:SetOffset(0,0,0)
ID7name.collider:SetMinPos(-2,-2,-2)
ID7name.collider:SetMaxPos(2,2,2)
ID7name1 = {}
ID7name1.collider = AABBCollider.Create(-1)
ID7name1.collider:SetOffset(0.03125,0.378127,0.0777626)
ID7name1.collider:SetMinPos(-1,-1,-1)
ID7name1.collider:SetMaxPos(1,1,1)
ID7name.collider:AddChild(ID7name1.collider)
table.insert(colliders,ID7name1)
CollisionHandler.AddAABB(ID7name.collider, 3)
ID7name1 = nil
table.insert(colliders,ID7name)
ID7name = nil

local ID9name = {}
ID9name.transformID = Transform.Bind()
Transform.SetPosition(ID9name.transformID, {x=49.4688, y=7.68359, z=41.7188})
Transform.SetScaleNonUniform(ID9name.transformID, 1, 1, 1)
Transform.SetRotation(ID9name.transformID, {x=0, y=0, z=0})
ID9name.collider = OBBCollider.Create(ID9name.transformID)
ID9name.collider:SetOffset(0,0,0)
ID9name.collider:SetZAxis(0,0,-1)
ID9name.collider:SetHalfLengths(1,1,1)
ID9name1 = {}
ID9name1.collider = OBBCollider.Create(-1)
ID9name1.collider:SetOffset(-0.59375,0.0195313,6.90625)
ID9name1.collider:SetZAxis(0,0,-1)
ID9name1.collider:SetHalfLengths(1,1,1)
ID9name.collider:AddChild(ID9name1.collider)
table.insert(colliders,ID9name1)
CollisionHandler.AddOBB(ID9name.collider, 3)
ID9name1 = nil
table.insert(colliders,ID9name)
ID9name = nil

local ID11name = {}
ID11name.transformID = Transform.Bind()
Transform.SetPosition(ID11name.transformID, {x=53.4326, y=9.42254, z=42.625})
Transform.SetScaleNonUniform(ID11name.transformID, 1, 1, 1)
Transform.SetRotation(ID11name.transformID, {x=0, y=0, z=0})
ID11name.collider = SphereCollider.Create(ID11name.transformID)
ID11name.collider:SetOffset(0,0,0)
ID11name.collider:SetRadius(5)
ID11name1 = {}
ID11name1.collider = SphereCollider.Create(-1)
ID11name1.collider:SetOffset(-8.99513,-1.81707,8)
ID11name1.collider:SetRadius(5)
ID11name.collider:AddChild(ID11name1.collider)
table.insert(colliders,ID11name1)
CollisionHandler.AddSphere(ID11name.collider, 3)
ID11name1 = nil
table.insert(colliders,ID11name)
ID11name = nil

local ID13name = {}
ID13name.transformID = Transform.Bind()
Transform.SetPosition(ID13name.transformID, {x=22.5781, y=-1.46636, z=194.375})
Transform.SetScaleNonUniform(ID13name.transformID, 1, 1, 1)
Transform.SetRotation(ID13name.transformID, {x=0, y=0, z=0})
table.insert(props,ID13name)
ID13name = nil

local ID14name = {}
ID14name.transformID = Transform.Bind()
Transform.SetPosition(ID14name.transformID, {x=6.42969, y=-1.55465, z=206.375})
Transform.SetScaleNonUniform(ID14name.transformID, 1, 1, 1)
Transform.SetRotation(ID14name.transformID, {x=0, y=0, z=0})
table.insert(props,ID14name)
ID14name = nil

local ID15name = {}
ID15name.transformID = Transform.Bind()
Transform.SetPosition(ID15name.transformID, {x=40, y=10, z=20})
Transform.SetScaleNonUniform(ID15name.transformID, 1, 1, 1)
Transform.SetRotation(ID15name.transformID, {x=0, y=0, z=0})
ID15name.collider = OBBCollider.Create(ID15name.transformID)
ID15name.collider:SetOffset(0,0,0)
ID15name.collider:SetZAxis(0,0,-1)
ID15name.collider:SetHalfLengths(1,1,1)
ID15name1 = {}
ID15name1.collider = OBBCollider.Create(-1)
ID15name1.collider:SetOffset(0,2,0)
ID15name1.collider:SetZAxis(0,0,-1)
ID15name1.collider:SetHalfLengths(1,1,1)
ID15name.collider:AddChild(ID15name1.collider)
table.insert(colliders,ID15name1)
ID15name2 = {}
ID15name2.collider = OBBCollider.Create(-1)
ID15name2.collider:SetOffset(0,2,0)
ID15name2.collider:SetZAxis(0,0,-1)
ID15name2.collider:SetHalfLengths(1,1,1)
ID15name1.collider:AddChild(ID15name2.collider)
table.insert(colliders,ID15name2)
CollisionHandler.AddOBB(ID15name.collider, 3)
ID15name1 = nil
ID15name2 = nil
table.insert(colliders,ID15name)
ID15name = nil

local ID18name = {}
ID18name.transformID = Transform.Bind()
Transform.SetPosition(ID18name.transformID, {x=40, y=10, z=15})
Transform.SetScaleNonUniform(ID18name.transformID, 1, 1, 1)
Transform.SetRotation(ID18name.transformID, {x=0, y=0, z=0})
ID18name.collider = SphereCollider.Create(ID18name.transformID)
ID18name.collider:SetOffset(0,0,0)
ID18name.collider:SetRadius(1)
ID18name1 = {}
ID18name1.collider = SphereCollider.Create(-1)
ID18name1.collider:SetOffset(0,2,0)
ID18name1.collider:SetRadius(1)
ID18name.collider:AddChild(ID18name1.collider)
table.insert(colliders,ID18name1)
ID18name2 = {}
ID18name2.collider = SphereCollider.Create(-1)
ID18name2.collider:SetOffset(0,2,0)
ID18name2.collider:SetRadius(1)
ID18name1.collider:AddChild(ID18name2.collider)
table.insert(colliders,ID18name2)
CollisionHandler.AddSphere(ID18name.collider, 3)
ID18name1 = nil
ID18name2 = nil
table.insert(colliders,ID18name)
ID18name = nil

local ID21name = {}
ID21name.transformID = Transform.Bind()
Transform.SetPosition(ID21name.transformID, {x=35, y=14, z=20})
Transform.SetScaleNonUniform(ID21name.transformID, 1, 1, 1)
Transform.SetRotation(ID21name.transformID, {x=0, y=0, z=0})
ID21name.collider = AABBCollider.Create(ID21name.transformID)
ID21name.collider:SetOffset(0,0,0)
ID21name.collider:SetMinPos(-0.5,-0.5,-0.5)
ID21name.collider:SetMaxPos(0.5,0.5,0.5)
CollisionHandler.AddAABB(ID21name.collider, 3)
table.insert(colliders,ID21name)
ID21name = nil

local ID22name = {}
ID22name.transformID = Transform.Bind()
Transform.SetPosition(ID22name.transformID, {x=35, y=12, z=20})
Transform.SetScaleNonUniform(ID22name.transformID, 1, 1, 1)
Transform.SetRotation(ID22name.transformID, {x=0, y=0, z=0})
ID22name.collider = AABBCollider.Create(ID22name.transformID)
ID22name.collider:SetOffset(0,0,0)
ID22name.collider:SetMinPos(-0.5,-0.5,-0.5)
ID22name.collider:SetMaxPos(0.5,0.5,0.5)
CollisionHandler.AddAABB(ID22name.collider, 3)
table.insert(colliders,ID22name)
ID22name = nil

local ID23name = {}
ID23name.transformID = Transform.Bind()
Transform.SetPosition(ID23name.transformID, {x=35, y=10, z=20})
Transform.SetScaleNonUniform(ID23name.transformID, 1, 1, 1)
Transform.SetRotation(ID23name.transformID, {x=0, y=0, z=0})
ID23name.collider = AABBCollider.Create(ID23name.transformID)
ID23name.collider:SetOffset(0,0,0)
ID23name.collider:SetMinPos(-0.5,-0.5,-0.5)
ID23name.collider:SetMaxPos(0.5,0.5,0.5)
CollisionHandler.AddAABB(ID23name.collider, 3)
table.insert(colliders,ID23name)
ID23name = nil

local ID24name = {}
ID24name.transformID = Transform.Bind()
Transform.SetPosition(ID24name.transformID, {x=-6.16797, y=2.79883, z=97.0625})
Transform.SetScaleNonUniform(ID24name.transformID, 1, 1, 1)
Transform.SetRotation(ID24name.transformID, {x=0, y=0, z=0})
ID24name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID24name.particle, -6.16797, 2.79883, 97.0625)
Particle.SetAlive(ID24name.particle)
table.insert(props,ID24name)
ID24name = nil

local ID25name = {}
ID25name.transformID = Transform.Bind()
Transform.SetPosition(ID25name.transformID, {x=39.375, y=-3.16992, z=120.125})
Transform.SetScaleNonUniform(ID25name.transformID, 1, 1, 1)
Transform.SetRotation(ID25name.transformID, {x=0, y=0, z=0})
ID25name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID25name.particle, 39.375, -3.16992, 120.125)
Particle.SetAlive(ID25name.particle)
table.insert(props,ID25name)
ID25name = nil

local ID26name = {}
ID26name.transformID = Transform.Bind()
Transform.SetPosition(ID26name.transformID, {x=79.1875, y=-1.12695, z=107.125})
Transform.SetScaleNonUniform(ID26name.transformID, 1, 1, 1)
Transform.SetRotation(ID26name.transformID, {x=0, y=0, z=0})
ID26name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID26name.particle, 79.1875, -1.12695, 107.125)
Particle.SetAlive(ID26name.particle)
table.insert(props,ID26name)
ID26name = nil

local ID27name = {}
ID27name.transformID = Transform.Bind()
Transform.SetPosition(ID27name.transformID, {x=85.625, y=21.0781, z=80.6875})
Transform.SetScaleNonUniform(ID27name.transformID, 1, 1, 1)
Transform.SetRotation(ID27name.transformID, {x=0, y=0, z=0})
ID27name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID27name.particle, 85.625, 21.0781, 80.6875)
Particle.SetAlive(ID27name.particle)
table.insert(props,ID27name)
ID27name = nil

local ID28name = {}
ID28name.transformID = Transform.Bind()
Transform.SetPosition(ID28name.transformID, {x=68.5625, y=15.8984, z=57.125})
Transform.SetScaleNonUniform(ID28name.transformID, 1, 1, 1)
Transform.SetRotation(ID28name.transformID, {x=0, y=0, z=0})
ID28name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID28name.particle, 68.5625, 15.8984, 57.125)
Particle.SetAlive(ID28name.particle)
table.insert(props,ID28name)
ID28name = nil

local ID29name = {}
ID29name.transformID = Transform.Bind()
Transform.SetPosition(ID29name.transformID, {x=40.1875, y=8.15936, z=72.0661})
Transform.SetScaleNonUniform(ID29name.transformID, 1, 1, 1)
Transform.SetRotation(ID29name.transformID, {x=0, y=0, z=0})
ID29name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID29name.particle, 40.1875, 8.15936, 72.0661)
Particle.SetAlive(ID29name.particle)
table.insert(props,ID29name)
ID29name = nil

local ID30name = {}
ID30name.transformID = Transform.Bind()
Transform.SetPosition(ID30name.transformID, {x=19.7656, y=2.94141, z=111.25})
Transform.SetScaleNonUniform(ID30name.transformID, 1, 1, 1)
Transform.SetRotation(ID30name.transformID, {x=0, y=0, z=0})
ID30name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID30name.particle, 19.7656, 2.94141, 111.25)
Particle.SetAlive(ID30name.particle)
table.insert(props,ID30name)
ID30name = nil

local ID31name = {}
ID31name.transformID = Transform.Bind()
Transform.SetPosition(ID31name.transformID, {x=-2.05469, y=-3.34961, z=150.75})
Transform.SetScaleNonUniform(ID31name.transformID, 1, 1, 1)
Transform.SetRotation(ID31name.transformID, {x=0, y=0, z=0})
ID31name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID31name.particle, -2.05469, -3.34961, 150.75)
Particle.SetAlive(ID31name.particle)
table.insert(props,ID31name)
ID31name = nil

local ID32name = {}
ID32name.transformID = Transform.Bind()
Transform.SetPosition(ID32name.transformID, {x=-2.42969, y=-7.47266, z=169.625})
Transform.SetScaleNonUniform(ID32name.transformID, 1, 1, 1)
Transform.SetRotation(ID32name.transformID, {x=0, y=0, z=0})
ID32name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID32name.particle, -2.42969, -7.47266, 169.625)
Particle.SetAlive(ID32name.particle)
table.insert(props,ID32name)
ID32name = nil

local ID33name = {}
ID33name.transformID = Transform.Bind()
Transform.SetPosition(ID33name.transformID, {x=52.094, y=-9.29826, z=173.5})
Transform.SetScaleNonUniform(ID33name.transformID, 1, 1, 1)
Transform.SetRotation(ID33name.transformID, {x=0, y=0, z=0})
ID33name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID33name.particle, 52.094, -9.29826, 173.5)
Particle.SetAlive(ID33name.particle)
table.insert(props,ID33name)
ID33name = nil

local ID34name = {}
ID34name.transformID = Transform.Bind()
Transform.SetPosition(ID34name.transformID, {x=83.4375, y=7.60547, z=134.25})
Transform.SetScaleNonUniform(ID34name.transformID, 1, 1, 1)
Transform.SetRotation(ID34name.transformID, {x=0, y=0, z=0})
ID34name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID34name.particle, 83.4375, 7.60547, 134.25)
Particle.SetAlive(ID34name.particle)
table.insert(props,ID34name)
ID34name = nil

local ID35name = {}
ID35name.transformID = Transform.Bind()
Transform.SetPosition(ID35name.transformID, {x=84.1875, y=0.0553894, z=122})
Transform.SetScaleNonUniform(ID35name.transformID, 1, 1, 1)
Transform.SetRotation(ID35name.transformID, {x=0, y=0, z=0})
ID35name.particle = Particle.Bind("ParticleFiles/grenadeTest.particle")
Particle.SetPosition(ID35name.particle, 84.1875, 0.0553894, 122)
Particle.SetAlive(ID35name.particle)
table.insert(props,ID35name)
ID35name = nil

--TEMP: This should probably not be hardcoded into every level?
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.SetNav(widthTest,heightTest)
