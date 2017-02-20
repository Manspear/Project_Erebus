levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap1.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap1.asset:SetHeightMultiplier(0.0707237)
Heightmap1.surrounding = { 2 }
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap2.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap2.asset:SetHeightMultiplier(0.113531)
Heightmap2.surrounding = { 1 }
heightmaps[2] = Heightmap2
Heightmap2 = nil

---------------------------------Hieghtmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.load = function()
props = {}
colliders = {}
triggers = {}
t3s12ID = {}
t3s12ID.transformID = Transform.Bind()
Transform.SetPosition(t3s12ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s12ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s12ID.transformID, {x=0, y=0, z=0})
t3s12ID.model = Assets.LoadModel('Models/tile3_s1.model')
Gear.AddStaticInstance(t3s12ID.model, t3s12ID.transformID)
table.insert(props,t3s12ID)
t3s12ID = nil

tile33ID = {}
tile33ID.transformID = Transform.Bind()
Transform.SetPosition(tile33ID.transformID, {x=384, y=0, z=128})
Transform.SetScaleNonUniform(tile33ID.transformID, 1, 1, 1)
Transform.SetRotation(tile33ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile33ID)
tile33ID = nil

t3s24ID = {}
t3s24ID.transformID = Transform.Bind()
Transform.SetPosition(t3s24ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s24ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s24ID.transformID, {x=0, y=0, z=0})
t3s24ID.model = Assets.LoadModel('Models/tile3_s2.model')
Gear.AddStaticInstance(t3s24ID.model, t3s24ID.transformID)
table.insert(props,t3s24ID)
t3s24ID = nil

t3s35ID = {}
t3s35ID.transformID = Transform.Bind()
Transform.SetPosition(t3s35ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s35ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s35ID.transformID, {x=0, y=0, z=0})
t3s35ID.model = Assets.LoadModel('Models/tile3_s3.model')
Gear.AddStaticInstance(t3s35ID.model, t3s35ID.transformID)
table.insert(props,t3s35ID)
t3s35ID = nil

t3s46ID = {}
t3s46ID.transformID = Transform.Bind()
Transform.SetPosition(t3s46ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s46ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s46ID.transformID, {x=0, y=0, z=0})
t3s46ID.model = Assets.LoadModel('Models/tile3_s4.model')
Gear.AddStaticInstance(t3s46ID.model, t3s46ID.transformID)
table.insert(props,t3s46ID)
t3s46ID = nil

Tile3_wallNr7ID = {}
Tile3_wallNr7ID.transformID = Transform.Bind()
Transform.SetPosition(Tile3_wallNr7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(Tile3_wallNr7ID.transformID, 1, 1, 1)
Transform.SetRotation(Tile3_wallNr7ID.transformID, {x=0, y=0, z=0})
Tile3_wallNr7ID.model = Assets.LoadModel('Models/tile2_s11a.model')
Gear.AddStaticInstance(Tile3_wallNr7ID.model, Tile3_wallNr7ID.transformID)
table.insert(colliders,Tile3_wallNr7ID)
Tile3_wallNr7ID = nil

settings61ID = {}
settings61ID.transformID = Transform.Bind()
Transform.SetPosition(settings61ID.transformID, {x=392.824, y=36.6573, z=151.181})
Transform.SetScaleNonUniform(settings61ID.transformID, 1, 1, 1)
Transform.SetRotation(settings61ID.transformID, {x=0, y=0, z=0})
Transform.SetPosition(player.transformID, {x=392.824, y=36.6573, z=151.181})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,settings61ID)
settings61ID = nil

New62ID = {}
New62ID.transformID = Transform.Bind()
Transform.SetPosition(New62ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(New62ID.transformID, 1, 1, 1)
Transform.SetRotation(New62ID.transformID, {x=0, y=0, z=0})
New62ID.model = Assets.LoadModel('Models/tile2_s9.model')
Gear.AddStaticInstance(New62ID.model, New62ID.transformID)
table.insert(props,New62ID)
New62ID = nil

New163ID = {}
New163ID.transformID = Transform.Bind()
Transform.SetPosition(New163ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(New163ID.transformID, 1, 1, 1)
Transform.SetRotation(New163ID.transformID, {x=0, y=0, z=0})
New163ID.model = Assets.LoadModel('Models/tile2_s10.model')
Gear.AddStaticInstance(New163ID.model, New163ID.transformID)
table.insert(props,New163ID)
New163ID = nil

Stone283ID = {}
Stone283ID.transformID = Transform.Bind()
Transform.SetPosition(Stone283ID.transformID, {x=427.75, y=34.875, z=161.875})
Transform.SetScaleNonUniform(Stone283ID.transformID, 3.39706, 4.05842, 3.72766)
Transform.SetRotation(Stone283ID.transformID, {x=0, y=0, z=0})
Stone283ID.model = Assets.LoadModel('Models/Stone3.model')
Gear.AddStaticInstance(Stone283ID.model, Stone283ID.transformID)
table.insert(props,Stone283ID)
Stone283ID = nil

PineTree184ID = {}
PineTree184ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree184ID.transformID, {x=479, y=41.2813, z=202.125})
Transform.SetScaleNonUniform(PineTree184ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree184ID.transformID, {x=0, y=0, z=0})
PineTree184ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree184ID.model, PineTree184ID.transformID)
table.insert(props,PineTree184ID)
PineTree184ID = nil

PineTree1185ID = {}
PineTree1185ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree1185ID.transformID, {x=461, y=43.5313, z=228.125})
Transform.SetScaleNonUniform(PineTree1185ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree1185ID.transformID, {x=0, y=0, z=0})
PineTree1185ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree1185ID.model, PineTree1185ID.transformID)
table.insert(props,PineTree1185ID)
PineTree1185ID = nil

PineTree1286ID = {}
PineTree1286ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree1286ID.transformID, {x=451, y=41.5, z=201.5})
Transform.SetScaleNonUniform(PineTree1286ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree1286ID.transformID, {x=0, y=0, z=0})
PineTree1286ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree1286ID.model, PineTree1286ID.transformID)
table.insert(props,PineTree1286ID)
PineTree1286ID = nil

PineTree1387ID = {}
PineTree1387ID.transformID = Transform.Bind()
Transform.SetPosition(PineTree1387ID.transformID, {x=493.5, y=42, z=247.75})
Transform.SetScaleNonUniform(PineTree1387ID.transformID, 1, 1, 1)
Transform.SetRotation(PineTree1387ID.transformID, {x=0, y=0, z=0})
PineTree1387ID.model = Assets.LoadModel('Models/pineTree1.model')
Gear.AddStaticInstance(PineTree1387ID.model, PineTree1387ID.transformID)
table.insert(props,PineTree1387ID)
PineTree1387ID = nil

OakTree88ID = {}
OakTree88ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree88ID.transformID, {x=467.75, y=38.9688, z=181})
Transform.SetScaleNonUniform(OakTree88ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree88ID.transformID, {x=0, y=0.131111, z=0})
OakTree88ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree88ID.model, OakTree88ID.transformID)
table.insert(props,OakTree88ID)
OakTree88ID = nil

OakTree189ID = {}
OakTree189ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree189ID.transformID, {x=439, y=46.9375, z=220.875})
Transform.SetScaleNonUniform(OakTree189ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree189ID.transformID, {x=0, y=0.131111, z=0})
OakTree189ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree189ID.model, OakTree189ID.transformID)
table.insert(props,OakTree189ID)
OakTree189ID = nil

OakTree290ID = {}
OakTree290ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree290ID.transformID, {x=485, y=31.7188, z=122.563})
Transform.SetScaleNonUniform(OakTree290ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree290ID.transformID, {x=0, y=0.131111, z=0})
OakTree290ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree290ID.model, OakTree290ID.transformID)
table.insert(props,OakTree290ID)
OakTree290ID = nil

OakTree391ID = {}
OakTree391ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree391ID.transformID, {x=527.5, y=26.3125, z=143.375})
Transform.SetScaleNonUniform(OakTree391ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree391ID.transformID, {x=0, y=0.131111, z=0})
OakTree391ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree391ID.model, OakTree391ID.transformID)
table.insert(props,OakTree391ID)
OakTree391ID = nil

OakTree492ID = {}
OakTree492ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree492ID.transformID, {x=563.5, y=15.2031, z=105.813})
Transform.SetScaleNonUniform(OakTree492ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree492ID.transformID, {x=0, y=0.131111, z=0})
OakTree492ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree492ID.model, OakTree492ID.transformID)
table.insert(props,OakTree492ID)
OakTree492ID = nil

OakTree593ID = {}
OakTree593ID.transformID = Transform.Bind()
Transform.SetPosition(OakTree593ID.transformID, {x=503.25, y=26.7188, z=163})
Transform.SetScaleNonUniform(OakTree593ID.transformID, 1, 1, 1)
Transform.SetRotation(OakTree593ID.transformID, {x=0, y=0.131111, z=0})
OakTree593ID.model = Assets.LoadModel('Models/OakTree1.model')
Gear.AddStaticInstance(OakTree593ID.model, OakTree593ID.transformID)
table.insert(props,OakTree593ID)
OakTree593ID = nil

AutoGenParent101ID = {}
AutoGenParent101ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent101ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent101ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent101ID.transformID, {x=0, y=0, z=0})
AutoGenParent101ID.collider = AABBCollider.Create(AutoGenParent101ID.transformID)
AutoGenParent101ID.collider:SetOffset(0,0,0)
AutoGenParent101ID.collider:SetMinPos(-0.3,-5.15847,-4.5)
AutoGenParent101ID.collider:SetMaxPos(565.408,78.3839,383.3)
AutoGenParent101ID1 = {}
AutoGenParent101ID1.collider = AABBCollider.Create(-1)
AutoGenParent101ID1.collider:SetOffset(0,0,0)
AutoGenParent101ID1.collider:SetMinPos(-0.3,-5.15847,-4.5)
AutoGenParent101ID1.collider:SetMaxPos(422.128,42.7071,164.166)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID1.collider)
table.insert(colliders,AutoGenParent101ID1)
AutoGenParent101ID2 = {}
AutoGenParent101ID2.collider = OBBCollider.Create(-1)
AutoGenParent101ID2.collider:SetOffset(0,0,0)
AutoGenParent101ID2.collider:SetZAxis(0,0,-1)
AutoGenParent101ID2.collider:SetHalfLengths(0.3,5.15847,4.5)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID2.collider)
table.insert(colliders,AutoGenParent101ID2)
AutoGenParent101ID3 = {}
AutoGenParent101ID3.collider = OBBCollider.Create(-1)
AutoGenParent101ID3.collider:SetOffset(398,36.3044,158)
AutoGenParent101ID3.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent101ID3.collider:SetHalfLengths(0.3,5.15847,5.09902)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID3.collider)
table.insert(colliders,AutoGenParent101ID3)
AutoGenParent101ID4 = {}
AutoGenParent101ID4.collider = OBBCollider.Create(-1)
AutoGenParent101ID4.collider:SetOffset(404,36.146,160)
AutoGenParent101ID4.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent101ID4.collider:SetHalfLengths(0.3,5.15847,1.41421)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID4.collider)
table.insert(colliders,AutoGenParent101ID4)
AutoGenParent101ID5 = {}
AutoGenParent101ID5.collider = OBBCollider.Create(-1)
AutoGenParent101ID5.collider:SetOffset(406,36.3044,162.5)
AutoGenParent101ID5.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent101ID5.collider:SetHalfLengths(0.3,5.15847,1.80278)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID5.collider)
table.insert(colliders,AutoGenParent101ID5)
AutoGenParent101ID6 = {}
AutoGenParent101ID6.collider = OBBCollider.Create(-1)
AutoGenParent101ID6.collider:SetOffset(412.5,35.5121,139.5)
AutoGenParent101ID6.collider:SetZAxis(-0.903738,0,0.428086)
AutoGenParent101ID6.collider:SetHalfLengths(0.3,5.15847,10.5119)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID6.collider)
table.insert(colliders,AutoGenParent101ID6)
AutoGenParent101ID7 = {}
AutoGenParent101ID7.collider = OBBCollider.Create(-1)
AutoGenParent101ID7.collider:SetOffset(401.5,35.3536,144.5)
AutoGenParent101ID7.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent101ID7.collider:SetHalfLengths(0.3,5,1.58114)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID7.collider)
table.insert(colliders,AutoGenParent101ID7)
AutoGenParent101ID8 = {}
AutoGenParent101ID8.collider = OBBCollider.Create(-1)
AutoGenParent101ID8.collider:SetOffset(392,35.3536,145)
AutoGenParent101ID8.collider:SetZAxis(-1,0,0)
AutoGenParent101ID8.collider:SetHalfLengths(0.3,5.15847,8)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID8.collider)
table.insert(colliders,AutoGenParent101ID8)
AutoGenParent101ID9 = {}
AutoGenParent101ID9.collider = OBBCollider.Create(-1)
AutoGenParent101ID9.collider:SetOffset(384,35.1951,146)
AutoGenParent101ID9.collider:SetZAxis(0,0,1)
AutoGenParent101ID9.collider:SetHalfLengths(0.3,5,1)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID9.collider)
table.insert(colliders,AutoGenParent101ID9)
AutoGenParent101ID10 = {}
AutoGenParent101ID10.collider = OBBCollider.Create(-1)
AutoGenParent101ID10.collider:SetOffset(384,36.4341,151.5)
AutoGenParent101ID10.collider:SetZAxis(0,0,-1)
AutoGenParent101ID10.collider:SetHalfLengths(0.3,6.27303,5.5)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID10.collider)
table.insert(colliders,AutoGenParent101ID10)
AutoGenParent101ID11 = {}
AutoGenParent101ID11.collider = OBBCollider.Create(-1)
AutoGenParent101ID11.collider:SetOffset(388.5,36.4341,157)
AutoGenParent101ID11.collider:SetZAxis(1,0,0)
AutoGenParent101ID11.collider:SetHalfLengths(0.3,5.14145,4.5)
AutoGenParent101ID1.collider:AddChild(AutoGenParent101ID11.collider)
table.insert(colliders,AutoGenParent101ID11)
AutoGenParent101ID12 = {}
AutoGenParent101ID12.collider = AABBCollider.Create(-1)
AutoGenParent101ID12.collider:SetOffset(0,0,0)
AutoGenParent101ID12.collider:SetMinPos(406.732,30.5121,127.711)
AutoGenParent101ID12.collider:SetMaxPos(475.148,53.3481,231.059)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID12.collider)
table.insert(colliders,AutoGenParent101ID12)
AutoGenParent101ID13 = {}
AutoGenParent101ID13.collider = OBBCollider.Create(-1)
AutoGenParent101ID13.collider:SetOffset(409,36.4629,168)
AutoGenParent101ID13.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent101ID13.collider:SetHalfLengths(0.3,5.31694,4.47214)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID13.collider)
table.insert(colliders,AutoGenParent101ID13)
AutoGenParent101ID14 = {}
AutoGenParent101ID14.collider = OBBCollider.Create(-1)
AutoGenParent101ID14.collider:SetOffset(412.5,36.7798,176)
AutoGenParent101ID14.collider:SetZAxis(0.351123,0,0.936329)
AutoGenParent101ID14.collider:SetHalfLengths(0.3,5.79235,4.272)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID14.collider)
table.insert(colliders,AutoGenParent101ID14)
AutoGenParent101ID15 = {}
AutoGenParent101ID15.collider = OBBCollider.Create(-1)
AutoGenParent101ID15.collider:SetOffset(415.5,37.5722,185)
AutoGenParent101ID15.collider:SetZAxis(0.287348,0,0.957826)
AutoGenParent101ID15.collider:SetHalfLengths(0.3,5.63388,5.22015)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID15.collider)
table.insert(colliders,AutoGenParent101ID15)
AutoGenParent101ID16 = {}
AutoGenParent101ID16.collider = OBBCollider.Create(-1)
AutoGenParent101ID16.collider:SetOffset(418,38.2061,195.5)
AutoGenParent101ID16.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent101ID16.collider:SetHalfLengths(0.3,7.0601,5.59017)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID16.collider)
table.insert(colliders,AutoGenParent101ID16)
AutoGenParent101ID17 = {}
AutoGenParent101ID17.collider = OBBCollider.Create(-1)
AutoGenParent101ID17.collider:SetOffset(419.5,40.2662,208.5)
AutoGenParent101ID17.collider:SetZAxis(0.066519,0,0.997785)
AutoGenParent101ID17.collider:SetHalfLengths(0.3,9.27867,7.51665)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID17.collider)
table.insert(colliders,AutoGenParent101ID17)
AutoGenParent101ID18 = {}
AutoGenParent101ID18.collider = OBBCollider.Create(-1)
AutoGenParent101ID18.collider:SetOffset(418.5,44.5448,223.5)
AutoGenParent101ID18.collider:SetZAxis(-0.196116,0,0.980581)
AutoGenParent101ID18.collider:SetHalfLengths(0.3,8.80326,7.64853)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID18.collider)
table.insert(colliders,AutoGenParent101ID18)
AutoGenParent101ID19 = {}
AutoGenParent101ID19.collider = OBBCollider.Create(-1)
AutoGenParent101ID19.collider:SetOffset(463.5,38.2061,139.5)
AutoGenParent101ID19.collider:SetZAxis(-0.870563,0,-0.492057)
AutoGenParent101ID19.collider:SetHalfLengths(0.3,6.42622,13.2098)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID19.collider)
table.insert(colliders,AutoGenParent101ID19)
AutoGenParent101ID20 = {}
AutoGenParent101ID20.collider = OBBCollider.Create(-1)
AutoGenParent101ID20.collider:SetOffset(443,36.7798,130.5)
AutoGenParent101ID20.collider:SetZAxis(-0.963518,0,-0.267644)
AutoGenParent101ID20.collider:SetHalfLengths(0.3,5.95082,9.34077)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID20.collider)
table.insert(colliders,AutoGenParent101ID20)
AutoGenParent101ID21 = {}
AutoGenParent101ID21.collider = OBBCollider.Create(-1)
AutoGenParent101ID21.collider:SetOffset(428,35.829,131.5)
AutoGenParent101ID21.collider:SetZAxis(-0.863779,0,0.503871)
AutoGenParent101ID21.collider:SetHalfLengths(0.3,5.31694,6.94622)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID21.collider)
table.insert(colliders,AutoGenParent101ID21)
AutoGenParent101ID22 = {}
AutoGenParent101ID22.collider = OBBCollider.Create(-1)
AutoGenParent101ID22.collider:SetOffset(428.05,35.475,161.875)
AutoGenParent101ID22.collider:SetZAxis(0,0,1)
AutoGenParent101ID22.collider:SetHalfLengths(3.39706,2.43505,3.72766)
AutoGenParent101ID12.collider:AddChild(AutoGenParent101ID22.collider)
table.insert(colliders,AutoGenParent101ID22)
AutoGenParent101ID23 = {}
AutoGenParent101ID23.collider = AABBCollider.Create(-1)
AutoGenParent101ID23.collider:SetOffset(0,0,0)
AutoGenParent101ID23.collider:SetMinPos(414.709,23.9934,121.155)
AutoGenParent101ID23.collider:SetMaxPos(487.245,68.8781,256.3)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID23.collider)
table.insert(colliders,AutoGenParent101ID23)
AutoGenParent101ID24 = {}
AutoGenParent101ID24.collider = OBBCollider.Create(-1)
AutoGenParent101ID24.collider:SetOffset(416,48.3481,235)
AutoGenParent101ID24.collider:SetZAxis(-0.242536,0,0.970143)
AutoGenParent101ID24.collider:SetHalfLengths(0.3,7.37704,4.12311)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID24.collider)
table.insert(colliders,AutoGenParent101ID24)
AutoGenParent101ID25 = {}
AutoGenParent101ID25.collider = OBBCollider.Create(-1)
AutoGenParent101ID25.collider:SetOffset(422,50.7251,242)
AutoGenParent101ID25.collider:SetZAxis(0.919145,0,0.393919)
AutoGenParent101ID25.collider:SetHalfLengths(0.3,5.79234,7.61577)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID25.collider)
table.insert(colliders,AutoGenParent101ID25)
AutoGenParent101ID26 = {}
AutoGenParent101ID26.collider = OBBCollider.Create(-1)
AutoGenParent101ID26.collider:SetOffset(432.5,51.5175,250)
AutoGenParent101ID26.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent101ID26.collider:SetHalfLengths(0.3,5.79235,6.10328)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID26.collider)
table.insert(colliders,AutoGenParent101ID26)
AutoGenParent101ID27 = {}
AutoGenParent101ID27.collider = OBBCollider.Create(-1)
AutoGenParent101ID27.collider:SetOffset(453.5,52.3098,255)
AutoGenParent101ID27.collider:SetZAxis(1,0,0)
AutoGenParent101ID27.collider:SetHalfLengths(0.3,16.5682,17.5)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID27.collider)
table.insert(colliders,AutoGenParent101ID27)
AutoGenParent101ID28 = {}
AutoGenParent101ID28.collider = OBBCollider.Create(-1)
AutoGenParent101ID28.collider:SetOffset(481,39.7907,154.5)
AutoGenParent101ID28.collider:SetZAxis(-0.576683,0,-0.816968)
AutoGenParent101ID28.collider:SetHalfLengths(0.3,6.58469,10.4043)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID28.collider)
table.insert(colliders,AutoGenParent101ID28)
AutoGenParent101ID29 = {}
AutoGenParent101ID29.collider = OBBCollider.Create(-1)
AutoGenParent101ID29.collider:SetOffset(453,40.9141,256)
AutoGenParent101ID29.collider:SetZAxis(-1,0,0)
AutoGenParent101ID29.collider:SetHalfLengths(0.3,16.9207,18)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID29.collider)
table.insert(colliders,AutoGenParent101ID29)
AutoGenParent101ID30 = {}
AutoGenParent101ID30.collider = OBBCollider.Create(-1)
AutoGenParent101ID30.collider:SetOffset(451,45.2,201.5)
AutoGenParent101ID30.collider:SetZAxis(0,0,1)
AutoGenParent101ID30.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent101ID23.collider:AddChild(AutoGenParent101ID30.collider)
table.insert(colliders,AutoGenParent101ID30)
AutoGenParent101ID31 = {}
AutoGenParent101ID31.collider = AABBCollider.Create(-1)
AutoGenParent101ID31.collider:SetOffset(0,0,0)
AutoGenParent101ID31.collider:SetMinPos(434.7,26.3125,141.967)
AutoGenParent101ID31.collider:SetMaxPos(529.408,61.1272,322.047)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID31.collider)
table.insert(colliders,AutoGenParent101ID31)
AutoGenParent101ID32 = {}
AutoGenParent101ID32.collider = OBBCollider.Create(-1)
AutoGenParent101ID32.collider:SetOffset(506.5,42.1678,206.5)
AutoGenParent101ID32.collider:SetZAxis(-0.316228,0,-0.948683)
AutoGenParent101ID32.collider:SetHalfLengths(0.3,5.31694,7.90569)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID32.collider)
table.insert(colliders,AutoGenParent101ID32)
AutoGenParent101ID33 = {}
AutoGenParent101ID33.collider = OBBCollider.Create(-1)
AutoGenParent101ID33.collider:SetOffset(500.5,41.8508,190)
AutoGenParent101ID33.collider:SetZAxis(-0.362446,0,-0.932005)
AutoGenParent101ID33.collider:SetHalfLengths(0.3,5.63388,9.6566)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID33.collider)
table.insert(colliders,AutoGenParent101ID33)
AutoGenParent101ID34 = {}
AutoGenParent101ID34.collider = OBBCollider.Create(-1)
AutoGenParent101ID34.collider:SetOffset(492,41.217,172)
AutoGenParent101ID34.collider:SetZAxis(-0.485643,0,-0.874157)
AutoGenParent101ID34.collider:SetHalfLengths(0.3,6.42622,10.2956)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID34.collider)
table.insert(colliders,AutoGenParent101ID34)
AutoGenParent101ID35 = {}
AutoGenParent101ID35.collider = OBBCollider.Create(-1)
AutoGenParent101ID35.collider:SetOffset(435,52.8348,263)
AutoGenParent101ID35.collider:SetZAxis(0,0,1)
AutoGenParent101ID35.collider:SetHalfLengths(0.3,6.1353,7)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID35.collider)
table.insert(colliders,AutoGenParent101ID35)
AutoGenParent101ID36 = {}
AutoGenParent101ID36.collider = OBBCollider.Create(-1)
AutoGenParent101ID36.collider:SetOffset(436,53.9701,283.5)
AutoGenParent101ID36.collider:SetZAxis(0.0738717,0,0.997268)
AutoGenParent101ID36.collider:SetHalfLengths(0.3,6.81649,13.537)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID36.collider)
table.insert(colliders,AutoGenParent101ID36)
AutoGenParent101ID37 = {}
AutoGenParent101ID37.collider = OBBCollider.Create(-1)
AutoGenParent101ID37.collider:SetOffset(439,55.7866,309.5)
AutoGenParent101ID37.collider:SetZAxis(0.157991,0,0.987441)
AutoGenParent101ID37.collider:SetHalfLengths(0.3,5.3406,12.659)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID37.collider)
table.insert(colliders,AutoGenParent101ID37)
AutoGenParent101ID38 = {}
AutoGenParent101ID38.collider = OBBCollider.Create(-1)
AutoGenParent101ID38.collider:SetOffset(479,44.9813,202.125)
AutoGenParent101ID38.collider:SetZAxis(0,0,1)
AutoGenParent101ID38.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID38.collider)
table.insert(colliders,AutoGenParent101ID38)
AutoGenParent101ID39 = {}
AutoGenParent101ID39.collider = OBBCollider.Create(-1)
AutoGenParent101ID39.collider:SetOffset(461,47.2313,228.125)
AutoGenParent101ID39.collider:SetZAxis(0,0,1)
AutoGenParent101ID39.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent101ID31.collider:AddChild(AutoGenParent101ID39.collider)
table.insert(colliders,AutoGenParent101ID39)
AutoGenParent101ID40 = {}
AutoGenParent101ID40.collider = AABBCollider.Create(-1)
AutoGenParent101ID40.collider:SetOffset(0,0,0)
AutoGenParent101ID40.collider:SetMinPos(440.708,15.2031,104.405)
AutoGenParent101ID40.collider:SetMaxPos(565.408,65.2143,350.111)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID40.collider)
table.insert(colliders,AutoGenParent101ID40)
AutoGenParent101ID41 = {}
AutoGenParent101ID41.collider = OBBCollider.Create(-1)
AutoGenParent101ID41.collider:SetOffset(511.5,41.5339,241.5)
AutoGenParent101ID41.collider:SetZAxis(-0.0370117,0,-0.999315)
AutoGenParent101ID41.collider:SetHalfLengths(0.3,5.31694,13.5093)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID41.collider)
table.insert(colliders,AutoGenParent101ID41)
AutoGenParent101ID42 = {}
AutoGenParent101ID42.collider = OBBCollider.Create(-1)
AutoGenParent101ID42.collider:SetOffset(510,41.8508,221)
AutoGenParent101ID42.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent101ID42.collider:SetHalfLengths(0.3,5.31694,7.07107)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID42.collider)
table.insert(colliders,AutoGenParent101ID42)
AutoGenParent101ID43 = {}
AutoGenParent101ID43.collider = OBBCollider.Create(-1)
AutoGenParent101ID43.collider:SetOffset(474,40.2329,303.5)
AutoGenParent101ID43.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent101ID43.collider:SetHalfLengths(0.3,7.15708,16.7705)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID43.collider)
table.insert(colliders,AutoGenParent101ID43)
AutoGenParent101ID44 = {}
AutoGenParent101ID44.collider = OBBCollider.Create(-1)
AutoGenParent101ID44.collider:SetOffset(467.5,40.2329,291.5)
AutoGenParent101ID44.collider:SetZAxis(-0.613941,0,0.789352)
AutoGenParent101ID44.collider:SetHalfLengths(0.3,15.3313,5.70088)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID44.collider)
table.insert(colliders,AutoGenParent101ID44)
AutoGenParent101ID45 = {}
AutoGenParent101ID45.collider = OBBCollider.Create(-1)
AutoGenParent101ID45.collider:SetOffset(466,50.5642,306)
AutoGenParent101ID45.collider:SetZAxis(0.196116,0,0.980581)
AutoGenParent101ID45.collider:SetHalfLengths(0.3,5.68119,10.198)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID45.collider)
table.insert(colliders,AutoGenParent101ID45)
AutoGenParent101ID46 = {}
AutoGenParent101ID46.collider = OBBCollider.Create(-1)
AutoGenParent101ID46.collider:SetOffset(468.5,51.2454,325.5)
AutoGenParent101ID46.collider:SetZAxis(0.0525588,0,0.998618)
AutoGenParent101ID46.collider:SetHalfLengths(0.3,8.29239,9.51315)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID46.collider)
table.insert(colliders,AutoGenParent101ID46)
AutoGenParent101ID47 = {}
AutoGenParent101ID47.collider = OBBCollider.Create(-1)
AutoGenParent101ID47.collider:SetOffset(442.5,56.1272,328.5)
AutoGenParent101ID47.collider:SetZAxis(0.22486,0,0.974391)
AutoGenParent101ID47.collider:SetHalfLengths(0.3,6.13531,6.67083)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID47.collider)
table.insert(colliders,AutoGenParent101ID47)
AutoGenParent101ID48 = {}
AutoGenParent101ID48.collider = OBBCollider.Create(-1)
AutoGenParent101ID48.collider:SetOffset(447,57.2625,342.5)
AutoGenParent101ID48.collider:SetZAxis(0.371391,0,0.928477)
AutoGenParent101ID48.collider:SetHalfLengths(0.3,7.95179,8.07775)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID48.collider)
table.insert(colliders,AutoGenParent101ID48)
AutoGenParent101ID49 = {}
AutoGenParent101ID49.collider = OBBCollider.Create(-1)
AutoGenParent101ID49.collider:SetOffset(493.5,45.7,247.75)
AutoGenParent101ID49.collider:SetZAxis(0,0,1)
AutoGenParent101ID49.collider:SetHalfLengths(2.8,3.7,2.8)
AutoGenParent101ID40.collider:AddChild(AutoGenParent101ID49.collider)
table.insert(colliders,AutoGenParent101ID49)
AutoGenParent101ID50 = {}
AutoGenParent101ID50.collider = AABBCollider.Create(-1)
AutoGenParent101ID50.collider:SetOffset(0,0,0)
AutoGenParent101ID50.collider:SetMinPos(449.701,28.7617,256)
AutoGenParent101ID50.collider:SetMaxPos(512.3,78.3839,383.3)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID50.collider)
table.insert(colliders,AutoGenParent101ID50)
AutoGenParent101ID51 = {}
AutoGenParent101ID51.collider = OBBCollider.Create(-1)
AutoGenParent101ID51.collider:SetOffset(512,41.5953,300.5)
AutoGenParent101ID51.collider:SetZAxis(0,0,1)
AutoGenParent101ID51.collider:SetHalfLengths(0.3,11.8118,44.5)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID51.collider)
table.insert(colliders,AutoGenParent101ID51)
AutoGenParent101ID52 = {}
AutoGenParent101ID52.collider = OBBCollider.Create(-1)
AutoGenParent101ID52.collider:SetOffset(508,34.7835,352.5)
AutoGenParent101ID52.collider:SetZAxis(-0.470588,0,0.882353)
AutoGenParent101ID52.collider:SetHalfLengths(0.3,6.02178,8.5)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID52.collider)
table.insert(colliders,AutoGenParent101ID52)
AutoGenParent101ID53 = {}
AutoGenParent101ID53.collider = OBBCollider.Create(-1)
AutoGenParent101ID53.collider:SetOffset(502.5,35.8052,364.5)
AutoGenParent101ID53.collider:SetZAxis(-0.316228,0,0.948683)
AutoGenParent101ID53.collider:SetHalfLengths(0.3,6.24884,4.74342)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID53.collider)
table.insert(colliders,AutoGenParent101ID53)
AutoGenParent101ID54 = {}
AutoGenParent101ID54.collider = OBBCollider.Create(-1)
AutoGenParent101ID54.collider:SetOffset(475.5,42.39,334)
AutoGenParent101ID54.collider:SetZAxis(-0.106533,0,0.994309)
AutoGenParent101ID54.collider:SetHalfLengths(0.3,6.58943,14.0801)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID54.collider)
table.insert(colliders,AutoGenParent101ID54)
AutoGenParent101ID55 = {}
AutoGenParent101ID55.collider = OBBCollider.Create(-1)
AutoGenParent101ID55.collider:SetOffset(475.5,43.9794,365.5)
AutoGenParent101ID55.collider:SetZAxis(0.0854011,0,0.996347)
AutoGenParent101ID55.collider:SetHalfLengths(0.3,5.34059,17.5642)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID55.collider)
table.insert(colliders,AutoGenParent101ID55)
AutoGenParent101ID56 = {}
AutoGenParent101ID56.collider = OBBCollider.Create(-1)
AutoGenParent101ID56.collider:SetOffset(469.5,54.5378,347.5)
AutoGenParent101ID56.collider:SetZAxis(0.039968,0,0.999201)
AutoGenParent101ID56.collider:SetHalfLengths(0.3,6.81649,12.51)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID56.collider)
table.insert(colliders,AutoGenParent101ID56)
AutoGenParent101ID57 = {}
AutoGenParent101ID57.collider = OBBCollider.Create(-1)
AutoGenParent101ID57.collider:SetOffset(470,56.3543,371.5)
AutoGenParent101ID57.collider:SetZAxis(0,0,1)
AutoGenParent101ID57.collider:SetHalfLengths(0.3,7.49767,11.5)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID57.collider)
table.insert(colliders,AutoGenParent101ID57)
AutoGenParent101ID58 = {}
AutoGenParent101ID58.collider = OBBCollider.Create(-1)
AutoGenParent101ID58.collider:SetOffset(450.5,60.2143,356.5)
AutoGenParent101ID58.collider:SetZAxis(0.0766965,0,0.997055)
AutoGenParent101ID58.collider:SetHalfLengths(0.3,5.90825,6.5192)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID58.collider)
table.insert(colliders,AutoGenParent101ID58)
AutoGenParent101ID59 = {}
AutoGenParent101ID59.collider = OBBCollider.Create(-1)
AutoGenParent101ID59.collider:SetOffset(452,61.1226,373)
AutoGenParent101ID59.collider:SetZAxis(0.0995037,0,0.995037)
AutoGenParent101ID59.collider:SetHalfLengths(0.3,7.38414,10.0499)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID59.collider)
table.insert(colliders,AutoGenParent101ID59)
AutoGenParent101ID60 = {}
AutoGenParent101ID60.collider = OBBCollider.Create(-1)
AutoGenParent101ID60.collider:SetOffset(473.5,58.852,383)
AutoGenParent101ID60.collider:SetZAxis(1,0,0)
AutoGenParent101ID60.collider:SetHalfLengths(0.3,19.5319,3.5)
AutoGenParent101ID50.collider:AddChild(AutoGenParent101ID60.collider)
table.insert(colliders,AutoGenParent101ID60)
AutoGenParent101ID61 = {}
AutoGenParent101ID61.collider = AABBCollider.Create(-1)
AutoGenParent101ID61.collider:SetOffset(0,0,0)
AutoGenParent101ID61.collider:SetMinPos(500.724,31.3729,368.882)
AutoGenParent101ID61.collider:SetMaxPos(508.26,43.6435,383.149)
AutoGenParent101ID.collider:AddChild(AutoGenParent101ID61.collider)
table.insert(colliders,AutoGenParent101ID61)
AutoGenParent101ID62 = {}
AutoGenParent101ID62.collider = OBBCollider.Create(-1)
AutoGenParent101ID62.collider:SetOffset(502.5,37.0541,372.5)
AutoGenParent101ID62.collider:SetZAxis(0.393919,0,0.919145)
AutoGenParent101ID62.collider:SetHalfLengths(0.3,5.68118,3.80789)
AutoGenParent101ID61.collider:AddChild(AutoGenParent101ID62.collider)
table.insert(colliders,AutoGenParent101ID62)
AutoGenParent101ID63 = {}
AutoGenParent101ID63.collider = OBBCollider.Create(-1)
AutoGenParent101ID63.collider:SetOffset(506,37.7352,379.5)
AutoGenParent101ID63.collider:SetZAxis(0.496139,0,0.868243)
AutoGenParent101ID63.collider:SetHalfLengths(0.3,5.90825,4.03113)
AutoGenParent101ID61.collider:AddChild(AutoGenParent101ID63.collider)
table.insert(colliders,AutoGenParent101ID63)
CollisionHandler.AddAABB(AutoGenParent101ID.collider, 3)
AutoGenParent101ID1 = nil
AutoGenParent101ID2 = nil
AutoGenParent101ID3 = nil
AutoGenParent101ID4 = nil
AutoGenParent101ID5 = nil
AutoGenParent101ID6 = nil
AutoGenParent101ID7 = nil
AutoGenParent101ID8 = nil
AutoGenParent101ID9 = nil
AutoGenParent101ID10 = nil
AutoGenParent101ID11 = nil
AutoGenParent101ID12 = nil
AutoGenParent101ID13 = nil
AutoGenParent101ID14 = nil
AutoGenParent101ID15 = nil
AutoGenParent101ID16 = nil
AutoGenParent101ID17 = nil
AutoGenParent101ID18 = nil
AutoGenParent101ID19 = nil
AutoGenParent101ID20 = nil
AutoGenParent101ID21 = nil
AutoGenParent101ID22 = nil
AutoGenParent101ID23 = nil
AutoGenParent101ID24 = nil
AutoGenParent101ID25 = nil
AutoGenParent101ID26 = nil
AutoGenParent101ID27 = nil
AutoGenParent101ID28 = nil
AutoGenParent101ID29 = nil
AutoGenParent101ID30 = nil
AutoGenParent101ID31 = nil
AutoGenParent101ID32 = nil
AutoGenParent101ID33 = nil
AutoGenParent101ID34 = nil
AutoGenParent101ID35 = nil
AutoGenParent101ID36 = nil
AutoGenParent101ID37 = nil
AutoGenParent101ID38 = nil
AutoGenParent101ID39 = nil
AutoGenParent101ID40 = nil
AutoGenParent101ID41 = nil
AutoGenParent101ID42 = nil
AutoGenParent101ID43 = nil
AutoGenParent101ID44 = nil
AutoGenParent101ID45 = nil
AutoGenParent101ID46 = nil
AutoGenParent101ID47 = nil
AutoGenParent101ID48 = nil
AutoGenParent101ID49 = nil
AutoGenParent101ID50 = nil
AutoGenParent101ID51 = nil
AutoGenParent101ID52 = nil
AutoGenParent101ID53 = nil
AutoGenParent101ID54 = nil
AutoGenParent101ID55 = nil
AutoGenParent101ID56 = nil
AutoGenParent101ID57 = nil
AutoGenParent101ID58 = nil
AutoGenParent101ID59 = nil
AutoGenParent101ID60 = nil
AutoGenParent101ID61 = nil
AutoGenParent101ID62 = nil
AutoGenParent101ID63 = nil
table.insert(colliders,AutoGenParent101ID)
AutoGenParent101ID = nil

table.insert(level01, props)
table.insert(level01, colliders)
table.insert(level01, triggers)
end
level01.unload = function()
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.load = function()
props = {}
colliders = {}
triggers = {}
t4s135ID = {}
t4s135ID.transformID = Transform.Bind()
Transform.SetPosition(t4s135ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s135ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s135ID.transformID, {x=0, y=0, z=0})
t4s135ID.model = Assets.LoadModel('Models/tile4_s1.model')
Gear.AddStaticInstance(t4s135ID.model, t4s135ID.transformID)
table.insert(props,t4s135ID)
t4s135ID = nil

t4s236ID = {}
t4s236ID.transformID = Transform.Bind()
Transform.SetPosition(t4s236ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s236ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s236ID.transformID, {x=0, y=0, z=0})
t4s236ID.model = Assets.LoadModel('Models/tile4_s2.model')
Gear.AddStaticInstance(t4s236ID.model, t4s236ID.transformID)
table.insert(props,t4s236ID)
t4s236ID = nil

t4s337ID = {}
t4s337ID.transformID = Transform.Bind()
Transform.SetPosition(t4s337ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s337ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s337ID.transformID, {x=0, y=0, z=0})
t4s337ID.model = Assets.LoadModel('Models/tile4_s3.model')
Gear.AddStaticInstance(t4s337ID.model, t4s337ID.transformID)
table.insert(props,t4s337ID)
t4s337ID = nil

t4s438ID = {}
t4s438ID.transformID = Transform.Bind()
Transform.SetPosition(t4s438ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s438ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s438ID.transformID, {x=0, y=0, z=0})
t4s438ID.model = Assets.LoadModel('Models/tile4_s4.model')
Gear.AddStaticInstance(t4s438ID.model, t4s438ID.transformID)
table.insert(props,t4s438ID)
t4s438ID = nil

local New269ID = CreateEnemy(ENEMY_MELEE, {x=423.75, y=49.8438, z=237.5})
New269ID.moveSpeed = 9
New269ID.health = 50
New269ID.visionRange = 30

local New2170ID = CreateEnemy(ENEMY_MELEE, {x=436, y=50.4688, z=241.5})
New2170ID.moveSpeed = 9
New2170ID.health = 50
New2170ID.visionRange = 30

local New2271ID = CreateEnemy(ENEMY_MELEE, {x=428.75, y=48.5625, z=231.875})
New2271ID.moveSpeed = 9
New2271ID.health = 50
New2271ID.visionRange = 30

local New2372ID = CreateEnemy(ENEMY_MELEE, {x=476.5, y=39.3125, z=169.25})
New2372ID.moveSpeed = 9
New2372ID.health = 50
New2372ID.visionRange = 30

local New2473ID = CreateEnemy(ENEMY_MELEE, {x=499.75, y=42.1875, z=218.375})
New2473ID.moveSpeed = 9
New2473ID.health = 50
New2473ID.visionRange = 30

local New2574ID = CreateEnemy(ENEMY_MELEE, {x=494.75, y=42.0938, z=225})
New2574ID.moveSpeed = 9
New2574ID.health = 50
New2574ID.visionRange = 30

local New2675ID = CreateEnemy(ENEMY_MELEE, {x=500.25, y=40.0625, z=333.5})
New2675ID.moveSpeed = 9
New2675ID.health = 50
New2675ID.visionRange = 30

local New2776ID = CreateEnemy(ENEMY_MELEE, {x=494, y=40, z=333.75})
New2776ID.moveSpeed = 9
New2776ID.health = 50
New2776ID.visionRange = 30

local New2877ID = CreateEnemy(ENEMY_MELEE, {x=487.5, y=40.5938, z=334.5})
New2877ID.moveSpeed = 9
New2877ID.health = 50
New2877ID.visionRange = 30

local New2978ID = CreateEnemy(ENEMY_MELEE, {x=486.75, y=40.7813, z=329.5})
New2978ID.moveSpeed = 9
New2978ID.health = 50
New2978ID.visionRange = 30

local New21079ID = CreateEnemy(ENEMY_MELEE, {x=493.5, y=40.125, z=328.5})
New21079ID.moveSpeed = 9
New21079ID.health = 50
New21079ID.visionRange = 30

local New21180ID = CreateEnemy(ENEMY_MELEE, {x=500.25, y=40.0938, z=328})
New21180ID.moveSpeed = 9
New21180ID.health = 50
New21180ID.visionRange = 30

local New21281ID = CreateEnemy(ENEMY_MELEE, {x=449.5, y=53.8125, z=283.5})
New21281ID.moveSpeed = 9
New21281ID.health = 50
New21281ID.visionRange = 30

local New21382ID = CreateEnemy(ENEMY_MELEE, {x=448.5, y=53.4375, z=279})
New21382ID.moveSpeed = 9
New21382ID.health = 50
New21382ID.visionRange = 30

table.insert(level02, props)
table.insert(level02, colliders)
table.insert(level02, triggers)
end
level02.unload = function()
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.load = function()
props = {}
colliders = {}
triggers = {}
table.insert(level03, props)
table.insert(level03, colliders)
table.insert(level03, triggers)
end
level03.unload = function()
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------


-------------------------------------level04-----------------------------------------------

level04 = {}
level04.load = function()
props = {}
colliders = {}
triggers = {}
tile434ID = {}
tile434ID.transformID = Transform.Bind()
Transform.SetPosition(tile434ID.transformID, {x=384, y=0, z=256})
Transform.SetScaleNonUniform(tile434ID.transformID, 1, 1, 1)
Transform.SetRotation(tile434ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile434ID)
tile434ID = nil

table.insert(level04, props)
table.insert(level04, colliders)
table.insert(level04, triggers)
end
level04.unload = function()
end
levels[4] = level04
-------------------------------------level04-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
AI.AddHeightMap(heightmaps[i].asset,i)
end
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)--,#heightmaps,widthTest,heightTest)
