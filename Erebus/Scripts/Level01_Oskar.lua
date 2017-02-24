levels = {}
heightmaps = {}

---------------------------------Heightmap-----------------------------

Heightmap1 = {}
Heightmap1.asset = Assets.LoadHeightmap("Textures/tile1_height.png")
Heightmap1.asset:SetPosition({x=0, y=-0.67693, z=128})
Heightmap1.asset:SetHeightMultiplier(0.147291)
heightmaps[1] = Heightmap1
Heightmap1 = nil
Heightmap2 = {}
Heightmap2.asset = Assets.LoadHeightmap("Textures/tile2_height.png")
Heightmap2.asset:SetPosition({x=128, y=32.1865, z=0})
Heightmap2.asset:SetHeightMultiplier(0.111404)
heightmaps[2] = Heightmap2
Heightmap2 = nil
Heightmap3 = {}
Heightmap3.asset = Assets.LoadHeightmap("Textures/tile3_height.png")
Heightmap3.asset:SetPosition({x=384, y=34.8782, z=128})
Heightmap3.asset:SetHeightMultiplier(0.0707237)
heightmaps[3] = Heightmap3
Heightmap3 = nil
Heightmap4 = {}
Heightmap4.asset = Assets.LoadHeightmap("Textures/tile4_height.png")
Heightmap4.asset:SetPosition({x=384, y=34.6699, z=256})
Heightmap4.asset:SetHeightMultiplier(0.113531)
heightmaps[4] = Heightmap4
Heightmap4 = nil
Heightmap5 = {}
Heightmap5.asset = Assets.LoadHeightmap("Textures/tile5_height.png")
Heightmap5.asset:SetPosition({x=384, y=38.5561, z=384})
Heightmap5.asset:SetHeightMultiplier(0.260571)
heightmaps[5] = Heightmap5
Heightmap5 = nil
Heightmap6 = {}
Heightmap6.asset = Assets.LoadHeightmap("Textures/tile6_height.png")
Heightmap6.asset:SetPosition({x=384, y=85.0848, z=640})
Heightmap6.asset:SetHeightMultiplier(0.0852758)
heightmaps[6] = Heightmap6
Heightmap6 = nil
Heightmap7 = {}
Heightmap7.asset = Assets.LoadHeightmap("Textures/tile7_height.png")
Heightmap7.asset:SetPosition({x=128, y=81.2563, z=512})
Heightmap7.asset:SetHeightMultiplier(0.241725)
heightmaps[7] = Heightmap7
Heightmap7 = nil
Heightmap8 = {}
Heightmap8.asset = Assets.LoadHeightmap("Textures/tile8_height.png")
Heightmap8.asset:SetPosition({x=256, y=100, z=384})
Heightmap8.asset:SetHeightMultiplier(0.165535)
heightmaps[8] = Heightmap8
Heightmap8 = nil

---------------------------------Heightmap-----------------------------


---------------------------------Settings-----------------------------

Transform.SetPosition(player.transformID, {x=32.9063, y=7.48828, z=145.625})
player:ChangeHeightmap(1)


---------------------------------Settings-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.surrounding = { 2 }
level01.load = function()
level01.props = {}
level01.colliders = {}
level01.triggers = {}
level01.props.TilePlaceholder2ID = {}
level01.props.TilePlaceholder2ID.model = Assets.LoadModel('Models/tile_assets_placeholders.model')
level01.props.TilePlaceholder2ID.transformID = Gear.BindStaticInstance(level01.props.TilePlaceholder2ID.model)
Transform.SetPosition(level01.props.TilePlaceholder2ID.transformID, {x=0, y=255, z=0})
Transform.SetScaleNonUniform(level01.props.TilePlaceholder2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.TilePlaceholder2ID.transformID, {x=0, y=0, z=0})
level01.props.tile13ID = {}
level01.props.m16ID = {}
level01.props.m16ID.model = Assets.LoadModel('Models/tile1_m1.model')
level01.props.m16ID.transformID = Gear.BindStaticInstance(level01.props.m16ID.model)
Transform.SetPosition(level01.props.m16ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m16ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m16ID.transformID, {x=0, y=0, z=0})
level01.props.m27ID = {}
level01.props.m27ID.model = Assets.LoadModel('Models/tile1_m2.model')
level01.props.m27ID.transformID = Gear.BindStaticInstance(level01.props.m27ID.model)
Transform.SetPosition(level01.props.m27ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m27ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m27ID.transformID, {x=0, y=0, z=0})
level01.props.m38ID = {}
level01.props.m38ID.model = Assets.LoadModel('Models/tile1_m3.model')
level01.props.m38ID.transformID = Gear.BindStaticInstance(level01.props.m38ID.model)
Transform.SetPosition(level01.props.m38ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m38ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m38ID.transformID, {x=0, y=0, z=0})
level01.props.m49ID = {}
level01.props.m49ID.model = Assets.LoadModel('Models/tile1_m4.model')
level01.props.m49ID.transformID = Gear.BindStaticInstance(level01.props.m49ID.model)
Transform.SetPosition(level01.props.m49ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m49ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m49ID.transformID, {x=0, y=0, z=0})
level01.props.m510ID = {}
level01.props.m510ID.model = Assets.LoadModel('Models/tile1_m5.model')
level01.props.m510ID.transformID = Gear.BindStaticInstance(level01.props.m510ID.model)
Transform.SetPosition(level01.props.m510ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m510ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m510ID.transformID, {x=0, y=0, z=0})
level01.props.m611ID = {}
level01.props.m611ID.model = Assets.LoadModel('Models/tile1_m6.model')
level01.props.m611ID.transformID = Gear.BindStaticInstance(level01.props.m611ID.model)
Transform.SetPosition(level01.props.m611ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m611ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m611ID.transformID, {x=0, y=0, z=0})
level01.props.m712ID = {}
level01.props.m712ID.model = Assets.LoadModel('Models/tile1_m7.model')
level01.props.m712ID.transformID = Gear.BindStaticInstance(level01.props.m712ID.model)
Transform.SetPosition(level01.props.m712ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m712ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m712ID.transformID, {x=0, y=0, z=0})
level01.props.m813ID = {}
level01.props.m813ID.model = Assets.LoadModel('Models/tile1_m8.model')
level01.props.m813ID.transformID = Gear.BindStaticInstance(level01.props.m813ID.model)
Transform.SetPosition(level01.props.m813ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m813ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m813ID.transformID, {x=0, y=0, z=0})
level01.props.s114ID = {}
level01.props.s114ID.model = Assets.LoadModel('Models/tile1_s1.model')
level01.props.s114ID.transformID = Gear.BindStaticInstance(level01.props.s114ID.model)
Transform.SetPosition(level01.props.s114ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s114ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s114ID.transformID, {x=0, y=0, z=0})
level01.props.s215ID = {}
level01.props.s215ID.model = Assets.LoadModel('Models/tile1_s2.model')
level01.props.s215ID.transformID = Gear.BindStaticInstance(level01.props.s215ID.model)
Transform.SetPosition(level01.props.s215ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s215ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s215ID.transformID, {x=0, y=0, z=0})
level01.props.s316ID = {}
level01.props.s316ID.model = Assets.LoadModel('Models/tile1_s3.model')
level01.props.s316ID.transformID = Gear.BindStaticInstance(level01.props.s316ID.model)
Transform.SetPosition(level01.props.s316ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s316ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s316ID.transformID, {x=0, y=0, z=0})
level01.props.s417ID = {}
level01.props.s417ID.model = Assets.LoadModel('Models/tile1_s4.model')
level01.props.s417ID.transformID = Gear.BindStaticInstance(level01.props.s417ID.model)
Transform.SetPosition(level01.props.s417ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s417ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s417ID.transformID, {x=0, y=0, z=0})
level01.props.s518ID = {}
level01.props.s518ID.model = Assets.LoadModel('Models/tile1_s5.model')
level01.props.s518ID.transformID = Gear.BindStaticInstance(level01.props.s518ID.model)
Transform.SetPosition(level01.props.s518ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s518ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s518ID.transformID, {x=0, y=0, z=0})
level01.props.s619ID = {}
level01.props.s619ID.model = Assets.LoadModel('Models/tile1_s6.model')
level01.props.s619ID.transformID = Gear.BindStaticInstance(level01.props.s619ID.model)
Transform.SetPosition(level01.props.s619ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s619ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s619ID.transformID, {x=0, y=0, z=0})
level01.props.s720ID = {}
level01.props.s720ID.model = Assets.LoadModel('Models/tile1_s7.model')
level01.props.s720ID.transformID = Gear.BindStaticInstance(level01.props.s720ID.model)
Transform.SetPosition(level01.props.s720ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s720ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s720ID.transformID, {x=0, y=0, z=0})
level01.colliders.OpWall77ID = {}
level01.colliders.OpWall77ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall77ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall77ID.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.OpWall77ID.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.OpWall77ID.collider:SetPos(6,6.83489,143)
CollisionHandler.AddOBB(level01.colliders.OpWall77ID.collider, 3)
level01.colliders.OpWall178ID = {}
level01.colliders.OpWall178ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall178ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall178ID.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.OpWall178ID.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.OpWall178ID.collider:SetPos(10.5,7.12947,140)
CollisionHandler.AddOBB(level01.colliders.OpWall178ID.collider, 3)
level01.colliders.OpWall279ID = {}
level01.colliders.OpWall279ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall279ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall279ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall279ID.collider:SetHalfLengths(0.3,5,4)
level01.colliders.OpWall279ID.collider:SetPos(17,6.98218,141)
CollisionHandler.AddOBB(level01.colliders.OpWall279ID.collider, 3)
level01.colliders.OpWall380ID = {}
level01.colliders.OpWall380ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall380ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall380ID.collider:SetZAxis(-0.894427,0,-0.447214)
level01.colliders.OpWall380ID.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.OpWall380ID.collider:SetPos(45,8.60238,129.5)
CollisionHandler.AddOBB(level01.colliders.OpWall380ID.collider, 3)
level01.colliders.OpWall481ID = {}
level01.colliders.OpWall481ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall481ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall481ID.collider:SetZAxis(0.503871,0,0.863779)
level01.colliders.OpWall481ID.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.OpWall481ID.collider:SetPos(51.5,8.60238,137)
CollisionHandler.AddOBB(level01.colliders.OpWall481ID.collider, 3)
level01.colliders.OpWall582ID = {}
level01.colliders.OpWall582ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall582ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall582ID.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.OpWall582ID.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.OpWall582ID.collider:SetPos(55.5,9.33883,145.5)
CollisionHandler.AddOBB(level01.colliders.OpWall582ID.collider, 3)
level01.colliders.OpWall683ID = {}
level01.colliders.OpWall683ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall683ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall683ID.collider:SetZAxis(-0.658505,0,0.752577)
level01.colliders.OpWall683ID.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.OpWall683ID.collider:SetPos(52.5,9.33883,152)
CollisionHandler.AddOBB(level01.colliders.OpWall683ID.collider, 3)
level01.colliders.OpWall784ID = {}
level01.colliders.OpWall784ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall784ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall784ID.collider:SetZAxis(-0.980581,0,0.196116)
level01.colliders.OpWall784ID.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.OpWall784ID.collider:SetPos(44,9.48612,157)
CollisionHandler.AddOBB(level01.colliders.OpWall784ID.collider, 3)
level01.colliders.OpWall885ID = {}
level01.colliders.OpWall885ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall885ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall885ID.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.OpWall885ID.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.OpWall885ID.collider:SetPos(35,7.12947,155)
CollisionHandler.AddOBB(level01.colliders.OpWall885ID.collider, 3)
level01.colliders.OpWall986ID = {}
level01.colliders.OpWall986ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall986ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall986ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall986ID.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.OpWall986ID.collider:SetPos(37,7.27676,160)
CollisionHandler.AddOBB(level01.colliders.OpWall986ID.collider, 3)
level01.colliders.OpWall1087ID = {}
level01.colliders.OpWall1087ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1087ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1087ID.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.OpWall1087ID.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.OpWall1087ID.collider:SetPos(39.5,6.98218,163)
CollisionHandler.AddOBB(level01.colliders.OpWall1087ID.collider, 3)
level01.colliders.OpWall1188ID = {}
level01.colliders.OpWall1188ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1188ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1188ID.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.OpWall1188ID.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.OpWall1188ID.collider:SetPos(43.5,7.12947,165)
CollisionHandler.AddOBB(level01.colliders.OpWall1188ID.collider, 3)
level01.colliders.OpWall1289ID = {}
level01.colliders.OpWall1289ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1289ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1289ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall1289ID.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.OpWall1289ID.collider:SetPos(48.5,7.57134,166)
CollisionHandler.AddOBB(level01.colliders.OpWall1289ID.collider, 3)
level01.colliders.OpWall1390ID = {}
level01.colliders.OpWall1390ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1390ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1390ID.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.OpWall1390ID.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.OpWall1390ID.collider:SetPos(54,8.01322,168)
CollisionHandler.AddOBB(level01.colliders.OpWall1390ID.collider, 3)
level01.colliders.OpWall1491ID = {}
level01.colliders.OpWall1491ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1491ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1491ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall1491ID.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.OpWall1491ID.collider:SetPos(57.5,8.01322,171)
CollisionHandler.AddOBB(level01.colliders.OpWall1491ID.collider, 3)
level01.colliders.OpWall1592ID = {}
level01.colliders.OpWall1592ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1592ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1592ID.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.OpWall1592ID.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.OpWall1592ID.collider:SetPos(57.5,8.01322,176)
CollisionHandler.AddOBB(level01.colliders.OpWall1592ID.collider, 3)
level01.colliders.OpWall1693ID = {}
level01.colliders.OpWall1693ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1693ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1693ID.collider:SetZAxis(-0.640184,0,0.768221)
level01.colliders.OpWall1693ID.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.OpWall1693ID.collider:SetPos(54.5,8.06796,183)
CollisionHandler.AddOBB(level01.colliders.OpWall1693ID.collider, 3)
level01.colliders.OpWall1794ID = {}
level01.colliders.OpWall1794ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1794ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1794ID.collider:SetZAxis(-0.986394,0,0.164399)
level01.colliders.OpWall1794ID.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.OpWall1794ID.collider:SetPos(49,8.01322,186.5)
CollisionHandler.AddOBB(level01.colliders.OpWall1794ID.collider, 3)
level01.colliders.OpWall1895ID = {}
level01.colliders.OpWall1895ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1895ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1895ID.collider:SetZAxis(-1,0,0)
level01.colliders.OpWall1895ID.collider:SetHalfLengths(0.3,5,2)
level01.colliders.OpWall1895ID.collider:SetPos(44,8.01322,187)
CollisionHandler.AddOBB(level01.colliders.OpWall1895ID.collider, 3)
level01.colliders.OpWall1996ID = {}
level01.colliders.OpWall1996ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1996ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1996ID.collider:SetZAxis(-0.8,0,-0.6)
level01.colliders.OpWall1996ID.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.OpWall1996ID.collider:SetPos(40,8.01322,185.5)
CollisionHandler.AddOBB(level01.colliders.OpWall1996ID.collider, 3)
level01.colliders.OpWall2097ID = {}
level01.colliders.OpWall2097ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2097ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2097ID.collider:SetZAxis(-0.447214,0,-0.894427)
level01.colliders.OpWall2097ID.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.OpWall2097ID.collider:SetPos(37,7.71863,182)
CollisionHandler.AddOBB(level01.colliders.OpWall2097ID.collider, 3)
level01.colliders.OpWall2198ID = {}
level01.colliders.OpWall2198ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2198ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2198ID.collider:SetZAxis(-0.274721,0,-0.961524)
level01.colliders.OpWall2198ID.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.OpWall2198ID.collider:SetPos(35,7.12947,176.5)
CollisionHandler.AddOBB(level01.colliders.OpWall2198ID.collider, 3)
level01.colliders.OpWall2299ID = {}
level01.colliders.OpWall2299ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2299ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2299ID.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.OpWall2299ID.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.OpWall2299ID.collider:SetPos(32.5,6.54031,170.5)
CollisionHandler.AddOBB(level01.colliders.OpWall2299ID.collider, 3)
level01.colliders.OpWall23100ID = {}
level01.colliders.OpWall23100ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall23100ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall23100ID.collider:SetZAxis(-1,0,0)
level01.colliders.OpWall23100ID.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.OpWall23100ID.collider:SetPos(29.5,6.54031,168)
CollisionHandler.AddOBB(level01.colliders.OpWall23100ID.collider, 3)
level01.colliders.OpWall24101ID = {}
level01.colliders.OpWall24101ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall24101ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall24101ID.collider:SetZAxis(-0.768221,0,0.640184)
level01.colliders.OpWall24101ID.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.OpWall24101ID.collider:SetPos(25,6.09844,170.5)
CollisionHandler.AddOBB(level01.colliders.OpWall24101ID.collider, 3)
level01.colliders.OpWall25102ID = {}
level01.colliders.OpWall25102ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall25102ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall25102ID.collider:SetZAxis(0,0,1)
level01.colliders.OpWall25102ID.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.OpWall25102ID.collider:SetPos(22,5.80386,174.5)
CollisionHandler.AddOBB(level01.colliders.OpWall25102ID.collider, 3)
level01.colliders.OpWall26103ID = {}
level01.colliders.OpWall26103ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall26103ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall26103ID.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.OpWall26103ID.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.OpWall26103ID.collider:SetPos(23.5,5.80386,179.5)
CollisionHandler.AddOBB(level01.colliders.OpWall26103ID.collider, 3)
level01.colliders.OpWall27104ID = {}
level01.colliders.OpWall27104ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall27104ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall27104ID.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.OpWall27104ID.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.OpWall27104ID.collider:SetPos(32,5.50927,189.5)
CollisionHandler.AddOBB(level01.colliders.OpWall27104ID.collider, 3)
level01.colliders.OpWall28105ID = {}
level01.colliders.OpWall28105ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall28105ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall28105ID.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.OpWall28105ID.collider:SetHalfLengths(0.3,5.14729,1.58114)
level01.colliders.OpWall28105ID.collider:SetPos(37.5,8.16051,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall28105ID.collider, 3)
level01.colliders.OpWall29106ID = {}
level01.colliders.OpWall29106ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall29106ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall29106ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall29106ID.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.OpWall29106ID.collider:SetPos(35.5,8.16051,198)
CollisionHandler.AddOBB(level01.colliders.OpWall29106ID.collider, 3)
level01.colliders.OpWall30107ID = {}
level01.colliders.OpWall30107ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall30107ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall30107ID.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.OpWall30107ID.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.OpWall30107ID.collider:SetPos(42.5,8.3078,200)
CollisionHandler.AddOBB(level01.colliders.OpWall30107ID.collider, 3)
level01.colliders.OpWall31108ID = {}
level01.colliders.OpWall31108ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall31108ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall31108ID.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.OpWall31108ID.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.OpWall31108ID.collider:SetPos(50.5,9.63341,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall31108ID.collider, 3)
level01.colliders.OpWall32109ID = {}
level01.colliders.OpWall32109ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall32109ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall32109ID.collider:SetZAxis(0.8,0,0.6)
level01.colliders.OpWall32109ID.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.OpWall32109ID.collider:SetPos(55,10.3699,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall32109ID.collider, 3)
level01.colliders.OpWall33110ID = {}
level01.colliders.OpWall33110ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall33110ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall33110ID.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.OpWall33110ID.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.OpWall33110ID.collider:SetPos(62,11.4009,208)
CollisionHandler.AddOBB(level01.colliders.OpWall33110ID.collider, 3)
level01.colliders.OpWall34111ID = {}
level01.colliders.OpWall34111ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall34111ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall34111ID.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.OpWall34111ID.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.OpWall34111ID.collider:SetPos(71.5,15.0832,205.5)
CollisionHandler.AddOBB(level01.colliders.OpWall34111ID.collider, 3)
level01.colliders.OpWall35112ID = {}
level01.colliders.OpWall35112ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall35112ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall35112ID.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.OpWall35112ID.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.OpWall35112ID.collider:SetPos(79,18.3236,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall35112ID.collider, 3)
level01.colliders.OpWall36113ID = {}
level01.colliders.OpWall36113ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall36113ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall36113ID.collider:SetZAxis(0.759257,0,-0.650791)
level01.colliders.OpWall36113ID.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.OpWall36113ID.collider:SetPos(85.5,20.091,198)
CollisionHandler.AddOBB(level01.colliders.OpWall36113ID.collider, 3)
level01.colliders.OpWall37114ID = {}
level01.colliders.OpWall37114ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall37114ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall37114ID.collider:SetZAxis(0.923077,0,-0.384615)
level01.colliders.OpWall37114ID.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.OpWall37114ID.collider:SetPos(95,23.1841,192.5)
CollisionHandler.AddOBB(level01.colliders.OpWall37114ID.collider, 3)
level01.colliders.OpWall38115ID = {}
level01.colliders.OpWall38115ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall38115ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall38115ID.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.OpWall38115ID.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.OpWall38115ID.collider:SetPos(105,27.0137,192.5)
CollisionHandler.AddOBB(level01.colliders.OpWall38115ID.collider, 3)
level01.colliders.OpWall39116ID = {}
level01.colliders.OpWall39116ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall39116ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall39116ID.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.OpWall39116ID.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.OpWall39116ID.collider:SetPos(111,30.696,195.5)
CollisionHandler.AddOBB(level01.colliders.OpWall39116ID.collider, 3)
level01.colliders.OpWall40117ID = {}
level01.colliders.OpWall40117ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall40117ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall40117ID.collider:SetZAxis(0.780869,0,0.624695)
level01.colliders.OpWall40117ID.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.OpWall40117ID.collider:SetPos(115.5,31.8743,198)
CollisionHandler.AddOBB(level01.colliders.OpWall40117ID.collider, 3)
level01.colliders.OpWall41118ID = {}
level01.colliders.OpWall41118ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall41118ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall41118ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall41118ID.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.OpWall41118ID.collider:SetPos(121,34.6728,206)
CollisionHandler.AddOBB(level01.colliders.OpWall41118ID.collider, 3)
level01.colliders.OpWall42119ID = {}
level01.colliders.OpWall42119ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall42119ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall42119ID.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.OpWall42119ID.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.OpWall42119ID.collider:SetPos(126,32.9053,211.5)
CollisionHandler.AddOBB(level01.colliders.OpWall42119ID.collider, 3)
level01.colliders.OpWall43120ID = {}
level01.colliders.OpWall43120ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall43120ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall43120ID.collider:SetZAxis(0.406139,0,0.913812)
level01.colliders.OpWall43120ID.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.OpWall43120ID.collider:SetPos(90,21.5639,213.5)
CollisionHandler.AddOBB(level01.colliders.OpWall43120ID.collider, 3)
level01.colliders.OpWall44121ID = {}
level01.colliders.OpWall44121ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall44121ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall44121ID.collider:SetZAxis(0.970142,0,0.242536)
level01.colliders.OpWall44121ID.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.OpWall44121ID.collider:SetPos(98,22.4477,219.5)
CollisionHandler.AddOBB(level01.colliders.OpWall44121ID.collider, 3)
level01.colliders.OpWall45122ID = {}
level01.colliders.OpWall45122ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall45122ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall45122ID.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.OpWall45122ID.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.OpWall45122ID.collider:SetPos(105.5,26.8664,222.5)
CollisionHandler.AddOBB(level01.colliders.OpWall45122ID.collider, 3)
level01.colliders.OpWall46123ID = {}
level01.colliders.OpWall46123ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall46123ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall46123ID.collider:SetZAxis(0.913812,0,-0.406139)
level01.colliders.OpWall46123ID.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.OpWall46123ID.collider:SetPos(111.5,28.3393,222)
CollisionHandler.AddOBB(level01.colliders.OpWall46123ID.collider, 3)
level01.colliders.OpWall47124ID = {}
level01.colliders.OpWall47124ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall47124ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall47124ID.collider:SetZAxis(0,0,-1)
level01.colliders.OpWall47124ID.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.OpWall47124ID.collider:SetPos(116,30.9905,217)
CollisionHandler.AddOBB(level01.colliders.OpWall47124ID.collider, 3)
level01.colliders.OpWall48125ID = {}
level01.colliders.OpWall48125ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall48125ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall48125ID.collider:SetZAxis(-0.496139,0,-0.868243)
level01.colliders.OpWall48125ID.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.OpWall48125ID.collider:SetPos(114,36.1457,210.5)
CollisionHandler.AddOBB(level01.colliders.OpWall48125ID.collider, 3)
level01.colliders.OpWall49126ID = {}
level01.colliders.OpWall49126ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall49126ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall49126ID.collider:SetZAxis(-0.780869,0,-0.624695)
level01.colliders.OpWall49126ID.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.OpWall49126ID.collider:SetPos(107,34.6728,203)
CollisionHandler.AddOBB(level01.colliders.OpWall49126ID.collider, 3)
level01.colliders.OpWall50127ID = {}
level01.colliders.OpWall50127ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall50127ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall50127ID.collider:SetZAxis(-1,0,0)
level01.colliders.OpWall50127ID.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.OpWall50127ID.collider:SetPos(101,28.6339,199)
CollisionHandler.AddOBB(level01.colliders.OpWall50127ID.collider, 3)
level01.colliders.OpWall51128ID = {}
level01.colliders.OpWall51128ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall51128ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall51128ID.collider:SetZAxis(-0.819232,0,0.573462)
level01.colliders.OpWall51128ID.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.OpWall51128ID.collider:SetPos(95,27.3083,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall51128ID.collider, 3)
level01.colliders.OpWall52129ID = {}
level01.colliders.OpWall52129ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall52129ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall52129ID.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.OpWall52129ID.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.OpWall52129ID.collider:SetPos(89,22.595,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall52129ID.collider, 3)
level01.colliders.OpWall53130ID = {}
level01.colliders.OpWall53130ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall53130ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall53130ID.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.OpWall53130ID.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.OpWall53130ID.collider:SetPos(4.5,6.83489,147.5)
CollisionHandler.AddOBB(level01.colliders.OpWall53130ID.collider, 3)
level01.colliders.OpWall54131ID = {}
level01.colliders.OpWall54131ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall54131ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall54131ID.collider:SetZAxis(0,0,1)
level01.colliders.OpWall54131ID.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.OpWall54131ID.collider:SetPos(5,6.98218,151.5)
CollisionHandler.AddOBB(level01.colliders.OpWall54131ID.collider, 3)
level01.colliders.OpWall55132ID = {}
level01.colliders.OpWall55132ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall55132ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall55132ID.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.OpWall55132ID.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.OpWall55132ID.collider:SetPos(4.5,7.42405,159)
CollisionHandler.AddOBB(level01.colliders.OpWall55132ID.collider, 3)
level01.colliders.OpWall56133ID = {}
level01.colliders.OpWall56133ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall56133ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall56133ID.collider:SetZAxis(0.6,0,0.8)
level01.colliders.OpWall56133ID.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.OpWall56133ID.collider:SetPos(7,6.54031,167)
CollisionHandler.AddOBB(level01.colliders.OpWall56133ID.collider, 3)
level01.colliders.OpWall57134ID = {}
level01.colliders.OpWall57134ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall57134ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall57134ID.collider:SetZAxis(0,0,1)
level01.colliders.OpWall57134ID.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.OpWall57134ID.collider:SetPos(10,6.24573,173.5)
CollisionHandler.AddOBB(level01.colliders.OpWall57134ID.collider, 3)
level01.colliders.OpWall58135ID = {}
level01.colliders.OpWall58135ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall58135ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall58135ID.collider:SetZAxis(-0.759257,0,0.650791)
level01.colliders.OpWall58135ID.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.OpWall58135ID.collider:SetPos(6.5,5.65657,179)
CollisionHandler.AddOBB(level01.colliders.OpWall58135ID.collider, 3)
level01.colliders.OpWall59136ID = {}
level01.colliders.OpWall59136ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall59136ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall59136ID.collider:SetZAxis(-0.0830455,0,0.996546)
level01.colliders.OpWall59136ID.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.OpWall59136ID.collider:SetPos(2.5,5.36198,188)
CollisionHandler.AddOBB(level01.colliders.OpWall59136ID.collider, 3)
level01.colliders.OpWall60137ID = {}
level01.colliders.OpWall60137ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall60137ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall60137ID.collider:SetZAxis(0.514496,0,0.857493)
level01.colliders.OpWall60137ID.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.OpWall60137ID.collider:SetPos(3.5,4.03637,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall60137ID.collider, 3)
level01.colliders.OpWall61138ID = {}
level01.colliders.OpWall61138ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall61138ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall61138ID.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.OpWall61138ID.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.OpWall61138ID.collider:SetPos(6,3.44721,200.5)
CollisionHandler.AddOBB(level01.colliders.OpWall61138ID.collider, 3)
level01.colliders.OpWall62139ID = {}
level01.colliders.OpWall62139ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall62139ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall62139ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall62139ID.collider:SetHalfLengths(0.3,5.14729,1.11803)
level01.colliders.OpWall62139ID.collider:SetPos(7.5,3.44721,203)
CollisionHandler.AddOBB(level01.colliders.OpWall62139ID.collider, 3)
level01.colliders.OpWall63140ID = {}
level01.colliders.OpWall63140ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall63140ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall63140ID.collider:SetZAxis(0.977802,0,-0.209529)
level01.colliders.OpWall63140ID.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.OpWall63140ID.collider:SetPos(15,3.29992,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall63140ID.collider, 3)
level01.colliders.OpWall64141ID = {}
level01.colliders.OpWall64141ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall64141ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall64141ID.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.OpWall64141ID.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.OpWall64141ID.collider:SetPos(24.5,3.15263,199.5)
CollisionHandler.AddOBB(level01.colliders.OpWall64141ID.collider, 3)
level01.colliders.OpWall65142ID = {}
level01.colliders.OpWall65142ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall65142ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall65142ID.collider:SetZAxis(0.478852,0,0.877896)
level01.colliders.OpWall65142ID.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.OpWall65142ID.collider:SetPos(23,4.33095,190.5)
CollisionHandler.AddOBB(level01.colliders.OpWall65142ID.collider, 3)
level01.colliders.OpWall66143ID = {}
level01.colliders.OpWall66143ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall66143ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall66143ID.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.OpWall66143ID.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.OpWall66143ID.collider:SetPos(27,5.36198,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall66143ID.collider, 3)
level01.colliders.OpWall67144ID = {}
level01.colliders.OpWall67144ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall67144ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall67144ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall67144ID.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.OpWall67144ID.collider:SetPos(29,7.71863,197)
CollisionHandler.AddOBB(level01.colliders.OpWall67144ID.collider, 3)
level01.colliders.OpWall68145ID = {}
level01.colliders.OpWall68145ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall68145ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall68145ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall68145ID.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.OpWall68145ID.collider:SetPos(31.5,8.16051,200)
CollisionHandler.AddOBB(level01.colliders.OpWall68145ID.collider, 3)
level01.colliders.OpWall69146ID = {}
level01.colliders.OpWall69146ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall69146ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall69146ID.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.OpWall69146ID.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.OpWall69146ID.collider:SetPos(32.5,8.89696,203.5)
CollisionHandler.AddOBB(level01.colliders.OpWall69146ID.collider, 3)
level01.colliders.OpWall70147ID = {}
level01.colliders.OpWall70147ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall70147ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall70147ID.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.OpWall70147ID.collider:SetHalfLengths(0.3,5.14729,4.30116)
level01.colliders.OpWall70147ID.collider:SetPos(34.5,8.68373,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall70147ID.collider, 3)
level01.colliders.OpWall71148ID = {}
level01.colliders.OpWall71148ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall71148ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall71148ID.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.OpWall71148ID.collider:SetHalfLengths(0.3,5.73645,4.03113)
level01.colliders.OpWall71148ID.collider:SetPos(40.5,8.60238,213)
CollisionHandler.AddOBB(level01.colliders.OpWall71148ID.collider, 3)
level01.colliders.OpWall72149ID = {}
level01.colliders.OpWall72149ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall72149ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall72149ID.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.OpWall72149ID.collider:SetHalfLengths(0.3,5.58916,7.07107)
level01.colliders.OpWall72149ID.collider:SetPos(51,9.33883,216)
CollisionHandler.AddOBB(level01.colliders.OpWall72149ID.collider, 3)
level01.colliders.OpWall73150ID = {}
level01.colliders.OpWall73150ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall73150ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall73150ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall73150ID.collider:SetHalfLengths(0.3,10.4498,5)
level01.colliders.OpWall73150ID.collider:SetPos(63,8.74967,217)
CollisionHandler.AddOBB(level01.colliders.OpWall73150ID.collider, 3)
level01.colliders.OpWall74151ID = {}
level01.colliders.OpWall74151ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall74151ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall74151ID.collider:SetZAxis(0.871576,0,0.490261)
level01.colliders.OpWall74151ID.collider:SetHalfLengths(0.3,6.4729,9.17878)
level01.colliders.OpWall74151ID.collider:SetPos(76,14.1994,221.5)
CollisionHandler.AddOBB(level01.colliders.OpWall74151ID.collider, 3)
level01.colliders.OpWall75152ID = {}
level01.colliders.OpWall75152ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall75152ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall75152ID.collider:SetZAxis(0.841179,0,0.540758)
level01.colliders.OpWall75152ID.collider:SetHalfLengths(0.3,11.9227,8.32166)
level01.colliders.OpWall75152ID.collider:SetPos(91,15.6723,230.5)
CollisionHandler.AddOBB(level01.colliders.OpWall75152ID.collider, 3)
level01.colliders.OpWall76153ID = {}
level01.colliders.OpWall76153ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall76153ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall76153ID.collider:SetZAxis(0.988372,0,0.152057)
level01.colliders.OpWall76153ID.collider:SetHalfLengths(0.3,10.8916,6.57647)
level01.colliders.OpWall76153ID.collider:SetPos(104.5,22.595,236)
CollisionHandler.AddOBB(level01.colliders.OpWall76153ID.collider, 3)
level01.colliders.OpWall77154ID = {}
level01.colliders.OpWall77154ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall77154ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall77154ID.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.OpWall77154ID.collider:SetHalfLengths(0.3,6.91478,4.47214)
level01.colliders.OpWall77154ID.collider:SetPos(115,28.4866,235)
CollisionHandler.AddOBB(level01.colliders.OpWall77154ID.collider, 3)
level01.colliders.OpWall78155ID = {}
level01.colliders.OpWall78155ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall78155ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall78155ID.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.OpWall78155ID.collider:SetHalfLengths(0.3,6.76749,3.04138)
level01.colliders.OpWall78155ID.collider:SetPos(122,30.4014,233.5)
CollisionHandler.AddOBB(level01.colliders.OpWall78155ID.collider, 3)
level01.colliders.OpWall79156ID = {}
level01.colliders.OpWall79156ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall79156ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall79156ID.collider:SetZAxis(0.0995037,0,-0.995037)
level01.colliders.OpWall79156ID.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.OpWall79156ID.collider:SetPos(125.5,32.1689,229)
CollisionHandler.AddOBB(level01.colliders.OpWall79156ID.collider, 3)
level01.colliders.OpWall80157ID = {}
level01.colliders.OpWall80157ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall80157ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall80157ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall80157ID.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.OpWall80157ID.collider:SetPos(127,32.758,224)
CollisionHandler.AddOBB(level01.colliders.OpWall80157ID.collider, 3)
level01.props.Bridge369ID = {}
level01.props.Bridge369ID.model = Assets.LoadModel('Models/bridge.model')
level01.props.Bridge369ID.transformID = Gear.BindStaticInstance(level01.props.Bridge369ID.model)
Transform.SetPosition(level01.props.Bridge369ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.Bridge369ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Bridge369ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider11370ID = {}
level01.props.OakTree_NoCollider11370ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11370ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider11370ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider11370ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider11370ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(level01.props.OakTree_NoCollider11370ID.transformID, {x=0, y=2.76508, z=0})
level01.props.OakTree_NoCollider12371ID = {}
level01.props.OakTree_NoCollider12371ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12371ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider12371ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider12371ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider12371ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(level01.props.OakTree_NoCollider12371ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider13372ID = {}
level01.props.OakTree_NoCollider13372ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13372ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider13372ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider13372ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider13372ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(level01.props.OakTree_NoCollider13372ID.transformID, {x=0, y=2.16382, z=0})
level01.props.OakTree_NoCollider14373ID = {}
level01.props.OakTree_NoCollider14373ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14373ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider14373ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider14373ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider14373ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(level01.props.OakTree_NoCollider14373ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider151374ID = {}
level01.props.OakTree_NoCollider151374ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151374ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider151374ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider151374ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider151374ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(level01.props.OakTree_NoCollider151374ID.transformID, {x=0, y=1.62265, z=0})
level01.props.OakTree_NoCollider16375ID = {}
level01.props.OakTree_NoCollider16375ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16375ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider16375ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider16375ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider16375ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(level01.props.OakTree_NoCollider16375ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider17376ID = {}
level01.props.OakTree_NoCollider17376ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17376ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider17376ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider17376ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider17376ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(level01.props.OakTree_NoCollider17376ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider18377ID = {}
level01.props.OakTree_NoCollider18377ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18377ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider18377ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider18377ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider18377ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(level01.props.OakTree_NoCollider18377ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider19378ID = {}
level01.props.OakTree_NoCollider19378ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19378ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider19378ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider19378ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider19378ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(level01.props.OakTree_NoCollider19378ID.transformID, {x=-0.045381, y=3.70048, z=0.0362335})
level01.props.OakTree_Collider379ID = {}
level01.props.OakTree_Collider379ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider379ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider379ID.model)
Transform.SetPosition(level01.props.OakTree_Collider379ID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider379ID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(level01.props.OakTree_Collider379ID.transformID, {x=0, y=1.7421, z=-0.00619812})
level01.props.OakTree_Collider379ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider379ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider379ID.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
level01.props.OakTree_Collider379ID.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.props.OakTree_Collider379ID.collider:SetPos(39.8641,12.8281,155.087)
CollisionHandler.AddOBB(level01.props.OakTree_Collider379ID.collider, 3)
level01.props.OakTree_Collider1380ID = {}
level01.props.OakTree_Collider1380ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1380ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1380ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1380ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1380ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1380ID.transformID, {x=0, y=0.376574, z=0})
level01.props.OakTree_Collider1380ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider1380ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider1380ID.collider:SetZAxis(0.367737,0,0.92993)
level01.props.OakTree_Collider1380ID.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.props.OakTree_Collider1380ID.collider:SetPos(24,10.8555,139)
CollisionHandler.AddOBB(level01.props.OakTree_Collider1380ID.collider, 3)
level01.props.OakTree_Collider2381ID = {}
level01.props.OakTree_Collider2381ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2381ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2381ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2381ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2381ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2381ID.transformID, {x=0, y=-2.0418, z=0})
level01.props.OakTree_Collider2381ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider2381ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider2381ID.collider:SetZAxis(-0.891114,0,-0.453779)
level01.props.OakTree_Collider2381ID.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.props.OakTree_Collider2381ID.collider:SetPos(6.18867,8.53125,180.735)
CollisionHandler.AddOBB(level01.props.OakTree_Collider2381ID.collider, 3)
level01.props.OakTree_Collider3382ID = {}
level01.props.OakTree_Collider3382ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3382ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3382ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3382ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3382ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3382ID.transformID, {x=0, y=-1.42165, z=0})
level01.props.OakTree_Collider3382ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider3382ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider3382ID.collider:SetZAxis(-0.988898,0,0.148599)
level01.props.OakTree_Collider3382ID.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.props.OakTree_Collider3382ID.collider:SetPos(37.7154,11.4688,182.582)
CollisionHandler.AddOBB(level01.props.OakTree_Collider3382ID.collider, 3)
level01.props.PineTree_NoCollider383ID = {}
level01.props.PineTree_NoCollider383ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider383ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider383ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider383ID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider383ID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(level01.props.PineTree_NoCollider383ID.transformID, {x=0.536822, y=0.137189, z=0.401651})
level01.props.PineTree_NoCollider2421ID = {}
level01.props.PineTree_NoCollider2421ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2421ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider2421ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider2421ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider2421ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(level01.props.PineTree_NoCollider2421ID.transformID, {x=0, y=2.5061, z=0})
level01.props.PineTree_NoCollider3422ID = {}
level01.props.PineTree_NoCollider3422ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3422ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider3422ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider3422ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider3422ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(level01.props.PineTree_NoCollider3422ID.transformID, {x=0, y=1.9694, z=0})
level01.props.PineTree_NoCollider4423ID = {}
level01.props.PineTree_NoCollider4423ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4423ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider4423ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider4423ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider4423ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree_NoCollider4423ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree_NoCollider5424ID = {}
level01.props.PineTree_NoCollider5424ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5424ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider5424ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider5424ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider5424ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(level01.props.PineTree_NoCollider5424ID.transformID, {x=0, y=2.83677, z=0})
level01.colliders.Tile1_wallNr435ID = {}
level01.colliders.Tile1_wallNr435ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr435ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr435ID.collider:SetZAxis(-1,0,0)
level01.colliders.Tile1_wallNr435ID.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.Tile1_wallNr435ID.collider:SetPos(36.5,8.3078,128)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr435ID.collider, 3)
level01.colliders.Tile1_wallNr1436ID = {}
level01.colliders.Tile1_wallNr1436ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr1436ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr1436ID.collider:SetZAxis(-0.6,0,0.8)
level01.colliders.Tile1_wallNr1436ID.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.Tile1_wallNr1436ID.collider:SetPos(28,7.86593,132)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr1436ID.collider, 3)
level01.colliders.Tile1_wallNr2437ID = {}
level01.colliders.Tile1_wallNr2437ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr2437ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr2437ID.collider:SetZAxis(-0.624695,0,0.780869)
level01.colliders.Tile1_wallNr2437ID.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.Tile1_wallNr2437ID.collider:SetPos(23,7.71863,138.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr2437ID.collider, 3)
level01.triggers.New438ID = {}
level01.triggers.New438ID.collider = SphereCollider.Create(-1)
level01.triggers.New438ID.collider:SetOffset(0,0,0)
level01.triggers.New438ID.collider:SetRadius(1)
level01.triggers.New438ID.collider:SetPos(20.0156,6.19141,157.875)
level01.triggers.New438ID.collider.OnTriggering = function() print("Derp") end
level01.triggers.New438ID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.New438ID.collider, 4)
level01.props.Stone2704ID = {}
level01.props.Stone2704ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone2704ID.transformID = Gear.BindStaticInstance(level01.props.Stone2704ID.model)
Transform.SetPosition(level01.props.Stone2704ID.transformID, {x=4.34854, y=7.05469, z=139.31})
Transform.SetScaleNonUniform(level01.props.Stone2704ID.transformID, 2.87522, 2.86321, 2.81752)
Transform.SetRotation(level01.props.Stone2704ID.transformID, {x=-0.0120454, y=-1.17492, z=-0.0422012})
level01.props.Stone2704ID.collider = OBBCollider.Create(-1)
level01.props.Stone2704ID.collider:SetOffset(0.3,0.6,0)
level01.props.Stone2704ID.collider:SetZAxis(-0.921262,0.0509573,0.385591)
level01.props.Stone2704ID.collider:SetHalfLengths(2.87522,1.71793,2.81752)
level01.props.Stone2704ID.collider:SetPos(4.64854,7.65469,139.31)
CollisionHandler.AddOBB(level01.props.Stone2704ID.collider, 3)
level01.props.Stone3705ID = {}
level01.props.Stone3705ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone3705ID.transformID = Gear.BindStaticInstance(level01.props.Stone3705ID.model)
Transform.SetPosition(level01.props.Stone3705ID.transformID, {x=6.41381, y=6.84375, z=142.217})
Transform.SetScaleNonUniform(level01.props.Stone3705ID.transformID, 1.28523, 1.43478, 1.76532)
Transform.SetRotation(level01.props.Stone3705ID.transformID, {x=0, y=0, z=0})
level01.props.Stone3705ID.collider = SphereCollider.Create(-1)
level01.props.Stone3705ID.collider:SetOffset(0,0.2,0)
level01.props.Stone3705ID.collider:SetRadius(1)
level01.props.Stone3705ID.collider:SetPos(6.41381,7.04375,142.217)
CollisionHandler.AddSphere(level01.props.Stone3705ID.collider, 3)
level01.props.Stone1706ID = {}
level01.props.Stone1706ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone1706ID.transformID = Gear.BindStaticInstance(level01.props.Stone1706ID.model)
Transform.SetPosition(level01.props.Stone1706ID.transformID, {x=3.73525, y=6.76953, z=145.076})
Transform.SetScaleNonUniform(level01.props.Stone1706ID.transformID, 1.6774, 1.68557, 1.1635)
Transform.SetRotation(level01.props.Stone1706ID.transformID, {x=0, y=-1.78111, z=0})
level01.props.Stone1706ID.collider = SphereCollider.Create(-1)
level01.props.Stone1706ID.collider:SetOffset(-0.5,0,-0.5)
level01.props.Stone1706ID.collider:SetRadius(2)
level01.props.Stone1706ID.collider:SetPos(3.23525,6.76953,144.576)
CollisionHandler.AddSphere(level01.props.Stone1706ID.collider, 3)
level01.props.Stone31707ID = {}
level01.props.Stone31707ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone31707ID.transformID = Gear.BindStaticInstance(level01.props.Stone31707ID.model)
Transform.SetPosition(level01.props.Stone31707ID.transformID, {x=4.70592, y=6.84375, z=143.694})
Transform.SetScaleNonUniform(level01.props.Stone31707ID.transformID, 1, 2.45793, 1.84109)
Transform.SetRotation(level01.props.Stone31707ID.transformID, {x=0, y=0, z=0})
level01.props.Stone31707ID.collider = SphereCollider.Create(-1)
level01.props.Stone31707ID.collider:SetOffset(0,0.2,0)
level01.props.Stone31707ID.collider:SetRadius(1)
level01.props.Stone31707ID.collider:SetPos(4.70592,7.04375,143.694)
CollisionHandler.AddSphere(level01.props.Stone31707ID.collider, 3)
level01.props.House708ID = {}
level01.props.House708ID.model = Assets.LoadModel('Models/House1.model')
level01.props.House708ID.transformID = Gear.BindStaticInstance(level01.props.House708ID.model)
Transform.SetPosition(level01.props.House708ID.transformID, {x=36.887, y=7.96094, z=130.834})
Transform.SetScaleNonUniform(level01.props.House708ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level01.props.House708ID.transformID, {x=0, y=0, z=0})
level01.props.House708ID.collider = OBBCollider.Create(-1)
level01.props.House708ID.collider:SetOffset(0,3,0)
level01.props.House708ID.collider:SetZAxis(0,0,1)
level01.props.House708ID.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level01.props.House708ID.collider:SetPos(36.887,10.9609,130.834)
CollisionHandler.AddOBB(level01.props.House708ID.collider, 3)
level01.props.Stone11709ID = {}
level01.props.Stone11709ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone11709ID.transformID = Gear.BindStaticInstance(level01.props.Stone11709ID.model)
Transform.SetPosition(level01.props.Stone11709ID.transformID, {x=3.52792, y=3.78483, z=188.422})
Transform.SetScaleNonUniform(level01.props.Stone11709ID.transformID, 1.51213, 1.79035, 1.59059)
Transform.SetRotation(level01.props.Stone11709ID.transformID, {x=0, y=0, z=0})
level01.props.Stone11709ID.collider = SphereCollider.Create(-1)
level01.props.Stone11709ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone11709ID.collider:SetRadius(2)
level01.props.Stone11709ID.collider:SetPos(3.52792,4.28483,189.022)
CollisionHandler.AddSphere(level01.props.Stone11709ID.collider, 3)
level01.props.Stone21710ID = {}
level01.props.Stone21710ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone21710ID.transformID = Gear.BindStaticInstance(level01.props.Stone21710ID.model)
Transform.SetPosition(level01.props.Stone21710ID.transformID, {x=4.952, y=4.125, z=191.432})
Transform.SetScaleNonUniform(level01.props.Stone21710ID.transformID, 1.4564, 1.68508, 1.50235)
Transform.SetRotation(level01.props.Stone21710ID.transformID, {x=0.0164697, y=0, z=0})
level01.props.Stone21710ID.collider = OBBCollider.Create(-1)
level01.props.Stone21710ID.collider:SetOffset(0.3,0.6,0)
level01.props.Stone21710ID.collider:SetZAxis(0,-0.016469,0.999864)
level01.props.Stone21710ID.collider:SetHalfLengths(1.4564,1.01105,1.50235)
level01.props.Stone21710ID.collider:SetPos(5.252,4.725,191.432)
CollisionHandler.AddOBB(level01.props.Stone21710ID.collider, 3)
level01.props.Stone32711ID = {}
level01.props.Stone32711ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone32711ID.transformID = Gear.BindStaticInstance(level01.props.Stone32711ID.model)
Transform.SetPosition(level01.props.Stone32711ID.transformID, {x=5.19985, y=3.98828, z=188.718})
Transform.SetScaleNonUniform(level01.props.Stone32711ID.transformID, 1.25457, 2.0231, 1.39897)
Transform.SetRotation(level01.props.Stone32711ID.transformID, {x=0, y=0, z=0})
level01.props.Stone32711ID.collider = SphereCollider.Create(-1)
level01.props.Stone32711ID.collider:SetOffset(0,0.2,0)
level01.props.Stone32711ID.collider:SetRadius(1)
level01.props.Stone32711ID.collider:SetPos(5.19985,4.18828,188.718)
CollisionHandler.AddSphere(level01.props.Stone32711ID.collider, 3)
level01.props.Stone33712ID = {}
level01.props.Stone33712ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone33712ID.transformID = Gear.BindStaticInstance(level01.props.Stone33712ID.model)
Transform.SetPosition(level01.props.Stone33712ID.transformID, {x=5.32939, y=3.88086, z=193.526})
Transform.SetScaleNonUniform(level01.props.Stone33712ID.transformID, 1.44906, 1.65862, 1.39719)
Transform.SetRotation(level01.props.Stone33712ID.transformID, {x=0, y=0, z=0})
level01.props.Stone33712ID.collider = SphereCollider.Create(-1)
level01.props.Stone33712ID.collider:SetOffset(0,0.2,0)
level01.props.Stone33712ID.collider:SetRadius(1)
level01.props.Stone33712ID.collider:SetPos(5.32939,4.08086,193.526)
CollisionHandler.AddSphere(level01.props.Stone33712ID.collider, 3)
level01.props.Stone34713ID = {}
level01.props.Stone34713ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone34713ID.transformID = Gear.BindStaticInstance(level01.props.Stone34713ID.model)
Transform.SetPosition(level01.props.Stone34713ID.transformID, {x=3.03896, y=3.69922, z=190.737})
Transform.SetScaleNonUniform(level01.props.Stone34713ID.transformID, 2.2204, 5.14281, 2.41628)
Transform.SetRotation(level01.props.Stone34713ID.transformID, {x=0, y=0, z=0})
level01.props.Stone34713ID.collider = SphereCollider.Create(-1)
level01.props.Stone34713ID.collider:SetOffset(0,0.2,0)
level01.props.Stone34713ID.collider:SetRadius(1)
level01.props.Stone34713ID.collider:SetPos(3.03896,3.89922,190.737)
CollisionHandler.AddSphere(level01.props.Stone34713ID.collider, 3)
level01.props.Stone12714ID = {}
level01.props.Stone12714ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone12714ID.transformID = Gear.BindStaticInstance(level01.props.Stone12714ID.model)
Transform.SetPosition(level01.props.Stone12714ID.transformID, {x=3.2186, y=3.70508, z=193.414})
Transform.SetScaleNonUniform(level01.props.Stone12714ID.transformID, 1.01499, 1.34828, 1.3712)
Transform.SetRotation(level01.props.Stone12714ID.transformID, {x=0.0261728, y=-3.50038, z=0.00149078})
level01.props.Stone12714ID.collider = SphereCollider.Create(-1)
level01.props.Stone12714ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone12714ID.collider:SetRadius(2)
level01.props.Stone12714ID.collider:SetPos(3.2186,4.20508,194.014)
CollisionHandler.AddSphere(level01.props.Stone12714ID.collider, 3)
level01.props.Lantern726ID = {}
level01.props.Lantern726ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern726ID.transformID = Gear.BindStaticInstance(level01.props.Lantern726ID.model)
Transform.SetPosition(level01.props.Lantern726ID.transformID, {x=91.1085, y=19.6589, z=229.316})
Transform.SetScaleNonUniform(level01.props.Lantern726ID.transformID, 1.10704, 1.46453, 1.26106)
Transform.SetRotation(level01.props.Lantern726ID.transformID, {x=0, y=4.06324, z=0})
Light.addLight(92.4085, 24.6589, 227.716, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern1727ID = {}
level01.props.Lantern1727ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern1727ID.transformID = Gear.BindStaticInstance(level01.props.Lantern1727ID.model)
Transform.SetPosition(level01.props.Lantern1727ID.transformID, {x=104.807, y=24.2813, z=235.177})
Transform.SetScaleNonUniform(level01.props.Lantern1727ID.transformID, 1, 1.31997, 1.13)
Transform.SetRotation(level01.props.Lantern1727ID.transformID, {x=0, y=-1.60358, z=0})
Light.addLight(104.807, 28.2813, 233.177, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern2728ID = {}
level01.props.Lantern2728ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern2728ID.transformID = Gear.BindStaticInstance(level01.props.Lantern2728ID.model)
Transform.SetPosition(level01.props.Lantern2728ID.transformID, {x=120.768, y=30.5925, z=229.329})
Transform.SetScaleNonUniform(level01.props.Lantern2728ID.transformID, 1.0591, 1.30088, 1.26469)
Transform.SetRotation(level01.props.Lantern2728ID.transformID, {x=0, y=-1.03939, z=0})
Light.addLight(119.768, 34.5925, 227.579, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern3729ID = {}
level01.props.Lantern3729ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern3729ID.transformID = Gear.BindStaticInstance(level01.props.Lantern3729ID.model)
Transform.SetPosition(level01.props.Lantern3729ID.transformID, {x=75.5229, y=16.0708, z=218.97})
Transform.SetScaleNonUniform(level01.props.Lantern3729ID.transformID, 1.05539, 1.31311, 1.34544)
Transform.SetRotation(level01.props.Lantern3729ID.transformID, {x=0, y=-1.90402, z=0})
Light.addLight(76.0229, 20.0708, 216.97, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern5731ID = {}
level01.props.Lantern5731ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern5731ID.transformID = Gear.BindStaticInstance(level01.props.Lantern5731ID.model)
Transform.SetPosition(level01.props.Lantern5731ID.transformID, {x=31.481, y=7.76563, z=137.765})
Transform.SetScaleNonUniform(level01.props.Lantern5731ID.transformID, 0.817026, 0.683302, 0.733902)
Transform.SetRotation(level01.props.Lantern5731ID.transformID, {x=0, y=1.5866, z=0})
Light.addLight(31.481, 9.76563, 139.215, 1, 0.576471, 0.121569, 10,2)
level01.props.Lantern6732ID = {}
level01.props.Lantern6732ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern6732ID.transformID = Gear.BindStaticInstance(level01.props.Lantern6732ID.model)
Transform.SetPosition(level01.props.Lantern6732ID.transformID, {x=19.7806, y=4.85156, z=183.644})
Transform.SetScaleNonUniform(level01.props.Lantern6732ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Lantern6732ID.transformID, {x=0, y=-1.1856, z=0})
Light.addLight(18.9806, 8.60156, 181.844, 1, 0.576471, 0.160784, 10,2)
end
level01.unload = function()
Gear.UnbindInstance(level01.props.TilePlaceholder2ID.transformID)
level01.props.TilePlaceholder2ID = nil
level01.props.tile13ID = nil
level01.TileSettings4ID = nil --Checkthisout
Gear.UnbindInstance(level01.props.m16ID.transformID)
level01.props.m16ID = nil
Gear.UnbindInstance(level01.props.m27ID.transformID)
level01.props.m27ID = nil
Gear.UnbindInstance(level01.props.m38ID.transformID)
level01.props.m38ID = nil
Gear.UnbindInstance(level01.props.m49ID.transformID)
level01.props.m49ID = nil
Gear.UnbindInstance(level01.props.m510ID.transformID)
level01.props.m510ID = nil
Gear.UnbindInstance(level01.props.m611ID.transformID)
level01.props.m611ID = nil
Gear.UnbindInstance(level01.props.m712ID.transformID)
level01.props.m712ID = nil
Gear.UnbindInstance(level01.props.m813ID.transformID)
level01.props.m813ID = nil
Gear.UnbindInstance(level01.props.s114ID.transformID)
level01.props.s114ID = nil
Gear.UnbindInstance(level01.props.s215ID.transformID)
level01.props.s215ID = nil
Gear.UnbindInstance(level01.props.s316ID.transformID)
level01.props.s316ID = nil
Gear.UnbindInstance(level01.props.s417ID.transformID)
level01.props.s417ID = nil
Gear.UnbindInstance(level01.props.s518ID.transformID)
level01.props.s518ID = nil
Gear.UnbindInstance(level01.props.s619ID.transformID)
level01.props.s619ID = nil
Gear.UnbindInstance(level01.props.s720ID.transformID)
level01.props.s720ID = nil
level01.colliders.OpWall77ID = nil
level01.colliders.OpWall178ID = nil
level01.colliders.OpWall279ID = nil
level01.colliders.OpWall380ID = nil
level01.colliders.OpWall481ID = nil
level01.colliders.OpWall582ID = nil
level01.colliders.OpWall683ID = nil
level01.colliders.OpWall784ID = nil
level01.colliders.OpWall885ID = nil
level01.colliders.OpWall986ID = nil
level01.colliders.OpWall1087ID = nil
level01.colliders.OpWall1188ID = nil
level01.colliders.OpWall1289ID = nil
level01.colliders.OpWall1390ID = nil
level01.colliders.OpWall1491ID = nil
level01.colliders.OpWall1592ID = nil
level01.colliders.OpWall1693ID = nil
level01.colliders.OpWall1794ID = nil
level01.colliders.OpWall1895ID = nil
level01.colliders.OpWall1996ID = nil
level01.colliders.OpWall2097ID = nil
level01.colliders.OpWall2198ID = nil
level01.colliders.OpWall2299ID = nil
level01.colliders.OpWall23100ID = nil
level01.colliders.OpWall24101ID = nil
level01.colliders.OpWall25102ID = nil
level01.colliders.OpWall26103ID = nil
level01.colliders.OpWall27104ID = nil
level01.colliders.OpWall28105ID = nil
level01.colliders.OpWall29106ID = nil
level01.colliders.OpWall30107ID = nil
level01.colliders.OpWall31108ID = nil
level01.colliders.OpWall32109ID = nil
level01.colliders.OpWall33110ID = nil
level01.colliders.OpWall34111ID = nil
level01.colliders.OpWall35112ID = nil
level01.colliders.OpWall36113ID = nil
level01.colliders.OpWall37114ID = nil
level01.colliders.OpWall38115ID = nil
level01.colliders.OpWall39116ID = nil
level01.colliders.OpWall40117ID = nil
level01.colliders.OpWall41118ID = nil
level01.colliders.OpWall42119ID = nil
level01.colliders.OpWall43120ID = nil
level01.colliders.OpWall44121ID = nil
level01.colliders.OpWall45122ID = nil
level01.colliders.OpWall46123ID = nil
level01.colliders.OpWall47124ID = nil
level01.colliders.OpWall48125ID = nil
level01.colliders.OpWall49126ID = nil
level01.colliders.OpWall50127ID = nil
level01.colliders.OpWall51128ID = nil
level01.colliders.OpWall52129ID = nil
level01.colliders.OpWall53130ID = nil
level01.colliders.OpWall54131ID = nil
level01.colliders.OpWall55132ID = nil
level01.colliders.OpWall56133ID = nil
level01.colliders.OpWall57134ID = nil
level01.colliders.OpWall58135ID = nil
level01.colliders.OpWall59136ID = nil
level01.colliders.OpWall60137ID = nil
level01.colliders.OpWall61138ID = nil
level01.colliders.OpWall62139ID = nil
level01.colliders.OpWall63140ID = nil
level01.colliders.OpWall64141ID = nil
level01.colliders.OpWall65142ID = nil
level01.colliders.OpWall66143ID = nil
level01.colliders.OpWall67144ID = nil
level01.colliders.OpWall68145ID = nil
level01.colliders.OpWall69146ID = nil
level01.colliders.OpWall70147ID = nil
level01.colliders.OpWall71148ID = nil
level01.colliders.OpWall72149ID = nil
level01.colliders.OpWall73150ID = nil
level01.colliders.OpWall74151ID = nil
level01.colliders.OpWall75152ID = nil
level01.colliders.OpWall76153ID = nil
level01.colliders.OpWall77154ID = nil
level01.colliders.OpWall78155ID = nil
level01.colliders.OpWall79156ID = nil
level01.colliders.OpWall80157ID = nil
Gear.UnbindInstance(level01.props.Bridge369ID.transformID)
level01.props.Bridge369ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider11370ID.transformID)
level01.props.OakTree_NoCollider11370ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider12371ID.transformID)
level01.props.OakTree_NoCollider12371ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider13372ID.transformID)
level01.props.OakTree_NoCollider13372ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider14373ID.transformID)
level01.props.OakTree_NoCollider14373ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider151374ID.transformID)
level01.props.OakTree_NoCollider151374ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider16375ID.transformID)
level01.props.OakTree_NoCollider16375ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider17376ID.transformID)
level01.props.OakTree_NoCollider17376ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider18377ID.transformID)
level01.props.OakTree_NoCollider18377ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider19378ID.transformID)
level01.props.OakTree_NoCollider19378ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider379ID.transformID)
level01.props.OakTree_Collider379ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider1380ID.transformID)
level01.props.OakTree_Collider1380ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider2381ID.transformID)
level01.props.OakTree_Collider2381ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider3382ID.transformID)
level01.props.OakTree_Collider3382ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider383ID.transformID)
level01.props.PineTree_NoCollider383ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider2421ID.transformID)
level01.props.PineTree_NoCollider2421ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider3422ID.transformID)
level01.props.PineTree_NoCollider3422ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider4423ID.transformID)
level01.props.PineTree_NoCollider4423ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider5424ID.transformID)
level01.props.PineTree_NoCollider5424ID = nil
level01.colliders.Tile1_wallNr435ID = nil
level01.colliders.Tile1_wallNr1436ID = nil
level01.colliders.Tile1_wallNr2437ID = nil
level01.triggers.New438ID = nil
Gear.UnbindInstance(level01.props.Stone2704ID.transformID)
level01.props.Stone2704ID = nil
Gear.UnbindInstance(level01.props.Stone3705ID.transformID)
level01.props.Stone3705ID = nil
Gear.UnbindInstance(level01.props.Stone1706ID.transformID)
level01.props.Stone1706ID = nil
Gear.UnbindInstance(level01.props.Stone31707ID.transformID)
level01.props.Stone31707ID = nil
Gear.UnbindInstance(level01.props.House708ID.transformID)
level01.props.House708ID = nil
Gear.UnbindInstance(level01.props.Stone11709ID.transformID)
level01.props.Stone11709ID = nil
Gear.UnbindInstance(level01.props.Stone21710ID.transformID)
level01.props.Stone21710ID = nil
Gear.UnbindInstance(level01.props.Stone32711ID.transformID)
level01.props.Stone32711ID = nil
Gear.UnbindInstance(level01.props.Stone33712ID.transformID)
level01.props.Stone33712ID = nil
Gear.UnbindInstance(level01.props.Stone34713ID.transformID)
level01.props.Stone34713ID = nil
Gear.UnbindInstance(level01.props.Stone12714ID.transformID)
level01.props.Stone12714ID = nil
Gear.UnbindInstance(level01.props.Lantern726ID.transformID)
level01.props.Lantern726ID = nil
Gear.UnbindInstance(level01.props.Lantern1727ID.transformID)
level01.props.Lantern1727ID = nil
Gear.UnbindInstance(level01.props.Lantern2728ID.transformID)
level01.props.Lantern2728ID = nil
Gear.UnbindInstance(level01.props.Lantern3729ID.transformID)
level01.props.Lantern3729ID = nil
Gear.UnbindInstance(level01.props.Lantern5731ID.transformID)
level01.props.Lantern5731ID = nil
Gear.UnbindInstance(level01.props.Lantern6732ID.transformID)
level01.props.Lantern6732ID = nil
level01.props = nil
level01.colliders = nil
level01.triggers = nil
end
levels[1] = level01
-------------------------------------level01-----------------------------------------------


-------------------------------------level02-----------------------------------------------

level02 = {}
level02.surrounding = { 1, 3 }
level02.load = function()
level02.props = {}
level02.colliders = {}
level02.triggers = {}
level02.props.tile25ID = {}
level02.props.t2s121ID = {}
level02.props.t2s121ID.model = Assets.LoadModel('Models/tile2_s1.model')
level02.props.t2s121ID.transformID = Gear.BindStaticInstance(level02.props.t2s121ID.model)
Transform.SetPosition(level02.props.t2s121ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s121ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s121ID.transformID, {x=0, y=0, z=0})
level02.props.t2s222ID = {}
level02.props.t2s222ID.model = Assets.LoadModel('Models/tile2_s2.model')
level02.props.t2s222ID.transformID = Gear.BindStaticInstance(level02.props.t2s222ID.model)
Transform.SetPosition(level02.props.t2s222ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s222ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s222ID.transformID, {x=0, y=0, z=0})
level02.props.t2s323ID = {}
level02.props.t2s323ID.model = Assets.LoadModel('Models/tile2_s3.model')
level02.props.t2s323ID.transformID = Gear.BindStaticInstance(level02.props.t2s323ID.model)
Transform.SetPosition(level02.props.t2s323ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s323ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s323ID.transformID, {x=0, y=0, z=0})
level02.props.t2s424ID = {}
level02.props.t2s424ID.model = Assets.LoadModel('Models/tile2_s4.model')
level02.props.t2s424ID.transformID = Gear.BindStaticInstance(level02.props.t2s424ID.model)
Transform.SetPosition(level02.props.t2s424ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s424ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s424ID.transformID, {x=0, y=0, z=0})
level02.props.t2s525ID = {}
level02.props.t2s525ID.model = Assets.LoadModel('Models/tile2_s5.model')
level02.props.t2s525ID.transformID = Gear.BindStaticInstance(level02.props.t2s525ID.model)
Transform.SetPosition(level02.props.t2s525ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s525ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s525ID.transformID, {x=0, y=0, z=0})
level02.props.t2s626ID = {}
level02.props.t2s626ID.model = Assets.LoadModel('Models/tile2_s6.model')
level02.props.t2s626ID.transformID = Gear.BindStaticInstance(level02.props.t2s626ID.model)
Transform.SetPosition(level02.props.t2s626ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s626ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s626ID.transformID, {x=0, y=0, z=0})
level02.props.t2s727ID = {}
level02.props.t2s727ID.model = Assets.LoadModel('Models/tile2_s7.model')
level02.props.t2s727ID.transformID = Gear.BindStaticInstance(level02.props.t2s727ID.model)
Transform.SetPosition(level02.props.t2s727ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s727ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s727ID.transformID, {x=0, y=0, z=0})
level02.props.t2s828ID = {}
level02.props.t2s828ID.model = Assets.LoadModel('Models/tile2_s8.model')
level02.props.t2s828ID.transformID = Gear.BindStaticInstance(level02.props.t2s828ID.model)
Transform.SetPosition(level02.props.t2s828ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s828ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s828ID.transformID, {x=0, y=0, z=0})
level02.props.t2s929ID = {}
level02.props.t2s929ID.model = Assets.LoadModel('Models/tile2_s9.model')
level02.props.t2s929ID.transformID = Gear.BindStaticInstance(level02.props.t2s929ID.model)
Transform.SetPosition(level02.props.t2s929ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s929ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s929ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1030ID = {}
level02.props.t2s1030ID.model = Assets.LoadModel('Models/tile2_s10.model')
level02.props.t2s1030ID.transformID = Gear.BindStaticInstance(level02.props.t2s1030ID.model)
Transform.SetPosition(level02.props.t2s1030ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1030ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1030ID.transformID, {x=0, y=0, z=0})
level02.props.t2s11a31ID = {}
level02.props.t2s11a31ID.model = Assets.LoadModel('Models/tile2_s11a.model')
level02.props.t2s11a31ID.transformID = Gear.BindStaticInstance(level02.props.t2s11a31ID.model)
Transform.SetPosition(level02.props.t2s11a31ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s11a31ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s11a31ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1232ID = {}
level02.props.t2s1232ID.model = Assets.LoadModel('Models/tile2_s12.model')
level02.props.t2s1232ID.transformID = Gear.BindStaticInstance(level02.props.t2s1232ID.model)
Transform.SetPosition(level02.props.t2s1232ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1232ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1232ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1333ID = {}
level02.props.t2s1333ID.model = Assets.LoadModel('Models/tile2_s13.model')
level02.props.t2s1333ID.transformID = Gear.BindStaticInstance(level02.props.t2s1333ID.model)
Transform.SetPosition(level02.props.t2s1333ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1333ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1333ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1434ID = {}
level02.props.t2s1434ID.model = Assets.LoadModel('Models/tile2_s14.model')
level02.props.t2s1434ID.transformID = Gear.BindStaticInstance(level02.props.t2s1434ID.model)
Transform.SetPosition(level02.props.t2s1434ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1434ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1434ID.transformID, {x=0, y=0, z=0})
level02.colliders.Tile2_wallNr158ID = {}
level02.colliders.Tile2_wallNr158ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr158ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr158ID.collider:SetZAxis(0.874157,0,-0.485643)
level02.colliders.Tile2_wallNr158ID.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.Tile2_wallNr158ID.collider:SetPos(132.5,34.0803,208.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr158ID.collider, 3)
level02.colliders.Tile2_wallNr1159ID = {}
level02.colliders.Tile2_wallNr1159ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr1159ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr1159ID.collider:SetZAxis(0.581238,0,-0.813733)
level02.colliders.Tile2_wallNr1159ID.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.Tile2_wallNr1159ID.collider:SetPos(139.5,34.7488,202.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr1159ID.collider, 3)
level02.colliders.Tile2_wallNr2160ID = {}
level02.colliders.Tile2_wallNr2160ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr2160ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr2160ID.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.Tile2_wallNr2160ID.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.Tile2_wallNr2160ID.collider:SetPos(143,36.9769,195.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr2160ID.collider, 3)
level02.colliders.Tile2_wallNr3161ID = {}
level02.colliders.Tile2_wallNr3161ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr3161ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr3161ID.collider:SetZAxis(-0.141421,0,-0.98995)
level02.colliders.Tile2_wallNr3161ID.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.Tile2_wallNr3161ID.collider:SetPos(143,38.8707,185)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr3161ID.collider, 3)
level02.colliders.Tile2_wallNr4162ID = {}
level02.colliders.Tile2_wallNr4162ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr4162ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr4162ID.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.Tile2_wallNr4162ID.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.Tile2_wallNr4162ID.collider:SetPos(141,40.5418,173)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr4162ID.collider, 3)
level02.colliders.Tile2_wallNr5163ID = {}
level02.colliders.Tile2_wallNr5163ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr5163ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr5163ID.collider:SetZAxis(-0.178885,0,-0.98387)
level02.colliders.Tile2_wallNr5163ID.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.Tile2_wallNr5163ID.collider:SetPos(139,44.2181,162.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr5163ID.collider, 3)
level02.colliders.Tile2_wallNr6164ID = {}
level02.colliders.Tile2_wallNr6164ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr6164ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr6164ID.collider:SetZAxis(0.351123,0,-0.936329)
level02.colliders.Tile2_wallNr6164ID.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.Tile2_wallNr6164ID.collider:SetPos(139.5,48.7857,153)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr6164ID.collider, 3)
level02.colliders.Tile2_wallNr7165ID = {}
level02.colliders.Tile2_wallNr7165ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr7165ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr7165ID.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr7165ID.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.Tile2_wallNr7165ID.collider:SetPos(144.5,50.234,147.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr7165ID.collider, 3)
level02.colliders.Tile2_wallNr8166ID = {}
level02.colliders.Tile2_wallNr8166ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr8166ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr8166ID.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.Tile2_wallNr8166ID.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.Tile2_wallNr8166ID.collider:SetPos(152,50.4568,146.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr8166ID.collider, 3)
level02.colliders.Tile2_wallNr9167ID = {}
level02.colliders.Tile2_wallNr9167ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr9167ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr9167ID.collider:SetZAxis(0.939793,0,0.341743)
level02.colliders.Tile2_wallNr9167ID.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.Tile2_wallNr9167ID.collider:SetPos(161.5,50.234,149)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr9167ID.collider, 3)
level02.colliders.Tile2_wallNr10168ID = {}
level02.colliders.Tile2_wallNr10168ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr10168ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr10168ID.collider:SetZAxis(0.948683,0,0.316228)
level02.colliders.Tile2_wallNr10168ID.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.Tile2_wallNr10168ID.collider:SetPos(170,52.1279,152)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr10168ID.collider, 3)
level02.colliders.Tile2_wallNr11169ID = {}
level02.colliders.Tile2_wallNr11169ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr11169ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr11169ID.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.Tile2_wallNr11169ID.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.Tile2_wallNr11169ID.collider:SetPos(176.5,52.7963,152.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr11169ID.collider, 3)
level02.colliders.Tile2_wallNr12170ID = {}
level02.colliders.Tile2_wallNr12170ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr12170ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr12170ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr12170ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr12170ID.collider:SetPos(182,54.1331,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr12170ID.collider, 3)
level02.colliders.Tile2_wallNr13171ID = {}
level02.colliders.Tile2_wallNr13171ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr13171ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr13171ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr13171ID.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.Tile2_wallNr13171ID.collider:SetPos(184.5,54.8016,147.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr13171ID.collider, 3)
level02.colliders.Tile2_wallNr14172ID = {}
level02.colliders.Tile2_wallNr14172ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr14172ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr14172ID.collider:SetZAxis(0.371391,0,-0.928477)
level02.colliders.Tile2_wallNr14172ID.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.Tile2_wallNr14172ID.collider:SetPos(186,55.5814,143.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr14172ID.collider, 3)
level02.colliders.Tile2_wallNr15173ID = {}
level02.colliders.Tile2_wallNr15173ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr15173ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr15173ID.collider:SetZAxis(0.164399,0,-0.986394)
level02.colliders.Tile2_wallNr15173ID.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.Tile2_wallNr15173ID.collider:SetPos(187.5,55.2472,138)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr15173ID.collider, 3)
level02.colliders.Tile2_wallNr16174ID = {}
level02.colliders.Tile2_wallNr16174ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr16174ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr16174ID.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.Tile2_wallNr16174ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr16174ID.collider:SetPos(187.5,55.2472,133)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr16174ID.collider, 3)
level02.colliders.Tile2_wallNr17175ID = {}
level02.colliders.Tile2_wallNr17175ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr17175ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr17175ID.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.Tile2_wallNr17175ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr17175ID.collider:SetPos(186.5,55.3586,129)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr17175ID.collider, 3)
level02.colliders.Tile2_wallNr18176ID = {}
level02.colliders.Tile2_wallNr18176ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr18176ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr18176ID.collider:SetZAxis(-0.287348,0,-0.957826)
level02.colliders.Tile2_wallNr18176ID.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.Tile2_wallNr18176ID.collider:SetPos(181.5,55.2472,112)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr18176ID.collider, 3)
level02.colliders.Tile2_wallNr19177ID = {}
level02.colliders.Tile2_wallNr19177ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr19177ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr19177ID.collider:SetZAxis(-0.0995037,0,-0.995037)
level02.colliders.Tile2_wallNr19177ID.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.Tile2_wallNr19177ID.collider:SetPos(176.5,56.8068,92)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr19177ID.collider, 3)
level02.colliders.Tile2_wallNr20178ID = {}
level02.colliders.Tile2_wallNr20178ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr20178ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr20178ID.collider:SetZAxis(0.058722,0,-0.998274)
level02.colliders.Tile2_wallNr20178ID.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.Tile2_wallNr20178ID.collider:SetPos(176.5,56.584,78.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr20178ID.collider, 3)
level02.colliders.Tile2_wallNr21179ID = {}
level02.colliders.Tile2_wallNr21179ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr21179ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr21179ID.collider:SetZAxis(0.294086,0,-0.955779)
level02.colliders.Tile2_wallNr21179ID.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.Tile2_wallNr21179ID.collider:SetPos(179,56.2498,63.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr21179ID.collider, 3)
level02.colliders.Tile2_wallNr22180ID = {}
level02.colliders.Tile2_wallNr22180ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr22180ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr22180ID.collider:SetZAxis(0.5547,0,-0.83205)
level02.colliders.Tile2_wallNr22180ID.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.Tile2_wallNr22180ID.collider:SetPos(185,54.5788,51)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr22180ID.collider, 3)
level02.colliders.Tile2_wallNr23181ID = {}
level02.colliders.Tile2_wallNr23181ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr23181ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr23181ID.collider:SetZAxis(0.819232,0,-0.573462)
level02.colliders.Tile2_wallNr23181ID.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.Tile2_wallNr23181ID.collider:SetPos(194,53.5761,41.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr23181ID.collider, 3)
level02.colliders.Tile2_wallNr24182ID = {}
level02.colliders.Tile2_wallNr24182ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr24182ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr24182ID.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.Tile2_wallNr24182ID.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.Tile2_wallNr24182ID.collider:SetPos(202.5,52.9077,36)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr24182ID.collider, 3)
level02.colliders.Tile2_wallNr25183ID = {}
level02.colliders.Tile2_wallNr25183ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr25183ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr25183ID.collider:SetZAxis(0.998618,0,0.0525588)
level02.colliders.Tile2_wallNr25183ID.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.Tile2_wallNr25183ID.collider:SetPos(215.5,52.0165,34.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr25183ID.collider, 3)
level02.colliders.Tile2_wallNr26184ID = {}
level02.colliders.Tile2_wallNr26184ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr26184ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr26184ID.collider:SetZAxis(0.988936,0,0.14834)
level02.colliders.Tile2_wallNr26184ID.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.Tile2_wallNr26184ID.collider:SetPos(235,48.0059,36.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr26184ID.collider, 3)
level02.colliders.Tile2_wallNr27185ID = {}
level02.colliders.Tile2_wallNr27185ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr27185ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr27185ID.collider:SetZAxis(0.900159,0,0.435561)
level02.colliders.Tile2_wallNr27185ID.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.Tile2_wallNr27185ID.collider:SetPos(260.5,45.2208,45.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr27185ID.collider, 3)
level02.colliders.Tile2_wallNr28186ID = {}
level02.colliders.Tile2_wallNr28186ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr28186ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr28186ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr28186ID.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.Tile2_wallNr28186ID.collider:SetPos(283,40.9874,60)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr28186ID.collider, 3)
level02.colliders.Tile2_wallNr29187ID = {}
level02.colliders.Tile2_wallNr29187ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr29187ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr29187ID.collider:SetZAxis(0.620703,0,0.784046)
level02.colliders.Tile2_wallNr29187ID.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.Tile2_wallNr29187ID.collider:SetPos(299.5,41.3216,79)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr29187ID.collider, 3)
level02.colliders.Tile2_wallNr30188ID = {}
level02.colliders.Tile2_wallNr30188ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr30188ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr30188ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr30188ID.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.Tile2_wallNr30188ID.collider:SetPos(312,42.6585,94)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr30188ID.collider, 3)
level02.colliders.Tile2_wallNr31189ID = {}
level02.colliders.Tile2_wallNr31189ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr31189ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr31189ID.collider:SetZAxis(0.624695,0,0.780869)
level02.colliders.Tile2_wallNr31189ID.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.Tile2_wallNr31189ID.collider:SetPos(318,42.1015,102)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr31189ID.collider, 3)
level02.colliders.Tile2_wallNr32190ID = {}
level02.colliders.Tile2_wallNr32190ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr32190ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr32190ID.collider:SetZAxis(0.732794,0,0.680451)
level02.colliders.Tile2_wallNr32190ID.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.Tile2_wallNr32190ID.collider:SetPos(329,37.4225,113.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr32190ID.collider, 3)
level02.colliders.Tile2_wallNr33191ID = {}
level02.colliders.Tile2_wallNr33191ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr33191ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr33191ID.collider:SetZAxis(0.573462,0,0.819232)
level02.colliders.Tile2_wallNr33191ID.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.Tile2_wallNr33191ID.collider:SetPos(343,37.0883,130)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr33191ID.collider, 3)
level02.colliders.Tile2_wallNr34192ID = {}
level02.colliders.Tile2_wallNr34192ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr34192ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr34192ID.collider:SetZAxis(0.847998,0,0.529999)
level02.colliders.Tile2_wallNr34192ID.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.Tile2_wallNr34192ID.collider:SetPos(354,38.8707,142.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr34192ID.collider, 3)
level02.colliders.Tile2_wallNr35193ID = {}
level02.colliders.Tile2_wallNr35193ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr35193ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr35193ID.collider:SetZAxis(0.980581,0,0.196116)
level02.colliders.Tile2_wallNr35193ID.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.Tile2_wallNr35193ID.collider:SetPos(363,38.6479,146)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr35193ID.collider, 3)
level02.colliders.Tile2_wallNr36194ID = {}
level02.colliders.Tile2_wallNr36194ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr36194ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr36194ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr36194ID.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.Tile2_wallNr36194ID.collider:SetPos(372,38.3137,147)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr36194ID.collider, 3)
level02.colliders.Tile2_wallNr37195ID = {}
level02.colliders.Tile2_wallNr37195ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr37195ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr37195ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr37195ID.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.Tile2_wallNr37195ID.collider:SetPos(380,37.1997,147)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr37195ID.collider, 3)
level02.colliders.Tile2_wallNr38196ID = {}
level02.colliders.Tile2_wallNr38196ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr38196ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr38196ID.collider:SetZAxis(0.992278,0,-0.124035)
level02.colliders.Tile2_wallNr38196ID.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.Tile2_wallNr38196ID.collider:SetPos(132,33.8575,223.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr38196ID.collider, 3)
level02.colliders.Tile2_wallNr39197ID = {}
level02.colliders.Tile2_wallNr39197ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr39197ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr39197ID.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.Tile2_wallNr39197ID.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.Tile2_wallNr39197ID.collider:SetPos(138.5,35.5286,222)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr39197ID.collider, 3)
level02.colliders.Tile2_wallNr40198ID = {}
level02.colliders.Tile2_wallNr40198ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr40198ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr40198ID.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.Tile2_wallNr40198ID.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.Tile2_wallNr40198ID.collider:SetPos(143,35.1944,220.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr40198ID.collider, 3)
level02.colliders.Tile2_wallNr41199ID = {}
level02.colliders.Tile2_wallNr41199ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr41199ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr41199ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr41199ID.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.Tile2_wallNr41199ID.collider:SetPos(146.5,35.1944,221.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr41199ID.collider, 3)
level02.colliders.Tile2_wallNr42200ID = {}
level02.colliders.Tile2_wallNr42200ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr42200ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr42200ID.collider:SetZAxis(0.0995037,0,0.995037)
level02.colliders.Tile2_wallNr42200ID.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.Tile2_wallNr42200ID.collider:SetPos(148.5,36.0856,228)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr42200ID.collider, 3)
level02.colliders.Tile2_wallNr43201ID = {}
level02.colliders.Tile2_wallNr43201ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr43201ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr43201ID.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.Tile2_wallNr43201ID.collider:SetHalfLengths(0.3,5.1114,3.53553)
level02.colliders.Tile2_wallNr43201ID.collider:SetPos(149.5,37.0883,236.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr43201ID.collider, 3)
level02.colliders.Tile2_wallNr44202ID = {}
level02.colliders.Tile2_wallNr44202ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr44202ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr44202ID.collider:SetZAxis(0,0,1)
level02.colliders.Tile2_wallNr44202ID.collider:SetHalfLengths(0.3,5,1.5)
level02.colliders.Tile2_wallNr44202ID.collider:SetPos(150,37.1997,241.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr44202ID.collider, 3)
level02.colliders.Tile2_wallNr45203ID = {}
level02.colliders.Tile2_wallNr45203ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr45203ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr45203ID.collider:SetZAxis(0.924678,0,0.38075)
level02.colliders.Tile2_wallNr45203ID.collider:SetHalfLengths(0.3,10.9044,9.19239)
level02.colliders.Tile2_wallNr45203ID.collider:SetPos(158.5,37.1997,246.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr45203ID.collider, 3)
level02.colliders.Tile2_wallNr46204ID = {}
level02.colliders.Tile2_wallNr46204ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr46204ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr46204ID.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.Tile2_wallNr46204ID.collider:SetHalfLengths(0.3,9.01056,6.08276)
level02.colliders.Tile2_wallNr46204ID.collider:SetPos(173,43.1041,251)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr46204ID.collider, 3)
level02.colliders.Tile2_wallNr47205ID = {}
level02.colliders.Tile2_wallNr47205ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr47205ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr47205ID.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr47205ID.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.Tile2_wallNr47205ID.collider:SetPos(182.5,47.1147,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr47205ID.collider, 3)
level02.colliders.Tile2_wallNr48206ID = {}
level02.colliders.Tile2_wallNr48206ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr48206ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr48206ID.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.Tile2_wallNr48206ID.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.Tile2_wallNr48206ID.collider:SetPos(189,50.5682,246.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr48206ID.collider, 3)
level02.colliders.Tile2_wallNr49207ID = {}
level02.colliders.Tile2_wallNr49207ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr49207ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr49207ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr49207ID.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.Tile2_wallNr49207ID.collider:SetPos(194.5,51.4594,244)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr49207ID.collider, 3)
level02.colliders.Tile2_wallNr50208ID = {}
level02.colliders.Tile2_wallNr50208ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr50208ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr50208ID.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.Tile2_wallNr50208ID.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.Tile2_wallNr50208ID.collider:SetPos(200.5,53.2419,244.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr50208ID.collider, 3)
level02.colliders.Tile2_wallNr51209ID = {}
level02.colliders.Tile2_wallNr51209ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr51209ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr51209ID.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.Tile2_wallNr51209ID.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.Tile2_wallNr51209ID.collider:SetPos(207,55.2472,245.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr51209ID.collider, 3)
level02.colliders.Tile2_wallNr52210ID = {}
level02.colliders.Tile2_wallNr52210ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr52210ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr52210ID.collider:SetZAxis(0.928477,0,0.371391)
level02.colliders.Tile2_wallNr52210ID.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.Tile2_wallNr52210ID.collider:SetPos(212.5,56.6954,247)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr52210ID.collider, 3)
level02.colliders.Tile2_wallNr53211ID = {}
level02.colliders.Tile2_wallNr53211ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr53211ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr53211ID.collider:SetZAxis(0.857493,0,0.514496)
level02.colliders.Tile2_wallNr53211ID.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.Tile2_wallNr53211ID.collider:SetPos(217.5,58.9235,249.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr53211ID.collider, 3)
level02.colliders.Tile2_wallNr54212ID = {}
level02.colliders.Tile2_wallNr54212ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr54212ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr54212ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr54212ID.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.Tile2_wallNr54212ID.collider:SetPos(221.5,59.7034,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr54212ID.collider, 3)
level02.colliders.Tile2_wallNr55213ID = {}
level02.colliders.Tile2_wallNr55213ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr55213ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr55213ID.collider:SetZAxis(0.993884,0,-0.110432)
level02.colliders.Tile2_wallNr55213ID.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.Tile2_wallNr55213ID.collider:SetPos(227.5,60.2604,253.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr55213ID.collider, 3)
level02.colliders.Tile2_wallNr56214ID = {}
level02.colliders.Tile2_wallNr56214ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr56214ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr56214ID.collider:SetZAxis(0.976187,0,-0.21693)
level02.colliders.Tile2_wallNr56214ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.Tile2_wallNr56214ID.collider:SetPos(236.5,60.149,252)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr56214ID.collider, 3)
level02.colliders.Tile2_wallNr57215ID = {}
level02.colliders.Tile2_wallNr57215ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr57215ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr57215ID.collider:SetZAxis(0.98387,0,-0.178885)
level02.colliders.Tile2_wallNr57215ID.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.Tile2_wallNr57215ID.collider:SetPos(246.5,60.3718,250)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr57215ID.collider, 3)
level02.colliders.Tile2_wallNr58216ID = {}
level02.colliders.Tile2_wallNr58216ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr58216ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr58216ID.collider:SetZAxis(0.997785,0,0.066519)
level02.colliders.Tile2_wallNr58216ID.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.Tile2_wallNr58216ID.collider:SetPos(259.5,59.9262,249.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr58216ID.collider, 3)
level02.colliders.Tile2_wallNr59217ID = {}
level02.colliders.Tile2_wallNr59217ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr59217ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr59217ID.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.Tile2_wallNr59217ID.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.Tile2_wallNr59217ID.collider:SetPos(274,60.0376,251)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr59217ID.collider, 3)
level02.colliders.Tile2_wallNr60218ID = {}
level02.colliders.Tile2_wallNr60218ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr60218ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr60218ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr60218ID.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.Tile2_wallNr60218ID.collider:SetPos(287.5,59.7034,252)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr60218ID.collider, 3)
level02.colliders.Tile2_wallNr61219ID = {}
level02.colliders.Tile2_wallNr61219ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr61219ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr61219ID.collider:SetZAxis(0.970143,0,0.242536)
level02.colliders.Tile2_wallNr61219ID.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.Tile2_wallNr61219ID.collider:SetPos(296,58.5893,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr61219ID.collider, 3)
level02.colliders.Tile2_wallNr62220ID = {}
level02.colliders.Tile2_wallNr62220ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr62220ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr62220ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr62220ID.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.Tile2_wallNr62220ID.collider:SetPos(299,55.1358,254)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr62220ID.collider, 3)
level02.colliders.Tile2_wallNr63221ID = {}
level02.colliders.Tile2_wallNr63221ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr63221ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr63221ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr63221ID.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.Tile2_wallNr63221ID.collider:SetPos(307,55.2472,255)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr63221ID.collider, 3)
level02.colliders.Tile2_wallNr64222ID = {}
level02.colliders.Tile2_wallNr64222ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr64222ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr64222ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr64222ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr64222ID.collider:SetPos(314,51.2366,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr64222ID.collider, 3)
level02.colliders.Tile2_wallNr65223ID = {}
level02.colliders.Tile2_wallNr65223ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr65223ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr65223ID.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.Tile2_wallNr65223ID.collider:SetHalfLengths(0.3,5.44562,2.06155)
level02.colliders.Tile2_wallNr65223ID.collider:SetPos(313.5,50.5682,248)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr65223ID.collider, 3)
level02.colliders.Tile2_wallNr87224ID = {}
level02.colliders.Tile2_wallNr87224ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr87224ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr87224ID.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.Tile2_wallNr87224ID.collider:SetHalfLengths(0.3,5.66843,3.53553)
level02.colliders.Tile2_wallNr87224ID.collider:SetPos(234.5,57.1411,234.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr87224ID.collider, 3)
level02.colliders.Tile2_wallNr88225ID = {}
level02.colliders.Tile2_wallNr88225ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr88225ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr88225ID.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.Tile2_wallNr88225ID.collider:SetHalfLengths(0.3,5.22281,3.3541)
level02.colliders.Tile2_wallNr88225ID.collider:SetPos(241,57.8095,233.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr88225ID.collider, 3)
level02.colliders.Tile2_wallNr89226ID = {}
level02.colliders.Tile2_wallNr89226ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr89226ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr89226ID.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.Tile2_wallNr89226ID.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.Tile2_wallNr89226ID.collider:SetPos(247.5,57.5867,231.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr89226ID.collider, 3)
level02.colliders.Tile2_wallNr90227ID = {}
level02.colliders.Tile2_wallNr90227ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr90227ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr90227ID.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.Tile2_wallNr90227ID.collider:SetHalfLengths(0.3,6.00264,8.06226)
level02.colliders.Tile2_wallNr90227ID.collider:SetPos(259,57.8095,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr90227ID.collider, 3)
level02.colliders.Tile2_wallNr91228ID = {}
level02.colliders.Tile2_wallNr91228ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr91228ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr91228ID.collider:SetZAxis(0.998752,0,0.0499376)
level02.colliders.Tile2_wallNr91228ID.collider:SetHalfLengths(0.3,5.77983,10.0125)
level02.colliders.Tile2_wallNr91228ID.collider:SetPos(277,56.8068,233.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr91228ID.collider, 3)
level02.colliders.Tile2_wallNr92229ID = {}
level02.colliders.Tile2_wallNr92229ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr92229ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr92229ID.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.Tile2_wallNr92229ID.collider:SetHalfLengths(0.3,11.2386,8.24621)
level02.colliders.Tile2_wallNr92229ID.collider:SetPos(295,56.027,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr92229ID.collider, 3)
level02.colliders.Tile2_wallNr94230ID = {}
level02.colliders.Tile2_wallNr94230ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr94230ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr94230ID.collider:SetZAxis(-0.56921,0,-0.822192)
level02.colliders.Tile2_wallNr94230ID.collider:SetHalfLengths(0.3,9.12196,7.90569)
level02.colliders.Tile2_wallNr94230ID.collider:SetPos(340.5,55.47,248.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr94230ID.collider, 3)
level02.colliders.Tile2_wallNr95231ID = {}
level02.colliders.Tile2_wallNr95231ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr95231ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr95231ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr95231ID.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.Tile2_wallNr95231ID.collider:SetPos(346.5,55.47,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr95231ID.collider, 3)
level02.colliders.Tile2_wallNr96232ID = {}
level02.colliders.Tile2_wallNr96232ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr96232ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr96232ID.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.Tile2_wallNr96232ID.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.Tile2_wallNr96232ID.collider:SetPos(353,57.0297,240.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr96232ID.collider, 3)
level02.colliders.Tile2_wallNr97233ID = {}
level02.colliders.Tile2_wallNr97233ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr97233ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr97233ID.collider:SetZAxis(0.50702,0,-0.861934)
level02.colliders.Tile2_wallNr97233ID.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.Tile2_wallNr97233ID.collider:SetPos(363,53.5761,226.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr97233ID.collider, 3)
level02.colliders.Tile2_wallNr98234ID = {}
level02.colliders.Tile2_wallNr98234ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr98234ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr98234ID.collider:SetZAxis(0.393919,0,-0.919145)
level02.colliders.Tile2_wallNr98234ID.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.Tile2_wallNr98234ID.collider:SetPos(371,48.8971,211)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr98234ID.collider, 3)
level02.colliders.Tile2_wallNr99235ID = {}
level02.colliders.Tile2_wallNr99235ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr99235ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr99235ID.collider:SetZAxis(-0.0333148,0,-0.999445)
level02.colliders.Tile2_wallNr99235ID.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.Tile2_wallNr99235ID.collider:SetPos(373.5,46.4462,189)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr99235ID.collider, 3)
level02.colliders.Tile2_wallNr100236ID = {}
level02.colliders.Tile2_wallNr100236ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr100236ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr100236ID.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.Tile2_wallNr100236ID.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.Tile2_wallNr100236ID.collider:SetPos(374,39.4277,170.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr100236ID.collider, 3)
level02.colliders.Tile2_wallNr101237ID = {}
level02.colliders.Tile2_wallNr101237ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr101237ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr101237ID.collider:SetZAxis(0.485643,0,-0.874157)
level02.colliders.Tile2_wallNr101237ID.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.Tile2_wallNr101237ID.collider:SetPos(377.5,39.9848,162.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr101237ID.collider, 3)
level02.colliders.Tile2_wallNr102238ID = {}
level02.colliders.Tile2_wallNr102238ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr102238ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr102238ID.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.Tile2_wallNr102238ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr102238ID.collider:SetPos(382,37.0883,157.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr102238ID.collider, 3)
level02.colliders.Tile2_wallNr66239ID = {}
level02.colliders.Tile2_wallNr66239ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr66239ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr66239ID.collider:SetZAxis(-0.658505,0,-0.752577)
level02.colliders.Tile2_wallNr66239ID.collider:SetHalfLengths(0.3,9.79039,5.31507)
level02.colliders.Tile2_wallNr66239ID.collider:SetPos(220.5,56.3612,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr66239ID.collider, 3)
level02.colliders.Tile2_wallNr67240ID = {}
level02.colliders.Tile2_wallNr67240ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr67240ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr67240ID.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.Tile2_wallNr67240ID.collider:SetHalfLengths(0.3,5.89124,4.74342)
level02.colliders.Tile2_wallNr67240ID.collider:SetPos(212.5,51.5708,223.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr67240ID.collider, 3)
level02.colliders.Tile2_wallNr68241ID = {}
level02.colliders.Tile2_wallNr68241ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr68241ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr68241ID.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.Tile2_wallNr68241ID.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.Tile2_wallNr68241ID.collider:SetPos(205,50.6796,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr68241ID.collider, 3)
level02.colliders.Tile2_wallNr69242ID = {}
level02.colliders.Tile2_wallNr69242ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr69242ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr69242ID.collider:SetZAxis(-0.98995,0,0.141421)
level02.colliders.Tile2_wallNr69242ID.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.Tile2_wallNr69242ID.collider:SetPos(198.5,49.5656,227.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr69242ID.collider, 3)
level02.colliders.Tile2_wallNr70243ID = {}
level02.colliders.Tile2_wallNr70243ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr70243ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr70243ID.collider:SetZAxis(-1,0,0)
level02.colliders.Tile2_wallNr70243ID.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.Tile2_wallNr70243ID.collider:SetPos(191.5,48.3401,228)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr70243ID.collider, 3)
level02.colliders.Tile2_wallNr71244ID = {}
level02.colliders.Tile2_wallNr71244ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr71244ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr71244ID.collider:SetZAxis(-0.913812,0,-0.406139)
level02.colliders.Tile2_wallNr71244ID.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.Tile2_wallNr71244ID.collider:SetPos(183.5,46.8918,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr71244ID.collider, 3)
level02.colliders.Tile2_wallNr72245ID = {}
level02.colliders.Tile2_wallNr72245ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr72245ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr72245ID.collider:SetZAxis(-0.371391,0,-0.928477)
level02.colliders.Tile2_wallNr72245ID.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.Tile2_wallNr72245ID.collider:SetPos(178,42.7699,221.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr72245ID.collider, 3)
level02.colliders.Tile2_wallNr73246ID = {}
level02.colliders.Tile2_wallNr73246ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr73246ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr73246ID.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.Tile2_wallNr73246ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.Tile2_wallNr73246ID.collider:SetPos(176.5,41.9901,216.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr73246ID.collider, 3)
level02.colliders.Tile2_wallNr74247ID = {}
level02.colliders.Tile2_wallNr74247ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr74247ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr74247ID.collider:SetZAxis(0.447214,0,-0.894427)
level02.colliders.Tile2_wallNr74247ID.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.Tile2_wallNr74247ID.collider:SetPos(177,41.433,212)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr74247ID.collider, 3)
level02.colliders.Tile2_wallNr75248ID = {}
level02.colliders.Tile2_wallNr75248ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr75248ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr75248ID.collider:SetZAxis(0.857493,0,-0.514496)
level02.colliders.Tile2_wallNr75248ID.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.Tile2_wallNr75248ID.collider:SetPos(180.5,41.6558,208.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr75248ID.collider, 3)
level02.colliders.Tile2_wallNr76249ID = {}
level02.colliders.Tile2_wallNr76249ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr76249ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr76249ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr76249ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.Tile2_wallNr76249ID.collider:SetPos(185.5,41.8786,206.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr76249ID.collider, 3)
level02.colliders.Tile2_wallNr77250ID = {}
level02.colliders.Tile2_wallNr77250ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr77250ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr77250ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr77250ID.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.Tile2_wallNr77250ID.collider:SetPos(190.5,41.3216,205.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr77250ID.collider, 3)
level02.colliders.Tile2_wallNr78251ID = {}
level02.colliders.Tile2_wallNr78251ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr78251ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr78251ID.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.Tile2_wallNr78251ID.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.Tile2_wallNr78251ID.collider:SetPos(198,40.6532,203)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr78251ID.collider, 3)
level02.colliders.Tile2_wallNr79252ID = {}
level02.colliders.Tile2_wallNr79252ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr79252ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr79252ID.collider:SetZAxis(0.514496,0,-0.857493)
level02.colliders.Tile2_wallNr79252ID.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.Tile2_wallNr79252ID.collider:SetPos(204.5,39.6506,198.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr79252ID.collider, 3)
level02.colliders.Tile2_wallNr80253ID = {}
level02.colliders.Tile2_wallNr80253ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr80253ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr80253ID.collider:SetZAxis(0.287348,0,-0.957826)
level02.colliders.Tile2_wallNr80253ID.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.Tile2_wallNr80253ID.collider:SetPos(207.5,38.9821,191)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr80253ID.collider, 3)
level02.colliders.Tile2_wallNr81254ID = {}
level02.colliders.Tile2_wallNr81254ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr81254ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr81254ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr81254ID.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.Tile2_wallNr81254ID.collider:SetPos(211,37.7567,184.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr81254ID.collider, 3)
level02.colliders.Tile2_wallNr82255ID = {}
level02.colliders.Tile2_wallNr82255ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr82255ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr82255ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr82255ID.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.Tile2_wallNr82255ID.collider:SetPos(215,36.9769,181.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr82255ID.collider, 3)
level02.colliders.Tile2_wallNr83256ID = {}
level02.colliders.Tile2_wallNr83256ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr83256ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr83256ID.collider:SetZAxis(0.573462,0,-0.819232)
level02.colliders.Tile2_wallNr83256ID.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.Tile2_wallNr83256ID.collider:SetPos(220.5,36.0856,175)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr83256ID.collider, 3)
level02.colliders.Tile2_wallNr84257ID = {}
level02.colliders.Tile2_wallNr84257ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr84257ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr84257ID.collider:SetZAxis(0.813733,0,-0.581238)
level02.colliders.Tile2_wallNr84257ID.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.Tile2_wallNr84257ID.collider:SetPos(227.5,35.64,167.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr84257ID.collider, 3)
level02.colliders.Tile2_wallNr85258ID = {}
level02.colliders.Tile2_wallNr85258ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr85258ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr85258ID.collider:SetZAxis(0.763386,0,-0.645942)
level02.colliders.Tile2_wallNr85258ID.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.Tile2_wallNr85258ID.collider:SetPos(237.5,35.64,159.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr85258ID.collider, 3)
level02.colliders.Tile2_wallNr86259ID = {}
level02.colliders.Tile2_wallNr86259ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr86259ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr86259ID.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr86259ID.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.Tile2_wallNr86259ID.collider:SetPos(249.5,36.0856,148.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr86259ID.collider, 3)
level02.colliders.Tile2_wallNr103260ID = {}
level02.colliders.Tile2_wallNr103260ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr103260ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr103260ID.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr103260ID.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.Tile2_wallNr103260ID.collider:SetPos(258,36.8654,140)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr103260ID.collider, 3)
level02.colliders.Tile2_wallNr104261ID = {}
level02.colliders.Tile2_wallNr104261ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr104261ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr104261ID.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.Tile2_wallNr104261ID.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.Tile2_wallNr104261ID.collider:SetPos(264,37.3111,134.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr104261ID.collider, 3)
level02.colliders.Tile2_wallNr105262ID = {}
level02.colliders.Tile2_wallNr105262ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr105262ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr105262ID.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.Tile2_wallNr105262ID.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.Tile2_wallNr105262ID.collider:SetPos(269,37.4225,131)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr105262ID.collider, 3)
level02.colliders.Tile2_wallNr106263ID = {}
level02.colliders.Tile2_wallNr106263ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr106263ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr106263ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr106263ID.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.Tile2_wallNr106263ID.collider:SetPos(273.5,37.3111,129.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr106263ID.collider, 3)
level02.colliders.Tile2_wallNr107264ID = {}
level02.colliders.Tile2_wallNr107264ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr107264ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr107264ID.collider:SetZAxis(0.995893,0,-0.0905358)
level02.colliders.Tile2_wallNr107264ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.Tile2_wallNr107264ID.collider:SetPos(281.5,37.5339,128.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr107264ID.collider, 3)
level02.colliders.Tile2_wallNr108265ID = {}
level02.colliders.Tile2_wallNr108265ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr108265ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr108265ID.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.Tile2_wallNr108265ID.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.Tile2_wallNr108265ID.collider:SetPos(293,37.1997,129)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr108265ID.collider, 3)
level02.colliders.Tile2_wallNr109266ID = {}
level02.colliders.Tile2_wallNr109266ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr109266ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr109266ID.collider:SetZAxis(0.961524,0,0.274721)
level02.colliders.Tile2_wallNr109266ID.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.Tile2_wallNr109266ID.collider:SetPos(306,36.3084,132)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr109266ID.collider, 3)
level02.colliders.Tile2_wallNr110267ID = {}
level02.colliders.Tile2_wallNr110267ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr110267ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr110267ID.collider:SetZAxis(0.682318,0,-0.731055)
level02.colliders.Tile2_wallNr110267ID.collider:SetHalfLengths(0.3,12.0185,10.2591)
level02.colliders.Tile2_wallNr110267ID.collider:SetPos(339,48.1173,215.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr110267ID.collider, 3)
level02.colliders.Tile2_wallNr111268ID = {}
level02.colliders.Tile2_wallNr111268ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr111268ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr111268ID.collider:SetZAxis(0.406139,0,-0.913812)
level02.colliders.Tile2_wallNr111268ID.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.Tile2_wallNr111268ID.collider:SetPos(348,41.0988,203.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr111268ID.collider, 3)
level02.colliders.Tile2_wallNr112269ID = {}
level02.colliders.Tile2_wallNr112269ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr112269ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr112269ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr112269ID.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.Tile2_wallNr112269ID.collider:SetPos(350,39.4277,194)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr112269ID.collider, 3)
level02.colliders.Tile2_wallNr113270ID = {}
level02.colliders.Tile2_wallNr113270ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr113270ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr113270ID.collider:SetZAxis(0.263117,0,-0.964764)
level02.colliders.Tile2_wallNr113270ID.collider:SetHalfLengths(0.3,6.22545,5.70088)
level02.colliders.Tile2_wallNr113270ID.collider:SetPos(351.5,38.3137,183.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr113270ID.collider, 3)
level02.colliders.Tile2_wallNr114271ID = {}
level02.colliders.Tile2_wallNr114271ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr114271ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr114271ID.collider:SetZAxis(-0.514496,0,-0.857493)
level02.colliders.Tile2_wallNr114271ID.collider:SetHalfLengths(0.3,5.89124,5.83095)
level02.colliders.Tile2_wallNr114271ID.collider:SetPos(350,37.0883,173)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr114271ID.collider, 3)
level02.colliders.Tile2_wallNr115272ID = {}
level02.colliders.Tile2_wallNr115272ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr115272ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr115272ID.collider:SetZAxis(-0.734803,0,-0.67828)
level02.colliders.Tile2_wallNr115272ID.collider:SetHalfLengths(0.3,5.55702,8.8459)
level02.colliders.Tile2_wallNr115272ID.collider:SetPos(340.5,36.197,162)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr115272ID.collider, 3)
level02.colliders.Tile2_wallNr116273ID = {}
level02.colliders.Tile2_wallNr116273ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr116273ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr116273ID.collider:SetZAxis(-0.524097,0,-0.851658)
level02.colliders.Tile2_wallNr116273ID.collider:SetHalfLengths(0.3,5.89124,7.63217)
level02.colliders.Tile2_wallNr116273ID.collider:SetPos(330,35.64,149.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr116273ID.collider, 3)
level02.colliders.Tile2_wallNr117274ID = {}
level02.colliders.Tile2_wallNr117274ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr117274ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr117274ID.collider:SetZAxis(-0.822192,0,-0.56921)
level02.colliders.Tile2_wallNr117274ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.Tile2_wallNr117274ID.collider:SetPos(319.5,34.7488,138.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr117274ID.collider, 3)
level02.colliders.Tile2_wallNr118275ID = {}
level02.colliders.Tile2_wallNr118275ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr118275ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr118275ID.collider:SetZAxis(-0.654931,0,-0.755689)
level02.colliders.Tile2_wallNr118275ID.collider:SetHalfLengths(0.3,6.33685,9.92472)
level02.colliders.Tile2_wallNr118275ID.collider:SetPos(291.5,38.2023,98.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr118275ID.collider, 3)
level02.colliders.Tile2_wallNr119276ID = {}
level02.colliders.Tile2_wallNr119276ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr119276ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr119276ID.collider:SetZAxis(-0.629198,0,-0.777245)
level02.colliders.Tile2_wallNr119276ID.collider:SetHalfLengths(0.3,5.77983,13.5093)
level02.colliders.Tile2_wallNr119276ID.collider:SetPos(276.5,39.5392,80.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr119276ID.collider, 3)
level02.colliders.Tile2_wallNr120277ID = {}
level02.colliders.Tile2_wallNr120277ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr120277ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr120277ID.collider:SetZAxis(-0.792624,0,-0.609711)
level02.colliders.Tile2_wallNr120277ID.collider:SetHalfLengths(0.3,7.22809,8.20061)
level02.colliders.Tile2_wallNr120277ID.collider:SetPos(261.5,38.7593,65)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr120277ID.collider, 3)
level02.colliders.Tile2_wallNr121278ID = {}
level02.colliders.Tile2_wallNr121278ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr121278ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr121278ID.collider:SetZAxis(-0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr121278ID.collider:SetHalfLengths(0.3,9.01056,7.61577)
level02.colliders.Tile2_wallNr121278ID.collider:SetPos(248,40.9874,57)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr121278ID.collider, 3)
level02.colliders.Tile2_wallNr122279ID = {}
level02.colliders.Tile2_wallNr122279ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr122279ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr122279ID.collider:SetZAxis(-0.948683,0,-0.316228)
level02.colliders.Tile2_wallNr122279ID.collider:SetHalfLengths(0.3,8.45354,7.90569)
level02.colliders.Tile2_wallNr122279ID.collider:SetPos(233.5,44.998,51.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr122279ID.collider, 3)
level02.colliders.Tile2_wallNr123280ID = {}
level02.colliders.Tile2_wallNr123280ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr123280ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr123280ID.collider:SetZAxis(-0.993884,0,-0.110432)
level02.colliders.Tile2_wallNr123280ID.collider:SetHalfLengths(0.3,7.00528,4.52769)
level02.colliders.Tile2_wallNr123280ID.collider:SetPos(221.5,48.4515,48.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr123280ID.collider, 3)
level02.colliders.Tile2_wallNr124281ID = {}
level02.colliders.Tile2_wallNr124281ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr124281ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr124281ID.collider:SetZAxis(-0.992278,0,0.124035)
level02.colliders.Tile2_wallNr124281ID.collider:SetHalfLengths(0.3,6.78247,4.03113)
level02.colliders.Tile2_wallNr124281ID.collider:SetPos(213,50.4568,48.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr124281ID.collider, 3)
level02.colliders.Tile2_wallNr125282ID = {}
level02.colliders.Tile2_wallNr125282ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr125282ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr125282ID.collider:SetZAxis(-0.83205,0,0.5547)
level02.colliders.Tile2_wallNr125282ID.collider:SetHalfLengths(0.3,6.44826,5.40833)
level02.colliders.Tile2_wallNr125282ID.collider:SetPos(204.5,52.2393,52)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr125282ID.collider, 3)
level02.colliders.Tile2_wallNr126283ID = {}
level02.colliders.Tile2_wallNr126283ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr126283ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr126283ID.collider:SetZAxis(-0.5547,0,0.83205)
level02.colliders.Tile2_wallNr126283ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.Tile2_wallNr126283ID.collider:SetPos(197,53.6875,59.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr126283ID.collider, 3)
level02.colliders.Tile2_wallNr127284ID = {}
level02.colliders.Tile2_wallNr127284ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr127284ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr127284ID.collider:SetZAxis(-0.0766965,0,0.997055)
level02.colliders.Tile2_wallNr127284ID.collider:SetHalfLengths(0.3,6.00264,6.5192)
level02.colliders.Tile2_wallNr127284ID.collider:SetPos(193.5,54.5788,70.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr127284ID.collider, 3)
level02.colliders.Tile2_wallNr128285ID = {}
level02.colliders.Tile2_wallNr128285ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr128285ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr128285ID.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.Tile2_wallNr128285ID.collider:SetHalfLengths(0.3,6.00264,7.07107)
level02.colliders.Tile2_wallNr128285ID.collider:SetPos(194,55.5814,84)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr128285ID.collider, 3)
level02.colliders.Tile2_wallNr129286ID = {}
level02.colliders.Tile2_wallNr129286ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr129286ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr129286ID.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.Tile2_wallNr129286ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.Tile2_wallNr129286ID.collider:SetPos(197.5,56.584,98.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr129286ID.collider, 3)
level02.colliders.Tile2_wallNr130287ID = {}
level02.colliders.Tile2_wallNr130287ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr130287ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr130287ID.collider:SetZAxis(0.231621,0,0.972806)
level02.colliders.Tile2_wallNr130287ID.collider:SetHalfLengths(0.3,5.89124,10.7935)
level02.colliders.Tile2_wallNr130287ID.collider:SetPos(202.5,56.027,116.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr130287ID.collider, 3)
level02.colliders.Tile2_wallNr131288ID = {}
level02.colliders.Tile2_wallNr131288ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr131288ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr131288ID.collider:SetZAxis(0.0905358,0,0.995893)
level02.colliders.Tile2_wallNr131288ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.Tile2_wallNr131288ID.collider:SetPos(205.5,55.1358,132.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr131288ID.collider, 3)
level02.colliders.Tile2_wallNr132289ID = {}
level02.colliders.Tile2_wallNr132289ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr132289ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr132289ID.collider:SetZAxis(0.0905358,0,0.995893)
level02.colliders.Tile2_wallNr132289ID.collider:SetHalfLengths(0.3,5.22281,5.52268)
level02.colliders.Tile2_wallNr132289ID.collider:SetPos(206.5,55.47,143.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr132289ID.collider, 3)
level02.colliders.Tile2_wallNr133290ID = {}
level02.colliders.Tile2_wallNr133290ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr133290ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr133290ID.collider:SetZAxis(-0.371391,0,0.928477)
level02.colliders.Tile2_wallNr133290ID.collider:SetHalfLengths(0.3,5.22281,5.38516)
level02.colliders.Tile2_wallNr133290ID.collider:SetPos(205,55.2472,154)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr133290ID.collider, 3)
level02.colliders.Tile2_wallNr134291ID = {}
level02.colliders.Tile2_wallNr134291ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr134291ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr134291ID.collider:SetZAxis(-0.707107,0,0.707107)
level02.colliders.Tile2_wallNr134291ID.collider:SetHalfLengths(0.3,5.77983,6.36396)
level02.colliders.Tile2_wallNr134291ID.collider:SetPos(198.5,55.0244,163.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr134291ID.collider, 3)
level02.colliders.Tile2_wallNr135292ID = {}
level02.colliders.Tile2_wallNr135292ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr135292ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr135292ID.collider:SetZAxis(-0.976187,0,0.21693)
level02.colliders.Tile2_wallNr135292ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.Tile2_wallNr135292ID.collider:SetPos(189.5,55.8042,169)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr135292ID.collider, 3)
level02.colliders.Tile2_wallNr136293ID = {}
level02.colliders.Tile2_wallNr136293ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr136293ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr136293ID.collider:SetZAxis(-0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr136293ID.collider:SetHalfLengths(0.3,5.44562,5.09902)
level02.colliders.Tile2_wallNr136293ID.collider:SetPos(180,56.027,169)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr136293ID.collider, 3)
level02.colliders.Tile2_wallNr137294ID = {}
level02.colliders.Tile2_wallNr137294ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr137294ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr137294ID.collider:SetZAxis(-0.874157,0,-0.485643)
level02.colliders.Tile2_wallNr137294ID.collider:SetHalfLengths(0.3,6.44826,5.14782)
level02.colliders.Tile2_wallNr137294ID.collider:SetPos(170.5,55.5814,165.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr137294ID.collider, 3)
level02.colliders.Tile2_wallNr138295ID = {}
level02.colliders.Tile2_wallNr138295ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr138295ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr138295ID.collider:SetZAxis(-0.910366,0,-0.413803)
level02.colliders.Tile2_wallNr138295ID.collider:SetHalfLengths(0.3,8.56494,6.04152)
level02.colliders.Tile2_wallNr138295ID.collider:SetPos(160.5,54.1331,160.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr138295ID.collider, 3)
level02.colliders.Tile2_wallNr139296ID = {}
level02.colliders.Tile2_wallNr139296ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr139296ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr139296ID.collider:SetZAxis(-0.393919,0,0.919145)
level02.colliders.Tile2_wallNr139296ID.collider:SetHalfLengths(0.3,6.67107,3.80789)
level02.colliders.Tile2_wallNr139296ID.collider:SetPos(153.5,50.5682,161.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr139296ID.collider, 3)
level02.colliders.Tile2_wallNr140297ID = {}
level02.colliders.Tile2_wallNr140297ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr140297ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr140297ID.collider:SetZAxis(0.658505,0,0.752577)
level02.colliders.Tile2_wallNr140297ID.collider:SetHalfLengths(0.3,5.44561,5.31507)
level02.colliders.Tile2_wallNr140297ID.collider:SetPos(155.5,48.8971,169)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr140297ID.collider, 3)
level02.colliders.Tile2_wallNr141298ID = {}
level02.colliders.Tile2_wallNr141298ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr141298ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr141298ID.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.Tile2_wallNr141298ID.collider:SetHalfLengths(0.3,9.7904,6.32456)
level02.colliders.Tile2_wallNr141298ID.collider:SetPos(161,48.4515,179)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr141298ID.collider, 3)
level02.colliders.Tile2_wallNr142299ID = {}
level02.colliders.Tile2_wallNr142299ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr142299ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr142299ID.collider:SetZAxis(0,0,1)
level02.colliders.Tile2_wallNr142299ID.collider:SetHalfLengths(0.3,8.34213,9.5)
level02.colliders.Tile2_wallNr142299ID.collider:SetPos(163,43.6611,194.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr142299ID.collider, 3)
level02.colliders.Tile2_wallNr143300ID = {}
level02.colliders.Tile2_wallNr143300ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr143300ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr143300ID.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.Tile2_wallNr143300ID.collider:SetHalfLengths(0.3,7.5623,8.06226)
level02.colliders.Tile2_wallNr143300ID.collider:SetPos(170,40.319,200)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr143300ID.collider, 3)
level02.colliders.Tile2_wallNr144301ID = {}
level02.colliders.Tile2_wallNr144301ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr144301ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr144301ID.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr144301ID.collider:SetHalfLengths(0.3,5.22281,7.61577)
level02.colliders.Tile2_wallNr144301ID.collider:SetPos(184,42.8813,193)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr144301ID.collider, 3)
level02.colliders.Tile2_wallNr145302ID = {}
level02.colliders.Tile2_wallNr145302ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr145302ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr145302ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr145302ID.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.Tile2_wallNr145302ID.collider:SetPos(192.5,42.6585,185.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr145302ID.collider, 3)
level02.colliders.Tile2_wallNr146303ID = {}
level02.colliders.Tile2_wallNr146303ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr146303ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr146303ID.collider:SetZAxis(0.841179,0,-0.540758)
level02.colliders.Tile2_wallNr146303ID.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.Tile2_wallNr146303ID.collider:SetPos(201,40.319,176.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr146303ID.collider, 3)
level02.colliders.Tile2_wallNr147304ID = {}
level02.colliders.Tile2_wallNr147304ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr147304ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr147304ID.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.Tile2_wallNr147304ID.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.Tile2_wallNr147304ID.collider:SetPos(213,39.3163,166.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr147304ID.collider, 3)
level02.colliders.Tile2_wallNr148305ID = {}
level02.colliders.Tile2_wallNr148305ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr148305ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr148305ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr148305ID.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.Tile2_wallNr148305ID.collider:SetPos(219,36.4198,158)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr148305ID.collider, 3)
level02.colliders.Tile2_wallNr149306ID = {}
level02.colliders.Tile2_wallNr149306ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr149306ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr149306ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr149306ID.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.Tile2_wallNr149306ID.collider:SetPos(222,36.5312,153.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr149306ID.collider, 3)
level02.colliders.Tile2_wallNr150307ID = {}
level02.colliders.Tile2_wallNr150307ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr150307ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr150307ID.collider:SetZAxis(0.948683,0,-0.316228)
level02.colliders.Tile2_wallNr150307ID.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.Tile2_wallNr150307ID.collider:SetPos(228.5,36.6426,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr150307ID.collider, 3)
level02.colliders.Tile2_wallNr151308ID = {}
level02.colliders.Tile2_wallNr151308ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr151308ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr151308ID.collider:SetZAxis(0.658505,0,-0.752577)
level02.colliders.Tile2_wallNr151308ID.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.Tile2_wallNr151308ID.collider:SetPos(236.5,36.5312,145)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr151308ID.collider, 3)
level02.colliders.Tile2_wallNr152309ID = {}
level02.colliders.Tile2_wallNr152309ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr152309ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr152309ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr152309ID.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.Tile2_wallNr152309ID.collider:SetPos(240,36.754,139)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr152309ID.collider, 3)
level02.colliders.Tile2_wallNr153310ID = {}
level02.colliders.Tile2_wallNr153310ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr153310ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr153310ID.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr153310ID.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.Tile2_wallNr153310ID.collider:SetPos(238,37.3111,135)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr153310ID.collider, 3)
level02.colliders.Tile2_wallNr154311ID = {}
level02.colliders.Tile2_wallNr154311ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr154311ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr154311ID.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.Tile2_wallNr154311ID.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.Tile2_wallNr154311ID.collider:SetPos(221,36.6426,148)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr154311ID.collider, 3)
level02.colliders.Tile2_wallNr155312ID = {}
level02.colliders.Tile2_wallNr155312ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr155312ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr155312ID.collider:SetZAxis(-0.209529,0,-0.977802)
level02.colliders.Tile2_wallNr155312ID.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.Tile2_wallNr155312ID.collider:SetPos(218.5,38.9821,136)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr155312ID.collider, 3)
level02.colliders.Tile2_wallNr156313ID = {}
level02.colliders.Tile2_wallNr156313ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr156313ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr156313ID.collider:SetZAxis(0.83205,0,-0.5547)
level02.colliders.Tile2_wallNr156313ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.Tile2_wallNr156313ID.collider:SetPos(221.5,41.3216,126)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr156313ID.collider, 3)
level02.colliders.Tile2_wallNr157314ID = {}
level02.colliders.Tile2_wallNr157314ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr157314ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr157314ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr157314ID.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.Tile2_wallNr157314ID.collider:SetPos(231,42.2129,122)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr157314ID.collider, 3)
level02.colliders.Tile2_wallNr158315ID = {}
level02.colliders.Tile2_wallNr158315ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr158315ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr158315ID.collider:SetZAxis(0.863779,0,0.503871)
level02.colliders.Tile2_wallNr158315ID.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.Tile2_wallNr158315ID.collider:SetPos(242,40.0962,124.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr158315ID.collider, 3)
level02.colliders.Tile2_wallNr159316ID = {}
level02.colliders.Tile2_wallNr159316ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr159316ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr159316ID.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr159316ID.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.Tile2_wallNr159316ID.collider:SetPos(253,37.9795,123)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr159316ID.collider, 3)
level02.colliders.Tile2_wallNr160317ID = {}
level02.colliders.Tile2_wallNr160317ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr160317ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr160317ID.collider:SetZAxis(0.773957,0,-0.633238)
level02.colliders.Tile2_wallNr160317ID.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.Tile2_wallNr160317ID.collider:SetPos(263.5,37.4225,113.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr160317ID.collider, 3)
level02.colliders.Tile2_wallNr161318ID = {}
level02.colliders.Tile2_wallNr161318ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr161318ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr161318ID.collider:SetZAxis(0.994692,0,-0.102899)
level02.colliders.Tile2_wallNr161318ID.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.Tile2_wallNr161318ID.collider:SetPos(283.5,36.9769,107.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr161318ID.collider, 3)
level02.colliders.Tile2_wallNr164319ID = {}
level02.colliders.Tile2_wallNr164319ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr164319ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr164319ID.collider:SetZAxis(0.868243,0,0.496139)
level02.colliders.Tile2_wallNr164319ID.collider:SetHalfLengths(0.3,5.77983,4.03113)
level02.colliders.Tile2_wallNr164319ID.collider:SetPos(227.5,56.3612,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr164319ID.collider, 3)
level02.props.PineTree_Collider384ID = {}
level02.props.PineTree_Collider384ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider384ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider384ID.model)
Transform.SetPosition(level02.props.PineTree_Collider384ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider384ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_Collider384ID.transformID, {x=0.0166519, y=-0.520999, z=0})
level02.props.PineTree_Collider384ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider384ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider384ID.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
level02.props.PineTree_Collider384ID.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.props.PineTree_Collider384ID.collider:SetPos(176.796,45.2188,214.625)
CollisionHandler.AddOBB(level02.props.PineTree_Collider384ID.collider, 3)
level02.props.PineTree_Collider1385ID = {}
level02.props.PineTree_Collider1385ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1385ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider1385ID.model)
Transform.SetPosition(level02.props.PineTree_Collider1385ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider1385ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_Collider1385ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider1385ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider1385ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider1385ID.collider:SetZAxis(0,0,1)
level02.props.PineTree_Collider1385ID.collider:SetHalfLengths(2.5,4,2.5)
level02.props.PineTree_Collider1385ID.collider:SetPos(183.5,51.8438,240)
CollisionHandler.AddOBB(level02.props.PineTree_Collider1385ID.collider, 3)
level02.props.PineTree_Collider2386ID = {}
level02.props.PineTree_Collider2386ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2386ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2386ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2386ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2386ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2386ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider2386ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider2386ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider2386ID.collider:SetZAxis(0,0,1)
level02.props.PineTree_Collider2386ID.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.props.PineTree_Collider2386ID.collider:SetPos(163.885,45.0938,193.24)
CollisionHandler.AddOBB(level02.props.PineTree_Collider2386ID.collider, 3)
level02.props.PineTree_NoCollider1387ID = {}
level02.props.PineTree_NoCollider1387ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1387ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider1387ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider1387ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider1387ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(level02.props.PineTree_NoCollider1387ID.transformID, {x=0, y=2.74772, z=0})
level02.props.PineTree_NoCollider11388ID = {}
level02.props.PineTree_NoCollider11388ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11388ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider11388ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider11388ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider11388ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(level02.props.PineTree_NoCollider11388ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider12389ID = {}
level02.props.PineTree_NoCollider12389ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12389ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider12389ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider12389ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider12389ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(level02.props.PineTree_NoCollider12389ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider13390ID = {}
level02.props.PineTree_NoCollider13390ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13390ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider13390ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider13390ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider13390ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider13390ID.transformID, {x=0, y=0.550171, z=0})
level02.props.PineTree_NoCollider14391ID = {}
level02.props.PineTree_NoCollider14391ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14391ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider14391ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider14391ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider14391ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider14391ID.transformID, {x=0, y=2.98311, z=0})
level02.props.PineTree_NoCollider15392ID = {}
level02.props.PineTree_NoCollider15392ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15392ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider15392ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider15392ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider15392ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(level02.props.PineTree_NoCollider15392ID.transformID, {x=0, y=-7.32886, z=0})
level02.props.PineTree_NoCollider16393ID = {}
level02.props.PineTree_NoCollider16393ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16393ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider16393ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider16393ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider16393ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(level02.props.PineTree_NoCollider16393ID.transformID, {x=0, y=-2.98524, z=0})
level02.props.PineTree_NoCollider17394ID = {}
level02.props.PineTree_NoCollider17394ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17394ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider17394ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider17394ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider17394ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(level02.props.PineTree_NoCollider17394ID.transformID, {x=0, y=-2.76387, z=0})
level02.props.PineTree_NoCollider18395ID = {}
level02.props.PineTree_NoCollider18395ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18395ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider18395ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider18395ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider18395ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(level02.props.PineTree_NoCollider18395ID.transformID, {x=0, y=1.82048, z=0})
level02.props.PineTree_NoCollider19396ID = {}
level02.props.PineTree_NoCollider19396ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19396ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider19396ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider19396ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider19396ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(level02.props.PineTree_NoCollider19396ID.transformID, {x=0, y=-2.19759, z=0})
level02.props.OakTree_Collider4397ID = {}
level02.props.OakTree_Collider4397ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4397ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider4397ID.model)
Transform.SetPosition(level02.props.OakTree_Collider4397ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider4397ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(level02.props.OakTree_Collider4397ID.transformID, {x=0, y=3.64905, z=0})
level02.props.OakTree_Collider4397ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider4397ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider4397ID.collider:SetZAxis(-0.485958,0,-0.873982)
level02.props.OakTree_Collider4397ID.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.props.OakTree_Collider4397ID.collider:SetPos(235,42.375,133.125)
CollisionHandler.AddOBB(level02.props.OakTree_Collider4397ID.collider, 3)
level02.props.OakTree_Collider41398ID = {}
level02.props.OakTree_Collider41398ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41398ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41398ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41398ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41398ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41398ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider41398ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider41398ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider41398ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider41398ID.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.props.OakTree_Collider41398ID.collider:SetPos(328.75,41.0313,113.313)
CollisionHandler.AddOBB(level02.props.OakTree_Collider41398ID.collider, 3)
level02.props.OakTree_Collider42399ID = {}
level02.props.OakTree_Collider42399ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42399ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42399ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42399ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42399ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42399ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider42399ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider42399ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider42399ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider42399ID.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.props.OakTree_Collider42399ID.collider:SetPos(339.5,40.3125,156.5)
CollisionHandler.AddOBB(level02.props.OakTree_Collider42399ID.collider, 3)
level02.props.OakTree_Collider43400ID = {}
level02.props.OakTree_Collider43400ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43400ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43400ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43400ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43400ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43400ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider43400ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider43400ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider43400ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider43400ID.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.props.OakTree_Collider43400ID.collider:SetPos(370.079,42.4331,185.415)
CollisionHandler.AddOBB(level02.props.OakTree_Collider43400ID.collider, 3)
level02.props.OakTree_Collider44401ID = {}
level02.props.OakTree_Collider44401ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44401ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44401ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44401ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44401ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44401ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider44401ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider44401ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider44401ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider44401ID.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.props.OakTree_Collider44401ID.collider:SetPos(365.671,47.676,214.229)
CollisionHandler.AddOBB(level02.props.OakTree_Collider44401ID.collider, 3)
level02.props.OakTree_Collider45402ID = {}
level02.props.OakTree_Collider45402ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45402ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45402ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45402ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45402ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45402ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider45402ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider45402ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider45402ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider45402ID.collider:SetHalfLengths(1.75,4,1.75)
level02.props.OakTree_Collider45402ID.collider:SetPos(354.858,50.9688,226.742)
CollisionHandler.AddOBB(level02.props.OakTree_Collider45402ID.collider, 3)
level02.props.OakTree_Collider46403ID = {}
level02.props.OakTree_Collider46403ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46403ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46403ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46403ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46403ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46403ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider46403ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider46403ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider46403ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider46403ID.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.props.OakTree_Collider46403ID.collider:SetPos(347.526,56,240.375)
CollisionHandler.AddOBB(level02.props.OakTree_Collider46403ID.collider, 3)
level02.props.OakTree_NoCollider1404ID = {}
level02.props.OakTree_NoCollider1404ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1404ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider1404ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider1404ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider1404ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(level02.props.OakTree_NoCollider1404ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider15405ID = {}
level02.props.OakTree_NoCollider15405ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15405ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider15405ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider15405ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider15405ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(level02.props.OakTree_NoCollider15405ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider111406ID = {}
level02.props.OakTree_NoCollider111406ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111406ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider111406ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider111406ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider111406ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(level02.props.OakTree_NoCollider111406ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider112407ID = {}
level02.props.OakTree_NoCollider112407ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112407ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider112407ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider112407ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider112407ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_NoCollider112407ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider113408ID = {}
level02.props.OakTree_NoCollider113408ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113408ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider113408ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider113408ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider113408ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(level02.props.OakTree_NoCollider113408ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider114409ID = {}
level02.props.OakTree_NoCollider114409ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114409ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider114409ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider114409ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider114409ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(level02.props.OakTree_NoCollider114409ID.transformID, {x=0, y=-5.86132, z=0})
level02.props.OakTree_NoCollider115410ID = {}
level02.props.OakTree_NoCollider115410ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115410ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider115410ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider115410ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider115410ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(level02.props.OakTree_NoCollider115410ID.transformID, {x=0, y=1.59683, z=0})
level02.props.OakTree_NoCollider116411ID = {}
level02.props.OakTree_NoCollider116411ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116411ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider116411ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider116411ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider116411ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(level02.props.OakTree_NoCollider116411ID.transformID, {x=0, y=-1.86515, z=0})
level02.props.OakTree_NoCollider117412ID = {}
level02.props.OakTree_NoCollider117412ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117412ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider117412ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider117412ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider117412ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(level02.props.OakTree_NoCollider117412ID.transformID, {x=0, y=-1.52942, z=0})
level02.props.OakTree_NoCollider118413ID = {}
level02.props.OakTree_NoCollider118413ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118413ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider118413ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider118413ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider118413ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(level02.props.OakTree_NoCollider118413ID.transformID, {x=0, y=3.43332, z=0})
level02.props.OakTree_NoCollider119414ID = {}
level02.props.OakTree_NoCollider119414ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119414ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider119414ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider119414ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider119414ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(level02.props.OakTree_NoCollider119414ID.transformID, {x=0, y=1.121, z=0})
level02.props.OakTree_NoCollider120415ID = {}
level02.props.OakTree_NoCollider120415ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120415ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider120415ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider120415ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider120415ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(level02.props.OakTree_NoCollider120415ID.transformID, {x=0, y=1.69246, z=0})
level02.props.OakTree_NoCollider121416ID = {}
level02.props.OakTree_NoCollider121416ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121416ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider121416ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider121416ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider121416ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(level02.props.OakTree_NoCollider121416ID.transformID, {x=0, y=1.70454, z=0})
level02.props.OakTree_NoCollider122417ID = {}
level02.props.OakTree_NoCollider122417ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122417ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider122417ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider122417ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider122417ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(level02.props.OakTree_NoCollider122417ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider123418ID = {}
level02.props.OakTree_NoCollider123418ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123418ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider123418ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider123418ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider123418ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(level02.props.OakTree_NoCollider123418ID.transformID, {x=0, y=2.28254, z=0})
level02.props.OakTree_NoCollider124419ID = {}
level02.props.OakTree_NoCollider124419ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124419ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider124419ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider124419ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider124419ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(level02.props.OakTree_NoCollider124419ID.transformID, {x=0, y=-7.63234, z=0})
level02.props.OakTree_NoCollider125420ID = {}
level02.props.OakTree_NoCollider125420ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125420ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider125420ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider125420ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider125420ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(level02.props.OakTree_NoCollider125420ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider126425ID = {}
level02.props.OakTree_NoCollider126425ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126425ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider126425ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider126425ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider126425ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(level02.props.OakTree_NoCollider126425ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider127426ID = {}
level02.props.OakTree_NoCollider127426ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127426ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider127426ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider127426ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider127426ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(level02.props.OakTree_NoCollider127426ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider128427ID = {}
level02.props.OakTree_NoCollider128427ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128427ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider128427ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider128427ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider128427ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(level02.props.OakTree_NoCollider128427ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider129428ID = {}
level02.props.OakTree_NoCollider129428ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129428ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider129428ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider129428ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider129428ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(level02.props.OakTree_NoCollider129428ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider130429ID = {}
level02.props.OakTree_NoCollider130429ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130429ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider130429ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider130429ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider130429ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(level02.props.OakTree_NoCollider130429ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider131430ID = {}
level02.props.OakTree_NoCollider131430ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131430ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider131430ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider131430ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider131430ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(level02.props.OakTree_NoCollider131430ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider132431ID = {}
level02.props.OakTree_NoCollider132431ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132431ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider132431ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider132431ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider132431ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(level02.props.OakTree_NoCollider132431ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider133432ID = {}
level02.props.OakTree_NoCollider133432ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133432ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider133432ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider133432ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider133432ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(level02.props.OakTree_NoCollider133432ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider134433ID = {}
level02.props.OakTree_NoCollider134433ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134433ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider134433ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider134433ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider134433ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(level02.props.OakTree_NoCollider134433ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider135434ID = {}
level02.props.OakTree_NoCollider135434ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135434ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider135434ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider135434ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider135434ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(level02.props.OakTree_NoCollider135434ID.transformID, {x=0, y=0, z=0})
level02.props.Bridge1439ID = {}
level02.props.Bridge1439ID.model = Assets.LoadModel('Models/Bridge1.model')
level02.props.Bridge1439ID.transformID = Gear.BindStaticInstance(level02.props.Bridge1439ID.model)
Transform.SetPosition(level02.props.Bridge1439ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Bridge1439ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Bridge1439ID.transformID, {x=0, y=0, z=0})
level02.colliders.Tile2_wallNr162440ID = {}
level02.colliders.Tile2_wallNr162440ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr162440ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr162440ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr162440ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr162440ID.collider:SetPos(332,48.7857,225.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr162440ID.collider, 3)
level02.colliders.Tile2_wallNr163441ID = {}
level02.colliders.Tile2_wallNr163441ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr163441ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr163441ID.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.Tile2_wallNr163441ID.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.Tile2_wallNr163441ID.collider:SetPos(320,48.7857,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr163441ID.collider, 3)
level02.colliders.Tile2_wallNr165442ID = {}
level02.colliders.Tile2_wallNr165442ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr165442ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr165442ID.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr165442ID.collider:SetHalfLengths(0.3,6.00264,3.53553)
level02.colliders.Tile2_wallNr165442ID.collider:SetPos(305.5,51.2366,233.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr165442ID.collider, 3)
level02.colliders.Tile2_wallNr93443ID = {}
level02.colliders.Tile2_wallNr93443ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr93443ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr93443ID.collider:SetZAxis(0.944497,0,-0.328521)
level02.colliders.Tile2_wallNr93443ID.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.Tile2_wallNr93443ID.collider:SetPos(323.5,51.6822,242)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr93443ID.collider, 3)
level02.colliders.Tile2_wallNr166444ID = {}
level02.colliders.Tile2_wallNr166444ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr166444ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr166444ID.collider:SetZAxis(0.242536,0,0.970143)
level02.colliders.Tile2_wallNr166444ID.collider:SetHalfLengths(0.3,5.55702,2.06155)
level02.colliders.Tile2_wallNr166444ID.collider:SetPos(335.5,50.791,240)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr166444ID.collider, 3)
level02.props.Water703ID = {}
level02.props.Water703ID.model = Assets.LoadModel('Models/lake.model')
level02.props.Water703ID.transformID = Gear.BindStaticInstance(level02.props.Water703ID.model)
Transform.SetPosition(level02.props.Water703ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Water703ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Water703ID.transformID, {x=0, y=0, z=0})
level02.props.House1725ID = {}
level02.props.House1725ID.model = Assets.LoadModel('Models/House1.model')
level02.props.House1725ID.transformID = Gear.BindStaticInstance(level02.props.House1725ID.model)
Transform.SetPosition(level02.props.House1725ID.transformID, {x=225.855, y=38.7525, z=139.26})
Transform.SetScaleNonUniform(level02.props.House1725ID.transformID, 1.50664, 1.67704, 1.68159)
Transform.SetRotation(level02.props.House1725ID.transformID, {x=0.0540893, y=4.89373, z=-0.000975025})
level02.props.House1725ID.collider = OBBCollider.Create(-1)
level02.props.House1725ID.collider:SetOffset(0,0,0)
level02.props.House1725ID.collider:SetZAxis(-0.982216,-0.0531053,0.180086)
level02.props.House1725ID.collider:SetHalfLengths(7.53319,6.70818,7.56718)
level02.props.House1725ID.collider:SetPos(225.855,38.7525,139.26)
CollisionHandler.AddOBB(level02.props.House1725ID.collider, 3)
level02.props.Lantern4730ID = {}
level02.props.Lantern4730ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern4730ID.transformID = Gear.BindStaticInstance(level02.props.Lantern4730ID.model)
Transform.SetPosition(level02.props.Lantern4730ID.transformID, {x=226, y=39, z=133})
Transform.SetScaleNonUniform(level02.props.Lantern4730ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern4730ID.transformID, {x=0, y=-1.0472, z=0})
Light.addLight(225.5, 42.75, 131, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern7734ID = {}
level02.props.Lantern7734ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern7734ID.transformID = Gear.BindStaticInstance(level02.props.Lantern7734ID.model)
Transform.SetPosition(level02.props.Lantern7734ID.transformID, {x=310.464, y=52.5625, z=246.125})
Transform.SetScaleNonUniform(level02.props.Lantern7734ID.transformID, 1, 1.22127, 1)
Transform.SetRotation(level02.props.Lantern7734ID.transformID, {x=0, y=0, z=0})
Light.addLight(307.964, 56.5625, 246.125, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern8735ID = {}
level02.props.Lantern8735ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern8735ID.transformID = Gear.BindStaticInstance(level02.props.Lantern8735ID.model)
Transform.SetPosition(level02.props.Lantern8735ID.transformID, {x=336.838, y=50.9375, z=237.224})
Transform.SetScaleNonUniform(level02.props.Lantern8735ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern8735ID.transformID, {x=0, y=3.91918, z=0})
Light.addLight(338.838, 54.9375, 235.224, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern9736ID = {}
level02.props.Lantern9736ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern9736ID.transformID = Gear.BindStaticInstance(level02.props.Lantern9736ID.model)
Transform.SetPosition(level02.props.Lantern9736ID.transformID, {x=196.044, y=40.2449, z=203.33})
Transform.SetScaleNonUniform(level02.props.Lantern9736ID.transformID, 1, 1.06172, 1)
Transform.SetRotation(level02.props.Lantern9736ID.transformID, {x=0, y=-1.18189, z=0})
Light.addLight(195.044, 44.2449, 201.08, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern10737ID = {}
level02.props.Lantern10737ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern10737ID.transformID = Gear.BindStaticInstance(level02.props.Lantern10737ID.model)
Transform.SetPosition(level02.props.Lantern10737ID.transformID, {x=216.289, y=36.0584, z=179.585})
Transform.SetScaleNonUniform(level02.props.Lantern10737ID.transformID, 1, 1.19206, 1)
Transform.SetRotation(level02.props.Lantern10737ID.transformID, {x=0, y=-0.661819, z=0})
Light.addLight(214.289, 40.5584, 177.985, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern11738ID = {}
level02.props.Lantern11738ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern11738ID.transformID = Gear.BindStaticInstance(level02.props.Lantern11738ID.model)
Transform.SetPosition(level02.props.Lantern11738ID.transformID, {x=235.862, y=35.5215, z=159.577})
Transform.SetScaleNonUniform(level02.props.Lantern11738ID.transformID, 1, 1.0759, 1)
Transform.SetRotation(level02.props.Lantern11738ID.transformID, {x=0, y=-0.977943, z=0})
Light.addLight(234.612, 39.5215, 157.577, 1, 0.576471, 0.160784, 10,2)
level02.props.PineTree_Collider3739ID = {}
level02.props.PineTree_Collider3739ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3739ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider3739ID.model)
Transform.SetPosition(level02.props.PineTree_Collider3739ID.transformID, {x=305.672, y=53.5464, z=253.254})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider3739ID.transformID, 1.32645, 1.7271, 1.22295)
Transform.SetRotation(level02.props.PineTree_Collider3739ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider3739ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider3739ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider3739ID.collider:SetZAxis(0,0,1)
level02.props.PineTree_Collider3739ID.collider:SetHalfLengths(3.31612,6.90839,3.05737)
level02.props.PineTree_Collider3739ID.collider:SetPos(305.672,57.5464,253.254)
CollisionHandler.AddOBB(level02.props.PineTree_Collider3739ID.collider, 3)
level02.props.OakTree_Collider47740ID = {}
level02.props.OakTree_Collider47740ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47740ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider47740ID.model)
Transform.SetPosition(level02.props.OakTree_Collider47740ID.transformID, {x=346.368, y=37.1634, z=203.707})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider47740ID.transformID, 1.41434, 1.77458, 1.43405)
Transform.SetRotation(level02.props.OakTree_Collider47740ID.transformID, {x=0, y=3.24973, z=0})
level02.props.OakTree_Collider47740ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider47740ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider47740ID.collider:SetZAxis(-0.107927,0,-0.994159)
level02.props.OakTree_Collider47740ID.collider:SetHalfLengths(2.47509,7.09833,2.50959)
level02.props.OakTree_Collider47740ID.collider:SetPos(346.368,41.1634,203.707)
CollisionHandler.AddOBB(level02.props.OakTree_Collider47740ID.collider, 3)
local New21760ID = CreateEnemy(ENEMY_DUMMY, {x=52.2794, y=8.36385, z=178.592})
New21760ID.moveSpeed = 9
New21760ID.health = 50
New21760ID.visionRange = 30

local New22761ID = CreateEnemy(ENEMY_DUMMY, {x=43.6563, y=8.39086, z=183.625})
New22761ID.moveSpeed = 9
New22761ID.health = 50
New22761ID.visionRange = 30

local New23762ID = CreateEnemy(ENEMY_DUMMY, {x=52.3125, y=8.49229, z=182.125})
New23762ID.moveSpeed = 9
New23762ID.health = 50
New23762ID.visionRange = 30

local New24763ID = CreateEnemy(ENEMY_DUMMY, {x=48.5625, y=8.31069, z=181.25})
New24763ID.moveSpeed = 9
New24763ID.health = 50
New24763ID.visionRange = 30

local New25764ID = CreateEnemy(ENEMY_DUMMY, {x=15.4141, y=4.20556, z=197.875})
New25764ID.moveSpeed = 9
New25764ID.health = 50
New25764ID.visionRange = 30

local New26765ID = CreateEnemy(ENEMY_DUMMY, {x=26.8281, y=5.16123, z=205.375})
New26765ID.moveSpeed = 9
New26765ID.health = 50
New26765ID.visionRange = 30

local New27766ID = CreateEnemy(ENEMY_DUMMY, {x=15.1797, y=5.37344, z=211.75})
New27766ID.moveSpeed = 9
New27766ID.health = 50
New27766ID.visionRange = 30

local New28767ID = CreateEnemy(ENEMY_DUMMY, {x=27.2031, y=5.94935, z=219.75})
New28767ID.moveSpeed = 9
New28767ID.health = 50
New28767ID.visionRange = 30

local New29768ID = CreateEnemy(ENEMY_MELEE, {x=129.75, y=33.9375, z=214.75})
New29768ID.moveSpeed = 9
New29768ID.health = 50
New29768ID.visionRange = 30--]]

end
level02.unload = function()
level02.props.tile25ID = nil
Gear.UnbindInstance(level02.props.t2s121ID.transformID)
level02.props.t2s121ID = nil
Gear.UnbindInstance(level02.props.t2s222ID.transformID)
level02.props.t2s222ID = nil
Gear.UnbindInstance(level02.props.t2s323ID.transformID)
level02.props.t2s323ID = nil
Gear.UnbindInstance(level02.props.t2s424ID.transformID)
level02.props.t2s424ID = nil
Gear.UnbindInstance(level02.props.t2s525ID.transformID)
level02.props.t2s525ID = nil
Gear.UnbindInstance(level02.props.t2s626ID.transformID)
level02.props.t2s626ID = nil
Gear.UnbindInstance(level02.props.t2s727ID.transformID)
level02.props.t2s727ID = nil
Gear.UnbindInstance(level02.props.t2s828ID.transformID)
level02.props.t2s828ID = nil
Gear.UnbindInstance(level02.props.t2s929ID.transformID)
level02.props.t2s929ID = nil
Gear.UnbindInstance(level02.props.t2s1030ID.transformID)
level02.props.t2s1030ID = nil
Gear.UnbindInstance(level02.props.t2s11a31ID.transformID)
level02.props.t2s11a31ID = nil
Gear.UnbindInstance(level02.props.t2s1232ID.transformID)
level02.props.t2s1232ID = nil
Gear.UnbindInstance(level02.props.t2s1333ID.transformID)
level02.props.t2s1333ID = nil
Gear.UnbindInstance(level02.props.t2s1434ID.transformID)
level02.props.t2s1434ID = nil
level02.colliders.Tile2_wallNr158ID = nil
level02.colliders.Tile2_wallNr1159ID = nil
level02.colliders.Tile2_wallNr2160ID = nil
level02.colliders.Tile2_wallNr3161ID = nil
level02.colliders.Tile2_wallNr4162ID = nil
level02.colliders.Tile2_wallNr5163ID = nil
level02.colliders.Tile2_wallNr6164ID = nil
level02.colliders.Tile2_wallNr7165ID = nil
level02.colliders.Tile2_wallNr8166ID = nil
level02.colliders.Tile2_wallNr9167ID = nil
level02.colliders.Tile2_wallNr10168ID = nil
level02.colliders.Tile2_wallNr11169ID = nil
level02.colliders.Tile2_wallNr12170ID = nil
level02.colliders.Tile2_wallNr13171ID = nil
level02.colliders.Tile2_wallNr14172ID = nil
level02.colliders.Tile2_wallNr15173ID = nil
level02.colliders.Tile2_wallNr16174ID = nil
level02.colliders.Tile2_wallNr17175ID = nil
level02.colliders.Tile2_wallNr18176ID = nil
level02.colliders.Tile2_wallNr19177ID = nil
level02.colliders.Tile2_wallNr20178ID = nil
level02.colliders.Tile2_wallNr21179ID = nil
level02.colliders.Tile2_wallNr22180ID = nil
level02.colliders.Tile2_wallNr23181ID = nil
level02.colliders.Tile2_wallNr24182ID = nil
level02.colliders.Tile2_wallNr25183ID = nil
level02.colliders.Tile2_wallNr26184ID = nil
level02.colliders.Tile2_wallNr27185ID = nil
level02.colliders.Tile2_wallNr28186ID = nil
level02.colliders.Tile2_wallNr29187ID = nil
level02.colliders.Tile2_wallNr30188ID = nil
level02.colliders.Tile2_wallNr31189ID = nil
level02.colliders.Tile2_wallNr32190ID = nil
level02.colliders.Tile2_wallNr33191ID = nil
level02.colliders.Tile2_wallNr34192ID = nil
level02.colliders.Tile2_wallNr35193ID = nil
level02.colliders.Tile2_wallNr36194ID = nil
level02.colliders.Tile2_wallNr37195ID = nil
level02.colliders.Tile2_wallNr38196ID = nil
level02.colliders.Tile2_wallNr39197ID = nil
level02.colliders.Tile2_wallNr40198ID = nil
level02.colliders.Tile2_wallNr41199ID = nil
level02.colliders.Tile2_wallNr42200ID = nil
level02.colliders.Tile2_wallNr43201ID = nil
level02.colliders.Tile2_wallNr44202ID = nil
level02.colliders.Tile2_wallNr45203ID = nil
level02.colliders.Tile2_wallNr46204ID = nil
level02.colliders.Tile2_wallNr47205ID = nil
level02.colliders.Tile2_wallNr48206ID = nil
level02.colliders.Tile2_wallNr49207ID = nil
level02.colliders.Tile2_wallNr50208ID = nil
level02.colliders.Tile2_wallNr51209ID = nil
level02.colliders.Tile2_wallNr52210ID = nil
level02.colliders.Tile2_wallNr53211ID = nil
level02.colliders.Tile2_wallNr54212ID = nil
level02.colliders.Tile2_wallNr55213ID = nil
level02.colliders.Tile2_wallNr56214ID = nil
level02.colliders.Tile2_wallNr57215ID = nil
level02.colliders.Tile2_wallNr58216ID = nil
level02.colliders.Tile2_wallNr59217ID = nil
level02.colliders.Tile2_wallNr60218ID = nil
level02.colliders.Tile2_wallNr61219ID = nil
level02.colliders.Tile2_wallNr62220ID = nil
level02.colliders.Tile2_wallNr63221ID = nil
level02.colliders.Tile2_wallNr64222ID = nil
level02.colliders.Tile2_wallNr65223ID = nil
level02.colliders.Tile2_wallNr87224ID = nil
level02.colliders.Tile2_wallNr88225ID = nil
level02.colliders.Tile2_wallNr89226ID = nil
level02.colliders.Tile2_wallNr90227ID = nil
level02.colliders.Tile2_wallNr91228ID = nil
level02.colliders.Tile2_wallNr92229ID = nil
level02.colliders.Tile2_wallNr94230ID = nil
level02.colliders.Tile2_wallNr95231ID = nil
level02.colliders.Tile2_wallNr96232ID = nil
level02.colliders.Tile2_wallNr97233ID = nil
level02.colliders.Tile2_wallNr98234ID = nil
level02.colliders.Tile2_wallNr99235ID = nil
level02.colliders.Tile2_wallNr100236ID = nil
level02.colliders.Tile2_wallNr101237ID = nil
level02.colliders.Tile2_wallNr102238ID = nil
level02.colliders.Tile2_wallNr66239ID = nil
level02.colliders.Tile2_wallNr67240ID = nil
level02.colliders.Tile2_wallNr68241ID = nil
level02.colliders.Tile2_wallNr69242ID = nil
level02.colliders.Tile2_wallNr70243ID = nil
level02.colliders.Tile2_wallNr71244ID = nil
level02.colliders.Tile2_wallNr72245ID = nil
level02.colliders.Tile2_wallNr73246ID = nil
level02.colliders.Tile2_wallNr74247ID = nil
level02.colliders.Tile2_wallNr75248ID = nil
level02.colliders.Tile2_wallNr76249ID = nil
level02.colliders.Tile2_wallNr77250ID = nil
level02.colliders.Tile2_wallNr78251ID = nil
level02.colliders.Tile2_wallNr79252ID = nil
level02.colliders.Tile2_wallNr80253ID = nil
level02.colliders.Tile2_wallNr81254ID = nil
level02.colliders.Tile2_wallNr82255ID = nil
level02.colliders.Tile2_wallNr83256ID = nil
level02.colliders.Tile2_wallNr84257ID = nil
level02.colliders.Tile2_wallNr85258ID = nil
level02.colliders.Tile2_wallNr86259ID = nil
level02.colliders.Tile2_wallNr103260ID = nil
level02.colliders.Tile2_wallNr104261ID = nil
level02.colliders.Tile2_wallNr105262ID = nil
level02.colliders.Tile2_wallNr106263ID = nil
level02.colliders.Tile2_wallNr107264ID = nil
level02.colliders.Tile2_wallNr108265ID = nil
level02.colliders.Tile2_wallNr109266ID = nil
level02.colliders.Tile2_wallNr110267ID = nil
level02.colliders.Tile2_wallNr111268ID = nil
level02.colliders.Tile2_wallNr112269ID = nil
level02.colliders.Tile2_wallNr113270ID = nil
level02.colliders.Tile2_wallNr114271ID = nil
level02.colliders.Tile2_wallNr115272ID = nil
level02.colliders.Tile2_wallNr116273ID = nil
level02.colliders.Tile2_wallNr117274ID = nil
level02.colliders.Tile2_wallNr118275ID = nil
level02.colliders.Tile2_wallNr119276ID = nil
level02.colliders.Tile2_wallNr120277ID = nil
level02.colliders.Tile2_wallNr121278ID = nil
level02.colliders.Tile2_wallNr122279ID = nil
level02.colliders.Tile2_wallNr123280ID = nil
level02.colliders.Tile2_wallNr124281ID = nil
level02.colliders.Tile2_wallNr125282ID = nil
level02.colliders.Tile2_wallNr126283ID = nil
level02.colliders.Tile2_wallNr127284ID = nil
level02.colliders.Tile2_wallNr128285ID = nil
level02.colliders.Tile2_wallNr129286ID = nil
level02.colliders.Tile2_wallNr130287ID = nil
level02.colliders.Tile2_wallNr131288ID = nil
level02.colliders.Tile2_wallNr132289ID = nil
level02.colliders.Tile2_wallNr133290ID = nil
level02.colliders.Tile2_wallNr134291ID = nil
level02.colliders.Tile2_wallNr135292ID = nil
level02.colliders.Tile2_wallNr136293ID = nil
level02.colliders.Tile2_wallNr137294ID = nil
level02.colliders.Tile2_wallNr138295ID = nil
level02.colliders.Tile2_wallNr139296ID = nil
level02.colliders.Tile2_wallNr140297ID = nil
level02.colliders.Tile2_wallNr141298ID = nil
level02.colliders.Tile2_wallNr142299ID = nil
level02.colliders.Tile2_wallNr143300ID = nil
level02.colliders.Tile2_wallNr144301ID = nil
level02.colliders.Tile2_wallNr145302ID = nil
level02.colliders.Tile2_wallNr146303ID = nil
level02.colliders.Tile2_wallNr147304ID = nil
level02.colliders.Tile2_wallNr148305ID = nil
level02.colliders.Tile2_wallNr149306ID = nil
level02.colliders.Tile2_wallNr150307ID = nil
level02.colliders.Tile2_wallNr151308ID = nil
level02.colliders.Tile2_wallNr152309ID = nil
level02.colliders.Tile2_wallNr153310ID = nil
level02.colliders.Tile2_wallNr154311ID = nil
level02.colliders.Tile2_wallNr155312ID = nil
level02.colliders.Tile2_wallNr156313ID = nil
level02.colliders.Tile2_wallNr157314ID = nil
level02.colliders.Tile2_wallNr158315ID = nil
level02.colliders.Tile2_wallNr159316ID = nil
level02.colliders.Tile2_wallNr160317ID = nil
level02.colliders.Tile2_wallNr161318ID = nil
level02.colliders.Tile2_wallNr164319ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider384ID.transformID)
level02.props.PineTree_Collider384ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider1385ID.transformID)
level02.props.PineTree_Collider1385ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider2386ID.transformID)
level02.props.PineTree_Collider2386ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider1387ID.transformID)
level02.props.PineTree_NoCollider1387ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider11388ID.transformID)
level02.props.PineTree_NoCollider11388ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider12389ID.transformID)
level02.props.PineTree_NoCollider12389ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider13390ID.transformID)
level02.props.PineTree_NoCollider13390ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider14391ID.transformID)
level02.props.PineTree_NoCollider14391ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider15392ID.transformID)
level02.props.PineTree_NoCollider15392ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider16393ID.transformID)
level02.props.PineTree_NoCollider16393ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider17394ID.transformID)
level02.props.PineTree_NoCollider17394ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider18395ID.transformID)
level02.props.PineTree_NoCollider18395ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider19396ID.transformID)
level02.props.PineTree_NoCollider19396ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider4397ID.transformID)
level02.props.OakTree_Collider4397ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider41398ID.transformID)
level02.props.OakTree_Collider41398ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider42399ID.transformID)
level02.props.OakTree_Collider42399ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider43400ID.transformID)
level02.props.OakTree_Collider43400ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider44401ID.transformID)
level02.props.OakTree_Collider44401ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider45402ID.transformID)
level02.props.OakTree_Collider45402ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider46403ID.transformID)
level02.props.OakTree_Collider46403ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider1404ID.transformID)
level02.props.OakTree_NoCollider1404ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider15405ID.transformID)
level02.props.OakTree_NoCollider15405ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider111406ID.transformID)
level02.props.OakTree_NoCollider111406ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider112407ID.transformID)
level02.props.OakTree_NoCollider112407ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider113408ID.transformID)
level02.props.OakTree_NoCollider113408ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider114409ID.transformID)
level02.props.OakTree_NoCollider114409ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider115410ID.transformID)
level02.props.OakTree_NoCollider115410ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider116411ID.transformID)
level02.props.OakTree_NoCollider116411ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider117412ID.transformID)
level02.props.OakTree_NoCollider117412ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider118413ID.transformID)
level02.props.OakTree_NoCollider118413ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider119414ID.transformID)
level02.props.OakTree_NoCollider119414ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider120415ID.transformID)
level02.props.OakTree_NoCollider120415ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider121416ID.transformID)
level02.props.OakTree_NoCollider121416ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider122417ID.transformID)
level02.props.OakTree_NoCollider122417ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider123418ID.transformID)
level02.props.OakTree_NoCollider123418ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider124419ID.transformID)
level02.props.OakTree_NoCollider124419ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider125420ID.transformID)
level02.props.OakTree_NoCollider125420ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider126425ID.transformID)
level02.props.OakTree_NoCollider126425ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider127426ID.transformID)
level02.props.OakTree_NoCollider127426ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider128427ID.transformID)
level02.props.OakTree_NoCollider128427ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider129428ID.transformID)
level02.props.OakTree_NoCollider129428ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider130429ID.transformID)
level02.props.OakTree_NoCollider130429ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider131430ID.transformID)
level02.props.OakTree_NoCollider131430ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider132431ID.transformID)
level02.props.OakTree_NoCollider132431ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider133432ID.transformID)
level02.props.OakTree_NoCollider133432ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider134433ID.transformID)
level02.props.OakTree_NoCollider134433ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider135434ID.transformID)
level02.props.OakTree_NoCollider135434ID = nil
Gear.UnbindInstance(level02.props.Bridge1439ID.transformID)
level02.props.Bridge1439ID = nil
level02.colliders.Tile2_wallNr162440ID = nil
level02.colliders.Tile2_wallNr163441ID = nil
level02.colliders.Tile2_wallNr165442ID = nil
level02.colliders.Tile2_wallNr93443ID = nil
level02.colliders.Tile2_wallNr166444ID = nil
Gear.UnbindInstance(level02.props.Water703ID.transformID)
level02.props.Water703ID = nil
Gear.UnbindInstance(level02.props.House1725ID.transformID)
level02.props.House1725ID = nil
Gear.UnbindInstance(level02.props.Lantern4730ID.transformID)
level02.props.Lantern4730ID = nil
Gear.UnbindInstance(level02.props.Lantern7734ID.transformID)
level02.props.Lantern7734ID = nil
Gear.UnbindInstance(level02.props.Lantern8735ID.transformID)
level02.props.Lantern8735ID = nil
Gear.UnbindInstance(level02.props.Lantern9736ID.transformID)
level02.props.Lantern9736ID = nil
Gear.UnbindInstance(level02.props.Lantern10737ID.transformID)
level02.props.Lantern10737ID = nil
Gear.UnbindInstance(level02.props.Lantern11738ID.transformID)
level02.props.Lantern11738ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider3739ID.transformID)
level02.props.PineTree_Collider3739ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider47740ID.transformID)
level02.props.OakTree_Collider47740ID = nil









level02.props = nil
level02.colliders = nil
level02.triggers = nil
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.surrounding = { 2, 4 }
level03.load = function()
level03.props = {}
level03.colliders = {}
level03.triggers = {}
level03.props.t3s135ID = {}
level03.props.t3s135ID.model = Assets.LoadModel('Models/tile3_s1.model')
level03.props.t3s135ID.transformID = Gear.BindStaticInstance(level03.props.t3s135ID.model)
Transform.SetPosition(level03.props.t3s135ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s135ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s135ID.transformID, {x=0, y=0, z=0})
level03.props.tile336ID = {}
level03.props.t3s242ID = {}
level03.props.t3s242ID.model = Assets.LoadModel('Models/tile3_s2.model')
level03.props.t3s242ID.transformID = Gear.BindStaticInstance(level03.props.t3s242ID.model)
Transform.SetPosition(level03.props.t3s242ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s242ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s242ID.transformID, {x=0, y=0, z=0})
level03.props.t3s343ID = {}
level03.props.t3s343ID.model = Assets.LoadModel('Models/tile3_s3.model')
level03.props.t3s343ID.transformID = Gear.BindStaticInstance(level03.props.t3s343ID.model)
Transform.SetPosition(level03.props.t3s343ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s343ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s343ID.transformID, {x=0, y=0, z=0})
level03.props.t3s444ID = {}
level03.props.t3s444ID.model = Assets.LoadModel('Models/tile3_s4.model')
level03.props.t3s444ID.transformID = Gear.BindStaticInstance(level03.props.t3s444ID.model)
Transform.SetPosition(level03.props.t3s444ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s444ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s444ID.transformID, {x=0, y=0, z=0})
level03.colliders.Tile3_wallNr320ID = {}
level03.colliders.Tile3_wallNr320ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr320ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr320ID.collider:SetZAxis(1,0,0)
level03.colliders.Tile3_wallNr320ID.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.Tile3_wallNr320ID.collider:SetPos(388.5,36.4629,157)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr320ID.collider, 3)
level03.colliders.Tile3_wallNr1321ID = {}
level03.colliders.Tile3_wallNr1321ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr1321ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr1321ID.collider:SetZAxis(0.980581,0,0.196116)
level03.colliders.Tile3_wallNr1321ID.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.Tile3_wallNr1321ID.collider:SetPos(398,36.3044,158)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr1321ID.collider, 3)
level03.colliders.Tile3_wallNr2322ID = {}
level03.colliders.Tile3_wallNr2322ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr2322ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr2322ID.collider:SetZAxis(0.707107,0,0.707107)
level03.colliders.Tile3_wallNr2322ID.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.Tile3_wallNr2322ID.collider:SetPos(404,36.146,160)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr2322ID.collider, 3)
level03.colliders.Tile3_wallNr3323ID = {}
level03.colliders.Tile3_wallNr3323ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr3323ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr3323ID.collider:SetZAxis(0.5547,0,0.83205)
level03.colliders.Tile3_wallNr3323ID.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.Tile3_wallNr3323ID.collider:SetPos(406,36.3044,162.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr3323ID.collider, 3)
level03.colliders.Tile3_wallNr4324ID = {}
level03.colliders.Tile3_wallNr4324ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr4324ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr4324ID.collider:SetZAxis(0.447214,0,0.894427)
level03.colliders.Tile3_wallNr4324ID.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.Tile3_wallNr4324ID.collider:SetPos(409,36.4629,168)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr4324ID.collider, 3)
level03.colliders.Tile3_wallNr5325ID = {}
level03.colliders.Tile3_wallNr5325ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr5325ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr5325ID.collider:SetZAxis(0.351123,0,0.936329)
level03.colliders.Tile3_wallNr5325ID.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.Tile3_wallNr5325ID.collider:SetPos(412.5,36.7798,176)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr5325ID.collider, 3)
level03.colliders.Tile3_wallNr6326ID = {}
level03.colliders.Tile3_wallNr6326ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr6326ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr6326ID.collider:SetZAxis(0.287348,0,0.957826)
level03.colliders.Tile3_wallNr6326ID.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.Tile3_wallNr6326ID.collider:SetPos(415.5,37.5722,185)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr6326ID.collider, 3)
level03.colliders.Tile3_wallNr7327ID = {}
level03.colliders.Tile3_wallNr7327ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr7327ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr7327ID.collider:SetZAxis(0.178885,0,0.98387)
level03.colliders.Tile3_wallNr7327ID.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.Tile3_wallNr7327ID.collider:SetPos(418,38.2061,195.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr7327ID.collider, 3)
level03.colliders.Tile3_wallNr8328ID = {}
level03.colliders.Tile3_wallNr8328ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr8328ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr8328ID.collider:SetZAxis(0.066519,0,0.997785)
level03.colliders.Tile3_wallNr8328ID.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.Tile3_wallNr8328ID.collider:SetPos(419.5,40.2662,208.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr8328ID.collider, 3)
level03.colliders.Tile3_wallNr9329ID = {}
level03.colliders.Tile3_wallNr9329ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr9329ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr9329ID.collider:SetZAxis(-0.196116,0,0.980581)
level03.colliders.Tile3_wallNr9329ID.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.Tile3_wallNr9329ID.collider:SetPos(418.5,44.5448,223.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr9329ID.collider, 3)
level03.colliders.Tile3_wallNr10330ID = {}
level03.colliders.Tile3_wallNr10330ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr10330ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr10330ID.collider:SetZAxis(-0.242536,0,0.970143)
level03.colliders.Tile3_wallNr10330ID.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.Tile3_wallNr10330ID.collider:SetPos(416,48.3481,235)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr10330ID.collider, 3)
level03.colliders.Tile3_wallNr11331ID = {}
level03.colliders.Tile3_wallNr11331ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr11331ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr11331ID.collider:SetZAxis(0.919145,0,0.393919)
level03.colliders.Tile3_wallNr11331ID.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.Tile3_wallNr11331ID.collider:SetPos(422,50.7251,242)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr11331ID.collider, 3)
level03.colliders.Tile3_wallNr12332ID = {}
level03.colliders.Tile3_wallNr12332ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr12332ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr12332ID.collider:SetZAxis(0.573462,0,0.819232)
level03.colliders.Tile3_wallNr12332ID.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.Tile3_wallNr12332ID.collider:SetPos(432.5,51.5175,250)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr12332ID.collider, 3)
level03.colliders.Tile3_wallNr13333ID = {}
level03.colliders.Tile3_wallNr13333ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr13333ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr13333ID.collider:SetZAxis(1,0,0)
level03.colliders.Tile3_wallNr13333ID.collider:SetHalfLengths(0.3,16.5682,17.5)
level03.colliders.Tile3_wallNr13333ID.collider:SetPos(453.5,52.3098,255)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr13333ID.collider, 3)
level03.colliders.Tile3_wallNr14334ID = {}
level03.colliders.Tile3_wallNr14334ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr14334ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr14334ID.collider:SetZAxis(-0.0370117,0,-0.999315)
level03.colliders.Tile3_wallNr14334ID.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.Tile3_wallNr14334ID.collider:SetPos(511.5,41.5339,241.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr14334ID.collider, 3)
level03.colliders.Tile3_wallNr15335ID = {}
level03.colliders.Tile3_wallNr15335ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr15335ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr15335ID.collider:SetZAxis(-0.141421,0,-0.98995)
level03.colliders.Tile3_wallNr15335ID.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.Tile3_wallNr15335ID.collider:SetPos(510,41.8508,221)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr15335ID.collider, 3)
level03.colliders.Tile3_wallNr16336ID = {}
level03.colliders.Tile3_wallNr16336ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr16336ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr16336ID.collider:SetZAxis(-0.316228,0,-0.948683)
level03.colliders.Tile3_wallNr16336ID.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.Tile3_wallNr16336ID.collider:SetPos(506.5,42.1678,206.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr16336ID.collider, 3)
level03.colliders.Tile3_wallNr17337ID = {}
level03.colliders.Tile3_wallNr17337ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr17337ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr17337ID.collider:SetZAxis(-0.362446,0,-0.932005)
level03.colliders.Tile3_wallNr17337ID.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.Tile3_wallNr17337ID.collider:SetPos(500.5,41.8508,190)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr17337ID.collider, 3)
level03.colliders.Tile3_wallNr18338ID = {}
level03.colliders.Tile3_wallNr18338ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr18338ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr18338ID.collider:SetZAxis(-0.485643,0,-0.874157)
level03.colliders.Tile3_wallNr18338ID.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.Tile3_wallNr18338ID.collider:SetPos(492,41.217,172)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr18338ID.collider, 3)
level03.colliders.Tile3_wallNr19339ID = {}
level03.colliders.Tile3_wallNr19339ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr19339ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr19339ID.collider:SetZAxis(-0.576683,0,-0.816968)
level03.colliders.Tile3_wallNr19339ID.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.Tile3_wallNr19339ID.collider:SetPos(481,39.7907,154.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr19339ID.collider, 3)
level03.colliders.Tile3_wallNr20340ID = {}
level03.colliders.Tile3_wallNr20340ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr20340ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr20340ID.collider:SetZAxis(-0.870563,0,-0.492057)
level03.colliders.Tile3_wallNr20340ID.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.Tile3_wallNr20340ID.collider:SetPos(463.5,38.2061,139.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr20340ID.collider, 3)
level03.colliders.Tile3_wallNr21341ID = {}
level03.colliders.Tile3_wallNr21341ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr21341ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr21341ID.collider:SetZAxis(-0.963518,0,-0.267644)
level03.colliders.Tile3_wallNr21341ID.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.Tile3_wallNr21341ID.collider:SetPos(443,36.7798,130.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr21341ID.collider, 3)
level03.colliders.Tile3_wallNr22342ID = {}
level03.colliders.Tile3_wallNr22342ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr22342ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr22342ID.collider:SetZAxis(-0.863779,0,0.503871)
level03.colliders.Tile3_wallNr22342ID.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.Tile3_wallNr22342ID.collider:SetPos(428,35.829,131.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr22342ID.collider, 3)
level03.colliders.Tile3_wallNr23343ID = {}
level03.colliders.Tile3_wallNr23343ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr23343ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr23343ID.collider:SetZAxis(-0.903738,0,0.428086)
level03.colliders.Tile3_wallNr23343ID.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.Tile3_wallNr23343ID.collider:SetPos(412.5,35.5121,139.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr23343ID.collider, 3)
level03.colliders.Tile3_wallNr24344ID = {}
level03.colliders.Tile3_wallNr24344ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr24344ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr24344ID.collider:SetZAxis(-0.948683,0,0.316228)
level03.colliders.Tile3_wallNr24344ID.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.Tile3_wallNr24344ID.collider:SetPos(401.5,35.3536,144.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr24344ID.collider, 3)
level03.colliders.Tile3_wallNr25345ID = {}
level03.colliders.Tile3_wallNr25345ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr25345ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr25345ID.collider:SetZAxis(-1,0,0)
level03.colliders.Tile3_wallNr25345ID.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.Tile3_wallNr25345ID.collider:SetPos(392,35.3536,145)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr25345ID.collider, 3)
level03.colliders.Tile3_wallNr26346ID = {}
level03.colliders.Tile3_wallNr26346ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr26346ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr26346ID.collider:SetZAxis(0,0,1)
level03.colliders.Tile3_wallNr26346ID.collider:SetHalfLengths(0.3,5,1)
level03.colliders.Tile3_wallNr26346ID.collider:SetPos(384,35.1951,146)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr26346ID.collider, 3)
end
level03.unload = function()
Gear.UnbindInstance(level03.props.t3s135ID.transformID)
level03.props.t3s135ID = nil
level03.props.tile336ID = nil
Gear.UnbindInstance(level03.props.t3s242ID.transformID)
level03.props.t3s242ID = nil
Gear.UnbindInstance(level03.props.t3s343ID.transformID)
level03.props.t3s343ID = nil
Gear.UnbindInstance(level03.props.t3s444ID.transformID)
level03.props.t3s444ID = nil
level03.colliders.Tile3_wallNr320ID = nil
level03.colliders.Tile3_wallNr1321ID = nil
level03.colliders.Tile3_wallNr2322ID = nil
level03.colliders.Tile3_wallNr3323ID = nil
level03.colliders.Tile3_wallNr4324ID = nil
level03.colliders.Tile3_wallNr5325ID = nil
level03.colliders.Tile3_wallNr6326ID = nil
level03.colliders.Tile3_wallNr7327ID = nil
level03.colliders.Tile3_wallNr8328ID = nil
level03.colliders.Tile3_wallNr9329ID = nil
level03.colliders.Tile3_wallNr10330ID = nil
level03.colliders.Tile3_wallNr11331ID = nil
level03.colliders.Tile3_wallNr12332ID = nil
level03.colliders.Tile3_wallNr13333ID = nil
level03.colliders.Tile3_wallNr14334ID = nil
level03.colliders.Tile3_wallNr15335ID = nil
level03.colliders.Tile3_wallNr16336ID = nil
level03.colliders.Tile3_wallNr17337ID = nil
level03.colliders.Tile3_wallNr18338ID = nil
level03.colliders.Tile3_wallNr19339ID = nil
level03.colliders.Tile3_wallNr20340ID = nil
level03.colliders.Tile3_wallNr21341ID = nil
level03.colliders.Tile3_wallNr22342ID = nil
level03.colliders.Tile3_wallNr23343ID = nil
level03.colliders.Tile3_wallNr24344ID = nil
level03.colliders.Tile3_wallNr25345ID = nil
level03.colliders.Tile3_wallNr26346ID = nil
level03.props = nil
level03.colliders = nil
level03.triggers = nil
collectgarbage()
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------


-------------------------------------level04-----------------------------------------------

level04 = {}
level04.surrounding = { 2, 3, 5 }
level04.load = function()
level04.props = {}
level04.colliders = {}
level04.triggers = {}
level04.props.tile437ID = {}
level04.props.t4s145ID = {}
level04.props.t4s145ID.model = Assets.LoadModel('Models/tile4_s1.model')
level04.props.t4s145ID.transformID = Gear.BindStaticInstance(level04.props.t4s145ID.model)
Transform.SetPosition(level04.props.t4s145ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s145ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s145ID.transformID, {x=0, y=0, z=0})
level04.props.t4s246ID = {}
level04.props.t4s246ID.model = Assets.LoadModel('Models/tile4_s2.model')
level04.props.t4s246ID.transformID = Gear.BindStaticInstance(level04.props.t4s246ID.model)
Transform.SetPosition(level04.props.t4s246ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s246ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s246ID.transformID, {x=0, y=0, z=0})
level04.props.t4s347ID = {}
level04.props.t4s347ID.model = Assets.LoadModel('Models/tile4_s3.model')
level04.props.t4s347ID.transformID = Gear.BindStaticInstance(level04.props.t4s347ID.model)
Transform.SetPosition(level04.props.t4s347ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s347ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s347ID.transformID, {x=0, y=0, z=0})
level04.props.t4s448ID = {}
level04.props.t4s448ID.model = Assets.LoadModel('Models/tile4_s4.model')
level04.props.t4s448ID.transformID = Gear.BindStaticInstance(level04.props.t4s448ID.model)
Transform.SetPosition(level04.props.t4s448ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s448ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s448ID.transformID, {x=0, y=0, z=0})
level04.colliders.Tile4_wallNr347ID = {}
level04.colliders.Tile4_wallNr347ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr347ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr347ID.collider:SetZAxis(0,0,1)
level04.colliders.Tile4_wallNr347ID.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.Tile4_wallNr347ID.collider:SetPos(512,41.5953,300.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr347ID.collider, 3)
level04.colliders.Tile4_wallNr1348ID = {}
level04.colliders.Tile4_wallNr1348ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr1348ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr1348ID.collider:SetZAxis(-0.470588,0,0.882353)
level04.colliders.Tile4_wallNr1348ID.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.Tile4_wallNr1348ID.collider:SetPos(508,34.7835,352.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr1348ID.collider, 3)
level04.colliders.Tile4_wallNr2349ID = {}
level04.colliders.Tile4_wallNr2349ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr2349ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr2349ID.collider:SetZAxis(-0.316228,0,0.948683)
level04.colliders.Tile4_wallNr2349ID.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.Tile4_wallNr2349ID.collider:SetPos(502.5,35.8052,364.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr2349ID.collider, 3)
level04.colliders.Tile4_wallNr3350ID = {}
level04.colliders.Tile4_wallNr3350ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr3350ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr3350ID.collider:SetZAxis(0.393919,0,0.919145)
level04.colliders.Tile4_wallNr3350ID.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.Tile4_wallNr3350ID.collider:SetPos(502.5,37.0541,372.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr3350ID.collider, 3)
level04.colliders.Tile4_wallNr4351ID = {}
level04.colliders.Tile4_wallNr4351ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr4351ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr4351ID.collider:SetZAxis(0.496139,0,0.868243)
level04.colliders.Tile4_wallNr4351ID.collider:SetHalfLengths(0.3,5.90825,4.03113)
level04.colliders.Tile4_wallNr4351ID.collider:SetPos(506,37.7352,379.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr4351ID.collider, 3)
level04.colliders.Tile4_wallNr5352ID = {}
level04.colliders.Tile4_wallNr5352ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr5352ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr5352ID.collider:SetZAxis(0.178885,0,0.98387)
level04.colliders.Tile4_wallNr5352ID.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.Tile4_wallNr5352ID.collider:SetPos(474,40.2329,303.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr5352ID.collider, 3)
level04.colliders.Tile4_wallNr6353ID = {}
level04.colliders.Tile4_wallNr6353ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr6353ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr6353ID.collider:SetZAxis(-0.106533,0,0.994309)
level04.colliders.Tile4_wallNr6353ID.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.Tile4_wallNr6353ID.collider:SetPos(475.5,42.39,334)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr6353ID.collider, 3)
level04.colliders.Tile4_wallNr7354ID = {}
level04.colliders.Tile4_wallNr7354ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr7354ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr7354ID.collider:SetZAxis(0.0854011,0,0.996347)
level04.colliders.Tile4_wallNr7354ID.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.Tile4_wallNr7354ID.collider:SetPos(475.5,43.9794,365.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr7354ID.collider, 3)
level04.colliders.Tile4_wallNr8355ID = {}
level04.colliders.Tile4_wallNr8355ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr8355ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr8355ID.collider:SetZAxis(-0.613941,0,0.789352)
level04.colliders.Tile4_wallNr8355ID.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.Tile4_wallNr8355ID.collider:SetPos(467.5,40.2329,291.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr8355ID.collider, 3)
level04.colliders.Tile4_wallNr9356ID = {}
level04.colliders.Tile4_wallNr9356ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr9356ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr9356ID.collider:SetZAxis(0.196116,0,0.980581)
level04.colliders.Tile4_wallNr9356ID.collider:SetHalfLengths(0.3,5.68119,10.198)
level04.colliders.Tile4_wallNr9356ID.collider:SetPos(466,50.5642,306)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr9356ID.collider, 3)
level04.colliders.Tile4_wallNr10357ID = {}
level04.colliders.Tile4_wallNr10357ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr10357ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr10357ID.collider:SetZAxis(0.0525588,0,0.998618)
level04.colliders.Tile4_wallNr10357ID.collider:SetHalfLengths(0.3,8.29239,9.51315)
level04.colliders.Tile4_wallNr10357ID.collider:SetPos(468.5,51.2454,325.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr10357ID.collider, 3)
level04.colliders.Tile4_wallNr11358ID = {}
level04.colliders.Tile4_wallNr11358ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr11358ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr11358ID.collider:SetZAxis(0.039968,0,0.999201)
level04.colliders.Tile4_wallNr11358ID.collider:SetHalfLengths(0.3,6.81649,12.51)
level04.colliders.Tile4_wallNr11358ID.collider:SetPos(469.5,54.5378,347.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr11358ID.collider, 3)
level04.colliders.Tile4_wallNr12359ID = {}
level04.colliders.Tile4_wallNr12359ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr12359ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr12359ID.collider:SetZAxis(0,0,1)
level04.colliders.Tile4_wallNr12359ID.collider:SetHalfLengths(0.3,7.49767,11.5)
level04.colliders.Tile4_wallNr12359ID.collider:SetPos(470,56.3543,371.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr12359ID.collider, 3)
level04.colliders.Tile4_wallNr13360ID = {}
level04.colliders.Tile4_wallNr13360ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr13360ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr13360ID.collider:SetZAxis(-1,0,0)
level04.colliders.Tile4_wallNr13360ID.collider:SetHalfLengths(0.3,16.9207,18)
level04.colliders.Tile4_wallNr13360ID.collider:SetPos(453,40.9141,256)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr13360ID.collider, 3)
level04.colliders.Tile4_wallNr14361ID = {}
level04.colliders.Tile4_wallNr14361ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr14361ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr14361ID.collider:SetZAxis(0,0,1)
level04.colliders.Tile4_wallNr14361ID.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.Tile4_wallNr14361ID.collider:SetPos(435,52.8348,263)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr14361ID.collider, 3)
level04.colliders.Tile4_wallNr15362ID = {}
level04.colliders.Tile4_wallNr15362ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr15362ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr15362ID.collider:SetZAxis(0.0738717,0,0.997268)
level04.colliders.Tile4_wallNr15362ID.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.Tile4_wallNr15362ID.collider:SetPos(436,53.9701,283.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr15362ID.collider, 3)
level04.colliders.Tile4_wallNr16363ID = {}
level04.colliders.Tile4_wallNr16363ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr16363ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr16363ID.collider:SetZAxis(0.157991,0,0.987441)
level04.colliders.Tile4_wallNr16363ID.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.Tile4_wallNr16363ID.collider:SetPos(439,55.7866,309.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr16363ID.collider, 3)
level04.colliders.Tile4_wallNr17364ID = {}
level04.colliders.Tile4_wallNr17364ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr17364ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr17364ID.collider:SetZAxis(0.22486,0,0.974391)
level04.colliders.Tile4_wallNr17364ID.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.Tile4_wallNr17364ID.collider:SetPos(442.5,56.1272,328.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr17364ID.collider, 3)
level04.colliders.Tile4_wallNr18365ID = {}
level04.colliders.Tile4_wallNr18365ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr18365ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr18365ID.collider:SetZAxis(0.371391,0,0.928477)
level04.colliders.Tile4_wallNr18365ID.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.Tile4_wallNr18365ID.collider:SetPos(447,57.2625,342.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr18365ID.collider, 3)
level04.colliders.Tile4_wallNr19366ID = {}
level04.colliders.Tile4_wallNr19366ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr19366ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr19366ID.collider:SetZAxis(0.0766965,0,0.997055)
level04.colliders.Tile4_wallNr19366ID.collider:SetHalfLengths(0.3,5.90825,6.5192)
level04.colliders.Tile4_wallNr19366ID.collider:SetPos(450.5,60.2143,356.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr19366ID.collider, 3)
level04.colliders.Tile4_wallNr20367ID = {}
level04.colliders.Tile4_wallNr20367ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr20367ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr20367ID.collider:SetZAxis(0.0995037,0,0.995037)
level04.colliders.Tile4_wallNr20367ID.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.Tile4_wallNr20367ID.collider:SetPos(452,61.1226,373)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr20367ID.collider, 3)
level04.colliders.Tile4_wallNr21368ID = {}
level04.colliders.Tile4_wallNr21368ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr21368ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr21368ID.collider:SetZAxis(1,0,0)
level04.colliders.Tile4_wallNr21368ID.collider:SetHalfLengths(0.3,19.5319,3.5)
level04.colliders.Tile4_wallNr21368ID.collider:SetPos(473.5,58.852,383)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr21368ID.collider, 3)
level04.props.New1447ID = {}
Light.addLight(495.343, 43.5625, 415.697, 0, 1, 1, 100,3)
end
level04.unload = function()
level04.props.tile437ID = nil
Gear.UnbindInstance(level04.props.t4s145ID.transformID)
level04.props.t4s145ID = nil
Gear.UnbindInstance(level04.props.t4s246ID.transformID)
level04.props.t4s246ID = nil
Gear.UnbindInstance(level04.props.t4s347ID.transformID)
level04.props.t4s347ID = nil
Gear.UnbindInstance(level04.props.t4s448ID.transformID)
level04.props.t4s448ID = nil
level04.colliders.Tile4_wallNr347ID = nil
level04.colliders.Tile4_wallNr1348ID = nil
level04.colliders.Tile4_wallNr2349ID = nil
level04.colliders.Tile4_wallNr3350ID = nil
level04.colliders.Tile4_wallNr4351ID = nil
level04.colliders.Tile4_wallNr5352ID = nil
level04.colliders.Tile4_wallNr6353ID = nil
level04.colliders.Tile4_wallNr7354ID = nil
level04.colliders.Tile4_wallNr8355ID = nil
level04.colliders.Tile4_wallNr9356ID = nil
level04.colliders.Tile4_wallNr10357ID = nil
level04.colliders.Tile4_wallNr11358ID = nil
level04.colliders.Tile4_wallNr12359ID = nil
level04.colliders.Tile4_wallNr13360ID = nil
level04.colliders.Tile4_wallNr14361ID = nil
level04.colliders.Tile4_wallNr15362ID = nil
level04.colliders.Tile4_wallNr16363ID = nil
level04.colliders.Tile4_wallNr17364ID = nil
level04.colliders.Tile4_wallNr18365ID = nil
level04.colliders.Tile4_wallNr19366ID = nil
level04.colliders.Tile4_wallNr20367ID = nil
level04.colliders.Tile4_wallNr21368ID = nil
level04.props.New1447ID = nil
level04.props = nil
level04.colliders = nil
level04.triggers = nil
end
levels[4] = level04
-------------------------------------level04-----------------------------------------------


-------------------------------------level05-----------------------------------------------

level05 = {}
level05.surrounding = { 4, 6 }
level05.load = function()
level05.props = {}
level05.colliders = {}
level05.triggers = {}
level05.props.tile538ID = {}
level05.props.t5s149ID = {}
level05.props.t5s149ID.model = Assets.LoadModel('Models/tile5_s1.model')
level05.props.t5s149ID.transformID = Gear.BindStaticInstance(level05.props.t5s149ID.model)
Transform.SetPosition(level05.props.t5s149ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s149ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s149ID.transformID, {x=0, y=0, z=0})
level05.props.t5s250ID = {}
level05.props.t5s250ID.model = Assets.LoadModel('Models/tile5_s2.model')
level05.props.t5s250ID.transformID = Gear.BindStaticInstance(level05.props.t5s250ID.model)
Transform.SetPosition(level05.props.t5s250ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s250ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s250ID.transformID, {x=0, y=0, z=0})
level05.props.t5s351ID = {}
level05.props.t5s351ID.model = Assets.LoadModel('Models/tile5_s3.model')
level05.props.t5s351ID.transformID = Gear.BindStaticInstance(level05.props.t5s351ID.model)
Transform.SetPosition(level05.props.t5s351ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s351ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s351ID.transformID, {x=0, y=0, z=0})
level05.props.t5s452ID = {}
level05.props.t5s452ID.model = Assets.LoadModel('Models/tile5_s4.model')
level05.props.t5s452ID.transformID = Gear.BindStaticInstance(level05.props.t5s452ID.model)
Transform.SetPosition(level05.props.t5s452ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s452ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s452ID.transformID, {x=0, y=0, z=0})
level05.props.t5s553ID = {}
level05.props.t5s553ID.model = Assets.LoadModel('Models/tile5_s5.model')
level05.props.t5s553ID.transformID = Gear.BindStaticInstance(level05.props.t5s553ID.model)
Transform.SetPosition(level05.props.t5s553ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s553ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s553ID.transformID, {x=0, y=0, z=0})
level05.props.t5s654ID = {}
level05.props.t5s654ID.model = Assets.LoadModel('Models/tile5_s6.model')
level05.props.t5s654ID.transformID = Gear.BindStaticInstance(level05.props.t5s654ID.model)
Transform.SetPosition(level05.props.t5s654ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s654ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s654ID.transformID, {x=0, y=0, z=0})
level05.props.t6s458ID = {}
level05.props.t6s458ID.model = Assets.LoadModel('Models/tile6_s4.model')
level05.props.t6s458ID.transformID = Gear.BindStaticInstance(level05.props.t6s458ID.model)
Transform.SetPosition(level05.props.t6s458ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t6s458ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t6s458ID.transformID, {x=0, y=0, z=0})
level05.colliders.Tile5_wallNr445ID = {}
level05.colliders.Tile5_wallNr445ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr445ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr445ID.collider:SetZAxis(0.164399,0,0.986394)
level05.colliders.Tile5_wallNr445ID.collider:SetHalfLengths(0.3,5,3.04138)
level05.colliders.Tile5_wallNr445ID.collider:SetPos(509.5,38.8167,388)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr445ID.collider, 3)
level05.colliders.Tile5_wallNr1446ID = {}
level05.colliders.Tile5_wallNr1446ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr1446ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr1446ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr1446ID.collider:SetHalfLengths(0.3,6.04229,3.53553)
level05.colliders.Tile5_wallNr1446ID.collider:SetPos(510.5,38.8167,394.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr1446ID.collider, 3)
level05.colliders.Tile5_wallNr2448ID = {}
level05.colliders.Tile5_wallNr2448ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr2448ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr2448ID.collider:SetZAxis(0.6,0,0.8)
level05.colliders.Tile5_wallNr2448ID.collider:SetHalfLengths(0.3,9.42971,5)
level05.colliders.Tile5_wallNr2448ID.collider:SetPos(514,39.859,402)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr2448ID.collider, 3)
level05.colliders.Tile5_wallNr3449ID = {}
level05.colliders.Tile5_wallNr3449ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr3449ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr3449ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr3449ID.collider:SetHalfLengths(0.3,9.69028,4.24264)
level05.colliders.Tile5_wallNr3449ID.collider:SetPos(520,44.2887,409)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr3449ID.collider, 3)
level05.colliders.Tile5_wallNr4450ID = {}
level05.colliders.Tile5_wallNr4450ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr4450ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr4450ID.collider:SetZAxis(0.8,0,0.6)
level05.colliders.Tile5_wallNr4450ID.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.Tile5_wallNr4450ID.collider:SetPos(525,48.979,413.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr4450ID.collider, 3)
level05.colliders.Tile5_wallNr5451ID = {}
level05.colliders.Tile5_wallNr5451ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr5451ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr5451ID.collider:SetZAxis(0.880471,0,0.4741)
level05.colliders.Tile5_wallNr5451ID.collider:SetHalfLengths(0.3,5.52114,7.38241)
level05.colliders.Tile5_wallNr5451ID.collider:SetPos(533.5,49.2396,418.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr5451ID.collider, 3)
level05.colliders.Tile5_wallNr6452ID = {}
level05.colliders.Tile5_wallNr6452ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr6452ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr6452ID.collider:SetZAxis(0.923077,0,0.384615)
level05.colliders.Tile5_wallNr6452ID.collider:SetHalfLengths(0.3,6.56343,6.5)
level05.colliders.Tile5_wallNr6452ID.collider:SetPos(546,48.7184,424.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr6452ID.collider, 3)
level05.colliders.Tile5_wallNr7453ID = {}
level05.colliders.Tile5_wallNr7453ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr7453ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr7453ID.collider:SetZAxis(0.933346,0,0.358979)
level05.colliders.Tile5_wallNr7453ID.collider:SetHalfLengths(0.3,7.86628,6.96419)
level05.colliders.Tile5_wallNr7453ID.collider:SetPos(558.5,50.2819,429.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr7453ID.collider, 3)
level05.colliders.Tile5_wallNr8454ID = {}
level05.colliders.Tile5_wallNr8454ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr8454ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr8454ID.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.Tile5_wallNr8454ID.collider:SetHalfLengths(0.3,6.30286,8.74643)
level05.colliders.Tile5_wallNr8454ID.collider:SetPos(572.5,53.1481,436.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr8454ID.collider, 3)
level05.colliders.Tile5_wallNr9455ID = {}
level05.colliders.Tile5_wallNr9455ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr9455ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr9455ID.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.Tile5_wallNr9455ID.collider:SetHalfLengths(0.3,6.824,2.91548)
level05.colliders.Tile5_wallNr9455ID.collider:SetPos(582.5,54.451,442.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr9455ID.collider, 3)
level05.colliders.Tile5_wallNr10456ID = {}
level05.colliders.Tile5_wallNr10456ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr10456ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr10456ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr10456ID.collider:SetHalfLengths(0.3,6.30286,1.41421)
level05.colliders.Tile5_wallNr10456ID.collider:SetPos(586,56.275,445)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr10456ID.collider, 3)
level05.colliders.Tile5_wallNr11457ID = {}
level05.colliders.Tile5_wallNr11457ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr11457ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr11457ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr11457ID.collider:SetHalfLengths(0.3,5.78172,2.23607)
level05.colliders.Tile5_wallNr11457ID.collider:SetPos(588,57.5778,448)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr11457ID.collider, 3)
level05.colliders.Tile5_wallNr12458ID = {}
level05.colliders.Tile5_wallNr12458ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr12458ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr12458ID.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.Tile5_wallNr12458ID.collider:SetHalfLengths(0.3,6.30286,4.92443)
level05.colliders.Tile5_wallNr12458ID.collider:SetPos(591,58.3596,454.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr12458ID.collider, 3)
level05.colliders.Tile5_wallNr13459ID = {}
level05.colliders.Tile5_wallNr13459ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr13459ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr13459ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr13459ID.collider:SetHalfLengths(0.3,6.56343,4.47214)
level05.colliders.Tile5_wallNr13459ID.collider:SetPos(595,59.6624,463)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr13459ID.collider, 3)
level05.colliders.Tile5_wallNr14460ID = {}
level05.colliders.Tile5_wallNr14460ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr14460ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr14460ID.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.Tile5_wallNr14460ID.collider:SetHalfLengths(0.3,8.12685,6.32456)
level05.colliders.Tile5_wallNr14460ID.collider:SetPos(599,61.2258,473)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr14460ID.collider, 3)
level05.colliders.Tile5_wallNr15461ID = {}
level05.colliders.Tile5_wallNr15461ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr15461ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr15461ID.collider:SetZAxis(0.341743,0,0.939793)
level05.colliders.Tile5_wallNr15461ID.collider:SetHalfLengths(0.3,11.2537,11.7047)
level05.colliders.Tile5_wallNr15461ID.collider:SetPos(605,64.3527,490)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr15461ID.collider, 3)
level05.colliders.Tile5_wallNr16462ID = {}
level05.colliders.Tile5_wallNr16462ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr16462ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr16462ID.collider:SetZAxis(0.066519,0,0.997785)
level05.colliders.Tile5_wallNr16462ID.collider:SetHalfLengths(0.3,7.86629,7.51665)
level05.colliders.Tile5_wallNr16462ID.collider:SetPos(609.5,70.6064,508.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr16462ID.collider, 3)
level05.colliders.Tile5_wallNr17463ID = {}
level05.colliders.Tile5_wallNr17463ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr17463ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr17463ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr17463ID.collider:SetHalfLengths(0.3,7.34514,9)
level05.colliders.Tile5_wallNr17463ID.collider:SetPos(610,73.4727,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr17463ID.collider, 3)
level05.colliders.Tile5_wallNr18464ID = {}
level05.colliders.Tile5_wallNr18464ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr18464ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr18464ID.collider:SetZAxis(0.0830455,0,0.996546)
level05.colliders.Tile5_wallNr18464ID.collider:SetHalfLengths(0.3,9.69028,12.0416)
level05.colliders.Tile5_wallNr18464ID.collider:SetPos(611,75.8178,546)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr18464ID.collider, 3)
level05.colliders.Tile5_wallNr19465ID = {}
level05.colliders.Tile5_wallNr19465ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr19465ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr19465ID.collider:SetZAxis(0.0738717,0,0.997268)
level05.colliders.Tile5_wallNr19465ID.collider:SetHalfLengths(0.3,9.42972,13.537)
level05.colliders.Tile5_wallNr19465ID.collider:SetPos(613,80.5081,571.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr19465ID.collider, 3)
level05.colliders.Tile5_wallNr20466ID = {}
level05.colliders.Tile5_wallNr20466ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr20466ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr20466ID.collider:SetZAxis(0.242536,0,0.970143)
level05.colliders.Tile5_wallNr20466ID.collider:SetHalfLengths(0.3,5.52113,2.06155)
level05.colliders.Tile5_wallNr20466ID.collider:SetPos(614.5,84.9378,587)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr20466ID.collider, 3)
level05.colliders.Tile5_wallNr21467ID = {}
level05.colliders.Tile5_wallNr21467ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr21467ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr21467ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr21467ID.collider:SetHalfLengths(0.3,5.78172,1.11803)
level05.colliders.Tile5_wallNr21467ID.collider:SetPos(615.5,85.459,590)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr21467ID.collider, 3)
level05.colliders.Tile5_wallNr22468ID = {}
level05.colliders.Tile5_wallNr22468ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr22468ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr22468ID.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.Tile5_wallNr22468ID.collider:SetHalfLengths(0.3,5.52114,1.11803)
level05.colliders.Tile5_wallNr22468ID.collider:SetPos(617,86.2407,591.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr22468ID.collider, 3)
level05.colliders.Tile5_wallNr23469ID = {}
level05.colliders.Tile5_wallNr23469ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr23469ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr23469ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr23469ID.collider:SetHalfLengths(0.3,5.26057,11)
level05.colliders.Tile5_wallNr23469ID.collider:SetPos(629,86.7618,592)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr23469ID.collider, 3)
level05.colliders.Tile5_wallNr24470ID = {}
level05.colliders.Tile5_wallNr24470ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr24470ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr24470ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr24470ID.collider:SetHalfLengths(0.3,5,16)
level05.colliders.Tile5_wallNr24470ID.collider:SetPos(640,86.5012,608)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr24470ID.collider, 3)
level05.colliders.Tile5_wallNr25471ID = {}
level05.colliders.Tile5_wallNr25471ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr25471ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr25471ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr25471ID.collider:SetHalfLengths(0.3,5.52114,2.82843)
level05.colliders.Tile5_wallNr25471ID.collider:SetPos(638,86.5012,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr25471ID.collider, 3)
level05.colliders.Tile5_wallNr26472ID = {}
level05.colliders.Tile5_wallNr26472ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr26472ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr26472ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr26472ID.collider:SetHalfLengths(0.3,5.26057,2.82843)
level05.colliders.Tile5_wallNr26472ID.collider:SetPos(634,87.0224,630)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr26472ID.collider, 3)
level05.colliders.Tile5_wallNr27473ID = {}
level05.colliders.Tile5_wallNr27473ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr27473ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr27473ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr27473ID.collider:SetHalfLengths(0.3,5.26057,4.94975)
level05.colliders.Tile5_wallNr27473ID.collider:SetPos(628.5,86.7618,635.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr27473ID.collider, 3)
level05.colliders.Tile5_wallNr28474ID = {}
level05.colliders.Tile5_wallNr28474ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr28474ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr28474ID.collider:SetZAxis(-1,0,0)
level05.colliders.Tile5_wallNr28474ID.collider:SetHalfLengths(0.3,6.04229,5.5)
level05.colliders.Tile5_wallNr28474ID.collider:SetPos(619.5,86.5012,639)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr28474ID.collider, 3)
level05.colliders.Tile5_wallNr29475ID = {}
level05.colliders.Tile5_wallNr29475ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr29475ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr29475ID.collider:SetZAxis(-0.196116,0,-0.980581)
level05.colliders.Tile5_wallNr29475ID.collider:SetHalfLengths(0.3,5.26056,2.54951)
level05.colliders.Tile5_wallNr29475ID.collider:SetPos(613.5,85.459,636.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr29475ID.collider, 3)
level05.colliders.Tile5_wallNr30476ID = {}
level05.colliders.Tile5_wallNr30476ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr30476ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr30476ID.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr30476ID.collider:SetHalfLengths(0.3,5.26057,3.3541)
level05.colliders.Tile5_wallNr30476ID.collider:SetPos(611.5,85.1984,631)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr30476ID.collider, 3)
level05.colliders.Tile5_wallNr31477ID = {}
level05.colliders.Tile5_wallNr31477ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr31477ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr31477ID.collider:SetZAxis(-0.780869,0,-0.624695)
level05.colliders.Tile5_wallNr31477ID.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.Tile5_wallNr31477ID.collider:SetPos(607.5,84.9378,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr31477ID.collider, 3)
level05.colliders.Tile5_wallNr32478ID = {}
level05.colliders.Tile5_wallNr32478ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr32478ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr32478ID.collider:SetZAxis(-0.928477,0,-0.371391)
level05.colliders.Tile5_wallNr32478ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr32478ID.collider:SetPos(602.5,84.9378,623)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr32478ID.collider, 3)
level05.colliders.Tile5_wallNr33479ID = {}
level05.colliders.Tile5_wallNr33479ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr33479ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr33479ID.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.Tile5_wallNr33479ID.collider:SetHalfLengths(0.3,5,4.03113)
level05.colliders.Tile5_wallNr33479ID.collider:SetPos(596,84.9378,622.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr33479ID.collider, 3)
level05.colliders.Tile5_wallNr34480ID = {}
level05.colliders.Tile5_wallNr34480ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr34480ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr34480ID.collider:SetZAxis(-0.919145,0,0.393919)
level05.colliders.Tile5_wallNr34480ID.collider:SetHalfLengths(0.3,5,3.80789)
level05.colliders.Tile5_wallNr34480ID.collider:SetPos(588.5,84.9378,624.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr34480ID.collider, 3)
level05.colliders.Tile5_wallNr35481ID = {}
level05.colliders.Tile5_wallNr35481ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr35481ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr35481ID.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.Tile5_wallNr35481ID.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.Tile5_wallNr35481ID.collider:SetPos(582.5,84.9378,628)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr35481ID.collider, 3)
level05.colliders.Tile5_wallNr36482ID = {}
level05.colliders.Tile5_wallNr36482ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr36482ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr36482ID.collider:SetZAxis(-0.371391,0,0.928477)
level05.colliders.Tile5_wallNr36482ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr36482ID.collider:SetPos(579,84.9378,632.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr36482ID.collider, 3)
level05.colliders.Tile5_wallNr37483ID = {}
level05.colliders.Tile5_wallNr37483ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr37483ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr37483ID.collider:SetZAxis(-0.242536,0,0.970143)
level05.colliders.Tile5_wallNr37483ID.collider:SetHalfLengths(0.3,5,2.06155)
level05.colliders.Tile5_wallNr37483ID.collider:SetPos(577.5,84.9378,637)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr37483ID.collider, 3)
level05.colliders.Tile5_wallNr38484ID = {}
level05.colliders.Tile5_wallNr38484ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr38484ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr38484ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr38484ID.collider:SetHalfLengths(0.3,10.472,9.5)
level05.colliders.Tile5_wallNr38484ID.collider:SetPos(505.5,43.2464,446)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr38484ID.collider, 3)
level05.colliders.Tile5_wallNr39485ID = {}
level05.colliders.Tile5_wallNr39485ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr39485ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr39485ID.collider:SetZAxis(0.992278,0,0.124035)
level05.colliders.Tile5_wallNr39485ID.collider:SetHalfLengths(0.3,7.08457,4.03113)
level05.colliders.Tile5_wallNr39485ID.collider:SetPos(519,48.7184,446.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr39485ID.collider, 3)
level05.colliders.Tile5_wallNr40486ID = {}
level05.colliders.Tile5_wallNr40486ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr40486ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr40486ID.collider:SetZAxis(0.871576,0,0.490261)
level05.colliders.Tile5_wallNr40486ID.collider:SetHalfLengths(0.3,9.69028,9.17878)
level05.colliders.Tile5_wallNr40486ID.collider:SetPos(531,50.803,451.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr40486ID.collider, 3)
level05.colliders.Tile5_wallNr41487ID = {}
level05.colliders.Tile5_wallNr41487ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr41487ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr41487ID.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.Tile5_wallNr41487ID.collider:SetHalfLengths(0.3,8.90857,9.01388)
level05.colliders.Tile5_wallNr41487ID.collider:SetPos(546.5,55.4933,461)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr41487ID.collider, 3)
level05.colliders.Tile5_wallNr42488ID = {}
level05.colliders.Tile5_wallNr42488ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr42488ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr42488ID.collider:SetZAxis(0.481919,0,0.876216)
level05.colliders.Tile5_wallNr42488ID.collider:SetHalfLengths(0.3,12.5566,11.4127)
level05.colliders.Tile5_wallNr42488ID.collider:SetPos(559.5,59.4018,476)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr42488ID.collider, 3)
level05.colliders.Tile5_wallNr43489ID = {}
level05.colliders.Tile5_wallNr43489ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr43489ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr43489ID.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.Tile5_wallNr43489ID.collider:SetHalfLengths(0.3,8.12685,4.92443)
level05.colliders.Tile5_wallNr43489ID.collider:SetPos(567,66.9584,490.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr43489ID.collider, 3)
level05.colliders.Tile5_wallNr44490ID = {}
level05.colliders.Tile5_wallNr44490ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr44490ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr44490ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr44490ID.collider:SetHalfLengths(0.3,7.34515,6.7082)
level05.colliders.Tile5_wallNr44490ID.collider:SetPos(572,70.0853,501)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr44490ID.collider, 3)
level05.colliders.Tile5_wallNr45491ID = {}
level05.colliders.Tile5_wallNr45491ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr45491ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr45491ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr45491ID.collider:SetHalfLengths(0.3,10.2114,14.1421)
level05.colliders.Tile5_wallNr45491ID.collider:SetPos(577,72.4304,521)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr45491ID.collider, 3)
level05.colliders.Tile5_wallNr46492ID = {}
level05.colliders.Tile5_wallNr46492ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr46492ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr46492ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr46492ID.collider:SetHalfLengths(0.3,10.2114,17.6777)
level05.colliders.Tile5_wallNr46492ID.collider:SetPos(581.5,77.6418,552.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr46492ID.collider, 3)
level05.colliders.Tile5_wallNr47493ID = {}
level05.colliders.Tile5_wallNr47493ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr47493ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr47493ID.collider:SetZAxis(-0.393919,0,0.919145)
level05.colliders.Tile5_wallNr47493ID.collider:SetHalfLengths(0.3,7.08458,3.80789)
level05.colliders.Tile5_wallNr47493ID.collider:SetPos(582.5,82.8532,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr47493ID.collider, 3)
level05.colliders.Tile5_wallNr48494ID = {}
level05.colliders.Tile5_wallNr48494ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr48494ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr48494ID.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.Tile5_wallNr48494ID.collider:SetHalfLengths(0.3,6.04228,1.80278)
level05.colliders.Tile5_wallNr48494ID.collider:SetPos(579.5,84.9378,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr48494ID.collider, 3)
level05.colliders.Tile5_wallNr49495ID = {}
level05.colliders.Tile5_wallNr49495ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr49495ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr49495ID.collider:SetZAxis(-1,0,0)
level05.colliders.Tile5_wallNr49495ID.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.Tile5_wallNr49495ID.collider:SetPos(575.5,85.9801,579)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr49495ID.collider, 3)
level05.colliders.Tile5_wallNr50496ID = {}
level05.colliders.Tile5_wallNr50496ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr50496ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr50496ID.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr50496ID.collider:SetHalfLengths(0.3,7.08457,1.41421)
level05.colliders.Tile5_wallNr50496ID.collider:SetPos(572,85.7195,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr50496ID.collider, 3)
level05.colliders.Tile5_wallNr51497ID = {}
level05.colliders.Tile5_wallNr51497ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr51497ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr51497ID.collider:SetZAxis(0.141421,0,-0.98995)
level05.colliders.Tile5_wallNr51497ID.collider:SetHalfLengths(0.3,10.472,3.53553)
level05.colliders.Tile5_wallNr51497ID.collider:SetPos(571.5,87.8041,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr51497ID.collider, 3)
level05.colliders.Tile5_wallNr52498ID = {}
level05.colliders.Tile5_wallNr52498ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr52498ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr52498ID.collider:SetZAxis(-0.609711,0,-0.792624)
level05.colliders.Tile5_wallNr52498ID.collider:SetHalfLengths(0.3,12.8171,8.20061)
level05.colliders.Tile5_wallNr52498ID.collider:SetPos(567,93.2761,563.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr52498ID.collider, 3)
level05.colliders.Tile5_wallNr53499ID = {}
level05.colliders.Tile5_wallNr53499ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr53499ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr53499ID.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.Tile5_wallNr53499ID.collider:SetHalfLengths(0.3,11.2537,7.28011)
level05.colliders.Tile5_wallNr53499ID.collider:SetPos(560,85.459,550)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr53499ID.collider, 3)
level05.colliders.Tile5_wallNr54500ID = {}
level05.colliders.Tile5_wallNr54500ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr54500ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr54500ID.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr54500ID.collider:SetHalfLengths(0.3,9.95086,6.7082)
level05.colliders.Tile5_wallNr54500ID.collider:SetPos(555,79.2053,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr54500ID.collider, 3)
level05.colliders.Tile5_wallNr55501ID = {}
level05.colliders.Tile5_wallNr55501ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr55501ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr55501ID.collider:SetZAxis(-0.5547,0,-0.83205)
level05.colliders.Tile5_wallNr55501ID.collider:SetHalfLengths(0.3,8.12685,7.2111)
level05.colliders.Tile5_wallNr55501ID.collider:SetPos(548,74.2544,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr55501ID.collider, 3)
level05.colliders.Tile5_wallNr56502ID = {}
level05.colliders.Tile5_wallNr56502ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr56502ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr56502ID.collider:SetZAxis(-0.73994,0,-0.672673)
level05.colliders.Tile5_wallNr56502ID.collider:SetHalfLengths(0.3,8.38743,7.43303)
level05.colliders.Tile5_wallNr56502ID.collider:SetPos(538.5,71.1275,514)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr56502ID.collider, 3)
level05.colliders.Tile5_wallNr57503ID = {}
level05.colliders.Tile5_wallNr57503ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr57503ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr57503ID.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.Tile5_wallNr57503ID.collider:SetHalfLengths(0.3,6.04229,4.03113)
level05.colliders.Tile5_wallNr57503ID.collider:SetPos(529,67.7401,508.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr57503ID.collider, 3)
level05.colliders.Tile5_wallNr58504ID = {}
level05.colliders.Tile5_wallNr58504ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr58504ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr58504ID.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.Tile5_wallNr58504ID.collider:SetHalfLengths(0.3,6.04228,4.03113)
level05.colliders.Tile5_wallNr58504ID.collider:SetPos(521,66.6978,507.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr58504ID.collider, 3)
level05.colliders.Tile5_wallNr59505ID = {}
level05.colliders.Tile5_wallNr59505ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr59505ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr59505ID.collider:SetZAxis(-0.996546,0,-0.0830455)
level05.colliders.Tile5_wallNr59505ID.collider:SetHalfLengths(0.3,6.30286,6.0208)
level05.colliders.Tile5_wallNr59505ID.collider:SetPos(511,65.6555,506.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr59505ID.collider, 3)
level05.colliders.Tile5_wallNr60506ID = {}
level05.colliders.Tile5_wallNr60506ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr60506ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr60506ID.collider:SetZAxis(-0.986394,0,-0.164399)
level05.colliders.Tile5_wallNr60506ID.collider:SetHalfLengths(0.3,5.26057,6.08276)
level05.colliders.Tile5_wallNr60506ID.collider:SetPos(499,64.3527,505)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr60506ID.collider, 3)
level05.colliders.Tile5_wallNr61507ID = {}
level05.colliders.Tile5_wallNr61507ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr61507ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr61507ID.collider:SetZAxis(-0.955779,0,-0.294086)
level05.colliders.Tile5_wallNr61507ID.collider:SetHalfLengths(0.3,5.26057,6.80074)
level05.colliders.Tile5_wallNr61507ID.collider:SetPos(486.5,64.6133,502)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr61507ID.collider, 3)
level05.colliders.Tile5_wallNr62508ID = {}
level05.colliders.Tile5_wallNr62508ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr62508ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr62508ID.collider:SetZAxis(-0.874157,0,-0.485643)
level05.colliders.Tile5_wallNr62508ID.collider:SetHalfLengths(0.3,6.30285,10.2956)
level05.colliders.Tile5_wallNr62508ID.collider:SetPos(471,64.3527,495)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr62508ID.collider, 3)
level05.colliders.Tile5_wallNr63509ID = {}
level05.colliders.Tile5_wallNr63509ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr63509ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr63509ID.collider:SetZAxis(-0.650791,0,-0.759257)
level05.colliders.Tile5_wallNr63509ID.collider:SetHalfLengths(0.3,5.78171,4.60977)
level05.colliders.Tile5_wallNr63509ID.collider:SetPos(459,63.0498,486.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr63509ID.collider, 3)
level05.colliders.Tile5_wallNr64510ID = {}
level05.colliders.Tile5_wallNr64510ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr64510ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr64510ID.collider:SetZAxis(-0.529999,0,-0.847998)
level05.colliders.Tile5_wallNr64510ID.collider:SetHalfLengths(0.3,5.52114,4.71699)
level05.colliders.Tile5_wallNr64510ID.collider:SetPos(453.5,63.8316,479)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr64510ID.collider, 3)
level05.colliders.Tile5_wallNr65511ID = {}
level05.colliders.Tile5_wallNr65511ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr65511ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr65511ID.collider:SetZAxis(-0.242536,0,-0.970143)
level05.colliders.Tile5_wallNr65511ID.collider:SetHalfLengths(0.3,6.04228,2.06155)
level05.colliders.Tile5_wallNr65511ID.collider:SetPos(450.5,63.3104,473)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr65511ID.collider, 3)
level05.colliders.Tile5_wallNr66512ID = {}
level05.colliders.Tile5_wallNr66512ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr66512ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr66512ID.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.Tile5_wallNr66512ID.collider:SetHalfLengths(0.3,5.78172,2.06155)
level05.colliders.Tile5_wallNr66512ID.collider:SetPos(450.5,62.2681,469)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr66512ID.collider, 3)
level05.colliders.Tile5_wallNr67513ID = {}
level05.colliders.Tile5_wallNr67513ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr67513ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr67513ID.collider:SetZAxis(0.6,0,-0.8)
level05.colliders.Tile5_wallNr67513ID.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.Tile5_wallNr67513ID.collider:SetPos(452.5,61.4864,465)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr67513ID.collider, 3)
level05.colliders.Tile5_wallNr68514ID = {}
level05.colliders.Tile5_wallNr68514ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr68514ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr68514ID.collider:SetZAxis(0.928477,0,-0.371391)
level05.colliders.Tile5_wallNr68514ID.collider:SetHalfLengths(0.3,7.08457,2.69258)
level05.colliders.Tile5_wallNr68514ID.collider:SetPos(456.5,59.1413,462)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr68514ID.collider, 3)
level05.colliders.Tile5_wallNr69515ID = {}
level05.colliders.Tile5_wallNr69515ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr69515ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr69515ID.collider:SetZAxis(0.980581,0,-0.196116)
level05.colliders.Tile5_wallNr69515ID.collider:SetHalfLengths(0.3,7.60571,2.54951)
level05.colliders.Tile5_wallNr69515ID.collider:SetPos(461.5,57.0567,460.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr69515ID.collider, 3)
level05.colliders.Tile5_wallNr70516ID = {}
level05.colliders.Tile5_wallNr70516ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr70516ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr70516ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr70516ID.collider:SetHalfLengths(0.3,7.60571,2.5)
level05.colliders.Tile5_wallNr70516ID.collider:SetPos(466.5,54.451,460)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr70516ID.collider, 3)
level05.colliders.Tile5_wallNr71517ID = {}
level05.colliders.Tile5_wallNr71517ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr71517ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr71517ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr71517ID.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.Tile5_wallNr71517ID.collider:SetPos(471.5,51.8453,460)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr71517ID.collider, 3)
level05.colliders.Tile5_wallNr72518ID = {}
level05.colliders.Tile5_wallNr72518ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr72518ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr72518ID.collider:SetZAxis(0.970143,0,-0.242536)
level05.colliders.Tile5_wallNr72518ID.collider:SetHalfLengths(0.3,6.04229,2.06155)
level05.colliders.Tile5_wallNr72518ID.collider:SetPos(476,49.5001,459.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr72518ID.collider, 3)
level05.colliders.Tile5_wallNr73519ID = {}
level05.colliders.Tile5_wallNr73519ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr73519ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr73519ID.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.Tile5_wallNr73519ID.collider:SetHalfLengths(0.3,6.30285,2.91548)
level05.colliders.Tile5_wallNr73519ID.collider:SetPos(480.5,48.4579,457.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr73519ID.collider, 3)
level05.colliders.Tile5_wallNr74520ID = {}
level05.colliders.Tile5_wallNr74520ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr74520ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr74520ID.collider:SetZAxis(0.780869,0,-0.624695)
level05.colliders.Tile5_wallNr74520ID.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.Tile5_wallNr74520ID.collider:SetPos(485.5,47.155,454)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr74520ID.collider, 3)
level05.colliders.Tile5_wallNr75521ID = {}
level05.colliders.Tile5_wallNr75521ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr75521ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr75521ID.collider:SetZAxis(0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr75521ID.collider:SetHalfLengths(0.3,6.30285,2.12132)
level05.colliders.Tile5_wallNr75521ID.collider:SetPos(489.5,45.5916,450.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr75521ID.collider, 3)
level05.colliders.Tile5_wallNr76522ID = {}
level05.colliders.Tile5_wallNr76522ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr76522ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr76522ID.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.Tile5_wallNr76522ID.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.Tile5_wallNr76522ID.collider:SetPos(493.5,44.2887,447.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr76522ID.collider, 3)
level05.colliders.Tile5_wallNr77523ID = {}
level05.colliders.Tile5_wallNr77523ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr77523ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr77523ID.collider:SetZAxis(0.274721,0,0.961524)
level05.colliders.Tile5_wallNr77523ID.collider:SetHalfLengths(0.3,5.52114,3.64005)
level05.colliders.Tile5_wallNr77523ID.collider:SetPos(454,65.395,388.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr77523ID.collider, 3)
level05.colliders.Tile5_wallNr78524ID = {}
level05.colliders.Tile5_wallNr78524ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr78524ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr78524ID.collider:SetZAxis(-0.164399,0,0.986394)
level05.colliders.Tile5_wallNr78524ID.collider:SetHalfLengths(0.3,7.34514,3.04138)
level05.colliders.Tile5_wallNr78524ID.collider:SetPos(454.5,64.8738,395)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr78524ID.collider, 3)
level05.colliders.Tile5_wallNr79525ID = {}
level05.colliders.Tile5_wallNr79525ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr79525ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr79525ID.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.Tile5_wallNr79525ID.collider:SetHalfLengths(0.3,8.12685,3.16228)
level05.colliders.Tile5_wallNr79525ID.collider:SetPos(451,67.219,399)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr79525ID.collider, 3)
level05.colliders.Tile5_wallNr80526ID = {}
level05.colliders.Tile5_wallNr80526ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr80526ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr80526ID.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.Tile5_wallNr80526ID.collider:SetHalfLengths(0.3,7.08457,4.12311)
level05.colliders.Tile5_wallNr80526ID.collider:SetPos(444,70.3458,401)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr80526ID.collider, 3)
level05.colliders.Tile5_wallNr81527ID = {}
level05.colliders.Tile5_wallNr81527ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr81527ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr81527ID.collider:SetZAxis(-0.964764,0,0.263117)
level05.colliders.Tile5_wallNr81527ID.collider:SetHalfLengths(0.3,7.08456,5.70088)
level05.colliders.Tile5_wallNr81527ID.collider:SetPos(434.5,72.4304,403.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr81527ID.collider, 3)
level05.colliders.Tile5_wallNr82528ID = {}
level05.colliders.Tile5_wallNr82528ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr82528ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr82528ID.collider:SetZAxis(-0.819232,0,0.573462)
level05.colliders.Tile5_wallNr82528ID.collider:SetHalfLengths(0.3,7.34514,6.10328)
level05.colliders.Tile5_wallNr82528ID.collider:SetPos(424,74.515,408.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr82528ID.collider, 3)
level05.colliders.Tile5_wallNr83529ID = {}
level05.colliders.Tile5_wallNr83529ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr83529ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr83529ID.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.Tile5_wallNr83529ID.collider:SetHalfLengths(0.3,6.30286,3.20156)
level05.colliders.Tile5_wallNr83529ID.collider:SetPos(416.5,76.8601,414)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr83529ID.collider, 3)
level05.colliders.Tile5_wallNr84530ID = {}
level05.colliders.Tile5_wallNr84530ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr84530ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr84530ID.collider:SetZAxis(-0.98995,0,0.141421)
level05.colliders.Tile5_wallNr84530ID.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.Tile5_wallNr84530ID.collider:SetPos(410.5,78.163,416.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr84530ID.collider, 3)
level05.colliders.Tile5_wallNr85531ID = {}
level05.colliders.Tile5_wallNr85531ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr85531ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr85531ID.collider:SetZAxis(-0.254493,0,0.967075)
level05.colliders.Tile5_wallNr85531ID.collider:SetHalfLengths(0.3,5,9.82344)
level05.colliders.Tile5_wallNr85531ID.collider:SetPos(404.5,78.163,426.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr85531ID.collider, 3)
level05.colliders.Tile5_wallNr86532ID = {}
level05.colliders.Tile5_wallNr86532ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr86532ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr86532ID.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.Tile5_wallNr86532ID.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.Tile5_wallNr86532ID.collider:SetPos(403.5,78.163,436.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr86532ID.collider, 3)
level05.colliders.Tile5_wallNr87533ID = {}
level05.colliders.Tile5_wallNr87533ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr87533ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr87533ID.collider:SetZAxis(0.0340711,0,0.999419)
level05.colliders.Tile5_wallNr87533ID.collider:SetHalfLengths(0.3,9.95084,44.0256)
level05.colliders.Tile5_wallNr87533ID.collider:SetPos(406.5,77.9024,481)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr87533ID.collider, 3)
level05.colliders.Tile5_wallNr88534ID = {}
level05.colliders.Tile5_wallNr88534ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr88534ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr88534ID.collider:SetZAxis(0.104685,0,0.994505)
level05.colliders.Tile5_wallNr88534ID.collider:SetHalfLengths(0.3,8.38743,9.55249)
level05.colliders.Tile5_wallNr88534ID.collider:SetPos(478,45.5916,394.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr88534ID.collider, 3)
level05.colliders.Tile5_wallNr89535ID = {}
level05.colliders.Tile5_wallNr89535ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr89535ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr89535ID.collider:SetZAxis(-0.05547,0,0.99846)
level05.colliders.Tile5_wallNr89535ID.collider:SetHalfLengths(0.3,5.26057,9.01388)
level05.colliders.Tile5_wallNr89535ID.collider:SetPos(469.5,59.4018,394)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr89535ID.collider, 3)
level05.colliders.Tile5_wallNr90536ID = {}
level05.colliders.Tile5_wallNr90536ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr90536ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr90536ID.collider:SetZAxis(0.773957,0,0.633238)
level05.colliders.Tile5_wallNr90536ID.collider:SetHalfLengths(0.3,15.6834,7.10634)
level05.colliders.Tile5_wallNr90536ID.collider:SetPos(474.5,59.1413,407.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr90536ID.collider, 3)
level05.colliders.Tile5_wallNr91537ID = {}
level05.colliders.Tile5_wallNr91537ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr91537ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr91537ID.collider:SetZAxis(-0.124035,0,-0.992278)
level05.colliders.Tile5_wallNr91537ID.collider:SetHalfLengths(0.3,5.52114,4.03113)
level05.colliders.Tile5_wallNr91537ID.collider:SetPos(479.5,48.4579,408)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr91537ID.collider, 3)
level05.colliders.Tile5_wallNr92538ID = {}
level05.colliders.Tile5_wallNr92538ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr92538ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr92538ID.collider:SetZAxis(0.0224662,0,0.999748)
level05.colliders.Tile5_wallNr92538ID.collider:SetHalfLengths(0.3,11.2537,44.5112)
level05.colliders.Tile5_wallNr92538ID.collider:SetPos(420,76.339,480.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr92538ID.collider, 3)
level05.colliders.Tile5_wallNr93539ID = {}
level05.colliders.Tile5_wallNr93539ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr93539ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr93539ID.collider:SetZAxis(0.630593,0,-0.776114)
level05.colliders.Tile5_wallNr93539ID.collider:SetHalfLengths(0.3,25.8457,10.3078)
level05.colliders.Tile5_wallNr93539ID.collider:SetPos(427.5,82.5927,517)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr93539ID.collider, 3)
level05.colliders.Tile5_wallNr94540ID = {}
level05.colliders.Tile5_wallNr94540ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr94540ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr94540ID.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.Tile5_wallNr94540ID.collider:SetHalfLengths(0.3,6.824,6.08276)
level05.colliders.Tile5_wallNr94540ID.collider:SetPos(428,61.747,510)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr94540ID.collider, 3)
level05.colliders.Tile5_wallNr95541ID = {}
level05.colliders.Tile5_wallNr95541ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr95541ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr95541ID.collider:SetZAxis(-0.0298375,0,-0.999555)
level05.colliders.Tile5_wallNr95541ID.collider:SetHalfLengths(0.3,5.26057,33.5149)
level05.colliders.Tile5_wallNr95541ID.collider:SetPos(421,59.923,477.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr95541ID.collider, 3)
level05.colliders.Tile5_wallNr96542ID = {}
level05.colliders.Tile5_wallNr96542ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr96542ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr96542ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr96542ID.collider:SetHalfLengths(0.3,5.78172,2.5)
level05.colliders.Tile5_wallNr96542ID.collider:SetPos(422.5,59.6624,444)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr96542ID.collider, 3)
level05.colliders.Tile5_wallNr97543ID = {}
level05.colliders.Tile5_wallNr97543ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr97543ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr97543ID.collider:SetZAxis(0.393919,0,-0.919145)
level05.colliders.Tile5_wallNr97543ID.collider:SetHalfLengths(0.3,5.26057,3.80789)
level05.colliders.Tile5_wallNr97543ID.collider:SetPos(426.5,60.4441,440.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr97543ID.collider, 3)
level05.colliders.Tile5_wallNr98544ID = {}
level05.colliders.Tile5_wallNr98544ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr98544ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr98544ID.collider:SetZAxis(0.789352,0,-0.613941)
level05.colliders.Tile5_wallNr98544ID.collider:SetHalfLengths(0.3,8.12685,5.70088)
level05.colliders.Tile5_wallNr98544ID.collider:SetPos(432.5,60.1836,433.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr98544ID.collider, 3)
level05.colliders.Tile5_wallNr99545ID = {}
level05.colliders.Tile5_wallNr99545ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr99545ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr99545ID.collider:SetZAxis(0.923077,0,-0.384615)
level05.colliders.Tile5_wallNr99545ID.collider:SetHalfLengths(0.3,5.26057,6.5)
level05.colliders.Tile5_wallNr99545ID.collider:SetPos(443,63.3104,427.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr99545ID.collider, 3)
level05.colliders.Tile5_wallNr100546ID = {}
level05.colliders.Tile5_wallNr100546ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr100546ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr100546ID.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.Tile5_wallNr100546ID.collider:SetHalfLengths(0.3,6.56343,1.80278)
level05.colliders.Tile5_wallNr100546ID.collider:SetPos(450,63.0498,423.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr100546ID.collider, 3)
level05.colliders.Tile5_wallNr101547ID = {}
level05.colliders.Tile5_wallNr101547ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr101547ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr101547ID.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.Tile5_wallNr101547ID.collider:SetHalfLengths(0.3,10.7326,4.03113)
level05.colliders.Tile5_wallNr101547ID.collider:SetPos(447,64.6133,422.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr101547ID.collider, 3)
level05.colliders.Tile5_wallNr102548ID = {}
level05.colliders.Tile5_wallNr102548ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr102548ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr102548ID.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.Tile5_wallNr102548ID.collider:SetHalfLengths(0.3,8.64799,3.04138)
level05.colliders.Tile5_wallNr102548ID.collider:SetPos(440,70.3458,423.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr102548ID.collider, 3)
level05.colliders.Tile5_wallNr103549ID = {}
level05.colliders.Tile5_wallNr103549ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr103549ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr103549ID.collider:SetZAxis(-0.874157,0,0.485643)
level05.colliders.Tile5_wallNr103549ID.collider:SetHalfLengths(0.3,7.60571,5.14782)
level05.colliders.Tile5_wallNr103549ID.collider:SetPos(432.5,73.9938,426.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr103549ID.collider, 3)
level05.colliders.Tile5_wallNr104550ID = {}
level05.colliders.Tile5_wallNr104550ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr104550ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr104550ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr104550ID.collider:SetHalfLengths(0.3,5.26057,4.24264)
level05.colliders.Tile5_wallNr104550ID.collider:SetPos(425,76.5995,432)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr104550ID.collider, 3)
level05.colliders.Tile5_wallNr105551ID = {}
level05.colliders.Tile5_wallNr105551ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr105551ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr105551ID.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.Tile5_wallNr105551ID.collider:SetHalfLengths(0.3,5.52113,1.58114)
level05.colliders.Tile5_wallNr105551ID.collider:SetPos(420.5,76.8601,435.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr105551ID.collider, 3)
level05.colliders.Tile5_wallNr106552ID = {}
level05.colliders.Tile5_wallNr106552ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr106552ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr106552ID.collider:SetZAxis(-1,0,0)
level05.colliders.Tile5_wallNr106552ID.collider:SetHalfLengths(0.3,7.08456,3)
level05.colliders.Tile5_wallNr106552ID.collider:SetPos(405,82.8532,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr106552ID.collider, 3)
level05.colliders.Tile5_wallNr107553ID = {}
level05.colliders.Tile5_wallNr107553ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr107553ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr107553ID.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.Tile5_wallNr107553ID.collider:SetHalfLengths(0.3,5.52114,1.80278)
level05.colliders.Tile5_wallNr107553ID.collider:SetPos(400.5,80.7687,526)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr107553ID.collider, 3)
level05.colliders.Tile5_wallNr108554ID = {}
level05.colliders.Tile5_wallNr108554ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr108554ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr108554ID.collider:SetZAxis(-0.514496,0,0.857493)
level05.colliders.Tile5_wallNr108554ID.collider:SetHalfLengths(0.3,5,2.91548)
level05.colliders.Tile5_wallNr108554ID.collider:SetPos(397.5,80.2475,529.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr108554ID.collider, 3)
level05.colliders.Tile5_wallNr109555ID = {}
level05.colliders.Tile5_wallNr109555ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr109555ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr109555ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr109555ID.collider:SetHalfLengths(0.3,5.52114,4.5)
level05.colliders.Tile5_wallNr109555ID.collider:SetPos(396,80.2475,536.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr109555ID.collider, 3)
level05.colliders.Tile5_wallNr110556ID = {}
level05.colliders.Tile5_wallNr110556ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr110556ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr110556ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr110556ID.collider:SetHalfLengths(0.3,5.52114,2.23607)
level05.colliders.Tile5_wallNr110556ID.collider:SetPos(397,80.7687,543)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr110556ID.collider, 3)
level05.colliders.Tile5_wallNr111557ID = {}
level05.colliders.Tile5_wallNr111557ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr111557ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr111557ID.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.Tile5_wallNr111557ID.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.Tile5_wallNr111557ID.collider:SetPos(400.5,81.2898,546.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr111557ID.collider, 3)
level05.colliders.Tile5_wallNr112558ID = {}
level05.colliders.Tile5_wallNr112558ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr112558ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr112558ID.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.Tile5_wallNr112558ID.collider:SetHalfLengths(0.3,5.52113,6.32456)
level05.colliders.Tile5_wallNr112558ID.collider:SetPos(409,82.3321,550)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr112558ID.collider, 3)
level05.colliders.Tile5_wallNr113559ID = {}
level05.colliders.Tile5_wallNr113559ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr113559ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr113559ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr113559ID.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.Tile5_wallNr113559ID.collider:SetPos(417.5,82.8532,554.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr113559ID.collider, 3)
level05.colliders.Tile5_wallNr114560ID = {}
level05.colliders.Tile5_wallNr114560ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr114560ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr114560ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr114560ID.collider:SetHalfLengths(0.3,5.78172,3.53553)
level05.colliders.Tile5_wallNr114560ID.collider:SetPos(422.5,82.8532,559.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr114560ID.collider, 3)
level05.colliders.Tile5_wallNr115561ID = {}
level05.colliders.Tile5_wallNr115561ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr115561ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr115561ID.collider:SetZAxis(0.581238,0,0.813733)
level05.colliders.Tile5_wallNr115561ID.collider:SetHalfLengths(0.3,5.52113,4.30116)
level05.colliders.Tile5_wallNr115561ID.collider:SetPos(427.5,83.635,565.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr115561ID.collider, 3)
level05.colliders.Tile5_wallNr116562ID = {}
level05.colliders.Tile5_wallNr116562ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr116562ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr116562ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr116562ID.collider:SetHalfLengths(0.3,5.26057,1)
level05.colliders.Tile5_wallNr116562ID.collider:SetPos(431,84.1561,569)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr116562ID.collider, 3)
level05.colliders.Tile5_wallNr117563ID = {}
level05.colliders.Tile5_wallNr117563ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr117563ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr117563ID.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.Tile5_wallNr117563ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr117563ID.collider:SetPos(434.5,84.4167,570)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr117563ID.collider, 3)
level05.colliders.Tile5_wallNr118564ID = {}
level05.colliders.Tile5_wallNr118564ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr118564ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr118564ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr118564ID.collider:SetHalfLengths(0.3,5,2.82843)
level05.colliders.Tile5_wallNr118564ID.collider:SetPos(439,84.4167,573)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr118564ID.collider, 3)
level05.colliders.Tile5_wallNr119565ID = {}
level05.colliders.Tile5_wallNr119565ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr119565ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr119565ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr119565ID.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.Tile5_wallNr119565ID.collider:SetPos(442,84.4167,577)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr119565ID.collider, 3)
level05.colliders.Tile5_wallNr120566ID = {}
level05.colliders.Tile5_wallNr120566ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr120566ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr120566ID.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.Tile5_wallNr120566ID.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.Tile5_wallNr120566ID.collider:SetPos(443.5,84.6772,580.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr120566ID.collider, 3)
level05.colliders.Tile5_wallNr121567ID = {}
level05.colliders.Tile5_wallNr121567ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr121567ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr121567ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr121567ID.collider:SetHalfLengths(0.3,6.30286,3.53553)
level05.colliders.Tile5_wallNr121567ID.collider:SetPos(444.5,84.4167,585.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr121567ID.collider, 3)
level05.colliders.Tile5_wallNr122568ID = {}
level05.colliders.Tile5_wallNr122568ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr122568ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr122568ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr122568ID.collider:SetHalfLengths(0.3,5.78171,2.5)
level05.colliders.Tile5_wallNr122568ID.collider:SetPos(445,83.1138,591.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr122568ID.collider, 3)
level05.colliders.Tile5_wallNr123569ID = {}
level05.colliders.Tile5_wallNr123569ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr123569ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr123569ID.collider:SetZAxis(-0.624695,0,0.780869)
level05.colliders.Tile5_wallNr123569ID.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.Tile5_wallNr123569ID.collider:SetPos(443,82.3321,596.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr123569ID.collider, 3)
level05.colliders.Tile5_wallNr124570ID = {}
level05.colliders.Tile5_wallNr124570ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr124570ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr124570ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr124570ID.collider:SetHalfLengths(0.3,5.26057,1.41421)
level05.colliders.Tile5_wallNr124570ID.collider:SetPos(440,80.7687,600)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr124570ID.collider, 3)
level05.colliders.Tile5_wallNr125571ID = {}
level05.colliders.Tile5_wallNr125571ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr125571ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr125571ID.collider:SetZAxis(-0.894427,0,0.447214)
level05.colliders.Tile5_wallNr125571ID.collider:SetHalfLengths(0.3,6.04228,3.3541)
level05.colliders.Tile5_wallNr125571ID.collider:SetPos(436,80.5081,602.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr125571ID.collider, 3)
level05.colliders.Tile5_wallNr126572ID = {}
level05.colliders.Tile5_wallNr126572ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr126572ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr126572ID.collider:SetZAxis(0.822192,0,0.56921)
level05.colliders.Tile5_wallNr126572ID.collider:SetHalfLengths(0.3,8.64799,7.90569)
level05.colliders.Tile5_wallNr126572ID.collider:SetPos(439.5,79.4658,608.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr126572ID.collider, 3)
level05.colliders.Tile5_wallNr127573ID = {}
level05.colliders.Tile5_wallNr127573ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr127573ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr127573ID.collider:SetZAxis(0.763386,0,0.645942)
level05.colliders.Tile5_wallNr127573ID.collider:SetHalfLengths(0.3,7.08458,8.51469)
level05.colliders.Tile5_wallNr127573ID.collider:SetPos(452.5,83.1138,618.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr127573ID.collider, 3)
level05.colliders.Tile5_wallNr128574ID = {}
level05.colliders.Tile5_wallNr128574ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr128574ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr128574ID.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.Tile5_wallNr128574ID.collider:SetHalfLengths(0.3,5,3.60555)
level05.colliders.Tile5_wallNr128574ID.collider:SetPos(462,85.1984,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr128574ID.collider, 3)
level05.colliders.Tile5_wallNr129575ID = {}
level05.colliders.Tile5_wallNr129575ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr129575ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr129575ID.collider:SetZAxis(0.413803,0,0.910366)
level05.colliders.Tile5_wallNr129575ID.collider:SetHalfLengths(0.3,5.78171,6.04152)
level05.colliders.Tile5_wallNr129575ID.collider:SetPos(467.5,85.1984,633.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr129575ID.collider, 3)
level05.colliders.Tile5_wallNr130576ID = {}
level05.colliders.Tile5_wallNr130576ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr130576ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr130576ID.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.Tile5_wallNr130576ID.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.Tile5_wallNr130576ID.collider:SetPos(426,82.5927,527)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr130576ID.collider, 3)
level05.colliders.Tile5_wallNr131577ID = {}
level05.colliders.Tile5_wallNr131577ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr131577ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr131577ID.collider:SetZAxis(0.664364,0,0.747409)
level05.colliders.Tile5_wallNr131577ID.collider:SetHalfLengths(0.3,5.52114,6.0208)
level05.colliders.Tile5_wallNr131577ID.collider:SetPos(435,82.0715,533.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr131577ID.collider, 3)
level05.colliders.Tile5_wallNr132578ID = {}
level05.colliders.Tile5_wallNr132578ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr132578ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr132578ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr132578ID.collider:SetHalfLengths(0.3,7.86628,8.48528)
level05.colliders.Tile5_wallNr132578ID.collider:SetPos(445,81.5504,544)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr132578ID.collider, 3)
level05.colliders.Tile5_wallNr133579ID = {}
level05.colliders.Tile5_wallNr133579ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr133579ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr133579ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr133579ID.collider:SetHalfLengths(0.3,7.08456,4.24264)
level05.colliders.Tile5_wallNr133579ID.collider:SetPos(454,78.6841,553)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr133579ID.collider, 3)
level05.colliders.Tile5_wallNr134580ID = {}
level05.colliders.Tile5_wallNr134580ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr134580ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr134580ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr134580ID.collider:SetHalfLengths(0.3,5.78172,1.5)
level05.colliders.Tile5_wallNr134580ID.collider:SetPos(457,80.7687,557.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr134580ID.collider, 3)
level05.colliders.Tile5_wallNr135581ID = {}
level05.colliders.Tile5_wallNr135581ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr135581ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr135581ID.collider:SetZAxis(0.478852,0,0.877896)
level05.colliders.Tile5_wallNr135581ID.collider:SetHalfLengths(0.3,6.30285,6.26498)
level05.colliders.Tile5_wallNr135581ID.collider:SetPos(460,81.5504,564.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr135581ID.collider, 3)
level05.colliders.Tile5_wallNr136582ID = {}
level05.colliders.Tile5_wallNr136582ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr136582ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr136582ID.collider:SetZAxis(0.6,0,0.8)
level05.colliders.Tile5_wallNr136582ID.collider:SetHalfLengths(0.3,7.60571,7.5)
level05.colliders.Tile5_wallNr136582ID.collider:SetPos(467.5,82.8532,576)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr136582ID.collider, 3)
level05.colliders.Tile5_wallNr137583ID = {}
level05.colliders.Tile5_wallNr137583ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr137583ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr137583ID.collider:SetZAxis(0.8,0,0.6)
level05.colliders.Tile5_wallNr137583ID.collider:SetHalfLengths(0.3,5.26056,2.5)
level05.colliders.Tile5_wallNr137583ID.collider:SetPos(474,85.459,583.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr137583ID.collider, 3)
level05.colliders.Tile5_wallNr138584ID = {}
level05.colliders.Tile5_wallNr138584ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr138584ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr138584ID.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.Tile5_wallNr138584ID.collider:SetHalfLengths(0.3,6.30286,3.3541)
level05.colliders.Tile5_wallNr138584ID.collider:SetPos(479,85.1984,586.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr138584ID.collider, 3)
level05.colliders.Tile5_wallNr139585ID = {}
level05.colliders.Tile5_wallNr139585ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr139585ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr139585ID.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.Tile5_wallNr139585ID.collider:SetHalfLengths(0.3,5.26057,2.91548)
level05.colliders.Tile5_wallNr139585ID.collider:SetPos(484.5,83.8955,586.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr139585ID.collider, 3)
level05.colliders.Tile5_wallNr140586ID = {}
level05.colliders.Tile5_wallNr140586ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr140586ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr140586ID.collider:SetZAxis(0.768221,0,-0.640184)
level05.colliders.Tile5_wallNr140586ID.collider:SetHalfLengths(0.3,6.04229,3.90512)
level05.colliders.Tile5_wallNr140586ID.collider:SetPos(490,83.635,582.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr140586ID.collider, 3)
level05.colliders.Tile5_wallNr141587ID = {}
level05.colliders.Tile5_wallNr141587ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr141587ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr141587ID.collider:SetZAxis(0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr141587ID.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.Tile5_wallNr141587ID.collider:SetPos(494,82.5927,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr141587ID.collider, 3)
level05.colliders.Tile5_wallNr142588ID = {}
level05.colliders.Tile5_wallNr142588ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr142588ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr142588ID.collider:SetZAxis(0.371391,0,-0.928477)
level05.colliders.Tile5_wallNr142588ID.collider:SetHalfLengths(0.3,5.78172,2.69258)
level05.colliders.Tile5_wallNr142588ID.collider:SetPos(496,82.3321,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr142588ID.collider, 3)
level05.colliders.Tile5_wallNr143589ID = {}
level05.colliders.Tile5_wallNr143589ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr143589ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr143589ID.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.Tile5_wallNr143589ID.collider:SetHalfLengths(0.3,6.30286,4.12311)
level05.colliders.Tile5_wallNr143589ID.collider:SetPos(498,81.5504,567)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr143589ID.collider, 3)
level05.colliders.Tile5_wallNr144590ID = {}
level05.colliders.Tile5_wallNr144590ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr144590ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr144590ID.collider:SetZAxis(0,0,-1)
level05.colliders.Tile5_wallNr144590ID.collider:SetHalfLengths(0.3,6.824,3.5)
level05.colliders.Tile5_wallNr144590ID.collider:SetPos(499,80.2475,559.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr144590ID.collider, 3)
level05.colliders.Tile5_wallNr145591ID = {}
level05.colliders.Tile5_wallNr145591ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr145591ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr145591ID.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.Tile5_wallNr145591ID.collider:SetHalfLengths(0.3,7.34514,3.64005)
level05.colliders.Tile5_wallNr145591ID.collider:SetPos(498,78.4235,552.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr145591ID.collider, 3)
level05.colliders.Tile5_wallNr146592ID = {}
level05.colliders.Tile5_wallNr146592ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr146592ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr146592ID.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr146592ID.collider:SetHalfLengths(0.3,6.82401,3.53553)
level05.colliders.Tile5_wallNr146592ID.collider:SetPos(494.5,76.0784,546.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr146592ID.collider, 3)
level05.colliders.Tile5_wallNr147593ID = {}
level05.colliders.Tile5_wallNr147593ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr147593ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr147593ID.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr147593ID.collider:SetHalfLengths(0.3,7.34514,2.82843)
level05.colliders.Tile5_wallNr147593ID.collider:SetPos(490,74.2544,542)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr147593ID.collider, 3)
level05.colliders.Tile5_wallNr148594ID = {}
level05.colliders.Tile5_wallNr148594ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr148594ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr148594ID.collider:SetZAxis(-0.813733,0,-0.581238)
level05.colliders.Tile5_wallNr148594ID.collider:SetHalfLengths(0.3,11.7748,4.30116)
level05.colliders.Tile5_wallNr148594ID.collider:SetPos(484.5,71.9093,537.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr148594ID.collider, 3)
level05.colliders.Tile5_wallNr149595ID = {}
level05.colliders.Tile5_wallNr149595ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr149595ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr149595ID.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.Tile5_wallNr149595ID.collider:SetHalfLengths(0.3,5.78172,4.03113)
level05.colliders.Tile5_wallNr149595ID.collider:SetPos(477,65.1344,535.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr149595ID.collider, 3)
level05.colliders.Tile5_wallNr150596ID = {}
level05.colliders.Tile5_wallNr150596ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr150596ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr150596ID.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.Tile5_wallNr150596ID.collider:SetHalfLengths(0.3,5.26057,3.16228)
level05.colliders.Tile5_wallNr150596ID.collider:SetPos(470,64.3527,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr150596ID.collider, 3)
level05.colliders.Tile5_wallNr151597ID = {}
level05.colliders.Tile5_wallNr151597ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr151597ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr151597ID.collider:SetZAxis(-0.928477,0,0.371391)
level05.colliders.Tile5_wallNr151597ID.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.Tile5_wallNr151597ID.collider:SetPos(462,64.6133,540)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr151597ID.collider, 3)
level05.colliders.Tile5_wallNr152598ID = {}
level05.colliders.Tile5_wallNr152598ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr152598ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr152598ID.collider:SetZAxis(-0.514496,0,-0.857493)
level05.colliders.Tile5_wallNr152598ID.collider:SetHalfLengths(0.3,9.16914,5.83095)
level05.colliders.Tile5_wallNr152598ID.collider:SetPos(454,65.1344,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr152598ID.collider, 3)
level05.colliders.Tile5_wallNr153599ID = {}
level05.colliders.Tile5_wallNr153599ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr153599ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr153599ID.collider:SetZAxis(-0.668965,0,-0.743294)
level05.colliders.Tile5_wallNr153599ID.collider:SetHalfLengths(0.3,6.04229,6.72681)
level05.colliders.Tile5_wallNr153599ID.collider:SetPos(446.5,60.9653,527)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr153599ID.collider, 3)
level05.colliders.Tile5_wallNr154600ID = {}
level05.colliders.Tile5_wallNr154600ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr154600ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr154600ID.collider:SetZAxis(-0.581238,0,-0.813733)
level05.colliders.Tile5_wallNr154600ID.collider:SetHalfLengths(0.3,6.04229,4.30116)
level05.colliders.Tile5_wallNr154600ID.collider:SetPos(439.5,59.923,518.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr154600ID.collider, 3)
level05.colliders.Tile5_wallNr155601ID = {}
level05.colliders.Tile5_wallNr155601ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr155601ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr155601ID.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr155601ID.collider:SetHalfLengths(0.3,5.78171,3.3541)
level05.colliders.Tile5_wallNr155601ID.collider:SetPos(435.5,60.9653,512)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr155601ID.collider, 3)
end
level05.unload = function()
level05.props.tile538ID = nil
Gear.UnbindInstance(level05.props.t5s149ID.transformID)
level05.props.t5s149ID = nil
Gear.UnbindInstance(level05.props.t5s250ID.transformID)
level05.props.t5s250ID = nil
Gear.UnbindInstance(level05.props.t5s351ID.transformID)
level05.props.t5s351ID = nil
Gear.UnbindInstance(level05.props.t5s452ID.transformID)
level05.props.t5s452ID = nil
Gear.UnbindInstance(level05.props.t5s553ID.transformID)
level05.props.t5s553ID = nil
Gear.UnbindInstance(level05.props.t5s654ID.transformID)
level05.props.t5s654ID = nil
Gear.UnbindInstance(level05.props.t6s458ID.transformID)
level05.props.t6s458ID = nil
level05.colliders.Tile5_wallNr445ID = nil
level05.colliders.Tile5_wallNr1446ID = nil
level05.colliders.Tile5_wallNr2448ID = nil
level05.colliders.Tile5_wallNr3449ID = nil
level05.colliders.Tile5_wallNr4450ID = nil
level05.colliders.Tile5_wallNr5451ID = nil
level05.colliders.Tile5_wallNr6452ID = nil
level05.colliders.Tile5_wallNr7453ID = nil
level05.colliders.Tile5_wallNr8454ID = nil
level05.colliders.Tile5_wallNr9455ID = nil
level05.colliders.Tile5_wallNr10456ID = nil
level05.colliders.Tile5_wallNr11457ID = nil
level05.colliders.Tile5_wallNr12458ID = nil
level05.colliders.Tile5_wallNr13459ID = nil
level05.colliders.Tile5_wallNr14460ID = nil
level05.colliders.Tile5_wallNr15461ID = nil
level05.colliders.Tile5_wallNr16462ID = nil
level05.colliders.Tile5_wallNr17463ID = nil
level05.colliders.Tile5_wallNr18464ID = nil
level05.colliders.Tile5_wallNr19465ID = nil
level05.colliders.Tile5_wallNr20466ID = nil
level05.colliders.Tile5_wallNr21467ID = nil
level05.colliders.Tile5_wallNr22468ID = nil
level05.colliders.Tile5_wallNr23469ID = nil
level05.colliders.Tile5_wallNr24470ID = nil
level05.colliders.Tile5_wallNr25471ID = nil
level05.colliders.Tile5_wallNr26472ID = nil
level05.colliders.Tile5_wallNr27473ID = nil
level05.colliders.Tile5_wallNr28474ID = nil
level05.colliders.Tile5_wallNr29475ID = nil
level05.colliders.Tile5_wallNr30476ID = nil
level05.colliders.Tile5_wallNr31477ID = nil
level05.colliders.Tile5_wallNr32478ID = nil
level05.colliders.Tile5_wallNr33479ID = nil
level05.colliders.Tile5_wallNr34480ID = nil
level05.colliders.Tile5_wallNr35481ID = nil
level05.colliders.Tile5_wallNr36482ID = nil
level05.colliders.Tile5_wallNr37483ID = nil
level05.colliders.Tile5_wallNr38484ID = nil
level05.colliders.Tile5_wallNr39485ID = nil
level05.colliders.Tile5_wallNr40486ID = nil
level05.colliders.Tile5_wallNr41487ID = nil
level05.colliders.Tile5_wallNr42488ID = nil
level05.colliders.Tile5_wallNr43489ID = nil
level05.colliders.Tile5_wallNr44490ID = nil
level05.colliders.Tile5_wallNr45491ID = nil
level05.colliders.Tile5_wallNr46492ID = nil
level05.colliders.Tile5_wallNr47493ID = nil
level05.colliders.Tile5_wallNr48494ID = nil
level05.colliders.Tile5_wallNr49495ID = nil
level05.colliders.Tile5_wallNr50496ID = nil
level05.colliders.Tile5_wallNr51497ID = nil
level05.colliders.Tile5_wallNr52498ID = nil
level05.colliders.Tile5_wallNr53499ID = nil
level05.colliders.Tile5_wallNr54500ID = nil
level05.colliders.Tile5_wallNr55501ID = nil
level05.colliders.Tile5_wallNr56502ID = nil
level05.colliders.Tile5_wallNr57503ID = nil
level05.colliders.Tile5_wallNr58504ID = nil
level05.colliders.Tile5_wallNr59505ID = nil
level05.colliders.Tile5_wallNr60506ID = nil
level05.colliders.Tile5_wallNr61507ID = nil
level05.colliders.Tile5_wallNr62508ID = nil
level05.colliders.Tile5_wallNr63509ID = nil
level05.colliders.Tile5_wallNr64510ID = nil
level05.colliders.Tile5_wallNr65511ID = nil
level05.colliders.Tile5_wallNr66512ID = nil
level05.colliders.Tile5_wallNr67513ID = nil
level05.colliders.Tile5_wallNr68514ID = nil
level05.colliders.Tile5_wallNr69515ID = nil
level05.colliders.Tile5_wallNr70516ID = nil
level05.colliders.Tile5_wallNr71517ID = nil
level05.colliders.Tile5_wallNr72518ID = nil
level05.colliders.Tile5_wallNr73519ID = nil
level05.colliders.Tile5_wallNr74520ID = nil
level05.colliders.Tile5_wallNr75521ID = nil
level05.colliders.Tile5_wallNr76522ID = nil
level05.colliders.Tile5_wallNr77523ID = nil
level05.colliders.Tile5_wallNr78524ID = nil
level05.colliders.Tile5_wallNr79525ID = nil
level05.colliders.Tile5_wallNr80526ID = nil
level05.colliders.Tile5_wallNr81527ID = nil
level05.colliders.Tile5_wallNr82528ID = nil
level05.colliders.Tile5_wallNr83529ID = nil
level05.colliders.Tile5_wallNr84530ID = nil
level05.colliders.Tile5_wallNr85531ID = nil
level05.colliders.Tile5_wallNr86532ID = nil
level05.colliders.Tile5_wallNr87533ID = nil
level05.colliders.Tile5_wallNr88534ID = nil
level05.colliders.Tile5_wallNr89535ID = nil
level05.colliders.Tile5_wallNr90536ID = nil
level05.colliders.Tile5_wallNr91537ID = nil
level05.colliders.Tile5_wallNr92538ID = nil
level05.colliders.Tile5_wallNr93539ID = nil
level05.colliders.Tile5_wallNr94540ID = nil
level05.colliders.Tile5_wallNr95541ID = nil
level05.colliders.Tile5_wallNr96542ID = nil
level05.colliders.Tile5_wallNr97543ID = nil
level05.colliders.Tile5_wallNr98544ID = nil
level05.colliders.Tile5_wallNr99545ID = nil
level05.colliders.Tile5_wallNr100546ID = nil
level05.colliders.Tile5_wallNr101547ID = nil
level05.colliders.Tile5_wallNr102548ID = nil
level05.colliders.Tile5_wallNr103549ID = nil
level05.colliders.Tile5_wallNr104550ID = nil
level05.colliders.Tile5_wallNr105551ID = nil
level05.colliders.Tile5_wallNr106552ID = nil
level05.colliders.Tile5_wallNr107553ID = nil
level05.colliders.Tile5_wallNr108554ID = nil
level05.colliders.Tile5_wallNr109555ID = nil
level05.colliders.Tile5_wallNr110556ID = nil
level05.colliders.Tile5_wallNr111557ID = nil
level05.colliders.Tile5_wallNr112558ID = nil
level05.colliders.Tile5_wallNr113559ID = nil
level05.colliders.Tile5_wallNr114560ID = nil
level05.colliders.Tile5_wallNr115561ID = nil
level05.colliders.Tile5_wallNr116562ID = nil
level05.colliders.Tile5_wallNr117563ID = nil
level05.colliders.Tile5_wallNr118564ID = nil
level05.colliders.Tile5_wallNr119565ID = nil
level05.colliders.Tile5_wallNr120566ID = nil
level05.colliders.Tile5_wallNr121567ID = nil
level05.colliders.Tile5_wallNr122568ID = nil
level05.colliders.Tile5_wallNr123569ID = nil
level05.colliders.Tile5_wallNr124570ID = nil
level05.colliders.Tile5_wallNr125571ID = nil
level05.colliders.Tile5_wallNr126572ID = nil
level05.colliders.Tile5_wallNr127573ID = nil
level05.colliders.Tile5_wallNr128574ID = nil
level05.colliders.Tile5_wallNr129575ID = nil
level05.colliders.Tile5_wallNr130576ID = nil
level05.colliders.Tile5_wallNr131577ID = nil
level05.colliders.Tile5_wallNr132578ID = nil
level05.colliders.Tile5_wallNr133579ID = nil
level05.colliders.Tile5_wallNr134580ID = nil
level05.colliders.Tile5_wallNr135581ID = nil
level05.colliders.Tile5_wallNr136582ID = nil
level05.colliders.Tile5_wallNr137583ID = nil
level05.colliders.Tile5_wallNr138584ID = nil
level05.colliders.Tile5_wallNr139585ID = nil
level05.colliders.Tile5_wallNr140586ID = nil
level05.colliders.Tile5_wallNr141587ID = nil
level05.colliders.Tile5_wallNr142588ID = nil
level05.colliders.Tile5_wallNr143589ID = nil
level05.colliders.Tile5_wallNr144590ID = nil
level05.colliders.Tile5_wallNr145591ID = nil
level05.colliders.Tile5_wallNr146592ID = nil
level05.colliders.Tile5_wallNr147593ID = nil
level05.colliders.Tile5_wallNr148594ID = nil
level05.colliders.Tile5_wallNr149595ID = nil
level05.colliders.Tile5_wallNr150596ID = nil
level05.colliders.Tile5_wallNr151597ID = nil
level05.colliders.Tile5_wallNr152598ID = nil
level05.colliders.Tile5_wallNr153599ID = nil
level05.colliders.Tile5_wallNr154600ID = nil
level05.colliders.Tile5_wallNr155601ID = nil
level05.props = nil
level05.colliders = nil
level05.triggers = nil
end
levels[5] = level05
-------------------------------------level05-----------------------------------------------


-------------------------------------level06-----------------------------------------------

level06 = {}
level06.surrounding = { 5, 7 }
level06.load = function()
level06.props = {}
level06.colliders = {}
level06.triggers = {}
level06.props.tile639ID = {}
level06.props.t6s155ID = {}
level06.props.t6s155ID.model = Assets.LoadModel('Models/tile6_s1.model')
level06.props.t6s155ID.transformID = Gear.BindStaticInstance(level06.props.t6s155ID.model)
Transform.SetPosition(level06.props.t6s155ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s155ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s155ID.transformID, {x=0, y=0, z=0})
level06.props.t6s256ID = {}
level06.props.t6s256ID.model = Assets.LoadModel('Models/tile6_s2.model')
level06.props.t6s256ID.transformID = Gear.BindStaticInstance(level06.props.t6s256ID.model)
Transform.SetPosition(level06.props.t6s256ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s256ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s256ID.transformID, {x=0, y=0, z=0})
level06.props.t6s357ID = {}
level06.props.t6s357ID.model = Assets.LoadModel('Models/tile6_s3.model')
level06.props.t6s357ID.transformID = Gear.BindStaticInstance(level06.props.t6s357ID.model)
Transform.SetPosition(level06.props.t6s357ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s357ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s357ID.transformID, {x=0, y=0, z=0})
level06.props.t6s559ID = {}
level06.props.t6s559ID.model = Assets.LoadModel('Models/tile6_s5.model')
level06.props.t6s559ID.transformID = Gear.BindStaticInstance(level06.props.t6s559ID.model)
Transform.SetPosition(level06.props.t6s559ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s559ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s559ID.transformID, {x=0, y=0, z=0})
level06.props.t6s660ID = {}
level06.props.t6s660ID.model = Assets.LoadModel('Models/tile6_s6.model')
level06.props.t6s660ID.transformID = Gear.BindStaticInstance(level06.props.t6s660ID.model)
Transform.SetPosition(level06.props.t6s660ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s660ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s660ID.transformID, {x=0, y=0, z=0})
level06.props.t6s761ID = {}
level06.props.t6s761ID.model = Assets.LoadModel('Models/tile6_s7.model')
level06.props.t6s761ID.transformID = Gear.BindStaticInstance(level06.props.t6s761ID.model)
Transform.SetPosition(level06.props.t6s761ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s761ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s761ID.transformID, {x=0, y=0, z=0})
level06.props.t6s862ID = {}
level06.props.t6s862ID.model = Assets.LoadModel('Models/tile6_s8.model')
level06.props.t6s862ID.transformID = Gear.BindStaticInstance(level06.props.t6s862ID.model)
Transform.SetPosition(level06.props.t6s862ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s862ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s862ID.transformID, {x=0, y=0, z=0})
level06.props.t6s963ID = {}
level06.props.t6s963ID.model = Assets.LoadModel('Models/tile6_s9.model')
level06.props.t6s963ID.transformID = Gear.BindStaticInstance(level06.props.t6s963ID.model)
Transform.SetPosition(level06.props.t6s963ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s963ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s963ID.transformID, {x=0, y=0, z=0})
level06.props.t6s1064ID = {}
level06.props.t6s1064ID.model = Assets.LoadModel('Models/tile6_s10.model')
level06.props.t6s1064ID.transformID = Gear.BindStaticInstance(level06.props.t6s1064ID.model)
Transform.SetPosition(level06.props.t6s1064ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s1064ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s1064ID.transformID, {x=0, y=0, z=0})
level06.colliders.Tile6_wallNr643ID = {}
level06.colliders.Tile6_wallNr643ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr643ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr643ID.collider:SetZAxis(0,0,-1)
level06.colliders.Tile6_wallNr643ID.collider:SetHalfLengths(0.3,5.68221,2)
level06.colliders.Tile6_wallNr643ID.collider:SetPos(389,105.466,707)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr643ID.collider, 3)
level06.colliders.Tile6_wallNr1644ID = {}
level06.colliders.Tile6_wallNr1644ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr1644ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr1644ID.collider:SetZAxis(-0.857493,0,-0.514496)
level06.colliders.Tile6_wallNr1644ID.collider:SetHalfLengths(0.3,5.3411,2.91548)
level06.colliders.Tile6_wallNr1644ID.collider:SetPos(386.5,106.148,703.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr1644ID.collider, 3)
level06.props.t6s11717ID = {}
level06.props.t6s11717ID.model = Assets.LoadModel('Models/tile6_s11.model')
level06.props.t6s11717ID.transformID = Gear.BindStaticInstance(level06.props.t6s11717ID.model)
Transform.SetPosition(level06.props.t6s11717ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s11717ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s11717ID.transformID, {x=0, y=0, z=0})
level06.props.t6s12718ID = {}
level06.props.t6s12718ID.model = Assets.LoadModel('Models/tile6_s12.model')
level06.props.t6s12718ID.transformID = Gear.BindStaticInstance(level06.props.t6s12718ID.model)
Transform.SetPosition(level06.props.t6s12718ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s12718ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s12718ID.transformID, {x=0, y=0, z=0})
level06.props.t6s13719ID = {}
level06.props.t6s13719ID.model = Assets.LoadModel('Models/tile6_s13.model')
level06.props.t6s13719ID.transformID = Gear.BindStaticInstance(level06.props.t6s13719ID.model)
Transform.SetPosition(level06.props.t6s13719ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s13719ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s13719ID.transformID, {x=0, y=0, z=0})
level06.props.t6s14720ID = {}
level06.props.t6s14720ID.model = Assets.LoadModel('Models/tile6_s14.model')
level06.props.t6s14720ID.transformID = Gear.BindStaticInstance(level06.props.t6s14720ID.model)
Transform.SetPosition(level06.props.t6s14720ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s14720ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s14720ID.transformID, {x=0, y=0, z=0})
end
level06.unload = function()
level06.props.tile639ID = nil
Gear.UnbindInstance(level06.props.t6s155ID.transformID)
level06.props.t6s155ID = nil
Gear.UnbindInstance(level06.props.t6s256ID.transformID)
level06.props.t6s256ID = nil
Gear.UnbindInstance(level06.props.t6s357ID.transformID)
level06.props.t6s357ID = nil
Gear.UnbindInstance(level06.props.t6s559ID.transformID)
level06.props.t6s559ID = nil
Gear.UnbindInstance(level06.props.t6s660ID.transformID)
level06.props.t6s660ID = nil
Gear.UnbindInstance(level06.props.t6s761ID.transformID)
level06.props.t6s761ID = nil
Gear.UnbindInstance(level06.props.t6s862ID.transformID)
level06.props.t6s862ID = nil
Gear.UnbindInstance(level06.props.t6s963ID.transformID)
level06.props.t6s963ID = nil
Gear.UnbindInstance(level06.props.t6s1064ID.transformID)
level06.props.t6s1064ID = nil
level06.colliders.Tile6_wallNr643ID = nil
level06.colliders.Tile6_wallNr1644ID = nil
Gear.UnbindInstance(level06.props.t6s11717ID.transformID)
level06.props.t6s11717ID = nil
Gear.UnbindInstance(level06.props.t6s12718ID.transformID)
level06.props.t6s12718ID = nil
Gear.UnbindInstance(level06.props.t6s13719ID.transformID)
level06.props.t6s13719ID = nil
Gear.UnbindInstance(level06.props.t6s14720ID.transformID)
level06.props.t6s14720ID = nil
level06.props = nil
level06.colliders = nil
level06.triggers = nil
end
levels[6] = level06
-------------------------------------level06-----------------------------------------------


-------------------------------------level07-----------------------------------------------

level07 = {}
level07.surrounding = { 6, 8 }
level07.load = function()
level07.props = {}
level07.colliders = {}
level07.triggers = {}
level07.props.tile740ID = {}
level07.props.t7s165ID = {}
level07.props.t7s165ID.model = Assets.LoadModel('Models/tile7_s1.model')
level07.props.t7s165ID.transformID = Gear.BindStaticInstance(level07.props.t7s165ID.model)
Transform.SetPosition(level07.props.t7s165ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s165ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s165ID.transformID, {x=0, y=0, z=0})
level07.props.t7s266ID = {}
level07.props.t7s266ID.model = Assets.LoadModel('Models/tile7_s2.model')
level07.props.t7s266ID.transformID = Gear.BindStaticInstance(level07.props.t7s266ID.model)
Transform.SetPosition(level07.props.t7s266ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s266ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s266ID.transformID, {x=0, y=0, z=0})
level07.props.t7s367ID = {}
level07.props.t7s367ID.model = Assets.LoadModel('Models/tile7_s3.model')
level07.props.t7s367ID.transformID = Gear.BindStaticInstance(level07.props.t7s367ID.model)
Transform.SetPosition(level07.props.t7s367ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s367ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s367ID.transformID, {x=0, y=0, z=0})
level07.props.t7s468ID = {}
level07.props.t7s468ID.model = Assets.LoadModel('Models/tile7_s4.model')
level07.props.t7s468ID.transformID = Gear.BindStaticInstance(level07.props.t7s468ID.model)
Transform.SetPosition(level07.props.t7s468ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s468ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s468ID.transformID, {x=0, y=0, z=0})
level07.props.t7s569ID = {}
level07.props.t7s569ID.model = Assets.LoadModel('Models/tile7_s5.model')
level07.props.t7s569ID.transformID = Gear.BindStaticInstance(level07.props.t7s569ID.model)
Transform.SetPosition(level07.props.t7s569ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s569ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s569ID.transformID, {x=0, y=0, z=0})
level07.props.t7s670ID = {}
level07.props.t7s670ID.model = Assets.LoadModel('Models/tile7_s6.model')
level07.props.t7s670ID.transformID = Gear.BindStaticInstance(level07.props.t7s670ID.model)
Transform.SetPosition(level07.props.t7s670ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s670ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s670ID.transformID, {x=0, y=0, z=0})
level07.props.t7s771ID = {}
level07.props.t7s771ID.model = Assets.LoadModel('Models/tile7_s7.model')
level07.props.t7s771ID.transformID = Gear.BindStaticInstance(level07.props.t7s771ID.model)
Transform.SetPosition(level07.props.t7s771ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s771ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s771ID.transformID, {x=0, y=0, z=0})
level07.props.t7s872ID = {}
level07.props.t7s872ID.model = Assets.LoadModel('Models/tile7_s8.model')
level07.props.t7s872ID.transformID = Gear.BindStaticInstance(level07.props.t7s872ID.model)
Transform.SetPosition(level07.props.t7s872ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s872ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s872ID.transformID, {x=0, y=0, z=0})
level07.props.t7s973ID = {}
level07.props.t7s973ID.model = Assets.LoadModel('Models/tile7_s9.model')
level07.props.t7s973ID.transformID = Gear.BindStaticInstance(level07.props.t7s973ID.model)
Transform.SetPosition(level07.props.t7s973ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s973ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s973ID.transformID, {x=0, y=0, z=0})
level07.colliders.Tile7_wallNr602ID = {}
level07.colliders.Tile7_wallNr602ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr602ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr602ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr602ID.collider:SetHalfLengths(0.3,14.1855,31.5)
level07.colliders.Tile7_wallNr602ID.collider:SetPos(384,122.35,639.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr602ID.collider, 3)
level07.colliders.Tile7_wallNr1603ID = {}
level07.colliders.Tile7_wallNr1603ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr1603ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr1603ID.collider:SetZAxis(-0.857493,0,-0.514496)
level07.colliders.Tile7_wallNr1603ID.collider:SetHalfLengths(0.3,5,2.91548)
level07.colliders.Tile7_wallNr1603ID.collider:SetPos(381.5,131.535,606.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr1603ID.collider, 3)
level07.colliders.Tile7_wallNr2604ID = {}
level07.colliders.Tile7_wallNr2604ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr2604ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr2604ID.collider:SetZAxis(-0.874157,0,-0.485643)
level07.colliders.Tile7_wallNr2604ID.collider:SetHalfLengths(0.3,5.24173,5.14782)
level07.colliders.Tile7_wallNr2604ID.collider:SetPos(374.5,131.535,602.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr2604ID.collider, 3)
level07.colliders.Tile7_wallNr3605ID = {}
level07.colliders.Tile7_wallNr3605ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr3605ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr3605ID.collider:SetZAxis(-0.957826,0,-0.287348)
level07.colliders.Tile7_wallNr3605ID.collider:SetHalfLengths(0.3,5,5.22015)
level07.colliders.Tile7_wallNr3605ID.collider:SetPos(365,131.293,598.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr3605ID.collider, 3)
level07.colliders.Tile7_wallNr4606ID = {}
level07.colliders.Tile7_wallNr4606ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr4606ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr4606ID.collider:SetZAxis(-0.778413,0,-0.627752)
level07.colliders.Tile7_wallNr4606ID.collider:SetHalfLengths(0.3,15.8776,19.9123)
level07.colliders.Tile7_wallNr4606ID.collider:SetPos(344.5,131.293,584.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr4606ID.collider, 3)
level07.colliders.Tile7_wallNr5607ID = {}
level07.colliders.Tile7_wallNr5607ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr5607ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr5607ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr5607ID.collider:SetHalfLengths(0.3,5,19.5)
level07.colliders.Tile7_wallNr5607ID.collider:SetPos(329,142.171,552.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr5607ID.collider, 3)
level07.colliders.Tile7_wallNr6608ID = {}
level07.colliders.Tile7_wallNr6608ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr6608ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr6608ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr6608ID.collider:SetHalfLengths(0.3,5,12)
level07.colliders.Tile7_wallNr6608ID.collider:SetPos(341,142.171,533)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr6608ID.collider, 3)
level07.colliders.Tile7_wallNr7609ID = {}
level07.colliders.Tile7_wallNr7609ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr7609ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr7609ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr7609ID.collider:SetHalfLengths(0.3,5,6.5)
level07.colliders.Tile7_wallNr7609ID.collider:SetPos(353,142.171,526.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr7609ID.collider, 3)
level07.colliders.Tile7_wallNr8610ID = {}
level07.colliders.Tile7_wallNr8610ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr8610ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr8610ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr8610ID.collider:SetHalfLengths(0.3,5,14)
level07.colliders.Tile7_wallNr8610ID.collider:SetPos(339,142.171,520)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr8610ID.collider, 3)
level07.colliders.Tile7_wallNr9611ID = {}
level07.colliders.Tile7_wallNr9611ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr9611ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr9611ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr9611ID.collider:SetHalfLengths(0.3,5,4)
level07.colliders.Tile7_wallNr9611ID.collider:SetPos(324,142.171,516)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr9611ID.collider, 3)
level07.colliders.Tile7_wallNr10612ID = {}
level07.colliders.Tile7_wallNr10612ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr10612ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr10612ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr10612ID.collider:SetHalfLengths(0.3,5,4)
level07.colliders.Tile7_wallNr10612ID.collider:SetPos(319,142.171,516)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr10612ID.collider, 3)
level07.colliders.Tile7_wallNr11613ID = {}
level07.colliders.Tile7_wallNr11613ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr11613ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr11613ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr11613ID.collider:SetHalfLengths(0.3,5.24173,14.5)
level07.colliders.Tile7_wallNr11613ID.collider:SetPos(304.5,142.171,520)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr11613ID.collider, 3)
level07.colliders.Tile7_wallNr12614ID = {}
level07.colliders.Tile7_wallNr12614ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr12614ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr12614ID.collider:SetZAxis(-0.707107,0,-0.707107)
level07.colliders.Tile7_wallNr12614ID.collider:SetHalfLengths(0.3,5.24173,0.707107)
level07.colliders.Tile7_wallNr12614ID.collider:SetPos(289.5,142.413,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr12614ID.collider, 3)
level07.colliders.Tile7_wallNr13615ID = {}
level07.colliders.Tile7_wallNr13615ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr13615ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr13615ID.collider:SetZAxis(-0.966705,0,0.255893)
level07.colliders.Tile7_wallNr13615ID.collider:SetHalfLengths(0.3,23.6128,35.171)
level07.colliders.Tile7_wallNr13615ID.collider:SetPos(255,142.654,528)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr13615ID.collider, 3)
level07.colliders.Tile7_wallNr14616ID = {}
level07.colliders.Tile7_wallNr14616ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr14616ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr14616ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr14616ID.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.Tile7_wallNr14616ID.collider:SetPos(221,124.042,535.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr14616ID.collider, 3)
level07.colliders.Tile7_wallNr15617ID = {}
level07.colliders.Tile7_wallNr15617ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr15617ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr15617ID.collider:SetZAxis(-0.675725,0,-0.737154)
level07.colliders.Tile7_wallNr15617ID.collider:SetHalfLengths(0.3,5.9669,8.13941)
level07.colliders.Tile7_wallNr15617ID.collider:SetPos(215.5,124.042,528)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr15617ID.collider, 3)
level07.colliders.Tile7_wallNr16618ID = {}
level07.colliders.Tile7_wallNr16618ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr16618ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr16618ID.collider:SetZAxis(-0.988372,0,-0.152057)
level07.colliders.Tile7_wallNr16618ID.collider:SetHalfLengths(0.3,5,6.57647)
level07.colliders.Tile7_wallNr16618ID.collider:SetPos(203.5,125.009,521)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr16618ID.collider, 3)
level07.colliders.Tile7_wallNr17619ID = {}
level07.colliders.Tile7_wallNr17619ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr17619ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr17619ID.collider:SetZAxis(-0.997785,0,-0.066519)
level07.colliders.Tile7_wallNr17619ID.collider:SetHalfLengths(0.3,5,7.51665)
level07.colliders.Tile7_wallNr17619ID.collider:SetPos(189.5,125.009,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr17619ID.collider, 3)
level07.colliders.Tile7_wallNr18620ID = {}
level07.colliders.Tile7_wallNr18620ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr18620ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr18620ID.collider:SetZAxis(-0.996546,0,0.0830455)
level07.colliders.Tile7_wallNr18620ID.collider:SetHalfLengths(0.3,5.24172,6.0208)
level07.colliders.Tile7_wallNr18620ID.collider:SetPos(176,125.009,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr18620ID.collider, 3)
level07.colliders.Tile7_wallNr19621ID = {}
level07.colliders.Tile7_wallNr19621ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr19621ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr19621ID.collider:SetZAxis(-0.974391,0,0.22486)
level07.colliders.Tile7_wallNr19621ID.collider:SetHalfLengths(0.3,6.69208,6.67083)
level07.colliders.Tile7_wallNr19621ID.collider:SetPos(163.5,125.25,521.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr19621ID.collider, 3)
level07.colliders.Tile7_wallNr20622ID = {}
level07.colliders.Tile7_wallNr20622ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr20622ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr20622ID.collider:SetZAxis(-0.768221,0,0.640184)
level07.colliders.Tile7_wallNr20622ID.collider:SetHalfLengths(0.3,7.17552,7.81025)
level07.colliders.Tile7_wallNr20622ID.collider:SetPos(151,126.942,528)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr20622ID.collider, 3)
level07.colliders.Tile7_wallNr21623ID = {}
level07.colliders.Tile7_wallNr21623ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr21623ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr21623ID.collider:SetZAxis(-0.645942,0,0.763386)
level07.colliders.Tile7_wallNr21623ID.collider:SetHalfLengths(0.3,5.9669,8.51469)
level07.colliders.Tile7_wallNr21623ID.collider:SetPos(139.5,129.118,539.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr21623ID.collider, 3)
level07.colliders.Tile7_wallNr22624ID = {}
level07.colliders.Tile7_wallNr22624ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr22624ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr22624ID.collider:SetZAxis(0.242536,0,0.970142)
level07.colliders.Tile7_wallNr22624ID.collider:SetHalfLengths(0.3,5.9669,6.18466)
level07.colliders.Tile7_wallNr22624ID.collider:SetPos(135.5,130.085,552)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr22624ID.collider, 3)
level07.colliders.Tile7_wallNr23625ID = {}
level07.colliders.Tile7_wallNr23625ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr23625ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr23625ID.collider:SetZAxis(0.413803,0,0.910366)
level07.colliders.Tile7_wallNr23625ID.collider:SetHalfLengths(0.3,6.45035,6.04152)
level07.colliders.Tile7_wallNr23625ID.collider:SetPos(139.5,129.118,563.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr23625ID.collider, 3)
level07.colliders.Tile7_wallNr24626ID = {}
level07.colliders.Tile7_wallNr24626ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr24626ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr24626ID.collider:SetZAxis(0.752577,0,0.658505)
level07.colliders.Tile7_wallNr24626ID.collider:SetHalfLengths(0.3,5.72517,10.6301)
level07.colliders.Tile7_wallNr24626ID.collider:SetPos(150,127.668,576)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr24626ID.collider, 3)
level07.colliders.Tile7_wallNr25627ID = {}
level07.colliders.Tile7_wallNr25627ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr25627ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr25627ID.collider:SetZAxis(-0.110432,0,0.993884)
level07.colliders.Tile7_wallNr25627ID.collider:SetHalfLengths(0.3,48.2688,63.3877)
level07.colliders.Tile7_wallNr25627ID.collider:SetPos(151,126.942,646)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr25627ID.collider, 3)
level07.colliders.Tile7_wallNr26628ID = {}
level07.colliders.Tile7_wallNr26628ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr26628ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr26628ID.collider:SetZAxis(-0.773957,0,0.633238)
level07.colliders.Tile7_wallNr26628ID.collider:SetHalfLengths(0.3,7.9007,7.10634)
level07.colliders.Tile7_wallNr26628ID.collider:SetPos(138.5,83.6736,713.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr26628ID.collider, 3)
level07.colliders.Tile7_wallNr27629ID = {}
level07.colliders.Tile7_wallNr27629ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr27629ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr27629ID.collider:SetZAxis(-0.298275,0,0.95448)
level07.colliders.Tile7_wallNr27629ID.collider:SetHalfLengths(0.3,10.0762,8.38153)
level07.colliders.Tile7_wallNr27629ID.collider:SetPos(130.5,86.5743,726)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr27629ID.collider, 3)
level07.colliders.Tile7_wallNr28630ID = {}
level07.colliders.Tile7_wallNr28630ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr28630ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr28630ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr28630ID.collider:SetHalfLengths(0.3,7.65897,5)
level07.colliders.Tile7_wallNr28630ID.collider:SetPos(128,91.6505,739)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr28630ID.collider, 3)
level07.colliders.Tile7_wallNr29631ID = {}
level07.colliders.Tile7_wallNr29631ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr29631ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr29631ID.collider:SetZAxis(0.630593,0,0.776114)
level07.colliders.Tile7_wallNr29631ID.collider:SetHalfLengths(0.3,7.9007,10.3078)
level07.colliders.Tile7_wallNr29631ID.collider:SetPos(134.5,94.3095,752)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr29631ID.collider, 3)
level07.colliders.Tile7_wallNr30632ID = {}
level07.colliders.Tile7_wallNr30632ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr30632ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr30632ID.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.Tile7_wallNr30632ID.collider:SetHalfLengths(0.3,6.9338,6.10328)
level07.colliders.Tile7_wallNr30632ID.collider:SetPos(146,97.2102,763.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr30632ID.collider, 3)
level07.colliders.Tile7_wallNr31633ID = {}
level07.colliders.Tile7_wallNr31633ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr31633ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr31633ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr31633ID.collider:SetHalfLengths(0.3,5,27.5)
level07.colliders.Tile7_wallNr31633ID.collider:SetPos(178.5,99.144,767)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr31633ID.collider, 3)
level07.colliders.Tile7_wallNr32634ID = {}
level07.colliders.Tile7_wallNr32634ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr32634ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr32634ID.collider:SetZAxis(0.6,0,-0.8)
level07.colliders.Tile7_wallNr32634ID.collider:SetHalfLengths(0.3,6.69207,2.5)
level07.colliders.Tile7_wallNr32634ID.collider:SetPos(207.5,99.144,765)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr32634ID.collider, 3)
level07.colliders.Tile7_wallNr33635ID = {}
level07.colliders.Tile7_wallNr33635ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr33635ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr33635ID.collider:SetZAxis(0.110432,0,-0.993884)
level07.colliders.Tile7_wallNr33635ID.collider:SetHalfLengths(0.3,8.62588,9.05539)
level07.colliders.Tile7_wallNr33635ID.collider:SetPos(210,97.4519,754)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr33635ID.collider, 3)
level07.colliders.Tile7_wallNr34636ID = {}
level07.colliders.Tile7_wallNr34636ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr34636ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr34636ID.collider:SetZAxis(0.995542,0,-0.0943145)
level07.colliders.Tile7_wallNr34636ID.collider:SetHalfLengths(0.3,14.1855,47.7127)
level07.colliders.Tile7_wallNr34636ID.collider:SetPos(258.5,93.826,740.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr34636ID.collider, 3)
level07.colliders.Tile7_wallNr35637ID = {}
level07.colliders.Tile7_wallNr35637ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr35637ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr35637ID.collider:SetZAxis(-0.316228,0,0.948683)
level07.colliders.Tile7_wallNr35637ID.collider:SetHalfLengths(0.3,8.62588,6.32456)
level07.colliders.Tile7_wallNr35637ID.collider:SetPos(304,103.012,742)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr35637ID.collider, 3)
level07.colliders.Tile7_wallNr36638ID = {}
level07.colliders.Tile7_wallNr36638ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr36638ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr36638ID.collider:SetZAxis(0.826227,0,0.563337)
level07.colliders.Tile7_wallNr36638ID.collider:SetHalfLengths(0.3,6.20862,13.3135)
level07.colliders.Tile7_wallNr36638ID.collider:SetPos(313,99.3857,755.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr36638ID.collider, 3)
level07.colliders.Tile7_wallNr37639ID = {}
level07.colliders.Tile7_wallNr37639ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr37639ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr37639ID.collider:SetZAxis(0.993409,0,0.114624)
level07.colliders.Tile7_wallNr37639ID.collider:SetHalfLengths(0.3,5.72517,13.0863)
level07.colliders.Tile7_wallNr37639ID.collider:SetPos(337,98.1771,764.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr37639ID.collider, 3)
level07.colliders.Tile7_wallNr38640ID = {}
level07.colliders.Tile7_wallNr38640ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr38640ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr38640ID.collider:SetZAxis(0.83205,0,-0.5547)
level07.colliders.Tile7_wallNr38640ID.collider:SetHalfLengths(0.3,5.48345,12.6194)
level07.colliders.Tile7_wallNr38640ID.collider:SetPos(360.5,98.9023,759)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr38640ID.collider, 3)
level07.colliders.Tile7_wallNr39641ID = {}
level07.colliders.Tile7_wallNr39641ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr39641ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr39641ID.collider:SetZAxis(0.707107,0,-0.707107)
level07.colliders.Tile7_wallNr39641ID.collider:SetHalfLengths(0.3,6.45035,9.19239)
level07.colliders.Tile7_wallNr39641ID.collider:SetPos(377.5,98.4188,745.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr39641ID.collider, 3)
level07.colliders.Tile7_wallNr40642ID = {}
level07.colliders.Tile7_wallNr40642ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr40642ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr40642ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr40642ID.collider:SetHalfLengths(0.3,8.8676,3.5)
level07.colliders.Tile7_wallNr40642ID.collider:SetPos(384,99.8692,735.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr40642ID.collider, 3)
level07.colliders.Tile7_wallNr41645ID = {}
level07.colliders.Tile7_wallNr41645ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr41645ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr41645ID.collider:SetZAxis(-0.8,0,-0.6)
level07.colliders.Tile7_wallNr41645ID.collider:SetHalfLengths(0.3,5.24173,2.5)
level07.colliders.Tile7_wallNr41645ID.collider:SetPos(382,105.671,700.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr41645ID.collider, 3)
level07.colliders.Tile7_wallNr42646ID = {}
level07.colliders.Tile7_wallNr42646ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr42646ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr42646ID.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.Tile7_wallNr42646ID.collider:SetHalfLengths(0.3,6.20862,5.59017)
level07.colliders.Tile7_wallNr42646ID.collider:SetPos(375,105.429,696.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr42646ID.collider, 3)
level07.colliders.Tile7_wallNr43647ID = {}
level07.colliders.Tile7_wallNr43647ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr43647ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr43647ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr43647ID.collider:SetHalfLengths(0.3,6.93379,1)
level07.colliders.Tile7_wallNr43647ID.collider:SetPos(369,104.22,694)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr43647ID.collider, 3)
level07.colliders.Tile7_wallNr44648ID = {}
level07.colliders.Tile7_wallNr44648ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr44648ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr44648ID.collider:SetZAxis(0.33035,0,-0.943858)
level07.colliders.Tile7_wallNr44648ID.collider:SetHalfLengths(0.3,19.7452,10.5948)
level07.colliders.Tile7_wallNr44648ID.collider:SetPos(371.5,106.154,684)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr44648ID.collider, 3)
level07.colliders.Tile7_wallNr45649ID = {}
level07.colliders.Tile7_wallNr45649ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr45649ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr45649ID.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.Tile7_wallNr45649ID.collider:SetHalfLengths(0.3,6.45035,4.74342)
level07.colliders.Tile7_wallNr45649ID.collider:SetPos(379.5,120.899,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr45649ID.collider, 3)
level07.colliders.Tile7_wallNr46650ID = {}
level07.colliders.Tile7_wallNr46650ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr46650ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr46650ID.collider:SetZAxis(-0.995723,0,0.0923867)
level07.colliders.Tile7_wallNr46650ID.collider:SetHalfLengths(0.3,18.2949,48.7083)
level07.colliders.Tile7_wallNr46650ID.collider:SetPos(257.5,103.012,726.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr46650ID.collider, 3)
level07.colliders.Tile7_wallNr47651ID = {}
level07.colliders.Tile7_wallNr47651ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr47651ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr47651ID.collider:SetZAxis(-0.141421,0,-0.98995)
level07.colliders.Tile7_wallNr47651ID.collider:SetHalfLengths(0.3,10.3179,7.07107)
level07.colliders.Tile7_wallNr47651ID.collider:SetPos(208,89.7167,724)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr47651ID.collider, 3)
level07.colliders.Tile7_wallNr48652ID = {}
level07.colliders.Tile7_wallNr48652ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr48652ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr48652ID.collider:SetZAxis(-0.759257,0,-0.650791)
level07.colliders.Tile7_wallNr48652ID.collider:SetHalfLengths(0.3,5.24173,4.60977)
level07.colliders.Tile7_wallNr48652ID.collider:SetPos(203.5,84.3988,714)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr48652ID.collider, 3)
level07.colliders.Tile7_wallNr49653ID = {}
level07.colliders.Tile7_wallNr49653ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr49653ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr49653ID.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.Tile7_wallNr49653ID.collider:SetHalfLengths(0.3,6.20862,4.47214)
level07.colliders.Tile7_wallNr49653ID.collider:SetPos(196,84.157,709)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr49653ID.collider, 3)
level07.colliders.Tile7_wallNr50654ID = {}
level07.colliders.Tile7_wallNr50654ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr50654ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr50654ID.collider:SetZAxis(-0.982339,0,-0.187112)
level07.colliders.Tile7_wallNr50654ID.collider:SetHalfLengths(0.3,5.9669,10.6888)
level07.colliders.Tile7_wallNr50654ID.collider:SetPos(181.5,82.9484,705)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr50654ID.collider, 3)
level07.colliders.Tile7_wallNr51655ID = {}
level07.colliders.Tile7_wallNr51655ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr51655ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr51655ID.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.Tile7_wallNr51655ID.collider:SetHalfLengths(0.3,5.24172,1.11803)
level07.colliders.Tile7_wallNr51655ID.collider:SetPos(170,81.9815,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr51655ID.collider, 3)
level07.colliders.Tile7_wallNr52656ID = {}
level07.colliders.Tile7_wallNr52656ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr52656ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr52656ID.collider:SetZAxis(-0.995037,0,-0.0995037)
level07.colliders.Tile7_wallNr52656ID.collider:SetHalfLengths(0.3,5,5.02494)
level07.colliders.Tile7_wallNr52656ID.collider:SetPos(164,82.2232,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr52656ID.collider, 3)
level07.colliders.Tile7_wallNr53657ID = {}
level07.colliders.Tile7_wallNr53657ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr53657ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr53657ID.collider:SetZAxis(-0.447214,0,0.894427)
level07.colliders.Tile7_wallNr53657ID.collider:SetHalfLengths(0.3,8.14243,1.11803)
level07.colliders.Tile7_wallNr53657ID.collider:SetPos(158.5,82.2232,704)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr53657ID.collider, 3)
level07.colliders.Tile7_wallNr54658ID = {}
level07.colliders.Tile7_wallNr54658ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr54658ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr54658ID.collider:SetZAxis(0.0928179,0,-0.995683)
level07.colliders.Tile7_wallNr54658ID.collider:SetHalfLengths(0.3,47.5436,59.2558)
level07.colliders.Tile7_wallNr54658ID.collider:SetPos(163.5,85.3657,646)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr54658ID.collider, 3)
level07.colliders.Tile7_wallNr55659ID = {}
level07.colliders.Tile7_wallNr55659ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr55659ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr55659ID.collider:SetZAxis(0.8,0,0.6)
level07.colliders.Tile7_wallNr55659ID.collider:SetHalfLengths(0.3,7.17553,5)
level07.colliders.Tile7_wallNr55659ID.collider:SetPos(173,127.909,590)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr55659ID.collider, 3)
level07.colliders.Tile7_wallNr56660ID = {}
level07.colliders.Tile7_wallNr56660ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr56660ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr56660ID.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.Tile7_wallNr56660ID.collider:SetHalfLengths(0.3,5.72517,7.82624)
level07.colliders.Tile7_wallNr56660ID.collider:SetPos(184,125.734,596.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr56660ID.collider, 3)
level07.colliders.Tile7_wallNr57661ID = {}
level07.colliders.Tile7_wallNr57661ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr57661ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr57661ID.collider:SetZAxis(0.970143,0,-0.242536)
level07.colliders.Tile7_wallNr57661ID.collider:SetHalfLengths(0.3,5.24172,4.12311)
level07.colliders.Tile7_wallNr57661ID.collider:SetPos(195,125.009,599)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr57661ID.collider, 3)
level07.colliders.Tile7_wallNr58662ID = {}
level07.colliders.Tile7_wallNr58662ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr58662ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr58662ID.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.Tile7_wallNr58662ID.collider:SetHalfLengths(0.3,5.24172,4.74342)
level07.colliders.Tile7_wallNr58662ID.collider:SetPos(203.5,125.25,596.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr58662ID.collider, 3)
level07.colliders.Tile7_wallNr59663ID = {}
level07.colliders.Tile7_wallNr59663ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr59663ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr59663ID.collider:SetZAxis(0.478852,0,0.877896)
level07.colliders.Tile7_wallNr59663ID.collider:SetHalfLengths(0.3,20.2287,12.53)
level07.colliders.Tile7_wallNr59663ID.collider:SetPos(214,125.009,606)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr59663ID.collider, 3)
level07.colliders.Tile7_wallNr60664ID = {}
level07.colliders.Tile7_wallNr60664ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr60664ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr60664ID.collider:SetZAxis(-0.986394,0,0.164399)
level07.colliders.Tile7_wallNr60664ID.collider:SetHalfLengths(0.3,6.9338,3.04138)
level07.colliders.Tile7_wallNr60664ID.collider:SetPos(217,109.78,617.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr60664ID.collider, 3)
level07.colliders.Tile7_wallNr61665ID = {}
level07.colliders.Tile7_wallNr61665ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr61665ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr61665ID.collider:SetZAxis(-0.242536,0,0.970142)
level07.colliders.Tile7_wallNr61665ID.collider:SetHalfLengths(0.3,7.41725,6.18466)
level07.colliders.Tile7_wallNr61665ID.collider:SetPos(212.5,107.846,624)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr61665ID.collider, 3)
level07.colliders.Tile7_wallNr62666ID = {}
level07.colliders.Tile7_wallNr62666ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr62666ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr62666ID.collider:SetZAxis(-0.294086,0,0.955779)
level07.colliders.Tile7_wallNr62666ID.collider:SetHalfLengths(0.3,7.9007,6.80074)
level07.colliders.Tile7_wallNr62666ID.collider:SetPos(209,105.429,636.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr62666ID.collider, 3)
level07.colliders.Tile7_wallNr63667ID = {}
level07.colliders.Tile7_wallNr63667ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr63667ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr63667ID.collider:SetZAxis(0.233373,0,0.972387)
level07.colliders.Tile7_wallNr63667ID.collider:SetHalfLengths(0.3,10.8014,12.855)
level07.colliders.Tile7_wallNr63667ID.collider:SetPos(210,102.528,655.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr63667ID.collider, 3)
level07.colliders.Tile7_wallNr64668ID = {}
level07.colliders.Tile7_wallNr64668ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr64668ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr64668ID.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.Tile7_wallNr64668ID.collider:SetHalfLengths(0.3,12.2517,12.2066)
level07.colliders.Tile7_wallNr64668ID.collider:SetPos(223,96.7267,675)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr64668ID.collider, 3)
level07.colliders.Tile7_wallNr65669ID = {}
level07.colliders.Tile7_wallNr65669ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr65669ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr65669ID.collider:SetZAxis(0.956674,0,0.291162)
level07.colliders.Tile7_wallNr65669ID.collider:SetHalfLengths(0.3,6.45035,12.0208)
level07.colliders.Tile7_wallNr65669ID.collider:SetPos(244.5,89.475,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr65669ID.collider, 3)
level07.colliders.Tile7_wallNr66670ID = {}
level07.colliders.Tile7_wallNr66670ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr66670ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr66670ID.collider:SetZAxis(0.98387,0,-0.178885)
level07.colliders.Tile7_wallNr66670ID.collider:SetHalfLengths(0.3,6.20863,5.59017)
level07.colliders.Tile7_wallNr66670ID.collider:SetPos(261.5,88.0246,688)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr66670ID.collider, 3)
level07.colliders.Tile7_wallNr67671ID = {}
level07.colliders.Tile7_wallNr67671ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr67671ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr67671ID.collider:SetZAxis(0.936329,0,-0.351123)
level07.colliders.Tile7_wallNr67671ID.collider:SetHalfLengths(0.3,6.69208,4.272)
level07.colliders.Tile7_wallNr67671ID.collider:SetPos(271,86.816,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr67671ID.collider, 3)
level07.colliders.Tile7_wallNr68672ID = {}
level07.colliders.Tile7_wallNr68672ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr68672ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr68672ID.collider:SetZAxis(0.77193,0,0.635707)
level07.colliders.Tile7_wallNr68672ID.collider:SetHalfLengths(0.3,19.9869,22.0227)
level07.colliders.Tile7_wallNr68672ID.collider:SetPos(292,88.5081,698)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr68672ID.collider, 3)
level07.colliders.Tile7_wallNr69673ID = {}
level07.colliders.Tile7_wallNr69673ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr69673ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr69673ID.collider:SetZAxis(-0.447214,0,0.894427)
level07.colliders.Tile7_wallNr69673ID.collider:SetHalfLengths(0.3,5.24173,2.23607)
level07.colliders.Tile7_wallNr69673ID.collider:SetPos(308,103.495,714)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr69673ID.collider, 3)
level07.colliders.Tile7_wallNr70674ID = {}
level07.colliders.Tile7_wallNr70674ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr70674ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr70674ID.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.Tile7_wallNr70674ID.collider:SetHalfLengths(0.3,5.24172,3.04138)
level07.colliders.Tile7_wallNr70674ID.collider:SetPos(306.5,103.253,719)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr70674ID.collider, 3)
level07.colliders.Tile7_wallNr71675ID = {}
level07.colliders.Tile7_wallNr71675ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr71675ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr71675ID.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.Tile7_wallNr71675ID.collider:SetHalfLengths(0.3,5.24173,3.3541)
level07.colliders.Tile7_wallNr71675ID.collider:SetPos(334,130.568,603.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr71675ID.collider, 3)
level07.colliders.Tile7_wallNr72676ID = {}
level07.colliders.Tile7_wallNr72676ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr72676ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr72676ID.collider:SetZAxis(-0.21693,0,0.976187)
level07.colliders.Tile7_wallNr72676ID.collider:SetHalfLengths(0.3,7.41725,4.60977)
level07.colliders.Tile7_wallNr72676ID.collider:SetPos(330,130.81,609.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr72676ID.collider, 3)
level07.colliders.Tile7_wallNr73677ID = {}
level07.colliders.Tile7_wallNr73677ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr73677ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr73677ID.collider:SetZAxis(-0.0905358,0,0.995893)
level07.colliders.Tile7_wallNr73677ID.collider:SetHalfLengths(0.3,8.14243,5.52268)
level07.colliders.Tile7_wallNr73677ID.collider:SetPos(328.5,128.393,619.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr73677ID.collider, 3)
level07.colliders.Tile7_wallNr74678ID = {}
level07.colliders.Tile7_wallNr74678ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr74678ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr74678ID.collider:SetZAxis(0.316228,0,0.948683)
level07.colliders.Tile7_wallNr74678ID.collider:SetHalfLengths(0.3,6.45035,6.32456)
level07.colliders.Tile7_wallNr74678ID.collider:SetPos(330,125.25,631)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr74678ID.collider, 3)
level07.colliders.Tile7_wallNr75679ID = {}
level07.colliders.Tile7_wallNr75679ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr75679ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr75679ID.collider:SetZAxis(0.4741,0,0.880471)
level07.colliders.Tile7_wallNr75679ID.collider:SetHalfLengths(0.3,6.69208,7.38241)
level07.colliders.Tile7_wallNr75679ID.collider:SetPos(335.5,123.8,643.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr75679ID.collider, 3)
level07.colliders.Tile7_wallNr76680ID = {}
level07.colliders.Tile7_wallNr76680ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr76680ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr76680ID.collider:SetZAxis(0.5547,0,0.83205)
level07.colliders.Tile7_wallNr76680ID.collider:SetHalfLengths(0.3,7.9007,12.6194)
level07.colliders.Tile7_wallNr76680ID.collider:SetPos(346,122.108,660.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr76680ID.collider, 3)
level07.colliders.Tile7_wallNr77681ID = {}
level07.colliders.Tile7_wallNr77681ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr77681ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr77681ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr77681ID.collider:SetHalfLengths(0.3,5.48345,1)
level07.colliders.Tile7_wallNr77681ID.collider:SetPos(354,119.207,671)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr77681ID.collider, 3)
level07.colliders.Tile7_wallNr78682ID = {}
level07.colliders.Tile7_wallNr78682ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr78682ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr78682ID.collider:SetZAxis(-0.327111,0,0.944986)
level07.colliders.Tile7_wallNr78682ID.collider:SetHalfLengths(0.3,20.4704,13.7568)
level07.colliders.Tile7_wallNr78682ID.collider:SetPos(350.5,119.691,684)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr78682ID.collider, 3)
level07.colliders.Tile7_wallNr79683ID = {}
level07.colliders.Tile7_wallNr79683ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr79683ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr79683ID.collider:SetZAxis(-0.948683,0,-0.316228)
level07.colliders.Tile7_wallNr79683ID.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.Tile7_wallNr79683ID.collider:SetPos(344.5,104.22,696.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr79683ID.collider, 3)
level07.colliders.Tile7_wallNr80684ID = {}
level07.colliders.Tile7_wallNr80684ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr80684ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr80684ID.collider:SetZAxis(-0.976187,0,0.21693)
level07.colliders.Tile7_wallNr80684ID.collider:SetHalfLengths(0.3,5.48345,4.60977)
level07.colliders.Tile7_wallNr80684ID.collider:SetPos(338.5,104.22,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr80684ID.collider, 3)
level07.colliders.Tile7_wallNr81685ID = {}
level07.colliders.Tile7_wallNr81685ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr81685ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr81685ID.collider:SetZAxis(-0.970143,0,0.242536)
level07.colliders.Tile7_wallNr81685ID.collider:SetHalfLengths(0.3,5.48345,8.24621)
level07.colliders.Tile7_wallNr81685ID.collider:SetPos(326,103.737,700)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr81685ID.collider, 3)
level07.colliders.Tile7_wallNr82686ID = {}
level07.colliders.Tile7_wallNr82686ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr82686ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr82686ID.collider:SetZAxis(-0.762509,0,-0.646977)
level07.colliders.Tile7_wallNr82686ID.collider:SetHalfLengths(0.3,19.5035,21.6391)
level07.colliders.Tile7_wallNr82686ID.collider:SetPos(301.5,103.253,688)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr82686ID.collider, 3)
level07.colliders.Tile7_wallNr83687ID = {}
level07.colliders.Tile7_wallNr83687ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr83687ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr83687ID.collider:SetZAxis(0.316228,0,-0.948683)
level07.colliders.Tile7_wallNr83687ID.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.Tile7_wallNr83687ID.collider:SetPos(285.5,88.7498,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr83687ID.collider, 3)
level07.colliders.Tile7_wallNr84688ID = {}
level07.colliders.Tile7_wallNr84688ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr84688ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr84688ID.collider:SetZAxis(0.0905358,0,-0.995893)
level07.colliders.Tile7_wallNr84688ID.collider:SetHalfLengths(0.3,6.45035,5.52268)
level07.colliders.Tile7_wallNr84688ID.collider:SetPos(286.5,88.7498,665.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr84688ID.collider, 3)
level07.colliders.Tile7_wallNr85689ID = {}
level07.colliders.Tile7_wallNr85689ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr85689ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr85689ID.collider:SetZAxis(-0.384615,0,-0.923077)
level07.colliders.Tile7_wallNr85689ID.collider:SetHalfLengths(0.3,8.62588,6.5)
level07.colliders.Tile7_wallNr85689ID.collider:SetPos(284.5,90.2002,654)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr85689ID.collider, 3)
level07.colliders.Tile7_wallNr86690ID = {}
level07.colliders.Tile7_wallNr86690ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr86690ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr86690ID.collider:SetZAxis(-0.447214,0,-0.894427)
level07.colliders.Tile7_wallNr86690ID.collider:SetHalfLengths(0.3,8.62588,6.7082)
level07.colliders.Tile7_wallNr86690ID.collider:SetPos(279,93.826,642)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr86690ID.collider, 3)
level07.colliders.Tile7_wallNr87691ID = {}
level07.colliders.Tile7_wallNr87691ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr87691ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr87691ID.collider:SetZAxis(-0.5547,0,-0.83205)
level07.colliders.Tile7_wallNr87691ID.collider:SetHalfLengths(0.3,11.2848,12.6194)
level07.colliders.Tile7_wallNr87691ID.collider:SetPos(269,97.4519,625.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr87691ID.collider, 3)
level07.colliders.Tile7_wallNr88692ID = {}
level07.colliders.Tile7_wallNr88692ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr88692ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr88692ID.collider:SetZAxis(-0.961524,0,-0.274721)
level07.colliders.Tile7_wallNr88692ID.collider:SetHalfLengths(0.3,7.41724,3.64005)
level07.colliders.Tile7_wallNr88692ID.collider:SetPos(258.5,103.737,614)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr88692ID.collider, 3)
level07.colliders.Tile7_wallNr89693ID = {}
level07.colliders.Tile7_wallNr89693ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr89693ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr89693ID.collider:SetZAxis(-0.970143,0,-0.242536)
level07.colliders.Tile7_wallNr89693ID.collider:SetHalfLengths(0.3,6.20863,4.12311)
level07.colliders.Tile7_wallNr89693ID.collider:SetPos(251,106.154,612)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr89693ID.collider, 3)
level07.colliders.Tile7_wallNr90694ID = {}
level07.colliders.Tile7_wallNr90694ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr90694ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr90694ID.collider:SetZAxis(-0.948683,0,0.316228)
level07.colliders.Tile7_wallNr90694ID.collider:SetHalfLengths(0.3,5.48344,4.74342)
level07.colliders.Tile7_wallNr90694ID.collider:SetPos(242.5,107.363,612.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr90694ID.collider, 3)
level07.colliders.Tile7_wallNr91695ID = {}
level07.colliders.Tile7_wallNr91695ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr91695ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr91695ID.collider:SetZAxis(-0.493013,0,-0.870022)
level07.colliders.Tile7_wallNr91695ID.collider:SetHalfLengths(0.3,21.1956,17.2409)
level07.colliders.Tile7_wallNr91695ID.collider:SetPos(229.5,107.846,599)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr91695ID.collider, 3)
level07.colliders.Tile7_wallNr92696ID = {}
level07.colliders.Tile7_wallNr92696ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr92696ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr92696ID.collider:SetZAxis(0.755689,0,-0.654931)
level07.colliders.Tile7_wallNr92696ID.collider:SetHalfLengths(0.3,6.20863,9.92472)
level07.colliders.Tile7_wallNr92696ID.collider:SetPos(228.5,124.042,577.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr92696ID.collider, 3)
level07.colliders.Tile7_wallNr93697ID = {}
level07.colliders.Tile7_wallNr93697ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr93697ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr93697ID.collider:SetZAxis(-0.274721,0,-0.961524)
level07.colliders.Tile7_wallNr93697ID.collider:SetHalfLengths(0.3,5.48345,10.9202)
level07.colliders.Tile7_wallNr93697ID.collider:SetPos(233,122.833,560.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr93697ID.collider, 3)
level07.colliders.Tile7_wallNr94698ID = {}
level07.colliders.Tile7_wallNr94698ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr94698ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr94698ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr94698ID.collider:SetHalfLengths(0.3,6.20862,4)
level07.colliders.Tile7_wallNr94698ID.collider:SetPos(226,123.316,550)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr94698ID.collider, 3)
level07.colliders.Tile7_wallNr95699ID = {}
level07.colliders.Tile7_wallNr95699ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr95699ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr95699ID.collider:SetZAxis(0.969286,0,-0.245938)
level07.colliders.Tile7_wallNr95699ID.collider:SetHalfLengths(0.3,23.1294,34.5615)
level07.colliders.Tile7_wallNr95699ID.collider:SetPos(255.5,124.525,541.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr95699ID.collider, 3)
level07.colliders.Tile7_wallNr96700ID = {}
level07.colliders.Tile7_wallNr96700ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr96700ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr96700ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr96700ID.collider:SetHalfLengths(0.3,5.48346,13)
level07.colliders.Tile7_wallNr96700ID.collider:SetPos(302,142.654,533)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr96700ID.collider, 3)
level07.colliders.Tile7_wallNr97701ID = {}
level07.colliders.Tile7_wallNr97701ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr97701ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr97701ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr97701ID.collider:SetHalfLengths(0.3,5.72517,20)
level07.colliders.Tile7_wallNr97701ID.collider:SetPos(315,142.171,553)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr97701ID.collider, 3)
level07.colliders.Tile7_wallNr98702ID = {}
level07.colliders.Tile7_wallNr98702ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr98702ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr98702ID.collider:SetZAxis(0.604387,0,0.796691)
level07.colliders.Tile7_wallNr98702ID.collider:SetHalfLengths(0.3,15.8776,18.2003)
level07.colliders.Tile7_wallNr98702ID.collider:SetPos(326,141.446,587.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr98702ID.collider, 3)
level07.props.Rock715ID = {}
level07.props.Rock715ID.model = Assets.LoadModel('Models/Stone2.model')
level07.props.Rock715ID.transformID = Gear.BindStaticInstance(level07.props.Rock715ID.model)
Transform.SetPosition(level07.props.Rock715ID.transformID, {x=390.664, y=123.514, z=630.811})
Transform.SetScaleNonUniform(level07.props.Rock715ID.transformID, 8.00562, 10.6213, 14.9332)
Transform.SetRotation(level07.props.Rock715ID.transformID, {x=0, y=0, z=0})
level07.props.Rock715ID.collider = SphereCollider.Create(-1)
level07.props.Rock715ID.collider:SetOffset(-1,5,5)
level07.props.Rock715ID.collider:SetRadius(2)
level07.props.Rock715ID.collider:SetPos(389.664,128.514,635.811)
CollisionHandler.AddSphere(level07.props.Rock715ID.collider, 3)
level07.props.Rock1716ID = {}
level07.props.Rock1716ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Rock1716ID.transformID = Gear.BindStaticInstance(level07.props.Rock1716ID.model)
Transform.SetPosition(level07.props.Rock1716ID.transformID, {x=388.09, y=124.25, z=662.016})
Transform.SetScaleNonUniform(level07.props.Rock1716ID.transformID, 8.40228, 16.538, 11.3485)
Transform.SetRotation(level07.props.Rock1716ID.transformID, {x=0, y=1.78624, z=0})
level07.props.Rock1716ID.collider = SphereCollider.Create(-1)
level07.props.Rock1716ID.collider:SetOffset(1,0,0)
level07.props.Rock1716ID.collider:SetRadius(1.5)
level07.props.Rock1716ID.collider:SetPos(389.09,124.25,662.016)
CollisionHandler.AddSphere(level07.props.Rock1716ID.collider, 3)
end
level07.unload = function()
level07.props.tile740ID = nil
Gear.UnbindInstance(level07.props.t7s165ID.transformID)
level07.props.t7s165ID = nil
Gear.UnbindInstance(level07.props.t7s266ID.transformID)
level07.props.t7s266ID = nil
Gear.UnbindInstance(level07.props.t7s367ID.transformID)
level07.props.t7s367ID = nil
Gear.UnbindInstance(level07.props.t7s468ID.transformID)
level07.props.t7s468ID = nil
Gear.UnbindInstance(level07.props.t7s569ID.transformID)
level07.props.t7s569ID = nil
Gear.UnbindInstance(level07.props.t7s670ID.transformID)
level07.props.t7s670ID = nil
Gear.UnbindInstance(level07.props.t7s771ID.transformID)
level07.props.t7s771ID = nil
Gear.UnbindInstance(level07.props.t7s872ID.transformID)
level07.props.t7s872ID = nil
Gear.UnbindInstance(level07.props.t7s973ID.transformID)
level07.props.t7s973ID = nil
level07.colliders.Tile7_wallNr602ID = nil
level07.colliders.Tile7_wallNr1603ID = nil
level07.colliders.Tile7_wallNr2604ID = nil
level07.colliders.Tile7_wallNr3605ID = nil
level07.colliders.Tile7_wallNr4606ID = nil
level07.colliders.Tile7_wallNr5607ID = nil
level07.colliders.Tile7_wallNr6608ID = nil
level07.colliders.Tile7_wallNr7609ID = nil
level07.colliders.Tile7_wallNr8610ID = nil
level07.colliders.Tile7_wallNr9611ID = nil
level07.colliders.Tile7_wallNr10612ID = nil
level07.colliders.Tile7_wallNr11613ID = nil
level07.colliders.Tile7_wallNr12614ID = nil
level07.colliders.Tile7_wallNr13615ID = nil
level07.colliders.Tile7_wallNr14616ID = nil
level07.colliders.Tile7_wallNr15617ID = nil
level07.colliders.Tile7_wallNr16618ID = nil
level07.colliders.Tile7_wallNr17619ID = nil
level07.colliders.Tile7_wallNr18620ID = nil
level07.colliders.Tile7_wallNr19621ID = nil
level07.colliders.Tile7_wallNr20622ID = nil
level07.colliders.Tile7_wallNr21623ID = nil
level07.colliders.Tile7_wallNr22624ID = nil
level07.colliders.Tile7_wallNr23625ID = nil
level07.colliders.Tile7_wallNr24626ID = nil
level07.colliders.Tile7_wallNr25627ID = nil
level07.colliders.Tile7_wallNr26628ID = nil
level07.colliders.Tile7_wallNr27629ID = nil
level07.colliders.Tile7_wallNr28630ID = nil
level07.colliders.Tile7_wallNr29631ID = nil
level07.colliders.Tile7_wallNr30632ID = nil
level07.colliders.Tile7_wallNr31633ID = nil
level07.colliders.Tile7_wallNr32634ID = nil
level07.colliders.Tile7_wallNr33635ID = nil
level07.colliders.Tile7_wallNr34636ID = nil
level07.colliders.Tile7_wallNr35637ID = nil
level07.colliders.Tile7_wallNr36638ID = nil
level07.colliders.Tile7_wallNr37639ID = nil
level07.colliders.Tile7_wallNr38640ID = nil
level07.colliders.Tile7_wallNr39641ID = nil
level07.colliders.Tile7_wallNr40642ID = nil
level07.colliders.Tile7_wallNr41645ID = nil
level07.colliders.Tile7_wallNr42646ID = nil
level07.colliders.Tile7_wallNr43647ID = nil
level07.colliders.Tile7_wallNr44648ID = nil
level07.colliders.Tile7_wallNr45649ID = nil
level07.colliders.Tile7_wallNr46650ID = nil
level07.colliders.Tile7_wallNr47651ID = nil
level07.colliders.Tile7_wallNr48652ID = nil
level07.colliders.Tile7_wallNr49653ID = nil
level07.colliders.Tile7_wallNr50654ID = nil
level07.colliders.Tile7_wallNr51655ID = nil
level07.colliders.Tile7_wallNr52656ID = nil
level07.colliders.Tile7_wallNr53657ID = nil
level07.colliders.Tile7_wallNr54658ID = nil
level07.colliders.Tile7_wallNr55659ID = nil
level07.colliders.Tile7_wallNr56660ID = nil
level07.colliders.Tile7_wallNr57661ID = nil
level07.colliders.Tile7_wallNr58662ID = nil
level07.colliders.Tile7_wallNr59663ID = nil
level07.colliders.Tile7_wallNr60664ID = nil
level07.colliders.Tile7_wallNr61665ID = nil
level07.colliders.Tile7_wallNr62666ID = nil
level07.colliders.Tile7_wallNr63667ID = nil
level07.colliders.Tile7_wallNr64668ID = nil
level07.colliders.Tile7_wallNr65669ID = nil
level07.colliders.Tile7_wallNr66670ID = nil
level07.colliders.Tile7_wallNr67671ID = nil
level07.colliders.Tile7_wallNr68672ID = nil
level07.colliders.Tile7_wallNr69673ID = nil
level07.colliders.Tile7_wallNr70674ID = nil
level07.colliders.Tile7_wallNr71675ID = nil
level07.colliders.Tile7_wallNr72676ID = nil
level07.colliders.Tile7_wallNr73677ID = nil
level07.colliders.Tile7_wallNr74678ID = nil
level07.colliders.Tile7_wallNr75679ID = nil
level07.colliders.Tile7_wallNr76680ID = nil
level07.colliders.Tile7_wallNr77681ID = nil
level07.colliders.Tile7_wallNr78682ID = nil
level07.colliders.Tile7_wallNr79683ID = nil
level07.colliders.Tile7_wallNr80684ID = nil
level07.colliders.Tile7_wallNr81685ID = nil
level07.colliders.Tile7_wallNr82686ID = nil
level07.colliders.Tile7_wallNr83687ID = nil
level07.colliders.Tile7_wallNr84688ID = nil
level07.colliders.Tile7_wallNr85689ID = nil
level07.colliders.Tile7_wallNr86690ID = nil
level07.colliders.Tile7_wallNr87691ID = nil
level07.colliders.Tile7_wallNr88692ID = nil
level07.colliders.Tile7_wallNr89693ID = nil
level07.colliders.Tile7_wallNr90694ID = nil
level07.colliders.Tile7_wallNr91695ID = nil
level07.colliders.Tile7_wallNr92696ID = nil
level07.colliders.Tile7_wallNr93697ID = nil
level07.colliders.Tile7_wallNr94698ID = nil
level07.colliders.Tile7_wallNr95699ID = nil
level07.colliders.Tile7_wallNr96700ID = nil
level07.colliders.Tile7_wallNr97701ID = nil
level07.colliders.Tile7_wallNr98702ID = nil
Gear.UnbindInstance(level07.props.Rock715ID.transformID)
level07.props.Rock715ID = nil
Gear.UnbindInstance(level07.props.Rock1716ID.transformID)
level07.props.Rock1716ID = nil
level07.props = nil
level07.colliders = nil
level07.triggers = nil
end
levels[7] = level07
-------------------------------------level07-----------------------------------------------


-------------------------------------level08-----------------------------------------------

level08 = {}
level08.surrounding = { 7 }
level08.load = function()
level08.props = {}
level08.colliders = {}
level08.triggers = {}
level08.props.tile841ID = {}
level08.props.t8s174ID = {}
level08.props.t8s174ID.model = Assets.LoadModel('Models/tile8_s1.model')
level08.props.t8s174ID.transformID = Gear.BindStaticInstance(level08.props.t8s174ID.model)
Transform.SetPosition(level08.props.t8s174ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s174ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s174ID.transformID, {x=0, y=0, z=0})
level08.props.t8s275ID = {}
level08.props.t8s275ID.model = Assets.LoadModel('Models/tile8_s2.model')
level08.props.t8s275ID.transformID = Gear.BindStaticInstance(level08.props.t8s275ID.model)
Transform.SetPosition(level08.props.t8s275ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s275ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s275ID.transformID, {x=0, y=0, z=0})
level08.props.t8s376ID = {}
level08.props.t8s376ID.model = Assets.LoadModel('Models/tile8_s3.model')
level08.props.t8s376ID.transformID = Gear.BindStaticInstance(level08.props.t8s376ID.model)
Transform.SetPosition(level08.props.t8s376ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s376ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s376ID.transformID, {x=0, y=0, z=0})
level08.props.t8s4721ID = {}
level08.props.t8s4721ID.model = Assets.LoadModel('Models/tile8_s4.model')
level08.props.t8s4721ID.transformID = Gear.BindStaticInstance(level08.props.t8s4721ID.model)
Transform.SetPosition(level08.props.t8s4721ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s4721ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s4721ID.transformID, {x=0, y=0, z=0})
level08.props.t8s5722ID = {}
level08.props.t8s5722ID.model = Assets.LoadModel('Models/tile8_s5.model')
level08.props.t8s5722ID.transformID = Gear.BindStaticInstance(level08.props.t8s5722ID.model)
Transform.SetPosition(level08.props.t8s5722ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s5722ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s5722ID.transformID, {x=0, y=0, z=0})
level08.props.t8s6723ID = {}
level08.props.t8s6723ID.model = Assets.LoadModel('Models/tile8_s6a.model')
level08.props.t8s6723ID.transformID = Gear.BindStaticInstance(level08.props.t8s6723ID.model)
Transform.SetPosition(level08.props.t8s6723ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s6723ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s6723ID.transformID, {x=0, y=0, z=0})
level08.props.t8s7724ID = {}
level08.props.t8s7724ID.model = Assets.LoadModel('Models/tile8_s7.model')
level08.props.t8s7724ID.transformID = Gear.BindStaticInstance(level08.props.t8s7724ID.model)
Transform.SetPosition(level08.props.t8s7724ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s7724ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s7724ID.transformID, {x=0, y=0, z=0})
level08.props.t8s8733ID = {}
level08.props.t8s8733ID.model = Assets.LoadModel('Models/tile8_s8a.model')
level08.props.t8s8733ID.transformID = Gear.BindStaticInstance(level08.props.t8s8733ID.model)
Transform.SetPosition(level08.props.t8s8733ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s8733ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s8733ID.transformID, {x=0, y=0, z=0})
end
level08.unload = function()
level08.props.tile841ID = nil
Gear.UnbindInstance(level08.props.t8s174ID.transformID)
level08.props.t8s174ID = nil
Gear.UnbindInstance(level08.props.t8s275ID.transformID)
level08.props.t8s275ID = nil
Gear.UnbindInstance(level08.props.t8s376ID.transformID)
level08.props.t8s376ID = nil
Gear.UnbindInstance(level08.props.t8s4721ID.transformID)
level08.props.t8s4721ID = nil
Gear.UnbindInstance(level08.props.t8s5722ID.transformID)
level08.props.t8s5722ID = nil
Gear.UnbindInstance(level08.props.t8s6723ID.transformID)
level08.props.t8s6723ID = nil
Gear.UnbindInstance(level08.props.t8s7724ID.transformID)
level08.props.t8s7724ID = nil
Gear.UnbindInstance(level08.props.t8s8733ID.transformID)
level08.props.t8s8733ID = nil
level08.props = nil
level08.colliders = nil
level08.triggers = nil
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
