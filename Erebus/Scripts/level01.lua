levels = {}
heightmaps = {}

---------------------------------Hieghtmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_height.png")
Heightmap1.asset:SetPosition({x=0, y=-0.67693, z=128})
Heightmap1.asset:SetHeightMultiplier(0.147291)
Heightmap1.surrounding = { 2 }
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_height.png")
Heightmap2.asset:SetPosition({x=128, y=32.1865, z=0})
Heightmap2.asset:SetHeightMultiplier(0.111404)
Heightmap2.surrounding = { 1, 3 }
heightmaps[2] = Heightmap2
Heightmap2 = nil
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap3.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap3.asset:SetHeightMultiplier(0.158469)
Heightmap3.surrounding = { 2, 4 }
heightmaps[3] = Heightmap3
Heightmap3 = nil
Heightmap4 = {}
Heightmap4.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap4.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap4.asset:SetHeightMultiplier(0.128707)
Heightmap4.surrounding = {  }
heightmaps[4] = Heightmap4
Heightmap4 = nil
Heightmap5 = {}
Heightmap5.asset = Assets.LoadHeightmap("Textures/tile5_height.png")
Heightmap5.asset:SetPosition({x=384, y=38.5561, z=384})
Heightmap5.asset:SetHeightMultiplier(0.260571)
Heightmap5.surrounding = { 4, 6 }
heightmaps[5] = Heightmap5
Heightmap5 = nil
Heightmap6 = {}
Heightmap6.asset = Assets.LoadHeightmap("Textures/tile6_height.png")
Heightmap6.asset:SetPosition({x=384, y=85.0848, z=640})
Heightmap6.asset:SetHeightMultiplier(0.0852758)
Heightmap6.surrounding = { 5, 7 }
heightmaps[6] = Heightmap6
Heightmap6 = nil
Heightmap7 = {}
Heightmap7.asset = Assets.LoadHeightmap("Textures/tile7_height.png")
Heightmap7.asset:SetPosition({x=128, y=81.2563, z=512})
Heightmap7.asset:SetHeightMultiplier(0.241725)
Heightmap7.surrounding = { 6, 8 }
heightmaps[7] = Heightmap7
Heightmap7 = nil
Heightmap8 = {}
Heightmap8.asset = Assets.LoadHeightmap("Textures/tile8_height.png")
Heightmap8.asset:SetPosition({x=256, y=100, z=384})
Heightmap8.asset:SetHeightMultiplier(0.165535)
Heightmap8.surrounding = { 7 }
heightmaps[8] = Heightmap8
Heightmap8 = nil

---------------------------------Hieghtmap-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.load = function()
props = {}
colliders = {}
triggers = {}
TilePlaceholder2ID = {}
TilePlaceholder2ID.transformID = Transform.Bind()
Transform.SetPosition(TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(TilePlaceholder2ID.transformID, 1, 1, 1)
Transform.SetRotation(TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
TilePlaceholder2ID.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
Gear.AddStaticInstance(TilePlaceholder2ID.model, TilePlaceholder2ID.transformID)
table.insert(props,TilePlaceholder2ID)
TilePlaceholder2ID = nil

tile13ID = {}
tile13ID.transformID = Transform.Bind()
Transform.SetPosition(tile13ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile13ID.transformID, 1, 1, 1)
Transform.SetRotation(tile13ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile13ID)
tile13ID = nil

TileSettings4ID = {}
Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(heightmaps[1])
table.insert(props,TileSettings4ID)
TileSettings4ID = nil

m16ID = {}
m16ID.transformID = Transform.Bind()
Transform.SetPosition(m16ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m16ID.transformID, 1, 1, 1)
Transform.SetRotation(m16ID.transformID, {x=0, y=0, z=0})
m16ID.model = Assets.LoadModel('Models/tile1_m1.model')
Gear.AddStaticInstance(m16ID.model, m16ID.transformID)
table.insert(props,m16ID)
m16ID = nil

m27ID = {}
m27ID.transformID = Transform.Bind()
Transform.SetPosition(m27ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m27ID.transformID, 1, 1, 1)
Transform.SetRotation(m27ID.transformID, {x=0, y=0, z=0})
m27ID.model = Assets.LoadModel('Models/tile1_m2.model')
Gear.AddStaticInstance(m27ID.model, m27ID.transformID)
table.insert(props,m27ID)
m27ID = nil

m38ID = {}
m38ID.transformID = Transform.Bind()
Transform.SetPosition(m38ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m38ID.transformID, 1, 1, 1)
Transform.SetRotation(m38ID.transformID, {x=0, y=0, z=0})
m38ID.model = Assets.LoadModel('Models/tile1_m3.model')
Gear.AddStaticInstance(m38ID.model, m38ID.transformID)
table.insert(props,m38ID)
m38ID = nil

m49ID = {}
m49ID.transformID = Transform.Bind()
Transform.SetPosition(m49ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m49ID.transformID, 1, 1, 1)
Transform.SetRotation(m49ID.transformID, {x=0, y=0, z=0})
m49ID.model = Assets.LoadModel('Models/tile1_m4.model')
Gear.AddStaticInstance(m49ID.model, m49ID.transformID)
table.insert(props,m49ID)
m49ID = nil

m510ID = {}
m510ID.transformID = Transform.Bind()
Transform.SetPosition(m510ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m510ID.transformID, 1, 1, 1)
Transform.SetRotation(m510ID.transformID, {x=0, y=0, z=0})
m510ID.model = Assets.LoadModel('Models/tile1_m5.model')
Gear.AddStaticInstance(m510ID.model, m510ID.transformID)
table.insert(props,m510ID)
m510ID = nil

m611ID = {}
m611ID.transformID = Transform.Bind()
Transform.SetPosition(m611ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m611ID.transformID, 1, 1, 1)
Transform.SetRotation(m611ID.transformID, {x=0, y=0, z=0})
m611ID.model = Assets.LoadModel('Models/tile1_m6.model')
Gear.AddStaticInstance(m611ID.model, m611ID.transformID)
table.insert(props,m611ID)
m611ID = nil

m712ID = {}
m712ID.transformID = Transform.Bind()
Transform.SetPosition(m712ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m712ID.transformID, 1, 1, 1)
Transform.SetRotation(m712ID.transformID, {x=0, y=0, z=0})
m712ID.model = Assets.LoadModel('Models/tile1_m7.model')
Gear.AddStaticInstance(m712ID.model, m712ID.transformID)
table.insert(props,m712ID)
m712ID = nil

m813ID = {}
m813ID.transformID = Transform.Bind()
Transform.SetPosition(m813ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(m813ID.transformID, 1, 1, 1)
Transform.SetRotation(m813ID.transformID, {x=0, y=0, z=0})
m813ID.model = Assets.LoadModel('Models/tile1_m8.model')
Gear.AddStaticInstance(m813ID.model, m813ID.transformID)
table.insert(props,m813ID)
m813ID = nil

s114ID = {}
s114ID.transformID = Transform.Bind()
Transform.SetPosition(s114ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s114ID.transformID, 1, 1, 1)
Transform.SetRotation(s114ID.transformID, {x=0, y=0, z=0})
s114ID.model = Assets.LoadModel('Models/tile1_s1.model')
Gear.AddStaticInstance(s114ID.model, s114ID.transformID)
table.insert(props,s114ID)
s114ID = nil

s215ID = {}
s215ID.transformID = Transform.Bind()
Transform.SetPosition(s215ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s215ID.transformID, 1, 1, 1)
Transform.SetRotation(s215ID.transformID, {x=0, y=0, z=0})
s215ID.model = Assets.LoadModel('Models/tile1_s2.model')
Gear.AddStaticInstance(s215ID.model, s215ID.transformID)
table.insert(props,s215ID)
s215ID = nil

s316ID = {}
s316ID.transformID = Transform.Bind()
Transform.SetPosition(s316ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s316ID.transformID, 1, 1, 1)
Transform.SetRotation(s316ID.transformID, {x=0, y=0, z=0})
s316ID.model = Assets.LoadModel('Models/tile1_s3.model')
Gear.AddStaticInstance(s316ID.model, s316ID.transformID)
table.insert(props,s316ID)
s316ID = nil

s417ID = {}
s417ID.transformID = Transform.Bind()
Transform.SetPosition(s417ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s417ID.transformID, 1, 1, 1)
Transform.SetRotation(s417ID.transformID, {x=0, y=0, z=0})
s417ID.model = Assets.LoadModel('Models/tile1_s4.model')
Gear.AddStaticInstance(s417ID.model, s417ID.transformID)
table.insert(props,s417ID)
s417ID = nil

s518ID = {}
s518ID.transformID = Transform.Bind()
Transform.SetPosition(s518ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s518ID.transformID, 1, 1, 1)
Transform.SetRotation(s518ID.transformID, {x=0, y=0, z=0})
s518ID.model = Assets.LoadModel('Models/tile1_s5.model')
Gear.AddStaticInstance(s518ID.model, s518ID.transformID)
table.insert(props,s518ID)
s518ID = nil

s619ID = {}
s619ID.transformID = Transform.Bind()
Transform.SetPosition(s619ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s619ID.transformID, 1, 1, 1)
Transform.SetRotation(s619ID.transformID, {x=0, y=0, z=0})
s619ID.model = Assets.LoadModel('Models/tile1_s6.model')
Gear.AddStaticInstance(s619ID.model, s619ID.transformID)
table.insert(props,s619ID)
s619ID = nil

s720ID = {}
s720ID.transformID = Transform.Bind()
Transform.SetPosition(s720ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(s720ID.transformID, 1, 1, 1)
Transform.SetRotation(s720ID.transformID, {x=0, y=0, z=0})
s720ID.model = Assets.LoadModel('Models/tile1_s7.model')
Gear.AddStaticInstance(s720ID.model, s720ID.transformID)
table.insert(props,s720ID)
s720ID = nil

AutoGenParent382ID = {}
AutoGenParent382ID.transformID = Transform.Bind()
Transform.SetPosition(AutoGenParent382ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(AutoGenParent382ID.transformID, 1, 1, 1)
Transform.SetRotation(AutoGenParent382ID.transformID, {x=0, y=0, z=0})
AutoGenParent382ID.collider = AABBCollider.Create(AutoGenParent382ID.transformID)
AutoGenParent382ID.collider:SetOffset(0,0,0)
AutoGenParent382ID.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent382ID.collider:SetMaxPos(512.3,68.8781,255.3)
AutoGenParent382ID1 = {}
AutoGenParent382ID1.collider = AABBCollider.Create(-1)
AutoGenParent382ID1.collider:SetOffset(0,0,0)
AutoGenParent382ID1.collider:SetMinPos(1.74275,-3.32028,33.7004)
AutoGenParent382ID1.collider:SetMaxPos(276.131,62.9209,237.297)
AutoGenParent382ID.collider:AddChild(AutoGenParent382ID1.collider)
table.insert(colliders,AutoGenParent382ID1)
AutoGenParent382ID2 = {}
AutoGenParent382ID2.collider = AABBCollider.Create(-1)
AutoGenParent382ID2.collider:SetOffset(0,0,0)
AutoGenParent382ID2.collider:SetMinPos(3.70232,1.54031,127.732)
AutoGenParent382ID2.collider:SetMaxPos(56.2942,14.3388,163.037)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID2.collider)
table.insert(colliders,AutoGenParent382ID2)
AutoGenParent382ID3 = {}
AutoGenParent382ID3.collider = OBBCollider.Create(-1)
AutoGenParent382ID3.collider:SetOffset(6,6.83489,143)
AutoGenParent382ID3.collider:SetZAxis(0.447214,0,-0.894427)
AutoGenParent382ID3.collider:SetHalfLengths(0.3,5.29458,4.47214)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID3.collider)
table.insert(colliders,AutoGenParent382ID3)
AutoGenParent382ID4 = {}
AutoGenParent382ID4.collider = OBBCollider.Create(-1)
AutoGenParent382ID4.collider:SetOffset(10.5,7.12947,140)
AutoGenParent382ID4.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent382ID4.collider:SetHalfLengths(0.3,5.14729,2.69258)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID4.collider)
table.insert(colliders,AutoGenParent382ID4)
AutoGenParent382ID5 = {}
AutoGenParent382ID5.collider = OBBCollider.Create(-1)
AutoGenParent382ID5.collider:SetOffset(17,6.98218,141)
AutoGenParent382ID5.collider:SetZAxis(1,0,0)
AutoGenParent382ID5.collider:SetHalfLengths(0.3,5,4)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID5.collider)
table.insert(colliders,AutoGenParent382ID5)
AutoGenParent382ID6 = {}
AutoGenParent382ID6.collider = OBBCollider.Create(-1)
AutoGenParent382ID6.collider:SetOffset(45,8.60238,129.5)
AutoGenParent382ID6.collider:SetZAxis(-0.894427,0,-0.447214)
AutoGenParent382ID6.collider:SetHalfLengths(0.3,5.29458,3.3541)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID6.collider)
table.insert(colliders,AutoGenParent382ID6)
AutoGenParent382ID7 = {}
AutoGenParent382ID7.collider = OBBCollider.Create(-1)
AutoGenParent382ID7.collider:SetOffset(51.5,8.60238,137)
AutoGenParent382ID7.collider:SetZAxis(0.503871,0,0.863779)
AutoGenParent382ID7.collider:SetHalfLengths(0.3,5.73645,6.94622)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID7.collider)
table.insert(colliders,AutoGenParent382ID7)
AutoGenParent382ID8 = {}
AutoGenParent382ID8.collider = OBBCollider.Create(-1)
AutoGenParent382ID8.collider:SetOffset(55.5,9.33883,145.5)
AutoGenParent382ID8.collider:SetZAxis(0.196116,0,0.980581)
AutoGenParent382ID8.collider:SetHalfLengths(0.3,5,2.54951)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID8.collider)
table.insert(colliders,AutoGenParent382ID8)
AutoGenParent382ID9 = {}
AutoGenParent382ID9.collider = OBBCollider.Create(-1)
AutoGenParent382ID9.collider:SetOffset(35,7.12947,155)
AutoGenParent382ID9.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent382ID9.collider:SetHalfLengths(0.3,5.14729,3.16228)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID9.collider)
table.insert(colliders,AutoGenParent382ID9)
AutoGenParent382ID10 = {}
AutoGenParent382ID10.collider = OBBCollider.Create(-1)
AutoGenParent382ID10.collider:SetOffset(4.5,6.83489,147.5)
AutoGenParent382ID10.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID10.collider:SetHalfLengths(0.3,5.14729,0.707107)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID10.collider)
table.insert(colliders,AutoGenParent382ID10)
AutoGenParent382ID11 = {}
AutoGenParent382ID11.collider = OBBCollider.Create(-1)
AutoGenParent382ID11.collider:SetOffset(5,6.98218,151.5)
AutoGenParent382ID11.collider:SetZAxis(0,0,1)
AutoGenParent382ID11.collider:SetHalfLengths(0.3,5.44187,3.5)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID11.collider)
table.insert(colliders,AutoGenParent382ID11)
AutoGenParent382ID12 = {}
AutoGenParent382ID12.collider = OBBCollider.Create(-1)
AutoGenParent382ID12.collider:SetOffset(4.5,7.42405,159)
AutoGenParent382ID12.collider:SetZAxis(-0.124035,0,0.992278)
AutoGenParent382ID12.collider:SetHalfLengths(0.3,5.88374,4.03113)
AutoGenParent382ID2.collider:AddChild(AutoGenParent382ID12.collider)
table.insert(colliders,AutoGenParent382ID12)
AutoGenParent382ID13 = {}
AutoGenParent382ID13.collider = AABBCollider.Create(-1)
AutoGenParent382ID13.collider:SetOffset(0,0,0)
AutoGenParent382ID13.collider:SetMinPos(1.74275,-2.14196,44.8336)
AutoGenParent382ID13.collider:SetMaxPos(189.25,62.9209,199.154)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID13.collider)
table.insert(colliders,AutoGenParent382ID13)
AutoGenParent382ID14 = {}
AutoGenParent382ID14.collider = OBBCollider.Create(-1)
AutoGenParent382ID14.collider:SetOffset(54.5,8.01322,183)
AutoGenParent382ID14.collider:SetZAxis(-0.640184,0,0.768221)
AutoGenParent382ID14.collider:SetHalfLengths(0.3,5,3.90512)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID14.collider)
table.insert(colliders,AutoGenParent382ID14)
AutoGenParent382ID15 = {}
AutoGenParent382ID15.collider = OBBCollider.Create(-1)
AutoGenParent382ID15.collider:SetOffset(49,8.01322,186.5)
AutoGenParent382ID15.collider:SetZAxis(-0.986394,0,0.164399)
AutoGenParent382ID15.collider:SetHalfLengths(0.3,5,3.04138)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID15.collider)
table.insert(colliders,AutoGenParent382ID15)
AutoGenParent382ID16 = {}
AutoGenParent382ID16.collider = OBBCollider.Create(-1)
AutoGenParent382ID16.collider:SetOffset(44,8.01322,187)
AutoGenParent382ID16.collider:SetZAxis(-1,0,0)
AutoGenParent382ID16.collider:SetHalfLengths(0.3,5,2)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID16.collider)
table.insert(colliders,AutoGenParent382ID16)
AutoGenParent382ID17 = {}
AutoGenParent382ID17.collider = OBBCollider.Create(-1)
AutoGenParent382ID17.collider:SetOffset(40,8.01322,185.5)
AutoGenParent382ID17.collider:SetZAxis(-0.8,0,-0.6)
AutoGenParent382ID17.collider:SetHalfLengths(0.3,5.29458,2.5)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID17.collider)
table.insert(colliders,AutoGenParent382ID17)
AutoGenParent382ID18 = {}
AutoGenParent382ID18.collider = OBBCollider.Create(-1)
AutoGenParent382ID18.collider:SetOffset(32,5.50927,189.5)
AutoGenParent382ID18.collider:SetZAxis(0.732794,0,0.680451)
AutoGenParent382ID18.collider:SetHalfLengths(0.3,7.65123,9.55249)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID18.collider)
table.insert(colliders,AutoGenParent382ID18)
AutoGenParent382ID19 = {}
AutoGenParent382ID19.collider = OBBCollider.Create(-1)
AutoGenParent382ID19.collider:SetOffset(3.5,4.03637,196.5)
AutoGenParent382ID19.collider:SetZAxis(0.514496,0,0.857493)
AutoGenParent382ID19.collider:SetHalfLengths(0.3,5.58916,2.91548)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID19.collider)
table.insert(colliders,AutoGenParent382ID19)
AutoGenParent382ID20 = {}
AutoGenParent382ID20.collider = OBBCollider.Create(-1)
AutoGenParent382ID20.collider:SetOffset(23,4.33095,190.5)
AutoGenParent382ID20.collider:SetZAxis(0.478852,0,0.877896)
AutoGenParent382ID20.collider:SetHalfLengths(0.3,6.03103,6.26498)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID20.collider)
table.insert(colliders,AutoGenParent382ID20)
AutoGenParent382ID21 = {}
AutoGenParent382ID21.collider = OBBCollider.Create(-1)
AutoGenParent382ID21.collider:SetOffset(176.5,56.584,78.5)
AutoGenParent382ID21.collider:SetZAxis(0.058722,0,-0.998274)
AutoGenParent382ID21.collider:SetHalfLengths(0.3,5.33421,8.51469)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID21.collider)
table.insert(colliders,AutoGenParent382ID21)
AutoGenParent382ID22 = {}
AutoGenParent382ID22.collider = OBBCollider.Create(-1)
AutoGenParent382ID22.collider:SetOffset(179,56.2498,63.5)
AutoGenParent382ID22.collider:SetZAxis(0.294086,0,-0.955779)
AutoGenParent382ID22.collider:SetHalfLengths(0.3,6.67107,6.80074)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID22.collider)
table.insert(colliders,AutoGenParent382ID22)
AutoGenParent382ID23 = {}
AutoGenParent382ID23.collider = OBBCollider.Create(-1)
AutoGenParent382ID23.collider:SetOffset(185,54.5788,51)
AutoGenParent382ID23.collider:SetZAxis(0.5547,0,-0.83205)
AutoGenParent382ID23.collider:SetHalfLengths(0.3,6.00264,7.2111)
AutoGenParent382ID13.collider:AddChild(AutoGenParent382ID23.collider)
table.insert(colliders,AutoGenParent382ID23)
AutoGenParent382ID24 = {}
AutoGenParent382ID24.collider = AABBCollider.Create(-1)
AutoGenParent382ID24.collider:SetOffset(0,0,0)
AutoGenParent382ID24.collider:SetMinPos(4.75038,-3.32028,37.7542)
AutoGenParent382ID24.collider:SetMaxPos(199.172,59.2445,204.293)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID24.collider)
table.insert(colliders,AutoGenParent382ID24)
AutoGenParent382ID25 = {}
AutoGenParent382ID25.collider = OBBCollider.Create(-1)
AutoGenParent382ID25.collider:SetOffset(37.5,8.16051,196.5)
AutoGenParent382ID25.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent382ID25.collider:SetHalfLengths(0.3,5.14729,1.58114)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID25.collider)
table.insert(colliders,AutoGenParent382ID25)
AutoGenParent382ID26 = {}
AutoGenParent382ID26.collider = OBBCollider.Create(-1)
AutoGenParent382ID26.collider:SetOffset(35.5,8.16051,198)
AutoGenParent382ID26.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID26.collider:SetHalfLengths(0.3,5.14729,3.3541)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID26.collider)
table.insert(colliders,AutoGenParent382ID26)
AutoGenParent382ID27 = {}
AutoGenParent382ID27.collider = OBBCollider.Create(-1)
AutoGenParent382ID27.collider:SetOffset(6,3.44721,200.5)
AutoGenParent382ID27.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent382ID27.collider:SetHalfLengths(0.3,5,1.80278)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID27.collider)
table.insert(colliders,AutoGenParent382ID27)
AutoGenParent382ID28 = {}
AutoGenParent382ID28.collider = OBBCollider.Create(-1)
AutoGenParent382ID28.collider:SetOffset(7.5,3.44721,203)
AutoGenParent382ID28.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID28.collider:SetHalfLengths(0.3,5.14729,1.11803)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID28.collider)
table.insert(colliders,AutoGenParent382ID28)
AutoGenParent382ID29 = {}
AutoGenParent382ID29.collider = OBBCollider.Create(-1)
AutoGenParent382ID29.collider:SetOffset(15,3.29992,202.5)
AutoGenParent382ID29.collider:SetZAxis(0.977802,0,-0.209529)
AutoGenParent382ID29.collider:SetHalfLengths(0.3,5.14729,7.15891)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID29.collider)
table.insert(colliders,AutoGenParent382ID29)
AutoGenParent382ID30 = {}
AutoGenParent382ID30.collider = OBBCollider.Create(-1)
AutoGenParent382ID30.collider:SetOffset(24.5,3.15263,199.5)
AutoGenParent382ID30.collider:SetZAxis(0.857493,0,-0.514496)
AutoGenParent382ID30.collider:SetHalfLengths(0.3,6.47291,2.91548)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID30.collider)
table.insert(colliders,AutoGenParent382ID30)
AutoGenParent382ID31 = {}
AutoGenParent382ID31.collider = OBBCollider.Create(-1)
AutoGenParent382ID31.collider:SetOffset(27,5.36198,196.5)
AutoGenParent382ID31.collider:SetZAxis(0.894427,0,0.447214)
AutoGenParent382ID31.collider:SetHalfLengths(0.3,7.35665,1.11803)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID31.collider)
table.insert(colliders,AutoGenParent382ID31)
AutoGenParent382ID32 = {}
AutoGenParent382ID32.collider = OBBCollider.Create(-1)
AutoGenParent382ID32.collider:SetOffset(29,7.71863,197)
AutoGenParent382ID32.collider:SetZAxis(1,0,0)
AutoGenParent382ID32.collider:SetHalfLengths(0.3,5.44187,1)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID32.collider)
table.insert(colliders,AutoGenParent382ID32)
AutoGenParent382ID33 = {}
AutoGenParent382ID33.collider = OBBCollider.Create(-1)
AutoGenParent382ID33.collider:SetOffset(31.5,8.16051,200)
AutoGenParent382ID33.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID33.collider:SetHalfLengths(0.3,5.73645,3.3541)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID33.collider)
table.insert(colliders,AutoGenParent382ID33)
AutoGenParent382ID34 = {}
AutoGenParent382ID34.collider = OBBCollider.Create(-1)
AutoGenParent382ID34.collider:SetOffset(194,53.5761,41.5)
AutoGenParent382ID34.collider:SetZAxis(0.819232,0,-0.573462)
AutoGenParent382ID34.collider:SetHalfLengths(0.3,5.66843,6.10328)
AutoGenParent382ID24.collider:AddChild(AutoGenParent382ID34.collider)
table.insert(colliders,AutoGenParent382ID34)
AutoGenParent382ID35 = {}
AutoGenParent382ID35.collider = AABBCollider.Create(-1)
AutoGenParent382ID35.collider:SetOffset(0,0,0)
AutoGenParent382ID35.collider:SetMinPos(31.7559,1.98218,33.7395)
AutoGenParent382ID35.collider:SetMaxPos(206.149,62.0297,211.174)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID35.collider)
table.insert(colliders,AutoGenParent382ID35)
AutoGenParent382ID36 = {}
AutoGenParent382ID36.collider = OBBCollider.Create(-1)
AutoGenParent382ID36.collider:SetOffset(42.5,8.3078,200)
AutoGenParent382ID36.collider:SetZAxis(0.98387,0,-0.178885)
AutoGenParent382ID36.collider:SetHalfLengths(0.3,6.32561,5.59017)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID36.collider)
table.insert(colliders,AutoGenParent382ID36)
AutoGenParent382ID37 = {}
AutoGenParent382ID37.collider = OBBCollider.Create(-1)
AutoGenParent382ID37.collider:SetOffset(50.5,9.63341,202.5)
AutoGenParent382ID37.collider:SetZAxis(0.581238,0,0.813733)
AutoGenParent382ID37.collider:SetHalfLengths(0.3,5.73645,4.30116)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID37.collider)
table.insert(colliders,AutoGenParent382ID37)
AutoGenParent382ID38 = {}
AutoGenParent382ID38.collider = OBBCollider.Create(-1)
AutoGenParent382ID38.collider:SetOffset(32.5,8.89696,203.5)
AutoGenParent382ID38.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent382ID38.collider:SetHalfLengths(0.3,5.44187,0.707107)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID38.collider)
table.insert(colliders,AutoGenParent382ID38)
AutoGenParent382ID39 = {}
AutoGenParent382ID39.collider = OBBCollider.Create(-1)
AutoGenParent382ID39.collider:SetOffset(34.5,8.45509,207.5)
AutoGenParent382ID39.collider:SetZAxis(0.581238,0,0.813733)
AutoGenParent382ID39.collider:SetHalfLengths(0.3,5.14729,4.30116)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID39.collider)
table.insert(colliders,AutoGenParent382ID39)
AutoGenParent382ID40 = {}
AutoGenParent382ID40.collider = OBBCollider.Create(-1)
AutoGenParent382ID40.collider:SetOffset(139.5,48.7857,153)
AutoGenParent382ID40.collider:SetZAxis(0.351123,0,-0.936329)
AutoGenParent382ID40.collider:SetHalfLengths(0.3,6.44826,4.272)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID40.collider)
table.insert(colliders,AutoGenParent382ID40)
AutoGenParent382ID41 = {}
AutoGenParent382ID41.collider = OBBCollider.Create(-1)
AutoGenParent382ID41.collider:SetOffset(144.5,50.234,147.5)
AutoGenParent382ID41.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent382ID41.collider:SetHalfLengths(0.3,5.22281,3.80789)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID41.collider)
table.insert(colliders,AutoGenParent382ID41)
AutoGenParent382ID42 = {}
AutoGenParent382ID42.collider = OBBCollider.Create(-1)
AutoGenParent382ID42.collider:SetOffset(181.5,55.2472,112)
AutoGenParent382ID42.collider:SetZAxis(-0.287348,0,-0.957826)
AutoGenParent382ID42.collider:SetHalfLengths(0.3,6.55966,15.6605)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID42.collider)
table.insert(colliders,AutoGenParent382ID42)
AutoGenParent382ID43 = {}
AutoGenParent382ID43.collider = OBBCollider.Create(-1)
AutoGenParent382ID43.collider:SetOffset(176.5,56.8068,92)
AutoGenParent382ID43.collider:SetZAxis(-0.0995037,0,-0.995037)
AutoGenParent382ID43.collider:SetHalfLengths(0.3,5.22281,5.02494)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID43.collider)
table.insert(colliders,AutoGenParent382ID43)
AutoGenParent382ID44 = {}
AutoGenParent382ID44.collider = OBBCollider.Create(-1)
AutoGenParent382ID44.collider:SetOffset(202.5,52.9077,36)
AutoGenParent382ID44.collider:SetZAxis(0.868243,0,-0.496139)
AutoGenParent382ID44.collider:SetHalfLengths(0.3,5.89124,4.03113)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID44.collider)
table.insert(colliders,AutoGenParent382ID44)
AutoGenParent382ID45 = {}
AutoGenParent382ID45.collider = OBBCollider.Create(-1)
AutoGenParent382ID45.collider:SetOffset(197,53.6875,59.5)
AutoGenParent382ID45.collider:SetZAxis(-0.5547,0,0.83205)
AutoGenParent382ID45.collider:SetHalfLengths(0.3,5.89124,5.40833)
AutoGenParent382ID35.collider:AddChild(AutoGenParent382ID45.collider)
table.insert(colliders,AutoGenParent382ID45)
AutoGenParent382ID46 = {}
AutoGenParent382ID46.collider = AABBCollider.Create(-1)
AutoGenParent382ID46.collider:SetOffset(0,0,0)
AutoGenParent382ID46.collider:SetMinPos(36.8512,2.86592,33.7004)
AutoGenParent382ID46.collider:SetMaxPos(225.016,61.584,215.26)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID46.collider)
table.insert(colliders,AutoGenParent382ID46)
AutoGenParent382ID47 = {}
AutoGenParent382ID47.collider = OBBCollider.Create(-1)
AutoGenParent382ID47.collider:SetOffset(55,10.3699,207.5)
AutoGenParent382ID47.collider:SetZAxis(0.8,0,0.6)
AutoGenParent382ID47.collider:SetHalfLengths(0.3,6.03103,2.5)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID47.collider)
table.insert(colliders,AutoGenParent382ID47)
AutoGenParent382ID48 = {}
AutoGenParent382ID48.collider = OBBCollider.Create(-1)
AutoGenParent382ID48.collider:SetOffset(85.5,20.091,198)
AutoGenParent382ID48.collider:SetZAxis(0.759257,0,-0.650791)
AutoGenParent382ID48.collider:SetHalfLengths(0.3,8.0931,4.60977)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID48.collider)
table.insert(colliders,AutoGenParent382ID48)
AutoGenParent382ID49 = {}
AutoGenParent382ID49.collider = OBBCollider.Create(-1)
AutoGenParent382ID49.collider:SetOffset(95,23.1841,192.5)
AutoGenParent382ID49.collider:SetZAxis(0.923077,0,-0.384615)
AutoGenParent382ID49.collider:SetHalfLengths(0.3,8.82956,6.5)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID49.collider)
table.insert(colliders,AutoGenParent382ID49)
AutoGenParent382ID50 = {}
AutoGenParent382ID50.collider = OBBCollider.Create(-1)
AutoGenParent382ID50.collider:SetOffset(40.5,8.60238,213)
AutoGenParent382ID50.collider:SetZAxis(0.868243,0,0.496139)
AutoGenParent382ID50.collider:SetHalfLengths(0.3,5.73645,4.03113)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID50.collider)
table.insert(colliders,AutoGenParent382ID50)
AutoGenParent382ID51 = {}
AutoGenParent382ID51.collider = OBBCollider.Create(-1)
AutoGenParent382ID51.collider:SetOffset(139,44.2181,162.5)
AutoGenParent382ID51.collider:SetZAxis(-0.178885,0,-0.98387)
AutoGenParent382ID51.collider:SetHalfLengths(0.3,9.56758,5.59017)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID51.collider)
table.insert(colliders,AutoGenParent382ID51)
AutoGenParent382ID52 = {}
AutoGenParent382ID52.collider = OBBCollider.Create(-1)
AutoGenParent382ID52.collider:SetOffset(152,50.4568,146.5)
AutoGenParent382ID52.collider:SetZAxis(0.992278,0,0.124035)
AutoGenParent382ID52.collider:SetHalfLengths(0.3,5.22281,4.03113)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID52.collider)
table.insert(colliders,AutoGenParent382ID52)
AutoGenParent382ID53 = {}
AutoGenParent382ID53.collider = OBBCollider.Create(-1)
AutoGenParent382ID53.collider:SetOffset(215.5,52.0165,34.5)
AutoGenParent382ID53.collider:SetZAxis(0.998618,0,0.0525588)
AutoGenParent382ID53.collider:SetHalfLengths(0.3,9.01056,9.51315)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID53.collider)
table.insert(colliders,AutoGenParent382ID53)
AutoGenParent382ID54 = {}
AutoGenParent382ID54.collider = OBBCollider.Create(-1)
AutoGenParent382ID54.collider:SetOffset(204.5,52.2393,52)
AutoGenParent382ID54.collider:SetZAxis(-0.83205,0,0.5547)
AutoGenParent382ID54.collider:SetHalfLengths(0.3,6.44826,5.40833)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID54.collider)
table.insert(colliders,AutoGenParent382ID54)
AutoGenParent382ID55 = {}
AutoGenParent382ID55.collider = OBBCollider.Create(-1)
AutoGenParent382ID55.collider:SetOffset(193.5,54.5788,70.5)
AutoGenParent382ID55.collider:SetZAxis(-0.0766965,0,0.997055)
AutoGenParent382ID55.collider:SetHalfLengths(0.3,6.00264,6.5192)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID55.collider)
table.insert(colliders,AutoGenParent382ID55)
AutoGenParent382ID56 = {}
AutoGenParent382ID56.collider = OBBCollider.Create(-1)
AutoGenParent382ID56.collider:SetOffset(194,55.5814,84)
AutoGenParent382ID56.collider:SetZAxis(0.141421,0,0.98995)
AutoGenParent382ID56.collider:SetHalfLengths(0.3,6.00264,7.07107)
AutoGenParent382ID46.collider:AddChild(AutoGenParent382ID56.collider)
table.insert(colliders,AutoGenParent382ID56)
AutoGenParent382ID57 = {}
AutoGenParent382ID57.collider = AABBCollider.Create(-1)
AutoGenParent382ID57.collider:SetOffset(0,0,0)
AutoGenParent382ID57.collider:SetMinPos(43.9576,2.71863,47.7023)
AutoGenParent382ID57.collider:SetMaxPos(217.037,62.1411,217.297)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID57.collider)
table.insert(colliders,AutoGenParent382ID57)
AutoGenParent382ID58 = {}
AutoGenParent382ID58.collider = OBBCollider.Create(-1)
AutoGenParent382ID58.collider:SetOffset(62,11.4009,208)
AutoGenParent382ID58.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent382ID58.collider:SetHalfLengths(0.3,8.68226,5.09902)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID58.collider)
table.insert(colliders,AutoGenParent382ID58)
AutoGenParent382ID59 = {}
AutoGenParent382ID59.collider = OBBCollider.Create(-1)
AutoGenParent382ID59.collider:SetOffset(71.5,15.0832,205.5)
AutoGenParent382ID59.collider:SetZAxis(0.948683,0,-0.316228)
AutoGenParent382ID59.collider:SetHalfLengths(0.3,8.24039,4.74342)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID59.collider)
table.insert(colliders,AutoGenParent382ID59)
AutoGenParent382ID60 = {}
AutoGenParent382ID60.collider = OBBCollider.Create(-1)
AutoGenParent382ID60.collider:SetOffset(79,18.3236,202.5)
AutoGenParent382ID60.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent382ID60.collider:SetHalfLengths(0.3,6.76749,3.3541)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID60.collider)
table.insert(colliders,AutoGenParent382ID60)
AutoGenParent382ID61 = {}
AutoGenParent382ID61.collider = OBBCollider.Create(-1)
AutoGenParent382ID61.collider:SetOffset(105,27.0137,192.5)
AutoGenParent382ID61.collider:SetZAxis(0.847998,0,0.529999)
AutoGenParent382ID61.collider:SetHalfLengths(0.3,8.68227,4.71699)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID61.collider)
table.insert(colliders,AutoGenParent382ID61)
AutoGenParent382ID62 = {}
AutoGenParent382ID62.collider = OBBCollider.Create(-1)
AutoGenParent382ID62.collider:SetOffset(95,27.3083,202.5)
AutoGenParent382ID62.collider:SetZAxis(-0.819232,0,0.573462)
AutoGenParent382ID62.collider:SetHalfLengths(0.3,9.7133,6.10328)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID62.collider)
table.insert(colliders,AutoGenParent382ID62)
AutoGenParent382ID63 = {}
AutoGenParent382ID63.collider = OBBCollider.Create(-1)
AutoGenParent382ID63.collider:SetOffset(51,9.33883,216)
AutoGenParent382ID63.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent382ID63.collider:SetHalfLengths(0.3,5.58916,7.07107)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID63.collider)
table.insert(colliders,AutoGenParent382ID63)
AutoGenParent382ID64 = {}
AutoGenParent382ID64.collider = OBBCollider.Create(-1)
AutoGenParent382ID64.collider:SetOffset(141,40.5418,173)
AutoGenParent382ID64.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent382ID64.collider:SetHalfLengths(0.3,8.67635,5.09902)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID64.collider)
table.insert(colliders,AutoGenParent382ID64)
AutoGenParent382ID65 = {}
AutoGenParent382ID65.collider = OBBCollider.Create(-1)
AutoGenParent382ID65.collider:SetOffset(161.5,50.234,149)
AutoGenParent382ID65.collider:SetZAxis(0.939793,0,0.341743)
AutoGenParent382ID65.collider:SetHalfLengths(0.3,6.89388,5.85235)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID65.collider)
table.insert(colliders,AutoGenParent382ID65)
AutoGenParent382ID66 = {}
AutoGenParent382ID66.collider = OBBCollider.Create(-1)
AutoGenParent382ID66.collider:SetOffset(213,50.4568,48.5)
AutoGenParent382ID66.collider:SetZAxis(-0.992278,0,0.124035)
AutoGenParent382ID66.collider:SetHalfLengths(0.3,6.78247,4.03113)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID66.collider)
table.insert(colliders,AutoGenParent382ID66)
AutoGenParent382ID67 = {}
AutoGenParent382ID67.collider = OBBCollider.Create(-1)
AutoGenParent382ID67.collider:SetOffset(197.5,56.584,98.5)
AutoGenParent382ID67.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent382ID67.collider:SetHalfLengths(0.3,5.55702,7.90569)
AutoGenParent382ID57.collider:AddChild(AutoGenParent382ID67.collider)
table.insert(colliders,AutoGenParent382ID67)
AutoGenParent382ID68 = {}
AutoGenParent382ID68.collider = AABBCollider.Create(-1)
AutoGenParent382ID68.collider:SetOffset(0,0,0)
AutoGenParent382ID68.collider:SetMinPos(58,-1.70009,47.7018)
AutoGenParent382ID68.collider:SetMaxPos(226.033,62.6981,218.122)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID68.collider)
table.insert(colliders,AutoGenParent382ID68)
AutoGenParent382ID69 = {}
AutoGenParent382ID69.collider = OBBCollider.Create(-1)
AutoGenParent382ID69.collider:SetOffset(111,30.696,195.5)
AutoGenParent382ID69.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent382ID69.collider:SetHalfLengths(0.3,6.17832,2.06155)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID69.collider)
table.insert(colliders,AutoGenParent382ID69)
AutoGenParent382ID70 = {}
AutoGenParent382ID70.collider = OBBCollider.Create(-1)
AutoGenParent382ID70.collider:SetOffset(115.5,31.8743,198)
AutoGenParent382ID70.collider:SetZAxis(0.780869,0,0.624695)
AutoGenParent382ID70.collider:SetHalfLengths(0.3,7.79852,3.20156)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID70.collider)
table.insert(colliders,AutoGenParent382ID70)
AutoGenParent382ID71 = {}
AutoGenParent382ID71.collider = OBBCollider.Create(-1)
AutoGenParent382ID71.collider:SetOffset(90,21.5639,213.5)
AutoGenParent382ID71.collider:SetZAxis(0.406139,0,0.913812)
AutoGenParent382ID71.collider:SetHalfLengths(0.3,5.88374,4.92443)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID71.collider)
table.insert(colliders,AutoGenParent382ID71)
AutoGenParent382ID72 = {}
AutoGenParent382ID72.collider = OBBCollider.Create(-1)
AutoGenParent382ID72.collider:SetOffset(107,34.6728,203)
AutoGenParent382ID72.collider:SetZAxis(-0.780869,0,-0.624695)
AutoGenParent382ID72.collider:SetHalfLengths(0.3,11.0389,6.40312)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID72.collider)
table.insert(colliders,AutoGenParent382ID72)
AutoGenParent382ID73 = {}
AutoGenParent382ID73.collider = OBBCollider.Create(-1)
AutoGenParent382ID73.collider:SetOffset(101,28.6339,199)
AutoGenParent382ID73.collider:SetZAxis(-1,0,0)
AutoGenParent382ID73.collider:SetHalfLengths(0.3,6.32562,1)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID73.collider)
table.insert(colliders,AutoGenParent382ID73)
AutoGenParent382ID74 = {}
AutoGenParent382ID74.collider = OBBCollider.Create(-1)
AutoGenParent382ID74.collider:SetOffset(89,22.595,207.5)
AutoGenParent382ID74.collider:SetZAxis(-0.5547,0,0.83205)
AutoGenParent382ID74.collider:SetHalfLengths(0.3,6.03103,1.80278)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID74.collider)
table.insert(colliders,AutoGenParent382ID74)
AutoGenParent382ID75 = {}
AutoGenParent382ID75.collider = OBBCollider.Create(-1)
AutoGenParent382ID75.collider:SetOffset(63,8.74967,217)
AutoGenParent382ID75.collider:SetZAxis(1,0,0)
AutoGenParent382ID75.collider:SetHalfLengths(0.3,10.4498,5)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID75.collider)
table.insert(colliders,AutoGenParent382ID75)
AutoGenParent382ID76 = {}
AutoGenParent382ID76.collider = OBBCollider.Create(-1)
AutoGenParent382ID76.collider:SetOffset(221.5,48.4515,48.5)
AutoGenParent382ID76.collider:SetZAxis(-0.993884,0,-0.110432)
AutoGenParent382ID76.collider:SetHalfLengths(0.3,7.00528,4.52769)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID76.collider)
table.insert(colliders,AutoGenParent382ID76)
AutoGenParent382ID77 = {}
AutoGenParent382ID77.collider = OBBCollider.Create(-1)
AutoGenParent382ID77.collider:SetOffset(160.5,54.1331,160.5)
AutoGenParent382ID77.collider:SetZAxis(-0.910366,0,-0.413803)
AutoGenParent382ID77.collider:SetHalfLengths(0.3,8.56494,6.04152)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID77.collider)
table.insert(colliders,AutoGenParent382ID77)
AutoGenParent382ID78 = {}
AutoGenParent382ID78.collider = OBBCollider.Create(-1)
AutoGenParent382ID78.collider:SetOffset(153.5,50.5682,161.5)
AutoGenParent382ID78.collider:SetZAxis(-0.393919,0,0.919145)
AutoGenParent382ID78.collider:SetHalfLengths(0.3,6.67107,3.80789)
AutoGenParent382ID68.collider:AddChild(AutoGenParent382ID78.collider)
table.insert(colliders,AutoGenParent382ID78)
AutoGenParent382ID79 = {}
AutoGenParent382ID79.collider = AABBCollider.Create(-1)
AutoGenParent382ID79.collider:SetOffset(0,0,0)
AutoGenParent382ID79.collider:SetMinPos(67.8529,7.72652,34.7033)
AutoGenParent382ID79.collider:SetMaxPos(245.044,61.9183,226.261)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID79.collider)
table.insert(colliders,AutoGenParent382ID79)
AutoGenParent382ID80 = {}
AutoGenParent382ID80.collider = OBBCollider.Create(-1)
AutoGenParent382ID80.collider:SetOffset(121,34.6728,206)
AutoGenParent382ID80.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID80.collider:SetHalfLengths(0.3,6.76749,6.7082)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID80.collider)
table.insert(colliders,AutoGenParent382ID80)
AutoGenParent382ID81 = {}
AutoGenParent382ID81.collider = OBBCollider.Create(-1)
AutoGenParent382ID81.collider:SetOffset(76,14.1994,221.5)
AutoGenParent382ID81.collider:SetZAxis(0.871576,0,0.490261)
AutoGenParent382ID81.collider:SetHalfLengths(0.3,6.4729,9.17878)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID81.collider)
table.insert(colliders,AutoGenParent382ID81)
AutoGenParent382ID82 = {}
AutoGenParent382ID82.collider = OBBCollider.Create(-1)
AutoGenParent382ID82.collider:SetOffset(143,38.8707,185)
AutoGenParent382ID82.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent382ID82.collider:SetHalfLengths(0.3,6.67107,7.07107)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID82.collider)
table.insert(colliders,AutoGenParent382ID82)
AutoGenParent382ID83 = {}
AutoGenParent382ID83.collider = OBBCollider.Create(-1)
AutoGenParent382ID83.collider:SetOffset(170,52.1279,152)
AutoGenParent382ID83.collider:SetZAxis(0.948683,0,0.316228)
AutoGenParent382ID83.collider:SetHalfLengths(0.3,5.66843,3.16228)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID83.collider)
table.insert(colliders,AutoGenParent382ID83)
AutoGenParent382ID84 = {}
AutoGenParent382ID84.collider = OBBCollider.Create(-1)
AutoGenParent382ID84.collider:SetOffset(187.5,55.2472,133)
AutoGenParent382ID84.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent382ID84.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID84.collider)
table.insert(colliders,AutoGenParent382ID84)
AutoGenParent382ID85 = {}
AutoGenParent382ID85.collider = OBBCollider.Create(-1)
AutoGenParent382ID85.collider:SetOffset(186.5,55.3586,129)
AutoGenParent382ID85.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent382ID85.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID85.collider)
table.insert(colliders,AutoGenParent382ID85)
AutoGenParent382ID86 = {}
AutoGenParent382ID86.collider = OBBCollider.Create(-1)
AutoGenParent382ID86.collider:SetOffset(235,48.0059,36.5)
AutoGenParent382ID86.collider:SetZAxis(0.988936,0,0.14834)
AutoGenParent382ID86.collider:SetHalfLengths(0.3,7.78511,10.1119)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID86.collider)
table.insert(colliders,AutoGenParent382ID86)
AutoGenParent382ID87 = {}
AutoGenParent382ID87.collider = OBBCollider.Create(-1)
AutoGenParent382ID87.collider:SetOffset(233.5,44.998,51.5)
AutoGenParent382ID87.collider:SetZAxis(-0.948683,0,-0.316228)
AutoGenParent382ID87.collider:SetHalfLengths(0.3,8.45354,7.90569)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID87.collider)
table.insert(colliders,AutoGenParent382ID87)
AutoGenParent382ID88 = {}
AutoGenParent382ID88.collider = OBBCollider.Create(-1)
AutoGenParent382ID88.collider:SetOffset(202.5,56.027,116.5)
AutoGenParent382ID88.collider:SetZAxis(0.231621,0,0.972806)
AutoGenParent382ID88.collider:SetHalfLengths(0.3,5.89124,10.7935)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID88.collider)
table.insert(colliders,AutoGenParent382ID88)
AutoGenParent382ID89 = {}
AutoGenParent382ID89.collider = OBBCollider.Create(-1)
AutoGenParent382ID89.collider:SetOffset(155.5,48.8971,169)
AutoGenParent382ID89.collider:SetZAxis(0.658505,0,0.752577)
AutoGenParent382ID89.collider:SetHalfLengths(0.3,5.44561,5.31507)
AutoGenParent382ID79.collider:AddChild(AutoGenParent382ID89.collider)
table.insert(colliders,AutoGenParent382ID89)
AutoGenParent382ID90 = {}
AutoGenParent382ID90.collider = AABBCollider.Create(-1)
AutoGenParent382ID90.collider:SetOffset(0,0,0)
AutoGenParent382ID90.collider:SetMinPos(83.8378,3.74966,53.7243)
AutoGenParent382ID90.collider:SetMaxPos(255.118,61.4726,235.252)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID90.collider)
table.insert(colliders,AutoGenParent382ID90)
AutoGenParent382ID91 = {}
AutoGenParent382ID91.collider = OBBCollider.Create(-1)
AutoGenParent382ID91.collider:SetOffset(126,32.9053,211.5)
AutoGenParent382ID91.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent382ID91.collider:SetHalfLengths(0.3,5.88375,2.06155)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID91.collider)
table.insert(colliders,AutoGenParent382ID91)
AutoGenParent382ID92 = {}
AutoGenParent382ID92.collider = OBBCollider.Create(-1)
AutoGenParent382ID92.collider:SetOffset(105.5,26.8664,222.5)
AutoGenParent382ID92.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID92.collider:SetHalfLengths(0.3,6.47291,2.12132)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID92.collider)
table.insert(colliders,AutoGenParent382ID92)
AutoGenParent382ID93 = {}
AutoGenParent382ID93.collider = OBBCollider.Create(-1)
AutoGenParent382ID93.collider:SetOffset(111.5,28.3393,222)
AutoGenParent382ID93.collider:SetZAxis(0.913812,0,-0.406139)
AutoGenParent382ID93.collider:SetHalfLengths(0.3,7.65123,4.92443)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID93.collider)
table.insert(colliders,AutoGenParent382ID93)
AutoGenParent382ID94 = {}
AutoGenParent382ID94.collider = OBBCollider.Create(-1)
AutoGenParent382ID94.collider:SetOffset(116,30.9905,217)
AutoGenParent382ID94.collider:SetZAxis(0,0,-1)
AutoGenParent382ID94.collider:SetHalfLengths(0.3,10.1552,3)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID94.collider)
table.insert(colliders,AutoGenParent382ID94)
AutoGenParent382ID95 = {}
AutoGenParent382ID95.collider = OBBCollider.Create(-1)
AutoGenParent382ID95.collider:SetOffset(91,15.6723,230.5)
AutoGenParent382ID95.collider:SetZAxis(0.841179,0,0.540758)
AutoGenParent382ID95.collider:SetHalfLengths(0.3,11.9227,8.32166)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID95.collider)
table.insert(colliders,AutoGenParent382ID95)
AutoGenParent382ID96 = {}
AutoGenParent382ID96.collider = OBBCollider.Create(-1)
AutoGenParent382ID96.collider:SetOffset(132.5,34.0803,208.5)
AutoGenParent382ID96.collider:SetZAxis(0.874157,0,-0.485643)
AutoGenParent382ID96.collider:SetHalfLengths(0.3,5.66843,5.14782)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID96.collider)
table.insert(colliders,AutoGenParent382ID96)
AutoGenParent382ID97 = {}
AutoGenParent382ID97.collider = OBBCollider.Create(-1)
AutoGenParent382ID97.collider:SetOffset(139.5,34.7488,202.5)
AutoGenParent382ID97.collider:SetZAxis(0.581238,0,-0.813733)
AutoGenParent382ID97.collider:SetHalfLengths(0.3,7.22809,4.30116)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID97.collider)
table.insert(colliders,AutoGenParent382ID97)
AutoGenParent382ID98 = {}
AutoGenParent382ID98.collider = OBBCollider.Create(-1)
AutoGenParent382ID98.collider:SetOffset(248,40.9874,57)
AutoGenParent382ID98.collider:SetZAxis(-0.919145,0,-0.393919)
AutoGenParent382ID98.collider:SetHalfLengths(0.3,9.01056,7.61577)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID98.collider)
table.insert(colliders,AutoGenParent382ID98)
AutoGenParent382ID99 = {}
AutoGenParent382ID99.collider = OBBCollider.Create(-1)
AutoGenParent382ID99.collider:SetOffset(205.5,55.1358,132.5)
AutoGenParent382ID99.collider:SetZAxis(0.0905357,0,0.995893)
AutoGenParent382ID99.collider:SetHalfLengths(0.3,5.33421,5.52268)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID99.collider)
table.insert(colliders,AutoGenParent382ID99)
AutoGenParent382ID100 = {}
AutoGenParent382ID100.collider = OBBCollider.Create(-1)
AutoGenParent382ID100.collider:SetOffset(180,56.027,169)
AutoGenParent382ID100.collider:SetZAxis(-0.980581,0,-0.196116)
AutoGenParent382ID100.collider:SetHalfLengths(0.3,5.44562,5.09902)
AutoGenParent382ID90.collider:AddChild(AutoGenParent382ID100.collider)
table.insert(colliders,AutoGenParent382ID100)
AutoGenParent382ID101 = {}
AutoGenParent382ID101.collider = AABBCollider.Create(-1)
AutoGenParent382ID101.collider:SetOffset(0,0,0)
AutoGenParent382ID101.collider:SetMinPos(97.9544,11.7034,37.73)
AutoGenParent382ID101.collider:SetMaxPos(276.131,61.027,237.297)
AutoGenParent382ID1.collider:AddChild(AutoGenParent382ID101.collider)
table.insert(colliders,AutoGenParent382ID101)
AutoGenParent382ID102 = {}
AutoGenParent382ID102.collider = OBBCollider.Create(-1)
AutoGenParent382ID102.collider:SetOffset(104.5,22.595,236)
AutoGenParent382ID102.collider:SetZAxis(0.988372,0,0.152057)
AutoGenParent382ID102.collider:SetHalfLengths(0.3,10.8916,6.57647)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID102.collider)
table.insert(colliders,AutoGenParent382ID102)
AutoGenParent382ID103 = {}
AutoGenParent382ID103.collider = OBBCollider.Create(-1)
AutoGenParent382ID103.collider:SetOffset(260.5,45.2208,45.5)
AutoGenParent382ID103.collider:SetZAxis(0.900159,0,0.435561)
AutoGenParent382ID103.collider:SetHalfLengths(0.3,9.23337,17.2192)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID103.collider)
table.insert(colliders,AutoGenParent382ID103)
AutoGenParent382ID104 = {}
AutoGenParent382ID104.collider = OBBCollider.Create(-1)
AutoGenParent382ID104.collider:SetOffset(206.5,55.47,143.5)
AutoGenParent382ID104.collider:SetZAxis(0.0905357,0,0.995893)
AutoGenParent382ID104.collider:SetHalfLengths(0.3,5.22281,5.52268)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID104.collider)
table.insert(colliders,AutoGenParent382ID104)
AutoGenParent382ID105 = {}
AutoGenParent382ID105.collider = OBBCollider.Create(-1)
AutoGenParent382ID105.collider:SetOffset(205,55.2472,154)
AutoGenParent382ID105.collider:SetZAxis(-0.371391,0,0.928477)
AutoGenParent382ID105.collider:SetHalfLengths(0.3,5.22281,5.38516)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID105.collider)
table.insert(colliders,AutoGenParent382ID105)
AutoGenParent382ID106 = {}
AutoGenParent382ID106.collider = OBBCollider.Create(-1)
AutoGenParent382ID106.collider:SetOffset(198.5,55.0244,163.5)
AutoGenParent382ID106.collider:SetZAxis(-0.707107,0,0.707107)
AutoGenParent382ID106.collider:SetHalfLengths(0.3,5.77983,6.36396)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID106.collider)
table.insert(colliders,AutoGenParent382ID106)
AutoGenParent382ID107 = {}
AutoGenParent382ID107.collider = OBBCollider.Create(-1)
AutoGenParent382ID107.collider:SetOffset(189.5,55.8042,169)
AutoGenParent382ID107.collider:SetZAxis(-0.976187,0,0.21693)
AutoGenParent382ID107.collider:SetHalfLengths(0.3,5.22281,4.60977)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID107.collider)
table.insert(colliders,AutoGenParent382ID107)
AutoGenParent382ID108 = {}
AutoGenParent382ID108.collider = OBBCollider.Create(-1)
AutoGenParent382ID108.collider:SetOffset(163,43.6611,194.5)
AutoGenParent382ID108.collider:SetZAxis(0,0,1)
AutoGenParent382ID108.collider:SetHalfLengths(0.3,8.34213,9.5)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID108.collider)
table.insert(colliders,AutoGenParent382ID108)
AutoGenParent382ID109 = {}
AutoGenParent382ID109.collider = OBBCollider.Create(-1)
AutoGenParent382ID109.collider:SetOffset(170,40.319,200)
AutoGenParent382ID109.collider:SetZAxis(0.868243,0,-0.496139)
AutoGenParent382ID109.collider:SetHalfLengths(0.3,7.5623,8.06226)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID109.collider)
table.insert(colliders,AutoGenParent382ID109)
AutoGenParent382ID110 = {}
AutoGenParent382ID110.collider = OBBCollider.Create(-1)
AutoGenParent382ID110.collider:SetOffset(218.5,38.9821,136)
AutoGenParent382ID110.collider:SetZAxis(-0.209529,0,-0.977802)
AutoGenParent382ID110.collider:SetHalfLengths(0.3,7.33949,7.15891)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID110.collider)
table.insert(colliders,AutoGenParent382ID110)
AutoGenParent382ID111 = {}
AutoGenParent382ID111.collider = OBBCollider.Create(-1)
AutoGenParent382ID111.collider:SetOffset(221.5,41.3216,126)
AutoGenParent382ID111.collider:SetZAxis(0.83205,0,-0.5547)
AutoGenParent382ID111.collider:SetHalfLengths(0.3,5.89124,5.40833)
AutoGenParent382ID101.collider:AddChild(AutoGenParent382ID111.collider)
table.insert(colliders,AutoGenParent382ID111)
AutoGenParent382ID112 = {}
AutoGenParent382ID112.collider = AABBCollider.Create(-1)
AutoGenParent382ID112.collider:SetOffset(0,0,0)
AutoGenParent382ID112.collider:SetMinPos(1.70104,-0.963631,52.7879)
AutoGenParent382ID112.collider:SetMaxPos(315.212,66.1516,252.296)
AutoGenParent382ID.collider:AddChild(AutoGenParent382ID112.collider)
table.insert(colliders,AutoGenParent382ID112)
AutoGenParent382ID113 = {}
AutoGenParent382ID113.collider = AABBCollider.Create(-1)
AutoGenParent382ID113.collider:SetOffset(0,0,0)
AutoGenParent382ID113.collider:SetMinPos(3.76,0.656566,147.802)
AutoGenParent382ID113.collider:SetMaxPos(56.2258,14.6334,176)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID113.collider)
table.insert(colliders,AutoGenParent382ID113)
AutoGenParent382ID114 = {}
AutoGenParent382ID114.collider = OBBCollider.Create(-1)
AutoGenParent382ID114.collider:SetOffset(52.5,9.33883,152)
AutoGenParent382ID114.collider:SetZAxis(-0.658505,0,0.752577)
AutoGenParent382ID114.collider:SetHalfLengths(0.3,5.14729,5.31507)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID114.collider)
table.insert(colliders,AutoGenParent382ID114)
AutoGenParent382ID115 = {}
AutoGenParent382ID115.collider = OBBCollider.Create(-1)
AutoGenParent382ID115.collider:SetOffset(44,9.48612,157)
AutoGenParent382ID115.collider:SetZAxis(-0.980581,0,0.196116)
AutoGenParent382ID115.collider:SetHalfLengths(0.3,5.14729,5.09902)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID115.collider)
table.insert(colliders,AutoGenParent382ID115)
AutoGenParent382ID116 = {}
AutoGenParent382ID116.collider = OBBCollider.Create(-1)
AutoGenParent382ID116.collider:SetOffset(37,7.27676,160)
AutoGenParent382ID116.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID116.collider:SetHalfLengths(0.3,5.29458,2.23607)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID116.collider)
table.insert(colliders,AutoGenParent382ID116)
AutoGenParent382ID117 = {}
AutoGenParent382ID117.collider = OBBCollider.Create(-1)
AutoGenParent382ID117.collider:SetOffset(39.5,6.98218,163)
AutoGenParent382ID117.collider:SetZAxis(0.83205,0,0.5547)
AutoGenParent382ID117.collider:SetHalfLengths(0.3,5.14729,1.80278)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID117.collider)
table.insert(colliders,AutoGenParent382ID117)
AutoGenParent382ID118 = {}
AutoGenParent382ID118.collider = OBBCollider.Create(-1)
AutoGenParent382ID118.collider:SetOffset(43.5,7.12947,165)
AutoGenParent382ID118.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent382ID118.collider:SetHalfLengths(0.3,5.44187,2.69258)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID118.collider)
table.insert(colliders,AutoGenParent382ID118)
AutoGenParent382ID119 = {}
AutoGenParent382ID119.collider = OBBCollider.Create(-1)
AutoGenParent382ID119.collider:SetOffset(32.5,6.54031,170.5)
AutoGenParent382ID119.collider:SetZAxis(-0.514496,0,-0.857493)
AutoGenParent382ID119.collider:SetHalfLengths(0.3,5,2.91548)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID119.collider)
table.insert(colliders,AutoGenParent382ID119)
AutoGenParent382ID120 = {}
AutoGenParent382ID120.collider = OBBCollider.Create(-1)
AutoGenParent382ID120.collider:SetOffset(29.5,6.54031,168)
AutoGenParent382ID120.collider:SetZAxis(-1,0,0)
AutoGenParent382ID120.collider:SetHalfLengths(0.3,5.44187,1.5)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID120.collider)
table.insert(colliders,AutoGenParent382ID120)
AutoGenParent382ID121 = {}
AutoGenParent382ID121.collider = OBBCollider.Create(-1)
AutoGenParent382ID121.collider:SetOffset(25,6.09844,170.5)
AutoGenParent382ID121.collider:SetZAxis(-0.768221,0,0.640184)
AutoGenParent382ID121.collider:SetHalfLengths(0.3,5.29458,3.90512)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID121.collider)
table.insert(colliders,AutoGenParent382ID121)
AutoGenParent382ID122 = {}
AutoGenParent382ID122.collider = OBBCollider.Create(-1)
AutoGenParent382ID122.collider:SetOffset(7,6.54031,167)
AutoGenParent382ID122.collider:SetZAxis(0.6,0,0.8)
AutoGenParent382ID122.collider:SetHalfLengths(0.3,5.29458,5)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID122.collider)
table.insert(colliders,AutoGenParent382ID122)
AutoGenParent382ID123 = {}
AutoGenParent382ID123.collider = OBBCollider.Create(-1)
AutoGenParent382ID123.collider:SetOffset(10,6.24573,173.5)
AutoGenParent382ID123.collider:SetZAxis(0,0,1)
AutoGenParent382ID123.collider:SetHalfLengths(0.3,5.58916,2.5)
AutoGenParent382ID113.collider:AddChild(AutoGenParent382ID123.collider)
table.insert(colliders,AutoGenParent382ID123)
AutoGenParent382ID124 = {}
AutoGenParent382ID124.collider = AABBCollider.Create(-1)
AutoGenParent382ID124.collider:SetOffset(0,0,0)
AutoGenParent382ID124.collider:SetMinPos(1.70104,-0.963631,165.7)
AutoGenParent382ID124.collider:SetMaxPos(58.2977,13.3078,194.025)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID124.collider)
table.insert(colliders,AutoGenParent382ID124)
AutoGenParent382ID125 = {}
AutoGenParent382ID125.collider = OBBCollider.Create(-1)
AutoGenParent382ID125.collider:SetOffset(48.5,7.57134,166)
AutoGenParent382ID125.collider:SetZAxis(1,0,0)
AutoGenParent382ID125.collider:SetHalfLengths(0.3,5.44187,2.5)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID125.collider)
table.insert(colliders,AutoGenParent382ID125)
AutoGenParent382ID126 = {}
AutoGenParent382ID126.collider = OBBCollider.Create(-1)
AutoGenParent382ID126.collider:SetOffset(54,8.01322,168)
AutoGenParent382ID126.collider:SetZAxis(0.83205,0,0.5547)
AutoGenParent382ID126.collider:SetHalfLengths(0.3,5,3.60555)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID126.collider)
table.insert(colliders,AutoGenParent382ID126)
AutoGenParent382ID127 = {}
AutoGenParent382ID127.collider = OBBCollider.Create(-1)
AutoGenParent382ID127.collider:SetOffset(57.5,8.01322,171)
AutoGenParent382ID127.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID127.collider:SetHalfLengths(0.3,5,1.11803)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID127.collider)
table.insert(colliders,AutoGenParent382ID127)
AutoGenParent382ID128 = {}
AutoGenParent382ID128.collider = OBBCollider.Create(-1)
AutoGenParent382ID128.collider:SetOffset(57.5,8.01322,176)
AutoGenParent382ID128.collider:SetZAxis(-0.124035,0,0.992278)
AutoGenParent382ID128.collider:SetHalfLengths(0.3,5,4.03113)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID128.collider)
table.insert(colliders,AutoGenParent382ID128)
AutoGenParent382ID129 = {}
AutoGenParent382ID129.collider = OBBCollider.Create(-1)
AutoGenParent382ID129.collider:SetOffset(37,7.71863,182)
AutoGenParent382ID129.collider:SetZAxis(-0.447214,0,-0.894427)
AutoGenParent382ID129.collider:SetHalfLengths(0.3,5.58916,2.23607)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID129.collider)
table.insert(colliders,AutoGenParent382ID129)
AutoGenParent382ID130 = {}
AutoGenParent382ID130.collider = OBBCollider.Create(-1)
AutoGenParent382ID130.collider:SetOffset(35,7.12947,176.5)
AutoGenParent382ID130.collider:SetZAxis(-0.274721,0,-0.961524)
AutoGenParent382ID130.collider:SetHalfLengths(0.3,5.58916,3.64005)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID130.collider)
table.insert(colliders,AutoGenParent382ID130)
AutoGenParent382ID131 = {}
AutoGenParent382ID131.collider = OBBCollider.Create(-1)
AutoGenParent382ID131.collider:SetOffset(22,5.80386,174.5)
AutoGenParent382ID131.collider:SetZAxis(0,0,1)
AutoGenParent382ID131.collider:SetHalfLengths(0.3,5,1.5)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID131.collider)
table.insert(colliders,AutoGenParent382ID131)
AutoGenParent382ID132 = {}
AutoGenParent382ID132.collider = OBBCollider.Create(-1)
AutoGenParent382ID132.collider:SetOffset(23.5,5.80386,179.5)
AutoGenParent382ID132.collider:SetZAxis(0.393919,0,0.919145)
AutoGenParent382ID132.collider:SetHalfLengths(0.3,5.29458,3.80789)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID132.collider)
table.insert(colliders,AutoGenParent382ID132)
AutoGenParent382ID133 = {}
AutoGenParent382ID133.collider = OBBCollider.Create(-1)
AutoGenParent382ID133.collider:SetOffset(6.5,5.65657,179)
AutoGenParent382ID133.collider:SetZAxis(-0.759257,0,0.650791)
AutoGenParent382ID133.collider:SetHalfLengths(0.3,5.29458,4.60977)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID133.collider)
table.insert(colliders,AutoGenParent382ID133)
AutoGenParent382ID134 = {}
AutoGenParent382ID134.collider = OBBCollider.Create(-1)
AutoGenParent382ID134.collider:SetOffset(2.5,5.36198,188)
AutoGenParent382ID134.collider:SetZAxis(-0.0830455,0,0.996546)
AutoGenParent382ID134.collider:SetHalfLengths(0.3,6.32562,6.0208)
AutoGenParent382ID124.collider:AddChild(AutoGenParent382ID134.collider)
table.insert(colliders,AutoGenParent382ID134)
AutoGenParent382ID135 = {}
AutoGenParent382ID135.collider = AABBCollider.Create(-1)
AutoGenParent382ID135.collider:SetOffset(0,0,0)
AutoGenParent382ID135.collider:SetMinPos(91.9272,13.029,134.951)
AutoGenParent382ID135.collider:SetMaxPos(188.296,62.0297,221.291)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID135.collider)
table.insert(colliders,AutoGenParent382ID135)
AutoGenParent382ID136 = {}
AutoGenParent382ID136.collider = OBBCollider.Create(-1)
AutoGenParent382ID136.collider:SetOffset(98,22.4477,219.5)
AutoGenParent382ID136.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent382ID136.collider:SetHalfLengths(0.3,9.41872,6.18466)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID136.collider)
table.insert(colliders,AutoGenParent382ID136)
AutoGenParent382ID137 = {}
AutoGenParent382ID137.collider = OBBCollider.Create(-1)
AutoGenParent382ID137.collider:SetOffset(114,36.1457,210.5)
AutoGenParent382ID137.collider:SetZAxis(-0.496139,0,-0.868243)
AutoGenParent382ID137.collider:SetHalfLengths(0.3,6.4729,4.03113)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID137.collider)
table.insert(colliders,AutoGenParent382ID137)
AutoGenParent382ID138 = {}
AutoGenParent382ID138.collider = OBBCollider.Create(-1)
AutoGenParent382ID138.collider:SetOffset(143,36.9769,195.5)
AutoGenParent382ID138.collider:SetZAxis(0.274721,0,-0.961524)
AutoGenParent382ID138.collider:SetHalfLengths(0.3,6.89388,3.64005)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID138.collider)
table.insert(colliders,AutoGenParent382ID138)
AutoGenParent382ID139 = {}
AutoGenParent382ID139.collider = OBBCollider.Create(-1)
AutoGenParent382ID139.collider:SetOffset(176.5,52.7963,152.5)
AutoGenParent382ID139.collider:SetZAxis(0.98995,0,-0.141421)
AutoGenParent382ID139.collider:SetHalfLengths(0.3,6.33685,3.53553)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID139.collider)
table.insert(colliders,AutoGenParent382ID139)
AutoGenParent382ID140 = {}
AutoGenParent382ID140.collider = OBBCollider.Create(-1)
AutoGenParent382ID140.collider:SetOffset(182,54.1331,150.5)
AutoGenParent382ID140.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent382ID140.collider:SetHalfLengths(0.3,5.66843,2.5)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID140.collider)
table.insert(colliders,AutoGenParent382ID140)
AutoGenParent382ID141 = {}
AutoGenParent382ID141.collider = OBBCollider.Create(-1)
AutoGenParent382ID141.collider:SetOffset(184.5,54.8016,147.5)
AutoGenParent382ID141.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent382ID141.collider:SetHalfLengths(0.3,5.77983,1.58114)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID141.collider)
table.insert(colliders,AutoGenParent382ID141)
AutoGenParent382ID142 = {}
AutoGenParent382ID142.collider = OBBCollider.Create(-1)
AutoGenParent382ID142.collider:SetOffset(186,55.5814,143.5)
AutoGenParent382ID142.collider:SetZAxis(0.371391,0,-0.928477)
AutoGenParent382ID142.collider:SetHalfLengths(0.3,5.33421,2.69258)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID142.collider)
table.insert(colliders,AutoGenParent382ID142)
AutoGenParent382ID143 = {}
AutoGenParent382ID143.collider = OBBCollider.Create(-1)
AutoGenParent382ID143.collider:SetOffset(187.5,55.2472,138)
AutoGenParent382ID143.collider:SetZAxis(0.164399,0,-0.986394)
AutoGenParent382ID143.collider:SetHalfLengths(0.3,5,3.04138)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID143.collider)
table.insert(colliders,AutoGenParent382ID143)
AutoGenParent382ID144 = {}
AutoGenParent382ID144.collider = OBBCollider.Create(-1)
AutoGenParent382ID144.collider:SetOffset(170.5,55.5814,165.5)
AutoGenParent382ID144.collider:SetZAxis(-0.874157,0,-0.485643)
AutoGenParent382ID144.collider:SetHalfLengths(0.3,6.44826,5.14782)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID144.collider)
table.insert(colliders,AutoGenParent382ID144)
AutoGenParent382ID145 = {}
AutoGenParent382ID145.collider = OBBCollider.Create(-1)
AutoGenParent382ID145.collider:SetOffset(161,48.4515,179)
AutoGenParent382ID145.collider:SetZAxis(0.316228,0,0.948683)
AutoGenParent382ID145.collider:SetHalfLengths(0.3,9.7904,6.32456)
AutoGenParent382ID135.collider:AddChild(AutoGenParent382ID145.collider)
table.insert(colliders,AutoGenParent382ID145)
AutoGenParent382ID146 = {}
AutoGenParent382ID146.collider = AABBCollider.Create(-1)
AutoGenParent382ID146.collider:SetOffset(0,0,0)
AutoGenParent382ID146.collider:SetMinPos(110.866,21.5718,120.706)
AutoGenParent382ID146.collider:SetMaxPos(236.059,49.3295,237.268)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID146.collider)
table.insert(colliders,AutoGenParent382ID146)
AutoGenParent382ID147 = {}
AutoGenParent382ID147.collider = OBBCollider.Create(-1)
AutoGenParent382ID147.collider:SetOffset(115,28.4866,235)
AutoGenParent382ID147.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent382ID147.collider:SetHalfLengths(0.3,6.91478,4.47214)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID147.collider)
table.insert(colliders,AutoGenParent382ID147)
AutoGenParent382ID148 = {}
AutoGenParent382ID148.collider = OBBCollider.Create(-1)
AutoGenParent382ID148.collider:SetOffset(122,30.4014,233.5)
AutoGenParent382ID148.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent382ID148.collider:SetHalfLengths(0.3,6.76749,3.04138)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID148.collider)
table.insert(colliders,AutoGenParent382ID148)
AutoGenParent382ID149 = {}
AutoGenParent382ID149.collider = OBBCollider.Create(-1)
AutoGenParent382ID149.collider:SetOffset(125.5,32.1689,229)
AutoGenParent382ID149.collider:SetZAxis(0.0995037,0,-0.995037)
AutoGenParent382ID149.collider:SetHalfLengths(0.3,5.58916,5.02494)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID149.collider)
table.insert(colliders,AutoGenParent382ID149)
AutoGenParent382ID150 = {}
AutoGenParent382ID150.collider = OBBCollider.Create(-1)
AutoGenParent382ID150.collider:SetOffset(127,32.758,224)
AutoGenParent382ID150.collider:SetZAxis(1,0,0)
AutoGenParent382ID150.collider:SetHalfLengths(0.3,5.14729,1)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID150.collider)
table.insert(colliders,AutoGenParent382ID150)
AutoGenParent382ID151 = {}
AutoGenParent382ID151.collider = OBBCollider.Create(-1)
AutoGenParent382ID151.collider:SetOffset(132,33.8575,223.5)
AutoGenParent382ID151.collider:SetZAxis(0.992278,0,-0.124035)
AutoGenParent382ID151.collider:SetHalfLengths(0.3,6.67107,4.03113)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID151.collider)
table.insert(colliders,AutoGenParent382ID151)
AutoGenParent382ID152 = {}
AutoGenParent382ID152.collider = OBBCollider.Create(-1)
AutoGenParent382ID152.collider:SetOffset(138.5,35.5286,222)
AutoGenParent382ID152.collider:SetZAxis(0.928477,0,-0.371391)
AutoGenParent382ID152.collider:SetHalfLengths(0.3,5.33422,2.69258)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID152.collider)
table.insert(colliders,AutoGenParent382ID152)
AutoGenParent382ID153 = {}
AutoGenParent382ID153.collider = OBBCollider.Create(-1)
AutoGenParent382ID153.collider:SetOffset(143,35.1944,220.5)
AutoGenParent382ID153.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent382ID153.collider:SetHalfLengths(0.3,5,2.06155)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID153.collider)
table.insert(colliders,AutoGenParent382ID153)
AutoGenParent382ID154 = {}
AutoGenParent382ID154.collider = OBBCollider.Create(-1)
AutoGenParent382ID154.collider:SetOffset(184,42.8813,193)
AutoGenParent382ID154.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent382ID154.collider:SetHalfLengths(0.3,5.22281,7.61577)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID154.collider)
table.insert(colliders,AutoGenParent382ID154)
AutoGenParent382ID155 = {}
AutoGenParent382ID155.collider = OBBCollider.Create(-1)
AutoGenParent382ID155.collider:SetOffset(201,40.319,176.5)
AutoGenParent382ID155.collider:SetZAxis(0.841179,0,-0.540758)
AutoGenParent382ID155.collider:SetHalfLengths(0.3,6.00264,8.32166)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID155.collider)
table.insert(colliders,AutoGenParent382ID155)
AutoGenParent382ID156 = {}
AutoGenParent382ID156.collider = OBBCollider.Create(-1)
AutoGenParent382ID156.collider:SetOffset(231,42.2129,122)
AutoGenParent382ID156.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent382ID156.collider:SetHalfLengths(0.3,7.11668,5.09902)
AutoGenParent382ID146.collider:AddChild(AutoGenParent382ID156.collider)
table.insert(colliders,AutoGenParent382ID156)
AutoGenParent382ID157 = {}
AutoGenParent382ID157.collider = AABBCollider.Create(-1)
AutoGenParent382ID157.collider:SetOffset(0,0,0)
AutoGenParent382ID157.collider:SetMinPos(144.788,29.3031,59.7622)
AutoGenParent382ID157.collider:SetMaxPos(268.183,49.998,233.03)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID157.collider)
table.insert(colliders,AutoGenParent382ID157)
AutoGenParent382ID158 = {}
AutoGenParent382ID158.collider = OBBCollider.Create(-1)
AutoGenParent382ID158.collider:SetOffset(146.5,35.1944,221.5)
AutoGenParent382ID158.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID158.collider:SetHalfLengths(0.3,5.89124,2.12132)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID158.collider)
table.insert(colliders,AutoGenParent382ID158)
AutoGenParent382ID159 = {}
AutoGenParent382ID159.collider = OBBCollider.Create(-1)
AutoGenParent382ID159.collider:SetOffset(148.5,36.0856,228)
AutoGenParent382ID159.collider:SetZAxis(0.0995037,0,0.995037)
AutoGenParent382ID159.collider:SetHalfLengths(0.3,6.00264,5.02494)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID159.collider)
table.insert(colliders,AutoGenParent382ID159)
AutoGenParent382ID160 = {}
AutoGenParent382ID160.collider = OBBCollider.Create(-1)
AutoGenParent382ID160.collider:SetOffset(261.5,38.7593,65)
AutoGenParent382ID160.collider:SetZAxis(-0.792624,0,-0.609711)
AutoGenParent382ID160.collider:SetHalfLengths(0.3,7.22809,8.20061)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID160.collider)
table.insert(colliders,AutoGenParent382ID160)
AutoGenParent382ID161 = {}
AutoGenParent382ID161.collider = OBBCollider.Create(-1)
AutoGenParent382ID161.collider:SetOffset(192.5,42.6585,185.5)
AutoGenParent382ID161.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent382ID161.collider:SetHalfLengths(0.3,7.33949,4.74342)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID161.collider)
table.insert(colliders,AutoGenParent382ID161)
AutoGenParent382ID162 = {}
AutoGenParent382ID162.collider = OBBCollider.Create(-1)
AutoGenParent382ID162.collider:SetOffset(213,39.3163,166.5)
AutoGenParent382ID162.collider:SetZAxis(0.672673,0,-0.73994)
AutoGenParent382ID162.collider:SetHalfLengths(0.3,7.89651,7.43303)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID162.collider)
table.insert(colliders,AutoGenParent382ID162)
AutoGenParent382ID163 = {}
AutoGenParent382ID163.collider = OBBCollider.Create(-1)
AutoGenParent382ID163.collider:SetOffset(219,36.4198,158)
AutoGenParent382ID163.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent382ID163.collider:SetHalfLengths(0.3,5.1114,3.16228)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID163.collider)
table.insert(colliders,AutoGenParent382ID163)
AutoGenParent382ID164 = {}
AutoGenParent382ID164.collider = OBBCollider.Create(-1)
AutoGenParent382ID164.collider:SetOffset(222,36.5312,153.5)
AutoGenParent382ID164.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent382ID164.collider:SetHalfLengths(0.3,5.1114,2.5)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID164.collider)
table.insert(colliders,AutoGenParent382ID164)
AutoGenParent382ID165 = {}
AutoGenParent382ID165.collider = OBBCollider.Create(-1)
AutoGenParent382ID165.collider:SetOffset(228.5,36.6426,150.5)
AutoGenParent382ID165.collider:SetZAxis(0.948683,0,-0.316228)
AutoGenParent382ID165.collider:SetHalfLengths(0.3,5.1114,4.74342)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID165.collider)
table.insert(colliders,AutoGenParent382ID165)
AutoGenParent382ID166 = {}
AutoGenParent382ID166.collider = OBBCollider.Create(-1)
AutoGenParent382ID166.collider:SetOffset(221,36.6426,148)
AutoGenParent382ID166.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent382ID166.collider:SetHalfLengths(0.3,7.33949,5.09902)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID166.collider)
table.insert(colliders,AutoGenParent382ID166)
AutoGenParent382ID167 = {}
AutoGenParent382ID167.collider = OBBCollider.Create(-1)
AutoGenParent382ID167.collider:SetOffset(242,40.0962,124.5)
AutoGenParent382ID167.collider:SetZAxis(0.863779,0,0.503871)
AutoGenParent382ID167.collider:SetHalfLengths(0.3,7.11668,6.94622)
AutoGenParent382ID157.collider:AddChild(AutoGenParent382ID167.collider)
table.insert(colliders,AutoGenParent382ID167)
AutoGenParent382ID168 = {}
AutoGenParent382ID168.collider = AABBCollider.Create(-1)
AutoGenParent382ID168.collider:SetOffset(0,0,0)
AutoGenParent382ID168.collider:SetMinPos(148.703,30.64,69.8112)
AutoGenParent382ID168.collider:SetMaxPos(285.233,47.4357,240.042)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID168.collider)
table.insert(colliders,AutoGenParent382ID168)
AutoGenParent382ID169 = {}
AutoGenParent382ID169.collider = OBBCollider.Create(-1)
AutoGenParent382ID169.collider:SetOffset(149.5,37.0883,236.5)
AutoGenParent382ID169.collider:SetZAxis(0.141421,0,0.98995)
AutoGenParent382ID169.collider:SetHalfLengths(0.3,5.1114,3.53553)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID169.collider)
table.insert(colliders,AutoGenParent382ID169)
AutoGenParent382ID170 = {}
AutoGenParent382ID170.collider = OBBCollider.Create(-1)
AutoGenParent382ID170.collider:SetOffset(177,41.433,212)
AutoGenParent382ID170.collider:SetZAxis(0.447214,0,-0.894427)
AutoGenParent382ID170.collider:SetHalfLengths(0.3,5.22281,2.23607)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID170.collider)
table.insert(colliders,AutoGenParent382ID170)
AutoGenParent382ID171 = {}
AutoGenParent382ID171.collider = OBBCollider.Create(-1)
AutoGenParent382ID171.collider:SetOffset(180.5,41.6558,208.5)
AutoGenParent382ID171.collider:SetZAxis(0.857493,0,-0.514496)
AutoGenParent382ID171.collider:SetHalfLengths(0.3,5.22281,2.91548)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID171.collider)
table.insert(colliders,AutoGenParent382ID171)
AutoGenParent382ID172 = {}
AutoGenParent382ID172.collider = OBBCollider.Create(-1)
AutoGenParent382ID172.collider:SetOffset(185.5,41.8786,206.5)
AutoGenParent382ID172.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent382ID172.collider:SetHalfLengths(0.3,5.55702,2.54951)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID172.collider)
table.insert(colliders,AutoGenParent382ID172)
AutoGenParent382ID173 = {}
AutoGenParent382ID173.collider = OBBCollider.Create(-1)
AutoGenParent382ID173.collider:SetOffset(220.5,36.0856,175)
AutoGenParent382ID173.collider:SetZAxis(0.573462,0,-0.819232)
AutoGenParent382ID173.collider:SetHalfLengths(0.3,5.44562,6.10328)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID173.collider)
table.insert(colliders,AutoGenParent382ID173)
AutoGenParent382ID174 = {}
AutoGenParent382ID174.collider = OBBCollider.Create(-1)
AutoGenParent382ID174.collider:SetOffset(276.5,39.5392,80.5)
AutoGenParent382ID174.collider:SetZAxis(-0.629198,0,-0.777245)
AutoGenParent382ID174.collider:SetHalfLengths(0.3,5.77983,13.5093)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID174.collider)
table.insert(colliders,AutoGenParent382ID174)
AutoGenParent382ID175 = {}
AutoGenParent382ID175.collider = OBBCollider.Create(-1)
AutoGenParent382ID175.collider:SetOffset(236.5,36.5312,145)
AutoGenParent382ID175.collider:SetZAxis(0.658505,0,-0.752577)
AutoGenParent382ID175.collider:SetHalfLengths(0.3,5.22281,5.31507)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID175.collider)
table.insert(colliders,AutoGenParent382ID175)
AutoGenParent382ID176 = {}
AutoGenParent382ID176.collider = OBBCollider.Create(-1)
AutoGenParent382ID176.collider:SetOffset(240,36.754,139)
AutoGenParent382ID176.collider:SetZAxis(0,0,-1)
AutoGenParent382ID176.collider:SetHalfLengths(0.3,5.55702,2)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID176.collider)
table.insert(colliders,AutoGenParent382ID176)
AutoGenParent382ID177 = {}
AutoGenParent382ID177.collider = OBBCollider.Create(-1)
AutoGenParent382ID177.collider:SetOffset(238,37.3111,135)
AutoGenParent382ID177.collider:SetZAxis(-0.707107,0,-0.707107)
AutoGenParent382ID177.collider:SetHalfLengths(0.3,6.00264,2.82843)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID177.collider)
table.insert(colliders,AutoGenParent382ID177)
AutoGenParent382ID178 = {}
AutoGenParent382ID178.collider = OBBCollider.Create(-1)
AutoGenParent382ID178.collider:SetOffset(253,37.9795,123)
AutoGenParent382ID178.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent382ID178.collider:SetHalfLengths(0.3,5.55702,7.07107)
AutoGenParent382ID168.collider:AddChild(AutoGenParent382ID178.collider)
table.insert(colliders,AutoGenParent382ID178)
AutoGenParent382ID179 = {}
AutoGenParent382ID179.collider = AABBCollider.Create(-1)
AutoGenParent382ID179.collider:SetOffset(0,0,0)
AutoGenParent382ID179.collider:SetMinPos(175.706,30.1944,52.7879)
AutoGenParent382ID179.collider:SetMaxPos(290.212,47.5471,219.059)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID179.collider)
table.insert(colliders,AutoGenParent382ID179)
AutoGenParent382ID180 = {}
AutoGenParent382ID180.collider = OBBCollider.Create(-1)
AutoGenParent382ID180.collider:SetOffset(283,40.9874,60)
AutoGenParent382ID180.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID180.collider:SetHalfLengths(0.3,5.33421,9.8995)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID180.collider)
table.insert(colliders,AutoGenParent382ID180)
AutoGenParent382ID181 = {}
AutoGenParent382ID181.collider = OBBCollider.Create(-1)
AutoGenParent382ID181.collider:SetOffset(176.5,41.9901,216.5)
AutoGenParent382ID181.collider:SetZAxis(-0.196116,0,-0.980581)
AutoGenParent382ID181.collider:SetHalfLengths(0.3,5.55702,2.54951)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID181.collider)
table.insert(colliders,AutoGenParent382ID181)
AutoGenParent382ID182 = {}
AutoGenParent382ID182.collider = OBBCollider.Create(-1)
AutoGenParent382ID182.collider:SetOffset(190.5,41.3216,205.5)
AutoGenParent382ID182.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent382ID182.collider:SetHalfLengths(0.3,5.66843,2.54951)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID182.collider)
table.insert(colliders,AutoGenParent382ID182)
AutoGenParent382ID183 = {}
AutoGenParent382ID183.collider = OBBCollider.Create(-1)
AutoGenParent382ID183.collider:SetOffset(198,40.6532,203)
AutoGenParent382ID183.collider:SetZAxis(0.928477,0,-0.371391)
AutoGenParent382ID183.collider:SetHalfLengths(0.3,6.00264,5.38516)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID183.collider)
table.insert(colliders,AutoGenParent382ID183)
AutoGenParent382ID184 = {}
AutoGenParent382ID184.collider = OBBCollider.Create(-1)
AutoGenParent382ID184.collider:SetOffset(207.5,38.9821,191)
AutoGenParent382ID184.collider:SetZAxis(0.287348,0,-0.957826)
AutoGenParent382ID184.collider:SetHalfLengths(0.3,6.22545,5.22015)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID184.collider)
table.insert(colliders,AutoGenParent382ID184)
AutoGenParent382ID185 = {}
AutoGenParent382ID185.collider = OBBCollider.Create(-1)
AutoGenParent382ID185.collider:SetOffset(211,37.7567,184.5)
AutoGenParent382ID185.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent382ID185.collider:SetHalfLengths(0.3,5.77983,2.5)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID185.collider)
table.insert(colliders,AutoGenParent382ID185)
AutoGenParent382ID186 = {}
AutoGenParent382ID186.collider = OBBCollider.Create(-1)
AutoGenParent382ID186.collider:SetOffset(215,36.9769,181.5)
AutoGenParent382ID186.collider:SetZAxis(0.8,0,-0.6)
AutoGenParent382ID186.collider:SetHalfLengths(0.3,5.89124,2.5)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID186.collider)
table.insert(colliders,AutoGenParent382ID186)
AutoGenParent382ID187 = {}
AutoGenParent382ID187.collider = OBBCollider.Create(-1)
AutoGenParent382ID187.collider:SetOffset(227.5,35.64,167.5)
AutoGenParent382ID187.collider:SetZAxis(0.813733,0,-0.581238)
AutoGenParent382ID187.collider:SetHalfLengths(0.3,5,4.30116)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID187.collider)
table.insert(colliders,AutoGenParent382ID187)
AutoGenParent382ID188 = {}
AutoGenParent382ID188.collider = OBBCollider.Create(-1)
AutoGenParent382ID188.collider:SetOffset(237.5,35.64,159.5)
AutoGenParent382ID188.collider:SetZAxis(0.763386,0,-0.645942)
AutoGenParent382ID188.collider:SetHalfLengths(0.3,5.44562,8.51469)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID188.collider)
table.insert(colliders,AutoGenParent382ID188)
AutoGenParent382ID189 = {}
AutoGenParent382ID189.collider = OBBCollider.Create(-1)
AutoGenParent382ID189.collider:SetOffset(263.5,37.4225,113.5)
AutoGenParent382ID189.collider:SetZAxis(0.773957,0,-0.633238)
AutoGenParent382ID189.collider:SetHalfLengths(0.3,5.44562,7.10634)
AutoGenParent382ID179.collider:AddChild(AutoGenParent382ID189.collider)
table.insert(colliders,AutoGenParent382ID189)
AutoGenParent382ID190 = {}
AutoGenParent382ID190.collider = AABBCollider.Create(-1)
AutoGenParent382ID190.collider:SetOffset(0,0,0)
AutoGenParent382ID190.collider:SetMinPos(149.7,26.2952,105.702)
AutoGenParent382ID190.collider:SetMaxPos(298.031,56.0138,250.277)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID190.collider)
table.insert(colliders,AutoGenParent382ID190)
AutoGenParent382ID191 = {}
AutoGenParent382ID191.collider = OBBCollider.Create(-1)
AutoGenParent382ID191.collider:SetOffset(150,37.1997,241.5)
AutoGenParent382ID191.collider:SetZAxis(0,0,1)
AutoGenParent382ID191.collider:SetHalfLengths(0.3,5,1.5)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID191.collider)
table.insert(colliders,AutoGenParent382ID191)
AutoGenParent382ID192 = {}
AutoGenParent382ID192.collider = OBBCollider.Create(-1)
AutoGenParent382ID192.collider:SetOffset(158.5,37.1997,246.5)
AutoGenParent382ID192.collider:SetZAxis(0.924678,0,0.38075)
AutoGenParent382ID192.collider:SetHalfLengths(0.3,10.9044,9.19239)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID192.collider)
table.insert(colliders,AutoGenParent382ID192)
AutoGenParent382ID193 = {}
AutoGenParent382ID193.collider = OBBCollider.Create(-1)
AutoGenParent382ID193.collider:SetOffset(191.5,48.3401,228)
AutoGenParent382ID193.collider:SetZAxis(-1,0,0)
AutoGenParent382ID193.collider:SetHalfLengths(0.3,6.44826,3.5)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID193.collider)
table.insert(colliders,AutoGenParent382ID193)
AutoGenParent382ID194 = {}
AutoGenParent382ID194.collider = OBBCollider.Create(-1)
AutoGenParent382ID194.collider:SetOffset(183.5,46.8918,226)
AutoGenParent382ID194.collider:SetZAxis(-0.913812,0,-0.406139)
AutoGenParent382ID194.collider:SetHalfLengths(0.3,9.12197,4.92443)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID194.collider)
table.insert(colliders,AutoGenParent382ID194)
AutoGenParent382ID195 = {}
AutoGenParent382ID195.collider = OBBCollider.Create(-1)
AutoGenParent382ID195.collider:SetOffset(178,42.7699,221.5)
AutoGenParent382ID195.collider:SetZAxis(-0.371391,0,-0.928477)
AutoGenParent382ID195.collider:SetHalfLengths(0.3,5.77983,2.69258)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID195.collider)
table.insert(colliders,AutoGenParent382ID195)
AutoGenParent382ID196 = {}
AutoGenParent382ID196.collider = OBBCollider.Create(-1)
AutoGenParent382ID196.collider:SetOffset(204.5,39.6506,198.5)
AutoGenParent382ID196.collider:SetZAxis(0.514496,0,-0.857493)
AutoGenParent382ID196.collider:SetHalfLengths(0.3,5.66843,2.91548)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID196.collider)
table.insert(colliders,AutoGenParent382ID196)
AutoGenParent382ID197 = {}
AutoGenParent382ID197.collider = OBBCollider.Create(-1)
AutoGenParent382ID197.collider:SetOffset(249.5,36.0856,148.5)
AutoGenParent382ID197.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent382ID197.collider:SetHalfLengths(0.3,5.77983,7.77817)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID197.collider)
table.insert(colliders,AutoGenParent382ID197)
AutoGenParent382ID198 = {}
AutoGenParent382ID198.collider = OBBCollider.Create(-1)
AutoGenParent382ID198.collider:SetOffset(258,36.8654,140)
AutoGenParent382ID198.collider:SetZAxis(0.707107,0,-0.707107)
AutoGenParent382ID198.collider:SetHalfLengths(0.3,5.44562,4.24264)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID198.collider)
table.insert(colliders,AutoGenParent382ID198)
AutoGenParent382ID199 = {}
AutoGenParent382ID199.collider = OBBCollider.Create(-1)
AutoGenParent382ID199.collider:SetOffset(264,37.3111,134.5)
AutoGenParent382ID199.collider:SetZAxis(0.768221,0,-0.640184)
AutoGenParent382ID199.collider:SetHalfLengths(0.3,5.1114,3.90512)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID199.collider)
table.insert(colliders,AutoGenParent382ID199)
AutoGenParent382ID200 = {}
AutoGenParent382ID200.collider = OBBCollider.Create(-1)
AutoGenParent382ID200.collider:SetOffset(283.5,36.9769,107.5)
AutoGenParent382ID200.collider:SetZAxis(0.994692,0,-0.102899)
AutoGenParent382ID200.collider:SetHalfLengths(0.3,6.22545,14.5774)
AutoGenParent382ID190.collider:AddChild(AutoGenParent382ID200.collider)
table.insert(colliders,AutoGenParent382ID200)
AutoGenParent382ID201 = {}
AutoGenParent382ID201.collider = AABBCollider.Create(-1)
AutoGenParent382ID201.collider:SetOffset(0,0,0)
AutoGenParent382ID201.collider:SetMinPos(166.951,31.8654,66.8138)
AutoGenParent382ID201.collider:SetMaxPos(309.235,57.4621,252.296)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID201.collider)
table.insert(colliders,AutoGenParent382ID201)
AutoGenParent382ID202 = {}
AutoGenParent382ID202.collider = OBBCollider.Create(-1)
AutoGenParent382ID202.collider:SetOffset(299.5,41.3216,79)
AutoGenParent382ID202.collider:SetZAxis(0.620703,0,0.784046)
AutoGenParent382ID202.collider:SetHalfLengths(0.3,6.33685,15.3052)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID202.collider)
table.insert(colliders,AutoGenParent382ID202)
AutoGenParent382ID203 = {}
AutoGenParent382ID203.collider = OBBCollider.Create(-1)
AutoGenParent382ID203.collider:SetOffset(173,43.1041,251)
AutoGenParent382ID203.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent382ID203.collider:SetHalfLengths(0.3,9.01056,6.08276)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID203.collider)
table.insert(colliders,AutoGenParent382ID203)
AutoGenParent382ID204 = {}
AutoGenParent382ID204.collider = OBBCollider.Create(-1)
AutoGenParent382ID204.collider:SetOffset(182.5,47.1147,250.5)
AutoGenParent382ID204.collider:SetZAxis(0.919145,0,-0.393919)
AutoGenParent382ID204.collider:SetHalfLengths(0.3,8.45354,3.80789)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID204.collider)
table.insert(colliders,AutoGenParent382ID204)
AutoGenParent382ID205 = {}
AutoGenParent382ID205.collider = OBBCollider.Create(-1)
AutoGenParent382ID205.collider:SetOffset(212.5,51.5708,223.5)
AutoGenParent382ID205.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent382ID205.collider:SetHalfLengths(0.3,5.89124,4.74342)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID205.collider)
table.insert(colliders,AutoGenParent382ID205)
AutoGenParent382ID206 = {}
AutoGenParent382ID206.collider = OBBCollider.Create(-1)
AutoGenParent382ID206.collider:SetOffset(205,50.6796,226)
AutoGenParent382ID206.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent382ID206.collider:SetHalfLengths(0.3,6.11405,3.16228)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID206.collider)
table.insert(colliders,AutoGenParent382ID206)
AutoGenParent382ID207 = {}
AutoGenParent382ID207.collider = OBBCollider.Create(-1)
AutoGenParent382ID207.collider:SetOffset(198.5,49.5656,227.5)
AutoGenParent382ID207.collider:SetZAxis(-0.98995,0,0.141421)
AutoGenParent382ID207.collider:SetHalfLengths(0.3,6.22544,3.53553)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID207.collider)
table.insert(colliders,AutoGenParent382ID207)
AutoGenParent382ID208 = {}
AutoGenParent382ID208.collider = OBBCollider.Create(-1)
AutoGenParent382ID208.collider:SetOffset(269,37.4225,131)
AutoGenParent382ID208.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent382ID208.collider:SetHalfLengths(0.3,5.1114,2.23607)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID208.collider)
table.insert(colliders,AutoGenParent382ID208)
AutoGenParent382ID209 = {}
AutoGenParent382ID209.collider = OBBCollider.Create(-1)
AutoGenParent382ID209.collider:SetOffset(273.5,37.3111,129.5)
AutoGenParent382ID209.collider:SetZAxis(0.980581,0,-0.196116)
AutoGenParent382ID209.collider:SetHalfLengths(0.3,5.22281,2.54951)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID209.collider)
table.insert(colliders,AutoGenParent382ID209)
AutoGenParent382ID210 = {}
AutoGenParent382ID210.collider = OBBCollider.Create(-1)
AutoGenParent382ID210.collider:SetOffset(281.5,37.5339,128.5)
AutoGenParent382ID210.collider:SetZAxis(0.995893,0,-0.0905357)
AutoGenParent382ID210.collider:SetHalfLengths(0.3,5.33421,5.52268)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID210.collider)
table.insert(colliders,AutoGenParent382ID210)
AutoGenParent382ID211 = {}
AutoGenParent382ID211.collider = OBBCollider.Create(-1)
AutoGenParent382ID211.collider:SetOffset(291.5,38.2023,98.5)
AutoGenParent382ID211.collider:SetZAxis(-0.654931,0,-0.755689)
AutoGenParent382ID211.collider:SetHalfLengths(0.3,6.33685,9.92472)
AutoGenParent382ID201.collider:AddChild(AutoGenParent382ID211.collider)
table.insert(colliders,AutoGenParent382ID211)
AutoGenParent382ID212 = {}
AutoGenParent382ID212.collider = AABBCollider.Create(-1)
AutoGenParent382ID212.collider:SetOffset(0,0,0)
AutoGenParent382ID212.collider:SetMinPos(185.808,30.3058,90.7879)
AutoGenParent382ID212.collider:SetMaxPos(315.212,66.1516,249.23)
AutoGenParent382ID112.collider:AddChild(AutoGenParent382ID212.collider)
table.insert(colliders,AutoGenParent382ID212)
AutoGenParent382ID213 = {}
AutoGenParent382ID213.collider = OBBCollider.Create(-1)
AutoGenParent382ID213.collider:SetOffset(312,42.6585,94)
AutoGenParent382ID213.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID213.collider:SetHalfLengths(0.3,6.33685,4.24264)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID213.collider)
table.insert(colliders,AutoGenParent382ID213)
AutoGenParent382ID214 = {}
AutoGenParent382ID214.collider = OBBCollider.Create(-1)
AutoGenParent382ID214.collider:SetOffset(189,50.5682,246.5)
AutoGenParent382ID214.collider:SetZAxis(0.768221,0,-0.640184)
AutoGenParent382ID214.collider:SetHalfLengths(0.3,5.89124,3.90512)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID214.collider)
table.insert(colliders,AutoGenParent382ID214)
AutoGenParent382ID215 = {}
AutoGenParent382ID215.collider = OBBCollider.Create(-1)
AutoGenParent382ID215.collider:SetOffset(194.5,51.4594,244)
AutoGenParent382ID215.collider:SetZAxis(1,0,0)
AutoGenParent382ID215.collider:SetHalfLengths(0.3,6.78247,2.5)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID215.collider)
table.insert(colliders,AutoGenParent382ID215)
AutoGenParent382ID216 = {}
AutoGenParent382ID216.collider = OBBCollider.Create(-1)
AutoGenParent382ID216.collider:SetOffset(200.5,53.2419,244.5)
AutoGenParent382ID216.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent382ID216.collider:SetHalfLengths(0.3,7.00528,3.53553)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID216.collider)
table.insert(colliders,AutoGenParent382ID216)
AutoGenParent382ID217 = {}
AutoGenParent382ID217.collider = OBBCollider.Create(-1)
AutoGenParent382ID217.collider:SetOffset(207,55.2472,245.5)
AutoGenParent382ID217.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent382ID217.collider:SetHalfLengths(0.3,6.44826,3.04138)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID217.collider)
table.insert(colliders,AutoGenParent382ID217)
AutoGenParent382ID218 = {}
AutoGenParent382ID218.collider = OBBCollider.Create(-1)
AutoGenParent382ID218.collider:SetOffset(212.5,56.6954,247)
AutoGenParent382ID218.collider:SetZAxis(0.928477,0,0.371391)
AutoGenParent382ID218.collider:SetHalfLengths(0.3,7.22809,2.69258)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID218.collider)
table.insert(colliders,AutoGenParent382ID218)
AutoGenParent382ID219 = {}
AutoGenParent382ID219.collider = OBBCollider.Create(-1)
AutoGenParent382ID219.collider:SetOffset(220.5,56.3612,226)
AutoGenParent382ID219.collider:SetZAxis(-0.658505,0,-0.752577)
AutoGenParent382ID219.collider:SetHalfLengths(0.3,9.79039,5.31507)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID219.collider)
table.insert(colliders,AutoGenParent382ID219)
AutoGenParent382ID220 = {}
AutoGenParent382ID220.collider = OBBCollider.Create(-1)
AutoGenParent382ID220.collider:SetOffset(293,37.1997,129)
AutoGenParent382ID220.collider:SetZAxis(0.986394,0,0.164399)
AutoGenParent382ID220.collider:SetHalfLengths(0.3,5.89124,6.08276)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID220.collider)
table.insert(colliders,AutoGenParent382ID220)
AutoGenParent382ID221 = {}
AutoGenParent382ID221.collider = OBBCollider.Create(-1)
AutoGenParent382ID221.collider:SetOffset(306,36.3084,132)
AutoGenParent382ID221.collider:SetZAxis(0.961524,0,0.274721)
AutoGenParent382ID221.collider:SetHalfLengths(0.3,6.00264,7.28011)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID221.collider)
table.insert(colliders,AutoGenParent382ID221)
AutoGenParent382ID222 = {}
AutoGenParent382ID222.collider = OBBCollider.Create(-1)
AutoGenParent382ID222.collider:SetOffset(227.5,56.3612,232)
AutoGenParent382ID222.collider:SetZAxis(0.868243,0,0.496139)
AutoGenParent382ID222.collider:SetHalfLengths(0.3,5.77983,4.03113)
AutoGenParent382ID212.collider:AddChild(AutoGenParent382ID222.collider)
table.insert(colliders,AutoGenParent382ID222)
AutoGenParent382ID223 = {}
AutoGenParent382ID223.collider = AABBCollider.Create(-1)
AutoGenParent382ID223.collider:SetOffset(0,0,0)
AutoGenParent382ID223.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent382ID223.collider:SetMaxPos(512.3,68.8781,255.3)
AutoGenParent382ID.collider:AddChild(AutoGenParent382ID223.collider)
table.insert(colliders,AutoGenParent382ID223)
AutoGenParent382ID224 = {}
AutoGenParent382ID224.collider = AABBCollider.Create(-1)
AutoGenParent382ID224.collider:SetOffset(0,0,0)
AutoGenParent382ID224.collider:SetMinPos(214.846,29.1917,96.8126)
AutoGenParent382ID224.collider:SetMaxPos(336.204,65.3718,254.298)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID224.collider)
table.insert(colliders,AutoGenParent382ID224)
AutoGenParent382ID225 = {}
AutoGenParent382ID225.collider = OBBCollider.Create(-1)
AutoGenParent382ID225.collider:SetOffset(318,42.1015,102)
AutoGenParent382ID225.collider:SetZAxis(0.624695,0,0.780869)
AutoGenParent382ID225.collider:SetHalfLengths(0.3,9.67899,6.40312)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID225.collider)
table.insert(colliders,AutoGenParent382ID225)
AutoGenParent382ID226 = {}
AutoGenParent382ID226.collider = OBBCollider.Create(-1)
AutoGenParent382ID226.collider:SetOffset(329,37.4225,113.5)
AutoGenParent382ID226.collider:SetZAxis(0.732794,0,0.680451)
AutoGenParent382ID226.collider:SetHalfLengths(0.3,5.33421,9.55249)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID226.collider)
table.insert(colliders,AutoGenParent382ID226)
AutoGenParent382ID227 = {}
AutoGenParent382ID227.collider = OBBCollider.Create(-1)
AutoGenParent382ID227.collider:SetOffset(217.5,58.9235,249.5)
AutoGenParent382ID227.collider:SetZAxis(0.857493,0,0.514496)
AutoGenParent382ID227.collider:SetHalfLengths(0.3,5.77983,2.91548)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID227.collider)
table.insert(colliders,AutoGenParent382ID227)
AutoGenParent382ID228 = {}
AutoGenParent382ID228.collider = OBBCollider.Create(-1)
AutoGenParent382ID228.collider:SetOffset(221.5,59.7034,252.5)
AutoGenParent382ID228.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID228.collider:SetHalfLengths(0.3,5.55702,2.12132)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID228.collider)
table.insert(colliders,AutoGenParent382ID228)
AutoGenParent382ID229 = {}
AutoGenParent382ID229.collider = OBBCollider.Create(-1)
AutoGenParent382ID229.collider:SetOffset(227.5,60.2604,253.5)
AutoGenParent382ID229.collider:SetZAxis(0.993884,0,-0.110432)
AutoGenParent382ID229.collider:SetHalfLengths(0.3,5.1114,4.52769)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID229.collider)
table.insert(colliders,AutoGenParent382ID229)
AutoGenParent382ID230 = {}
AutoGenParent382ID230.collider = OBBCollider.Create(-1)
AutoGenParent382ID230.collider:SetOffset(234.5,57.1411,234.5)
AutoGenParent382ID230.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent382ID230.collider:SetHalfLengths(0.3,5.66843,3.53553)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID230.collider)
table.insert(colliders,AutoGenParent382ID230)
AutoGenParent382ID231 = {}
AutoGenParent382ID231.collider = OBBCollider.Create(-1)
AutoGenParent382ID231.collider:SetOffset(241,57.8095,233.5)
AutoGenParent382ID231.collider:SetZAxis(0.894427,0,-0.447214)
AutoGenParent382ID231.collider:SetHalfLengths(0.3,5.22281,3.3541)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID231.collider)
table.insert(colliders,AutoGenParent382ID231)
AutoGenParent382ID232 = {}
AutoGenParent382ID232.collider = OBBCollider.Create(-1)
AutoGenParent382ID232.collider:SetOffset(247.5,57.5867,231.5)
AutoGenParent382ID232.collider:SetZAxis(0.98995,0,-0.141421)
AutoGenParent382ID232.collider:SetHalfLengths(0.3,5.22281,3.53553)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID232.collider)
table.insert(colliders,AutoGenParent382ID232)
AutoGenParent382ID233 = {}
AutoGenParent382ID233.collider = OBBCollider.Create(-1)
AutoGenParent382ID233.collider:SetOffset(259,57.8095,232)
AutoGenParent382ID233.collider:SetZAxis(0.992278,0,0.124035)
AutoGenParent382ID233.collider:SetHalfLengths(0.3,6.00264,8.06226)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID233.collider)
table.insert(colliders,AutoGenParent382ID233)
AutoGenParent382ID234 = {}
AutoGenParent382ID234.collider = OBBCollider.Create(-1)
AutoGenParent382ID234.collider:SetOffset(319.5,34.7488,138.5)
AutoGenParent382ID234.collider:SetZAxis(-0.822192,0,-0.56921)
AutoGenParent382ID234.collider:SetHalfLengths(0.3,5.55702,7.90569)
AutoGenParent382ID224.collider:AddChild(AutoGenParent382ID234.collider)
table.insert(colliders,AutoGenParent382ID234)
AutoGenParent382ID235 = {}
AutoGenParent382ID235.collider = AABBCollider.Create(-1)
AutoGenParent382ID235.collider:SetOffset(0,0,0)
AutoGenParent382ID235.collider:SetMinPos(231.935,29.7488,119.828)
AutoGenParent382ID235.collider:SetMaxPos(358.159,67.2657,253.293)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID235.collider)
table.insert(colliders,AutoGenParent382ID235)
AutoGenParent382ID236 = {}
AutoGenParent382ID236.collider = OBBCollider.Create(-1)
AutoGenParent382ID236.collider:SetOffset(343,37.0883,130)
AutoGenParent382ID236.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent382ID236.collider:SetHalfLengths(0.3,6.78247,12.2066)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID236.collider)
table.insert(colliders,AutoGenParent382ID236)
AutoGenParent382ID237 = {}
AutoGenParent382ID237.collider = OBBCollider.Create(-1)
AutoGenParent382ID237.collider:SetOffset(354,38.8707,142.5)
AutoGenParent382ID237.collider:SetZAxis(0.847998,0,0.529999)
AutoGenParent382ID237.collider:SetHalfLengths(0.3,5.22281,4.71699)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID237.collider)
table.insert(colliders,AutoGenParent382ID237)
AutoGenParent382ID238 = {}
AutoGenParent382ID238.collider = OBBCollider.Create(-1)
AutoGenParent382ID238.collider:SetOffset(236.5,60.149,252)
AutoGenParent382ID238.collider:SetZAxis(0.976187,0,-0.21693)
AutoGenParent382ID238.collider:SetHalfLengths(0.3,5.22281,4.60977)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID238.collider)
table.insert(colliders,AutoGenParent382ID238)
AutoGenParent382ID239 = {}
AutoGenParent382ID239.collider = OBBCollider.Create(-1)
AutoGenParent382ID239.collider:SetOffset(246.5,60.3718,250)
AutoGenParent382ID239.collider:SetZAxis(0.98387,0,-0.178885)
AutoGenParent382ID239.collider:SetHalfLengths(0.3,5.44562,5.59017)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID239.collider)
table.insert(colliders,AutoGenParent382ID239)
AutoGenParent382ID240 = {}
AutoGenParent382ID240.collider = OBBCollider.Create(-1)
AutoGenParent382ID240.collider:SetOffset(259.5,59.9262,249.5)
AutoGenParent382ID240.collider:SetZAxis(0.997785,0,0.066519)
AutoGenParent382ID240.collider:SetHalfLengths(0.3,5.1114,7.51665)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID240.collider)
table.insert(colliders,AutoGenParent382ID240)
AutoGenParent382ID241 = {}
AutoGenParent382ID241.collider = OBBCollider.Create(-1)
AutoGenParent382ID241.collider:SetOffset(274,60.0376,251)
AutoGenParent382ID241.collider:SetZAxis(0.98995,0,0.141421)
AutoGenParent382ID241.collider:SetHalfLengths(0.3,5.33421,7.07107)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID241.collider)
table.insert(colliders,AutoGenParent382ID241)
AutoGenParent382ID242 = {}
AutoGenParent382ID242.collider = OBBCollider.Create(-1)
AutoGenParent382ID242.collider:SetOffset(277,56.8068,233.5)
AutoGenParent382ID242.collider:SetZAxis(0.998752,0,0.0499376)
AutoGenParent382ID242.collider:SetHalfLengths(0.3,5.77983,10.0125)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID242.collider)
table.insert(colliders,AutoGenParent382ID242)
AutoGenParent382ID243 = {}
AutoGenParent382ID243.collider = OBBCollider.Create(-1)
AutoGenParent382ID243.collider:SetOffset(295,56.027,232)
AutoGenParent382ID243.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent382ID243.collider:SetHalfLengths(0.3,11.2386,8.24621)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID243.collider)
table.insert(colliders,AutoGenParent382ID243)
AutoGenParent382ID244 = {}
AutoGenParent382ID244.collider = OBBCollider.Create(-1)
AutoGenParent382ID244.collider:SetOffset(340.5,36.197,162)
AutoGenParent382ID244.collider:SetZAxis(-0.734803,0,-0.67828)
AutoGenParent382ID244.collider:SetHalfLengths(0.3,5.55702,8.8459)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID244.collider)
table.insert(colliders,AutoGenParent382ID244)
AutoGenParent382ID245 = {}
AutoGenParent382ID245.collider = OBBCollider.Create(-1)
AutoGenParent382ID245.collider:SetOffset(330,35.64,149.5)
AutoGenParent382ID245.collider:SetZAxis(-0.524097,0,-0.851658)
AutoGenParent382ID245.collider:SetHalfLengths(0.3,5.89124,7.63217)
AutoGenParent382ID235.collider:AddChild(AutoGenParent382ID245.collider)
table.insert(colliders,AutoGenParent382ID245)
AutoGenParent382ID246 = {}
AutoGenParent382ID246.collider = AABBCollider.Create(-1)
AutoGenParent382ID246.collider:SetOffset(0,0,0)
AutoGenParent382ID246.collider:SetMinPos(281,31.197,144.706)
AutoGenParent382ID246.collider:SetMaxPos(368.059,67.0429,255.3)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID246.collider)
table.insert(colliders,AutoGenParent382ID246)
AutoGenParent382ID247 = {}
AutoGenParent382ID247.collider = OBBCollider.Create(-1)
AutoGenParent382ID247.collider:SetOffset(363,38.6479,146)
AutoGenParent382ID247.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent382ID247.collider:SetHalfLengths(0.3,5.33421,5.09902)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID247.collider)
table.insert(colliders,AutoGenParent382ID247)
AutoGenParent382ID248 = {}
AutoGenParent382ID248.collider = OBBCollider.Create(-1)
AutoGenParent382ID248.collider:SetOffset(287.5,59.7034,252)
AutoGenParent382ID248.collider:SetZAxis(1,0,0)
AutoGenParent382ID248.collider:SetHalfLengths(0.3,6.11405,6.5)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID248.collider)
table.insert(colliders,AutoGenParent382ID248)
AutoGenParent382ID249 = {}
AutoGenParent382ID249.collider = OBBCollider.Create(-1)
AutoGenParent382ID249.collider:SetOffset(296,58.5893,252.5)
AutoGenParent382ID249.collider:SetZAxis(0.970143,0,0.242536)
AutoGenParent382ID249.collider:SetHalfLengths(0.3,8.45354,2.06155)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID249.collider)
table.insert(colliders,AutoGenParent382ID249)
AutoGenParent382ID250 = {}
AutoGenParent382ID250.collider = OBBCollider.Create(-1)
AutoGenParent382ID250.collider:SetOffset(299,55.1358,254)
AutoGenParent382ID250.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID250.collider:SetHalfLengths(0.3,5.1114,1.41421)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID250.collider)
table.insert(colliders,AutoGenParent382ID250)
AutoGenParent382ID251 = {}
AutoGenParent382ID251.collider = OBBCollider.Create(-1)
AutoGenParent382ID251.collider:SetOffset(307,55.2472,255)
AutoGenParent382ID251.collider:SetZAxis(1,0,0)
AutoGenParent382ID251.collider:SetHalfLengths(0.3,9.01056,7)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID251.collider)
table.insert(colliders,AutoGenParent382ID251)
AutoGenParent382ID252 = {}
AutoGenParent382ID252.collider = OBBCollider.Create(-1)
AutoGenParent382ID252.collider:SetOffset(306,49.7884,231.5)
AutoGenParent382ID252.collider:SetZAxis(0.894427,0,0.447214)
AutoGenParent382ID252.collider:SetHalfLengths(0.3,6.11404,3.3541)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID252.collider)
table.insert(colliders,AutoGenParent382ID252)
AutoGenParent382ID253 = {}
AutoGenParent382ID253.collider = OBBCollider.Create(-1)
AutoGenParent382ID253.collider:SetOffset(339,48.1173,215.5)
AutoGenParent382ID253.collider:SetZAxis(0.682318,0,-0.731055)
AutoGenParent382ID253.collider:SetHalfLengths(0.3,12.0185,10.2591)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID253.collider)
table.insert(colliders,AutoGenParent382ID253)
AutoGenParent382ID254 = {}
AutoGenParent382ID254.collider = OBBCollider.Create(-1)
AutoGenParent382ID254.collider:SetOffset(351.5,38.3137,183.5)
AutoGenParent382ID254.collider:SetZAxis(0.263117,0,-0.964764)
AutoGenParent382ID254.collider:SetHalfLengths(0.3,6.22545,5.70088)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID254.collider)
table.insert(colliders,AutoGenParent382ID254)
AutoGenParent382ID255 = {}
AutoGenParent382ID255.collider = OBBCollider.Create(-1)
AutoGenParent382ID255.collider:SetOffset(350,37.0883,173)
AutoGenParent382ID255.collider:SetZAxis(-0.514496,0,-0.857493)
AutoGenParent382ID255.collider:SetHalfLengths(0.3,5.89124,5.83095)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID255.collider)
table.insert(colliders,AutoGenParent382ID255)
AutoGenParent382ID256 = {}
AutoGenParent382ID256.collider = OBBCollider.Create(-1)
AutoGenParent382ID256.collider:SetOffset(320.5,48.1173,228)
AutoGenParent382ID256.collider:SetZAxis(-0.91707,0,0.398726)
AutoGenParent382ID256.collider:SetHalfLengths(0.3,5.55703,12.5399)
AutoGenParent382ID246.collider:AddChild(AutoGenParent382ID256.collider)
table.insert(colliders,AutoGenParent382ID256)
AutoGenParent382ID257 = {}
AutoGenParent382ID257.collider = AABBCollider.Create(-1)
AutoGenParent382ID257.collider:SetOffset(0,0,0)
AutoGenParent382ID257.collider:SetMinPos(312.709,30.1951,145)
AutoGenParent382ID257.collider:SetMaxPos(384.3,56.9051,255)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID257.collider)
table.insert(colliders,AutoGenParent382ID257)
AutoGenParent382ID258 = {}
AutoGenParent382ID258.collider = OBBCollider.Create(-1)
AutoGenParent382ID258.collider:SetOffset(372,38.3137,147)
AutoGenParent382ID258.collider:SetZAxis(1,0,0)
AutoGenParent382ID258.collider:SetHalfLengths(0.3,6.11404,4)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID258.collider)
table.insert(colliders,AutoGenParent382ID258)
AutoGenParent382ID259 = {}
AutoGenParent382ID259.collider = OBBCollider.Create(-1)
AutoGenParent382ID259.collider:SetOffset(380,37.1997,147)
AutoGenParent382ID259.collider:SetZAxis(1,0,0)
AutoGenParent382ID259.collider:SetHalfLengths(0.3,6.11404,4)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID259.collider)
table.insert(colliders,AutoGenParent382ID259)
AutoGenParent382ID260 = {}
AutoGenParent382ID260.collider = OBBCollider.Create(-1)
AutoGenParent382ID260.collider:SetOffset(314,51.2366,252.5)
AutoGenParent382ID260.collider:SetZAxis(0,0,-1)
AutoGenParent382ID260.collider:SetHalfLengths(0.3,5.66843,2.5)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID260.collider)
table.insert(colliders,AutoGenParent382ID260)
AutoGenParent382ID261 = {}
AutoGenParent382ID261.collider = OBBCollider.Create(-1)
AutoGenParent382ID261.collider:SetOffset(313.5,50.5682,248)
AutoGenParent382ID261.collider:SetZAxis(-0.242536,0,-0.970143)
AutoGenParent382ID261.collider:SetHalfLengths(0.3,5.44562,2.06155)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID261.collider)
table.insert(colliders,AutoGenParent382ID261)
AutoGenParent382ID262 = {}
AutoGenParent382ID262.collider = OBBCollider.Create(-1)
AutoGenParent382ID262.collider:SetOffset(374,39.4277,170.5)
AutoGenParent382ID262.collider:SetZAxis(0.274721,0,-0.961524)
AutoGenParent382ID262.collider:SetHalfLengths(0.3,5.55702,3.64005)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID262.collider)
table.insert(colliders,AutoGenParent382ID262)
AutoGenParent382ID263 = {}
AutoGenParent382ID263.collider = OBBCollider.Create(-1)
AutoGenParent382ID263.collider:SetOffset(377.5,39.9848,162.5)
AutoGenParent382ID263.collider:SetZAxis(0.485643,0,-0.874157)
AutoGenParent382ID263.collider:SetHalfLengths(0.3,7.89651,5.14782)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID263.collider)
table.insert(colliders,AutoGenParent382ID263)
AutoGenParent382ID264 = {}
AutoGenParent382ID264.collider = OBBCollider.Create(-1)
AutoGenParent382ID264.collider:SetOffset(348,41.0988,203.5)
AutoGenParent382ID264.collider:SetZAxis(0.406139,0,-0.913812)
AutoGenParent382ID264.collider:SetHalfLengths(0.3,6.67107,4.92443)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID264.collider)
table.insert(colliders,AutoGenParent382ID264)
AutoGenParent382ID265 = {}
AutoGenParent382ID265.collider = OBBCollider.Create(-1)
AutoGenParent382ID265.collider:SetOffset(350,39.4277,194)
AutoGenParent382ID265.collider:SetZAxis(0,0,-1)
AutoGenParent382ID265.collider:SetHalfLengths(0.3,6.11404,5)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID265.collider)
table.insert(colliders,AutoGenParent382ID265)
AutoGenParent382ID266 = {}
AutoGenParent382ID266.collider = OBBCollider.Create(-1)
AutoGenParent382ID266.collider:SetOffset(324.5,50.1226,244)
AutoGenParent382ID266.collider:SetZAxis(0.985212,0,-0.171341)
AutoGenParent382ID266.collider:SetHalfLengths(0.3,6.22545,11.6726)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID266.collider)
table.insert(colliders,AutoGenParent382ID266)
AutoGenParent382ID267 = {}
AutoGenParent382ID267.collider = OBBCollider.Create(-1)
AutoGenParent382ID267.collider:SetOffset(384,35.1951,146)
AutoGenParent382ID267.collider:SetZAxis(0,0,1)
AutoGenParent382ID267.collider:SetHalfLengths(0.3,5,1)
AutoGenParent382ID257.collider:AddChild(AutoGenParent382ID267.collider)
table.insert(colliders,AutoGenParent382ID267)
AutoGenParent382ID268 = {}
AutoGenParent382ID268.collider = AABBCollider.Create(-1)
AutoGenParent382ID268.collider:SetOffset(0,0,0)
AutoGenParent382ID268.collider:SetMinPos(335.753,30.1951,134.729)
AutoGenParent382ID268.collider:SetMaxPos(422.128,65.4832,255.171)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID268.collider)
table.insert(colliders,AutoGenParent382ID268)
AutoGenParent382ID269 = {}
AutoGenParent382ID269.collider = OBBCollider.Create(-1)
AutoGenParent382ID269.collider:SetOffset(340.5,55.47,248.5)
AutoGenParent382ID269.collider:SetZAxis(-0.56921,0,-0.822192)
AutoGenParent382ID269.collider:SetHalfLengths(0.3,9.12196,7.90569)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID269.collider)
table.insert(colliders,AutoGenParent382ID269)
AutoGenParent382ID270 = {}
AutoGenParent382ID270.collider = OBBCollider.Create(-1)
AutoGenParent382ID270.collider:SetOffset(353,57.0297,240.5)
AutoGenParent382ID270.collider:SetZAxis(0.672673,0,-0.73994)
AutoGenParent382ID270.collider:SetHalfLengths(0.3,8.45354,7.43303)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID270.collider)
table.insert(colliders,AutoGenParent382ID270)
AutoGenParent382ID271 = {}
AutoGenParent382ID271.collider = OBBCollider.Create(-1)
AutoGenParent382ID271.collider:SetOffset(363,53.5761,226.5)
AutoGenParent382ID271.collider:SetZAxis(0.50702,0,-0.861934)
AutoGenParent382ID271.collider:SetHalfLengths(0.3,9.67899,9.86154)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID271.collider)
table.insert(colliders,AutoGenParent382ID271)
AutoGenParent382ID272 = {}
AutoGenParent382ID272.collider = OBBCollider.Create(-1)
AutoGenParent382ID272.collider:SetOffset(371,48.8971,211)
AutoGenParent382ID272.collider:SetZAxis(0.393919,0,-0.919145)
AutoGenParent382ID272.collider:SetHalfLengths(0.3,7.4509,7.61577)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID272.collider)
table.insert(colliders,AutoGenParent382ID272)
AutoGenParent382ID273 = {}
AutoGenParent382ID273.collider = OBBCollider.Create(-1)
AutoGenParent382ID273.collider:SetOffset(373.5,46.4462,189)
AutoGenParent382ID273.collider:SetZAxis(-0.0333148,0,-0.999445)
AutoGenParent382ID273.collider:SetHalfLengths(0.3,12.0185,15.0083)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID273.collider)
table.insert(colliders,AutoGenParent382ID273)
AutoGenParent382ID274 = {}
AutoGenParent382ID274.collider = OBBCollider.Create(-1)
AutoGenParent382ID274.collider:SetOffset(382,37.0883,157.5)
AutoGenParent382ID274.collider:SetZAxis(0.970143,0,-0.242536)
AutoGenParent382ID274.collider:SetHalfLengths(0.3,5.1114,2.06155)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID274.collider)
table.insert(colliders,AutoGenParent382ID274)
AutoGenParent382ID275 = {}
AutoGenParent382ID275.collider = OBBCollider.Create(-1)
AutoGenParent382ID275.collider:SetOffset(388.5,36.4629,157)
AutoGenParent382ID275.collider:SetZAxis(1,0,0)
AutoGenParent382ID275.collider:SetHalfLengths(0.3,5.15847,4.5)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID275.collider)
table.insert(colliders,AutoGenParent382ID275)
AutoGenParent382ID276 = {}
AutoGenParent382ID276.collider = OBBCollider.Create(-1)
AutoGenParent382ID276.collider:SetOffset(398,36.3044,158)
AutoGenParent382ID276.collider:SetZAxis(0.980581,0,0.196116)
AutoGenParent382ID276.collider:SetHalfLengths(0.3,5.15847,5.09902)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID276.collider)
table.insert(colliders,AutoGenParent382ID276)
AutoGenParent382ID277 = {}
AutoGenParent382ID277.collider = OBBCollider.Create(-1)
AutoGenParent382ID277.collider:SetOffset(412.5,35.5121,139.5)
AutoGenParent382ID277.collider:SetZAxis(-0.903738,0,0.428086)
AutoGenParent382ID277.collider:SetHalfLengths(0.3,5.15847,10.5119)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID277.collider)
table.insert(colliders,AutoGenParent382ID277)
AutoGenParent382ID278 = {}
AutoGenParent382ID278.collider = OBBCollider.Create(-1)
AutoGenParent382ID278.collider:SetOffset(392,35.3536,145)
AutoGenParent382ID278.collider:SetZAxis(-1,0,0)
AutoGenParent382ID278.collider:SetHalfLengths(0.3,5.15847,8)
AutoGenParent382ID268.collider:AddChild(AutoGenParent382ID278.collider)
table.insert(colliders,AutoGenParent382ID278)
AutoGenParent382ID279 = {}
AutoGenParent382ID279.collider = AABBCollider.Create(-1)
AutoGenParent382ID279.collider:SetOffset(0,0,0)
AutoGenParent382ID279.collider:SetMinPos(344.715,30.3536,127.711)
AutoGenParent382ID279.collider:SetMaxPos(452.08,62.0297,255.095)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID279.collider)
table.insert(colliders,AutoGenParent382ID279)
AutoGenParent382ID280 = {}
AutoGenParent382ID280.collider = OBBCollider.Create(-1)
AutoGenParent382ID280.collider:SetOffset(346.5,55.47,250.5)
AutoGenParent382ID280.collider:SetZAxis(0.316228,0,-0.948683)
AutoGenParent382ID280.collider:SetHalfLengths(0.3,6.55966,4.74342)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID280.collider)
table.insert(colliders,AutoGenParent382ID280)
AutoGenParent382ID281 = {}
AutoGenParent382ID281.collider = OBBCollider.Create(-1)
AutoGenParent382ID281.collider:SetOffset(404,36.146,160)
AutoGenParent382ID281.collider:SetZAxis(0.707107,0,0.707107)
AutoGenParent382ID281.collider:SetHalfLengths(0.3,5.15847,1.41421)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID281.collider)
table.insert(colliders,AutoGenParent382ID281)
AutoGenParent382ID282 = {}
AutoGenParent382ID282.collider = OBBCollider.Create(-1)
AutoGenParent382ID282.collider:SetOffset(406,36.3044,162.5)
AutoGenParent382ID282.collider:SetZAxis(0.5547,0,0.83205)
AutoGenParent382ID282.collider:SetHalfLengths(0.3,5.15847,1.80278)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID282.collider)
table.insert(colliders,AutoGenParent382ID282)
AutoGenParent382ID283 = {}
AutoGenParent382ID283.collider = OBBCollider.Create(-1)
AutoGenParent382ID283.collider:SetOffset(409,36.4629,168)
AutoGenParent382ID283.collider:SetZAxis(0.447214,0,0.894427)
AutoGenParent382ID283.collider:SetHalfLengths(0.3,5.31694,4.47214)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID283.collider)
table.insert(colliders,AutoGenParent382ID283)
AutoGenParent382ID284 = {}
AutoGenParent382ID284.collider = OBBCollider.Create(-1)
AutoGenParent382ID284.collider:SetOffset(412.5,36.7798,176)
AutoGenParent382ID284.collider:SetZAxis(0.351123,0,0.936329)
AutoGenParent382ID284.collider:SetHalfLengths(0.3,5.79235,4.272)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID284.collider)
table.insert(colliders,AutoGenParent382ID284)
AutoGenParent382ID285 = {}
AutoGenParent382ID285.collider = OBBCollider.Create(-1)
AutoGenParent382ID285.collider:SetOffset(415.5,37.5722,185)
AutoGenParent382ID285.collider:SetZAxis(0.287348,0,0.957826)
AutoGenParent382ID285.collider:SetHalfLengths(0.3,5.63388,5.22015)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID285.collider)
table.insert(colliders,AutoGenParent382ID285)
AutoGenParent382ID286 = {}
AutoGenParent382ID286.collider = OBBCollider.Create(-1)
AutoGenParent382ID286.collider:SetOffset(418,38.2061,195.5)
AutoGenParent382ID286.collider:SetZAxis(0.178885,0,0.98387)
AutoGenParent382ID286.collider:SetHalfLengths(0.3,7.0601,5.59017)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID286.collider)
table.insert(colliders,AutoGenParent382ID286)
AutoGenParent382ID287 = {}
AutoGenParent382ID287.collider = OBBCollider.Create(-1)
AutoGenParent382ID287.collider:SetOffset(443,36.7798,130.5)
AutoGenParent382ID287.collider:SetZAxis(-0.963518,0,-0.267644)
AutoGenParent382ID287.collider:SetHalfLengths(0.3,5.95082,9.34077)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID287.collider)
table.insert(colliders,AutoGenParent382ID287)
AutoGenParent382ID288 = {}
AutoGenParent382ID288.collider = OBBCollider.Create(-1)
AutoGenParent382ID288.collider:SetOffset(428,35.829,131.5)
AutoGenParent382ID288.collider:SetZAxis(-0.863779,0,0.503871)
AutoGenParent382ID288.collider:SetHalfLengths(0.3,5.31694,6.94622)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID288.collider)
table.insert(colliders,AutoGenParent382ID288)
AutoGenParent382ID289 = {}
AutoGenParent382ID289.collider = OBBCollider.Create(-1)
AutoGenParent382ID289.collider:SetOffset(401.5,35.3536,144.5)
AutoGenParent382ID289.collider:SetZAxis(-0.948683,0,0.316228)
AutoGenParent382ID289.collider:SetHalfLengths(0.3,5,1.58114)
AutoGenParent382ID279.collider:AddChild(AutoGenParent382ID289.collider)
table.insert(colliders,AutoGenParent382ID289)
AutoGenParent382ID290 = {}
AutoGenParent382ID290.collider = AABBCollider.Create(-1)
AutoGenParent382ID290.collider:SetOffset(0,0,0)
AutoGenParent382ID290.collider:SetMinPos(414.709,30.9875,132.739)
AutoGenParent382ID290.collider:SetMaxPos(504.28,68.8781,255.3)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID290.collider)
table.insert(colliders,AutoGenParent382ID290)
AutoGenParent382ID291 = {}
AutoGenParent382ID291.collider = OBBCollider.Create(-1)
AutoGenParent382ID291.collider:SetOffset(419.5,40.2662,208.5)
AutoGenParent382ID291.collider:SetZAxis(0.066519,0,0.997785)
AutoGenParent382ID291.collider:SetHalfLengths(0.3,9.27867,7.51665)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID291.collider)
table.insert(colliders,AutoGenParent382ID291)
AutoGenParent382ID292 = {}
AutoGenParent382ID292.collider = OBBCollider.Create(-1)
AutoGenParent382ID292.collider:SetOffset(418.5,44.5448,223.5)
AutoGenParent382ID292.collider:SetZAxis(-0.196116,0,0.980581)
AutoGenParent382ID292.collider:SetHalfLengths(0.3,8.80326,7.64853)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID292.collider)
table.insert(colliders,AutoGenParent382ID292)
AutoGenParent382ID293 = {}
AutoGenParent382ID293.collider = OBBCollider.Create(-1)
AutoGenParent382ID293.collider:SetOffset(416,48.3481,235)
AutoGenParent382ID293.collider:SetZAxis(-0.242536,0,0.970143)
AutoGenParent382ID293.collider:SetHalfLengths(0.3,7.37704,4.12311)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID293.collider)
table.insert(colliders,AutoGenParent382ID293)
AutoGenParent382ID294 = {}
AutoGenParent382ID294.collider = OBBCollider.Create(-1)
AutoGenParent382ID294.collider:SetOffset(422,50.7251,242)
AutoGenParent382ID294.collider:SetZAxis(0.919145,0,0.393919)
AutoGenParent382ID294.collider:SetHalfLengths(0.3,5.79234,7.61577)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID294.collider)
table.insert(colliders,AutoGenParent382ID294)
AutoGenParent382ID295 = {}
AutoGenParent382ID295.collider = OBBCollider.Create(-1)
AutoGenParent382ID295.collider:SetOffset(432.5,51.5175,250)
AutoGenParent382ID295.collider:SetZAxis(0.573462,0,0.819232)
AutoGenParent382ID295.collider:SetHalfLengths(0.3,5.79235,6.10328)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID295.collider)
table.insert(colliders,AutoGenParent382ID295)
AutoGenParent382ID296 = {}
AutoGenParent382ID296.collider = OBBCollider.Create(-1)
AutoGenParent382ID296.collider:SetOffset(453.5,52.3098,255)
AutoGenParent382ID296.collider:SetZAxis(1,0,0)
AutoGenParent382ID296.collider:SetHalfLengths(0.3,16.5682,17.5)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID296.collider)
table.insert(colliders,AutoGenParent382ID296)
AutoGenParent382ID297 = {}
AutoGenParent382ID297.collider = OBBCollider.Create(-1)
AutoGenParent382ID297.collider:SetOffset(500.5,41.8508,190)
AutoGenParent382ID297.collider:SetZAxis(-0.362446,0,-0.932005)
AutoGenParent382ID297.collider:SetHalfLengths(0.3,5.63388,9.6566)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID297.collider)
table.insert(colliders,AutoGenParent382ID297)
AutoGenParent382ID298 = {}
AutoGenParent382ID298.collider = OBBCollider.Create(-1)
AutoGenParent382ID298.collider:SetOffset(492,41.217,172)
AutoGenParent382ID298.collider:SetZAxis(-0.485643,0,-0.874157)
AutoGenParent382ID298.collider:SetHalfLengths(0.3,6.42622,10.2956)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID298.collider)
table.insert(colliders,AutoGenParent382ID298)
AutoGenParent382ID299 = {}
AutoGenParent382ID299.collider = OBBCollider.Create(-1)
AutoGenParent382ID299.collider:SetOffset(481,39.7907,154.5)
AutoGenParent382ID299.collider:SetZAxis(-0.576683,0,-0.816968)
AutoGenParent382ID299.collider:SetHalfLengths(0.3,6.58469,10.4043)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID299.collider)
table.insert(colliders,AutoGenParent382ID299)
AutoGenParent382ID300 = {}
AutoGenParent382ID300.collider = OBBCollider.Create(-1)
AutoGenParent382ID300.collider:SetOffset(463.5,38.2061,139.5)
AutoGenParent382ID300.collider:SetZAxis(-0.870563,0,-0.492057)
AutoGenParent382ID300.collider:SetHalfLengths(0.3,6.42622,13.2098)
AutoGenParent382ID290.collider:AddChild(AutoGenParent382ID300.collider)
table.insert(colliders,AutoGenParent382ID300)
AutoGenParent382ID301 = {}
AutoGenParent382ID301.collider = AABBCollider.Create(-1)
AutoGenParent382ID301.collider:SetOffset(0,0,0)
AutoGenParent382ID301.collider:SetMinPos(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent382ID301.collider:SetMaxPos(512.3,47.4847,255.011)
AutoGenParent382ID223.collider:AddChild(AutoGenParent382ID301.collider)
table.insert(colliders,AutoGenParent382ID301)
AutoGenParent382ID302 = {}
AutoGenParent382ID302.collider = OBBCollider.Create(-1)
AutoGenParent382ID302.collider:SetOffset(-1.07374e+08,-1.07374e+08,-1.07374e+08)
AutoGenParent382ID302.collider:SetZAxis(-0.582718,0,0.812674)
AutoGenParent382ID302.collider:SetHalfLengths(0.5,0.5,0.5)
AutoGenParent382ID301.collider:AddChild(AutoGenParent382ID302.collider)
table.insert(colliders,AutoGenParent382ID302)
AutoGenParent382ID303 = {}
AutoGenParent382ID303.collider = OBBCollider.Create(-1)
AutoGenParent382ID303.collider:SetOffset(511.5,41.5339,241.5)
AutoGenParent382ID303.collider:SetZAxis(-0.0370117,0,-0.999315)
AutoGenParent382ID303.collider:SetHalfLengths(0.3,5.31694,13.5093)
AutoGenParent382ID301.collider:AddChild(AutoGenParent382ID303.collider)
table.insert(colliders,AutoGenParent382ID303)
AutoGenParent382ID304 = {}
AutoGenParent382ID304.collider = OBBCollider.Create(-1)
AutoGenParent382ID304.collider:SetOffset(510,41.8508,221)
AutoGenParent382ID304.collider:SetZAxis(-0.141421,0,-0.98995)
AutoGenParent382ID304.collider:SetHalfLengths(0.3,5.31694,7.07107)
AutoGenParent382ID301.collider:AddChild(AutoGenParent382ID304.collider)
table.insert(colliders,AutoGenParent382ID304)
AutoGenParent382ID305 = {}
AutoGenParent382ID305.collider = OBBCollider.Create(-1)
AutoGenParent382ID305.collider:SetOffset(506.5,42.1678,206.5)
AutoGenParent382ID305.collider:SetZAxis(-0.316228,0,-0.948683)
AutoGenParent382ID305.collider:SetHalfLengths(0.3,5.31694,7.90569)
AutoGenParent382ID301.collider:AddChild(AutoGenParent382ID305.collider)
table.insert(colliders,AutoGenParent382ID305)
CollisionHandler.AddAABB(AutoGenParent382ID.collider, 3)
AutoGenParent382ID1 = nil
AutoGenParent382ID2 = nil
AutoGenParent382ID3 = nil
AutoGenParent382ID4 = nil
AutoGenParent382ID5 = nil
AutoGenParent382ID6 = nil
AutoGenParent382ID7 = nil
AutoGenParent382ID8 = nil
AutoGenParent382ID9 = nil
AutoGenParent382ID10 = nil
AutoGenParent382ID11 = nil
AutoGenParent382ID12 = nil
AutoGenParent382ID13 = nil
AutoGenParent382ID14 = nil
AutoGenParent382ID15 = nil
AutoGenParent382ID16 = nil
AutoGenParent382ID17 = nil
AutoGenParent382ID18 = nil
AutoGenParent382ID19 = nil
AutoGenParent382ID20 = nil
AutoGenParent382ID21 = nil
AutoGenParent382ID22 = nil
AutoGenParent382ID23 = nil
AutoGenParent382ID24 = nil
AutoGenParent382ID25 = nil
AutoGenParent382ID26 = nil
AutoGenParent382ID27 = nil
AutoGenParent382ID28 = nil
AutoGenParent382ID29 = nil
AutoGenParent382ID30 = nil
AutoGenParent382ID31 = nil
AutoGenParent382ID32 = nil
AutoGenParent382ID33 = nil
AutoGenParent382ID34 = nil
AutoGenParent382ID35 = nil
AutoGenParent382ID36 = nil
AutoGenParent382ID37 = nil
AutoGenParent382ID38 = nil
AutoGenParent382ID39 = nil
AutoGenParent382ID40 = nil
AutoGenParent382ID41 = nil
AutoGenParent382ID42 = nil
AutoGenParent382ID43 = nil
AutoGenParent382ID44 = nil
AutoGenParent382ID45 = nil
AutoGenParent382ID46 = nil
AutoGenParent382ID47 = nil
AutoGenParent382ID48 = nil
AutoGenParent382ID49 = nil
AutoGenParent382ID50 = nil
AutoGenParent382ID51 = nil
AutoGenParent382ID52 = nil
AutoGenParent382ID53 = nil
AutoGenParent382ID54 = nil
AutoGenParent382ID55 = nil
AutoGenParent382ID56 = nil
AutoGenParent382ID57 = nil
AutoGenParent382ID58 = nil
AutoGenParent382ID59 = nil
AutoGenParent382ID60 = nil
AutoGenParent382ID61 = nil
AutoGenParent382ID62 = nil
AutoGenParent382ID63 = nil
AutoGenParent382ID64 = nil
AutoGenParent382ID65 = nil
AutoGenParent382ID66 = nil
AutoGenParent382ID67 = nil
AutoGenParent382ID68 = nil
AutoGenParent382ID69 = nil
AutoGenParent382ID70 = nil
AutoGenParent382ID71 = nil
AutoGenParent382ID72 = nil
AutoGenParent382ID73 = nil
AutoGenParent382ID74 = nil
AutoGenParent382ID75 = nil
AutoGenParent382ID76 = nil
AutoGenParent382ID77 = nil
AutoGenParent382ID78 = nil
AutoGenParent382ID79 = nil
AutoGenParent382ID80 = nil
AutoGenParent382ID81 = nil
AutoGenParent382ID82 = nil
AutoGenParent382ID83 = nil
AutoGenParent382ID84 = nil
AutoGenParent382ID85 = nil
AutoGenParent382ID86 = nil
AutoGenParent382ID87 = nil
AutoGenParent382ID88 = nil
AutoGenParent382ID89 = nil
AutoGenParent382ID90 = nil
AutoGenParent382ID91 = nil
AutoGenParent382ID92 = nil
AutoGenParent382ID93 = nil
AutoGenParent382ID94 = nil
AutoGenParent382ID95 = nil
AutoGenParent382ID96 = nil
AutoGenParent382ID97 = nil
AutoGenParent382ID98 = nil
AutoGenParent382ID99 = nil
AutoGenParent382ID100 = nil
AutoGenParent382ID101 = nil
AutoGenParent382ID102 = nil
AutoGenParent382ID103 = nil
AutoGenParent382ID104 = nil
AutoGenParent382ID105 = nil
AutoGenParent382ID106 = nil
AutoGenParent382ID107 = nil
AutoGenParent382ID108 = nil
AutoGenParent382ID109 = nil
AutoGenParent382ID110 = nil
AutoGenParent382ID111 = nil
AutoGenParent382ID112 = nil
AutoGenParent382ID113 = nil
AutoGenParent382ID114 = nil
AutoGenParent382ID115 = nil
AutoGenParent382ID116 = nil
AutoGenParent382ID117 = nil
AutoGenParent382ID118 = nil
AutoGenParent382ID119 = nil
AutoGenParent382ID120 = nil
AutoGenParent382ID121 = nil
AutoGenParent382ID122 = nil
AutoGenParent382ID123 = nil
AutoGenParent382ID124 = nil
AutoGenParent382ID125 = nil
AutoGenParent382ID126 = nil
AutoGenParent382ID127 = nil
AutoGenParent382ID128 = nil
AutoGenParent382ID129 = nil
AutoGenParent382ID130 = nil
AutoGenParent382ID131 = nil
AutoGenParent382ID132 = nil
AutoGenParent382ID133 = nil
AutoGenParent382ID134 = nil
AutoGenParent382ID135 = nil
AutoGenParent382ID136 = nil
AutoGenParent382ID137 = nil
AutoGenParent382ID138 = nil
AutoGenParent382ID139 = nil
AutoGenParent382ID140 = nil
AutoGenParent382ID141 = nil
AutoGenParent382ID142 = nil
AutoGenParent382ID143 = nil
AutoGenParent382ID144 = nil
AutoGenParent382ID145 = nil
AutoGenParent382ID146 = nil
AutoGenParent382ID147 = nil
AutoGenParent382ID148 = nil
AutoGenParent382ID149 = nil
AutoGenParent382ID150 = nil
AutoGenParent382ID151 = nil
AutoGenParent382ID152 = nil
AutoGenParent382ID153 = nil
AutoGenParent382ID154 = nil
AutoGenParent382ID155 = nil
AutoGenParent382ID156 = nil
AutoGenParent382ID157 = nil
AutoGenParent382ID158 = nil
AutoGenParent382ID159 = nil
AutoGenParent382ID160 = nil
AutoGenParent382ID161 = nil
AutoGenParent382ID162 = nil
AutoGenParent382ID163 = nil
AutoGenParent382ID164 = nil
AutoGenParent382ID165 = nil
AutoGenParent382ID166 = nil
AutoGenParent382ID167 = nil
AutoGenParent382ID168 = nil
AutoGenParent382ID169 = nil
AutoGenParent382ID170 = nil
AutoGenParent382ID171 = nil
AutoGenParent382ID172 = nil
AutoGenParent382ID173 = nil
AutoGenParent382ID174 = nil
AutoGenParent382ID175 = nil
AutoGenParent382ID176 = nil
AutoGenParent382ID177 = nil
AutoGenParent382ID178 = nil
AutoGenParent382ID179 = nil
AutoGenParent382ID180 = nil
AutoGenParent382ID181 = nil
AutoGenParent382ID182 = nil
AutoGenParent382ID183 = nil
AutoGenParent382ID184 = nil
AutoGenParent382ID185 = nil
AutoGenParent382ID186 = nil
AutoGenParent382ID187 = nil
AutoGenParent382ID188 = nil
AutoGenParent382ID189 = nil
AutoGenParent382ID190 = nil
AutoGenParent382ID191 = nil
AutoGenParent382ID192 = nil
AutoGenParent382ID193 = nil
AutoGenParent382ID194 = nil
AutoGenParent382ID195 = nil
AutoGenParent382ID196 = nil
AutoGenParent382ID197 = nil
AutoGenParent382ID198 = nil
AutoGenParent382ID199 = nil
AutoGenParent382ID200 = nil
AutoGenParent382ID201 = nil
AutoGenParent382ID202 = nil
AutoGenParent382ID203 = nil
AutoGenParent382ID204 = nil
AutoGenParent382ID205 = nil
AutoGenParent382ID206 = nil
AutoGenParent382ID207 = nil
AutoGenParent382ID208 = nil
AutoGenParent382ID209 = nil
AutoGenParent382ID210 = nil
AutoGenParent382ID211 = nil
AutoGenParent382ID212 = nil
AutoGenParent382ID213 = nil
AutoGenParent382ID214 = nil
AutoGenParent382ID215 = nil
AutoGenParent382ID216 = nil
AutoGenParent382ID217 = nil
AutoGenParent382ID218 = nil
AutoGenParent382ID219 = nil
AutoGenParent382ID220 = nil
AutoGenParent382ID221 = nil
AutoGenParent382ID222 = nil
AutoGenParent382ID223 = nil
AutoGenParent382ID224 = nil
AutoGenParent382ID225 = nil
AutoGenParent382ID226 = nil
AutoGenParent382ID227 = nil
AutoGenParent382ID228 = nil
AutoGenParent382ID229 = nil
AutoGenParent382ID230 = nil
AutoGenParent382ID231 = nil
AutoGenParent382ID232 = nil
AutoGenParent382ID233 = nil
AutoGenParent382ID234 = nil
AutoGenParent382ID235 = nil
AutoGenParent382ID236 = nil
AutoGenParent382ID237 = nil
AutoGenParent382ID238 = nil
AutoGenParent382ID239 = nil
AutoGenParent382ID240 = nil
AutoGenParent382ID241 = nil
AutoGenParent382ID242 = nil
AutoGenParent382ID243 = nil
AutoGenParent382ID244 = nil
AutoGenParent382ID245 = nil
AutoGenParent382ID246 = nil
AutoGenParent382ID247 = nil
AutoGenParent382ID248 = nil
AutoGenParent382ID249 = nil
AutoGenParent382ID250 = nil
AutoGenParent382ID251 = nil
AutoGenParent382ID252 = nil
AutoGenParent382ID253 = nil
AutoGenParent382ID254 = nil
AutoGenParent382ID255 = nil
AutoGenParent382ID256 = nil
AutoGenParent382ID257 = nil
AutoGenParent382ID258 = nil
AutoGenParent382ID259 = nil
AutoGenParent382ID260 = nil
AutoGenParent382ID261 = nil
AutoGenParent382ID262 = nil
AutoGenParent382ID263 = nil
AutoGenParent382ID264 = nil
AutoGenParent382ID265 = nil
AutoGenParent382ID266 = nil
AutoGenParent382ID267 = nil
AutoGenParent382ID268 = nil
AutoGenParent382ID269 = nil
AutoGenParent382ID270 = nil
AutoGenParent382ID271 = nil
AutoGenParent382ID272 = nil
AutoGenParent382ID273 = nil
AutoGenParent382ID274 = nil
AutoGenParent382ID275 = nil
AutoGenParent382ID276 = nil
AutoGenParent382ID277 = nil
AutoGenParent382ID278 = nil
AutoGenParent382ID279 = nil
AutoGenParent382ID280 = nil
AutoGenParent382ID281 = nil
AutoGenParent382ID282 = nil
AutoGenParent382ID283 = nil
AutoGenParent382ID284 = nil
AutoGenParent382ID285 = nil
AutoGenParent382ID286 = nil
AutoGenParent382ID287 = nil
AutoGenParent382ID288 = nil
AutoGenParent382ID289 = nil
AutoGenParent382ID290 = nil
AutoGenParent382ID291 = nil
AutoGenParent382ID292 = nil
AutoGenParent382ID293 = nil
AutoGenParent382ID294 = nil
AutoGenParent382ID295 = nil
AutoGenParent382ID296 = nil
AutoGenParent382ID297 = nil
AutoGenParent382ID298 = nil
AutoGenParent382ID299 = nil
AutoGenParent382ID300 = nil
AutoGenParent382ID301 = nil
AutoGenParent382ID302 = nil
AutoGenParent382ID303 = nil
AutoGenParent382ID304 = nil
AutoGenParent382ID305 = nil
table.insert(colliders,AutoGenParent382ID)
AutoGenParent382ID = nil

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
tile25ID = {}
tile25ID.transformID = Transform.Bind()
Transform.SetPosition(tile25ID.transformID, {x=0, y=0, z=128})
Transform.SetScaleNonUniform(tile25ID.transformID, 1, 1, 1)
Transform.SetRotation(tile25ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile25ID)
tile25ID = nil

t2s121ID = {}
t2s121ID.transformID = Transform.Bind()
Transform.SetPosition(t2s121ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s121ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s121ID.transformID, {x=0, y=0, z=0})
t2s121ID.model = Assets.LoadModel('Models/tile2_s1.model')
Gear.AddStaticInstance(t2s121ID.model, t2s121ID.transformID)
table.insert(props,t2s121ID)
t2s121ID = nil

t2s222ID = {}
t2s222ID.transformID = Transform.Bind()
Transform.SetPosition(t2s222ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s222ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s222ID.transformID, {x=0, y=0, z=0})
t2s222ID.model = Assets.LoadModel('Models/tile2_s2.model')
Gear.AddStaticInstance(t2s222ID.model, t2s222ID.transformID)
table.insert(props,t2s222ID)
t2s222ID = nil

t2s323ID = {}
t2s323ID.transformID = Transform.Bind()
Transform.SetPosition(t2s323ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s323ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s323ID.transformID, {x=0, y=0, z=0})
t2s323ID.model = Assets.LoadModel('Models/tile2_s3.model')
Gear.AddStaticInstance(t2s323ID.model, t2s323ID.transformID)
table.insert(props,t2s323ID)
t2s323ID = nil

t2s424ID = {}
t2s424ID.transformID = Transform.Bind()
Transform.SetPosition(t2s424ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s424ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s424ID.transformID, {x=0, y=0, z=0})
t2s424ID.model = Assets.LoadModel('Models/tile2_s4.model')
Gear.AddStaticInstance(t2s424ID.model, t2s424ID.transformID)
table.insert(props,t2s424ID)
t2s424ID = nil

t2s525ID = {}
t2s525ID.transformID = Transform.Bind()
Transform.SetPosition(t2s525ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s525ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s525ID.transformID, {x=0, y=0, z=0})
t2s525ID.model = Assets.LoadModel('Models/tile2_s5.model')
Gear.AddStaticInstance(t2s525ID.model, t2s525ID.transformID)
table.insert(props,t2s525ID)
t2s525ID = nil

t2s626ID = {}
t2s626ID.transformID = Transform.Bind()
Transform.SetPosition(t2s626ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s626ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s626ID.transformID, {x=0, y=0, z=0})
t2s626ID.model = Assets.LoadModel('Models/tile2_s6.model')
Gear.AddStaticInstance(t2s626ID.model, t2s626ID.transformID)
table.insert(props,t2s626ID)
t2s626ID = nil

t2s727ID = {}
t2s727ID.transformID = Transform.Bind()
Transform.SetPosition(t2s727ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s727ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s727ID.transformID, {x=0, y=0, z=0})
t2s727ID.model = Assets.LoadModel('Models/tile2_s7.model')
Gear.AddStaticInstance(t2s727ID.model, t2s727ID.transformID)
table.insert(props,t2s727ID)
t2s727ID = nil

t2s828ID = {}
t2s828ID.transformID = Transform.Bind()
Transform.SetPosition(t2s828ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s828ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s828ID.transformID, {x=0, y=0, z=0})
t2s828ID.model = Assets.LoadModel('Models/tile2_s8.model')
Gear.AddStaticInstance(t2s828ID.model, t2s828ID.transformID)
table.insert(props,t2s828ID)
t2s828ID = nil

t2s929ID = {}
t2s929ID.transformID = Transform.Bind()
Transform.SetPosition(t2s929ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s929ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s929ID.transformID, {x=0, y=0, z=0})
t2s929ID.model = Assets.LoadModel('Models/tile2_s9.model')
Gear.AddStaticInstance(t2s929ID.model, t2s929ID.transformID)
table.insert(props,t2s929ID)
t2s929ID = nil

t2s1030ID = {}
t2s1030ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1030ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1030ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1030ID.transformID, {x=0, y=0, z=0})
t2s1030ID.model = Assets.LoadModel('Models/tile2_s10.model')
Gear.AddStaticInstance(t2s1030ID.model, t2s1030ID.transformID)
table.insert(props,t2s1030ID)
t2s1030ID = nil

t2s11a31ID = {}
t2s11a31ID.transformID = Transform.Bind()
Transform.SetPosition(t2s11a31ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s11a31ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s11a31ID.transformID, {x=0, y=0, z=0})
t2s11a31ID.model = Assets.LoadModel('Models/tile2_s11a.model')
Gear.AddStaticInstance(t2s11a31ID.model, t2s11a31ID.transformID)
table.insert(props,t2s11a31ID)
t2s11a31ID = nil

t2s1232ID = {}
t2s1232ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1232ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1232ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1232ID.transformID, {x=0, y=0, z=0})
t2s1232ID.model = Assets.LoadModel('Models/tile2_s12.model')
Gear.AddStaticInstance(t2s1232ID.model, t2s1232ID.transformID)
table.insert(props,t2s1232ID)
t2s1232ID = nil

t2s1333ID = {}
t2s1333ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1333ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1333ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1333ID.transformID, {x=0, y=0, z=0})
t2s1333ID.model = Assets.LoadModel('Models/tile2_s13.model')
Gear.AddStaticInstance(t2s1333ID.model, t2s1333ID.transformID)
table.insert(props,t2s1333ID)
t2s1333ID = nil

t2s1434ID = {}
t2s1434ID.transformID = Transform.Bind()
Transform.SetPosition(t2s1434ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t2s1434ID.transformID, 1, 1, 1)
Transform.SetRotation(t2s1434ID.transformID, {x=0, y=0, z=0})
t2s1434ID.model = Assets.LoadModel('Models/tile2_s14.model')
Gear.AddStaticInstance(t2s1434ID.model, t2s1434ID.transformID)
table.insert(props,t2s1434ID)
t2s1434ID = nil

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
t3s136ID = {}
t3s136ID.transformID = Transform.Bind()
Transform.SetPosition(t3s136ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s136ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s136ID.transformID, {x=0, y=0, z=0})
t3s136ID.model = Assets.LoadModel('Models/tile3_s1.model')
Gear.AddStaticInstance(t3s136ID.model, t3s136ID.transformID)
table.insert(props,t3s136ID)
t3s136ID = nil

tile337ID = {}
tile337ID.transformID = Transform.Bind()
Transform.SetPosition(tile337ID.transformID, {x=384, y=0, z=128})
Transform.SetScaleNonUniform(tile337ID.transformID, 1, 1, 1)
Transform.SetRotation(tile337ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile337ID)
tile337ID = nil

t3s243ID = {}
t3s243ID.transformID = Transform.Bind()
Transform.SetPosition(t3s243ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s243ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s243ID.transformID, {x=0, y=0, z=0})
t3s243ID.model = Assets.LoadModel('Models/tile3_s2.model')
Gear.AddStaticInstance(t3s243ID.model, t3s243ID.transformID)
table.insert(props,t3s243ID)
t3s243ID = nil

t3s344ID = {}
t3s344ID.transformID = Transform.Bind()
Transform.SetPosition(t3s344ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s344ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s344ID.transformID, {x=0, y=0, z=0})
t3s344ID.model = Assets.LoadModel('Models/tile3_s3.model')
Gear.AddStaticInstance(t3s344ID.model, t3s344ID.transformID)
table.insert(props,t3s344ID)
t3s344ID = nil

t3s445ID = {}
t3s445ID.transformID = Transform.Bind()
Transform.SetPosition(t3s445ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t3s445ID.transformID, 1, 1, 1)
Transform.SetRotation(t3s445ID.transformID, {x=0, y=0, z=0})
t3s445ID.model = Assets.LoadModel('Models/tile3_s4.model')
Gear.AddStaticInstance(t3s445ID.model, t3s445ID.transformID)
table.insert(props,t3s445ID)
t3s445ID = nil

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
tile438ID = {}
tile438ID.transformID = Transform.Bind()
Transform.SetPosition(tile438ID.transformID, {x=384, y=0, z=256})
Transform.SetScaleNonUniform(tile438ID.transformID, 1, 1, 1)
Transform.SetRotation(tile438ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile438ID)
tile438ID = nil

t4s146ID = {}
t4s146ID.transformID = Transform.Bind()
Transform.SetPosition(t4s146ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s146ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s146ID.transformID, {x=0, y=0, z=0})
t4s146ID.model = Assets.LoadModel('Models/tile4_s1.model')
Gear.AddStaticInstance(t4s146ID.model, t4s146ID.transformID)
table.insert(props,t4s146ID)
t4s146ID = nil

t4s247ID = {}
t4s247ID.transformID = Transform.Bind()
Transform.SetPosition(t4s247ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s247ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s247ID.transformID, {x=0, y=0, z=0})
t4s247ID.model = Assets.LoadModel('Models/tile4_s2.model')
Gear.AddStaticInstance(t4s247ID.model, t4s247ID.transformID)
table.insert(props,t4s247ID)
t4s247ID = nil

t4s348ID = {}
t4s348ID.transformID = Transform.Bind()
Transform.SetPosition(t4s348ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s348ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s348ID.transformID, {x=0, y=0, z=0})
t4s348ID.model = Assets.LoadModel('Models/tile4_s3.model')
Gear.AddStaticInstance(t4s348ID.model, t4s348ID.transformID)
table.insert(props,t4s348ID)
t4s348ID = nil

t4s449ID = {}
t4s449ID.transformID = Transform.Bind()
Transform.SetPosition(t4s449ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t4s449ID.transformID, 1, 1, 1)
Transform.SetRotation(t4s449ID.transformID, {x=0, y=0, z=0})
t4s449ID.model = Assets.LoadModel('Models/tile4_s4.model')
Gear.AddStaticInstance(t4s449ID.model, t4s449ID.transformID)
table.insert(props,t4s449ID)
t4s449ID = nil

table.insert(level04, props)
table.insert(level04, colliders)
table.insert(level04, triggers)
end
level04.unload = function()
end
levels[4] = level04
-------------------------------------level04-----------------------------------------------


-------------------------------------level05-----------------------------------------------

level05 = {}
level05.load = function()
props = {}
colliders = {}
triggers = {}
tile539ID = {}
tile539ID.transformID = Transform.Bind()
Transform.SetPosition(tile539ID.transformID, {x=384, y=0, z=384})
Transform.SetScaleNonUniform(tile539ID.transformID, 1, 1, 1)
Transform.SetRotation(tile539ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile539ID)
tile539ID = nil

t5s150ID = {}
t5s150ID.transformID = Transform.Bind()
Transform.SetPosition(t5s150ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s150ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s150ID.transformID, {x=0, y=0, z=0})
t5s150ID.model = Assets.LoadModel('Models/tile5_s1.model')
Gear.AddStaticInstance(t5s150ID.model, t5s150ID.transformID)
table.insert(props,t5s150ID)
t5s150ID = nil

t5s251ID = {}
t5s251ID.transformID = Transform.Bind()
Transform.SetPosition(t5s251ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s251ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s251ID.transformID, {x=0, y=0, z=0})
t5s251ID.model = Assets.LoadModel('Models/tile5_s2.model')
Gear.AddStaticInstance(t5s251ID.model, t5s251ID.transformID)
table.insert(props,t5s251ID)
t5s251ID = nil

t5s352ID = {}
t5s352ID.transformID = Transform.Bind()
Transform.SetPosition(t5s352ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s352ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s352ID.transformID, {x=0, y=0, z=0})
t5s352ID.model = Assets.LoadModel('Models/tile5_s3.model')
Gear.AddStaticInstance(t5s352ID.model, t5s352ID.transformID)
table.insert(props,t5s352ID)
t5s352ID = nil

t5s453ID = {}
t5s453ID.transformID = Transform.Bind()
Transform.SetPosition(t5s453ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s453ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s453ID.transformID, {x=0, y=0, z=0})
t5s453ID.model = Assets.LoadModel('Models/tile5_s4.model')
Gear.AddStaticInstance(t5s453ID.model, t5s453ID.transformID)
table.insert(props,t5s453ID)
t5s453ID = nil

t5s554ID = {}
t5s554ID.transformID = Transform.Bind()
Transform.SetPosition(t5s554ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s554ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s554ID.transformID, {x=0, y=0, z=0})
t5s554ID.model = Assets.LoadModel('Models/tile5_s5.model')
Gear.AddStaticInstance(t5s554ID.model, t5s554ID.transformID)
table.insert(props,t5s554ID)
t5s554ID = nil

t5s655ID = {}
t5s655ID.transformID = Transform.Bind()
Transform.SetPosition(t5s655ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t5s655ID.transformID, 1, 1, 1)
Transform.SetRotation(t5s655ID.transformID, {x=0, y=0, z=0})
t5s655ID.model = Assets.LoadModel('Models/tile5_s6.model')
Gear.AddStaticInstance(t5s655ID.model, t5s655ID.transformID)
table.insert(props,t5s655ID)
t5s655ID = nil

t6s459ID = {}
t6s459ID.transformID = Transform.Bind()
Transform.SetPosition(t6s459ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s459ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s459ID.transformID, {x=0, y=0, z=0})
t6s459ID.model = Assets.LoadModel('Models/tile6_s4.model')
Gear.AddStaticInstance(t6s459ID.model, t6s459ID.transformID)
table.insert(props,t6s459ID)
t6s459ID = nil

table.insert(level05, props)
table.insert(level05, colliders)
table.insert(level05, triggers)
end
level05.unload = function()
end
levels[5] = level05
-------------------------------------level05-----------------------------------------------


-------------------------------------level06-----------------------------------------------

level06 = {}
level06.load = function()
props = {}
colliders = {}
triggers = {}
tile640ID = {}
tile640ID.transformID = Transform.Bind()
Transform.SetPosition(tile640ID.transformID, {x=384, y=0, z=640})
Transform.SetScaleNonUniform(tile640ID.transformID, 1, 1, 1)
Transform.SetRotation(tile640ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile640ID)
tile640ID = nil

t6s156ID = {}
t6s156ID.transformID = Transform.Bind()
Transform.SetPosition(t6s156ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s156ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s156ID.transformID, {x=0, y=0, z=0})
t6s156ID.model = Assets.LoadModel('Models/tile6_s1.model')
Gear.AddStaticInstance(t6s156ID.model, t6s156ID.transformID)
table.insert(props,t6s156ID)
t6s156ID = nil

t6s257ID = {}
t6s257ID.transformID = Transform.Bind()
Transform.SetPosition(t6s257ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s257ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s257ID.transformID, {x=0, y=0, z=0})
t6s257ID.model = Assets.LoadModel('Models/tile6_s2.model')
Gear.AddStaticInstance(t6s257ID.model, t6s257ID.transformID)
table.insert(props,t6s257ID)
t6s257ID = nil

t6s358ID = {}
t6s358ID.transformID = Transform.Bind()
Transform.SetPosition(t6s358ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s358ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s358ID.transformID, {x=0, y=0, z=0})
t6s358ID.model = Assets.LoadModel('Models/tile6_s3.model')
Gear.AddStaticInstance(t6s358ID.model, t6s358ID.transformID)
table.insert(props,t6s358ID)
t6s358ID = nil

t6s560ID = {}
t6s560ID.transformID = Transform.Bind()
Transform.SetPosition(t6s560ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s560ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s560ID.transformID, {x=0, y=0, z=0})
t6s560ID.model = Assets.LoadModel('Models/tile6_s5.model')
Gear.AddStaticInstance(t6s560ID.model, t6s560ID.transformID)
table.insert(props,t6s560ID)
t6s560ID = nil

t6s661ID = {}
t6s661ID.transformID = Transform.Bind()
Transform.SetPosition(t6s661ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s661ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s661ID.transformID, {x=0, y=0, z=0})
t6s661ID.model = Assets.LoadModel('Models/tile6_s6.model')
Gear.AddStaticInstance(t6s661ID.model, t6s661ID.transformID)
table.insert(props,t6s661ID)
t6s661ID = nil

t6s762ID = {}
t6s762ID.transformID = Transform.Bind()
Transform.SetPosition(t6s762ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s762ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s762ID.transformID, {x=0, y=0, z=0})
t6s762ID.model = Assets.LoadModel('Models/tile6_s7.model')
Gear.AddStaticInstance(t6s762ID.model, t6s762ID.transformID)
table.insert(props,t6s762ID)
t6s762ID = nil

t6s863ID = {}
t6s863ID.transformID = Transform.Bind()
Transform.SetPosition(t6s863ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s863ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s863ID.transformID, {x=0, y=0, z=0})
t6s863ID.model = Assets.LoadModel('Models/tile6_s8.model')
Gear.AddStaticInstance(t6s863ID.model, t6s863ID.transformID)
table.insert(props,t6s863ID)
t6s863ID = nil

t6s964ID = {}
t6s964ID.transformID = Transform.Bind()
Transform.SetPosition(t6s964ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s964ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s964ID.transformID, {x=0, y=0, z=0})
t6s964ID.model = Assets.LoadModel('Models/tile6_s9.model')
Gear.AddStaticInstance(t6s964ID.model, t6s964ID.transformID)
table.insert(props,t6s964ID)
t6s964ID = nil

t6s1065ID = {}
t6s1065ID.transformID = Transform.Bind()
Transform.SetPosition(t6s1065ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t6s1065ID.transformID, 1, 1, 1)
Transform.SetRotation(t6s1065ID.transformID, {x=0, y=0, z=0})
t6s1065ID.model = Assets.LoadModel('Models/tile6_s10.model')
Gear.AddStaticInstance(t6s1065ID.model, t6s1065ID.transformID)
table.insert(props,t6s1065ID)
t6s1065ID = nil

table.insert(level06, props)
table.insert(level06, colliders)
table.insert(level06, triggers)
end
level06.unload = function()
end
levels[6] = level06
-------------------------------------level06-----------------------------------------------


-------------------------------------level07-----------------------------------------------

level07 = {}
level07.load = function()
props = {}
colliders = {}
triggers = {}
tile741ID = {}
tile741ID.transformID = Transform.Bind()
Transform.SetPosition(tile741ID.transformID, {x=128, y=0, z=512})
Transform.SetScaleNonUniform(tile741ID.transformID, 1, 1, 1)
Transform.SetRotation(tile741ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile741ID)
tile741ID = nil

t7s166ID = {}
t7s166ID.transformID = Transform.Bind()
Transform.SetPosition(t7s166ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s166ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s166ID.transformID, {x=0, y=0, z=0})
t7s166ID.model = Assets.LoadModel('Models/tile7_s1.model')
Gear.AddStaticInstance(t7s166ID.model, t7s166ID.transformID)
table.insert(props,t7s166ID)
t7s166ID = nil

t7s267ID = {}
t7s267ID.transformID = Transform.Bind()
Transform.SetPosition(t7s267ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s267ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s267ID.transformID, {x=0, y=0, z=0})
t7s267ID.model = Assets.LoadModel('Models/tile7_s2.model')
Gear.AddStaticInstance(t7s267ID.model, t7s267ID.transformID)
table.insert(props,t7s267ID)
t7s267ID = nil

t7s368ID = {}
t7s368ID.transformID = Transform.Bind()
Transform.SetPosition(t7s368ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s368ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s368ID.transformID, {x=0, y=0, z=0})
t7s368ID.model = Assets.LoadModel('Models/tile7_s3.model')
Gear.AddStaticInstance(t7s368ID.model, t7s368ID.transformID)
table.insert(props,t7s368ID)
t7s368ID = nil

t7s469ID = {}
t7s469ID.transformID = Transform.Bind()
Transform.SetPosition(t7s469ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s469ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s469ID.transformID, {x=0, y=0, z=0})
t7s469ID.model = Assets.LoadModel('Models/tile7_s4.model')
Gear.AddStaticInstance(t7s469ID.model, t7s469ID.transformID)
table.insert(props,t7s469ID)
t7s469ID = nil

t7s570ID = {}
t7s570ID.transformID = Transform.Bind()
Transform.SetPosition(t7s570ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s570ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s570ID.transformID, {x=0, y=0, z=0})
t7s570ID.model = Assets.LoadModel('Models/tile7_s5.model')
Gear.AddStaticInstance(t7s570ID.model, t7s570ID.transformID)
table.insert(props,t7s570ID)
t7s570ID = nil

t7s671ID = {}
t7s671ID.transformID = Transform.Bind()
Transform.SetPosition(t7s671ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s671ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s671ID.transformID, {x=0, y=0, z=0})
t7s671ID.model = Assets.LoadModel('Models/tile7_s6.model')
Gear.AddStaticInstance(t7s671ID.model, t7s671ID.transformID)
table.insert(props,t7s671ID)
t7s671ID = nil

t7s772ID = {}
t7s772ID.transformID = Transform.Bind()
Transform.SetPosition(t7s772ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s772ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s772ID.transformID, {x=0, y=0, z=0})
t7s772ID.model = Assets.LoadModel('Models/tile7_s7.model')
Gear.AddStaticInstance(t7s772ID.model, t7s772ID.transformID)
table.insert(props,t7s772ID)
t7s772ID = nil

t7s873ID = {}
t7s873ID.transformID = Transform.Bind()
Transform.SetPosition(t7s873ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s873ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s873ID.transformID, {x=0, y=0, z=0})
t7s873ID.model = Assets.LoadModel('Models/tile7_s8.model')
Gear.AddStaticInstance(t7s873ID.model, t7s873ID.transformID)
table.insert(props,t7s873ID)
t7s873ID = nil

t7s974ID = {}
t7s974ID.transformID = Transform.Bind()
Transform.SetPosition(t7s974ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t7s974ID.transformID, 1, 1, 1)
Transform.SetRotation(t7s974ID.transformID, {x=0, y=0, z=0})
t7s974ID.model = Assets.LoadModel('Models/tile7_s9.model')
Gear.AddStaticInstance(t7s974ID.model, t7s974ID.transformID)
table.insert(props,t7s974ID)
t7s974ID = nil

table.insert(level07, props)
table.insert(level07, colliders)
table.insert(level07, triggers)
end
level07.unload = function()
end
levels[7] = level07
-------------------------------------level07-----------------------------------------------


-------------------------------------level08-----------------------------------------------

level08 = {}
level08.load = function()
props = {}
colliders = {}
triggers = {}
tile842ID = {}
tile842ID.transformID = Transform.Bind()
Transform.SetPosition(tile842ID.transformID, {x=256, y=0, z=384})
Transform.SetScaleNonUniform(tile842ID.transformID, 1, 1, 1)
Transform.SetRotation(tile842ID.transformID, {x=0, y=0, z=0})
table.insert(props,tile842ID)
tile842ID = nil

t8s175ID = {}
t8s175ID.transformID = Transform.Bind()
Transform.SetPosition(t8s175ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s175ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s175ID.transformID, {x=0, y=0, z=0})
t8s175ID.model = Assets.LoadModel('Models/tile8_s1.model')
Gear.AddStaticInstance(t8s175ID.model, t8s175ID.transformID)
table.insert(props,t8s175ID)
t8s175ID = nil

t8s276ID = {}
t8s276ID.transformID = Transform.Bind()
Transform.SetPosition(t8s276ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s276ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s276ID.transformID, {x=0, y=0, z=0})
t8s276ID.model = Assets.LoadModel('Models/tile8_s2.model')
Gear.AddStaticInstance(t8s276ID.model, t8s276ID.transformID)
table.insert(props,t8s276ID)
t8s276ID = nil

t8s377ID = {}
t8s377ID.transformID = Transform.Bind()
Transform.SetPosition(t8s377ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(t8s377ID.transformID, 1, 1, 1)
Transform.SetRotation(t8s377ID.transformID, {x=0, y=0, z=0})
t8s377ID.model = Assets.LoadModel('Models/tile8_s3.model')
Gear.AddStaticInstance(t8s377ID.model, t8s377ID.transformID)
table.insert(props,t8s377ID)
t8s377ID = nil

table.insert(level08, props)
table.insert(level08, colliders)
table.insert(level08, triggers)
end
level08.unload = function()
end
levels[8] = level08
-------------------------------------level08-----------------------------------------------


--TEMP: This should probably not be hardcoded into every level?
AI.CreateHM(#heightmaps)
for i=1, #heightmaps do
AI.AddHeightMap(heightmaps[i].asset,i)
end
local widthTest = heightmaps[1].asset:GetMapWidth()
local heightTest = heightmaps[1].asset:GetMapHeight()
AI.CreateIM(heightmaps,widthTest,heightTest)--,#heightmaps,widthTest,heightTest)
