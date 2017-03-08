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
Heightmap5.asset:SetPosition({x=384, y=38.5562, z=384})
Heightmap5.asset:SetHeightMultiplier(0.222049)
heightmaps[5] = Heightmap5
Heightmap5 = nil
Heightmap6 = {}
Heightmap6.asset = Assets.LoadHeightmap("Textures/tile6_height.png")
Heightmap6.asset:SetPosition({x=384, y=82.3189, z=640})
Heightmap6.asset:SetHeightMultiplier(0.0960066)
heightmaps[6] = Heightmap6
Heightmap6 = nil
Heightmap7 = {}
Heightmap7.asset = Assets.LoadHeightmap("Textures/tile7_height.png")
Heightmap7.asset:SetPosition({x=128, y=81.0229, z=512})
Heightmap7.asset:SetHeightMultiplier(0.268273)
heightmaps[7] = Heightmap7
Heightmap7 = nil
Heightmap8 = {}
Heightmap8.asset = Assets.LoadHeightmap("Textures/tile8_height.png")
Heightmap8.asset:SetPosition({x=256, y=100, z=384})
Heightmap8.asset:SetHeightMultiplier(0.165527)
heightmaps[8] = Heightmap8
Heightmap8 = nil

---------------------------------Heightmap-----------------------------


---------------------------------Settings-----------------------------

Transform.SetPosition(player.transformID, {x=33, y=7.5, z=145})
player:ChangeHeightmap(1)


---------------------------------Settings-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.surrounding = { 2 }
level01.load = function()
level01.props = {}
level01.colliders = {}
level01.triggers = {}
level01.enemies = {}
level01.props.tile1ID = {}
level01.props.m1ID = {}
level01.props.m1ID.model = Assets.LoadModel('Models/tile1_m1.model')
level01.props.m1ID.transformID = Gear.BindStaticInstance(level01.props.m1ID.model)
Transform.SetPosition(level01.props.m1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m1ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m1ID.transformID, {x=-0, y=0, z=-0})
level01.props.m2ID = {}
level01.props.m2ID.model = Assets.LoadModel('Models/tile1_m2.model')
level01.props.m2ID.transformID = Gear.BindStaticInstance(level01.props.m2ID.model)
Transform.SetPosition(level01.props.m2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m2ID.transformID, {x=-0, y=0, z=-0})
level01.props.m3ID = {}
level01.props.m3ID.model = Assets.LoadModel('Models/tile1_m3.model')
level01.props.m3ID.transformID = Gear.BindStaticInstance(level01.props.m3ID.model)
Transform.SetPosition(level01.props.m3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m3ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m3ID.transformID, {x=-0, y=0, z=-0})
level01.props.m4ID = {}
level01.props.m4ID.model = Assets.LoadModel('Models/tile1_m4.model')
level01.props.m4ID.transformID = Gear.BindStaticInstance(level01.props.m4ID.model)
Transform.SetPosition(level01.props.m4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m4ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m4ID.transformID, {x=-0, y=0, z=-0})
level01.props.m5ID = {}
level01.props.m5ID.model = Assets.LoadModel('Models/tile1_m5.model')
level01.props.m5ID.transformID = Gear.BindStaticInstance(level01.props.m5ID.model)
Transform.SetPosition(level01.props.m5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m5ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m5ID.transformID, {x=-0, y=0, z=-0})
level01.props.m6ID = {}
level01.props.m6ID.model = Assets.LoadModel('Models/tile1_m6.model')
level01.props.m6ID.transformID = Gear.BindStaticInstance(level01.props.m6ID.model)
Transform.SetPosition(level01.props.m6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m6ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m6ID.transformID, {x=-0, y=0, z=-0})
level01.props.m7ID = {}
level01.props.m7ID.model = Assets.LoadModel('Models/tile1_m7.model')
level01.props.m7ID.transformID = Gear.BindStaticInstance(level01.props.m7ID.model)
Transform.SetPosition(level01.props.m7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m7ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m7ID.transformID, {x=-0, y=0, z=-0})
level01.props.m8ID = {}
level01.props.m8ID.model = Assets.LoadModel('Models/tile1_m8.model')
level01.props.m8ID.transformID = Gear.BindStaticInstance(level01.props.m8ID.model)
Transform.SetPosition(level01.props.m8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m8ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m8ID.transformID, {x=-0, y=0, z=-0})
level01.props.s1ID = {}
level01.props.s1ID.model = Assets.LoadModel('Models/tile1_s1.model')
level01.props.s1ID.transformID = Gear.BindStaticInstance(level01.props.s1ID.model)
Transform.SetPosition(level01.props.s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s1ID.transformID, {x=-0, y=0, z=-0})
level01.props.s2ID = {}
level01.props.s2ID.model = Assets.LoadModel('Models/tile1_s2.model')
level01.props.s2ID.transformID = Gear.BindStaticInstance(level01.props.s2ID.model)
Transform.SetPosition(level01.props.s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s2ID.transformID, {x=-0, y=0, z=-0})
level01.props.s3ID = {}
level01.props.s3ID.model = Assets.LoadModel('Models/tile1_s3.model')
level01.props.s3ID.transformID = Gear.BindStaticInstance(level01.props.s3ID.model)
Transform.SetPosition(level01.props.s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s3ID.transformID, {x=-0, y=0, z=-0})
level01.props.s4ID = {}
level01.props.s4ID.model = Assets.LoadModel('Models/tile1_s4.model')
level01.props.s4ID.transformID = Gear.BindStaticInstance(level01.props.s4ID.model)
Transform.SetPosition(level01.props.s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s4ID.transformID, {x=-0, y=0, z=-0})
level01.props.s5ID = {}
level01.props.s5ID.model = Assets.LoadModel('Models/tile1_s5.model')
level01.props.s5ID.transformID = Gear.BindStaticInstance(level01.props.s5ID.model)
Transform.SetPosition(level01.props.s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s5ID.transformID, {x=-0, y=0, z=-0})
level01.props.s6ID = {}
level01.props.s6ID.model = Assets.LoadModel('Models/tile1_s6.model')
level01.props.s6ID.transformID = Gear.BindStaticInstance(level01.props.s6ID.model)
Transform.SetPosition(level01.props.s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s6ID.transformID, {x=-0, y=0, z=-0})
level01.props.s7ID = {}
level01.props.s7ID.model = Assets.LoadModel('Models/tile1_s7.model')
level01.props.s7ID.transformID = Gear.BindStaticInstance(level01.props.s7ID.model)
Transform.SetPosition(level01.props.s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s7ID.transformID, {x=-0, y=0, z=-0})
level01.colliders.OpWallID = {}
level01.colliders.OpWallID.collider = OBBCollider.Create(-1)
level01.colliders.OpWallID.collider:SetOffset(0,0,0)
level01.colliders.OpWallID.collider:SetAxes(0.894427, -0, 0.447214, 0, -1, -0, 0.447214, 0, -0.894427)
level01.colliders.OpWallID.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.OpWallID.collider:SetPos(6,6.83489,143)
CollisionHandler.AddOBB(level01.colliders.OpWallID.collider, 3)
level01.colliders.OpWall1ID = {}
level01.colliders.OpWall1ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1ID.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level01.colliders.OpWall1ID.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.OpWall1ID.collider:SetPos(10.5,7.12947,140)
CollisionHandler.AddOBB(level01.colliders.OpWall1ID.collider, 3)
level01.colliders.OpWall2ID = {}
level01.colliders.OpWall2ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.OpWall2ID.collider:SetHalfLengths(0.3,5,4)
level01.colliders.OpWall2ID.collider:SetPos(17,6.98218,141)
CollisionHandler.AddOBB(level01.colliders.OpWall2ID.collider, 3)
level01.colliders.OpWall3ID = {}
level01.colliders.OpWall3ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall3ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall3ID.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level01.colliders.OpWall3ID.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.OpWall3ID.collider:SetPos(45,8.60238,129.5)
CollisionHandler.AddOBB(level01.colliders.OpWall3ID.collider, 3)
level01.colliders.OpWall4ID = {}
level01.colliders.OpWall4ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall4ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall4ID.collider:SetAxes(-0.863779, 0, 0.503871, 0, -1, 0, 0.503871, 0, 0.863779)
level01.colliders.OpWall4ID.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.OpWall4ID.collider:SetPos(51.5,8.60238,137)
CollisionHandler.AddOBB(level01.colliders.OpWall4ID.collider, 3)
level01.colliders.OpWall5ID = {}
level01.colliders.OpWall5ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall5ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall5ID.collider:SetAxes(-0.980581, 0, 0.196116, 0, -1, 0, 0.196116, 0, 0.980581)
level01.colliders.OpWall5ID.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.OpWall5ID.collider:SetPos(55.5,9.33883,145.5)
CollisionHandler.AddOBB(level01.colliders.OpWall5ID.collider, 3)
level01.colliders.OpWall6ID = {}
level01.colliders.OpWall6ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall6ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall6ID.collider:SetAxes(-0.752577, 0, -0.658505, -0, -1, 0, -0.658505, 0, 0.752577)
level01.colliders.OpWall6ID.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.OpWall6ID.collider:SetPos(52.5,9.33883,152)
CollisionHandler.AddOBB(level01.colliders.OpWall6ID.collider, 3)
level01.colliders.OpWall7ID = {}
level01.colliders.OpWall7ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall7ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall7ID.collider:SetAxes(-0.196116, 0, -0.980581, -0, -1, 0, -0.980581, 0, 0.196116)
level01.colliders.OpWall7ID.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.OpWall7ID.collider:SetPos(44,9.48612,157)
CollisionHandler.AddOBB(level01.colliders.OpWall7ID.collider, 3)
level01.colliders.OpWall8ID = {}
level01.colliders.OpWall8ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall8ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall8ID.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level01.colliders.OpWall8ID.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.OpWall8ID.collider:SetPos(35,7.12947,155)
CollisionHandler.AddOBB(level01.colliders.OpWall8ID.collider, 3)
level01.colliders.OpWall9ID = {}
level01.colliders.OpWall9ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall9ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall9ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.OpWall9ID.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.OpWall9ID.collider:SetPos(37,7.27676,160)
CollisionHandler.AddOBB(level01.colliders.OpWall9ID.collider, 3)
level01.colliders.OpWall10ID = {}
level01.colliders.OpWall10ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall10ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall10ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level01.colliders.OpWall10ID.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.OpWall10ID.collider:SetPos(39.5,6.98218,163)
CollisionHandler.AddOBB(level01.colliders.OpWall10ID.collider, 3)
level01.colliders.OpWall11ID = {}
level01.colliders.OpWall11ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall11ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall11ID.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level01.colliders.OpWall11ID.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.OpWall11ID.collider:SetPos(43.5,7.12947,165)
CollisionHandler.AddOBB(level01.colliders.OpWall11ID.collider, 3)
level01.colliders.OpWall12ID = {}
level01.colliders.OpWall12ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall12ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall12ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.OpWall12ID.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.OpWall12ID.collider:SetPos(48.5,7.57134,166)
CollisionHandler.AddOBB(level01.colliders.OpWall12ID.collider, 3)
level01.colliders.OpWall13ID = {}
level01.colliders.OpWall13ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall13ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall13ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level01.colliders.OpWall13ID.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.OpWall13ID.collider:SetPos(54,8.01322,168)
CollisionHandler.AddOBB(level01.colliders.OpWall13ID.collider, 3)
level01.colliders.OpWall14ID = {}
level01.colliders.OpWall14ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall14ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall14ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.OpWall14ID.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.OpWall14ID.collider:SetPos(57.5,8.01322,171)
CollisionHandler.AddOBB(level01.colliders.OpWall14ID.collider, 3)
level01.colliders.OpWall15ID = {}
level01.colliders.OpWall15ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall15ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall15ID.collider:SetAxes(-0.992278, 0, -0.124035, -0, -1, 0, -0.124035, 0, 0.992278)
level01.colliders.OpWall15ID.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.OpWall15ID.collider:SetPos(57.5,8.01322,176)
CollisionHandler.AddOBB(level01.colliders.OpWall15ID.collider, 3)
level01.colliders.OpWall16ID = {}
level01.colliders.OpWall16ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall16ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall16ID.collider:SetAxes(-0.768221, 0, -0.640184, -0, -1, 0, -0.640184, 0, 0.768221)
level01.colliders.OpWall16ID.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.OpWall16ID.collider:SetPos(54.5,8.01322,183)
CollisionHandler.AddOBB(level01.colliders.OpWall16ID.collider, 3)
level01.colliders.OpWall17ID = {}
level01.colliders.OpWall17ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall17ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall17ID.collider:SetAxes(-0.164399, 0, -0.986394, -0, -1, 0, -0.986394, 0, 0.164399)
level01.colliders.OpWall17ID.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.OpWall17ID.collider:SetPos(49,8.01322,186.5)
CollisionHandler.AddOBB(level01.colliders.OpWall17ID.collider, 3)
level01.colliders.OpWall18ID = {}
level01.colliders.OpWall18ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall18ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall18ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.OpWall18ID.collider:SetHalfLengths(0.3,5,2)
level01.colliders.OpWall18ID.collider:SetPos(44,8.01322,187)
CollisionHandler.AddOBB(level01.colliders.OpWall18ID.collider, 3)
level01.colliders.OpWall19ID = {}
level01.colliders.OpWall19ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall19ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall19ID.collider:SetAxes(0.6, 0, -0.8, 0, -1, -0, -0.8, 0, -0.6)
level01.colliders.OpWall19ID.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.OpWall19ID.collider:SetPos(40,8.01322,185.5)
CollisionHandler.AddOBB(level01.colliders.OpWall19ID.collider, 3)
level01.colliders.OpWall20ID = {}
level01.colliders.OpWall20ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall20ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall20ID.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level01.colliders.OpWall20ID.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.OpWall20ID.collider:SetPos(37,7.71863,182)
CollisionHandler.AddOBB(level01.colliders.OpWall20ID.collider, 3)
level01.colliders.OpWall21ID = {}
level01.colliders.OpWall21ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall21ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall21ID.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level01.colliders.OpWall21ID.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.OpWall21ID.collider:SetPos(35,7.12947,176.5)
CollisionHandler.AddOBB(level01.colliders.OpWall21ID.collider, 3)
level01.colliders.OpWall22ID = {}
level01.colliders.OpWall22ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall22ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall22ID.collider:SetAxes(0.857493, 0, -0.514496, 0, -1, -0, -0.514496, 0, -0.857493)
level01.colliders.OpWall22ID.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.OpWall22ID.collider:SetPos(32.5,6.54031,170.5)
CollisionHandler.AddOBB(level01.colliders.OpWall22ID.collider, 3)
level01.colliders.OpWall23ID = {}
level01.colliders.OpWall23ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall23ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall23ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.OpWall23ID.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.OpWall23ID.collider:SetPos(29.5,6.54031,168)
CollisionHandler.AddOBB(level01.colliders.OpWall23ID.collider, 3)
level01.colliders.OpWall24ID = {}
level01.colliders.OpWall24ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall24ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall24ID.collider:SetAxes(-0.640184, 0, -0.768221, -0, -1, 0, -0.768221, 0, 0.640184)
level01.colliders.OpWall24ID.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.OpWall24ID.collider:SetPos(25,6.09844,170.5)
CollisionHandler.AddOBB(level01.colliders.OpWall24ID.collider, 3)
level01.colliders.OpWall25ID = {}
level01.colliders.OpWall25ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall25ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall25ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.OpWall25ID.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.OpWall25ID.collider:SetPos(22,5.80386,174.5)
CollisionHandler.AddOBB(level01.colliders.OpWall25ID.collider, 3)
level01.colliders.OpWall26ID = {}
level01.colliders.OpWall26ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall26ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall26ID.collider:SetAxes(-0.919145, 0, 0.393919, 0, -1, 0, 0.393919, 0, 0.919145)
level01.colliders.OpWall26ID.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.OpWall26ID.collider:SetPos(23.5,5.80386,179.5)
CollisionHandler.AddOBB(level01.colliders.OpWall26ID.collider, 3)
level01.colliders.OpWall27ID = {}
level01.colliders.OpWall27ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall27ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall27ID.collider:SetAxes(-0.680451, 0, 0.732794, 0, -1, 0, 0.732794, 0, 0.680451)
level01.colliders.OpWall27ID.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.OpWall27ID.collider:SetPos(32,5.50927,189.5)
CollisionHandler.AddOBB(level01.colliders.OpWall27ID.collider, 3)
level01.colliders.OpWall29ID = {}
level01.colliders.OpWall29ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall29ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall29ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.OpWall29ID.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.OpWall29ID.collider:SetPos(35.5,8.16051,198)
CollisionHandler.AddOBB(level01.colliders.OpWall29ID.collider, 3)
level01.colliders.OpWall30ID = {}
level01.colliders.OpWall30ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall30ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall30ID.collider:SetAxes(0.178885, -0, 0.98387, 0, -1, -0, 0.98387, 0, -0.178885)
level01.colliders.OpWall30ID.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.OpWall30ID.collider:SetPos(42.5,8.3078,200)
CollisionHandler.AddOBB(level01.colliders.OpWall30ID.collider, 3)
level01.colliders.OpWall31ID = {}
level01.colliders.OpWall31ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall31ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall31ID.collider:SetAxes(-0.813733, 0, 0.581238, 0, -1, 0, 0.581238, 0, 0.813733)
level01.colliders.OpWall31ID.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.OpWall31ID.collider:SetPos(50.5,9.63341,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall31ID.collider, 3)
level01.colliders.OpWall32ID = {}
level01.colliders.OpWall32ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall32ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall32ID.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level01.colliders.OpWall32ID.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.OpWall32ID.collider:SetPos(55,10.3699,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall32ID.collider, 3)
level01.colliders.OpWall33ID = {}
level01.colliders.OpWall33ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall33ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall33ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level01.colliders.OpWall33ID.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.OpWall33ID.collider:SetPos(62,11.4009,208)
CollisionHandler.AddOBB(level01.colliders.OpWall33ID.collider, 3)
level01.colliders.OpWall34ID = {}
level01.colliders.OpWall34ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall34ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall34ID.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level01.colliders.OpWall34ID.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.OpWall34ID.collider:SetPos(71.5,15.0832,205.5)
CollisionHandler.AddOBB(level01.colliders.OpWall34ID.collider, 3)
level01.colliders.OpWall35ID = {}
level01.colliders.OpWall35ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall35ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall35ID.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level01.colliders.OpWall35ID.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.OpWall35ID.collider:SetPos(79,18.3236,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall35ID.collider, 3)
level01.colliders.OpWall36ID = {}
level01.colliders.OpWall36ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall36ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall36ID.collider:SetAxes(0.650791, -0, 0.759257, 0, -1, -0, 0.759257, 0, -0.650791)
level01.colliders.OpWall36ID.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.OpWall36ID.collider:SetPos(85.5,20.091,198)
CollisionHandler.AddOBB(level01.colliders.OpWall36ID.collider, 3)
level01.colliders.OpWall37ID = {}
level01.colliders.OpWall37ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall37ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall37ID.collider:SetAxes(0.384615, -0, 0.923077, 0, -1, -0, 0.923077, 0, -0.384615)
level01.colliders.OpWall37ID.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.OpWall37ID.collider:SetPos(95,23.1841,192.5)
CollisionHandler.AddOBB(level01.colliders.OpWall37ID.collider, 3)
level01.colliders.OpWall38ID = {}
level01.colliders.OpWall38ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall38ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall38ID.collider:SetAxes(-0.529999, 0, 0.847998, 0, -1, 0, 0.847998, 0, 0.529999)
level01.colliders.OpWall38ID.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.OpWall38ID.collider:SetPos(105,27.0137,192.5)
CollisionHandler.AddOBB(level01.colliders.OpWall38ID.collider, 3)
level01.colliders.OpWall39ID = {}
level01.colliders.OpWall39ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall39ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall39ID.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level01.colliders.OpWall39ID.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.OpWall39ID.collider:SetPos(111,30.696,195.5)
CollisionHandler.AddOBB(level01.colliders.OpWall39ID.collider, 3)
level01.colliders.OpWall40ID = {}
level01.colliders.OpWall40ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall40ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall40ID.collider:SetAxes(-0.624695, 0, 0.780869, 0, -1, 0, 0.780869, 0, 0.624695)
level01.colliders.OpWall40ID.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.OpWall40ID.collider:SetPos(115.5,31.8743,198)
CollisionHandler.AddOBB(level01.colliders.OpWall40ID.collider, 3)
level01.colliders.OpWall41ID = {}
level01.colliders.OpWall41ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall41ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall41ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.OpWall41ID.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.OpWall41ID.collider:SetPos(121,34.6728,206)
CollisionHandler.AddOBB(level01.colliders.OpWall41ID.collider, 3)
level01.colliders.OpWall42ID = {}
level01.colliders.OpWall42ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall42ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall42ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level01.colliders.OpWall42ID.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.OpWall42ID.collider:SetPos(126,32.9053,211.5)
CollisionHandler.AddOBB(level01.colliders.OpWall42ID.collider, 3)
level01.colliders.OpWall43ID = {}
level01.colliders.OpWall43ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall43ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall43ID.collider:SetAxes(-0.913812, 0, 0.406139, 0, -1, 0, 0.406139, 0, 0.913812)
level01.colliders.OpWall43ID.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.OpWall43ID.collider:SetPos(90,21.5639,213.5)
CollisionHandler.AddOBB(level01.colliders.OpWall43ID.collider, 3)
level01.colliders.OpWall44ID = {}
level01.colliders.OpWall44ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall44ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall44ID.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level01.colliders.OpWall44ID.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.OpWall44ID.collider:SetPos(98,22.4477,219.5)
CollisionHandler.AddOBB(level01.colliders.OpWall44ID.collider, 3)
level01.colliders.OpWall45ID = {}
level01.colliders.OpWall45ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall45ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall45ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level01.colliders.OpWall45ID.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.OpWall45ID.collider:SetPos(105.5,26.8664,222.5)
CollisionHandler.AddOBB(level01.colliders.OpWall45ID.collider, 3)
level01.colliders.OpWall46ID = {}
level01.colliders.OpWall46ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall46ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall46ID.collider:SetAxes(0.406139, -0, 0.913812, 0, -1, -0, 0.913812, 0, -0.406139)
level01.colliders.OpWall46ID.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.OpWall46ID.collider:SetPos(111.5,28.3393,222)
CollisionHandler.AddOBB(level01.colliders.OpWall46ID.collider, 3)
level01.colliders.OpWall47ID = {}
level01.colliders.OpWall47ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall47ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall47ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level01.colliders.OpWall47ID.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.OpWall47ID.collider:SetPos(116,30.9905,217)
CollisionHandler.AddOBB(level01.colliders.OpWall47ID.collider, 3)
level01.colliders.OpWall48ID = {}
level01.colliders.OpWall48ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall48ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall48ID.collider:SetAxes(0.868243, 0, -0.496139, 0, -1, -0, -0.496139, 0, -0.868243)
level01.colliders.OpWall48ID.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.OpWall48ID.collider:SetPos(114,36.1457,210.5)
CollisionHandler.AddOBB(level01.colliders.OpWall48ID.collider, 3)
level01.colliders.OpWall49ID = {}
level01.colliders.OpWall49ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall49ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall49ID.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level01.colliders.OpWall49ID.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.OpWall49ID.collider:SetPos(107,34.6728,203)
CollisionHandler.AddOBB(level01.colliders.OpWall49ID.collider, 3)
level01.colliders.OpWall50ID = {}
level01.colliders.OpWall50ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall50ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall50ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.OpWall50ID.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.OpWall50ID.collider:SetPos(101,28.6339,199)
CollisionHandler.AddOBB(level01.colliders.OpWall50ID.collider, 3)
level01.colliders.OpWall51ID = {}
level01.colliders.OpWall51ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall51ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall51ID.collider:SetAxes(-0.573462, 0, -0.819232, -0, -1, 0, -0.819232, 0, 0.573462)
level01.colliders.OpWall51ID.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.OpWall51ID.collider:SetPos(95,27.3083,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall51ID.collider, 3)
level01.colliders.OpWall52ID = {}
level01.colliders.OpWall52ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall52ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall52ID.collider:SetAxes(-0.83205, 0, -0.5547, -0, -1, 0, -0.5547, 0, 0.83205)
level01.colliders.OpWall52ID.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.OpWall52ID.collider:SetPos(89,22.595,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall52ID.collider, 3)
level01.colliders.OpWall53ID = {}
level01.colliders.OpWall53ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall53ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall53ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level01.colliders.OpWall53ID.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.OpWall53ID.collider:SetPos(4.5,6.83489,147.5)
CollisionHandler.AddOBB(level01.colliders.OpWall53ID.collider, 3)
level01.colliders.OpWall54ID = {}
level01.colliders.OpWall54ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall54ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall54ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.OpWall54ID.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.OpWall54ID.collider:SetPos(5,6.98218,151.5)
CollisionHandler.AddOBB(level01.colliders.OpWall54ID.collider, 3)
level01.colliders.OpWall55ID = {}
level01.colliders.OpWall55ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall55ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall55ID.collider:SetAxes(-0.992278, 0, -0.124035, -0, -1, 0, -0.124035, 0, 0.992278)
level01.colliders.OpWall55ID.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.OpWall55ID.collider:SetPos(4.5,7.42405,159)
CollisionHandler.AddOBB(level01.colliders.OpWall55ID.collider, 3)
level01.colliders.OpWall56ID = {}
level01.colliders.OpWall56ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall56ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall56ID.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level01.colliders.OpWall56ID.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.OpWall56ID.collider:SetPos(7,6.54031,167)
CollisionHandler.AddOBB(level01.colliders.OpWall56ID.collider, 3)
level01.colliders.OpWall57ID = {}
level01.colliders.OpWall57ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall57ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall57ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.OpWall57ID.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.OpWall57ID.collider:SetPos(10,6.24573,173.5)
CollisionHandler.AddOBB(level01.colliders.OpWall57ID.collider, 3)
level01.colliders.OpWall58ID = {}
level01.colliders.OpWall58ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall58ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall58ID.collider:SetAxes(-0.650791, 0, -0.759257, -0, -1, 0, -0.759257, 0, 0.650791)
level01.colliders.OpWall58ID.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.OpWall58ID.collider:SetPos(6.5,5.65657,179)
CollisionHandler.AddOBB(level01.colliders.OpWall58ID.collider, 3)
level01.colliders.OpWall59ID = {}
level01.colliders.OpWall59ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall59ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall59ID.collider:SetAxes(-0.996546, 0, -0.0830455, -0, -1, 0, -0.0830455, 0, 0.996546)
level01.colliders.OpWall59ID.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.OpWall59ID.collider:SetPos(2.5,5.36198,188)
CollisionHandler.AddOBB(level01.colliders.OpWall59ID.collider, 3)
level01.colliders.OpWall60ID = {}
level01.colliders.OpWall60ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall60ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall60ID.collider:SetAxes(-0.857493, 0, 0.514496, 0, -1, 0, 0.514496, 0, 0.857493)
level01.colliders.OpWall60ID.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.OpWall60ID.collider:SetPos(3.5,4.03637,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall60ID.collider, 3)
level01.colliders.OpWall61ID = {}
level01.colliders.OpWall61ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall61ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall61ID.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level01.colliders.OpWall61ID.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.OpWall61ID.collider:SetPos(6,3.44721,200.5)
CollisionHandler.AddOBB(level01.colliders.OpWall61ID.collider, 3)
level01.colliders.OpWall63ID = {}
level01.colliders.OpWall63ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall63ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall63ID.collider:SetAxes(0.209529, -0, 0.977802, 0, -1, -0, 0.977802, 0, -0.209529)
level01.colliders.OpWall63ID.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.OpWall63ID.collider:SetPos(15,3.29992,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall63ID.collider, 3)
level01.colliders.OpWall64ID = {}
level01.colliders.OpWall64ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall64ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall64ID.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level01.colliders.OpWall64ID.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.OpWall64ID.collider:SetPos(24.5,3.15263,199.5)
CollisionHandler.AddOBB(level01.colliders.OpWall64ID.collider, 3)
level01.colliders.OpWall65ID = {}
level01.colliders.OpWall65ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall65ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall65ID.collider:SetAxes(-0.877896, 0, 0.478852, 0, -1, 0, 0.478852, 0, 0.877896)
level01.colliders.OpWall65ID.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.OpWall65ID.collider:SetPos(23,4.33095,190.5)
CollisionHandler.AddOBB(level01.colliders.OpWall65ID.collider, 3)
level01.colliders.OpWall66ID = {}
level01.colliders.OpWall66ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall66ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall66ID.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level01.colliders.OpWall66ID.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.OpWall66ID.collider:SetPos(27,5.36198,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall66ID.collider, 3)
level01.colliders.OpWall67ID = {}
level01.colliders.OpWall67ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall67ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall67ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.OpWall67ID.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.OpWall67ID.collider:SetPos(29,7.71863,197)
CollisionHandler.AddOBB(level01.colliders.OpWall67ID.collider, 3)
level01.colliders.OpWall68ID = {}
level01.colliders.OpWall68ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall68ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall68ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.OpWall68ID.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.OpWall68ID.collider:SetPos(31.5,8.16051,200)
CollisionHandler.AddOBB(level01.colliders.OpWall68ID.collider, 3)
level01.colliders.OpWall69ID = {}
level01.colliders.OpWall69ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall69ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall69ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level01.colliders.OpWall69ID.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.OpWall69ID.collider:SetPos(32.5,8.89696,203.5)
CollisionHandler.AddOBB(level01.colliders.OpWall69ID.collider, 3)
level01.colliders.OpWall79ID = {}
level01.colliders.OpWall79ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall79ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall79ID.collider:SetAxes(0.995037, -0, 0.0995037, 0, -1, -0, 0.0995037, 0, -0.995037)
level01.colliders.OpWall79ID.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.OpWall79ID.collider:SetPos(125.5,32.1689,229)
CollisionHandler.AddOBB(level01.colliders.OpWall79ID.collider, 3)
level01.colliders.OpWall80ID = {}
level01.colliders.OpWall80ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall80ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall80ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.OpWall80ID.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.OpWall80ID.collider:SetPos(127,32.758,224)
CollisionHandler.AddOBB(level01.colliders.OpWall80ID.collider, 3)
level01.props.BridgeID = {}
level01.props.BridgeID.model = Assets.LoadModel('Models/bridge.model')
level01.props.BridgeID.transformID = Gear.BindStaticInstance(level01.props.BridgeID.model)
Transform.SetPosition(level01.props.BridgeID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.BridgeID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.BridgeID.transformID, {x=-0, y=0, z=-0})
level01.props.OakTree_NoCollider11ID = {}
level01.props.OakTree_NoCollider11ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider11ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider11ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider11ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(level01.props.OakTree_NoCollider11ID.transformID, {x=-0, y=2.76508, z=-0})
level01.props.OakTree_NoCollider12ID = {}
level01.props.OakTree_NoCollider12ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider12ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider12ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider12ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(level01.props.OakTree_NoCollider12ID.transformID, {x=-0, y=0, z=-0})
level01.props.OakTree_NoCollider13ID = {}
level01.props.OakTree_NoCollider13ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider13ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider13ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider13ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(level01.props.OakTree_NoCollider13ID.transformID, {x=-0, y=2.16382, z=-0})
level01.props.OakTree_NoCollider14ID = {}
level01.props.OakTree_NoCollider14ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider14ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider14ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider14ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(level01.props.OakTree_NoCollider14ID.transformID, {x=-0, y=0, z=-0})
level01.props.OakTree_NoCollider151ID = {}
level01.props.OakTree_NoCollider151ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider151ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider151ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider151ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(level01.props.OakTree_NoCollider151ID.transformID, {x=-0, y=1.62265, z=-0})
level01.props.OakTree_NoCollider16ID = {}
level01.props.OakTree_NoCollider16ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider16ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider16ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider16ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(level01.props.OakTree_NoCollider16ID.transformID, {x=-0, y=0, z=-0})
level01.props.OakTree_NoCollider17ID = {}
level01.props.OakTree_NoCollider17ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider17ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider17ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider17ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(level01.props.OakTree_NoCollider17ID.transformID, {x=-0, y=0, z=-0})
level01.props.OakTree_NoCollider18ID = {}
level01.props.OakTree_NoCollider18ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider18ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider18ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider18ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(level01.props.OakTree_NoCollider18ID.transformID, {x=-0, y=0, z=-0})
level01.props.OakTree_NoCollider19ID = {}
level01.props.OakTree_NoCollider19ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider19ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider19ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider19ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(level01.props.OakTree_NoCollider19ID.transformID, {x=0.045381, y=3.70048, z=-0.0362335})
level01.props.OakTree_ColliderID = {}
level01.props.OakTree_ColliderID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_ColliderID.transformID = Gear.BindStaticInstance(level01.props.OakTree_ColliderID.model)
Transform.SetPosition(level01.props.OakTree_ColliderID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(level01.props.OakTree_ColliderID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(level01.props.OakTree_ColliderID.transformID, {x=-0, y=1.7421, z=0.00619812})
level01.props.OakTree_ColliderID.collider = OBBCollider.Create(-1)
level01.props.OakTree_ColliderID.collider:SetOffset(0,4,0)
level01.props.OakTree_ColliderID.collider:SetAxes(-0.170469, 0, -0.985363, 0.00610736, -0.999981, -0.00105658, 0.985344, 0.00619808, -0.170466)
level01.props.OakTree_ColliderID.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.props.OakTree_ColliderID.collider:SetPos(39.8641,12.8281,155.087)
CollisionHandler.AddOBB(level01.props.OakTree_ColliderID.collider, 3)
level01.props.OakTree_Collider1ID = {}
level01.props.OakTree_Collider1ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1ID.transformID, {x=-0, y=0.376574, z=-0})
level01.props.OakTree_Collider1ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider1ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider1ID.collider:SetAxes(0.92993, 0, -0.367737, 0, -1, 0, 0.367737, 0, 0.92993)
level01.props.OakTree_Collider1ID.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.props.OakTree_Collider1ID.collider:SetPos(24,10.8555,139)
CollisionHandler.AddOBB(level01.props.OakTree_Collider1ID.collider, 3)
level01.props.OakTree_Collider2ID = {}
level01.props.OakTree_Collider2ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2ID.transformID, {x=-0, y=-2.0418, z=-0})
level01.props.OakTree_Collider2ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider2ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider2ID.collider:SetAxes(-0.453779, 0, 0.891114, -0, -1, 0, -0.891114, 0, -0.453779)
level01.props.OakTree_Collider2ID.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.props.OakTree_Collider2ID.collider:SetPos(6.18867,8.53125,180.735)
CollisionHandler.AddOBB(level01.props.OakTree_Collider2ID.collider, 3)
level01.props.OakTree_Collider3ID = {}
level01.props.OakTree_Collider3ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3ID.transformID, {x=-0, y=-1.42165, z=-0})
level01.props.OakTree_Collider3ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider3ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider3ID.collider:SetAxes(0.148599, 0, 0.988898, 0, -1, 0, -0.988898, 0, 0.148599)
level01.props.OakTree_Collider3ID.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.props.OakTree_Collider3ID.collider:SetPos(37.7154,11.4688,182.582)
CollisionHandler.AddOBB(level01.props.OakTree_Collider3ID.collider, 3)
level01.props.PineTree_NoColliderID = {}
level01.props.PineTree_NoColliderID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoColliderID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoColliderID.model)
Transform.SetPosition(level01.props.PineTree_NoColliderID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(level01.props.PineTree_NoColliderID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(level01.props.PineTree_NoColliderID.transformID, {x=-0.536822, y=0.137189, z=-0.401651})
level01.props.PineTree_NoCollider2ID = {}
level01.props.PineTree_NoCollider2ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider2ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider2ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider2ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(level01.props.PineTree_NoCollider2ID.transformID, {x=-0, y=2.5061, z=-0})
level01.props.PineTree_NoCollider3ID = {}
level01.props.PineTree_NoCollider3ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider3ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider3ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider3ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(level01.props.PineTree_NoCollider3ID.transformID, {x=-0, y=1.9694, z=-0})
level01.props.PineTree_NoCollider4ID = {}
level01.props.PineTree_NoCollider4ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider4ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider4ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider4ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree_NoCollider4ID.transformID, {x=-0, y=0, z=-0})
level01.props.PineTree_NoCollider5ID = {}
level01.props.PineTree_NoCollider5ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider5ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider5ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider5ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(level01.props.PineTree_NoCollider5ID.transformID, {x=-0, y=2.83677, z=-0})
level01.colliders.Tile1_wallNrID = {}
level01.colliders.Tile1_wallNrID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNrID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNrID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.Tile1_wallNrID.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.Tile1_wallNrID.collider:SetPos(36.5,8.3078,128)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNrID.collider, 3)
level01.colliders.Tile1_wallNr1ID = {}
level01.colliders.Tile1_wallNr1ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr1ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr1ID.collider:SetAxes(-0.8, 0, -0.6, -0, -1, 0, -0.6, 0, 0.8)
level01.colliders.Tile1_wallNr1ID.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.Tile1_wallNr1ID.collider:SetPos(28,7.86593,132)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr1ID.collider, 3)
level01.colliders.Tile1_wallNr2ID = {}
level01.colliders.Tile1_wallNr2ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr2ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr2ID.collider:SetAxes(-0.780869, 0, -0.624695, -0, -1, 0, -0.624695, 0, 0.780869)
level01.colliders.Tile1_wallNr2ID.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.Tile1_wallNr2ID.collider:SetPos(23,7.71863,138.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr2ID.collider, 3)
level01.props.Stone2ID = {}
level01.props.Stone2ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone2ID.transformID = Gear.BindStaticInstance(level01.props.Stone2ID.model)
Transform.SetPosition(level01.props.Stone2ID.transformID, {x=4.34854, y=7.05469, z=139.31})
Transform.SetScaleNonUniform(level01.props.Stone2ID.transformID, 2.87522, 2.86321, 2.81752)
Transform.SetRotation(level01.props.Stone2ID.transformID, {x=0.0120454, y=-1.17492, z=0.0422012})
level01.props.Stone2ID.collider = OBBCollider.Create(-1)
level01.props.Stone2ID.collider:SetOffset(0.3,0.6,0)
level01.props.Stone2ID.collider:SetAxes(0.385591, 0.00464481, 0.922658, -0.0268886, -0.999506, 0.0162688, -0.922278, 0.031082, 0.385276)
level01.props.Stone2ID.collider:SetHalfLengths(2.87522,1.71793,2.81752)
level01.props.Stone2ID.collider:SetPos(4.64854,7.65469,139.31)
CollisionHandler.AddOBB(level01.props.Stone2ID.collider, 3)
level01.props.Stone3ID = {}
level01.props.Stone3ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone3ID.transformID = Gear.BindStaticInstance(level01.props.Stone3ID.model)
Transform.SetPosition(level01.props.Stone3ID.transformID, {x=6.41381, y=6.84375, z=142.217})
Transform.SetScaleNonUniform(level01.props.Stone3ID.transformID, 1.28523, 1.43478, 1.76532)
Transform.SetRotation(level01.props.Stone3ID.transformID, {x=-0, y=0, z=-0})
level01.props.Stone3ID.collider = SphereCollider.Create(-1)
level01.props.Stone3ID.collider:SetOffset(0,0.2,0)
level01.props.Stone3ID.collider:SetRadius(1)
level01.props.Stone3ID.collider:SetPos(6.41381,7.04375,142.217)
CollisionHandler.AddSphere(level01.props.Stone3ID.collider, 3)
level01.props.Stone1ID = {}
level01.props.Stone1ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone1ID.transformID = Gear.BindStaticInstance(level01.props.Stone1ID.model)
Transform.SetPosition(level01.props.Stone1ID.transformID, {x=3.73525, y=6.76953, z=145.076})
Transform.SetScaleNonUniform(level01.props.Stone1ID.transformID, 1.6774, 1.68557, 1.1635)
Transform.SetRotation(level01.props.Stone1ID.transformID, {x=-0, y=-1.78111, z=-0})
level01.props.Stone1ID.collider = SphereCollider.Create(-1)
level01.props.Stone1ID.collider:SetOffset(-0.5,0,-0.5)
level01.props.Stone1ID.collider:SetRadius(2)
level01.props.Stone1ID.collider:SetPos(3.23525,6.76953,144.576)
CollisionHandler.AddSphere(level01.props.Stone1ID.collider, 3)
level01.props.Stone31ID = {}
level01.props.Stone31ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone31ID.transformID = Gear.BindStaticInstance(level01.props.Stone31ID.model)
Transform.SetPosition(level01.props.Stone31ID.transformID, {x=4.70592, y=6.84375, z=143.694})
Transform.SetScaleNonUniform(level01.props.Stone31ID.transformID, 1, 2.45793, 1.84109)
Transform.SetRotation(level01.props.Stone31ID.transformID, {x=-0, y=0, z=-0})
level01.props.Stone31ID.collider = SphereCollider.Create(-1)
level01.props.Stone31ID.collider:SetOffset(0,0.2,0)
level01.props.Stone31ID.collider:SetRadius(1)
level01.props.Stone31ID.collider:SetPos(4.70592,7.04375,143.694)
CollisionHandler.AddSphere(level01.props.Stone31ID.collider, 3)
level01.props.HouseID = {}
level01.props.HouseID.model = Assets.LoadModel('Models/House1.model')
level01.props.HouseID.transformID = Gear.BindStaticInstance(level01.props.HouseID.model)
Transform.SetPosition(level01.props.HouseID.transformID, {x=36.887, y=7.96094, z=130.834})
Transform.SetScaleNonUniform(level01.props.HouseID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level01.props.HouseID.transformID, {x=-0, y=0, z=-0})
level01.props.HouseID.collider = OBBCollider.Create(-1)
level01.props.HouseID.collider:SetOffset(0,3,0)
level01.props.HouseID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.props.HouseID.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level01.props.HouseID.collider:SetPos(36.887,10.9609,130.834)
CollisionHandler.AddOBB(level01.props.HouseID.collider, 3)
level01.props.Stone11ID = {}
level01.props.Stone11ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone11ID.transformID = Gear.BindStaticInstance(level01.props.Stone11ID.model)
Transform.SetPosition(level01.props.Stone11ID.transformID, {x=3.52792, y=3.78483, z=188.422})
Transform.SetScaleNonUniform(level01.props.Stone11ID.transformID, 1.51213, 1.79035, 1.59059)
Transform.SetRotation(level01.props.Stone11ID.transformID, {x=-0, y=0, z=-0})
level01.props.Stone11ID.collider = SphereCollider.Create(-1)
level01.props.Stone11ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone11ID.collider:SetRadius(2)
level01.props.Stone11ID.collider:SetPos(3.52792,4.28483,189.022)
CollisionHandler.AddSphere(level01.props.Stone11ID.collider, 3)
level01.props.Stone21ID = {}
level01.props.Stone21ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone21ID.transformID = Gear.BindStaticInstance(level01.props.Stone21ID.model)
Transform.SetPosition(level01.props.Stone21ID.transformID, {x=4.952, y=4.125, z=191.432})
Transform.SetScaleNonUniform(level01.props.Stone21ID.transformID, 1.4564, 1.68508, 1.50235)
Transform.SetRotation(level01.props.Stone21ID.transformID, {x=-0.0164697, y=0, z=-0})
level01.props.Stone21ID.collider = OBBCollider.Create(-1)
level01.props.Stone21ID.collider:SetOffset(0.3,0.6,0)
level01.props.Stone21ID.collider:SetAxes(0.999864, -0.016469, 0, -0.016469, -0.999864, 0, 0, 0, 1)
level01.props.Stone21ID.collider:SetHalfLengths(1.4564,1.01105,1.50235)
level01.props.Stone21ID.collider:SetPos(5.252,4.725,191.432)
CollisionHandler.AddOBB(level01.props.Stone21ID.collider, 3)
level01.props.Stone32ID = {}
level01.props.Stone32ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone32ID.transformID = Gear.BindStaticInstance(level01.props.Stone32ID.model)
Transform.SetPosition(level01.props.Stone32ID.transformID, {x=5.19985, y=3.98828, z=188.718})
Transform.SetScaleNonUniform(level01.props.Stone32ID.transformID, 1.25457, 2.0231, 1.39897)
Transform.SetRotation(level01.props.Stone32ID.transformID, {x=-0, y=0, z=-0})
level01.props.Stone32ID.collider = SphereCollider.Create(-1)
level01.props.Stone32ID.collider:SetOffset(0,0.2,0)
level01.props.Stone32ID.collider:SetRadius(1)
level01.props.Stone32ID.collider:SetPos(5.19985,4.18828,188.718)
CollisionHandler.AddSphere(level01.props.Stone32ID.collider, 3)
level01.props.Stone33ID = {}
level01.props.Stone33ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone33ID.transformID = Gear.BindStaticInstance(level01.props.Stone33ID.model)
Transform.SetPosition(level01.props.Stone33ID.transformID, {x=5.32939, y=3.88086, z=193.526})
Transform.SetScaleNonUniform(level01.props.Stone33ID.transformID, 1.44906, 1.65862, 1.39719)
Transform.SetRotation(level01.props.Stone33ID.transformID, {x=-0, y=0, z=-0})
level01.props.Stone33ID.collider = SphereCollider.Create(-1)
level01.props.Stone33ID.collider:SetOffset(0,0.2,0)
level01.props.Stone33ID.collider:SetRadius(1)
level01.props.Stone33ID.collider:SetPos(5.32939,4.08086,193.526)
CollisionHandler.AddSphere(level01.props.Stone33ID.collider, 3)
level01.props.Stone34ID = {}
level01.props.Stone34ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone34ID.transformID = Gear.BindStaticInstance(level01.props.Stone34ID.model)
Transform.SetPosition(level01.props.Stone34ID.transformID, {x=3.03896, y=3.69922, z=190.737})
Transform.SetScaleNonUniform(level01.props.Stone34ID.transformID, 2.2204, 5.14281, 2.41628)
Transform.SetRotation(level01.props.Stone34ID.transformID, {x=-0, y=0, z=-0})
level01.props.Stone34ID.collider = SphereCollider.Create(-1)
level01.props.Stone34ID.collider:SetOffset(0,0.2,0)
level01.props.Stone34ID.collider:SetRadius(1)
level01.props.Stone34ID.collider:SetPos(3.03896,3.89922,190.737)
CollisionHandler.AddSphere(level01.props.Stone34ID.collider, 3)
level01.props.Stone12ID = {}
level01.props.Stone12ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone12ID.transformID = Gear.BindStaticInstance(level01.props.Stone12ID.model)
Transform.SetPosition(level01.props.Stone12ID.transformID, {x=3.2186, y=3.70508, z=193.414})
Transform.SetScaleNonUniform(level01.props.Stone12ID.transformID, 1.01499, 1.34828, 1.3712)
Transform.SetRotation(level01.props.Stone12ID.transformID, {x=-0.0261728, y=-3.50038, z=-0.00149078})
level01.props.Stone12ID.collider = SphereCollider.Create(-1)
level01.props.Stone12ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone12ID.collider:SetRadius(2)
level01.props.Stone12ID.collider:SetPos(3.2186,4.20508,194.014)
CollisionHandler.AddSphere(level01.props.Stone12ID.collider, 3)
level01.props.LanternID = {}
level01.props.LanternID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.LanternID.transformID = Gear.BindStaticInstance(level01.props.LanternID.model)
Transform.SetPosition(level01.props.LanternID.transformID, {x=91.1085, y=19.6589, z=229.316})
Transform.SetScaleNonUniform(level01.props.LanternID.transformID, 1.10704, 1.46453, 1.26106)
Transform.SetRotation(level01.props.LanternID.transformID, {x=-0, y=4.06324, z=-0})
level01.props.LanternID.lightIndex = Light.addLight(92.4085, 24.6589, 227.716, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern1ID = {}
level01.props.Lantern1ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern1ID.transformID = Gear.BindStaticInstance(level01.props.Lantern1ID.model)
Transform.SetPosition(level01.props.Lantern1ID.transformID, {x=104.807, y=24.2813, z=235.177})
Transform.SetScaleNonUniform(level01.props.Lantern1ID.transformID, 1, 1.31997, 1.13)
Transform.SetRotation(level01.props.Lantern1ID.transformID, {x=-0, y=-1.60358, z=-0})
level01.props.Lantern1ID.lightIndex = Light.addLight(104.807, 28.2813, 233.177, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern2ID = {}
level01.props.Lantern2ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern2ID.transformID = Gear.BindStaticInstance(level01.props.Lantern2ID.model)
Transform.SetPosition(level01.props.Lantern2ID.transformID, {x=120.768, y=30.5925, z=229.329})
Transform.SetScaleNonUniform(level01.props.Lantern2ID.transformID, 1.0591, 1.30088, 1.26469)
Transform.SetRotation(level01.props.Lantern2ID.transformID, {x=-0, y=-1.03939, z=-0})
level01.props.Lantern2ID.lightIndex = Light.addLight(119.768, 34.5925, 227.579, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern3ID = {}
level01.props.Lantern3ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern3ID.transformID = Gear.BindStaticInstance(level01.props.Lantern3ID.model)
Transform.SetPosition(level01.props.Lantern3ID.transformID, {x=75.5229, y=16.0708, z=218.97})
Transform.SetScaleNonUniform(level01.props.Lantern3ID.transformID, 1.05539, 1.31311, 1.34544)
Transform.SetRotation(level01.props.Lantern3ID.transformID, {x=-0, y=-1.90402, z=-0})
level01.props.Lantern3ID.lightIndex = Light.addLight(76.0229, 20.0708, 216.97, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern5ID = {}
level01.props.Lantern5ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern5ID.transformID = Gear.BindStaticInstance(level01.props.Lantern5ID.model)
Transform.SetPosition(level01.props.Lantern5ID.transformID, {x=31.481, y=7.76563, z=137.765})
Transform.SetScaleNonUniform(level01.props.Lantern5ID.transformID, 0.817026, 0.683302, 0.733902)
Transform.SetRotation(level01.props.Lantern5ID.transformID, {x=-0, y=1.5866, z=-0})
level01.props.Lantern5ID.lightIndex = Light.addLight(31.481, 9.76563, 139.215, 1, 0.576471, 0.121569, 10,2)
level01.props.Lantern6ID = {}
level01.props.Lantern6ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern6ID.transformID = Gear.BindStaticInstance(level01.props.Lantern6ID.model)
Transform.SetPosition(level01.props.Lantern6ID.transformID, {x=19.7806, y=4.85156, z=183.644})
Transform.SetScaleNonUniform(level01.props.Lantern6ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Lantern6ID.transformID, {x=-0, y=-1.1856, z=-0})
level01.props.Lantern6ID.lightIndex = Light.addLight(18.9806, 8.60156, 181.844, 1, 0.576471, 0.160784, 10,2)
level01.props.CombinationBarrierID = {}
level01.props.CombinationBarrierID.model = Assets.LoadModel('Models/Tut_Branch_blocker.model')
level01.props.CombinationBarrierID.transformID = Gear.BindStaticInstance(level01.props.CombinationBarrierID.model)
Transform.SetPosition(level01.props.CombinationBarrierID.transformID, {x=31.9063, y=11.1878, z=196})
Transform.SetScaleNonUniform(level01.props.CombinationBarrierID.transformID, 1, 0.8, 0.7)
Transform.SetRotation(level01.props.CombinationBarrierID.transformID, {x=-0, y=-0.967977, z=-0})
level01.props.CombinationBarrierID.collider = OBBCollider.Create(-1)
level01.props.CombinationBarrierID.collider:SetOffset(0,0,0)
level01.props.CombinationBarrierID.collider:SetAxes(0.806834, 0, -0.590778, 0, -1, 0, 0.590778, 0, 0.806834)
level01.props.CombinationBarrierID.collider:SetHalfLengths(3,4,0.7)
level01.props.CombinationBarrierID.collider:SetPos(31.9063,11.1878,196)
CollisionHandler.AddOBB(level01.props.CombinationBarrierID.collider, 3)
level01.enemies.New2ID = CreateEnemy(ENEMY_DUMMY, {x=20.5, y=4.14453, z=195.25})
level01.enemies.New2ID:SetStats(9, 50, 30)

level01.enemies.New21ID = CreateEnemy(ENEMY_DUMMY, {x=14.625, y=3.5918, z=198})
level01.enemies.New21ID:SetStats(9, 50, 30)

level01.enemies.New22ID = CreateEnemy(ENEMY_DUMMY, {x=9.5, y=3.5332, z=199.375})
level01.enemies.New22ID:SetStats(9, 50, 30)

level01.enemies.New23ID = CreateEnemy(ENEMY_DUMMY, {x=51.3562, y=7.90234, z=171.852})
level01.enemies.New23ID:SetStats(9, 50, 30)

level01.enemies.New24ID = CreateEnemy(ENEMY_DUMMY, {x=50, y=7.76172, z=177.625})
level01.enemies.New24ID:SetStats(9, 50, 30)

level01.enemies.New25ID = CreateEnemy(ENEMY_DUMMY, {x=44.4688, y=7.67188, z=181.75})
level01.enemies.New25ID:SetStats(9, 50, 30)

level01.props.Tile1_fenceID = {}
level01.props.Tile1_fenceID.model = Assets.LoadModel('Models/tile1_fence.model')
level01.props.Tile1_fenceID.transformID = Gear.BindStaticInstance(level01.props.Tile1_fenceID.model)
Transform.SetPosition(level01.props.Tile1_fenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.Tile1_fenceID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Tile1_fenceID.transformID, {x=-0, y=0, z=-0})
level01.colliders.Tile1_wallNr3ID = {}
level01.colliders.Tile1_wallNr3ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr3ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr3ID.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level01.colliders.Tile1_wallNr3ID.collider:SetHalfLengths(0.3,5.29458,3.04138)
level01.colliders.Tile1_wallNr3ID.collider:SetPos(10,3.44721,202.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr3ID.collider, 3)
level01.colliders.Tile1_wallNr4ID = {}
level01.colliders.Tile1_wallNr4ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr4ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr4ID.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level01.colliders.Tile1_wallNr4ID.collider:SetHalfLengths(0.3,5.14729,2.5)
level01.colliders.Tile1_wallNr4ID.collider:SetPos(33.5,8.45509,206)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr4ID.collider, 3)
level01.colliders.Tile1_wallNr5ID = {}
level01.colliders.Tile1_wallNr5ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr5ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr5ID.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level01.colliders.Tile1_wallNr5ID.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.Tile1_wallNr5ID.collider:SetPos(37,8.60238,209.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr5ID.collider, 3)
level01.colliders.Tile1_wallNr6ID = {}
level01.colliders.Tile1_wallNr6ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr6ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr6ID.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level01.colliders.Tile1_wallNr6ID.collider:SetHalfLengths(0.3,5.44187,2.91548)
level01.colliders.Tile1_wallNr6ID.collider:SetPos(41.5,9.04425,212.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr6ID.collider, 3)
level01.colliders.Tile1_wallNr7ID = {}
level01.colliders.Tile1_wallNr7ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr7ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr7ID.collider:SetAxes(-0.316228, 0, 0.948683, 0, -1, 0, 0.948683, 0, 0.316228)
level01.colliders.Tile1_wallNr7ID.collider:SetHalfLengths(0.3,5.29458,3.16228)
level01.colliders.Tile1_wallNr7ID.collider:SetPos(47,9.48612,215)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr7ID.collider, 3)
level01.colliders.Tile1_wallNr8ID = {}
level01.colliders.Tile1_wallNr8ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr8ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr8ID.collider:SetAxes(-0.066519, 0, 0.997785, 0, -1, 0, 0.997785, 0, 0.066519)
level01.colliders.Tile1_wallNr8ID.collider:SetHalfLengths(0.3,7.79852,7.51665)
level01.colliders.Tile1_wallNr8ID.collider:SetPos(57.5,9.7807,216.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr8ID.collider, 3)
level01.colliders.Tile1_wallNr9ID = {}
level01.colliders.Tile1_wallNr9ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr9ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr9ID.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level01.colliders.Tile1_wallNr9ID.collider:SetHalfLengths(0.3,7.35665,3.04138)
level01.colliders.Tile1_wallNr9ID.collider:SetPos(68,12.5792,217.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr9ID.collider, 3)
level01.colliders.Tile1_wallNr10ID = {}
level01.colliders.Tile1_wallNr10ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr10ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr10ID.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level01.colliders.Tile1_wallNr10ID.collider:SetHalfLengths(0.3,6.76749,3.80789)
level01.colliders.Tile1_wallNr10ID.collider:SetPos(74.5,14.9359,219.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr10ID.collider, 3)
level01.colliders.Tile1_wallNr11ID = {}
level01.colliders.Tile1_wallNr11ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr11ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr11ID.collider:SetAxes(-0.496139, 0, 0.868243, 0, -1, 0, 0.868243, 0, 0.496139)
level01.colliders.Tile1_wallNr11ID.collider:SetHalfLengths(0.3,6.03103,4.03113)
level01.colliders.Tile1_wallNr11ID.collider:SetPos(81.5,16.7034,223)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr11ID.collider, 3)
level01.colliders.Tile1_wallNr12ID = {}
level01.colliders.Tile1_wallNr12ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr12ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr12ID.collider:SetAxes(-0.640184, 0, 0.768221, 0, -1, 0, 0.768221, 0, 0.640184)
level01.colliders.Tile1_wallNr12ID.collider:SetHalfLengths(0.3,7.50394,3.90512)
level01.colliders.Tile1_wallNr12ID.collider:SetPos(88,17.7344,227.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr12ID.collider, 3)
level01.colliders.Tile1_wallNr13ID = {}
level01.colliders.Tile1_wallNr13ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr13ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr13ID.collider:SetAxes(-0.496139, 0, 0.868243, 0, -1, 0, 0.868243, 0, 0.496139)
level01.colliders.Tile1_wallNr13ID.collider:SetHalfLengths(0.3,7.06207,4.03113)
level01.colliders.Tile1_wallNr13ID.collider:SetPos(94.5,20.2383,232)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr13ID.collider, 3)
level01.colliders.Tile1_wallNr14ID = {}
level01.colliders.Tile1_wallNr14ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr14ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr14ID.collider:SetAxes(-0.274721, 0, 0.961524, 0, -1, 0, 0.961524, 0, 0.274721)
level01.colliders.Tile1_wallNr14ID.collider:SetHalfLengths(0.3,8.38768,3.64005)
level01.colliders.Tile1_wallNr14ID.collider:SetPos(101.5,22.3004,235)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr14ID.collider, 3)
level01.colliders.Tile1_wallNr15ID = {}
level01.colliders.Tile1_wallNr15ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr15ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr15ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.Tile1_wallNr15ID.collider:SetHalfLengths(0.3,7.94581,3.5)
level01.colliders.Tile1_wallNr15ID.collider:SetPos(108.5,25.6881,236)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr15ID.collider, 3)
level01.colliders.Tile1_wallNr16ID = {}
level01.colliders.Tile1_wallNr16ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr16ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr16ID.collider:SetAxes(0.164399, -0, 0.986394, 0, -1, -0, 0.986394, 0, -0.164399)
level01.colliders.Tile1_wallNr16ID.collider:SetHalfLengths(0.3,6.4729,3.04138)
level01.colliders.Tile1_wallNr16ID.collider:SetPos(115,28.6339,235.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr16ID.collider, 3)
level01.colliders.Tile1_wallNr17ID = {}
level01.colliders.Tile1_wallNr17ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr17ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr17ID.collider:SetAxes(0.529999, -0, 0.847998, 0, -1, -0, 0.847998, 0, -0.529999)
level01.colliders.Tile1_wallNr17ID.collider:SetHalfLengths(0.3,7.50394,4.71699)
level01.colliders.Tile1_wallNr17ID.collider:SetPos(122,30.1068,232.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr17ID.collider, 3)
level01.colliders.Tile1_wallNr18ID = {}
level01.colliders.Tile1_wallNr18ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr18ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr18ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level01.colliders.Tile1_wallNr18ID.collider:SetHalfLengths(0.3,5,1.41421)
level01.colliders.Tile1_wallNr18ID.collider:SetPos(35,8.16051,194)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr18ID.collider, 3)
level01.colliders.Tile1_wallNr19ID = {}
level01.colliders.Tile1_wallNr19ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr19ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr19ID.collider:SetAxes(-0.847998, 0, -0.529999, -0, -1, 0, -0.529999, 0, 0.847998)
level01.colliders.Tile1_wallNr19ID.collider:SetHalfLengths(0.3,5,4.71699)
level01.colliders.Tile1_wallNr19ID.collider:SetPos(7.5,6.98218,144)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr19ID.collider, 3)
level01.props.StreamID = {}
level01.props.StreamID.model = Assets.LoadModel('Models/Stream.model')
level01.props.StreamID.transformID = Gear.BindStaticInstance(level01.props.StreamID.model)
Transform.SetPosition(level01.props.StreamID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.StreamID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.StreamID.transformID, {x=-0, y=0, z=-0})
level01.triggers.BlockerCombinerID = {}
level01.triggers.BlockerCombinerID.collider = OBBCollider.Create(-1)
level01.triggers.BlockerCombinerID.collider:SetOffset(0,0,0)
level01.triggers.BlockerCombinerID.collider:SetAxes(0.619434, 0, 0.785049, 0, -1, 0, -0.785049, 0, 0.619434)
level01.triggers.BlockerCombinerID.collider:SetHalfLengths(2,4.53906,4)
level01.triggers.BlockerCombinerID.collider:SetPos(30.625,10.8891,194.625)
level01.triggers.BlockerCombinerID.collider.OnExit = function(self) hideCombinationImage() end
level01.triggers.BlockerCombinerID.collider.OnTriggering = function(self, dt) TutorialBarrier(level01.props.CombinationBarrierID, dt) end
level01.triggers.BlockerCombinerID.collider.triggered = false
CollisionHandler.AddOBB(level01.triggers.BlockerCombinerID.collider, 4)
level01.triggers.TutorialPostID = {}
level01.triggers.TutorialPostID.model = Assets.LoadModel('Models/SignPost.model')
level01.triggers.TutorialPostID.transformID = Gear.BindStaticInstance(level01.triggers.TutorialPostID.model)
Transform.SetPosition(level01.triggers.TutorialPostID.transformID, {x=27.5014, y=6.08203, z=152.605})
Transform.SetScaleNonUniform(level01.triggers.TutorialPostID.transformID, 2, 2, 2)
Transform.SetRotation(level01.triggers.TutorialPostID.transformID, {x=-0, y=-3.82569, z=-0})
level01.triggers.TutorialPostID.collider = SphereCollider.Create(-1)
level01.triggers.TutorialPostID.collider:SetOffset(0,0,0)
level01.triggers.TutorialPostID.collider:SetRadius(2.3)
level01.triggers.TutorialPostID.collider:SetPos(27.5014,6.08203,152.605)
level01.triggers.TutorialPostID.collider.OnExit = function() hideTutorialImage() end
level01.triggers.TutorialPostID.collider.OnTriggering = function(self, dt) showTutorialImage(26.5, 6, 147, dt) end
level01.triggers.TutorialPostID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.TutorialPostID.collider, 4)
level01.triggers.TutorialPost1ID = {}
level01.triggers.TutorialPost1ID.model = Assets.LoadModel('Models/SignPost.model')
level01.triggers.TutorialPost1ID.transformID = Gear.BindStaticInstance(level01.triggers.TutorialPost1ID.model)
Transform.SetPosition(level01.triggers.TutorialPost1ID.transformID, {x=11, y=6, z=152})
Transform.SetScaleNonUniform(level01.triggers.TutorialPost1ID.transformID, 2, 2, 2)
Transform.SetRotation(level01.triggers.TutorialPost1ID.transformID, {x=-0, y=-4.18879, z=-0})
level01.triggers.TutorialPost1ID.collider = SphereCollider.Create(-1)
level01.triggers.TutorialPost1ID.collider:SetOffset(0,0,0)
level01.triggers.TutorialPost1ID.collider:SetRadius(2.3)
level01.triggers.TutorialPost1ID.collider:SetPos(11,6,152)
level01.triggers.TutorialPost1ID.collider.OnExit = function() hideTutorialImage2() end
level01.triggers.TutorialPost1ID.collider.OnTriggering = function(self, dt) showTutorialImage2(12, 6.7, 153, dt) end
level01.triggers.TutorialPost1ID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.TutorialPost1ID.collider, 4)
level01.triggers.SpellBookID = {}
level01.triggers.SpellBookID.model = Assets.LoadModel('Models/Spellbook.model')
level01.triggers.SpellBookID.transformID = Gear.BindStaticInstance(level01.triggers.SpellBookID.model)
Transform.SetPosition(level01.triggers.SpellBookID.transformID, {x=53.0289, y=10.854, z=142.926})
Transform.SetScaleNonUniform(level01.triggers.SpellBookID.transformID, 1, 1, 1)
Transform.SetRotation(level01.triggers.SpellBookID.transformID, {x=-0, y=1.59748, z=-0})
level01.triggers.SpellBookID.collider = SphereCollider.Create(-1)
level01.triggers.SpellBookID.collider:SetOffset(0,0,0)
level01.triggers.SpellBookID.collider:SetRadius(18)
level01.triggers.SpellBookID.collider:SetPos(53.0289,10.854,142.926)
CollisionHandler.AddSphere(level01.triggers.SpellBookID.collider, 4)
level01.triggers.TutorialPost2ID = {}
level01.triggers.TutorialPost2ID.model = Assets.LoadModel('Models/SignPost.model')
level01.triggers.TutorialPost2ID.transformID = Gear.BindStaticInstance(level01.triggers.TutorialPost2ID.model)
Transform.SetPosition(level01.triggers.TutorialPost2ID.transformID, {x=12, y=6, z=169})
Transform.SetScaleNonUniform(level01.triggers.TutorialPost2ID.transformID, 2, 2, 2)
Transform.SetRotation(level01.triggers.TutorialPost2ID.transformID, {x=-0, y=-3.0928, z=-0})
level01.triggers.TutorialPost2ID.collider = SphereCollider.Create(-1)
level01.triggers.TutorialPost2ID.collider:SetOffset(0,0,0)
level01.triggers.TutorialPost2ID.collider:SetRadius(2.3)
level01.triggers.TutorialPost2ID.collider:SetPos(12,6,169)
level01.triggers.TutorialPost2ID.collider.OnExit = function() hideTutorialRevive() end
level01.triggers.TutorialPost2ID.collider.OnTriggering = function(self, dt) showTutorialRevive(12, 6, 169', dt) end
level01.triggers.TutorialPost2ID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.TutorialPost2ID.collider, 4)
end
level01.unload = function()
level01.props.tile1ID = nil
Gear.UnbindInstance(level01.props.m1ID.transformID)
Assets.UnloadModel('Models/tile1_m1.model')
level01.props.m1ID = nil
Gear.UnbindInstance(level01.props.m2ID.transformID)
Assets.UnloadModel('Models/tile1_m2.model')
level01.props.m2ID = nil
Gear.UnbindInstance(level01.props.m3ID.transformID)
Assets.UnloadModel('Models/tile1_m3.model')
level01.props.m3ID = nil
Gear.UnbindInstance(level01.props.m4ID.transformID)
Assets.UnloadModel('Models/tile1_m4.model')
level01.props.m4ID = nil
Gear.UnbindInstance(level01.props.m5ID.transformID)
Assets.UnloadModel('Models/tile1_m5.model')
level01.props.m5ID = nil
Gear.UnbindInstance(level01.props.m6ID.transformID)
Assets.UnloadModel('Models/tile1_m6.model')
level01.props.m6ID = nil
Gear.UnbindInstance(level01.props.m7ID.transformID)
Assets.UnloadModel('Models/tile1_m7.model')
level01.props.m7ID = nil
Gear.UnbindInstance(level01.props.m8ID.transformID)
Assets.UnloadModel('Models/tile1_m8.model')
level01.props.m8ID = nil
Gear.UnbindInstance(level01.props.s1ID.transformID)
Assets.UnloadModel('Models/tile1_s1.model')
level01.props.s1ID = nil
Gear.UnbindInstance(level01.props.s2ID.transformID)
Assets.UnloadModel('Models/tile1_s2.model')
level01.props.s2ID = nil
Gear.UnbindInstance(level01.props.s3ID.transformID)
Assets.UnloadModel('Models/tile1_s3.model')
level01.props.s3ID = nil
Gear.UnbindInstance(level01.props.s4ID.transformID)
Assets.UnloadModel('Models/tile1_s4.model')
level01.props.s4ID = nil
Gear.UnbindInstance(level01.props.s5ID.transformID)
Assets.UnloadModel('Models/tile1_s5.model')
level01.props.s5ID = nil
Gear.UnbindInstance(level01.props.s6ID.transformID)
Assets.UnloadModel('Models/tile1_s6.model')
level01.props.s6ID = nil
Gear.UnbindInstance(level01.props.s7ID.transformID)
Assets.UnloadModel('Models/tile1_s7.model')
level01.props.s7ID = nil
level01.colliders.OpWallID = nil
level01.colliders.OpWall1ID = nil
level01.colliders.OpWall2ID = nil
level01.colliders.OpWall3ID = nil
level01.colliders.OpWall4ID = nil
level01.colliders.OpWall5ID = nil
level01.colliders.OpWall6ID = nil
level01.colliders.OpWall7ID = nil
level01.colliders.OpWall8ID = nil
level01.colliders.OpWall9ID = nil
level01.colliders.OpWall10ID = nil
level01.colliders.OpWall11ID = nil
level01.colliders.OpWall12ID = nil
level01.colliders.OpWall13ID = nil
level01.colliders.OpWall14ID = nil
level01.colliders.OpWall15ID = nil
level01.colliders.OpWall16ID = nil
level01.colliders.OpWall17ID = nil
level01.colliders.OpWall18ID = nil
level01.colliders.OpWall19ID = nil
level01.colliders.OpWall20ID = nil
level01.colliders.OpWall21ID = nil
level01.colliders.OpWall22ID = nil
level01.colliders.OpWall23ID = nil
level01.colliders.OpWall24ID = nil
level01.colliders.OpWall25ID = nil
level01.colliders.OpWall26ID = nil
level01.colliders.OpWall27ID = nil
level01.colliders.OpWall29ID = nil
level01.colliders.OpWall30ID = nil
level01.colliders.OpWall31ID = nil
level01.colliders.OpWall32ID = nil
level01.colliders.OpWall33ID = nil
level01.colliders.OpWall34ID = nil
level01.colliders.OpWall35ID = nil
level01.colliders.OpWall36ID = nil
level01.colliders.OpWall37ID = nil
level01.colliders.OpWall38ID = nil
level01.colliders.OpWall39ID = nil
level01.colliders.OpWall40ID = nil
level01.colliders.OpWall41ID = nil
level01.colliders.OpWall42ID = nil
level01.colliders.OpWall43ID = nil
level01.colliders.OpWall44ID = nil
level01.colliders.OpWall45ID = nil
level01.colliders.OpWall46ID = nil
level01.colliders.OpWall47ID = nil
level01.colliders.OpWall48ID = nil
level01.colliders.OpWall49ID = nil
level01.colliders.OpWall50ID = nil
level01.colliders.OpWall51ID = nil
level01.colliders.OpWall52ID = nil
level01.colliders.OpWall53ID = nil
level01.colliders.OpWall54ID = nil
level01.colliders.OpWall55ID = nil
level01.colliders.OpWall56ID = nil
level01.colliders.OpWall57ID = nil
level01.colliders.OpWall58ID = nil
level01.colliders.OpWall59ID = nil
level01.colliders.OpWall60ID = nil
level01.colliders.OpWall61ID = nil
level01.colliders.OpWall63ID = nil
level01.colliders.OpWall64ID = nil
level01.colliders.OpWall65ID = nil
level01.colliders.OpWall66ID = nil
level01.colliders.OpWall67ID = nil
level01.colliders.OpWall68ID = nil
level01.colliders.OpWall69ID = nil
level01.colliders.OpWall79ID = nil
level01.colliders.OpWall80ID = nil
Gear.UnbindInstance(level01.props.BridgeID.transformID)
Assets.UnloadModel('Models/bridge.model')
level01.props.BridgeID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider11ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider12ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider13ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider14ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider151ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider16ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider17ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider18ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider19ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19ID = nil
Gear.UnbindInstance(level01.props.OakTree_ColliderID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_ColliderID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider1ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider2ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider3ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoColliderID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoColliderID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider2ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider3ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider4ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider5ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5ID = nil
level01.colliders.Tile1_wallNrID = nil
level01.colliders.Tile1_wallNr1ID = nil
level01.colliders.Tile1_wallNr2ID = nil
Gear.UnbindInstance(level01.props.Stone2ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level01.props.Stone2ID = nil
Gear.UnbindInstance(level01.props.Stone3ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone3ID = nil
Gear.UnbindInstance(level01.props.Stone1ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level01.props.Stone1ID = nil
Gear.UnbindInstance(level01.props.Stone31ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone31ID = nil
Gear.UnbindInstance(level01.props.HouseID.transformID)
Assets.UnloadModel('Models/House1.model')
level01.props.HouseID = nil
Gear.UnbindInstance(level01.props.Stone11ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level01.props.Stone11ID = nil
Gear.UnbindInstance(level01.props.Stone21ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level01.props.Stone21ID = nil
Gear.UnbindInstance(level01.props.Stone32ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone32ID = nil
Gear.UnbindInstance(level01.props.Stone33ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone33ID = nil
Gear.UnbindInstance(level01.props.Stone34ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone34ID = nil
Gear.UnbindInstance(level01.props.Stone12ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level01.props.Stone12ID = nil
Light.removeLight(level01.props.LanternID.lightIndex)
Gear.UnbindInstance(level01.props.LanternID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.LanternID = nil
Light.removeLight(level01.props.Lantern1ID.lightIndex)
Gear.UnbindInstance(level01.props.Lantern1ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern1ID = nil
Light.removeLight(level01.props.Lantern2ID.lightIndex)
Gear.UnbindInstance(level01.props.Lantern2ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern2ID = nil
Light.removeLight(level01.props.Lantern3ID.lightIndex)
Gear.UnbindInstance(level01.props.Lantern3ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern3ID = nil
Light.removeLight(level01.props.Lantern5ID.lightIndex)
Gear.UnbindInstance(level01.props.Lantern5ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern5ID = nil
Light.removeLight(level01.props.Lantern6ID.lightIndex)
Gear.UnbindInstance(level01.props.Lantern6ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern6ID = nil
Gear.UnbindInstance(level01.props.CombinationBarrierID.transformID)
Assets.UnloadModel('Models/Tut_Branch_blocker.model')
level01.props.CombinationBarrierID = nil
level01.triggers.BlockerCombinerID = nil
DestroyEnemy(level01.enemies.New2ID)
DestroyEnemy(level01.enemies.New21ID)
DestroyEnemy(level01.enemies.New22ID)
DestroyEnemy(level01.enemies.New23ID)
DestroyEnemy(level01.enemies.New24ID)
DestroyEnemy(level01.enemies.New25ID)
Gear.UnbindInstance(level01.triggers.TutorialPostID.transformID)
Assets.UnloadModel('Models/SignPost.model')
level01.triggers.TutorialPostID = nil
Gear.UnbindInstance(level01.triggers.TutorialPost1ID.transformID)
Assets.UnloadModel('Models/SignPost.model')
level01.triggers.TutorialPost1ID = nil
Gear.UnbindInstance(level01.props.Tile1_fenceID.transformID)
Assets.UnloadModel('Models/tile1_fence.model')
level01.props.Tile1_fenceID = nil
level01.colliders.Tile1_wallNr3ID = nil
level01.colliders.Tile1_wallNr4ID = nil
level01.colliders.Tile1_wallNr5ID = nil
level01.colliders.Tile1_wallNr6ID = nil
level01.colliders.Tile1_wallNr7ID = nil
level01.colliders.Tile1_wallNr8ID = nil
level01.colliders.Tile1_wallNr9ID = nil
level01.colliders.Tile1_wallNr10ID = nil
level01.colliders.Tile1_wallNr11ID = nil
level01.colliders.Tile1_wallNr12ID = nil
level01.colliders.Tile1_wallNr13ID = nil
level01.colliders.Tile1_wallNr14ID = nil
level01.colliders.Tile1_wallNr15ID = nil
level01.colliders.Tile1_wallNr16ID = nil
level01.colliders.Tile1_wallNr17ID = nil
level01.colliders.Tile1_wallNr18ID = nil
level01.colliders.Tile1_wallNr19ID = nil
Gear.UnbindInstance(level01.props.StreamID.transformID)
Assets.UnloadModel('Models/Stream.model')
level01.props.StreamID = nil
Gear.UnbindInstance(level01.triggers.SpellBookID.transformID)
Assets.UnloadModel('Models/Spellbook.model')
level01.triggers.SpellBookID = nil
Gear.UnbindInstance(level01.triggers.TutorialPost2ID.transformID)
Assets.UnloadModel('Models/SignPost.model')
level01.triggers.TutorialPost2ID = nil
level01.props = nil
level01.colliders = nil
level01.triggers = nil
level01.enemies = nil
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
level02.enemies = {}
level02.props.tile2ID = {}
level02.props.t2s1ID = {}
level02.props.t2s1ID.model = Assets.LoadModel('Models/tile2_s1.model')
level02.props.t2s1ID.transformID = Gear.BindStaticInstance(level02.props.t2s1ID.model)
Transform.SetPosition(level02.props.t2s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s2ID = {}
level02.props.t2s2ID.model = Assets.LoadModel('Models/tile2_s2.model')
level02.props.t2s2ID.transformID = Gear.BindStaticInstance(level02.props.t2s2ID.model)
Transform.SetPosition(level02.props.t2s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s2ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s3ID = {}
level02.props.t2s3ID.model = Assets.LoadModel('Models/tile2_s3.model')
level02.props.t2s3ID.transformID = Gear.BindStaticInstance(level02.props.t2s3ID.model)
Transform.SetPosition(level02.props.t2s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s3ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s4ID = {}
level02.props.t2s4ID.model = Assets.LoadModel('Models/tile2_s4.model')
level02.props.t2s4ID.transformID = Gear.BindStaticInstance(level02.props.t2s4ID.model)
Transform.SetPosition(level02.props.t2s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s4ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s5ID = {}
level02.props.t2s5ID.model = Assets.LoadModel('Models/tile2_s5.model')
level02.props.t2s5ID.transformID = Gear.BindStaticInstance(level02.props.t2s5ID.model)
Transform.SetPosition(level02.props.t2s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s5ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s6ID = {}
level02.props.t2s6ID.model = Assets.LoadModel('Models/tile2_s6.model')
level02.props.t2s6ID.transformID = Gear.BindStaticInstance(level02.props.t2s6ID.model)
Transform.SetPosition(level02.props.t2s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s6ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s7ID = {}
level02.props.t2s7ID.model = Assets.LoadModel('Models/tile2_s7.model')
level02.props.t2s7ID.transformID = Gear.BindStaticInstance(level02.props.t2s7ID.model)
Transform.SetPosition(level02.props.t2s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s7ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s8ID = {}
level02.props.t2s8ID.model = Assets.LoadModel('Models/tile2_s8.model')
level02.props.t2s8ID.transformID = Gear.BindStaticInstance(level02.props.t2s8ID.model)
Transform.SetPosition(level02.props.t2s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s8ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s9ID = {}
level02.props.t2s9ID.model = Assets.LoadModel('Models/tile2_s9.model')
level02.props.t2s9ID.transformID = Gear.BindStaticInstance(level02.props.t2s9ID.model)
Transform.SetPosition(level02.props.t2s9ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s9ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s9ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s12ID = {}
level02.props.t2s12ID.model = Assets.LoadModel('Models/tile2_s12.model')
level02.props.t2s12ID.transformID = Gear.BindStaticInstance(level02.props.t2s12ID.model)
Transform.SetPosition(level02.props.t2s12ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s12ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s12ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s13ID = {}
level02.props.t2s13ID.model = Assets.LoadModel('Models/tile2_s13.model')
level02.props.t2s13ID.transformID = Gear.BindStaticInstance(level02.props.t2s13ID.model)
Transform.SetPosition(level02.props.t2s13ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s13ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s13ID.transformID, {x=-0, y=0, z=-0})
level02.props.t2s14ID = {}
level02.props.t2s14ID.model = Assets.LoadModel('Models/tile2_s14.model')
level02.props.t2s14ID.transformID = Gear.BindStaticInstance(level02.props.t2s14ID.model)
Transform.SetPosition(level02.props.t2s14ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s14ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s14ID.transformID, {x=-0, y=0, z=-0})
level02.colliders.Tile2_wallNrID = {}
level02.colliders.Tile2_wallNrID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNrID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNrID.collider:SetAxes(0.485643, -0, 0.874157, 0, -1, -0, 0.874157, 0, -0.485643)
level02.colliders.Tile2_wallNrID.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.Tile2_wallNrID.collider:SetPos(132.5,34.0803,208.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNrID.collider, 3)
level02.colliders.Tile2_wallNr1ID = {}
level02.colliders.Tile2_wallNr1ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr1ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr1ID.collider:SetAxes(0.813733, -0, 0.581238, 0, -1, -0, 0.581238, 0, -0.813733)
level02.colliders.Tile2_wallNr1ID.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.Tile2_wallNr1ID.collider:SetPos(139.5,34.7488,202.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr1ID.collider, 3)
level02.colliders.Tile2_wallNr2ID = {}
level02.colliders.Tile2_wallNr2ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr2ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr2ID.collider:SetAxes(0.961524, -0, 0.274721, 0, -1, -0, 0.274721, 0, -0.961524)
level02.colliders.Tile2_wallNr2ID.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.Tile2_wallNr2ID.collider:SetPos(143,36.9769,195.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr2ID.collider, 3)
level02.colliders.Tile2_wallNr3ID = {}
level02.colliders.Tile2_wallNr3ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr3ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr3ID.collider:SetAxes(0.98995, 0, -0.141421, 0, -1, -0, -0.141421, 0, -0.98995)
level02.colliders.Tile2_wallNr3ID.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.Tile2_wallNr3ID.collider:SetPos(143,38.8707,185)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr3ID.collider, 3)
level02.colliders.Tile2_wallNr4ID = {}
level02.colliders.Tile2_wallNr4ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr4ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr4ID.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level02.colliders.Tile2_wallNr4ID.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.Tile2_wallNr4ID.collider:SetPos(141,40.5418,173)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr4ID.collider, 3)
level02.colliders.Tile2_wallNr5ID = {}
level02.colliders.Tile2_wallNr5ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr5ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr5ID.collider:SetAxes(0.98387, 0, -0.178885, 0, -1, -0, -0.178885, 0, -0.98387)
level02.colliders.Tile2_wallNr5ID.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.Tile2_wallNr5ID.collider:SetPos(139,44.2181,162.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr5ID.collider, 3)
level02.colliders.Tile2_wallNr6ID = {}
level02.colliders.Tile2_wallNr6ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr6ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr6ID.collider:SetAxes(0.936329, -0, 0.351123, 0, -1, -0, 0.351123, 0, -0.936329)
level02.colliders.Tile2_wallNr6ID.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.Tile2_wallNr6ID.collider:SetPos(139.5,48.7857,153)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr6ID.collider, 3)
level02.colliders.Tile2_wallNr7ID = {}
level02.colliders.Tile2_wallNr7ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr7ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr7ID.collider:SetAxes(0.393919, -0, 0.919145, 0, -1, -0, 0.919145, 0, -0.393919)
level02.colliders.Tile2_wallNr7ID.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.Tile2_wallNr7ID.collider:SetPos(144.5,50.234,147.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr7ID.collider, 3)
level02.colliders.Tile2_wallNr8ID = {}
level02.colliders.Tile2_wallNr8ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr8ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr8ID.collider:SetAxes(-0.124035, 0, 0.992278, 0, -1, 0, 0.992278, 0, 0.124035)
level02.colliders.Tile2_wallNr8ID.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.Tile2_wallNr8ID.collider:SetPos(152,50.4568,146.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr8ID.collider, 3)
level02.colliders.Tile2_wallNr9ID = {}
level02.colliders.Tile2_wallNr9ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr9ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr9ID.collider:SetAxes(-0.341743, 0, 0.939793, 0, -1, 0, 0.939793, 0, 0.341743)
level02.colliders.Tile2_wallNr9ID.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.Tile2_wallNr9ID.collider:SetPos(161.5,50.234,149)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr9ID.collider, 3)
level02.colliders.Tile2_wallNr10ID = {}
level02.colliders.Tile2_wallNr10ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr10ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr10ID.collider:SetAxes(-0.316228, 0, 0.948683, 0, -1, 0, 0.948683, 0, 0.316228)
level02.colliders.Tile2_wallNr10ID.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.Tile2_wallNr10ID.collider:SetPos(170,52.1279,152)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr10ID.collider, 3)
level02.colliders.Tile2_wallNr11ID = {}
level02.colliders.Tile2_wallNr11ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr11ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr11ID.collider:SetAxes(0.141421, -0, 0.98995, 0, -1, -0, 0.98995, 0, -0.141421)
level02.colliders.Tile2_wallNr11ID.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.Tile2_wallNr11ID.collider:SetPos(176.5,52.7963,152.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr11ID.collider, 3)
level02.colliders.Tile2_wallNr12ID = {}
level02.colliders.Tile2_wallNr12ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr12ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr12ID.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.Tile2_wallNr12ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr12ID.collider:SetPos(182,54.1331,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr12ID.collider, 3)
level02.colliders.Tile2_wallNr13ID = {}
level02.colliders.Tile2_wallNr13ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr13ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr13ID.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.Tile2_wallNr13ID.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.Tile2_wallNr13ID.collider:SetPos(184.5,54.8016,147.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr13ID.collider, 3)
level02.colliders.Tile2_wallNr14ID = {}
level02.colliders.Tile2_wallNr14ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr14ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr14ID.collider:SetAxes(0.928477, -0, 0.371391, 0, -1, -0, 0.371391, 0, -0.928477)
level02.colliders.Tile2_wallNr14ID.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.Tile2_wallNr14ID.collider:SetPos(186,55.5814,143.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr14ID.collider, 3)
level02.colliders.Tile2_wallNr15ID = {}
level02.colliders.Tile2_wallNr15ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr15ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr15ID.collider:SetAxes(0.986394, -0, 0.164399, 0, -1, -0, 0.164399, 0, -0.986394)
level02.colliders.Tile2_wallNr15ID.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.Tile2_wallNr15ID.collider:SetPos(187.5,55.2472,138)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr15ID.collider, 3)
level02.colliders.Tile2_wallNr16ID = {}
level02.colliders.Tile2_wallNr16ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr16ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr16ID.collider:SetAxes(0.970143, 0, -0.242536, 0, -1, -0, -0.242536, 0, -0.970143)
level02.colliders.Tile2_wallNr16ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr16ID.collider:SetPos(187.5,55.2472,133)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr16ID.collider, 3)
level02.colliders.Tile2_wallNr17ID = {}
level02.colliders.Tile2_wallNr17ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr17ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr17ID.collider:SetAxes(0.970143, 0, -0.242536, 0, -1, -0, -0.242536, 0, -0.970143)
level02.colliders.Tile2_wallNr17ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr17ID.collider:SetPos(186.5,55.3586,129)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr17ID.collider, 3)
level02.colliders.Tile2_wallNr18ID = {}
level02.colliders.Tile2_wallNr18ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr18ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr18ID.collider:SetAxes(0.957826, 0, -0.287348, 0, -1, -0, -0.287348, 0, -0.957826)
level02.colliders.Tile2_wallNr18ID.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.Tile2_wallNr18ID.collider:SetPos(181.5,55.2472,112)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr18ID.collider, 3)
level02.colliders.Tile2_wallNr19ID = {}
level02.colliders.Tile2_wallNr19ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr19ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr19ID.collider:SetAxes(0.995037, 0, -0.0995037, 0, -1, -0, -0.0995037, 0, -0.995037)
level02.colliders.Tile2_wallNr19ID.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.Tile2_wallNr19ID.collider:SetPos(176.5,56.8068,92)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr19ID.collider, 3)
level02.colliders.Tile2_wallNr20ID = {}
level02.colliders.Tile2_wallNr20ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr20ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr20ID.collider:SetAxes(0.998274, -0, 0.058722, 0, -1, -0, 0.058722, 0, -0.998274)
level02.colliders.Tile2_wallNr20ID.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.Tile2_wallNr20ID.collider:SetPos(176.5,56.584,78.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr20ID.collider, 3)
level02.colliders.Tile2_wallNr21ID = {}
level02.colliders.Tile2_wallNr21ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr21ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr21ID.collider:SetAxes(0.955779, -0, 0.294086, 0, -1, -0, 0.294086, 0, -0.955779)
level02.colliders.Tile2_wallNr21ID.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.Tile2_wallNr21ID.collider:SetPos(179,56.2498,63.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr21ID.collider, 3)
level02.colliders.Tile2_wallNr22ID = {}
level02.colliders.Tile2_wallNr22ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr22ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr22ID.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level02.colliders.Tile2_wallNr22ID.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.Tile2_wallNr22ID.collider:SetPos(185,54.5788,51)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr22ID.collider, 3)
level02.colliders.Tile2_wallNr23ID = {}
level02.colliders.Tile2_wallNr23ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr23ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr23ID.collider:SetAxes(0.573462, -0, 0.819232, 0, -1, -0, 0.819232, 0, -0.573462)
level02.colliders.Tile2_wallNr23ID.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.Tile2_wallNr23ID.collider:SetPos(194,53.5761,41.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr23ID.collider, 3)
level02.colliders.Tile2_wallNr24ID = {}
level02.colliders.Tile2_wallNr24ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr24ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr24ID.collider:SetAxes(0.496139, -0, 0.868243, 0, -1, -0, 0.868243, 0, -0.496139)
level02.colliders.Tile2_wallNr24ID.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.Tile2_wallNr24ID.collider:SetPos(202.5,52.9077,36)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr24ID.collider, 3)
level02.colliders.Tile2_wallNr25ID = {}
level02.colliders.Tile2_wallNr25ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr25ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr25ID.collider:SetAxes(-0.0525588, 0, 0.998618, 0, -1, 0, 0.998618, 0, 0.0525588)
level02.colliders.Tile2_wallNr25ID.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.Tile2_wallNr25ID.collider:SetPos(215.5,52.0165,34.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr25ID.collider, 3)
level02.colliders.Tile2_wallNr26ID = {}
level02.colliders.Tile2_wallNr26ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr26ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr26ID.collider:SetAxes(-0.14834, 0, 0.988936, 0, -1, 0, 0.988936, 0, 0.14834)
level02.colliders.Tile2_wallNr26ID.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.Tile2_wallNr26ID.collider:SetPos(235,48.0059,36.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr26ID.collider, 3)
level02.colliders.Tile2_wallNr27ID = {}
level02.colliders.Tile2_wallNr27ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr27ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr27ID.collider:SetAxes(-0.435561, 0, 0.900159, 0, -1, 0, 0.900159, 0, 0.435561)
level02.colliders.Tile2_wallNr27ID.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.Tile2_wallNr27ID.collider:SetPos(260.5,45.2208,45.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr27ID.collider, 3)
level02.colliders.Tile2_wallNr28ID = {}
level02.colliders.Tile2_wallNr28ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr28ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr28ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.Tile2_wallNr28ID.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.Tile2_wallNr28ID.collider:SetPos(283,40.9874,60)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr28ID.collider, 3)
level02.colliders.Tile2_wallNr29ID = {}
level02.colliders.Tile2_wallNr29ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr29ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr29ID.collider:SetAxes(-0.784046, 0, 0.620703, 0, -1, 0, 0.620703, 0, 0.784046)
level02.colliders.Tile2_wallNr29ID.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.Tile2_wallNr29ID.collider:SetPos(299.5,41.3216,79)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr29ID.collider, 3)
level02.colliders.Tile2_wallNr30ID = {}
level02.colliders.Tile2_wallNr30ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr30ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr30ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.Tile2_wallNr30ID.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.Tile2_wallNr30ID.collider:SetPos(312,42.6585,94)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr30ID.collider, 3)
level02.colliders.Tile2_wallNr31ID = {}
level02.colliders.Tile2_wallNr31ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr31ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr31ID.collider:SetAxes(-0.780869, 0, 0.624695, 0, -1, 0, 0.624695, 0, 0.780869)
level02.colliders.Tile2_wallNr31ID.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.Tile2_wallNr31ID.collider:SetPos(318,42.1015,102)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr31ID.collider, 3)
level02.colliders.Tile2_wallNr32ID = {}
level02.colliders.Tile2_wallNr32ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr32ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr32ID.collider:SetAxes(-0.680451, 0, 0.732794, 0, -1, 0, 0.732794, 0, 0.680451)
level02.colliders.Tile2_wallNr32ID.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.Tile2_wallNr32ID.collider:SetPos(329,37.4225,113.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr32ID.collider, 3)
level02.colliders.Tile2_wallNr33ID = {}
level02.colliders.Tile2_wallNr33ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr33ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr33ID.collider:SetAxes(-0.819232, 0, 0.573462, 0, -1, 0, 0.573462, 0, 0.819232)
level02.colliders.Tile2_wallNr33ID.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.Tile2_wallNr33ID.collider:SetPos(343,37.0883,130)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr33ID.collider, 3)
level02.colliders.Tile2_wallNr34ID = {}
level02.colliders.Tile2_wallNr34ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr34ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr34ID.collider:SetAxes(-0.529999, 0, 0.847998, 0, -1, 0, 0.847998, 0, 0.529999)
level02.colliders.Tile2_wallNr34ID.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.Tile2_wallNr34ID.collider:SetPos(354,38.8707,142.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr34ID.collider, 3)
level02.colliders.Tile2_wallNr35ID = {}
level02.colliders.Tile2_wallNr35ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr35ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr35ID.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level02.colliders.Tile2_wallNr35ID.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.Tile2_wallNr35ID.collider:SetPos(363,38.6479,146)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr35ID.collider, 3)
level02.colliders.Tile2_wallNr36ID = {}
level02.colliders.Tile2_wallNr36ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr36ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr36ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.Tile2_wallNr36ID.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.Tile2_wallNr36ID.collider:SetPos(372,38.3137,147)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr36ID.collider, 3)
level02.colliders.Tile2_wallNr37ID = {}
level02.colliders.Tile2_wallNr37ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr37ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr37ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.Tile2_wallNr37ID.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.Tile2_wallNr37ID.collider:SetPos(380,37.1997,147)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr37ID.collider, 3)
level02.colliders.Tile2_wallNr38ID = {}
level02.colliders.Tile2_wallNr38ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr38ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr38ID.collider:SetAxes(0.124035, -0, 0.992278, 0, -1, -0, 0.992278, 0, -0.124035)
level02.colliders.Tile2_wallNr38ID.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.Tile2_wallNr38ID.collider:SetPos(132,33.8575,223.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr38ID.collider, 3)
level02.colliders.Tile2_wallNr39ID = {}
level02.colliders.Tile2_wallNr39ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr39ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr39ID.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level02.colliders.Tile2_wallNr39ID.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.Tile2_wallNr39ID.collider:SetPos(138.5,35.5286,222)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr39ID.collider, 3)
level02.colliders.Tile2_wallNr40ID = {}
level02.colliders.Tile2_wallNr40ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr40ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr40ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level02.colliders.Tile2_wallNr40ID.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.Tile2_wallNr40ID.collider:SetPos(143,35.1944,220.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr40ID.collider, 3)
level02.colliders.Tile2_wallNr41ID = {}
level02.colliders.Tile2_wallNr41ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr41ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr41ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.Tile2_wallNr41ID.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.Tile2_wallNr41ID.collider:SetPos(146.5,35.1944,221.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr41ID.collider, 3)
level02.colliders.Tile2_wallNr42ID = {}
level02.colliders.Tile2_wallNr42ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr42ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr42ID.collider:SetAxes(-0.995037, 0, 0.0995037, 0, -1, 0, 0.0995037, 0, 0.995037)
level02.colliders.Tile2_wallNr42ID.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.Tile2_wallNr42ID.collider:SetPos(148.5,36.0856,228)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr42ID.collider, 3)
level02.colliders.Tile2_wallNr47ID = {}
level02.colliders.Tile2_wallNr47ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr47ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr47ID.collider:SetAxes(0.393919, -0, 0.919145, 0, -1, -0, 0.919145, 0, -0.393919)
level02.colliders.Tile2_wallNr47ID.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.Tile2_wallNr47ID.collider:SetPos(182.5,47.1147,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr47ID.collider, 3)
level02.colliders.Tile2_wallNr48ID = {}
level02.colliders.Tile2_wallNr48ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr48ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr48ID.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level02.colliders.Tile2_wallNr48ID.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.Tile2_wallNr48ID.collider:SetPos(189,50.5682,246.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr48ID.collider, 3)
level02.colliders.Tile2_wallNr49ID = {}
level02.colliders.Tile2_wallNr49ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr49ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr49ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.Tile2_wallNr49ID.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.Tile2_wallNr49ID.collider:SetPos(194.5,51.4594,244)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr49ID.collider, 3)
level02.colliders.Tile2_wallNr50ID = {}
level02.colliders.Tile2_wallNr50ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr50ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr50ID.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.Tile2_wallNr50ID.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.Tile2_wallNr50ID.collider:SetPos(200.5,53.2419,244.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr50ID.collider, 3)
level02.colliders.Tile2_wallNr51ID = {}
level02.colliders.Tile2_wallNr51ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr51ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr51ID.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level02.colliders.Tile2_wallNr51ID.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.Tile2_wallNr51ID.collider:SetPos(207,55.2472,245.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr51ID.collider, 3)
level02.colliders.Tile2_wallNr52ID = {}
level02.colliders.Tile2_wallNr52ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr52ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr52ID.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level02.colliders.Tile2_wallNr52ID.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.Tile2_wallNr52ID.collider:SetPos(212.5,56.6954,247)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr52ID.collider, 3)
level02.colliders.Tile2_wallNr53ID = {}
level02.colliders.Tile2_wallNr53ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr53ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr53ID.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level02.colliders.Tile2_wallNr53ID.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.Tile2_wallNr53ID.collider:SetPos(217.5,58.9235,249.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr53ID.collider, 3)
level02.colliders.Tile2_wallNr54ID = {}
level02.colliders.Tile2_wallNr54ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr54ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr54ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.Tile2_wallNr54ID.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.Tile2_wallNr54ID.collider:SetPos(221.5,59.7034,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr54ID.collider, 3)
level02.colliders.Tile2_wallNr55ID = {}
level02.colliders.Tile2_wallNr55ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr55ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr55ID.collider:SetAxes(0.110432, -0, 0.993884, 0, -1, -0, 0.993884, 0, -0.110432)
level02.colliders.Tile2_wallNr55ID.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.Tile2_wallNr55ID.collider:SetPos(227.5,60.2604,253.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr55ID.collider, 3)
level02.colliders.Tile2_wallNr56ID = {}
level02.colliders.Tile2_wallNr56ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr56ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr56ID.collider:SetAxes(0.21693, -0, 0.976187, 0, -1, -0, 0.976187, 0, -0.21693)
level02.colliders.Tile2_wallNr56ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.Tile2_wallNr56ID.collider:SetPos(236.5,60.149,252)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr56ID.collider, 3)
level02.colliders.Tile2_wallNr57ID = {}
level02.colliders.Tile2_wallNr57ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr57ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr57ID.collider:SetAxes(0.178885, -0, 0.98387, 0, -1, -0, 0.98387, 0, -0.178885)
level02.colliders.Tile2_wallNr57ID.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.Tile2_wallNr57ID.collider:SetPos(246.5,60.3718,250)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr57ID.collider, 3)
level02.colliders.Tile2_wallNr58ID = {}
level02.colliders.Tile2_wallNr58ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr58ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr58ID.collider:SetAxes(-0.066519, 0, 0.997785, 0, -1, 0, 0.997785, 0, 0.066519)
level02.colliders.Tile2_wallNr58ID.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.Tile2_wallNr58ID.collider:SetPos(259.5,59.9262,249.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr58ID.collider, 3)
level02.colliders.Tile2_wallNr59ID = {}
level02.colliders.Tile2_wallNr59ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr59ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr59ID.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.Tile2_wallNr59ID.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.Tile2_wallNr59ID.collider:SetPos(274,60.0376,251)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr59ID.collider, 3)
level02.colliders.Tile2_wallNr60ID = {}
level02.colliders.Tile2_wallNr60ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr60ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr60ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.Tile2_wallNr60ID.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.Tile2_wallNr60ID.collider:SetPos(287.5,59.7034,252)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr60ID.collider, 3)
level02.colliders.Tile2_wallNr61ID = {}
level02.colliders.Tile2_wallNr61ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr61ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr61ID.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level02.colliders.Tile2_wallNr61ID.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.Tile2_wallNr61ID.collider:SetPos(296,58.5893,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr61ID.collider, 3)
level02.colliders.Tile2_wallNr62ID = {}
level02.colliders.Tile2_wallNr62ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr62ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr62ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.Tile2_wallNr62ID.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.Tile2_wallNr62ID.collider:SetPos(299,55.1358,254)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr62ID.collider, 3)
level02.colliders.Tile2_wallNr63ID = {}
level02.colliders.Tile2_wallNr63ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr63ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr63ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.Tile2_wallNr63ID.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.Tile2_wallNr63ID.collider:SetPos(307,55.2472,255)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr63ID.collider, 3)
level02.colliders.Tile2_wallNr95ID = {}
level02.colliders.Tile2_wallNr95ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr95ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr95ID.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.Tile2_wallNr95ID.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.Tile2_wallNr95ID.collider:SetPos(346.5,55.47,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr95ID.collider, 3)
level02.colliders.Tile2_wallNr96ID = {}
level02.colliders.Tile2_wallNr96ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr96ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr96ID.collider:SetAxes(0.73994, -0, 0.672673, 0, -1, -0, 0.672673, 0, -0.73994)
level02.colliders.Tile2_wallNr96ID.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.Tile2_wallNr96ID.collider:SetPos(353,57.0297,240.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr96ID.collider, 3)
level02.colliders.Tile2_wallNr97ID = {}
level02.colliders.Tile2_wallNr97ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr97ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr97ID.collider:SetAxes(0.861934, -0, 0.50702, 0, -1, -0, 0.50702, 0, -0.861934)
level02.colliders.Tile2_wallNr97ID.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.Tile2_wallNr97ID.collider:SetPos(363,53.5761,226.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr97ID.collider, 3)
level02.colliders.Tile2_wallNr98ID = {}
level02.colliders.Tile2_wallNr98ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr98ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr98ID.collider:SetAxes(0.919145, -0, 0.393919, 0, -1, -0, 0.393919, 0, -0.919145)
level02.colliders.Tile2_wallNr98ID.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.Tile2_wallNr98ID.collider:SetPos(371,48.8971,211)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr98ID.collider, 3)
level02.colliders.Tile2_wallNr99ID = {}
level02.colliders.Tile2_wallNr99ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr99ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr99ID.collider:SetAxes(0.999445, 0, -0.0333148, 0, -1, -0, -0.0333148, 0, -0.999445)
level02.colliders.Tile2_wallNr99ID.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.Tile2_wallNr99ID.collider:SetPos(373.5,46.4462,189)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr99ID.collider, 3)
level02.colliders.Tile2_wallNr100ID = {}
level02.colliders.Tile2_wallNr100ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr100ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr100ID.collider:SetAxes(0.961524, -0, 0.274721, 0, -1, -0, 0.274721, 0, -0.961524)
level02.colliders.Tile2_wallNr100ID.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.Tile2_wallNr100ID.collider:SetPos(374,39.4277,170.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr100ID.collider, 3)
level02.colliders.Tile2_wallNr101ID = {}
level02.colliders.Tile2_wallNr101ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr101ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr101ID.collider:SetAxes(0.874157, -0, 0.485643, 0, -1, -0, 0.485643, 0, -0.874157)
level02.colliders.Tile2_wallNr101ID.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.Tile2_wallNr101ID.collider:SetPos(377.5,39.9848,162.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr101ID.collider, 3)
level02.colliders.Tile2_wallNr102ID = {}
level02.colliders.Tile2_wallNr102ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr102ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr102ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level02.colliders.Tile2_wallNr102ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr102ID.collider:SetPos(382,37.0883,157.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr102ID.collider, 3)
level02.colliders.Tile2_wallNr68ID = {}
level02.colliders.Tile2_wallNr68ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr68ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr68ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level02.colliders.Tile2_wallNr68ID.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.Tile2_wallNr68ID.collider:SetPos(205,50.6796,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr68ID.collider, 3)
level02.colliders.Tile2_wallNr69ID = {}
level02.colliders.Tile2_wallNr69ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr69ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr69ID.collider:SetAxes(-0.141421, 0, -0.98995, -0, -1, 0, -0.98995, 0, 0.141421)
level02.colliders.Tile2_wallNr69ID.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.Tile2_wallNr69ID.collider:SetPos(198.5,49.5656,227.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr69ID.collider, 3)
level02.colliders.Tile2_wallNr70ID = {}
level02.colliders.Tile2_wallNr70ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr70ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr70ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level02.colliders.Tile2_wallNr70ID.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.Tile2_wallNr70ID.collider:SetPos(191.5,48.3401,228)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr70ID.collider, 3)
level02.colliders.Tile2_wallNr71ID = {}
level02.colliders.Tile2_wallNr71ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr71ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr71ID.collider:SetAxes(0.406139, 0, -0.913812, 0, -1, -0, -0.913812, 0, -0.406139)
level02.colliders.Tile2_wallNr71ID.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.Tile2_wallNr71ID.collider:SetPos(183.5,46.8918,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr71ID.collider, 3)
level02.colliders.Tile2_wallNr72ID = {}
level02.colliders.Tile2_wallNr72ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr72ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr72ID.collider:SetAxes(0.928477, 0, -0.371391, 0, -1, -0, -0.371391, 0, -0.928477)
level02.colliders.Tile2_wallNr72ID.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.Tile2_wallNr72ID.collider:SetPos(178,42.7699,221.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr72ID.collider, 3)
level02.colliders.Tile2_wallNr73ID = {}
level02.colliders.Tile2_wallNr73ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr73ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr73ID.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level02.colliders.Tile2_wallNr73ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.Tile2_wallNr73ID.collider:SetPos(176.5,41.9901,216.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr73ID.collider, 3)
level02.colliders.Tile2_wallNr74ID = {}
level02.colliders.Tile2_wallNr74ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr74ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr74ID.collider:SetAxes(0.894427, -0, 0.447214, 0, -1, -0, 0.447214, 0, -0.894427)
level02.colliders.Tile2_wallNr74ID.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.Tile2_wallNr74ID.collider:SetPos(177,41.433,212)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr74ID.collider, 3)
level02.colliders.Tile2_wallNr75ID = {}
level02.colliders.Tile2_wallNr75ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr75ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr75ID.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level02.colliders.Tile2_wallNr75ID.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.Tile2_wallNr75ID.collider:SetPos(180.5,41.6558,208.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr75ID.collider, 3)
level02.colliders.Tile2_wallNr76ID = {}
level02.colliders.Tile2_wallNr76ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr76ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr76ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.Tile2_wallNr76ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.Tile2_wallNr76ID.collider:SetPos(185.5,41.8786,206.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr76ID.collider, 3)
level02.colliders.Tile2_wallNr77ID = {}
level02.colliders.Tile2_wallNr77ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr77ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr77ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.Tile2_wallNr77ID.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.Tile2_wallNr77ID.collider:SetPos(190.5,41.3216,205.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr77ID.collider, 3)
level02.colliders.Tile2_wallNr78ID = {}
level02.colliders.Tile2_wallNr78ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr78ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr78ID.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level02.colliders.Tile2_wallNr78ID.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.Tile2_wallNr78ID.collider:SetPos(198,40.6532,203)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr78ID.collider, 3)
level02.colliders.Tile2_wallNr79ID = {}
level02.colliders.Tile2_wallNr79ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr79ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr79ID.collider:SetAxes(0.857493, -0, 0.514496, 0, -1, -0, 0.514496, 0, -0.857493)
level02.colliders.Tile2_wallNr79ID.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.Tile2_wallNr79ID.collider:SetPos(204.5,39.6506,198.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr79ID.collider, 3)
level02.colliders.Tile2_wallNr80ID = {}
level02.colliders.Tile2_wallNr80ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr80ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr80ID.collider:SetAxes(0.957826, -0, 0.287348, 0, -1, -0, 0.287348, 0, -0.957826)
level02.colliders.Tile2_wallNr80ID.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.Tile2_wallNr80ID.collider:SetPos(207.5,38.9821,191)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr80ID.collider, 3)
level02.colliders.Tile2_wallNr81ID = {}
level02.colliders.Tile2_wallNr81ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr81ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr81ID.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.Tile2_wallNr81ID.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.Tile2_wallNr81ID.collider:SetPos(211,37.7567,184.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr81ID.collider, 3)
level02.colliders.Tile2_wallNr82ID = {}
level02.colliders.Tile2_wallNr82ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr82ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr82ID.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.Tile2_wallNr82ID.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.Tile2_wallNr82ID.collider:SetPos(215,36.9769,181.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr82ID.collider, 3)
level02.colliders.Tile2_wallNr83ID = {}
level02.colliders.Tile2_wallNr83ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr83ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr83ID.collider:SetAxes(0.819232, -0, 0.573462, 0, -1, -0, 0.573462, 0, -0.819232)
level02.colliders.Tile2_wallNr83ID.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.Tile2_wallNr83ID.collider:SetPos(220.5,36.0856,175)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr83ID.collider, 3)
level02.colliders.Tile2_wallNr84ID = {}
level02.colliders.Tile2_wallNr84ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr84ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr84ID.collider:SetAxes(0.581238, -0, 0.813733, 0, -1, -0, 0.813733, 0, -0.581238)
level02.colliders.Tile2_wallNr84ID.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.Tile2_wallNr84ID.collider:SetPos(227.5,35.64,167.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr84ID.collider, 3)
level02.colliders.Tile2_wallNr85ID = {}
level02.colliders.Tile2_wallNr85ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr85ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr85ID.collider:SetAxes(0.645942, -0, 0.763386, 0, -1, -0, 0.763386, 0, -0.645942)
level02.colliders.Tile2_wallNr85ID.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.Tile2_wallNr85ID.collider:SetPos(237.5,35.64,159.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr85ID.collider, 3)
level02.colliders.Tile2_wallNr86ID = {}
level02.colliders.Tile2_wallNr86ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr86ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr86ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr86ID.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.Tile2_wallNr86ID.collider:SetPos(249.5,36.0856,148.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr86ID.collider, 3)
level02.colliders.Tile2_wallNr103ID = {}
level02.colliders.Tile2_wallNr103ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr103ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr103ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr103ID.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.Tile2_wallNr103ID.collider:SetPos(258,36.8654,140)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr103ID.collider, 3)
level02.colliders.Tile2_wallNr104ID = {}
level02.colliders.Tile2_wallNr104ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr104ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr104ID.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level02.colliders.Tile2_wallNr104ID.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.Tile2_wallNr104ID.collider:SetPos(264,37.3111,134.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr104ID.collider, 3)
level02.colliders.Tile2_wallNr105ID = {}
level02.colliders.Tile2_wallNr105ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr105ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr105ID.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level02.colliders.Tile2_wallNr105ID.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.Tile2_wallNr105ID.collider:SetPos(269,37.4225,131)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr105ID.collider, 3)
level02.colliders.Tile2_wallNr106ID = {}
level02.colliders.Tile2_wallNr106ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr106ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr106ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.Tile2_wallNr106ID.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.Tile2_wallNr106ID.collider:SetPos(273.5,37.3111,129.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr106ID.collider, 3)
level02.colliders.Tile2_wallNr107ID = {}
level02.colliders.Tile2_wallNr107ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr107ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr107ID.collider:SetAxes(0.0905357, -0, 0.995893, 0, -1, -0, 0.995893, 0, -0.0905357)
level02.colliders.Tile2_wallNr107ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.Tile2_wallNr107ID.collider:SetPos(281.5,37.5339,128.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr107ID.collider, 3)
level02.colliders.Tile2_wallNr108ID = {}
level02.colliders.Tile2_wallNr108ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr108ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr108ID.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level02.colliders.Tile2_wallNr108ID.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.Tile2_wallNr108ID.collider:SetPos(293,37.1997,129)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr108ID.collider, 3)
level02.colliders.Tile2_wallNr109ID = {}
level02.colliders.Tile2_wallNr109ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr109ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr109ID.collider:SetAxes(-0.274721, 0, 0.961524, 0, -1, 0, 0.961524, 0, 0.274721)
level02.colliders.Tile2_wallNr109ID.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.Tile2_wallNr109ID.collider:SetPos(306,36.3084,132)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr109ID.collider, 3)
level02.colliders.Tile2_wallNr111ID = {}
level02.colliders.Tile2_wallNr111ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr111ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr111ID.collider:SetAxes(0.913812, -0, 0.406139, 0, -1, -0, 0.406139, 0, -0.913812)
level02.colliders.Tile2_wallNr111ID.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.Tile2_wallNr111ID.collider:SetPos(348,41.0988,203.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr111ID.collider, 3)
level02.colliders.Tile2_wallNr112ID = {}
level02.colliders.Tile2_wallNr112ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr112ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr112ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.Tile2_wallNr112ID.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.Tile2_wallNr112ID.collider:SetPos(350,39.4277,194)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr112ID.collider, 3)
level02.colliders.Tile2_wallNr117ID = {}
level02.colliders.Tile2_wallNr117ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr117ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr117ID.collider:SetAxes(0.56921, 0, -0.822192, 0, -1, -0, -0.822192, 0, -0.56921)
level02.colliders.Tile2_wallNr117ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.Tile2_wallNr117ID.collider:SetPos(319.5,34.7488,138.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr117ID.collider, 3)
level02.colliders.Tile2_wallNr145ID = {}
level02.colliders.Tile2_wallNr145ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr145ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr145ID.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.Tile2_wallNr145ID.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.Tile2_wallNr145ID.collider:SetPos(192.5,42.6585,185.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr145ID.collider, 3)
level02.colliders.Tile2_wallNr146ID = {}
level02.colliders.Tile2_wallNr146ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr146ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr146ID.collider:SetAxes(0.540758, -0, 0.841179, 0, -1, -0, 0.841179, 0, -0.540758)
level02.colliders.Tile2_wallNr146ID.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.Tile2_wallNr146ID.collider:SetPos(201,40.319,176.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr146ID.collider, 3)
level02.colliders.Tile2_wallNr147ID = {}
level02.colliders.Tile2_wallNr147ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr147ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr147ID.collider:SetAxes(0.73994, -0, 0.672673, 0, -1, -0, 0.672673, 0, -0.73994)
level02.colliders.Tile2_wallNr147ID.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.Tile2_wallNr147ID.collider:SetPos(213,39.3163,166.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr147ID.collider, 3)
level02.colliders.Tile2_wallNr148ID = {}
level02.colliders.Tile2_wallNr148ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr148ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr148ID.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.Tile2_wallNr148ID.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.Tile2_wallNr148ID.collider:SetPos(219,36.4198,158)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr148ID.collider, 3)
level02.colliders.Tile2_wallNr149ID = {}
level02.colliders.Tile2_wallNr149ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr149ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr149ID.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.Tile2_wallNr149ID.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.Tile2_wallNr149ID.collider:SetPos(222,36.5312,153.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr149ID.collider, 3)
level02.colliders.Tile2_wallNr150ID = {}
level02.colliders.Tile2_wallNr150ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr150ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr150ID.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level02.colliders.Tile2_wallNr150ID.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.Tile2_wallNr150ID.collider:SetPos(228.5,36.6426,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr150ID.collider, 3)
level02.colliders.Tile2_wallNr151ID = {}
level02.colliders.Tile2_wallNr151ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr151ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr151ID.collider:SetAxes(0.752577, -0, 0.658505, 0, -1, -0, 0.658505, 0, -0.752577)
level02.colliders.Tile2_wallNr151ID.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.Tile2_wallNr151ID.collider:SetPos(236.5,36.5312,145)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr151ID.collider, 3)
level02.colliders.Tile2_wallNr152ID = {}
level02.colliders.Tile2_wallNr152ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr152ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr152ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.Tile2_wallNr152ID.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.Tile2_wallNr152ID.collider:SetPos(240,36.754,139)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr152ID.collider, 3)
level02.colliders.Tile2_wallNr153ID = {}
level02.colliders.Tile2_wallNr153ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr153ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr153ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr153ID.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.Tile2_wallNr153ID.collider:SetPos(238,37.3111,135)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr153ID.collider, 3)
level02.colliders.Tile2_wallNr154ID = {}
level02.colliders.Tile2_wallNr154ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr154ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr154ID.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level02.colliders.Tile2_wallNr154ID.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.Tile2_wallNr154ID.collider:SetPos(221,36.6426,148)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr154ID.collider, 3)
level02.colliders.Tile2_wallNr155ID = {}
level02.colliders.Tile2_wallNr155ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr155ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr155ID.collider:SetAxes(0.977802, 0, -0.209529, 0, -1, -0, -0.209529, 0, -0.977802)
level02.colliders.Tile2_wallNr155ID.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.Tile2_wallNr155ID.collider:SetPos(218.5,38.9821,136)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr155ID.collider, 3)
level02.colliders.Tile2_wallNr156ID = {}
level02.colliders.Tile2_wallNr156ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr156ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr156ID.collider:SetAxes(0.5547, -0, 0.83205, 0, -1, -0, 0.83205, 0, -0.5547)
level02.colliders.Tile2_wallNr156ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.Tile2_wallNr156ID.collider:SetPos(221.5,41.3216,126)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr156ID.collider, 3)
level02.colliders.Tile2_wallNr157ID = {}
level02.colliders.Tile2_wallNr157ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr157ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr157ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.Tile2_wallNr157ID.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.Tile2_wallNr157ID.collider:SetPos(231,42.2129,122)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr157ID.collider, 3)
level02.colliders.Tile2_wallNr158ID = {}
level02.colliders.Tile2_wallNr158ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr158ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr158ID.collider:SetAxes(-0.503871, 0, 0.863779, 0, -1, 0, 0.863779, 0, 0.503871)
level02.colliders.Tile2_wallNr158ID.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.Tile2_wallNr158ID.collider:SetPos(242,40.0962,124.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr158ID.collider, 3)
level02.colliders.Tile2_wallNr159ID = {}
level02.colliders.Tile2_wallNr159ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr159ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr159ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr159ID.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.Tile2_wallNr159ID.collider:SetPos(253,37.9795,123)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr159ID.collider, 3)
level02.colliders.Tile2_wallNr160ID = {}
level02.colliders.Tile2_wallNr160ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr160ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr160ID.collider:SetAxes(0.633238, -0, 0.773957, 0, -1, -0, 0.773957, 0, -0.633238)
level02.colliders.Tile2_wallNr160ID.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.Tile2_wallNr160ID.collider:SetPos(263.5,37.4225,113.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr160ID.collider, 3)
level02.colliders.Tile2_wallNr161ID = {}
level02.colliders.Tile2_wallNr161ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr161ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr161ID.collider:SetAxes(0.102899, -0, 0.994692, 0, -1, -0, 0.994692, 0, -0.102899)
level02.colliders.Tile2_wallNr161ID.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.Tile2_wallNr161ID.collider:SetPos(283.5,36.9769,107.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr161ID.collider, 3)
level02.props.PineTree_ColliderID = {}
level02.props.PineTree_ColliderID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_ColliderID.transformID = Gear.BindStaticInstance(level02.props.PineTree_ColliderID.model)
Transform.SetPosition(level02.props.PineTree_ColliderID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_ColliderID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_ColliderID.transformID, {x=-0.0166519, y=-0.520999, z=-0})
level02.props.PineTree_ColliderID.collider = OBBCollider.Create(-1)
level02.props.PineTree_ColliderID.collider:SetOffset(0,4,0)
level02.props.PineTree_ColliderID.collider:SetAxes(0.867202, -0.0144419, 0.497747, -0.0166511, -0.999861, 0, -0.497678, 0.00828805, 0.867322)
level02.props.PineTree_ColliderID.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.props.PineTree_ColliderID.collider:SetPos(176.796,45.2188,214.625)
CollisionHandler.AddOBB(level02.props.PineTree_ColliderID.collider, 3)
level02.props.PineTree_Collider2ID = {}
level02.props.PineTree_Collider2ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2ID.transformID, {x=-0, y=0, z=-0})
level02.props.PineTree_Collider2ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider2ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider2ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.PineTree_Collider2ID.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.props.PineTree_Collider2ID.collider:SetPos(163.885,45.0938,193.24)
CollisionHandler.AddOBB(level02.props.PineTree_Collider2ID.collider, 3)
level02.props.PineTree_NoCollider1ID = {}
level02.props.PineTree_NoCollider1ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider1ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider1ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider1ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(level02.props.PineTree_NoCollider1ID.transformID, {x=-0, y=2.74772, z=-0})
level02.props.PineTree_NoCollider11ID = {}
level02.props.PineTree_NoCollider11ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider11ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider11ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider11ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(level02.props.PineTree_NoCollider11ID.transformID, {x=-0, y=0, z=-0})
level02.props.PineTree_NoCollider12ID = {}
level02.props.PineTree_NoCollider12ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider12ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider12ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider12ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(level02.props.PineTree_NoCollider12ID.transformID, {x=-0, y=0, z=-0})
level02.props.PineTree_NoCollider13ID = {}
level02.props.PineTree_NoCollider13ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider13ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider13ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider13ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider13ID.transformID, {x=-0, y=0.550171, z=-0})
level02.props.PineTree_NoCollider14ID = {}
level02.props.PineTree_NoCollider14ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider14ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider14ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider14ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider14ID.transformID, {x=-0, y=2.98311, z=-0})
level02.props.PineTree_NoCollider15ID = {}
level02.props.PineTree_NoCollider15ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider15ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider15ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider15ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(level02.props.PineTree_NoCollider15ID.transformID, {x=-0, y=-7.32886, z=-0})
level02.props.PineTree_NoCollider16ID = {}
level02.props.PineTree_NoCollider16ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider16ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider16ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider16ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(level02.props.PineTree_NoCollider16ID.transformID, {x=-0, y=-2.98524, z=-0})
level02.props.PineTree_NoCollider17ID = {}
level02.props.PineTree_NoCollider17ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider17ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider17ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider17ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(level02.props.PineTree_NoCollider17ID.transformID, {x=-0, y=-2.76387, z=-0})
level02.props.PineTree_NoCollider18ID = {}
level02.props.PineTree_NoCollider18ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider18ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider18ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider18ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(level02.props.PineTree_NoCollider18ID.transformID, {x=-0, y=1.82048, z=-0})
level02.props.PineTree_NoCollider19ID = {}
level02.props.PineTree_NoCollider19ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider19ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider19ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider19ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(level02.props.PineTree_NoCollider19ID.transformID, {x=-0, y=-2.19759, z=-0})
level02.props.OakTree_Collider4ID = {}
level02.props.OakTree_Collider4ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider4ID.model)
Transform.SetPosition(level02.props.OakTree_Collider4ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider4ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(level02.props.OakTree_Collider4ID.transformID, {x=-0, y=3.64905, z=-0})
level02.props.OakTree_Collider4ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider4ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider4ID.collider:SetAxes(-0.873982, 0, 0.485958, -0, -1, 0, -0.485958, 0, -0.873982)
level02.props.OakTree_Collider4ID.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.props.OakTree_Collider4ID.collider:SetPos(235,42.375,133.125)
CollisionHandler.AddOBB(level02.props.OakTree_Collider4ID.collider, 3)
level02.props.OakTree_Collider41ID = {}
level02.props.OakTree_Collider41ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider41ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider41ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider41ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.OakTree_Collider41ID.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.props.OakTree_Collider41ID.collider:SetPos(328.75,41.0313,113.313)
CollisionHandler.AddOBB(level02.props.OakTree_Collider41ID.collider, 3)
level02.props.OakTree_Collider42ID = {}
level02.props.OakTree_Collider42ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider42ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider42ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider42ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.OakTree_Collider42ID.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.props.OakTree_Collider42ID.collider:SetPos(339.5,40.3125,156.5)
CollisionHandler.AddOBB(level02.props.OakTree_Collider42ID.collider, 3)
level02.props.OakTree_Collider43ID = {}
level02.props.OakTree_Collider43ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider43ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider43ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider43ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.OakTree_Collider43ID.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.props.OakTree_Collider43ID.collider:SetPos(370.079,42.4331,185.415)
CollisionHandler.AddOBB(level02.props.OakTree_Collider43ID.collider, 3)
level02.props.OakTree_Collider44ID = {}
level02.props.OakTree_Collider44ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider44ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider44ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider44ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.OakTree_Collider44ID.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.props.OakTree_Collider44ID.collider:SetPos(365.671,47.676,214.229)
CollisionHandler.AddOBB(level02.props.OakTree_Collider44ID.collider, 3)
level02.props.OakTree_Collider45ID = {}
level02.props.OakTree_Collider45ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider45ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider45ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider45ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.OakTree_Collider45ID.collider:SetHalfLengths(1.75,4,1.75)
level02.props.OakTree_Collider45ID.collider:SetPos(354.858,50.9688,226.742)
CollisionHandler.AddOBB(level02.props.OakTree_Collider45ID.collider, 3)
level02.props.OakTree_Collider46ID = {}
level02.props.OakTree_Collider46ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider46ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider46ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider46ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.OakTree_Collider46ID.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.props.OakTree_Collider46ID.collider:SetPos(347.526,56,240.375)
CollisionHandler.AddOBB(level02.props.OakTree_Collider46ID.collider, 3)
level02.props.OakTree_NoCollider1ID = {}
level02.props.OakTree_NoCollider1ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider1ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider1ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider1ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(level02.props.OakTree_NoCollider1ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider15ID = {}
level02.props.OakTree_NoCollider15ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider15ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider15ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider15ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(level02.props.OakTree_NoCollider15ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider111ID = {}
level02.props.OakTree_NoCollider111ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider111ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider111ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider111ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(level02.props.OakTree_NoCollider111ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider112ID = {}
level02.props.OakTree_NoCollider112ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider112ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider112ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider112ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_NoCollider112ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider113ID = {}
level02.props.OakTree_NoCollider113ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider113ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider113ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider113ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(level02.props.OakTree_NoCollider113ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider114ID = {}
level02.props.OakTree_NoCollider114ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider114ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider114ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider114ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(level02.props.OakTree_NoCollider114ID.transformID, {x=-0, y=-5.86132, z=-0})
level02.props.OakTree_NoCollider115ID = {}
level02.props.OakTree_NoCollider115ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider115ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider115ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider115ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(level02.props.OakTree_NoCollider115ID.transformID, {x=-0, y=1.59683, z=-0})
level02.props.OakTree_NoCollider116ID = {}
level02.props.OakTree_NoCollider116ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider116ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider116ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider116ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(level02.props.OakTree_NoCollider116ID.transformID, {x=-0, y=-1.86515, z=-0})
level02.props.OakTree_NoCollider117ID = {}
level02.props.OakTree_NoCollider117ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider117ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider117ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider117ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(level02.props.OakTree_NoCollider117ID.transformID, {x=-0, y=-1.52942, z=-0})
level02.props.OakTree_NoCollider118ID = {}
level02.props.OakTree_NoCollider118ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider118ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider118ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider118ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(level02.props.OakTree_NoCollider118ID.transformID, {x=-0, y=3.43332, z=-0})
level02.props.OakTree_NoCollider119ID = {}
level02.props.OakTree_NoCollider119ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider119ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider119ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider119ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(level02.props.OakTree_NoCollider119ID.transformID, {x=-0, y=1.121, z=-0})
level02.props.OakTree_NoCollider120ID = {}
level02.props.OakTree_NoCollider120ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider120ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider120ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider120ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(level02.props.OakTree_NoCollider120ID.transformID, {x=-0, y=1.69246, z=-0})
level02.props.OakTree_NoCollider121ID = {}
level02.props.OakTree_NoCollider121ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider121ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider121ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider121ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(level02.props.OakTree_NoCollider121ID.transformID, {x=-0, y=1.70454, z=-0})
level02.props.OakTree_NoCollider122ID = {}
level02.props.OakTree_NoCollider122ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider122ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider122ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider122ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(level02.props.OakTree_NoCollider122ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider123ID = {}
level02.props.OakTree_NoCollider123ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider123ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider123ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider123ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(level02.props.OakTree_NoCollider123ID.transformID, {x=-0, y=2.28254, z=-0})
level02.props.OakTree_NoCollider124ID = {}
level02.props.OakTree_NoCollider124ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider124ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider124ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider124ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(level02.props.OakTree_NoCollider124ID.transformID, {x=-0, y=-7.63234, z=-0})
level02.props.OakTree_NoCollider125ID = {}
level02.props.OakTree_NoCollider125ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider125ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider125ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider125ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(level02.props.OakTree_NoCollider125ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider126ID = {}
level02.props.OakTree_NoCollider126ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider126ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider126ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider126ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(level02.props.OakTree_NoCollider126ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider127ID = {}
level02.props.OakTree_NoCollider127ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider127ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider127ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider127ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(level02.props.OakTree_NoCollider127ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider128ID = {}
level02.props.OakTree_NoCollider128ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider128ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider128ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider128ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(level02.props.OakTree_NoCollider128ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider129ID = {}
level02.props.OakTree_NoCollider129ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider129ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider129ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider129ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(level02.props.OakTree_NoCollider129ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider130ID = {}
level02.props.OakTree_NoCollider130ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider130ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider130ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider130ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(level02.props.OakTree_NoCollider130ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider131ID = {}
level02.props.OakTree_NoCollider131ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider131ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider131ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider131ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(level02.props.OakTree_NoCollider131ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider132ID = {}
level02.props.OakTree_NoCollider132ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider132ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider132ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider132ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(level02.props.OakTree_NoCollider132ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider133ID = {}
level02.props.OakTree_NoCollider133ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider133ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider133ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider133ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(level02.props.OakTree_NoCollider133ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider134ID = {}
level02.props.OakTree_NoCollider134ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider134ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider134ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider134ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(level02.props.OakTree_NoCollider134ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_NoCollider135ID = {}
level02.props.OakTree_NoCollider135ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider135ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider135ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider135ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(level02.props.OakTree_NoCollider135ID.transformID, {x=-0, y=0, z=-0})
level02.props.Bridge1ID = {}
level02.props.Bridge1ID.model = Assets.LoadModel('Models/Bridge1.model')
level02.props.Bridge1ID.transformID = Gear.BindStaticInstance(level02.props.Bridge1ID.model)
Transform.SetPosition(level02.props.Bridge1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Bridge1ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Bridge1ID.transformID, {x=-0, y=0, z=-0})
level02.colliders.Tile2_wallNr163ID = {}
level02.colliders.Tile2_wallNr163ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr163ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr163ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level02.colliders.Tile2_wallNr163ID.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.Tile2_wallNr163ID.collider:SetPos(320,48.7857,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr163ID.collider, 3)
level02.colliders.Tile2_wallNr93ID = {}
level02.colliders.Tile2_wallNr93ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr93ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr93ID.collider:SetAxes(0.328521, -0, 0.944497, 0, -1, -0, 0.944497, 0, -0.328521)
level02.colliders.Tile2_wallNr93ID.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.Tile2_wallNr93ID.collider:SetPos(323.5,51.6822,242)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr93ID.collider, 3)
level02.props.WaterID = {}
level02.props.WaterID.model = Assets.LoadModel('Models/lake.model')
level02.props.WaterID.transformID = Gear.BindStaticInstance(level02.props.WaterID.model)
Transform.SetPosition(level02.props.WaterID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.WaterID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.WaterID.transformID, {x=-0, y=0, z=-0})
level02.props.House1ID = {}
level02.props.House1ID.model = Assets.LoadModel('Models/House1.model')
level02.props.House1ID.transformID = Gear.BindStaticInstance(level02.props.House1ID.model)
Transform.SetPosition(level02.props.House1ID.transformID, {x=225.855, y=38.7525, z=139.26})
Transform.SetScaleNonUniform(level02.props.House1ID.transformID, 1.50664, 1.67704, 1.68159)
Transform.SetRotation(level02.props.House1ID.transformID, {x=-0.0540893, y=4.89373, z=0.000975025})
level02.props.House1ID.collider = OBBCollider.Create(-1)
level02.props.House1ID.collider:SetOffset(0,0,0)
level02.props.House1ID.collider:SetAxes(0.180086, -0.00975022, 0.983603, -0.0550206, -0.998485, 0.000175845, -0.982111, 0.05415, 0.180349)
level02.props.House1ID.collider:SetHalfLengths(7.53319,6.70818,7.56718)
level02.props.House1ID.collider:SetPos(225.855,38.7525,139.26)
CollisionHandler.AddOBB(level02.props.House1ID.collider, 3)
level02.props.Lantern4ID = {}
level02.props.Lantern4ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern4ID.transformID = Gear.BindStaticInstance(level02.props.Lantern4ID.model)
Transform.SetPosition(level02.props.Lantern4ID.transformID, {x=226, y=39, z=133})
Transform.SetScaleNonUniform(level02.props.Lantern4ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern4ID.transformID, {x=-0, y=-1.0472, z=-0})
level02.props.Lantern4ID.lightIndex = Light.addLight(225.5, 42.75, 131, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern7ID = {}
level02.props.Lantern7ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern7ID.transformID = Gear.BindStaticInstance(level02.props.Lantern7ID.model)
Transform.SetPosition(level02.props.Lantern7ID.transformID, {x=310.464, y=52.5625, z=246.125})
Transform.SetScaleNonUniform(level02.props.Lantern7ID.transformID, 1, 1.22127, 1)
Transform.SetRotation(level02.props.Lantern7ID.transformID, {x=-0, y=0, z=-0})
level02.props.Lantern7ID.lightIndex = Light.addLight(307.964, 56.5625, 246.125, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern8ID = {}
level02.props.Lantern8ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern8ID.transformID = Gear.BindStaticInstance(level02.props.Lantern8ID.model)
Transform.SetPosition(level02.props.Lantern8ID.transformID, {x=336.838, y=50.9375, z=237.224})
Transform.SetScaleNonUniform(level02.props.Lantern8ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern8ID.transformID, {x=-0, y=3.91918, z=-0})
level02.props.Lantern8ID.lightIndex = Light.addLight(338.838, 54.9375, 235.224, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern9ID = {}
level02.props.Lantern9ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern9ID.transformID = Gear.BindStaticInstance(level02.props.Lantern9ID.model)
Transform.SetPosition(level02.props.Lantern9ID.transformID, {x=196.044, y=40.2449, z=203.33})
Transform.SetScaleNonUniform(level02.props.Lantern9ID.transformID, 1, 1.06172, 1)
Transform.SetRotation(level02.props.Lantern9ID.transformID, {x=-0, y=-1.18189, z=-0})
level02.props.Lantern9ID.lightIndex = Light.addLight(195.044, 44.2449, 201.08, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern10ID = {}
level02.props.Lantern10ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern10ID.transformID = Gear.BindStaticInstance(level02.props.Lantern10ID.model)
Transform.SetPosition(level02.props.Lantern10ID.transformID, {x=216.289, y=36.0584, z=179.585})
Transform.SetScaleNonUniform(level02.props.Lantern10ID.transformID, 1, 1.19206, 1)
Transform.SetRotation(level02.props.Lantern10ID.transformID, {x=-0, y=-0.661819, z=-0})
level02.props.Lantern10ID.lightIndex = Light.addLight(214.289, 40.5584, 177.985, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern11ID = {}
level02.props.Lantern11ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern11ID.transformID = Gear.BindStaticInstance(level02.props.Lantern11ID.model)
Transform.SetPosition(level02.props.Lantern11ID.transformID, {x=235.862, y=35.5215, z=159.577})
Transform.SetScaleNonUniform(level02.props.Lantern11ID.transformID, 1, 1.0759, 1)
Transform.SetRotation(level02.props.Lantern11ID.transformID, {x=-0, y=-0.977943, z=-0})
level02.props.Lantern11ID.lightIndex = Light.addLight(234.612, 39.5215, 157.577, 1, 0.576471, 0.160784, 10,2)
level02.props.PineTree_Collider3ID = {}
level02.props.PineTree_Collider3ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider3ID.model)
Transform.SetPosition(level02.props.PineTree_Collider3ID.transformID, {x=305.672, y=53.5464, z=253.254})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider3ID.transformID, 1.32645, 1.7271, 1.22295)
Transform.SetRotation(level02.props.PineTree_Collider3ID.transformID, {x=-0, y=0, z=-0})
level02.props.PineTree_Collider3ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider3ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider3ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.PineTree_Collider3ID.collider:SetHalfLengths(3.31612,6.90839,3.05737)
level02.props.PineTree_Collider3ID.collider:SetPos(305.672,57.5464,253.254)
CollisionHandler.AddOBB(level02.props.PineTree_Collider3ID.collider, 3)
level02.props.OakTree_Collider47ID = {}
level02.props.OakTree_Collider47ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider47ID.model)
Transform.SetPosition(level02.props.OakTree_Collider47ID.transformID, {x=346.368, y=37.1634, z=203.707})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider47ID.transformID, 1.41434, 1.77458, 1.43405)
Transform.SetRotation(level02.props.OakTree_Collider47ID.transformID, {x=-0, y=3.24973, z=-0})
level02.props.OakTree_Collider47ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider47ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider47ID.collider:SetAxes(-0.994159, 0, 0.107927, -0, -1, 0, -0.107927, 0, -0.994159)
level02.props.OakTree_Collider47ID.collider:SetHalfLengths(2.47509,7.09833,2.50959)
level02.props.OakTree_Collider47ID.collider:SetPos(346.368,41.1634,203.707)
CollisionHandler.AddOBB(level02.props.OakTree_Collider47ID.collider, 3)
level02.props.BlockerClosedFireID = {}
level02.props.BlockerClosedFireID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerClosedFireID.transformID = Gear.BindStaticInstance(level02.props.BlockerClosedFireID.model)
Transform.SetPosition(level02.props.BlockerClosedFireID.transformID, {x=201.494, y=55.0481, z=234.984})
Transform.SetScaleNonUniform(level02.props.BlockerClosedFireID.transformID, 1, 1, 1.5)
Transform.SetRotation(level02.props.BlockerClosedFireID.transformID, {x=-0, y=0, z=0.160139})
level02.props.BlockerClosedFireID.collider = OBBCollider.Create(-1)
level02.props.BlockerClosedFireID.collider:SetOffset(0,0,0)
level02.props.BlockerClosedFireID.collider:SetAxes(1, 0, 0, 0, -0.987205, 0.159456, 0, 0.159456, 0.987205)
level02.props.BlockerClosedFireID.collider:SetHalfLengths(0.5,9,10.5)
level02.props.BlockerClosedFireID.collider:SetPos(201.494,55.0481,234.984)
CollisionHandler.AddOBB(level02.props.BlockerClosedFireID.collider, 3)
level02.props.BlockerOpenFireID = {}
level02.props.BlockerOpenFireID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerOpenFireID.transformID = Gear.BindStaticInstance(level02.props.BlockerOpenFireID.model)
Transform.SetPosition(level02.props.BlockerOpenFireID.transformID, {x=189.747, y=44.2068, z=236.678})
Transform.SetScaleNonUniform(level02.props.BlockerOpenFireID.transformID, 1, 1, 1.5)
Transform.SetRotation(level02.props.BlockerOpenFireID.transformID, {x=-0, y=0, z=0.106526})
level02.props.BlockerClosedFire1ID = {}
level02.props.BlockerClosedFire1ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerClosedFire1ID.transformID = Gear.BindStaticInstance(level02.props.BlockerClosedFire1ID.model)
Transform.SetPosition(level02.props.BlockerClosedFire1ID.transformID, {x=357.701, y=41.2286, z=182.806})
Transform.SetScaleNonUniform(level02.props.BlockerClosedFire1ID.transformID, 1, 1, 2)
Transform.SetRotation(level02.props.BlockerClosedFire1ID.transformID, {x=-0, y=1.53245, z=-0})
level02.props.BlockerClosedFire1ID.collider = OBBCollider.Create(-1)
level02.props.BlockerClosedFire1ID.collider:SetOffset(0,0,0)
level02.props.BlockerClosedFire1ID.collider:SetAxes(0.0383416, 0, -0.999265, 0, -1, 0, 0.999265, 0, 0.0383416)
level02.props.BlockerClosedFire1ID.collider:SetHalfLengths(0.5,9,14)
level02.props.BlockerClosedFire1ID.collider:SetPos(357.701,41.2286,182.806)
CollisionHandler.AddOBB(level02.props.BlockerClosedFire1ID.collider, 3)
level02.props.BlockerOpenFire1ID = {}
level02.props.BlockerOpenFire1ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerOpenFire1ID.transformID = Gear.BindStaticInstance(level02.props.BlockerOpenFire1ID.model)
Transform.SetPosition(level02.props.BlockerOpenFire1ID.transformID, {x=359.067, y=35.1186, z=198.483})
Transform.SetScaleNonUniform(level02.props.BlockerOpenFire1ID.transformID, 1, 1, 2)
Transform.SetRotation(level02.props.BlockerOpenFire1ID.transformID, {x=-0, y=1.57451, z=-0})
level02.props.BlockerClosedNatureID = {}
level02.props.BlockerClosedNatureID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerClosedNatureID.transformID = Gear.BindStaticInstance(level02.props.BlockerClosedNatureID.model)
Transform.SetPosition(level02.props.BlockerClosedNatureID.transformID, {x=146.568, y=50.6744, z=165.327})
Transform.SetScaleNonUniform(level02.props.BlockerClosedNatureID.transformID, 1, 1, 1.5)
Transform.SetRotation(level02.props.BlockerClosedNatureID.transformID, {x=0.196927, y=1.68986, z=-0})
level02.props.BlockerClosedNatureID.collider = OBBCollider.Create(-1)
level02.props.BlockerClosedNatureID.collider:SetOffset(0,0,0)
level02.props.BlockerClosedNatureID.collider:SetAxes(-0.116484, -0.02324, -0.992921, 0.195657, -0.980672, -0, 0.97373, 0.194271, -0.118779)
level02.props.BlockerClosedNatureID.collider:SetHalfLengths(0.5,9,10.5)
level02.props.BlockerClosedNatureID.collider:SetPos(146.568,50.6744,165.327)
CollisionHandler.AddOBB(level02.props.BlockerClosedNatureID.collider, 3)
level02.props.BlockerOpenNatureID = {}
level02.props.BlockerOpenNatureID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerOpenNatureID.transformID = Gear.BindStaticInstance(level02.props.BlockerOpenNatureID.model)
Transform.SetPosition(level02.props.BlockerOpenNatureID.transformID, {x=149.125, y=38.3969, z=173})
Transform.SetScaleNonUniform(level02.props.BlockerOpenNatureID.transformID, 1, 1, 1.5)
Transform.SetRotation(level02.props.BlockerOpenNatureID.transformID, {x=0.236165, y=1.81959, z=-0})
level02.props.BlockerClosedIceID = {}
level02.props.BlockerClosedIceID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerClosedIceID.transformID = Gear.BindStaticInstance(level02.props.BlockerClosedIceID.model)
Transform.SetPosition(level02.props.BlockerClosedIceID.transformID, {x=194.402, y=44.1694, z=196.375})
Transform.SetScaleNonUniform(level02.props.BlockerClosedIceID.transformID, 1, 1, 1.5)
Transform.SetRotation(level02.props.BlockerClosedIceID.transformID, {x=-0, y=0.294333, z=-0})
level02.props.BlockerClosedIceID.collider = OBBCollider.Create(-1)
level02.props.BlockerClosedIceID.collider:SetOffset(0,0,0)
level02.props.BlockerClosedIceID.collider:SetAxes(0.956996, 0, -0.290102, 0, -1, 0, 0.290102, 0, 0.956996)
level02.props.BlockerClosedIceID.collider:SetHalfLengths(0.5,9,10.5)
level02.props.BlockerClosedIceID.collider:SetPos(194.402,44.1694,196.375)
CollisionHandler.AddOBB(level02.props.BlockerClosedIceID.collider, 3)
level02.props.BlockerOpenIceID = {}
level02.props.BlockerOpenIceID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerOpenIceID.transformID = Gear.BindStaticInstance(level02.props.BlockerOpenIceID.model)
Transform.SetPosition(level02.props.BlockerOpenIceID.transformID, {x=186.533, y=37.1862, z=198.722})
Transform.SetScaleNonUniform(level02.props.BlockerOpenIceID.transformID, 1, 1, 1.5)
Transform.SetRotation(level02.props.BlockerOpenIceID.transformID, {x=-0, y=0.308219, z=-0})
level02.props.BlockerClosedNature1ID = {}
level02.props.BlockerClosedNature1ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerClosedNature1ID.transformID = Gear.BindStaticInstance(level02.props.BlockerClosedNature1ID.model)
Transform.SetPosition(level02.props.BlockerClosedNature1ID.transformID, {x=304.997, y=44.7525, z=98.0171})
Transform.SetScaleNonUniform(level02.props.BlockerClosedNature1ID.transformID, 1, 1, 2)
Transform.SetRotation(level02.props.BlockerClosedNature1ID.transformID, {x=0.134885, y=-0.957065, z=-0})
level02.props.BlockerClosedNature1ID.collider = OBBCollider.Create(-1)
level02.props.BlockerClosedNature1ID.collider:SetOffset(0,0,0)
level02.props.BlockerClosedNature1ID.collider:SetAxes(0.57069, 0.0774476, 0.817505, 0.134476, -0.990917, 0, -0.810079, -0.109935, 0.575922)
level02.props.BlockerClosedNature1ID.collider:SetHalfLengths(0.5,9,14)
level02.props.BlockerClosedNature1ID.collider:SetPos(304.997,44.7525,98.0171)
CollisionHandler.AddOBB(level02.props.BlockerClosedNature1ID.collider, 3)
level02.props.BlockerOpenNature1ID = {}
level02.props.BlockerOpenNature1ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerOpenNature1ID.transformID = Gear.BindStaticInstance(level02.props.BlockerOpenNature1ID.model)
Transform.SetPosition(level02.props.BlockerOpenNature1ID.transformID, {x=296.617, y=36.4825, z=89.3938})
Transform.SetScaleNonUniform(level02.props.BlockerOpenNature1ID.transformID, 1, 1, 2)
Transform.SetRotation(level02.props.BlockerOpenNature1ID.transformID, {x=0.147718, y=-0.919598, z=-0})
level02.props.BlockerClosedIce1ID = {}
level02.props.BlockerClosedIce1ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerClosedIce1ID.transformID = Gear.BindStaticInstance(level02.props.BlockerClosedIce1ID.model)
Transform.SetPosition(level02.props.BlockerClosedIce1ID.transformID, {x=292.5, y=39.1392, z=117.586})
Transform.SetScaleNonUniform(level02.props.BlockerClosedIce1ID.transformID, 1, 1, 2)
Transform.SetRotation(level02.props.BlockerClosedIce1ID.transformID, {x=-0, y=0, z=-0})
level02.props.BlockerClosedIce1ID.collider = OBBCollider.Create(-1)
level02.props.BlockerClosedIce1ID.collider:SetOffset(0,0,0)
level02.props.BlockerClosedIce1ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.props.BlockerClosedIce1ID.collider:SetHalfLengths(0.5,9,14)
level02.props.BlockerClosedIce1ID.collider:SetPos(292.5,39.1392,117.586)
CollisionHandler.AddOBB(level02.props.BlockerClosedIce1ID.collider, 3)
level02.props.BlockerOpenIce1ID = {}
level02.props.BlockerOpenIce1ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerOpenIce1ID.transformID = Gear.BindStaticInstance(level02.props.BlockerOpenIce1ID.model)
Transform.SetPosition(level02.props.BlockerOpenIce1ID.transformID, {x=283.761, y=32.0386, z=118.563})
Transform.SetScaleNonUniform(level02.props.BlockerOpenIce1ID.transformID, 1, 1, 2)
Transform.SetRotation(level02.props.BlockerOpenIce1ID.transformID, {x=-0, y=0, z=-0})
level02.enemies.GoblinIceID = CreateEnemy(ENEMY_MELEE, {x=247.25, y=36.5, z=135.625}, 2)
level02.enemies.GoblinIceID:SetStats(9, 50, 30)

level02.enemies.GoblinIce1ID = CreateEnemy(ENEMY_MELEE, {x=244.875, y=35.7813, z=145.5}, 2)
level02.enemies.GoblinIce1ID:SetStats(9, 50, 30)

level02.enemies.GoblinIce2ID = CreateEnemy(ENEMY_MELEE, {x=242.375, y=36.75, z=139.125}, 2)
level02.enemies.GoblinIce2ID:SetStats(9, 50, 30)

level02.enemies.GoblinIce3ID = CreateEnemy(ENEMY_MELEE, {x=224, y=36.125, z=164.625}, 2)
level02.enemies.GoblinIce3ID:SetStats(9, 50, 30)

level02.enemies.GoblinIce4ID = CreateEnemy(ENEMY_MELEE, {x=223.75, y=35.8125, z=158.125}, 2)
level02.enemies.GoblinIce4ID:SetStats(9, 50, 30)

level02.enemies.GoblinIce5ID = CreateEnemy(ENEMY_MELEE, {x=232.375, y=36.0625, z=159.25}, 2)
level02.enemies.GoblinIce5ID:SetStats(9, 50, 30)

level02.enemies.GoblinNatureID = CreateEnemy(ENEMY_MELEE, {x=182.25, y=55.9688, z=99.5625}, 1)
level02.enemies.GoblinNatureID:SetStats(9, 50, 30)

level02.enemies.GoblinNature1ID = CreateEnemy(ENEMY_MELEE, {x=185.5, y=55.4375, z=105.125}, 1)
level02.enemies.GoblinNature1ID:SetStats(9, 50, 30)

level02.enemies.GoblinNature2ID = CreateEnemy(ENEMY_MELEE, {x=192.625, y=55.4063, z=106.563}, 1)
level02.enemies.GoblinNature2ID:SetStats(9, 50, 30)

level02.enemies.GoblinNature3ID = CreateEnemy(ENEMY_MELEE, {x=188.125, y=55.9063, z=98.6875}, 1)
level02.enemies.GoblinNature3ID:SetStats(9, 50, 30)

level02.enemies.GoblinNature4ID = CreateEnemy(ENEMY_MELEE, {x=259, y=40.5, z=49.7813}, 1)
level02.enemies.GoblinNature4ID:SetStats(9, 50, 30)

level02.enemies.GoblinNature5ID = CreateEnemy(ENEMY_MELEE, {x=246.75, y=42.75, z=49.5625}, 1)
level02.enemies.GoblinNature5ID:SetStats(9, 50, 30)

level02.enemies.GoblinNature6ID = CreateEnemy(ENEMY_MELEE, {x=247.25, y=43.125, z=43.4375}, 1)
level02.enemies.GoblinNature6ID:SetStats(9, 50, 30)

level02.enemies.GoblinNature7ID = CreateEnemy(ENEMY_MELEE, {x=240.875, y=44.125, z=43.7813}, 1)
level02.enemies.GoblinNature7ID:SetStats(9, 50, 30)

level02.enemies.GoblinFireID = CreateEnemy(ENEMY_MELEE, {x=247.5, y=59.375, z=241.75}, 0)
level02.enemies.GoblinFireID:SetStats(9, 50, 30)

level02.enemies.GoblinFire1ID = CreateEnemy(ENEMY_MELEE, {x=255.375, y=59.3438, z=242}, 0)
level02.enemies.GoblinFire1ID:SetStats(9, 50, 30)

level02.enemies.GoblinFire2ID = CreateEnemy(ENEMY_MELEE, {x=256.5, y=59.625, z=238}, 0)
level02.enemies.GoblinFire2ID:SetStats(9, 50, 30)

level02.enemies.GoblinFire3ID = CreateEnemy(ENEMY_MELEE, {x=257.75, y=58.875, z=244.25}, 0)
level02.enemies.GoblinFire3ID:SetStats(9, 50, 30)

level02.enemies.GoblinFire4ID = CreateEnemy(ENEMY_MELEE, {x=251.375, y=59.1875, z=244.75}, 0)
level02.enemies.GoblinFire4ID:SetStats(9, 50, 30)

level02.props.Tile2_fenceID = {}
level02.props.Tile2_fenceID.model = Assets.LoadModel('Models/tile2_fence.model')
level02.props.Tile2_fenceID.transformID = Gear.BindStaticInstance(level02.props.Tile2_fenceID.model)
Transform.SetPosition(level02.props.Tile2_fenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Tile2_fenceID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Tile2_fenceID.transformID, {x=-0, y=0, z=-0})
level02.colliders.Tile2_wallNr66ID = {}
level02.colliders.Tile2_wallNr66ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr66ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr66ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.Tile2_wallNr66ID.collider:SetHalfLengths(0.3,6.89388,5.09902)
level02.colliders.Tile2_wallNr66ID.collider:SetPos(213,50.6796,224)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr66ID.collider, 3)
level02.colliders.Tile2_wallNr67ID = {}
level02.colliders.Tile2_wallNr67ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr67ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr67ID.collider:SetAxes(-0.737154, 0, 0.675725, 0, -1, 0, 0.675725, 0, 0.737154)
level02.colliders.Tile2_wallNr67ID.collider:SetHalfLengths(0.3,10.236,8.13941)
level02.colliders.Tile2_wallNr67ID.collider:SetPos(223.5,52.5735,229)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr67ID.collider, 3)
level02.colliders.Tile2_wallNr87ID = {}
level02.colliders.Tile2_wallNr87ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr87ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr87ID.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level02.colliders.Tile2_wallNr87ID.collider:SetHalfLengths(0.3,5.55703,3.80789)
level02.colliders.Tile2_wallNr87ID.collider:SetPos(232.5,57.8095,236.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr87ID.collider, 3)
level02.colliders.Tile2_wallNr88ID = {}
level02.colliders.Tile2_wallNr88ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr88ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr88ID.collider:SetAxes(0.393919, -0, 0.919145, 0, -1, -0, 0.919145, 0, -0.393919)
level02.colliders.Tile2_wallNr88ID.collider:SetHalfLengths(0.3,5.55702,3.80789)
level02.colliders.Tile2_wallNr88ID.collider:SetPos(239.5,58.3665,236.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr88ID.collider, 3)
level02.colliders.Tile2_wallNr89ID = {}
level02.colliders.Tile2_wallNr89ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr89ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr89ID.collider:SetAxes(0.141421, -0, 0.98995, 0, -1, -0, 0.98995, 0, -0.141421)
level02.colliders.Tile2_wallNr89ID.collider:SetHalfLengths(0.3,5.44562,3.53553)
level02.colliders.Tile2_wallNr89ID.collider:SetPos(246.5,58.9235,234.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr89ID.collider, 3)
level02.colliders.Tile2_wallNr90ID = {}
level02.colliders.Tile2_wallNr90ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr90ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr90ID.collider:SetAxes(-0.0948091, 0, 0.995496, 0, -1, 0, 0.995496, 0, 0.0948091)
level02.colliders.Tile2_wallNr90ID.collider:SetHalfLengths(0.3,6.33686,10.5475)
level02.colliders.Tile2_wallNr90ID.collider:SetPos(260.5,59.3692,235)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr90ID.collider, 3)
level02.colliders.Tile2_wallNr91ID = {}
level02.colliders.Tile2_wallNr91ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr91ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr91ID.collider:SetAxes(-0.0475652, 0, 0.998868, 0, -1, 0, 0.998868, 0, 0.0475652)
level02.colliders.Tile2_wallNr91ID.collider:SetHalfLengths(0.3,6.55966,10.5119)
level02.colliders.Tile2_wallNr91ID.collider:SetPos(281.5,58.0323,236.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr91ID.collider, 3)
level02.colliders.Tile2_wallNr92ID = {}
level02.colliders.Tile2_wallNr92ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr92ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr92ID.collider:SetAxes(0.21693, -0, 0.976187, 0, -1, -0, 0.976187, 0, -0.21693)
level02.colliders.Tile2_wallNr92ID.collider:SetHalfLengths(0.3,9.12196,4.60977)
level02.colliders.Tile2_wallNr92ID.collider:SetPos(296.5,56.4726,236)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr92ID.collider, 3)
level02.colliders.Tile2_wallNr164ID = {}
level02.colliders.Tile2_wallNr164ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr164ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr164ID.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.Tile2_wallNr164ID.collider:SetHalfLengths(0.3,6.11404,3.53553)
level02.colliders.Tile2_wallNr164ID.collider:SetPos(304.5,52.3507,235.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr164ID.collider, 3)
level02.colliders.Tile2_wallNr64ID = {}
level02.colliders.Tile2_wallNr64ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr64ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr64ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.Tile2_wallNr64ID.collider:SetHalfLengths(0.3,6.33685,4.5)
level02.colliders.Tile2_wallNr64ID.collider:SetPos(312,53.0191,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr64ID.collider, 3)
level02.colliders.Tile2_wallNr65ID = {}
level02.colliders.Tile2_wallNr65ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr65ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr65ID.collider:SetAxes(-0.786318, 0, 0.617822, 0, -1, 0, 0.617822, 0, 0.786318)
level02.colliders.Tile2_wallNr65ID.collider:SetHalfLengths(0.3,10.5702,8.90225)
level02.colliders.Tile2_wallNr65ID.collider:SetPos(340.5,50.791,245)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr65ID.collider, 3)
level02.colliders.Tile2_wallNr94ID = {}
level02.colliders.Tile2_wallNr94ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr94ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr94ID.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level02.colliders.Tile2_wallNr94ID.collider:SetHalfLengths(0.3,6.67107,3.60555)
level02.colliders.Tile2_wallNr94ID.collider:SetPos(334,48.7857,225)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr94ID.collider, 3)
level02.colliders.Tile2_wallNr110ID = {}
level02.colliders.Tile2_wallNr110ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr110ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr110ID.collider:SetAxes(0.813733, -0, 0.581238, 0, -1, -0, 0.581238, 0, -0.813733)
level02.colliders.Tile2_wallNr110ID.collider:SetHalfLengths(0.3,11.0158,8.60233)
level02.colliders.Tile2_wallNr110ID.collider:SetPos(341,47.1147,215)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr110ID.collider, 3)
level02.colliders.Tile2_wallNr113ID = {}
level02.colliders.Tile2_wallNr113ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr113ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr113ID.collider:SetAxes(0.980581, -0, 0.196116, 0, -1, -0, 0.196116, 0, -0.980581)
level02.colliders.Tile2_wallNr113ID.collider:SetHalfLengths(0.3,6.33685,5.09902)
level02.colliders.Tile2_wallNr113ID.collider:SetPos(351,38.3137,184)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr113ID.collider, 3)
level02.colliders.Tile2_wallNr114ID = {}
level02.colliders.Tile2_wallNr114ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr114ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr114ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.Tile2_wallNr114ID.collider:SetHalfLengths(0.3,5.22281,3.5)
level02.colliders.Tile2_wallNr114ID.collider:SetPos(352,36.9769,175.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr114ID.collider, 3)
level02.colliders.Tile2_wallNr115ID = {}
level02.colliders.Tile2_wallNr115ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr115ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr115ID.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level02.colliders.Tile2_wallNr115ID.collider:SetHalfLengths(0.3,5.22281,3.64005)
level02.colliders.Tile2_wallNr115ID.collider:SetPos(351,36.754,168.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr115ID.collider, 3)
level02.colliders.Tile2_wallNr162ID = {}
level02.colliders.Tile2_wallNr162ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr162ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr162ID.collider:SetAxes(0.536875, 0, -0.843661, 0, -1, -0, -0.843661, 0, -0.536875)
level02.colliders.Tile2_wallNr162ID.collider:SetHalfLengths(0.3,5.22281,6.5192)
level02.colliders.Tile2_wallNr162ID.collider:SetPos(344.5,36.5312,161.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr162ID.collider, 3)
level02.colliders.Tile2_wallNr165ID = {}
level02.colliders.Tile2_wallNr165ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr165ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr165ID.collider:SetAxes(0.755689, 0, -0.654931, 0, -1, -0, -0.654931, 0, -0.755689)
level02.colliders.Tile2_wallNr165ID.collider:SetHalfLengths(0.3,6.55967,9.92472)
level02.colliders.Tile2_wallNr165ID.collider:SetPos(332.5,36.3084,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr165ID.collider, 3)
level02.colliders.Tile2_wallNr116ID = {}
level02.colliders.Tile2_wallNr116ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr116ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr116ID.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level02.colliders.Tile2_wallNr116ID.collider:SetHalfLengths(0.3,5.77983,6.7082)
level02.colliders.Tile2_wallNr116ID.collider:SetPos(292,38.2023,103)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr116ID.collider, 3)
level02.colliders.Tile2_wallNr118ID = {}
level02.colliders.Tile2_wallNr118ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr118ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr118ID.collider:SetAxes(0.786318, 0, -0.617822, 0, -1, -0, -0.617822, 0, -0.786318)
level02.colliders.Tile2_wallNr118ID.collider:SetHalfLengths(0.3,5.55702,8.90225)
level02.colliders.Tile2_wallNr118ID.collider:SetPos(280.5,37.4225,93)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr118ID.collider, 3)
level02.colliders.Tile2_wallNr119ID = {}
level02.colliders.Tile2_wallNr119ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr119ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr119ID.collider:SetAxes(0.808736, 0, -0.588172, 0, -1, -0, -0.588172, 0, -0.808736)
level02.colliders.Tile2_wallNr119ID.collider:SetHalfLengths(0.3,5.44562,6.80074)
level02.colliders.Tile2_wallNr119ID.collider:SetPos(271,37.9795,80.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr119ID.collider, 3)
level02.colliders.Tile2_wallNr120ID = {}
level02.colliders.Tile2_wallNr120ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr120ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr120ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr120ID.collider:SetHalfLengths(0.3,5.33421,3.53553)
level02.colliders.Tile2_wallNr120ID.collider:SetPos(264.5,38.4251,72.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr120ID.collider, 3)
level02.colliders.Tile2_wallNr121ID = {}
level02.colliders.Tile2_wallNr121ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr121ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr121ID.collider:SetAxes(0.503871, 0, -0.863779, 0, -1, -0, -0.863779, 0, -0.503871)
level02.colliders.Tile2_wallNr121ID.collider:SetHalfLengths(0.3,8.23073,6.94622)
level02.colliders.Tile2_wallNr121ID.collider:SetPos(256,38.7593,66.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr121ID.collider, 3)
level02.colliders.Tile2_wallNr122ID = {}
level02.colliders.Tile2_wallNr122ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr122ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr122ID.collider:SetAxes(0.33441, 0, -0.942428, 0, -1, -0, -0.942428, 0, -0.33441)
level02.colliders.Tile2_wallNr122ID.collider:SetHalfLengths(0.3,13.5781,16.4469)
level02.colliders.Tile2_wallNr122ID.collider:SetPos(234.5,41.9901,57.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr122ID.collider, 3)
level02.colliders.Tile2_wallNr123ID = {}
level02.colliders.Tile2_wallNr123ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr123ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr123ID.collider:SetAxes(-0.0905358, 0, -0.995893, -0, -1, 0, -0.995893, 0, 0.0905358)
level02.colliders.Tile2_wallNr123ID.collider:SetHalfLengths(0.3,7.22809,5.52268)
level02.colliders.Tile2_wallNr123ID.collider:SetPos(213.5,50.5682,52.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr123ID.collider, 3)
level02.colliders.Tile2_wallNr124ID = {}
level02.colliders.Tile2_wallNr124ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr124ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr124ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level02.colliders.Tile2_wallNr124ID.collider:SetHalfLengths(0.3,7.11668,7.07107)
level02.colliders.Tile2_wallNr124ID.collider:SetPos(203,52.7963,58)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr124ID.collider, 3)
level02.colliders.Tile2_wallNr125ID = {}
level02.colliders.Tile2_wallNr125ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr125ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr125ID.collider:SetAxes(-0.997785, 0, -0.066519, -0, -1, 0, -0.066519, 0, 0.997785)
level02.colliders.Tile2_wallNr125ID.collider:SetHalfLengths(0.3,6.11404,7.51665)
level02.colliders.Tile2_wallNr125ID.collider:SetPos(197.5,54.913,70.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr125ID.collider, 3)
level02.colliders.Tile2_wallNr126ID = {}
level02.colliders.Tile2_wallNr126ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr126ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr126ID.collider:SetAxes(-0.984784, 0, 0.173785, 0, -1, 0, 0.173785, 0, 0.984784)
level02.colliders.Tile2_wallNr126ID.collider:SetHalfLengths(0.3,5.33421,8.63134)
level02.colliders.Tile2_wallNr126ID.collider:SetPos(198.5,56.027,86.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr126ID.collider, 3)
level02.colliders.Tile2_wallNr127ID = {}
level02.colliders.Tile2_wallNr127ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr127ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr127ID.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level02.colliders.Tile2_wallNr127ID.collider:SetHalfLengths(0.3,6.22545,14.1421)
level02.colliders.Tile2_wallNr127ID.collider:SetPos(202,56.3612,109)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr127ID.collider, 3)
level02.colliders.Tile2_wallNr129ID = {}
level02.colliders.Tile2_wallNr129ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr129ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr129ID.collider:SetAxes(0.0830455, 0, -0.996546, 0, -1, -0, -0.996546, 0, -0.0830455)
level02.colliders.Tile2_wallNr129ID.collider:SetHalfLengths(0.3,6.89388,6.0208)
level02.colliders.Tile2_wallNr129ID.collider:SetPos(185,42.6585,189.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr129ID.collider, 3)
level02.colliders.Tile2_wallNr130ID = {}
level02.colliders.Tile2_wallNr130ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr130ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr130ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr130ID.collider:SetHalfLengths(0.3,7.4509,4.94975)
level02.colliders.Tile2_wallNr130ID.collider:SetPos(175.5,44.5524,185.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr130ID.collider, 3)
level02.colliders.Tile2_wallNr131ID = {}
level02.colliders.Tile2_wallNr131ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr131ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr131ID.collider:SetAxes(0.83205, 0, -0.5547, 0, -1, -0, -0.5547, 0, -0.83205)
level02.colliders.Tile2_wallNr131ID.collider:SetHalfLengths(0.3,9.79039,5.40833)
level02.colliders.Tile2_wallNr131ID.collider:SetPos(169,47.0033,177.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr131ID.collider, 3)
level02.colliders.Tile2_wallNr132ID = {}
level02.colliders.Tile2_wallNr132ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr132ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr132ID.collider:SetAxes(0.529999, -0, 0.847998, 0, -1, -0, 0.847998, 0, -0.529999)
level02.colliders.Tile2_wallNr132ID.collider:SetHalfLengths(0.3,8.78775,4.71699)
level02.colliders.Tile2_wallNr132ID.collider:SetPos(170,51.7936,170.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr132ID.collider, 3)
level02.colliders.Tile2_wallNr133ID = {}
level02.colliders.Tile2_wallNr133ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr133ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr133ID.collider:SetAxes(0.110432, 0, -0.993884, 0, -1, -0, -0.993884, 0, -0.110432)
level02.colliders.Tile2_wallNr133ID.collider:SetHalfLengths(0.3,8.23073,4.52769)
level02.colliders.Tile2_wallNr133ID.collider:SetPos(163.5,49.3428,176.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr133ID.collider, 3)
level02.colliders.Tile2_wallNr134ID = {}
level02.colliders.Tile2_wallNr134ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr134ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr134ID.collider:SetAxes(0.933346, 0, -0.358979, 0, -1, -0, -0.358979, 0, -0.933346)
level02.colliders.Tile2_wallNr134ID.collider:SetHalfLengths(0.3,9.34478,6.96419)
level02.colliders.Tile2_wallNr134ID.collider:SetPos(156.5,46.112,169.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr134ID.collider, 3)
level02.colliders.Tile2_wallNr135ID = {}
level02.colliders.Tile2_wallNr135ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr135ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr135ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.Tile2_wallNr135ID.collider:SetHalfLengths(0.3,8.11932,4.5)
level02.colliders.Tile2_wallNr135ID.collider:SetPos(158.5,50.4568,163)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr135ID.collider, 3)
level02.colliders.Tile2_wallNr136ID = {}
level02.colliders.Tile2_wallNr136ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr136ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr136ID.collider:SetAxes(-0.413803, 0, 0.910366, 0, -1, 0, 0.910366, 0, 0.413803)
level02.colliders.Tile2_wallNr136ID.collider:SetHalfLengths(0.3,7.00528,6.04152)
level02.colliders.Tile2_wallNr136ID.collider:SetPos(168.5,53.5761,165.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr136ID.collider, 3)
level02.props.PineTree_NoCollider110ID = {}
level02.props.PineTree_NoCollider110ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider110ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider110ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider110ID.transformID, {x=165.056, y=49.1246, z=175.049})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider110ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider110ID.transformID, {x=-0, y=-0.989494, z=-0})
level02.props.PineTree_NoCollider111ID = {}
level02.props.PineTree_NoCollider111ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider111ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider111ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider111ID.transformID, {x=157.5, y=51.195, z=164.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider111ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider111ID.transformID, {x=0.186493, y=-0.461614, z=-0})
level02.props.PineTree_NoCollider112ID = {}
level02.props.PineTree_NoCollider112ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider112ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider112ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider112ID.transformID, {x=164.625, y=53.7259, z=166.125})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider112ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider112ID.transformID, {x=-0, y=-0.107851, z=-0.117836})
level02.props.PineTree_NoCollider113ID = {}
level02.props.PineTree_NoCollider113ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider113ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider113ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider113ID.transformID, {x=170.125, y=54.6509, z=168.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider113ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider113ID.transformID, {x=-0, y=0, z=-0})
level02.props.PineTree_NoCollider114ID = {}
level02.props.PineTree_NoCollider114ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider114ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider114ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider114ID.transformID, {x=164.75, y=53.5, z=169.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider114ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider114ID.transformID, {x=-0, y=0, z=-0})
level02.colliders.Tile2_wallNr137ID = {}
level02.colliders.Tile2_wallNr137ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr137ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr137ID.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.Tile2_wallNr137ID.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.Tile2_wallNr137ID.collider:SetPos(177.5,55.5814,168.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr137ID.collider, 3)
level02.colliders.Tile2_wallNr138ID = {}
level02.colliders.Tile2_wallNr138ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr138ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr138ID.collider:SetAxes(0.22486, -0, 0.974391, 0, -1, -0, 0.974391, 0, -0.22486)
level02.colliders.Tile2_wallNr138ID.collider:SetHalfLengths(0.3,5.44562,6.67083)
level02.colliders.Tile2_wallNr138ID.collider:SetPos(187.5,55.8042,167.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr138ID.collider, 3)
level02.colliders.Tile2_wallNr139ID = {}
level02.colliders.Tile2_wallNr139ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr139ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr139ID.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level02.colliders.Tile2_wallNr139ID.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.Tile2_wallNr139ID.collider:SetPos(197,55.3586,163.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr139ID.collider, 3)
level02.colliders.Tile2_wallNr140ID = {}
level02.colliders.Tile2_wallNr140ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr140ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr140ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.Tile2_wallNr140ID.collider:SetHalfLengths(0.3,5.89124,3.53553)
level02.colliders.Tile2_wallNr140ID.collider:SetPos(202.5,55.47,158.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr140ID.collider, 3)
level02.colliders.Tile2_wallNr141ID = {}
level02.colliders.Tile2_wallNr141ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr141ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr141ID.collider:SetAxes(0.988372, -0, 0.152057, 0, -1, -0, 0.152057, 0, -0.988372)
level02.colliders.Tile2_wallNr141ID.collider:SetHalfLengths(0.3,5.66843,6.57647)
level02.colliders.Tile2_wallNr141ID.collider:SetPos(206,54.5788,149.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr141ID.collider, 3)
level02.colliders.Tile2_wallNr142ID = {}
level02.colliders.Tile2_wallNr142ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr142ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr142ID.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level02.colliders.Tile2_wallNr142ID.collider:SetHalfLengths(0.3,5.22281,3.64005)
level02.colliders.Tile2_wallNr142ID.collider:SetPos(206,55.2472,139.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr142ID.collider, 3)
level02.colliders.Tile2_wallNr143ID = {}
level02.colliders.Tile2_wallNr143ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr143ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr143ID.collider:SetAxes(0.997055, 0, -0.0766965, 0, -1, -0, -0.0766965, 0, -0.997055)
level02.colliders.Tile2_wallNr143ID.collider:SetHalfLengths(0.3,5.33421,6.5192)
level02.colliders.Tile2_wallNr143ID.collider:SetPos(204.5,55.47,129.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr143ID.collider, 3)
level02.colliders.Tile2_wallNr128ID = {}
level02.colliders.Tile2_wallNr128ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr128ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr128ID.collider:SetAxes(-0.274721, 0, 0.961524, 0, -1, 0, 0.961524, 0, 0.274721)
level02.colliders.Tile2_wallNr128ID.collider:SetHalfLengths(0.3,5.44562,3.64005)
level02.colliders.Tile2_wallNr128ID.collider:SetPos(152.5,36.754,231)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr128ID.collider, 3)
level02.colliders.Tile2_wallNr144ID = {}
level02.colliders.Tile2_wallNr144ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr144ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr144ID.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level02.colliders.Tile2_wallNr144ID.collider:SetHalfLengths(0.3,7.11668,3.60555)
level02.colliders.Tile2_wallNr144ID.collider:SetPos(158,37.1997,235)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr144ID.collider, 3)
level02.colliders.Tile2_wallNr166ID = {}
level02.colliders.Tile2_wallNr166ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr166ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr166ID.collider:SetAxes(-0.624695, 0, 0.780869, 0, -1, 0, 0.780869, 0, 0.624695)
level02.colliders.Tile2_wallNr166ID.collider:SetHalfLengths(0.3,7.22809,3.20156)
level02.colliders.Tile2_wallNr166ID.collider:SetPos(162.5,39.3163,240)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr166ID.collider, 3)
level02.colliders.Tile2_wallNr167ID = {}
level02.colliders.Tile2_wallNr167ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr167ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr167ID.collider:SetAxes(-0.388057, 0, 0.921635, 0, -1, 0, 0.921635, 0, 0.388057)
level02.colliders.Tile2_wallNr167ID.collider:SetHalfLengths(0.3,13.801,10.3078)
level02.colliders.Tile2_wallNr167ID.collider:SetPos(174.5,41.5444,246)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr167ID.collider, 3)
level02.props.NewID = {}
level02.props.Asset_Torch2ID = {}
level02.props.Asset_Torch2ID.model = Assets.LoadModel('Models/Torch.model')
level02.props.Asset_Torch2ID.transformID = Gear.BindStaticInstance(level02.props.Asset_Torch2ID.model)
Transform.SetPosition(level02.props.Asset_Torch2ID.transformID, {x=348.75, y=36.5, z=166.375})
Transform.SetScaleNonUniform(level02.props.Asset_Torch2ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level02.props.Asset_Torch2ID.transformID, {x=-0, y=0, z=-0})
level02.props.Asset_Torch2ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level02.props.Asset_Torch2ID.particle, 348.75, 39.5, 166.375)
Particle.SetAlive(level02.props.Asset_Torch2ID.particle)
level02.props.Asset_Torch2ID.lightIndex = Light.addLight(348.75, 39.5, 166.375, 1, 0.576471, 0.160784, 6,2.5)
level02.triggers.BlockerTriggerID = {}
level02.triggers.BlockerTriggerID.collider = OBBCollider.Create(-1)
level02.triggers.BlockerTriggerID.collider:SetOffset(0,0,0)
level02.triggers.BlockerTriggerID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.triggers.BlockerTriggerID.collider:SetHalfLengths(3.36774,3,10.7256)
level02.triggers.BlockerTriggerID.collider:SetPos(197.852,50.6875,235.275)
sluice2 = CreateSluice(level02.triggers.BlockerTriggerID.collider, level02.props.BlockerClosedFireID.transformID, level02.props.BlockerClosedFireID, level02.props.BlockerOpenFireID.transformID)
level02.triggers.BlockerTriggerID.collider.OnEnter = function(self) SluiceEnter(sluice2) end
level02.triggers.BlockerTriggerID.collider.OnExit = function(self) SluiceExit(sluice2) end
level02.triggers.BlockerTriggerID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice2) end
level02.triggers.BlockerTriggerID.collider.triggered = false
CollisionHandler.AddOBB(level02.triggers.BlockerTriggerID.collider, 4)
level02.triggers.BlockerTrigger1ID = {}
level02.triggers.BlockerTrigger1ID.collider = OBBCollider.Create(-1)
level02.triggers.BlockerTrigger1ID.collider:SetOffset(0,0,0)
level02.triggers.BlockerTrigger1ID.collider:SetAxes(0.999536, 0, 0.0304648, 0, -1, 0, -0.0304648, 0, 0.999536)
level02.triggers.BlockerTrigger1ID.collider:SetHalfLengths(14.2635,3,4)
level02.triggers.BlockerTrigger1ID.collider:SetPos(359.742,39.9207,187.091)
sluice3 = CreateSluice(level02.triggers.BlockerTrigger1ID.collider, level02.props.BlockerClosedFire1ID.transformID, level02.props.BlockerClosedFire1ID, level02.props.BlockerOpenFire1ID.transformID)
level02.triggers.BlockerTrigger1ID.collider.OnEnter = function(self) SluiceEnter(sluice3) end
level02.triggers.BlockerTrigger1ID.collider.OnExit = function(self) SluiceExit(sluice3) end
level02.triggers.BlockerTrigger1ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice3) end
level02.triggers.BlockerTrigger1ID.collider.triggered = false
CollisionHandler.AddOBB(level02.triggers.BlockerTrigger1ID.collider, 4)
level02.triggers.BlockerTrigger2ID = {}
level02.triggers.BlockerTrigger2ID.collider = OBBCollider.Create(-1)
level02.triggers.BlockerTrigger2ID.collider:SetOffset(0,0,0)
level02.triggers.BlockerTrigger2ID.collider:SetAxes(0.132199, 0, 0.991223, -0.0740368, -0.997207, 0.00987426, -0.988454, 0.0746923, 0.13183)
level02.triggers.BlockerTrigger2ID.collider:SetHalfLengths(1.95633,8.86251,17.1309)
level02.triggers.BlockerTrigger2ID.collider:SetPos(147,50.5426,167.417)
sluice4 = CreateSluice(level02.triggers.BlockerTrigger2ID.collider, level02.props.BlockerClosedNatureID.transformID, level02.props.BlockerClosedNatureID, level02.props.BlockerOpenNatureID.transformID)
level02.triggers.BlockerTrigger2ID.collider.OnEnter = function(self) SluiceEnter(sluice4) end
level02.triggers.BlockerTrigger2ID.collider.OnExit = function(self) SluiceExit(sluice4) end
level02.triggers.BlockerTrigger2ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice4) end
level02.triggers.BlockerTrigger2ID.collider.triggered = false
CollisionHandler.AddOBB(level02.triggers.BlockerTrigger2ID.collider, 4)
level02.triggers.BlockerTrigger3ID = {}
level02.triggers.BlockerTrigger3ID.collider = OBBCollider.Create(-1)
level02.triggers.BlockerTrigger3ID.collider:SetOffset(0,0,0)
level02.triggers.BlockerTrigger3ID.collider:SetAxes(0.957147, 0, -0.289602, 0, -1, 0, 0.289602, 0, 0.957147)
level02.triggers.BlockerTrigger3ID.collider:SetHalfLengths(2,3,12.4405)
level02.triggers.BlockerTrigger3ID.collider:SetPos(191.87,41.5,196.572)
sluice5 = CreateSluice(level02.triggers.BlockerTrigger3ID.collider, level02.props.BlockerClosedIceID.transformID, level02.props.BlockerClosedIceID, level02.props.BlockerOpenIceID.transformID)
level02.triggers.BlockerTrigger3ID.collider.OnEnter = function(self) SluiceEnter(sluice5) end
level02.triggers.BlockerTrigger3ID.collider.OnExit = function(self) SluiceExit(sluice5) end
level02.triggers.BlockerTrigger3ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice5) end
level02.triggers.BlockerTrigger3ID.collider.triggered = false
CollisionHandler.AddOBB(level02.triggers.BlockerTrigger3ID.collider, 4)
level02.triggers.BlockerTrigger4ID = {}
level02.triggers.BlockerTrigger4ID.collider = OBBCollider.Create(-1)
level02.triggers.BlockerTrigger4ID.collider:SetOffset(0,0,0)
level02.triggers.BlockerTrigger4ID.collider:SetAxes(0.573016, 0, 0.819544, 0, -1, 0, -0.819544, 0, 0.573016)
level02.triggers.BlockerTrigger4ID.collider:SetHalfLengths(2.70544,3,10.4709)
level02.triggers.BlockerTrigger4ID.collider:SetPos(301.862,41.5,96.5146)
sluice6 = CreateSluice(level02.triggers.BlockerTrigger4ID.collider, level02.props.BlockerClosedNature1ID.transformID, level02.props.BlockerClosedNature1ID, level02.props.BlockerOpenNature1ID.transformID)
level02.triggers.BlockerTrigger4ID.collider.OnEnter = function(self) SluiceEnter(sluice6) end
level02.triggers.BlockerTrigger4ID.collider.OnExit = function(self) SluiceExit(sluice6) end
level02.triggers.BlockerTrigger4ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice6) end
level02.triggers.BlockerTrigger4ID.collider.triggered = false
CollisionHandler.AddOBB(level02.triggers.BlockerTrigger4ID.collider, 4)
level02.triggers.BlockerTrigger5ID = {}
level02.triggers.BlockerTrigger5ID.collider = OBBCollider.Create(-1)
level02.triggers.BlockerTrigger5ID.collider:SetOffset(0,0,0)
level02.triggers.BlockerTrigger5ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.triggers.BlockerTrigger5ID.collider:SetHalfLengths(2,3,14.5821)
level02.triggers.BlockerTrigger5ID.collider:SetPos(290.143,35.875,118.938)
sluice8 = CreateSluice(level02.triggers.BlockerTrigger5ID.collider, level02.props.BlockerClosedIce1ID.transformID, level02.props.BlockerClosedIce1ID, level02.props.BlockerOpenIce1ID.transformID)
level02.triggers.BlockerTrigger5ID.collider.OnEnter = function(self) SluiceEnter(sluice8) end
level02.triggers.BlockerTrigger5ID.collider.OnExit = function(self) SluiceExit(sluice8) end
level02.triggers.BlockerTrigger5ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice8) end
level02.triggers.BlockerTrigger5ID.collider.triggered = false
CollisionHandler.AddOBB(level02.triggers.BlockerTrigger5ID.collider, 4)
end
level02.unload = function()
level02.props.tile2ID = nil
Gear.UnbindInstance(level02.props.t2s1ID.transformID)
Assets.UnloadModel('Models/tile2_s1.model')
level02.props.t2s1ID = nil
Gear.UnbindInstance(level02.props.t2s2ID.transformID)
Assets.UnloadModel('Models/tile2_s2.model')
level02.props.t2s2ID = nil
Gear.UnbindInstance(level02.props.t2s3ID.transformID)
Assets.UnloadModel('Models/tile2_s3.model')
level02.props.t2s3ID = nil
Gear.UnbindInstance(level02.props.t2s4ID.transformID)
Assets.UnloadModel('Models/tile2_s4.model')
level02.props.t2s4ID = nil
Gear.UnbindInstance(level02.props.t2s5ID.transformID)
Assets.UnloadModel('Models/tile2_s5.model')
level02.props.t2s5ID = nil
Gear.UnbindInstance(level02.props.t2s6ID.transformID)
Assets.UnloadModel('Models/tile2_s6.model')
level02.props.t2s6ID = nil
Gear.UnbindInstance(level02.props.t2s7ID.transformID)
Assets.UnloadModel('Models/tile2_s7.model')
level02.props.t2s7ID = nil
Gear.UnbindInstance(level02.props.t2s8ID.transformID)
Assets.UnloadModel('Models/tile2_s8.model')
level02.props.t2s8ID = nil
Gear.UnbindInstance(level02.props.t2s9ID.transformID)
Assets.UnloadModel('Models/tile2_s9.model')
level02.props.t2s9ID = nil
Gear.UnbindInstance(level02.props.t2s12ID.transformID)
Assets.UnloadModel('Models/tile2_s12.model')
level02.props.t2s12ID = nil
Gear.UnbindInstance(level02.props.t2s13ID.transformID)
Assets.UnloadModel('Models/tile2_s13.model')
level02.props.t2s13ID = nil
Gear.UnbindInstance(level02.props.t2s14ID.transformID)
Assets.UnloadModel('Models/tile2_s14.model')
level02.props.t2s14ID = nil
level02.colliders.Tile2_wallNrID = nil
level02.colliders.Tile2_wallNr1ID = nil
level02.colliders.Tile2_wallNr2ID = nil
level02.colliders.Tile2_wallNr3ID = nil
level02.colliders.Tile2_wallNr4ID = nil
level02.colliders.Tile2_wallNr5ID = nil
level02.colliders.Tile2_wallNr6ID = nil
level02.colliders.Tile2_wallNr7ID = nil
level02.colliders.Tile2_wallNr8ID = nil
level02.colliders.Tile2_wallNr9ID = nil
level02.colliders.Tile2_wallNr10ID = nil
level02.colliders.Tile2_wallNr11ID = nil
level02.colliders.Tile2_wallNr12ID = nil
level02.colliders.Tile2_wallNr13ID = nil
level02.colliders.Tile2_wallNr14ID = nil
level02.colliders.Tile2_wallNr15ID = nil
level02.colliders.Tile2_wallNr16ID = nil
level02.colliders.Tile2_wallNr17ID = nil
level02.colliders.Tile2_wallNr18ID = nil
level02.colliders.Tile2_wallNr19ID = nil
level02.colliders.Tile2_wallNr20ID = nil
level02.colliders.Tile2_wallNr21ID = nil
level02.colliders.Tile2_wallNr22ID = nil
level02.colliders.Tile2_wallNr23ID = nil
level02.colliders.Tile2_wallNr24ID = nil
level02.colliders.Tile2_wallNr25ID = nil
level02.colliders.Tile2_wallNr26ID = nil
level02.colliders.Tile2_wallNr27ID = nil
level02.colliders.Tile2_wallNr28ID = nil
level02.colliders.Tile2_wallNr29ID = nil
level02.colliders.Tile2_wallNr30ID = nil
level02.colliders.Tile2_wallNr31ID = nil
level02.colliders.Tile2_wallNr32ID = nil
level02.colliders.Tile2_wallNr33ID = nil
level02.colliders.Tile2_wallNr34ID = nil
level02.colliders.Tile2_wallNr35ID = nil
level02.colliders.Tile2_wallNr36ID = nil
level02.colliders.Tile2_wallNr37ID = nil
level02.colliders.Tile2_wallNr38ID = nil
level02.colliders.Tile2_wallNr39ID = nil
level02.colliders.Tile2_wallNr40ID = nil
level02.colliders.Tile2_wallNr41ID = nil
level02.colliders.Tile2_wallNr42ID = nil
level02.colliders.Tile2_wallNr47ID = nil
level02.colliders.Tile2_wallNr48ID = nil
level02.colliders.Tile2_wallNr49ID = nil
level02.colliders.Tile2_wallNr50ID = nil
level02.colliders.Tile2_wallNr51ID = nil
level02.colliders.Tile2_wallNr52ID = nil
level02.colliders.Tile2_wallNr53ID = nil
level02.colliders.Tile2_wallNr54ID = nil
level02.colliders.Tile2_wallNr55ID = nil
level02.colliders.Tile2_wallNr56ID = nil
level02.colliders.Tile2_wallNr57ID = nil
level02.colliders.Tile2_wallNr58ID = nil
level02.colliders.Tile2_wallNr59ID = nil
level02.colliders.Tile2_wallNr60ID = nil
level02.colliders.Tile2_wallNr61ID = nil
level02.colliders.Tile2_wallNr62ID = nil
level02.colliders.Tile2_wallNr63ID = nil
level02.colliders.Tile2_wallNr95ID = nil
level02.colliders.Tile2_wallNr96ID = nil
level02.colliders.Tile2_wallNr97ID = nil
level02.colliders.Tile2_wallNr98ID = nil
level02.colliders.Tile2_wallNr99ID = nil
level02.colliders.Tile2_wallNr100ID = nil
level02.colliders.Tile2_wallNr101ID = nil
level02.colliders.Tile2_wallNr102ID = nil
level02.colliders.Tile2_wallNr68ID = nil
level02.colliders.Tile2_wallNr69ID = nil
level02.colliders.Tile2_wallNr70ID = nil
level02.colliders.Tile2_wallNr71ID = nil
level02.colliders.Tile2_wallNr72ID = nil
level02.colliders.Tile2_wallNr73ID = nil
level02.colliders.Tile2_wallNr74ID = nil
level02.colliders.Tile2_wallNr75ID = nil
level02.colliders.Tile2_wallNr76ID = nil
level02.colliders.Tile2_wallNr77ID = nil
level02.colliders.Tile2_wallNr78ID = nil
level02.colliders.Tile2_wallNr79ID = nil
level02.colliders.Tile2_wallNr80ID = nil
level02.colliders.Tile2_wallNr81ID = nil
level02.colliders.Tile2_wallNr82ID = nil
level02.colliders.Tile2_wallNr83ID = nil
level02.colliders.Tile2_wallNr84ID = nil
level02.colliders.Tile2_wallNr85ID = nil
level02.colliders.Tile2_wallNr86ID = nil
level02.colliders.Tile2_wallNr103ID = nil
level02.colliders.Tile2_wallNr104ID = nil
level02.colliders.Tile2_wallNr105ID = nil
level02.colliders.Tile2_wallNr106ID = nil
level02.colliders.Tile2_wallNr107ID = nil
level02.colliders.Tile2_wallNr108ID = nil
level02.colliders.Tile2_wallNr109ID = nil
level02.colliders.Tile2_wallNr111ID = nil
level02.colliders.Tile2_wallNr112ID = nil
level02.colliders.Tile2_wallNr117ID = nil
level02.colliders.Tile2_wallNr145ID = nil
level02.colliders.Tile2_wallNr146ID = nil
level02.colliders.Tile2_wallNr147ID = nil
level02.colliders.Tile2_wallNr148ID = nil
level02.colliders.Tile2_wallNr149ID = nil
level02.colliders.Tile2_wallNr150ID = nil
level02.colliders.Tile2_wallNr151ID = nil
level02.colliders.Tile2_wallNr152ID = nil
level02.colliders.Tile2_wallNr153ID = nil
level02.colliders.Tile2_wallNr154ID = nil
level02.colliders.Tile2_wallNr155ID = nil
level02.colliders.Tile2_wallNr156ID = nil
level02.colliders.Tile2_wallNr157ID = nil
level02.colliders.Tile2_wallNr158ID = nil
level02.colliders.Tile2_wallNr159ID = nil
level02.colliders.Tile2_wallNr160ID = nil
level02.colliders.Tile2_wallNr161ID = nil
Gear.UnbindInstance(level02.props.PineTree_ColliderID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_ColliderID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider2ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider1ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider11ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider12ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider13ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider14ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider15ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider16ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider17ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider18ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider19ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider4ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider41ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider42ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider43ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider44ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider45ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider46ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider1ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider15ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider111ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider112ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider113ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider114ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider115ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider116ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider117ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider118ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider119ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider120ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider121ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider122ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider123ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider124ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider125ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider126ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider127ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider128ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider129ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider130ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider131ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider132ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider133ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider134ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider135ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135ID = nil
Gear.UnbindInstance(level02.props.Bridge1ID.transformID)
Assets.UnloadModel('Models/Bridge1.model')
level02.props.Bridge1ID = nil
level02.colliders.Tile2_wallNr163ID = nil
level02.colliders.Tile2_wallNr93ID = nil
Gear.UnbindInstance(level02.props.WaterID.transformID)
Assets.UnloadModel('Models/lake.model')
level02.props.WaterID = nil
Gear.UnbindInstance(level02.props.House1ID.transformID)
Assets.UnloadModel('Models/House1.model')
level02.props.House1ID = nil
Light.removeLight(level02.props.Lantern4ID.lightIndex)
Gear.UnbindInstance(level02.props.Lantern4ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern4ID = nil
Light.removeLight(level02.props.Lantern7ID.lightIndex)
Gear.UnbindInstance(level02.props.Lantern7ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern7ID = nil
Light.removeLight(level02.props.Lantern8ID.lightIndex)
Gear.UnbindInstance(level02.props.Lantern8ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern8ID = nil
Light.removeLight(level02.props.Lantern9ID.lightIndex)
Gear.UnbindInstance(level02.props.Lantern9ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern9ID = nil
Light.removeLight(level02.props.Lantern10ID.lightIndex)
Gear.UnbindInstance(level02.props.Lantern10ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern10ID = nil
Light.removeLight(level02.props.Lantern11ID.lightIndex)
Gear.UnbindInstance(level02.props.Lantern11ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern11ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider3ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider47ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47ID = nil
Gear.UnbindInstance(level02.props.BlockerClosedFireID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerClosedFireID = nil
Gear.UnbindInstance(level02.props.BlockerOpenFireID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerOpenFireID = nil
level02.triggers.BlockerTriggerID = nil
Gear.UnbindInstance(level02.props.BlockerClosedFire1ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerClosedFire1ID = nil
level02.triggers.BlockerTrigger1ID = nil
Gear.UnbindInstance(level02.props.BlockerOpenFire1ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level02.props.BlockerOpenFire1ID = nil
Gear.UnbindInstance(level02.props.BlockerClosedNatureID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerClosedNatureID = nil
Gear.UnbindInstance(level02.props.BlockerOpenNatureID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerOpenNatureID = nil
level02.triggers.BlockerTrigger2ID = nil
Gear.UnbindInstance(level02.props.BlockerClosedIceID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerClosedIceID = nil
level02.triggers.BlockerTrigger3ID = nil
Gear.UnbindInstance(level02.props.BlockerOpenIceID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerOpenIceID = nil
Gear.UnbindInstance(level02.props.BlockerClosedNature1ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerClosedNature1ID = nil
level02.triggers.BlockerTrigger4ID = nil
Gear.UnbindInstance(level02.props.BlockerOpenNature1ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level02.props.BlockerOpenNature1ID = nil
Gear.UnbindInstance(level02.props.BlockerClosedIce1ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerClosedIce1ID = nil
level02.triggers.BlockerTrigger5ID = nil
Gear.UnbindInstance(level02.props.BlockerOpenIce1ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level02.props.BlockerOpenIce1ID = nil
DestroyEnemy(level02.enemies.GoblinIceID)
DestroyEnemy(level02.enemies.GoblinIce1ID)
DestroyEnemy(level02.enemies.GoblinIce2ID)
DestroyEnemy(level02.enemies.GoblinIce3ID)
DestroyEnemy(level02.enemies.GoblinIce4ID)
DestroyEnemy(level02.enemies.GoblinIce5ID)
DestroyEnemy(level02.enemies.GoblinNatureID)
DestroyEnemy(level02.enemies.GoblinNature1ID)
DestroyEnemy(level02.enemies.GoblinNature2ID)
DestroyEnemy(level02.enemies.GoblinNature3ID)
DestroyEnemy(level02.enemies.GoblinNature4ID)
DestroyEnemy(level02.enemies.GoblinNature5ID)
DestroyEnemy(level02.enemies.GoblinNature6ID)
DestroyEnemy(level02.enemies.GoblinNature7ID)
DestroyEnemy(level02.enemies.GoblinFireID)
DestroyEnemy(level02.enemies.GoblinFire1ID)
DestroyEnemy(level02.enemies.GoblinFire2ID)
DestroyEnemy(level02.enemies.GoblinFire3ID)
DestroyEnemy(level02.enemies.GoblinFire4ID)
Gear.UnbindInstance(level02.props.Tile2_fenceID.transformID)
Assets.UnloadModel('Models/tile2_fence.model')
level02.props.Tile2_fenceID = nil
level02.colliders.Tile2_wallNr66ID = nil
level02.colliders.Tile2_wallNr67ID = nil
level02.colliders.Tile2_wallNr87ID = nil
level02.colliders.Tile2_wallNr88ID = nil
level02.colliders.Tile2_wallNr89ID = nil
level02.colliders.Tile2_wallNr90ID = nil
level02.colliders.Tile2_wallNr91ID = nil
level02.colliders.Tile2_wallNr92ID = nil
level02.colliders.Tile2_wallNr164ID = nil
level02.colliders.Tile2_wallNr64ID = nil
level02.colliders.Tile2_wallNr65ID = nil
level02.colliders.Tile2_wallNr94ID = nil
level02.colliders.Tile2_wallNr110ID = nil
level02.colliders.Tile2_wallNr113ID = nil
level02.colliders.Tile2_wallNr114ID = nil
level02.colliders.Tile2_wallNr115ID = nil
level02.colliders.Tile2_wallNr162ID = nil
level02.colliders.Tile2_wallNr165ID = nil
level02.colliders.Tile2_wallNr116ID = nil
level02.colliders.Tile2_wallNr118ID = nil
level02.colliders.Tile2_wallNr119ID = nil
level02.colliders.Tile2_wallNr120ID = nil
level02.colliders.Tile2_wallNr121ID = nil
level02.colliders.Tile2_wallNr122ID = nil
level02.colliders.Tile2_wallNr123ID = nil
level02.colliders.Tile2_wallNr124ID = nil
level02.colliders.Tile2_wallNr125ID = nil
level02.colliders.Tile2_wallNr126ID = nil
level02.colliders.Tile2_wallNr127ID = nil
level02.colliders.Tile2_wallNr129ID = nil
level02.colliders.Tile2_wallNr130ID = nil
level02.colliders.Tile2_wallNr131ID = nil
level02.colliders.Tile2_wallNr132ID = nil
level02.colliders.Tile2_wallNr133ID = nil
level02.colliders.Tile2_wallNr134ID = nil
level02.colliders.Tile2_wallNr135ID = nil
level02.colliders.Tile2_wallNr136ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider110ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider110ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider111ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider111ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider112ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider112ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider113ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider113ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider114ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider114ID = nil
level02.colliders.Tile2_wallNr137ID = nil
level02.colliders.Tile2_wallNr138ID = nil
level02.colliders.Tile2_wallNr139ID = nil
level02.colliders.Tile2_wallNr140ID = nil
level02.colliders.Tile2_wallNr141ID = nil
level02.colliders.Tile2_wallNr142ID = nil
level02.colliders.Tile2_wallNr143ID = nil
level02.colliders.Tile2_wallNr128ID = nil
level02.colliders.Tile2_wallNr144ID = nil
level02.colliders.Tile2_wallNr166ID = nil
level02.colliders.Tile2_wallNr167ID = nil
level02.props.NewID = nil
Light.removeLight(level02.props.Asset_Torch2ID.lightIndex)
Gear.UnbindInstance(level02.props.Asset_Torch2ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level02.props.Asset_Torch2ID = nil
level02.props = nil
level02.colliders = nil
level02.triggers = nil
level02.enemies = nil
end
levels[2] = level02
-------------------------------------level02-----------------------------------------------


-------------------------------------level03-----------------------------------------------

level03 = {}
level03.surrounding = { 2, 4, 5 }
level03.load = function()
level03.props = {}
level03.colliders = {}
level03.triggers = {}
level03.enemies = {}
level03.props.t2s10ID = {}
level03.props.t2s10ID.model = Assets.LoadModel('Models/tile2_s10.model')
level03.props.t2s10ID.transformID = Gear.BindStaticInstance(level03.props.t2s10ID.model)
Transform.SetPosition(level03.props.t2s10ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t2s10ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t2s10ID.transformID, {x=-0, y=0, z=-0})
level03.props.t2s11aID = {}
level03.props.t2s11aID.model = Assets.LoadModel('Models/tile2_s11a.model')
level03.props.t2s11aID.transformID = Gear.BindStaticInstance(level03.props.t2s11aID.model)
Transform.SetPosition(level03.props.t2s11aID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t2s11aID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t2s11aID.transformID, {x=-0, y=0, z=-0})
level03.props.t3s1ID = {}
level03.props.t3s1ID.model = Assets.LoadModel('Models/tile3_s1.model')
level03.props.t3s1ID.transformID = Gear.BindStaticInstance(level03.props.t3s1ID.model)
Transform.SetPosition(level03.props.t3s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s1ID.transformID, {x=-0, y=0, z=-0})
level03.props.tile3ID = {}
level03.props.t3s2ID = {}
level03.props.t3s2ID.model = Assets.LoadModel('Models/tile3_s2.model')
level03.props.t3s2ID.transformID = Gear.BindStaticInstance(level03.props.t3s2ID.model)
Transform.SetPosition(level03.props.t3s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s2ID.transformID, {x=-0, y=0, z=-0})
level03.props.t3s3ID = {}
level03.props.t3s3ID.model = Assets.LoadModel('Models/tile3_s3.model')
level03.props.t3s3ID.transformID = Gear.BindStaticInstance(level03.props.t3s3ID.model)
Transform.SetPosition(level03.props.t3s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s3ID.transformID, {x=-0, y=0, z=-0})
level03.props.t3s4ID = {}
level03.props.t3s4ID.model = Assets.LoadModel('Models/tile3_s4.model')
level03.props.t3s4ID.transformID = Gear.BindStaticInstance(level03.props.t3s4ID.model)
Transform.SetPosition(level03.props.t3s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s4ID.transformID, {x=-0, y=0, z=-0})
level03.colliders.Tile3_wallNrID = {}
level03.colliders.Tile3_wallNrID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNrID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNrID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level03.colliders.Tile3_wallNrID.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.Tile3_wallNrID.collider:SetPos(388.5,36.4629,157)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNrID.collider, 3)
level03.colliders.Tile3_wallNr1ID = {}
level03.colliders.Tile3_wallNr1ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr1ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr1ID.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level03.colliders.Tile3_wallNr1ID.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.Tile3_wallNr1ID.collider:SetPos(398,36.3044,158)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr1ID.collider, 3)
level03.colliders.Tile3_wallNr2ID = {}
level03.colliders.Tile3_wallNr2ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr2ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr2ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level03.colliders.Tile3_wallNr2ID.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.Tile3_wallNr2ID.collider:SetPos(404,36.146,160)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr2ID.collider, 3)
level03.colliders.Tile3_wallNr3ID = {}
level03.colliders.Tile3_wallNr3ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr3ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr3ID.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level03.colliders.Tile3_wallNr3ID.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.Tile3_wallNr3ID.collider:SetPos(406,36.3044,162.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr3ID.collider, 3)
level03.colliders.Tile3_wallNr4ID = {}
level03.colliders.Tile3_wallNr4ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr4ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr4ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level03.colliders.Tile3_wallNr4ID.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.Tile3_wallNr4ID.collider:SetPos(409,36.4629,168)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr4ID.collider, 3)
level03.colliders.Tile3_wallNr5ID = {}
level03.colliders.Tile3_wallNr5ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr5ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr5ID.collider:SetAxes(-0.936329, 0, 0.351123, 0, -1, 0, 0.351123, 0, 0.936329)
level03.colliders.Tile3_wallNr5ID.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.Tile3_wallNr5ID.collider:SetPos(412.5,36.7798,176)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr5ID.collider, 3)
level03.colliders.Tile3_wallNr6ID = {}
level03.colliders.Tile3_wallNr6ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr6ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr6ID.collider:SetAxes(-0.957826, 0, 0.287348, 0, -1, 0, 0.287348, 0, 0.957826)
level03.colliders.Tile3_wallNr6ID.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.Tile3_wallNr6ID.collider:SetPos(415.5,37.5722,185)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr6ID.collider, 3)
level03.colliders.Tile3_wallNr7ID = {}
level03.colliders.Tile3_wallNr7ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr7ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr7ID.collider:SetAxes(-0.98387, 0, 0.178885, 0, -1, 0, 0.178885, 0, 0.98387)
level03.colliders.Tile3_wallNr7ID.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.Tile3_wallNr7ID.collider:SetPos(418,38.2061,195.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr7ID.collider, 3)
level03.colliders.Tile3_wallNr8ID = {}
level03.colliders.Tile3_wallNr8ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr8ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr8ID.collider:SetAxes(-0.997785, 0, 0.066519, 0, -1, 0, 0.066519, 0, 0.997785)
level03.colliders.Tile3_wallNr8ID.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.Tile3_wallNr8ID.collider:SetPos(419.5,40.2662,208.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr8ID.collider, 3)
level03.colliders.Tile3_wallNr9ID = {}
level03.colliders.Tile3_wallNr9ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr9ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr9ID.collider:SetAxes(-0.980581, 0, -0.196116, -0, -1, 0, -0.196116, 0, 0.980581)
level03.colliders.Tile3_wallNr9ID.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.Tile3_wallNr9ID.collider:SetPos(418.5,44.5448,223.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr9ID.collider, 3)
level03.colliders.Tile3_wallNr10ID = {}
level03.colliders.Tile3_wallNr10ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr10ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr10ID.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level03.colliders.Tile3_wallNr10ID.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.Tile3_wallNr10ID.collider:SetPos(416,48.3481,235)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr10ID.collider, 3)
level03.colliders.Tile3_wallNr11ID = {}
level03.colliders.Tile3_wallNr11ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr11ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr11ID.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level03.colliders.Tile3_wallNr11ID.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.Tile3_wallNr11ID.collider:SetPos(422,50.7251,242)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr11ID.collider, 3)
level03.colliders.Tile3_wallNr12ID = {}
level03.colliders.Tile3_wallNr12ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr12ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr12ID.collider:SetAxes(-0.819232, 0, 0.573462, 0, -1, 0, 0.573462, 0, 0.819232)
level03.colliders.Tile3_wallNr12ID.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.Tile3_wallNr12ID.collider:SetPos(432.5,51.5175,250)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr12ID.collider, 3)
level03.colliders.Tile3_wallNr14ID = {}
level03.colliders.Tile3_wallNr14ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr14ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr14ID.collider:SetAxes(0.999315, 0, -0.0370117, 0, -1, -0, -0.0370117, 0, -0.999315)
level03.colliders.Tile3_wallNr14ID.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.Tile3_wallNr14ID.collider:SetPos(511.5,41.5339,241.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr14ID.collider, 3)
level03.colliders.Tile3_wallNr15ID = {}
level03.colliders.Tile3_wallNr15ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr15ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr15ID.collider:SetAxes(0.98995, 0, -0.141421, 0, -1, -0, -0.141421, 0, -0.98995)
level03.colliders.Tile3_wallNr15ID.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.Tile3_wallNr15ID.collider:SetPos(510,41.8508,221)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr15ID.collider, 3)
level03.colliders.Tile3_wallNr16ID = {}
level03.colliders.Tile3_wallNr16ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr16ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr16ID.collider:SetAxes(0.948683, 0, -0.316228, 0, -1, -0, -0.316228, 0, -0.948683)
level03.colliders.Tile3_wallNr16ID.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.Tile3_wallNr16ID.collider:SetPos(506.5,42.1678,206.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr16ID.collider, 3)
level03.colliders.Tile3_wallNr17ID = {}
level03.colliders.Tile3_wallNr17ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr17ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr17ID.collider:SetAxes(0.932005, 0, -0.362446, 0, -1, -0, -0.362446, 0, -0.932005)
level03.colliders.Tile3_wallNr17ID.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.Tile3_wallNr17ID.collider:SetPos(500.5,41.8508,190)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr17ID.collider, 3)
level03.colliders.Tile3_wallNr18ID = {}
level03.colliders.Tile3_wallNr18ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr18ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr18ID.collider:SetAxes(0.874157, 0, -0.485643, 0, -1, -0, -0.485643, 0, -0.874157)
level03.colliders.Tile3_wallNr18ID.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.Tile3_wallNr18ID.collider:SetPos(492,41.217,172)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr18ID.collider, 3)
level03.colliders.Tile3_wallNr19ID = {}
level03.colliders.Tile3_wallNr19ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr19ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr19ID.collider:SetAxes(0.816968, 0, -0.576683, 0, -1, -0, -0.576683, 0, -0.816968)
level03.colliders.Tile3_wallNr19ID.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.Tile3_wallNr19ID.collider:SetPos(481,39.7907,154.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr19ID.collider, 3)
level03.colliders.Tile3_wallNr20ID = {}
level03.colliders.Tile3_wallNr20ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr20ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr20ID.collider:SetAxes(0.492057, 0, -0.870563, 0, -1, -0, -0.870563, 0, -0.492057)
level03.colliders.Tile3_wallNr20ID.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.Tile3_wallNr20ID.collider:SetPos(463.5,38.2061,139.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr20ID.collider, 3)
level03.colliders.Tile3_wallNr21ID = {}
level03.colliders.Tile3_wallNr21ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr21ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr21ID.collider:SetAxes(0.267644, 0, -0.963518, 0, -1, -0, -0.963518, 0, -0.267644)
level03.colliders.Tile3_wallNr21ID.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.Tile3_wallNr21ID.collider:SetPos(443,36.7798,130.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr21ID.collider, 3)
level03.colliders.Tile3_wallNr22ID = {}
level03.colliders.Tile3_wallNr22ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr22ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr22ID.collider:SetAxes(-0.503871, 0, -0.863779, -0, -1, 0, -0.863779, 0, 0.503871)
level03.colliders.Tile3_wallNr22ID.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.Tile3_wallNr22ID.collider:SetPos(428,35.829,131.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr22ID.collider, 3)
level03.colliders.Tile3_wallNr23ID = {}
level03.colliders.Tile3_wallNr23ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr23ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr23ID.collider:SetAxes(-0.428086, 0, -0.903738, -0, -1, 0, -0.903738, 0, 0.428086)
level03.colliders.Tile3_wallNr23ID.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.Tile3_wallNr23ID.collider:SetPos(412.5,35.5121,139.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr23ID.collider, 3)
level03.colliders.Tile3_wallNr24ID = {}
level03.colliders.Tile3_wallNr24ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr24ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr24ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level03.colliders.Tile3_wallNr24ID.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.Tile3_wallNr24ID.collider:SetPos(401.5,35.3536,144.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr24ID.collider, 3)
level03.colliders.Tile3_wallNr25ID = {}
level03.colliders.Tile3_wallNr25ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr25ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr25ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level03.colliders.Tile3_wallNr25ID.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.Tile3_wallNr25ID.collider:SetPos(392,35.3536,145)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr25ID.collider, 3)
level03.colliders.Tile3_wallNr26ID = {}
level03.colliders.Tile3_wallNr26ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr26ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr26ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level03.colliders.Tile3_wallNr26ID.collider:SetHalfLengths(0.3,5,1)
level03.colliders.Tile3_wallNr26ID.collider:SetPos(384,35.1951,146)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr26ID.collider, 3)
level03.enemies.GoblinFire5ID = CreateEnemy(ENEMY_MELEE, {x=341.5, y=50.0938, z=233.75}, 0)
level03.enemies.GoblinFire5ID:SetStats(9, 50, 30)

level03.enemies.GoblinFire6ID = CreateEnemy(ENEMY_MELEE, {x=349.75, y=46.7188, z=224.5}, 0)
level03.enemies.GoblinFire6ID:SetStats(9, 50, 30)

level03.enemies.GoblinFire7ID = CreateEnemy(ENEMY_MELEE, {x=342.75, y=47.3125, z=224.75}, 0)
level03.enemies.GoblinFire7ID:SetStats(9, 50, 30)

level03.props.Tile3_FenceID = {}
level03.props.Tile3_FenceID.model = Assets.LoadModel('Models/tile3_fence.model')
level03.props.Tile3_FenceID.transformID = Gear.BindStaticInstance(level03.props.Tile3_FenceID.model)
Transform.SetPosition(level03.props.Tile3_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.Tile3_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.Tile3_FenceID.transformID, {x=-0, y=0, z=-0})
level03.colliders.Tile3_wallNr13ID = {}
level03.colliders.Tile3_wallNr13ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr13ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr13ID.collider:SetAxes(-0.535052, 0, 0.844819, 0, -1, 0, 0.844819, 0, 0.535052)
level03.colliders.Tile3_wallNr13ID.collider:SetHalfLengths(0.3,6.55592,17.7553)
level03.colliders.Tile3_wallNr13ID.collider:SetPos(442,35.6561,141.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr13ID.collider, 3)
level03.colliders.Tile3_wallNr27ID = {}
level03.colliders.Tile3_wallNr27ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr27ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr27ID.collider:SetAxes(-0.724999, 0, 0.688749, 0, -1, 0, 0.688749, 0, 0.724999)
level03.colliders.Tile3_wallNr27ID.collider:SetHalfLengths(0.3,7.12171,13.7931)
level03.colliders.Tile3_wallNr27ID.collider:SetPos(466.5,37.2121,161)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr27ID.collider, 3)
level03.colliders.Tile3_wallNr28ID = {}
level03.colliders.Tile3_wallNr28ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr28ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr28ID.collider:SetAxes(-0.071247, 0, 0.997459, 0, -1, 0, 0.997459, 0, 0.071247)
level03.colliders.Tile3_wallNr28ID.collider:SetHalfLengths(0.3,6.06086,7.01783)
level03.colliders.Tile3_wallNr28ID.collider:SetPos(412,36.3634,161.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr28ID.collider, 3)
level03.colliders.Tile3_wallNr29ID = {}
level03.colliders.Tile3_wallNr29ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr29ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr29ID.collider:SetAxes(-0.33035, 0, 0.943858, 0, -1, 0, 0.943858, 0, 0.33035)
level03.colliders.Tile3_wallNr29ID.collider:SetHalfLengths(0.3,5.07072,10.5948)
level03.colliders.Tile3_wallNr29ID.collider:SetPos(429,35.3025,165.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr29ID.collider, 3)
level03.colliders.Tile3_wallNr30ID = {}
level03.colliders.Tile3_wallNr30ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr30ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr30ID.collider:SetAxes(-0.529999, 0, 0.847998, 0, -1, 0, 0.847998, 0, 0.529999)
level03.colliders.Tile3_wallNr30ID.collider:SetHalfLengths(0.3,5.84868,4.71699)
level03.colliders.Tile3_wallNr30ID.collider:SetPos(443,35.3732,171.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr30ID.collider, 3)
level03.colliders.Tile3_wallNr31ID = {}
level03.colliders.Tile3_wallNr31ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr31ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr31ID.collider:SetAxes(-0.752577, 0, 0.658505, 0, -1, 0, 0.658505, 0, 0.752577)
level03.colliders.Tile3_wallNr31ID.collider:SetHalfLengths(0.3,6.27303,5.31507)
level03.colliders.Tile3_wallNr31ID.collider:SetPos(450.5,36.2219,178)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr31ID.collider, 3)
level03.props.House2ID = {}
level03.props.House2ID.model = Assets.LoadModel('Models/House1.model')
level03.props.House2ID.transformID = Gear.BindStaticInstance(level03.props.House2ID.model)
Transform.SetPosition(level03.props.House2ID.transformID, {x=423.807, y=37.3065, z=174.638})
Transform.SetScaleNonUniform(level03.props.House2ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level03.props.House2ID.transformID, {x=-0, y=-3.19754, z=-0})
level03.props.House2ID.collider = OBBCollider.Create(-1)
level03.props.House2ID.collider:SetOffset(0,3,0)
level03.props.House2ID.collider:SetAxes(-0.998435, 0, -0.0559184, 0, -1, -0, 0.0559184, 0, -0.998435)
level03.props.House2ID.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level03.props.House2ID.collider:SetPos(423.807,40.3065,174.638)
CollisionHandler.AddOBB(level03.props.House2ID.collider, 3)
level03.props.House3ID = {}
level03.props.House3ID.model = Assets.LoadModel('Models/House1.model')
level03.props.House3ID.transformID = Gear.BindStaticInstance(level03.props.House3ID.model)
Transform.SetPosition(level03.props.House3ID.transformID, {x=494.563, y=42.3774, z=197.119})
Transform.SetScaleNonUniform(level03.props.House3ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level03.props.House3ID.transformID, {x=-0, y=-1.23294, z=-0})
level03.props.House3ID.collider = OBBCollider.Create(-1)
level03.props.House3ID.collider:SetOffset(0,3,0)
level03.props.House3ID.collider:SetAxes(0.331464, 0, 0.943468, 0, -1, 0, -0.943468, 0, 0.331464)
level03.props.House3ID.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level03.props.House3ID.collider:SetPos(494.563,45.3774,197.119)
CollisionHandler.AddOBB(level03.props.House3ID.collider, 3)
level03.props.Asset_TorchID = {}
level03.props.Asset_TorchID.model = Assets.LoadModel('Models/Torch.model')
level03.props.Asset_TorchID.transformID = Gear.BindStaticInstance(level03.props.Asset_TorchID.model)
Transform.SetPosition(level03.props.Asset_TorchID.transformID, {x=455, y=37.8438, z=183.375})
Transform.SetScaleNonUniform(level03.props.Asset_TorchID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level03.props.Asset_TorchID.transformID, {x=-0, y=0, z=-0})
level03.props.Asset_TorchID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level03.props.Asset_TorchID.particle, 455, 40.8438, 183.375)
Particle.SetAlive(level03.props.Asset_TorchID.particle)
level03.props.Asset_TorchID.lightIndex = Light.addLight(455, 40.8438, 183.375, 1, 0.576471, 0.160784, 6,2.5)
level03.props.Asset_Torch1ID = {}
level03.props.Asset_Torch1ID.model = Assets.LoadModel('Models/Torch.model')
level03.props.Asset_Torch1ID.transformID = Gear.BindStaticInstance(level03.props.Asset_Torch1ID.model)
Transform.SetPosition(level03.props.Asset_Torch1ID.transformID, {x=476.75, y=39.5, z=171.875})
Transform.SetScaleNonUniform(level03.props.Asset_Torch1ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level03.props.Asset_Torch1ID.transformID, {x=-0, y=0, z=-0})
level03.props.Asset_Torch1ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level03.props.Asset_Torch1ID.particle, 476.75, 42.5, 171.875)
Particle.SetAlive(level03.props.Asset_Torch1ID.particle)
level03.props.Asset_Torch1ID.lightIndex = Light.addLight(476.75, 42.5, 171.875, 1, 0.576471, 0.160784, 6,2.5)
level03.props.WoodenBarrelID = {}
level03.props.WoodenBarrelID.model = Assets.LoadModel('Models/WoodenBarrel.model')
level03.props.WoodenBarrelID.transformID = Gear.BindStaticInstance(level03.props.WoodenBarrelID.model)
Transform.SetPosition(level03.props.WoodenBarrelID.transformID, {x=437.75, y=36.7188, z=176.375})
Transform.SetScaleNonUniform(level03.props.WoodenBarrelID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.WoodenBarrelID.transformID, {x=-0, y=0, z=-0})
level03.props.WoodenBarrelID.collider = OBBCollider.Create(-1)
level03.props.WoodenBarrelID.collider:SetOffset(0,1,0)
level03.props.WoodenBarrelID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level03.props.WoodenBarrelID.collider:SetHalfLengths(0.8,1,0.8)
level03.props.WoodenBarrelID.collider:SetPos(437.75,37.7188,176.375)
CollisionHandler.AddOBB(level03.props.WoodenBarrelID.collider, 3)
level03.props.WoodenBarrel1ID = {}
level03.props.WoodenBarrel1ID.model = Assets.LoadModel('Models/WoodenBarrel.model')
level03.props.WoodenBarrel1ID.transformID = Gear.BindStaticInstance(level03.props.WoodenBarrel1ID.model)
Transform.SetPosition(level03.props.WoodenBarrel1ID.transformID, {x=444.5, y=38.25, z=184.875})
Transform.SetScaleNonUniform(level03.props.WoodenBarrel1ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.WoodenBarrel1ID.transformID, {x=-0, y=0, z=-0})
level03.props.WoodenBarrel1ID.collider = OBBCollider.Create(-1)
level03.props.WoodenBarrel1ID.collider:SetOffset(0,1,0)
level03.props.WoodenBarrel1ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level03.props.WoodenBarrel1ID.collider:SetHalfLengths(0.8,1,0.8)
level03.props.WoodenBarrel1ID.collider:SetPos(444.5,39.25,184.875)
CollisionHandler.AddOBB(level03.props.WoodenBarrel1ID.collider, 3)
end
level03.unload = function()
Gear.UnbindInstance(level03.props.t2s10ID.transformID)
Assets.UnloadModel('Models/tile2_s10.model')
level03.props.t2s10ID = nil
Gear.UnbindInstance(level03.props.t2s11aID.transformID)
Assets.UnloadModel('Models/tile2_s11a.model')
level03.props.t2s11aID = nil
Gear.UnbindInstance(level03.props.t3s1ID.transformID)
Assets.UnloadModel('Models/tile3_s1.model')
level03.props.t3s1ID = nil
level03.props.tile3ID = nil
Gear.UnbindInstance(level03.props.t3s2ID.transformID)
Assets.UnloadModel('Models/tile3_s2.model')
level03.props.t3s2ID = nil
Gear.UnbindInstance(level03.props.t3s3ID.transformID)
Assets.UnloadModel('Models/tile3_s3.model')
level03.props.t3s3ID = nil
Gear.UnbindInstance(level03.props.t3s4ID.transformID)
Assets.UnloadModel('Models/tile3_s4.model')
level03.props.t3s4ID = nil
level03.colliders.Tile3_wallNrID = nil
level03.colliders.Tile3_wallNr1ID = nil
level03.colliders.Tile3_wallNr2ID = nil
level03.colliders.Tile3_wallNr3ID = nil
level03.colliders.Tile3_wallNr4ID = nil
level03.colliders.Tile3_wallNr5ID = nil
level03.colliders.Tile3_wallNr6ID = nil
level03.colliders.Tile3_wallNr7ID = nil
level03.colliders.Tile3_wallNr8ID = nil
level03.colliders.Tile3_wallNr9ID = nil
level03.colliders.Tile3_wallNr10ID = nil
level03.colliders.Tile3_wallNr11ID = nil
level03.colliders.Tile3_wallNr12ID = nil
level03.colliders.Tile3_wallNr14ID = nil
level03.colliders.Tile3_wallNr15ID = nil
level03.colliders.Tile3_wallNr16ID = nil
level03.colliders.Tile3_wallNr17ID = nil
level03.colliders.Tile3_wallNr18ID = nil
level03.colliders.Tile3_wallNr19ID = nil
level03.colliders.Tile3_wallNr20ID = nil
level03.colliders.Tile3_wallNr21ID = nil
level03.colliders.Tile3_wallNr22ID = nil
level03.colliders.Tile3_wallNr23ID = nil
level03.colliders.Tile3_wallNr24ID = nil
level03.colliders.Tile3_wallNr25ID = nil
level03.colliders.Tile3_wallNr26ID = nil
DestroyEnemy(level03.enemies.GoblinFire5ID)
DestroyEnemy(level03.enemies.GoblinFire6ID)
DestroyEnemy(level03.enemies.GoblinFire7ID)
Gear.UnbindInstance(level03.props.Tile3_FenceID.transformID)
Assets.UnloadModel('Models/tile3_fence.model')
level03.props.Tile3_FenceID = nil
level03.colliders.Tile3_wallNr13ID = nil
level03.colliders.Tile3_wallNr27ID = nil
level03.colliders.Tile3_wallNr28ID = nil
level03.colliders.Tile3_wallNr29ID = nil
level03.colliders.Tile3_wallNr30ID = nil
level03.colliders.Tile3_wallNr31ID = nil
Gear.UnbindInstance(level03.props.House2ID.transformID)
Assets.UnloadModel('Models/House1.model')
level03.props.House2ID = nil
Gear.UnbindInstance(level03.props.House3ID.transformID)
Assets.UnloadModel('Models/House1.model')
level03.props.House3ID = nil
Light.removeLight(level03.props.Asset_TorchID.lightIndex)
Gear.UnbindInstance(level03.props.Asset_TorchID.transformID)
Assets.UnloadModel('Models/Torch.model')
level03.props.Asset_TorchID = nil
Light.removeLight(level03.props.Asset_Torch1ID.lightIndex)
Gear.UnbindInstance(level03.props.Asset_Torch1ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level03.props.Asset_Torch1ID = nil
Gear.UnbindInstance(level03.props.WoodenBarrelID.transformID)
Assets.UnloadModel('Models/WoodenBarrel.model')
level03.props.WoodenBarrelID = nil
Gear.UnbindInstance(level03.props.WoodenBarrel1ID.transformID)
Assets.UnloadModel('Models/WoodenBarrel.model')
level03.props.WoodenBarrel1ID = nil
level03.props = nil
level03.colliders = nil
level03.triggers = nil
level03.enemies = nil
end
levels[3] = level03
-------------------------------------level03-----------------------------------------------


-------------------------------------level04-----------------------------------------------

level04 = {}
level04.surrounding = { 3, 5 }
level04.load = function()
level04.props = {}
level04.colliders = {}
level04.triggers = {}
level04.enemies = {}
level04.props.tile4ID = {}
level04.props.t4s1ID = {}
level04.props.t4s1ID.model = Assets.LoadModel('Models/tile4_s1.model')
level04.props.t4s1ID.transformID = Gear.BindStaticInstance(level04.props.t4s1ID.model)
Transform.SetPosition(level04.props.t4s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s1ID.transformID, {x=-0, y=0, z=-0})
level04.props.t4s2ID = {}
level04.props.t4s2ID.model = Assets.LoadModel('Models/tile4_s2.model')
level04.props.t4s2ID.transformID = Gear.BindStaticInstance(level04.props.t4s2ID.model)
Transform.SetPosition(level04.props.t4s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s2ID.transformID, {x=-0, y=0, z=-0})
level04.props.t4s3ID = {}
level04.props.t4s3ID.model = Assets.LoadModel('Models/tile4_s3.model')
level04.props.t4s3ID.transformID = Gear.BindStaticInstance(level04.props.t4s3ID.model)
Transform.SetPosition(level04.props.t4s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s3ID.transformID, {x=-0, y=0, z=-0})
level04.props.t4s4ID = {}
level04.props.t4s4ID.model = Assets.LoadModel('Models/tile4_s4.model')
level04.props.t4s4ID.transformID = Gear.BindStaticInstance(level04.props.t4s4ID.model)
Transform.SetPosition(level04.props.t4s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s4ID.transformID, {x=-0, y=0, z=-0})
level04.colliders.Tile4_wallNrID = {}
level04.colliders.Tile4_wallNrID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNrID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNrID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level04.colliders.Tile4_wallNrID.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.Tile4_wallNrID.collider:SetPos(512,41.5953,300.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNrID.collider, 3)
level04.colliders.Tile4_wallNr1ID = {}
level04.colliders.Tile4_wallNr1ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr1ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr1ID.collider:SetAxes(-0.882353, 0, -0.470588, -0, -1, 0, -0.470588, 0, 0.882353)
level04.colliders.Tile4_wallNr1ID.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.Tile4_wallNr1ID.collider:SetPos(508,34.7835,352.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr1ID.collider, 3)
level04.colliders.Tile4_wallNr2ID = {}
level04.colliders.Tile4_wallNr2ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr2ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr2ID.collider:SetAxes(-0.948683, 0, -0.316228, -0, -1, 0, -0.316228, 0, 0.948683)
level04.colliders.Tile4_wallNr2ID.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.Tile4_wallNr2ID.collider:SetPos(502.5,35.8052,364.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr2ID.collider, 3)
level04.colliders.Tile4_wallNr3ID = {}
level04.colliders.Tile4_wallNr3ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr3ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr3ID.collider:SetAxes(-0.919145, 0, 0.393919, 0, -1, 0, 0.393919, 0, 0.919145)
level04.colliders.Tile4_wallNr3ID.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.Tile4_wallNr3ID.collider:SetPos(502.5,37.0541,372.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr3ID.collider, 3)
level04.colliders.Tile4_wallNr4ID = {}
level04.colliders.Tile4_wallNr4ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr4ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr4ID.collider:SetAxes(-0.868243, 0, 0.496139, 0, -1, 0, 0.496139, 0, 0.868243)
level04.colliders.Tile4_wallNr4ID.collider:SetHalfLengths(0.3,5.90825,4.03113)
level04.colliders.Tile4_wallNr4ID.collider:SetPos(506,37.7352,379.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr4ID.collider, 3)
level04.colliders.Tile4_wallNr5ID = {}
level04.colliders.Tile4_wallNr5ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr5ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr5ID.collider:SetAxes(-0.98387, 0, 0.178885, 0, -1, 0, 0.178885, 0, 0.98387)
level04.colliders.Tile4_wallNr5ID.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.Tile4_wallNr5ID.collider:SetPos(474,40.2329,303.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr5ID.collider, 3)
level04.colliders.Tile4_wallNr6ID = {}
level04.colliders.Tile4_wallNr6ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr6ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr6ID.collider:SetAxes(-0.994309, 0, -0.106533, -0, -1, 0, -0.106533, 0, 0.994309)
level04.colliders.Tile4_wallNr6ID.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.Tile4_wallNr6ID.collider:SetPos(475.5,42.39,334)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr6ID.collider, 3)
level04.colliders.Tile4_wallNr7ID = {}
level04.colliders.Tile4_wallNr7ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr7ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr7ID.collider:SetAxes(-0.996347, 0, 0.0854011, 0, -1, 0, 0.0854011, 0, 0.996347)
level04.colliders.Tile4_wallNr7ID.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.Tile4_wallNr7ID.collider:SetPos(475.5,43.9794,365.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr7ID.collider, 3)
level04.colliders.Tile4_wallNr8ID = {}
level04.colliders.Tile4_wallNr8ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr8ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr8ID.collider:SetAxes(-0.789352, 0, -0.613941, -0, -1, 0, -0.613941, 0, 0.789352)
level04.colliders.Tile4_wallNr8ID.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.Tile4_wallNr8ID.collider:SetPos(467.5,40.2329,291.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr8ID.collider, 3)
level04.colliders.Tile4_wallNr14ID = {}
level04.colliders.Tile4_wallNr14ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr14ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr14ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level04.colliders.Tile4_wallNr14ID.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.Tile4_wallNr14ID.collider:SetPos(435,52.8348,263)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr14ID.collider, 3)
level04.colliders.Tile4_wallNr15ID = {}
level04.colliders.Tile4_wallNr15ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr15ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr15ID.collider:SetAxes(-0.997268, 0, 0.0738717, 0, -1, 0, 0.0738717, 0, 0.997268)
level04.colliders.Tile4_wallNr15ID.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.Tile4_wallNr15ID.collider:SetPos(436,53.9701,283.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr15ID.collider, 3)
level04.colliders.Tile4_wallNr16ID = {}
level04.colliders.Tile4_wallNr16ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr16ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr16ID.collider:SetAxes(-0.987441, 0, 0.157991, 0, -1, 0, 0.157991, 0, 0.987441)
level04.colliders.Tile4_wallNr16ID.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.Tile4_wallNr16ID.collider:SetPos(439,55.7866,309.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr16ID.collider, 3)
level04.colliders.Tile4_wallNr17ID = {}
level04.colliders.Tile4_wallNr17ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr17ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr17ID.collider:SetAxes(-0.974391, 0, 0.22486, 0, -1, 0, 0.22486, 0, 0.974391)
level04.colliders.Tile4_wallNr17ID.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.Tile4_wallNr17ID.collider:SetPos(442.5,56.1272,328.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr17ID.collider, 3)
level04.colliders.Tile4_wallNr18ID = {}
level04.colliders.Tile4_wallNr18ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr18ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr18ID.collider:SetAxes(-0.928477, 0, 0.371391, 0, -1, 0, 0.371391, 0, 0.928477)
level04.colliders.Tile4_wallNr18ID.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.Tile4_wallNr18ID.collider:SetPos(447,57.2625,342.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr18ID.collider, 3)
level04.colliders.Tile4_wallNr19ID = {}
level04.colliders.Tile4_wallNr19ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr19ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr19ID.collider:SetAxes(-0.997055, 0, 0.0766965, 0, -1, 0, 0.0766965, 0, 0.997055)
level04.colliders.Tile4_wallNr19ID.collider:SetHalfLengths(0.3,5.90825,6.5192)
level04.colliders.Tile4_wallNr19ID.collider:SetPos(450.5,60.2143,356.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr19ID.collider, 3)
level04.colliders.Tile4_wallNr20ID = {}
level04.colliders.Tile4_wallNr20ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr20ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr20ID.collider:SetAxes(-0.995037, 0, 0.0995037, 0, -1, 0, 0.0995037, 0, 0.995037)
level04.colliders.Tile4_wallNr20ID.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.Tile4_wallNr20ID.collider:SetPos(452,61.1226,373)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr20ID.collider, 3)
level04.colliders.Tile4_wallNr21ID = {}
level04.colliders.Tile4_wallNr21ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr21ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr21ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level04.colliders.Tile4_wallNr21ID.collider:SetHalfLengths(0.3,19.5319,3.5)
level04.colliders.Tile4_wallNr21ID.collider:SetPos(473.5,58.852,383)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr21ID.collider, 3)
level04.props.New1ID = {}
level04.props.New1ID.lightIndex = Light.addLight(495.343, 43.5625, 415.697, 0, 1, 1, 100,3)
level04.props.Tile4_FenceID = {}
level04.props.Tile4_FenceID.model = Assets.LoadModel('Models/tile4_fence.model')
level04.props.Tile4_FenceID.transformID = Gear.BindStaticInstance(level04.props.Tile4_FenceID.model)
Transform.SetPosition(level04.props.Tile4_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.Tile4_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.Tile4_FenceID.transformID, {x=-0, y=0, z=-0})
level04.colliders.Tile4_wallNr9ID = {}
level04.colliders.Tile4_wallNr9ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr9ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr9ID.collider:SetAxes(-0.894427, 0, -0.447214, -0, -1, 0, -0.447214, 0, 0.894427)
level04.colliders.Tile4_wallNr9ID.collider:SetHalfLengths(0.3,7.27061,3.3541)
level04.colliders.Tile4_wallNr9ID.collider:SetPos(462.5,50.5642,299)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr9ID.collider, 3)
level04.colliders.Tile4_wallNr25ID = {}
level04.colliders.Tile4_wallNr25ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr25ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr25ID.collider:SetAxes(-0.998752, 0, 0.0499376, 0, -1, 0, 0.0499376, 0, 0.998752)
level04.colliders.Tile4_wallNr25ID.collider:SetHalfLengths(0.3,6.93002,10.0125)
level04.colliders.Tile4_wallNr25ID.collider:SetPos(466.5,58.5114,373)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr25ID.collider, 3)
level04.colliders.Tile4_wallNr10ID = {}
level04.colliders.Tile4_wallNr10ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr10ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr10ID.collider:SetAxes(-0.996546, 0, 0.0830455, 0, -1, 0, 0.0830455, 0, 0.996546)
level04.colliders.Tile4_wallNr10ID.collider:SetHalfLengths(0.3,9.99535,24.0832)
level04.colliders.Tile4_wallNr10ID.collider:SetPos(463,52.8348,326)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr10ID.collider, 3)
level04.colliders.Tile4_wallNr11ID = {}
level04.colliders.Tile4_wallNr11ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr11ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr11ID.collider:SetAxes(-0.997055, 0, 0.0766965, 0, -1, 0, 0.0766965, 0, 0.997055)
level04.colliders.Tile4_wallNr11ID.collider:SetHalfLengths(0.3,5.68118,6.5192)
level04.colliders.Tile4_wallNr11ID.collider:SetPos(465.5,57.8302,356.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr11ID.collider, 3)
end
level04.unload = function()
level04.props.tile4ID = nil
Gear.UnbindInstance(level04.props.t4s1ID.transformID)
Assets.UnloadModel('Models/tile4_s1.model')
level04.props.t4s1ID = nil
Gear.UnbindInstance(level04.props.t4s2ID.transformID)
Assets.UnloadModel('Models/tile4_s2.model')
level04.props.t4s2ID = nil
Gear.UnbindInstance(level04.props.t4s3ID.transformID)
Assets.UnloadModel('Models/tile4_s3.model')
level04.props.t4s3ID = nil
Gear.UnbindInstance(level04.props.t4s4ID.transformID)
Assets.UnloadModel('Models/tile4_s4.model')
level04.props.t4s4ID = nil
level04.colliders.Tile4_wallNrID = nil
level04.colliders.Tile4_wallNr1ID = nil
level04.colliders.Tile4_wallNr2ID = nil
level04.colliders.Tile4_wallNr3ID = nil
level04.colliders.Tile4_wallNr4ID = nil
level04.colliders.Tile4_wallNr5ID = nil
level04.colliders.Tile4_wallNr6ID = nil
level04.colliders.Tile4_wallNr7ID = nil
level04.colliders.Tile4_wallNr8ID = nil
level04.colliders.Tile4_wallNr14ID = nil
level04.colliders.Tile4_wallNr15ID = nil
level04.colliders.Tile4_wallNr16ID = nil
level04.colliders.Tile4_wallNr17ID = nil
level04.colliders.Tile4_wallNr18ID = nil
level04.colliders.Tile4_wallNr19ID = nil
level04.colliders.Tile4_wallNr20ID = nil
level04.colliders.Tile4_wallNr21ID = nil
Light.removeLight(level04.props.New1ID.lightIndex)
level04.props.New1ID = nil
Gear.UnbindInstance(level04.props.Tile4_FenceID.transformID)
Assets.UnloadModel('Models/tile4_fence.model')
level04.props.Tile4_FenceID = nil
level04.colliders.Tile4_wallNr9ID = nil
level04.colliders.Tile4_wallNr25ID = nil
level04.colliders.Tile4_wallNr10ID = nil
level04.colliders.Tile4_wallNr11ID = nil
level04.props = nil
level04.colliders = nil
level04.triggers = nil
level04.enemies = nil
end
levels[4] = level04
-------------------------------------level04-----------------------------------------------


-------------------------------------level05-----------------------------------------------

level05 = {}
level05.surrounding = { 4, 6, 3 }
level05.load = function()
level05.props = {}
level05.colliders = {}
level05.triggers = {}
level05.enemies = {}
level05.props.tile5ID = {}
level05.props.t5s1ID = {}
level05.props.t5s1ID.model = Assets.LoadModel('Models/tile5_s1.model')
level05.props.t5s1ID.transformID = Gear.BindStaticInstance(level05.props.t5s1ID.model)
Transform.SetPosition(level05.props.t5s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s1ID.transformID, {x=-0, y=0, z=-0})
level05.props.t5s2ID = {}
level05.props.t5s2ID.model = Assets.LoadModel('Models/tile5_s2.model')
level05.props.t5s2ID.transformID = Gear.BindStaticInstance(level05.props.t5s2ID.model)
Transform.SetPosition(level05.props.t5s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s2ID.transformID, {x=-0, y=0, z=-0})
level05.props.t5s3ID = {}
level05.props.t5s3ID.model = Assets.LoadModel('Models/tile5_s3.model')
level05.props.t5s3ID.transformID = Gear.BindStaticInstance(level05.props.t5s3ID.model)
Transform.SetPosition(level05.props.t5s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s3ID.transformID, {x=-0, y=0, z=-0})
level05.props.t5s4ID = {}
level05.props.t5s4ID.model = Assets.LoadModel('Models/tile5_s4.model')
level05.props.t5s4ID.transformID = Gear.BindStaticInstance(level05.props.t5s4ID.model)
Transform.SetPosition(level05.props.t5s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s4ID.transformID, {x=-0, y=0, z=-0})
level05.props.t5s5ID = {}
level05.props.t5s5ID.model = Assets.LoadModel('Models/tile5_s5.model')
level05.props.t5s5ID.transformID = Gear.BindStaticInstance(level05.props.t5s5ID.model)
Transform.SetPosition(level05.props.t5s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s5ID.transformID, {x=-0, y=0, z=-0})
level05.props.t5s6ID = {}
level05.props.t5s6ID.model = Assets.LoadModel('Models/tile5_s6.model')
level05.props.t5s6ID.transformID = Gear.BindStaticInstance(level05.props.t5s6ID.model)
Transform.SetPosition(level05.props.t5s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s6ID.transformID, {x=-0, y=0, z=-0})
level05.colliders.Tile5_wallNrID = {}
level05.colliders.Tile5_wallNrID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNrID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNrID.collider:SetAxes(-0.986394, 0, 0.164399, 0, -1, 0, 0.164399, 0, 0.986394)
level05.colliders.Tile5_wallNrID.collider:SetHalfLengths(0.3,5,3.04138)
level05.colliders.Tile5_wallNrID.collider:SetPos(509.5,38.8167,388)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNrID.collider, 3)
level05.colliders.Tile5_wallNr1ID = {}
level05.colliders.Tile5_wallNr1ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr1ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr1ID.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.Tile5_wallNr1ID.collider:SetHalfLengths(0.3,6.04229,3.53553)
level05.colliders.Tile5_wallNr1ID.collider:SetPos(510.5,38.8167,394.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr1ID.collider, 3)
level05.colliders.Tile5_wallNr2ID = {}
level05.colliders.Tile5_wallNr2ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr2ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr2ID.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level05.colliders.Tile5_wallNr2ID.collider:SetHalfLengths(0.3,9.42971,5)
level05.colliders.Tile5_wallNr2ID.collider:SetPos(514,39.859,402)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr2ID.collider, 3)
level05.colliders.Tile5_wallNr3ID = {}
level05.colliders.Tile5_wallNr3ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr3ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr3ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr3ID.collider:SetHalfLengths(0.3,9.69028,4.24264)
level05.colliders.Tile5_wallNr3ID.collider:SetPos(520,44.2887,409)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr3ID.collider, 3)
level05.colliders.Tile5_wallNr4ID = {}
level05.colliders.Tile5_wallNr4ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr4ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr4ID.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level05.colliders.Tile5_wallNr4ID.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.Tile5_wallNr4ID.collider:SetPos(525,48.979,413.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr4ID.collider, 3)
level05.colliders.Tile5_wallNr5ID = {}
level05.colliders.Tile5_wallNr5ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr5ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr5ID.collider:SetAxes(-0.4741, 0, 0.880471, 0, -1, 0, 0.880471, 0, 0.4741)
level05.colliders.Tile5_wallNr5ID.collider:SetHalfLengths(0.3,5.52114,7.38241)
level05.colliders.Tile5_wallNr5ID.collider:SetPos(533.5,49.2396,418.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr5ID.collider, 3)
level05.colliders.Tile5_wallNr6ID = {}
level05.colliders.Tile5_wallNr6ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr6ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr6ID.collider:SetAxes(-0.384615, 0, 0.923077, 0, -1, 0, 0.923077, 0, 0.384615)
level05.colliders.Tile5_wallNr6ID.collider:SetHalfLengths(0.3,6.56343,6.5)
level05.colliders.Tile5_wallNr6ID.collider:SetPos(546,48.7184,424.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr6ID.collider, 3)
level05.colliders.Tile5_wallNr7ID = {}
level05.colliders.Tile5_wallNr7ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr7ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr7ID.collider:SetAxes(-0.358979, 0, 0.933346, 0, -1, 0, 0.933346, 0, 0.358979)
level05.colliders.Tile5_wallNr7ID.collider:SetHalfLengths(0.3,7.86628,6.96419)
level05.colliders.Tile5_wallNr7ID.collider:SetPos(558.5,50.2819,429.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr7ID.collider, 3)
level05.colliders.Tile5_wallNr8ID = {}
level05.colliders.Tile5_wallNr8ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr8ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr8ID.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level05.colliders.Tile5_wallNr8ID.collider:SetHalfLengths(0.3,6.30286,8.74643)
level05.colliders.Tile5_wallNr8ID.collider:SetPos(572.5,53.1481,436.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr8ID.collider, 3)
level05.colliders.Tile5_wallNr9ID = {}
level05.colliders.Tile5_wallNr9ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr9ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr9ID.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level05.colliders.Tile5_wallNr9ID.collider:SetHalfLengths(0.3,6.824,2.91548)
level05.colliders.Tile5_wallNr9ID.collider:SetPos(582.5,54.451,442.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr9ID.collider, 3)
level05.colliders.Tile5_wallNr10ID = {}
level05.colliders.Tile5_wallNr10ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr10ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr10ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr10ID.collider:SetHalfLengths(0.3,6.30286,1.41421)
level05.colliders.Tile5_wallNr10ID.collider:SetPos(586,56.275,445)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr10ID.collider, 3)
level05.colliders.Tile5_wallNr11ID = {}
level05.colliders.Tile5_wallNr11ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr11ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr11ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.Tile5_wallNr11ID.collider:SetHalfLengths(0.3,5.78172,2.23607)
level05.colliders.Tile5_wallNr11ID.collider:SetPos(588,57.5778,448)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr11ID.collider, 3)
level05.colliders.Tile5_wallNr12ID = {}
level05.colliders.Tile5_wallNr12ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr12ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr12ID.collider:SetAxes(-0.913812, 0, 0.406139, 0, -1, 0, 0.406139, 0, 0.913812)
level05.colliders.Tile5_wallNr12ID.collider:SetHalfLengths(0.3,6.30286,4.92443)
level05.colliders.Tile5_wallNr12ID.collider:SetPos(591,58.3596,454.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr12ID.collider, 3)
level05.colliders.Tile5_wallNr13ID = {}
level05.colliders.Tile5_wallNr13ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr13ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr13ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.Tile5_wallNr13ID.collider:SetHalfLengths(0.3,6.56343,4.47214)
level05.colliders.Tile5_wallNr13ID.collider:SetPos(595,59.6624,463)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr13ID.collider, 3)
level05.colliders.Tile5_wallNr14ID = {}
level05.colliders.Tile5_wallNr14ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr14ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr14ID.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.Tile5_wallNr14ID.collider:SetHalfLengths(0.3,8.12685,6.32456)
level05.colliders.Tile5_wallNr14ID.collider:SetPos(599,61.2258,473)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr14ID.collider, 3)
level05.colliders.Tile5_wallNr15ID = {}
level05.colliders.Tile5_wallNr15ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr15ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr15ID.collider:SetAxes(-0.939793, 0, 0.341743, 0, -1, 0, 0.341743, 0, 0.939793)
level05.colliders.Tile5_wallNr15ID.collider:SetHalfLengths(0.3,11.2537,11.7047)
level05.colliders.Tile5_wallNr15ID.collider:SetPos(605,64.3527,490)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr15ID.collider, 3)
level05.colliders.Tile5_wallNr16ID = {}
level05.colliders.Tile5_wallNr16ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr16ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr16ID.collider:SetAxes(-0.997785, 0, 0.066519, 0, -1, 0, 0.066519, 0, 0.997785)
level05.colliders.Tile5_wallNr16ID.collider:SetHalfLengths(0.3,7.86629,7.51665)
level05.colliders.Tile5_wallNr16ID.collider:SetPos(609.5,70.6064,508.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr16ID.collider, 3)
level05.colliders.Tile5_wallNr17ID = {}
level05.colliders.Tile5_wallNr17ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr17ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr17ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr17ID.collider:SetHalfLengths(0.3,7.34514,9)
level05.colliders.Tile5_wallNr17ID.collider:SetPos(610,73.4727,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr17ID.collider, 3)
level05.colliders.Tile5_wallNr18ID = {}
level05.colliders.Tile5_wallNr18ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr18ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr18ID.collider:SetAxes(-0.996546, 0, 0.0830455, 0, -1, 0, 0.0830455, 0, 0.996546)
level05.colliders.Tile5_wallNr18ID.collider:SetHalfLengths(0.3,9.69028,12.0416)
level05.colliders.Tile5_wallNr18ID.collider:SetPos(611,75.8178,546)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr18ID.collider, 3)
level05.colliders.Tile5_wallNr19ID = {}
level05.colliders.Tile5_wallNr19ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr19ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr19ID.collider:SetAxes(-0.997268, 0, 0.0738717, 0, -1, 0, 0.0738717, 0, 0.997268)
level05.colliders.Tile5_wallNr19ID.collider:SetHalfLengths(0.3,9.42972,13.537)
level05.colliders.Tile5_wallNr19ID.collider:SetPos(613,80.5081,571.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr19ID.collider, 3)
level05.colliders.Tile5_wallNr20ID = {}
level05.colliders.Tile5_wallNr20ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr20ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr20ID.collider:SetAxes(-0.970143, 0, 0.242536, 0, -1, 0, 0.242536, 0, 0.970143)
level05.colliders.Tile5_wallNr20ID.collider:SetHalfLengths(0.3,5.52113,2.06155)
level05.colliders.Tile5_wallNr20ID.collider:SetPos(614.5,84.9378,587)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr20ID.collider, 3)
level05.colliders.Tile5_wallNr21ID = {}
level05.colliders.Tile5_wallNr21ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr21ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr21ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.Tile5_wallNr21ID.collider:SetHalfLengths(0.3,5.78172,1.11803)
level05.colliders.Tile5_wallNr21ID.collider:SetPos(615.5,85.459,590)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr21ID.collider, 3)
level05.colliders.Tile5_wallNr22ID = {}
level05.colliders.Tile5_wallNr22ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr22ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr22ID.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level05.colliders.Tile5_wallNr22ID.collider:SetHalfLengths(0.3,5.52114,1.11803)
level05.colliders.Tile5_wallNr22ID.collider:SetPos(617,86.2407,591.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr22ID.collider, 3)
level05.colliders.Tile5_wallNr23ID = {}
level05.colliders.Tile5_wallNr23ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr23ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr23ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.Tile5_wallNr23ID.collider:SetHalfLengths(0.3,5.26057,11)
level05.colliders.Tile5_wallNr23ID.collider:SetPos(629,86.7618,592)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr23ID.collider, 3)
level05.colliders.Tile5_wallNr24ID = {}
level05.colliders.Tile5_wallNr24ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr24ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr24ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr24ID.collider:SetHalfLengths(0.3,5,16)
level05.colliders.Tile5_wallNr24ID.collider:SetPos(640,86.5012,608)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr24ID.collider, 3)
level05.colliders.Tile5_wallNr25ID = {}
level05.colliders.Tile5_wallNr25ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr25ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr25ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr25ID.collider:SetHalfLengths(0.3,5.52114,2.82843)
level05.colliders.Tile5_wallNr25ID.collider:SetPos(638,86.5012,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr25ID.collider, 3)
level05.colliders.Tile5_wallNr26ID = {}
level05.colliders.Tile5_wallNr26ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr26ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr26ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr26ID.collider:SetHalfLengths(0.3,5.26057,2.82843)
level05.colliders.Tile5_wallNr26ID.collider:SetPos(634,87.0224,630)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr26ID.collider, 3)
level05.colliders.Tile5_wallNr27ID = {}
level05.colliders.Tile5_wallNr27ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr27ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr27ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr27ID.collider:SetHalfLengths(0.3,5.26057,4.94975)
level05.colliders.Tile5_wallNr27ID.collider:SetPos(628.5,86.7618,635.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr27ID.collider, 3)
level05.colliders.Tile5_wallNr28ID = {}
level05.colliders.Tile5_wallNr28ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr28ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr28ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level05.colliders.Tile5_wallNr28ID.collider:SetHalfLengths(0.3,6.04229,5.5)
level05.colliders.Tile5_wallNr28ID.collider:SetPos(619.5,86.5012,639)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr28ID.collider, 3)
level05.colliders.Tile5_wallNr29ID = {}
level05.colliders.Tile5_wallNr29ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr29ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr29ID.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level05.colliders.Tile5_wallNr29ID.collider:SetHalfLengths(0.3,5.26056,2.54951)
level05.colliders.Tile5_wallNr29ID.collider:SetPos(613.5,85.459,636.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr29ID.collider, 3)
level05.colliders.Tile5_wallNr30ID = {}
level05.colliders.Tile5_wallNr30ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr30ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr30ID.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level05.colliders.Tile5_wallNr30ID.collider:SetHalfLengths(0.3,5.26057,3.3541)
level05.colliders.Tile5_wallNr30ID.collider:SetPos(611.5,85.1984,631)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr30ID.collider, 3)
level05.colliders.Tile5_wallNr31ID = {}
level05.colliders.Tile5_wallNr31ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr31ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr31ID.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level05.colliders.Tile5_wallNr31ID.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.Tile5_wallNr31ID.collider:SetPos(607.5,84.9378,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr31ID.collider, 3)
level05.colliders.Tile5_wallNr32ID = {}
level05.colliders.Tile5_wallNr32ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr32ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr32ID.collider:SetAxes(0.371391, 0, -0.928477, 0, -1, -0, -0.928477, 0, -0.371391)
level05.colliders.Tile5_wallNr32ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr32ID.collider:SetPos(602.5,84.9378,623)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr32ID.collider, 3)
level05.colliders.Tile5_wallNr33ID = {}
level05.colliders.Tile5_wallNr33ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr33ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr33ID.collider:SetAxes(-0.124035, 0, -0.992278, -0, -1, 0, -0.992278, 0, 0.124035)
level05.colliders.Tile5_wallNr33ID.collider:SetHalfLengths(0.3,5,4.03113)
level05.colliders.Tile5_wallNr33ID.collider:SetPos(596,84.9378,622.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr33ID.collider, 3)
level05.colliders.Tile5_wallNr34ID = {}
level05.colliders.Tile5_wallNr34ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr34ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr34ID.collider:SetAxes(-0.393919, 0, -0.919145, -0, -1, 0, -0.919145, 0, 0.393919)
level05.colliders.Tile5_wallNr34ID.collider:SetHalfLengths(0.3,5,3.80789)
level05.colliders.Tile5_wallNr34ID.collider:SetPos(588.5,84.9378,624.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr34ID.collider, 3)
level05.colliders.Tile5_wallNr35ID = {}
level05.colliders.Tile5_wallNr35ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr35ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr35ID.collider:SetAxes(-0.624695, 0, -0.780869, -0, -1, 0, -0.780869, 0, 0.624695)
level05.colliders.Tile5_wallNr35ID.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.Tile5_wallNr35ID.collider:SetPos(582.5,84.9378,628)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr35ID.collider, 3)
level05.colliders.Tile5_wallNr36ID = {}
level05.colliders.Tile5_wallNr36ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr36ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr36ID.collider:SetAxes(-0.928477, 0, -0.371391, -0, -1, 0, -0.371391, 0, 0.928477)
level05.colliders.Tile5_wallNr36ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr36ID.collider:SetPos(579,84.9378,632.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr36ID.collider, 3)
level05.colliders.Tile5_wallNr37ID = {}
level05.colliders.Tile5_wallNr37ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr37ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr37ID.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level05.colliders.Tile5_wallNr37ID.collider:SetHalfLengths(0.3,5,2.06155)
level05.colliders.Tile5_wallNr37ID.collider:SetPos(577.5,84.9378,637)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr37ID.collider, 3)
level05.colliders.Tile5_wallNr38ID = {}
level05.colliders.Tile5_wallNr38ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr38ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr38ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.Tile5_wallNr38ID.collider:SetHalfLengths(0.3,10.472,9.5)
level05.colliders.Tile5_wallNr38ID.collider:SetPos(505.5,43.2464,446)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr38ID.collider, 3)
level05.colliders.Tile5_wallNr39ID = {}
level05.colliders.Tile5_wallNr39ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr39ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr39ID.collider:SetAxes(-0.124035, 0, 0.992278, 0, -1, 0, 0.992278, 0, 0.124035)
level05.colliders.Tile5_wallNr39ID.collider:SetHalfLengths(0.3,7.08457,4.03113)
level05.colliders.Tile5_wallNr39ID.collider:SetPos(519,48.7184,446.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr39ID.collider, 3)
level05.colliders.Tile5_wallNr40ID = {}
level05.colliders.Tile5_wallNr40ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr40ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr40ID.collider:SetAxes(-0.490261, 0, 0.871576, 0, -1, 0, 0.871576, 0, 0.490261)
level05.colliders.Tile5_wallNr40ID.collider:SetHalfLengths(0.3,9.69028,9.17878)
level05.colliders.Tile5_wallNr40ID.collider:SetPos(531,50.803,451.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr40ID.collider, 3)
level05.colliders.Tile5_wallNr41ID = {}
level05.colliders.Tile5_wallNr41ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr41ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr41ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.Tile5_wallNr41ID.collider:SetHalfLengths(0.3,8.90857,9.01388)
level05.colliders.Tile5_wallNr41ID.collider:SetPos(546.5,55.4933,461)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr41ID.collider, 3)
level05.colliders.Tile5_wallNr42ID = {}
level05.colliders.Tile5_wallNr42ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr42ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr42ID.collider:SetAxes(-0.876216, 0, 0.481919, 0, -1, 0, 0.481919, 0, 0.876216)
level05.colliders.Tile5_wallNr42ID.collider:SetHalfLengths(0.3,12.5566,11.4127)
level05.colliders.Tile5_wallNr42ID.collider:SetPos(559.5,59.4018,476)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr42ID.collider, 3)
level05.colliders.Tile5_wallNr43ID = {}
level05.colliders.Tile5_wallNr43ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr43ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr43ID.collider:SetAxes(-0.913812, 0, 0.406139, 0, -1, 0, 0.406139, 0, 0.913812)
level05.colliders.Tile5_wallNr43ID.collider:SetHalfLengths(0.3,8.12685,4.92443)
level05.colliders.Tile5_wallNr43ID.collider:SetPos(567,66.9584,490.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr43ID.collider, 3)
level05.colliders.Tile5_wallNr44ID = {}
level05.colliders.Tile5_wallNr44ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr44ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr44ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.Tile5_wallNr44ID.collider:SetHalfLengths(0.3,7.34515,6.7082)
level05.colliders.Tile5_wallNr44ID.collider:SetPos(572,70.0853,501)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr44ID.collider, 3)
level05.colliders.Tile5_wallNr45ID = {}
level05.colliders.Tile5_wallNr45ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr45ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr45ID.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.Tile5_wallNr45ID.collider:SetHalfLengths(0.3,10.2114,14.1421)
level05.colliders.Tile5_wallNr45ID.collider:SetPos(577,72.4304,521)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr45ID.collider, 3)
level05.colliders.Tile5_wallNr46ID = {}
level05.colliders.Tile5_wallNr46ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr46ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr46ID.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.Tile5_wallNr46ID.collider:SetHalfLengths(0.3,10.2114,17.6777)
level05.colliders.Tile5_wallNr46ID.collider:SetPos(581.5,77.6418,552.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr46ID.collider, 3)
level05.colliders.Tile5_wallNr47ID = {}
level05.colliders.Tile5_wallNr47ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr47ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr47ID.collider:SetAxes(-0.919145, 0, -0.393919, -0, -1, 0, -0.393919, 0, 0.919145)
level05.colliders.Tile5_wallNr47ID.collider:SetHalfLengths(0.3,7.08458,3.80789)
level05.colliders.Tile5_wallNr47ID.collider:SetPos(582.5,82.8532,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr47ID.collider, 3)
level05.colliders.Tile5_wallNr59ID = {}
level05.colliders.Tile5_wallNr59ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr59ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr59ID.collider:SetAxes(0.0830455, 0, -0.996546, 0, -1, -0, -0.996546, 0, -0.0830455)
level05.colliders.Tile5_wallNr59ID.collider:SetHalfLengths(0.3,6.30286,6.0208)
level05.colliders.Tile5_wallNr59ID.collider:SetPos(511,65.6555,506.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr59ID.collider, 3)
level05.colliders.Tile5_wallNr60ID = {}
level05.colliders.Tile5_wallNr60ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr60ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr60ID.collider:SetAxes(0.164399, 0, -0.986394, 0, -1, -0, -0.986394, 0, -0.164399)
level05.colliders.Tile5_wallNr60ID.collider:SetHalfLengths(0.3,5.26057,6.08276)
level05.colliders.Tile5_wallNr60ID.collider:SetPos(499,64.3527,505)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr60ID.collider, 3)
level05.colliders.Tile5_wallNr61ID = {}
level05.colliders.Tile5_wallNr61ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr61ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr61ID.collider:SetAxes(0.294086, 0, -0.955779, 0, -1, -0, -0.955779, 0, -0.294086)
level05.colliders.Tile5_wallNr61ID.collider:SetHalfLengths(0.3,5.26057,6.80074)
level05.colliders.Tile5_wallNr61ID.collider:SetPos(486.5,64.6133,502)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr61ID.collider, 3)
level05.colliders.Tile5_wallNr62ID = {}
level05.colliders.Tile5_wallNr62ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr62ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr62ID.collider:SetAxes(0.485643, 0, -0.874157, 0, -1, -0, -0.874157, 0, -0.485643)
level05.colliders.Tile5_wallNr62ID.collider:SetHalfLengths(0.3,6.30285,10.2956)
level05.colliders.Tile5_wallNr62ID.collider:SetPos(471,64.3527,495)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr62ID.collider, 3)
level05.colliders.Tile5_wallNr63ID = {}
level05.colliders.Tile5_wallNr63ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr63ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr63ID.collider:SetAxes(0.759257, 0, -0.650791, 0, -1, -0, -0.650791, 0, -0.759257)
level05.colliders.Tile5_wallNr63ID.collider:SetHalfLengths(0.3,5.78171,4.60977)
level05.colliders.Tile5_wallNr63ID.collider:SetPos(459,63.0498,486.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr63ID.collider, 3)
level05.colliders.Tile5_wallNr64ID = {}
level05.colliders.Tile5_wallNr64ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr64ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr64ID.collider:SetAxes(0.847998, 0, -0.529999, 0, -1, -0, -0.529999, 0, -0.847998)
level05.colliders.Tile5_wallNr64ID.collider:SetHalfLengths(0.3,5.52114,4.71699)
level05.colliders.Tile5_wallNr64ID.collider:SetPos(453.5,63.8316,479)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr64ID.collider, 3)
level05.colliders.Tile5_wallNr65ID = {}
level05.colliders.Tile5_wallNr65ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr65ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr65ID.collider:SetAxes(0.970143, 0, -0.242536, 0, -1, -0, -0.242536, 0, -0.970143)
level05.colliders.Tile5_wallNr65ID.collider:SetHalfLengths(0.3,6.04228,2.06155)
level05.colliders.Tile5_wallNr65ID.collider:SetPos(450.5,63.3104,473)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr65ID.collider, 3)
level05.colliders.Tile5_wallNr66ID = {}
level05.colliders.Tile5_wallNr66ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr66ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr66ID.collider:SetAxes(0.970143, -0, 0.242536, 0, -1, -0, 0.242536, 0, -0.970143)
level05.colliders.Tile5_wallNr66ID.collider:SetHalfLengths(0.3,5.78172,2.06155)
level05.colliders.Tile5_wallNr66ID.collider:SetPos(450.5,62.2681,469)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr66ID.collider, 3)
level05.colliders.Tile5_wallNr67ID = {}
level05.colliders.Tile5_wallNr67ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr67ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr67ID.collider:SetAxes(0.8, -0, 0.6, 0, -1, -0, 0.6, 0, -0.8)
level05.colliders.Tile5_wallNr67ID.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.Tile5_wallNr67ID.collider:SetPos(452.5,61.4864,465)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr67ID.collider, 3)
level05.colliders.Tile5_wallNr68ID = {}
level05.colliders.Tile5_wallNr68ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr68ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr68ID.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level05.colliders.Tile5_wallNr68ID.collider:SetHalfLengths(0.3,7.08457,2.69258)
level05.colliders.Tile5_wallNr68ID.collider:SetPos(456.5,59.1413,462)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr68ID.collider, 3)
level05.colliders.Tile5_wallNr69ID = {}
level05.colliders.Tile5_wallNr69ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr69ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr69ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level05.colliders.Tile5_wallNr69ID.collider:SetHalfLengths(0.3,7.60571,2.54951)
level05.colliders.Tile5_wallNr69ID.collider:SetPos(461.5,57.0567,460.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr69ID.collider, 3)
level05.colliders.Tile5_wallNr70ID = {}
level05.colliders.Tile5_wallNr70ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr70ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr70ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.Tile5_wallNr70ID.collider:SetHalfLengths(0.3,7.60571,2.5)
level05.colliders.Tile5_wallNr70ID.collider:SetPos(466.5,54.451,460)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr70ID.collider, 3)
level05.colliders.Tile5_wallNr71ID = {}
level05.colliders.Tile5_wallNr71ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr71ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr71ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.Tile5_wallNr71ID.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.Tile5_wallNr71ID.collider:SetPos(471.5,51.8453,460)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr71ID.collider, 3)
level05.colliders.Tile5_wallNr72ID = {}
level05.colliders.Tile5_wallNr72ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr72ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr72ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level05.colliders.Tile5_wallNr72ID.collider:SetHalfLengths(0.3,6.04229,2.06155)
level05.colliders.Tile5_wallNr72ID.collider:SetPos(476,49.5001,459.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr72ID.collider, 3)
level05.colliders.Tile5_wallNr73ID = {}
level05.colliders.Tile5_wallNr73ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr73ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr73ID.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level05.colliders.Tile5_wallNr73ID.collider:SetHalfLengths(0.3,6.30285,2.91548)
level05.colliders.Tile5_wallNr73ID.collider:SetPos(480.5,48.4579,457.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr73ID.collider, 3)
level05.colliders.Tile5_wallNr74ID = {}
level05.colliders.Tile5_wallNr74ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr74ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr74ID.collider:SetAxes(0.624695, -0, 0.780869, 0, -1, -0, 0.780869, 0, -0.624695)
level05.colliders.Tile5_wallNr74ID.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.Tile5_wallNr74ID.collider:SetPos(485.5,47.155,454)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr74ID.collider, 3)
level05.colliders.Tile5_wallNr75ID = {}
level05.colliders.Tile5_wallNr75ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr75ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr75ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level05.colliders.Tile5_wallNr75ID.collider:SetHalfLengths(0.3,6.30285,2.12132)
level05.colliders.Tile5_wallNr75ID.collider:SetPos(489.5,45.5916,450.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr75ID.collider, 3)
level05.colliders.Tile5_wallNr76ID = {}
level05.colliders.Tile5_wallNr76ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr76ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr76ID.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level05.colliders.Tile5_wallNr76ID.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.Tile5_wallNr76ID.collider:SetPos(493.5,44.2887,447.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr76ID.collider, 3)
level05.colliders.Tile5_wallNr77ID = {}
level05.colliders.Tile5_wallNr77ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr77ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr77ID.collider:SetAxes(-0.961524, 0, 0.274721, 0, -1, 0, 0.274721, 0, 0.961524)
level05.colliders.Tile5_wallNr77ID.collider:SetHalfLengths(0.3,5.52114,3.64005)
level05.colliders.Tile5_wallNr77ID.collider:SetPos(454,65.395,388.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr77ID.collider, 3)
level05.colliders.Tile5_wallNr78ID = {}
level05.colliders.Tile5_wallNr78ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr78ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr78ID.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level05.colliders.Tile5_wallNr78ID.collider:SetHalfLengths(0.3,7.34514,3.04138)
level05.colliders.Tile5_wallNr78ID.collider:SetPos(454.5,64.8738,395)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr78ID.collider, 3)
level05.colliders.Tile5_wallNr79ID = {}
level05.colliders.Tile5_wallNr79ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr79ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr79ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level05.colliders.Tile5_wallNr79ID.collider:SetHalfLengths(0.3,8.12685,3.16228)
level05.colliders.Tile5_wallNr79ID.collider:SetPos(451,67.219,399)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr79ID.collider, 3)
level05.colliders.Tile5_wallNr80ID = {}
level05.colliders.Tile5_wallNr80ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr80ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr80ID.collider:SetAxes(-0.242536, 0, -0.970143, -0, -1, 0, -0.970143, 0, 0.242536)
level05.colliders.Tile5_wallNr80ID.collider:SetHalfLengths(0.3,7.08457,4.12311)
level05.colliders.Tile5_wallNr80ID.collider:SetPos(444,70.3458,401)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr80ID.collider, 3)
level05.colliders.Tile5_wallNr81ID = {}
level05.colliders.Tile5_wallNr81ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr81ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr81ID.collider:SetAxes(-0.263117, 0, -0.964764, -0, -1, 0, -0.964764, 0, 0.263117)
level05.colliders.Tile5_wallNr81ID.collider:SetHalfLengths(0.3,7.08456,5.70088)
level05.colliders.Tile5_wallNr81ID.collider:SetPos(434.5,72.4304,403.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr81ID.collider, 3)
level05.colliders.Tile5_wallNr82ID = {}
level05.colliders.Tile5_wallNr82ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr82ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr82ID.collider:SetAxes(-0.573462, 0, -0.819232, -0, -1, 0, -0.819232, 0, 0.573462)
level05.colliders.Tile5_wallNr82ID.collider:SetHalfLengths(0.3,7.34514,6.10328)
level05.colliders.Tile5_wallNr82ID.collider:SetPos(424,74.515,408.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr82ID.collider, 3)
level05.colliders.Tile5_wallNr83ID = {}
level05.colliders.Tile5_wallNr83ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr83ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr83ID.collider:SetAxes(-0.624695, 0, -0.780869, -0, -1, 0, -0.780869, 0, 0.624695)
level05.colliders.Tile5_wallNr83ID.collider:SetHalfLengths(0.3,6.30286,3.20156)
level05.colliders.Tile5_wallNr83ID.collider:SetPos(416.5,76.8601,414)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr83ID.collider, 3)
level05.colliders.Tile5_wallNr84ID = {}
level05.colliders.Tile5_wallNr84ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr84ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr84ID.collider:SetAxes(-0.141421, 0, -0.98995, -0, -1, 0, -0.98995, 0, 0.141421)
level05.colliders.Tile5_wallNr84ID.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.Tile5_wallNr84ID.collider:SetPos(410.5,78.163,416.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr84ID.collider, 3)
level05.colliders.Tile5_wallNr85ID = {}
level05.colliders.Tile5_wallNr85ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr85ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr85ID.collider:SetAxes(-0.967075, 0, -0.254493, -0, -1, 0, -0.254493, 0, 0.967075)
level05.colliders.Tile5_wallNr85ID.collider:SetHalfLengths(0.3,5,9.82344)
level05.colliders.Tile5_wallNr85ID.collider:SetPos(404.5,78.163,426.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr85ID.collider, 3)
level05.colliders.Tile5_wallNr88ID = {}
level05.colliders.Tile5_wallNr88ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr88ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr88ID.collider:SetAxes(-0.994505, 0, 0.104685, 0, -1, 0, 0.104685, 0, 0.994505)
level05.colliders.Tile5_wallNr88ID.collider:SetHalfLengths(0.3,8.38743,9.55249)
level05.colliders.Tile5_wallNr88ID.collider:SetPos(478,45.5916,394.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr88ID.collider, 3)
level05.colliders.Tile5_wallNr90ID = {}
level05.colliders.Tile5_wallNr90ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr90ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr90ID.collider:SetAxes(-0.633238, 0, 0.773957, 0, -1, 0, 0.773957, 0, 0.633238)
level05.colliders.Tile5_wallNr90ID.collider:SetHalfLengths(0.3,15.6834,7.10634)
level05.colliders.Tile5_wallNr90ID.collider:SetPos(474.5,59.1413,407.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr90ID.collider, 3)
level05.colliders.Tile5_wallNr91ID = {}
level05.colliders.Tile5_wallNr91ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr91ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr91ID.collider:SetAxes(0.992278, 0, -0.124035, 0, -1, -0, -0.124035, 0, -0.992278)
level05.colliders.Tile5_wallNr91ID.collider:SetHalfLengths(0.3,5.52114,4.03113)
level05.colliders.Tile5_wallNr91ID.collider:SetPos(479.5,48.4579,408)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr91ID.collider, 3)
level05.colliders.Tile5_wallNr94ID = {}
level05.colliders.Tile5_wallNr94ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr94ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr94ID.collider:SetAxes(-0.164399, 0, -0.986394, -0, -1, 0, -0.986394, 0, 0.164399)
level05.colliders.Tile5_wallNr94ID.collider:SetHalfLengths(0.3,6.824,6.08276)
level05.colliders.Tile5_wallNr94ID.collider:SetPos(428,61.747,510)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr94ID.collider, 3)
level05.colliders.Tile5_wallNr95ID = {}
level05.colliders.Tile5_wallNr95ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr95ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr95ID.collider:SetAxes(0.999555, 0, -0.0298375, 0, -1, -0, -0.0298375, 0, -0.999555)
level05.colliders.Tile5_wallNr95ID.collider:SetHalfLengths(0.3,5.26057,33.5149)
level05.colliders.Tile5_wallNr95ID.collider:SetPos(421,59.923,477.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr95ID.collider, 3)
level05.colliders.Tile5_wallNr96ID = {}
level05.colliders.Tile5_wallNr96ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr96ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr96ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.Tile5_wallNr96ID.collider:SetHalfLengths(0.3,5.78172,2.5)
level05.colliders.Tile5_wallNr96ID.collider:SetPos(422.5,59.6624,444)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr96ID.collider, 3)
level05.colliders.Tile5_wallNr97ID = {}
level05.colliders.Tile5_wallNr97ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr97ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr97ID.collider:SetAxes(0.919145, -0, 0.393919, 0, -1, -0, 0.393919, 0, -0.919145)
level05.colliders.Tile5_wallNr97ID.collider:SetHalfLengths(0.3,5.26057,3.80789)
level05.colliders.Tile5_wallNr97ID.collider:SetPos(426.5,60.4441,440.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr97ID.collider, 3)
level05.colliders.Tile5_wallNr98ID = {}
level05.colliders.Tile5_wallNr98ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr98ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr98ID.collider:SetAxes(0.613941, -0, 0.789352, 0, -1, -0, 0.789352, 0, -0.613941)
level05.colliders.Tile5_wallNr98ID.collider:SetHalfLengths(0.3,8.12685,5.70088)
level05.colliders.Tile5_wallNr98ID.collider:SetPos(432.5,60.1836,433.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr98ID.collider, 3)
level05.colliders.Tile5_wallNr99ID = {}
level05.colliders.Tile5_wallNr99ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr99ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr99ID.collider:SetAxes(0.384615, -0, 0.923077, 0, -1, -0, 0.923077, 0, -0.384615)
level05.colliders.Tile5_wallNr99ID.collider:SetHalfLengths(0.3,5.26057,6.5)
level05.colliders.Tile5_wallNr99ID.collider:SetPos(443,63.3104,427.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr99ID.collider, 3)
level05.colliders.Tile5_wallNr100ID = {}
level05.colliders.Tile5_wallNr100ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr100ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr100ID.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level05.colliders.Tile5_wallNr100ID.collider:SetHalfLengths(0.3,6.56343,1.80278)
level05.colliders.Tile5_wallNr100ID.collider:SetPos(450,63.0498,423.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr100ID.collider, 3)
level05.colliders.Tile5_wallNr116ID = {}
level05.colliders.Tile5_wallNr116ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr116ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr116ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.Tile5_wallNr116ID.collider:SetHalfLengths(0.3,5.26057,1)
level05.colliders.Tile5_wallNr116ID.collider:SetPos(431,84.1561,569)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr116ID.collider, 3)
level05.colliders.Tile5_wallNr117ID = {}
level05.colliders.Tile5_wallNr117ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr117ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr117ID.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level05.colliders.Tile5_wallNr117ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr117ID.collider:SetPos(434.5,84.4167,570)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr117ID.collider, 3)
level05.colliders.Tile5_wallNr118ID = {}
level05.colliders.Tile5_wallNr118ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr118ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr118ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr118ID.collider:SetHalfLengths(0.3,5,2.82843)
level05.colliders.Tile5_wallNr118ID.collider:SetPos(439,84.4167,573)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr118ID.collider, 3)
level05.colliders.Tile5_wallNr119ID = {}
level05.colliders.Tile5_wallNr119ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr119ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr119ID.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.Tile5_wallNr119ID.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.Tile5_wallNr119ID.collider:SetPos(442,84.4167,577)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr119ID.collider, 3)
level05.colliders.Tile5_wallNr120ID = {}
level05.colliders.Tile5_wallNr120ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr120ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr120ID.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.Tile5_wallNr120ID.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.Tile5_wallNr120ID.collider:SetPos(443.5,84.6772,580.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr120ID.collider, 3)
level05.colliders.Tile5_wallNr121ID = {}
level05.colliders.Tile5_wallNr121ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr121ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr121ID.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.Tile5_wallNr121ID.collider:SetHalfLengths(0.3,6.30286,3.53553)
level05.colliders.Tile5_wallNr121ID.collider:SetPos(444.5,84.4167,585.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr121ID.collider, 3)
level05.colliders.Tile5_wallNr122ID = {}
level05.colliders.Tile5_wallNr122ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr122ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr122ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr122ID.collider:SetHalfLengths(0.3,5.78171,2.5)
level05.colliders.Tile5_wallNr122ID.collider:SetPos(445,83.1138,591.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr122ID.collider, 3)
level05.colliders.Tile5_wallNr123ID = {}
level05.colliders.Tile5_wallNr123ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr123ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr123ID.collider:SetAxes(-0.780869, 0, -0.624695, -0, -1, 0, -0.624695, 0, 0.780869)
level05.colliders.Tile5_wallNr123ID.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.Tile5_wallNr123ID.collider:SetPos(443,82.3321,596.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr123ID.collider, 3)
level05.colliders.Tile5_wallNr124ID = {}
level05.colliders.Tile5_wallNr124ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr124ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr124ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr124ID.collider:SetHalfLengths(0.3,5.26057,1.41421)
level05.colliders.Tile5_wallNr124ID.collider:SetPos(440,80.7687,600)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr124ID.collider, 3)
level05.colliders.Tile5_wallNr125ID = {}
level05.colliders.Tile5_wallNr125ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr125ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr125ID.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level05.colliders.Tile5_wallNr125ID.collider:SetHalfLengths(0.3,6.04228,3.3541)
level05.colliders.Tile5_wallNr125ID.collider:SetPos(436,80.5081,602.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr125ID.collider, 3)
level05.colliders.Tile5_wallNr126ID = {}
level05.colliders.Tile5_wallNr126ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr126ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr126ID.collider:SetAxes(-0.56921, 0, 0.822192, 0, -1, 0, 0.822192, 0, 0.56921)
level05.colliders.Tile5_wallNr126ID.collider:SetHalfLengths(0.3,8.64799,7.90569)
level05.colliders.Tile5_wallNr126ID.collider:SetPos(439.5,79.4658,608.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr126ID.collider, 3)
level05.colliders.Tile5_wallNr127ID = {}
level05.colliders.Tile5_wallNr127ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr127ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr127ID.collider:SetAxes(-0.645942, 0, 0.763386, 0, -1, 0, 0.763386, 0, 0.645942)
level05.colliders.Tile5_wallNr127ID.collider:SetHalfLengths(0.3,7.08458,8.51469)
level05.colliders.Tile5_wallNr127ID.collider:SetPos(452.5,83.1138,618.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr127ID.collider, 3)
level05.colliders.Tile5_wallNr128ID = {}
level05.colliders.Tile5_wallNr128ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr128ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr128ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.Tile5_wallNr128ID.collider:SetHalfLengths(0.3,5,3.60555)
level05.colliders.Tile5_wallNr128ID.collider:SetPos(462,85.1984,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr128ID.collider, 3)
level05.colliders.Tile5_wallNr129ID = {}
level05.colliders.Tile5_wallNr129ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr129ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr129ID.collider:SetAxes(-0.910366, 0, 0.413803, 0, -1, 0, 0.413803, 0, 0.910366)
level05.colliders.Tile5_wallNr129ID.collider:SetHalfLengths(0.3,5.78171,6.04152)
level05.colliders.Tile5_wallNr129ID.collider:SetPos(467.5,85.1984,633.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr129ID.collider, 3)
level05.colliders.Tile5_wallNr135ID = {}
level05.colliders.Tile5_wallNr135ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr135ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr135ID.collider:SetAxes(-0.877896, 0, 0.478852, 0, -1, 0, 0.478852, 0, 0.877896)
level05.colliders.Tile5_wallNr135ID.collider:SetHalfLengths(0.3,6.30285,6.26498)
level05.colliders.Tile5_wallNr135ID.collider:SetPos(460,81.5504,564.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr135ID.collider, 3)
level05.colliders.Tile5_wallNr136ID = {}
level05.colliders.Tile5_wallNr136ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr136ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr136ID.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level05.colliders.Tile5_wallNr136ID.collider:SetHalfLengths(0.3,7.60571,7.5)
level05.colliders.Tile5_wallNr136ID.collider:SetPos(467.5,82.8532,576)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr136ID.collider, 3)
level05.colliders.Tile5_wallNr137ID = {}
level05.colliders.Tile5_wallNr137ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr137ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr137ID.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level05.colliders.Tile5_wallNr137ID.collider:SetHalfLengths(0.3,5.26056,2.5)
level05.colliders.Tile5_wallNr137ID.collider:SetPos(474,85.459,583.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr137ID.collider, 3)
level05.colliders.Tile5_wallNr138ID = {}
level05.colliders.Tile5_wallNr138ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr138ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr138ID.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level05.colliders.Tile5_wallNr138ID.collider:SetHalfLengths(0.3,6.30286,3.3541)
level05.colliders.Tile5_wallNr138ID.collider:SetPos(479,85.1984,586.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr138ID.collider, 3)
level05.colliders.Tile5_wallNr139ID = {}
level05.colliders.Tile5_wallNr139ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr139ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr139ID.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level05.colliders.Tile5_wallNr139ID.collider:SetHalfLengths(0.3,5.26057,2.91548)
level05.colliders.Tile5_wallNr139ID.collider:SetPos(484.5,83.8955,586.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr139ID.collider, 3)
level05.colliders.Tile5_wallNr140ID = {}
level05.colliders.Tile5_wallNr140ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr140ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr140ID.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level05.colliders.Tile5_wallNr140ID.collider:SetHalfLengths(0.3,6.04229,3.90512)
level05.colliders.Tile5_wallNr140ID.collider:SetPos(490,83.635,582.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr140ID.collider, 3)
level05.colliders.Tile5_wallNr141ID = {}
level05.colliders.Tile5_wallNr141ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr141ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr141ID.collider:SetAxes(0.894427, -0, 0.447214, 0, -1, -0, 0.447214, 0, -0.894427)
level05.colliders.Tile5_wallNr141ID.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.Tile5_wallNr141ID.collider:SetPos(494,82.5927,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr141ID.collider, 3)
level05.colliders.Tile5_wallNr142ID = {}
level05.colliders.Tile5_wallNr142ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr142ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr142ID.collider:SetAxes(0.928477, -0, 0.371391, 0, -1, -0, 0.371391, 0, -0.928477)
level05.colliders.Tile5_wallNr142ID.collider:SetHalfLengths(0.3,5.78172,2.69258)
level05.colliders.Tile5_wallNr142ID.collider:SetPos(496,82.3321,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr142ID.collider, 3)
level05.colliders.Tile5_wallNr143ID = {}
level05.colliders.Tile5_wallNr143ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr143ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr143ID.collider:SetAxes(0.970143, -0, 0.242536, 0, -1, -0, 0.242536, 0, -0.970143)
level05.colliders.Tile5_wallNr143ID.collider:SetHalfLengths(0.3,6.30286,4.12311)
level05.colliders.Tile5_wallNr143ID.collider:SetPos(498,81.5504,567)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr143ID.collider, 3)
level05.colliders.Tile5_wallNr144ID = {}
level05.colliders.Tile5_wallNr144ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr144ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr144ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level05.colliders.Tile5_wallNr144ID.collider:SetHalfLengths(0.3,6.824,3.5)
level05.colliders.Tile5_wallNr144ID.collider:SetPos(499,80.2475,559.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr144ID.collider, 3)
level05.colliders.Tile5_wallNr145ID = {}
level05.colliders.Tile5_wallNr145ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr145ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr145ID.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level05.colliders.Tile5_wallNr145ID.collider:SetHalfLengths(0.3,7.34514,3.64005)
level05.colliders.Tile5_wallNr145ID.collider:SetPos(498,78.4235,552.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr145ID.collider, 3)
level05.colliders.Tile5_wallNr146ID = {}
level05.colliders.Tile5_wallNr146ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr146ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr146ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level05.colliders.Tile5_wallNr146ID.collider:SetHalfLengths(0.3,6.82401,3.53553)
level05.colliders.Tile5_wallNr146ID.collider:SetPos(494.5,76.0784,546.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr146ID.collider, 3)
level05.colliders.Tile5_wallNr147ID = {}
level05.colliders.Tile5_wallNr147ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr147ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr147ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level05.colliders.Tile5_wallNr147ID.collider:SetHalfLengths(0.3,7.34514,2.82843)
level05.colliders.Tile5_wallNr147ID.collider:SetPos(490,74.2544,542)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr147ID.collider, 3)
level05.colliders.Tile5_wallNr148ID = {}
level05.colliders.Tile5_wallNr148ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr148ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr148ID.collider:SetAxes(0.581238, 0, -0.813733, 0, -1, -0, -0.813733, 0, -0.581238)
level05.colliders.Tile5_wallNr148ID.collider:SetHalfLengths(0.3,11.7748,4.30116)
level05.colliders.Tile5_wallNr148ID.collider:SetPos(484.5,71.9093,537.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr148ID.collider, 3)
level05.colliders.Tile5_wallNr149ID = {}
level05.colliders.Tile5_wallNr149ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr149ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr149ID.collider:SetAxes(-0.124035, 0, -0.992278, -0, -1, 0, -0.992278, 0, 0.124035)
level05.colliders.Tile5_wallNr149ID.collider:SetHalfLengths(0.3,5.78172,4.03113)
level05.colliders.Tile5_wallNr149ID.collider:SetPos(477,65.1344,535.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr149ID.collider, 3)
level05.colliders.Tile5_wallNr150ID = {}
level05.colliders.Tile5_wallNr150ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr150ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr150ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level05.colliders.Tile5_wallNr150ID.collider:SetHalfLengths(0.3,5.26057,3.16228)
level05.colliders.Tile5_wallNr150ID.collider:SetPos(470,64.3527,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr150ID.collider, 3)
level05.colliders.Tile5_wallNr151ID = {}
level05.colliders.Tile5_wallNr151ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr151ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr151ID.collider:SetAxes(-0.371391, 0, -0.928477, -0, -1, 0, -0.928477, 0, 0.371391)
level05.colliders.Tile5_wallNr151ID.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.Tile5_wallNr151ID.collider:SetPos(462,64.6133,540)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr151ID.collider, 3)
level05.colliders.Tile5_wallNr152ID = {}
level05.colliders.Tile5_wallNr152ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr152ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr152ID.collider:SetAxes(0.857493, 0, -0.514496, 0, -1, -0, -0.514496, 0, -0.857493)
level05.colliders.Tile5_wallNr152ID.collider:SetHalfLengths(0.3,9.16914,5.83095)
level05.colliders.Tile5_wallNr152ID.collider:SetPos(454,65.1344,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr152ID.collider, 3)
level05.colliders.Tile5_wallNr153ID = {}
level05.colliders.Tile5_wallNr153ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr153ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr153ID.collider:SetAxes(0.743294, 0, -0.668965, 0, -1, -0, -0.668965, 0, -0.743294)
level05.colliders.Tile5_wallNr153ID.collider:SetHalfLengths(0.3,6.04229,6.72681)
level05.colliders.Tile5_wallNr153ID.collider:SetPos(446.5,60.9653,527)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr153ID.collider, 3)
level05.colliders.Tile5_wallNr154ID = {}
level05.colliders.Tile5_wallNr154ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr154ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr154ID.collider:SetAxes(0.813733, 0, -0.581238, 0, -1, -0, -0.581238, 0, -0.813733)
level05.colliders.Tile5_wallNr154ID.collider:SetHalfLengths(0.3,6.04229,4.30116)
level05.colliders.Tile5_wallNr154ID.collider:SetPos(439.5,59.923,518.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr154ID.collider, 3)
level05.colliders.Tile5_wallNr155ID = {}
level05.colliders.Tile5_wallNr155ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr155ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr155ID.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level05.colliders.Tile5_wallNr155ID.collider:SetHalfLengths(0.3,5.78171,3.3541)
level05.colliders.Tile5_wallNr155ID.collider:SetPos(435.5,60.9653,512)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr155ID.collider, 3)
level05.colliders.Tile5_wallNr157ID = {}
level05.colliders.Tile5_wallNr157ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr157ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr157ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level05.colliders.Tile5_wallNr157ID.collider:SetHalfLengths(0.3,5,0.5)
level05.colliders.Tile5_wallNr157ID.collider:SetPos(577,84.9378,639.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr157ID.collider, 3)
level05.props.t4s5ID = {}
level05.props.t4s5ID.model = Assets.LoadModel('Models/tile4_s5.model')
level05.props.t4s5ID.transformID = Gear.BindStaticInstance(level05.props.t4s5ID.model)
Transform.SetPosition(level05.props.t4s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t4s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t4s5ID.transformID, {x=-0, y=0, z=-0})
level05.colliders.Tile5_wallNr92ID = {}
level05.colliders.Tile5_wallNr92ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr92ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr92ID.collider:SetAxes(-0.999014, 0, -0.0444006, -0, -1, 0, -0.0444006, 0, 0.999014)
level05.colliders.Tile5_wallNr92ID.collider:SetHalfLengths(0.3,12.5497,22.5222)
level05.colliders.Tile5_wallNr92ID.collider:SetPos(419,77.8589,453.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr92ID.collider, 3)
level05.colliders.Tile5_wallNr104ID = {}
level05.colliders.Tile5_wallNr104ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr104ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr104ID.collider:SetAxes(-0.999815, 0, 0.0192272, 0, -1, 0, 0.0192272, 0, 0.999815)
level05.colliders.Tile5_wallNr104ID.collider:SetHalfLengths(0.3,17.8789,26.0048)
level05.colliders.Tile5_wallNr104ID.collider:SetPos(418.5,70.3092,502)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr104ID.collider, 3)
level05.colliders.Tile5_wallNr105ID = {}
level05.colliders.Tile5_wallNr105ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr105ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr105ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr105ID.collider:SetHalfLengths(0.3,9.21893,48.5)
level05.colliders.Tile5_wallNr105ID.collider:SetPos(409,78.5251,479.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr105ID.collider, 3)
level05.colliders.Tile5_wallNr156ID = {}
level05.colliders.Tile5_wallNr156ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr156ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr156ID.collider:SetAxes(0.948683, 0, -0.316228, 0, -1, -0, -0.316228, 0, -0.948683)
level05.colliders.Tile5_wallNr156ID.collider:SetHalfLengths(0.3,5.4441,1.58114)
level05.colliders.Tile5_wallNr156ID.collider:SetPos(408.5,82.744,526.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr156ID.collider, 3)
level05.colliders.Tile5_wallNr158ID = {}
level05.colliders.Tile5_wallNr158ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr158ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr158ID.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level05.colliders.Tile5_wallNr158ID.collider:SetHalfLengths(0.3,5.66615,1.80278)
level05.colliders.Tile5_wallNr158ID.collider:SetPos(420,83.1881,526.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr158ID.collider, 3)
level05.props.CrystalID = {}
level05.props.CrystalID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.CrystalID.transformID = Gear.BindStaticInstance(level05.props.CrystalID.model)
Transform.SetPosition(level05.props.CrystalID.transformID, {x=559.253, y=69.928, z=424.467})
Transform.SetScaleNonUniform(level05.props.CrystalID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.CrystalID.transformID, {x=-0.198749, y=1.58087, z=-0.631867})
level05.props.CrystalID.lightIndex = Light.addLight(553.253, 69.928, 432.467, 0, 1, 1, 30,4)
level05.props.Crystal1ID = {}
level05.props.Crystal1ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal1ID.transformID = Gear.BindStaticInstance(level05.props.Crystal1ID.model)
Transform.SetPosition(level05.props.Crystal1ID.transformID, {x=588, y=91.3975, z=457})
Transform.SetScaleNonUniform(level05.props.Crystal1ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal1ID.transformID, {x=-0, y=0.963286, z=-2.71347})
level05.props.Crystal1ID.lightIndex = Light.addLight(586, 83.3975, 455, 0, 1, 1, 30,4)
level05.props.Crystal2ID = {}
level05.props.Crystal2ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal2ID.transformID = Gear.BindStaticInstance(level05.props.Crystal2ID.model)
Transform.SetPosition(level05.props.Crystal2ID.transformID, {x=563.245, y=88.0641, z=480.75})
Transform.SetScaleNonUniform(level05.props.Crystal2ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal2ID.transformID, {x=-1.59406, y=-1.08236, z=2.52801})
level05.props.Crystal2ID.lightIndex = Light.addLight(571.245, 84.0641, 480.75, 0, 1, 1, 30,4)
level05.props.Crystal3ID = {}
level05.props.Crystal3ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal3ID.transformID = Gear.BindStaticInstance(level05.props.Crystal3ID.model)
Transform.SetPosition(level05.props.Crystal3ID.transformID, {x=547.152, y=76.9418, z=460.579})
Transform.SetScaleNonUniform(level05.props.Crystal3ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal3ID.transformID, {x=2.16321, y=0, z=1.00929})
level05.props.Crystal3ID.lightIndex = Light.addLight(555.152, 76.9418, 452.579, 0, 1, 1, 30,4)
level05.props.Crystal4ID = {}
level05.props.Crystal4ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal4ID.transformID = Gear.BindStaticInstance(level05.props.Crystal4ID.model)
Transform.SetPosition(level05.props.Crystal4ID.transformID, {x=583.5, y=103, z=512.5})
Transform.SetScaleNonUniform(level05.props.Crystal4ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal4ID.transformID, {x=-0, y=0, z=2.71513})
level05.props.Crystal4ID.lightIndex = Light.addLight(587.5, 95, 516.5, 0, 1, 1, 30,4)
level05.props.Crystal5ID = {}
level05.props.Crystal5ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal5ID.transformID = Gear.BindStaticInstance(level05.props.Crystal5ID.model)
Transform.SetPosition(level05.props.Crystal5ID.transformID, {x=578, y=90.3125, z=538.5})
Transform.SetScaleNonUniform(level05.props.Crystal5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal5ID.transformID, {x=-1.0303, y=0, z=1.20647})
level05.props.Crystal5ID.lightIndex = Light.addLight(586, 90.3125, 538.5, 0, 1, 1, 30,4)
level05.props.Crystal6ID = {}
level05.props.Crystal6ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal6ID.transformID = Gear.BindStaticInstance(level05.props.Crystal6ID.model)
Transform.SetPosition(level05.props.Crystal6ID.transformID, {x=612.239, y=100.25, z=532.578})
Transform.SetScaleNonUniform(level05.props.Crystal6ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal6ID.transformID, {x=1.45919, y=0.943913, z=-2.22123})
level05.props.Crystal6ID.lightIndex = Light.addLight(604.239, 98.25, 532.578, 0, 1, 1, 30,4)
level05.props.Crystal7ID = {}
level05.props.Crystal7ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal7ID.transformID = Gear.BindStaticInstance(level05.props.Crystal7ID.model)
Transform.SetPosition(level05.props.Crystal7ID.transformID, {x=601, y=111.625, z=547.27})
Transform.SetScaleNonUniform(level05.props.Crystal7ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal7ID.transformID, {x=-0, y=0, z=3.2123})
level05.props.Crystal7ID.lightIndex = Light.addLight(601, 103.625, 547.27, 0, 1, 1, 30,4)
level05.props.Crystal8ID = {}
level05.props.Crystal8ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal8ID.transformID = Gear.BindStaticInstance(level05.props.Crystal8ID.model)
Transform.SetPosition(level05.props.Crystal8ID.transformID, {x=613.5, y=104.625, z=575.5})
Transform.SetScaleNonUniform(level05.props.Crystal8ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal8ID.transformID, {x=1.50396, y=0.110371, z=-2.12905})
level05.props.Crystal8ID.lightIndex = Light.addLight(609.5, 102.625, 573.5, 0, 1, 1, 30,4)
level05.props.Crystal9ID = {}
level05.props.Crystal9ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal9ID.transformID = Gear.BindStaticInstance(level05.props.Crystal9ID.model)
Transform.SetPosition(level05.props.Crystal9ID.transformID, {x=606.05, y=86.6875, z=481.468})
Transform.SetScaleNonUniform(level05.props.Crystal9ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal9ID.transformID, {x=1.06333, y=-0.0166414, z=-2.09508})
level05.props.Crystal9ID.lightIndex = Light.addLight(598.05, 86.6875, 485.468, 0, 1, 1, 30,4)
level05.props.Crystal10ID = {}
level05.props.Crystal10ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal10ID.transformID = Gear.BindStaticInstance(level05.props.Crystal10ID.model)
Transform.SetPosition(level05.props.Crystal10ID.transformID, {x=509.706, y=59.5425, z=447.442})
Transform.SetScaleNonUniform(level05.props.Crystal10ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal10ID.transformID, {x=0.170728, y=0, z=0.319092})
level05.props.Crystal10ID.lightIndex = Light.addLight(505.706, 59.5425, 439.442, 0, 1, 1, 30,4)
level05.props.Crystal11ID = {}
level05.props.Crystal11ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal11ID.transformID = Gear.BindStaticInstance(level05.props.Crystal11ID.model)
Transform.SetPosition(level05.props.Crystal11ID.transformID, {x=514.321, y=75.75, z=405.863})
Transform.SetScaleNonUniform(level05.props.Crystal11ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal11ID.transformID, {x=-0.259607, y=0.695798, z=-1.30789})
level05.props.Crystal11ID.lightIndex = Light.addLight(508.321, 75.75, 409.863, 0, 1, 1, 30,4)
level05.props.Crystal12ID = {}
level05.props.Crystal12ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal12ID.transformID = Gear.BindStaticInstance(level05.props.Crystal12ID.model)
Transform.SetPosition(level05.props.Crystal12ID.transformID, {x=519.119, y=48.9107, z=404.748})
Transform.SetScaleNonUniform(level05.props.Crystal12ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal12ID.transformID, {x=-1.2884, y=0, z=-0.54079})
level05.props.Crystal12ID.lightIndex = Light.addLight(511.119, 48.9107, 412.748, 0, 1, 1, 30,4)
level05.props.BlockerClosedIce2ID = {}
level05.props.BlockerClosedIce2ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerClosedIce2ID.transformID = Gear.BindStaticInstance(level05.props.BlockerClosedIce2ID.model)
Transform.SetPosition(level05.props.BlockerClosedIce2ID.transformID, {x=528.56, y=51.3838, z=431.977})
Transform.SetScaleNonUniform(level05.props.BlockerClosedIce2ID.transformID, 1, 2, 4)
Transform.SetRotation(level05.props.BlockerClosedIce2ID.transformID, {x=-0, y=-0.375734, z=-0})
level05.props.BlockerClosedIce2ID.collider = OBBCollider.Create(-1)
level05.props.BlockerClosedIce2ID.collider:SetOffset(0,0,0)
level05.props.BlockerClosedIce2ID.collider:SetAxes(0.930238, 0, 0.366956, 0, -1, 0, -0.366956, 0, 0.930238)
level05.props.BlockerClosedIce2ID.collider:SetHalfLengths(0.5,18,28)
level05.props.BlockerClosedIce2ID.collider:SetPos(528.56,51.3838,431.977)
CollisionHandler.AddOBB(level05.props.BlockerClosedIce2ID.collider, 3)
level05.props.BlockerOpenIce2ID = {}
level05.props.BlockerOpenIce2ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerOpenIce2ID.transformID = Gear.BindStaticInstance(level05.props.BlockerOpenIce2ID.model)
Transform.SetPosition(level05.props.BlockerOpenIce2ID.transformID, {x=515.942, y=35.3545, z=429.163})
Transform.SetScaleNonUniform(level05.props.BlockerOpenIce2ID.transformID, 1, 2, 4)
Transform.SetRotation(level05.props.BlockerOpenIce2ID.transformID, {x=-0, y=-0.366113, z=-0})
level05.props.BlockerClosedFire2ID = {}
level05.props.BlockerClosedFire2ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerClosedFire2ID.transformID = Gear.BindStaticInstance(level05.props.BlockerClosedFire2ID.model)
Transform.SetPosition(level05.props.BlockerClosedFire2ID.transformID, {x=451.922, y=61.9099, z=450.578})
Transform.SetScaleNonUniform(level05.props.BlockerClosedFire2ID.transformID, 1, 2, 4)
Transform.SetRotation(level05.props.BlockerClosedFire2ID.transformID, {x=-0, y=-2.72207, z=-0})
level05.props.BlockerClosedFire2ID.collider = OBBCollider.Create(-1)
level05.props.BlockerClosedFire2ID.collider:SetOffset(0,0,0)
level05.props.BlockerClosedFire2ID.collider:SetAxes(-0.913285, 0, 0.407322, -0, -1, 0, -0.407322, 0, -0.913285)
level05.props.BlockerClosedFire2ID.collider:SetHalfLengths(0.5,18,28)
level05.props.BlockerClosedFire2ID.collider:SetPos(451.922,61.9099,450.578)
CollisionHandler.AddOBB(level05.props.BlockerClosedFire2ID.collider, 3)
level05.props.BlockerOpenFire2ID = {}
level05.props.BlockerOpenFire2ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerOpenFire2ID.transformID = Gear.BindStaticInstance(level05.props.BlockerOpenFire2ID.model)
Transform.SetPosition(level05.props.BlockerOpenFire2ID.transformID, {x=461.483, y=43.5325, z=445.834})
Transform.SetScaleNonUniform(level05.props.BlockerOpenFire2ID.transformID, 1, 2, 4)
Transform.SetRotation(level05.props.BlockerOpenFire2ID.transformID, {x=-0, y=-2.70486, z=-0})
level05.props.BlockerClosedNature2ID = {}
level05.props.BlockerClosedNature2ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerClosedNature2ID.transformID = Gear.BindStaticInstance(level05.props.BlockerClosedNature2ID.model)
Transform.SetPosition(level05.props.BlockerClosedNature2ID.transformID, {x=433.534, y=77.993, z=414.52})
Transform.SetScaleNonUniform(level05.props.BlockerClosedNature2ID.transformID, 1, 1.25, 1.8)
Transform.SetRotation(level05.props.BlockerClosedNature2ID.transformID, {x=-0, y=-2.80738, z=-0})
level05.props.BlockerClosedNature2ID.collider = OBBCollider.Create(-1)
level05.props.BlockerClosedNature2ID.collider:SetOffset(0,0,0)
level05.props.BlockerClosedNature2ID.collider:SetAxes(-0.944668, 0, 0.328029, -0, -1, 0, -0.328029, 0, -0.944668)
level05.props.BlockerClosedNature2ID.collider:SetHalfLengths(0.5,11.25,12.6)
level05.props.BlockerClosedNature2ID.collider:SetPos(433.534,77.993,414.52)
CollisionHandler.AddOBB(level05.props.BlockerClosedNature2ID.collider, 3)
level05.props.BlockerOpenNature2ID = {}
level05.props.BlockerOpenNature2ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerOpenNature2ID.transformID = Gear.BindStaticInstance(level05.props.BlockerOpenNature2ID.model)
Transform.SetPosition(level05.props.BlockerOpenNature2ID.transformID, {x=443.325, y=63.4909, z=410.669})
Transform.SetScaleNonUniform(level05.props.BlockerOpenNature2ID.transformID, 1, 1.25, 1.8)
Transform.SetRotation(level05.props.BlockerOpenNature2ID.transformID, {x=-0, y=-2.82828, z=-0})
level05.props.BlockerClosedNature3ID = {}
level05.props.BlockerClosedNature3ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerClosedNature3ID.transformID = Gear.BindStaticInstance(level05.props.BlockerClosedNature3ID.model)
Transform.SetPosition(level05.props.BlockerClosedNature3ID.transformID, {x=457.75, y=90.0679, z=585})
Transform.SetScaleNonUniform(level05.props.BlockerClosedNature3ID.transformID, 1, 2, 3)
Transform.SetRotation(level05.props.BlockerClosedNature3ID.transformID, {x=-0, y=-1.04948, z=-0})
level05.props.BlockerClosedNature3ID.collider = OBBCollider.Create(-1)
level05.props.BlockerClosedNature3ID.collider:SetOffset(0,0,0)
level05.props.BlockerClosedNature3ID.collider:SetAxes(0.498026, 0, 0.867162, 0, -1, 0, -0.867162, 0, 0.498026)
level05.props.BlockerClosedNature3ID.collider:SetHalfLengths(0.5,18,21)
level05.props.BlockerClosedNature3ID.collider:SetPos(457.75,90.0679,585)
CollisionHandler.AddOBB(level05.props.BlockerClosedNature3ID.collider, 3)
level05.props.BlockerOpenNature3ID = {}
level05.props.BlockerOpenNature3ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerOpenNature3ID.transformID = Gear.BindStaticInstance(level05.props.BlockerOpenNature3ID.model)
Transform.SetPosition(level05.props.BlockerOpenNature3ID.transformID, {x=452.03, y=76.5454, z=573.808})
Transform.SetScaleNonUniform(level05.props.BlockerOpenNature3ID.transformID, 1, 1.45, 2.2)
Transform.SetRotation(level05.props.BlockerOpenNature3ID.transformID, {x=-0, y=-1.02309, z=-0})
level05.colliders.Tile5_wallNr93ID = {}
level05.colliders.Tile5_wallNr93ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr93ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr93ID.collider:SetAxes(-0.966235, 0, -0.257663, -0, -1, 0, -0.257663, 0, 0.966235)
level05.colliders.Tile5_wallNr93ID.collider:SetHalfLengths(0.3,5,7.76209)
level05.colliders.Tile5_wallNr93ID.collider:SetPos(579,85.4086,584.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr93ID.collider, 3)
level05.colliders.Tile5_wallNr159ID = {}
level05.colliders.Tile5_wallNr159ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr159ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr159ID.collider:SetAxes(-0.851658, 0, -0.524097, -0, -1, 0, -0.524097, 0, 0.851658)
level05.colliders.Tile5_wallNr159ID.collider:SetHalfLengths(0.3,6.11024,7.63217)
level05.colliders.Tile5_wallNr159ID.collider:SetPos(573,85.4086,598.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr159ID.collider, 3)
level05.colliders.Tile5_wallNr160ID = {}
level05.colliders.Tile5_wallNr160ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr160ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr160ID.collider:SetAxes(-0.644136, 0, -0.764911, -0, -1, 0, -0.764911, 0, 0.644136)
level05.colliders.Tile5_wallNr160ID.collider:SetHalfLengths(0.3,5.22205,12.4197)
level05.colliders.Tile5_wallNr160ID.collider:SetPos(559.5,84.2984,613)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr160ID.collider, 3)
level05.colliders.Tile5_wallNr161ID = {}
level05.colliders.Tile5_wallNr161ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr161ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr161ID.collider:SetAxes(-0.400819, 0, -0.916157, -0, -1, 0, -0.916157, 0, 0.400819)
level05.colliders.Tile5_wallNr161ID.collider:SetHalfLengths(0.3,5.44411,8.73212)
level05.colliders.Tile5_wallNr161ID.collider:SetPos(542,84.5204,624.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr161ID.collider, 3)
level05.colliders.Tile5_wallNr162ID = {}
level05.colliders.Tile5_wallNr162ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr162ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr162ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level05.colliders.Tile5_wallNr162ID.collider:SetHalfLengths(0.3,5,8)
level05.colliders.Tile5_wallNr162ID.collider:SetPos(526,84.9645,628)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr162ID.collider, 3)
level05.colliders.Tile5_wallNr163ID = {}
level05.colliders.Tile5_wallNr163ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr163ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr163ID.collider:SetAxes(0.994505, 0, -0.104685, 0, -1, -0, -0.104685, 0, -0.994505)
level05.colliders.Tile5_wallNr163ID.collider:SetHalfLengths(0.3,5.66615,9.55249)
level05.colliders.Tile5_wallNr163ID.collider:SetPos(517,84.9645,618.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr163ID.collider, 3)
level05.colliders.Tile5_wallNr164ID = {}
level05.colliders.Tile5_wallNr164ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr164ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr164ID.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level05.colliders.Tile5_wallNr164ID.collider:SetHalfLengths(0.3,6.99844,9.48683)
level05.colliders.Tile5_wallNr164ID.collider:SetPos(519,84.2984,600)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr164ID.collider, 3)
level05.colliders.Tile5_wallNr165ID = {}
level05.colliders.Tile5_wallNr165ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr165ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr165ID.collider:SetAxes(0.952926, -0, 0.303204, 0, -1, -0, 0.303204, 0, -0.952926)
level05.colliders.Tile5_wallNr165ID.collider:SetHalfLengths(0.3,8.55279,11.5434)
level05.colliders.Tile5_wallNr165ID.collider:SetPos(525.5,82.2999,580)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr165ID.collider, 3)
level05.colliders.Tile5_wallNr166ID = {}
level05.colliders.Tile5_wallNr166ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr166ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr166ID.collider:SetAxes(0.976187, -0, 0.21693, 0, -1, -0, 0.21693, 0, -0.976187)
level05.colliders.Tile5_wallNr166ID.collider:SetHalfLengths(0.3,8.99688,9.21954)
level05.colliders.Tile5_wallNr166ID.collider:SetPos(531,78.7471,560)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr166ID.collider, 3)
level05.colliders.Tile5_wallNr167ID = {}
level05.colliders.Tile5_wallNr167ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr167ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr167ID.collider:SetAxes(0.993151, 0, -0.116841, 0, -1, -0, -0.116841, 0, -0.993151)
level05.colliders.Tile5_wallNr167ID.collider:SetHalfLengths(0.3,8.77484,8.55862)
level05.colliders.Tile5_wallNr167ID.collider:SetPos(532,74.7502,542.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr167ID.collider, 3)
level05.colliders.Tile5_wallNr168ID = {}
level05.colliders.Tile5_wallNr168ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr168ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr168ID.collider:SetAxes(0.948683, 0, -0.316228, 0, -1, -0, -0.316228, 0, -0.948683)
level05.colliders.Tile5_wallNr168ID.collider:SetHalfLengths(0.3,9.66303,9.48683)
level05.colliders.Tile5_wallNr168ID.collider:SetPos(528,70.9754,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr168ID.collider, 3)
level05.colliders.Tile5_wallNr169ID = {}
level05.colliders.Tile5_wallNr169ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr169ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr169ID.collider:SetAxes(0.747409, 0, -0.664364, 0, -1, -0, -0.664364, 0, -0.747409)
level05.colliders.Tile5_wallNr169ID.collider:SetHalfLengths(0.3,5.8882,6.0208)
level05.colliders.Tile5_wallNr169ID.collider:SetPos(521,66.3124,511.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr169ID.collider, 3)
level05.props.BlockerClosedIce3ID = {}
level05.props.BlockerClosedIce3ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerClosedIce3ID.transformID = Gear.BindStaticInstance(level05.props.BlockerClosedIce3ID.model)
Transform.SetPosition(level05.props.BlockerClosedIce3ID.transformID, {x=567.303, y=90.2649, z=625.726})
Transform.SetScaleNonUniform(level05.props.BlockerClosedIce3ID.transformID, 1, 2, 3)
Transform.SetRotation(level05.props.BlockerClosedIce3ID.transformID, {x=-0, y=-2.36027, z=-0})
level05.props.BlockerClosedIce3ID.collider = OBBCollider.Create(-1)
level05.props.BlockerClosedIce3ID.collider:SetOffset(0,0,0)
level05.props.BlockerClosedIce3ID.collider:SetAxes(-0.709982, 0, 0.70422, -0, -1, 0, -0.70422, 0, -0.709982)
level05.props.BlockerClosedIce3ID.collider:SetHalfLengths(0.5,18,21)
level05.props.BlockerClosedIce3ID.collider:SetPos(567.303,90.2649,625.726)
CollisionHandler.AddOBB(level05.props.BlockerClosedIce3ID.collider, 3)
level05.props.BlockerOpenIce3ID = {}
level05.props.BlockerOpenIce3ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerOpenIce3ID.transformID = Gear.BindStaticInstance(level05.props.BlockerOpenIce3ID.model)
Transform.SetPosition(level05.props.BlockerOpenIce3ID.transformID, {x=575.828, y=77.0846, z=615.027})
Transform.SetScaleNonUniform(level05.props.BlockerOpenIce3ID.transformID, 1, 2, 3)
Transform.SetRotation(level05.props.BlockerOpenIce3ID.transformID, {x=-0, y=-2.32398, z=-0})
level05.props.BlockerClosedFire3ID = {}
level05.props.BlockerClosedFire3ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerClosedFire3ID.transformID = Gear.BindStaticInstance(level05.props.BlockerClosedFire3ID.model)
Transform.SetPosition(level05.props.BlockerClosedFire3ID.transformID, {x=510.55, y=86.2842, z=578.143})
Transform.SetScaleNonUniform(level05.props.BlockerClosedFire3ID.transformID, 1, 2, 3)
Transform.SetRotation(level05.props.BlockerClosedFire3ID.transformID, {x=-0, y=-1.79454, z=-0})
level05.props.BlockerClosedFire3ID.collider = OBBCollider.Create(-1)
level05.props.BlockerClosedFire3ID.collider:SetOffset(0,0,0)
level05.props.BlockerClosedFire3ID.collider:SetAxes(-0.221886, 0, 0.975073, -0, -1, 0, -0.975073, 0, -0.221886)
level05.props.BlockerClosedFire3ID.collider:SetHalfLengths(0.5,18,21)
level05.props.BlockerClosedFire3ID.collider:SetPos(510.55,86.2842,578.143)
CollisionHandler.AddOBB(level05.props.BlockerClosedFire3ID.collider, 3)
level05.props.BlockerOpenFire3ID = {}
level05.props.BlockerOpenFire3ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerOpenFire3ID.transformID = Gear.BindStaticInstance(level05.props.BlockerOpenFire3ID.model)
Transform.SetPosition(level05.props.BlockerOpenFire3ID.transformID, {x=514.035, y=69.8671, z=564.464})
Transform.SetScaleNonUniform(level05.props.BlockerOpenFire3ID.transformID, 1, 2, 3)
Transform.SetRotation(level05.props.BlockerOpenFire3ID.transformID, {x=-0, y=-1.81179, z=-0})
level05.enemies.GoblinIce6ID = CreateEnemy(ENEMY_MELEE, {x=577, y=57.0313, z=469}, 2)
level05.enemies.GoblinIce6ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce7ID = CreateEnemy(ENEMY_MELEE, {x=579.5, y=55.9063, z=461.5}, 2)
level05.enemies.GoblinIce7ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce8ID = CreateEnemy(ENEMY_MELEE, {x=573.5, y=58.2813, z=475}, 2)
level05.enemies.GoblinIce8ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce9ID = CreateEnemy(ENEMY_MELEE, {x=584, y=59.375, z=475.5}, 2)
level05.enemies.GoblinIce9ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce10ID = CreateEnemy(ENEMY_MELEE, {x=570, y=55.9063, z=466.75}, 2)
level05.enemies.GoblinIce10ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce11ID = CreateEnemy(ENEMY_MELEE, {x=605.5, y=82.625, z=580.5}, 2)
level05.enemies.GoblinIce11ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce12ID = CreateEnemy(ENEMY_MELEE, {x=602, y=79.875, z=566}, 2)
level05.enemies.GoblinIce12ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce13ID = CreateEnemy(ENEMY_MELEE, {x=592, y=79.6875, z=564.5}, 2)
level05.enemies.GoblinIce13ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce14ID = CreateEnemy(ENEMY_MELEE, {x=595, y=81.25, z=574}, 2)
level05.enemies.GoblinIce14ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce15ID = CreateEnemy(ENEMY_MELEE, {x=602.5, y=81.375, z=574.5}, 2)
level05.enemies.GoblinIce15ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce16ID = CreateEnemy(ENEMY_MELEE, {x=605.5, y=80.875, z=570.5}, 2)
level05.enemies.GoblinIce16ID:SetStats(9, 50, 30)

level05.enemies.GoblinIce17ID = CreateEnemy(ENEMY_MELEE, {x=596, y=79.125, z=564}, 2)
level05.enemies.GoblinIce17ID:SetStats(9, 50, 30)

level05.enemies.GoblinFire8ID = CreateEnemy(ENEMY_MELEE, {x=510.75, y=61.3125, z=516.5}, 0)
level05.enemies.GoblinFire8ID:SetStats(9, 50, 30)

level05.enemies.GoblinFire9ID = CreateEnemy(ENEMY_MELEE, {x=517.5, y=69.4375, z=537.5}, 0)
level05.enemies.GoblinFire9ID:SetStats(9, 50, 30)

level05.enemies.GoblinFire10ID = CreateEnemy(ENEMY_MELEE, {x=500.5, y=63.8125, z=527}, 0)
level05.enemies.GoblinFire10ID:SetStats(9, 50, 30)

level05.enemies.GoblinFire11ID = CreateEnemy(ENEMY_MELEE, {x=511.25, y=62.9063, z=522}, 0)
level05.enemies.GoblinFire11ID:SetStats(9, 50, 30)

level05.enemies.GoblinFire12ID = CreateEnemy(ENEMY_MELEE, {x=505.75, y=66.5625, z=533}, 0)
level05.enemies.GoblinFire12ID:SetStats(9, 50, 30)

level05.enemies.GoblinFire13ID = CreateEnemy(ENEMY_MELEE, {x=511.5, y=69.3125, z=539}, 0)
level05.enemies.GoblinFire13ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature8ID = CreateEnemy(ENEMY_MELEE, {x=422.25, y=83.75, z=548.5}, 1)
level05.enemies.GoblinNature8ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature9ID = CreateEnemy(ENEMY_MELEE, {x=408.5, y=83.625, z=542.5}, 1)
level05.enemies.GoblinNature9ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature10ID = CreateEnemy(ENEMY_MELEE, {x=421, y=83.9375, z=540}, 1)
level05.enemies.GoblinNature10ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature11ID = CreateEnemy(ENEMY_MELEE, {x=412.25, y=83.75, z=534.5}, 1)
level05.enemies.GoblinNature11ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature12ID = CreateEnemy(ENEMY_MELEE, {x=415.75, y=84, z=546}, 1)
level05.enemies.GoblinNature12ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature13ID = CreateEnemy(ENEMY_MELEE, {x=414.75, y=84.0625, z=537}, 1)
level05.enemies.GoblinNature13ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature14ID = CreateEnemy(ENEMY_MELEE, {x=403.5, y=82.9375, z=537}, 1)
level05.enemies.GoblinNature14ID:SetStats(9, 50, 30)

level05.enemies.GoblinNature15ID = CreateEnemy(ENEMY_MELEE, {x=417.25, y=84, z=542.5}, 1)
level05.enemies.GoblinNature15ID:SetStats(9, 50, 30)

level05.props.Tile5_FenceID = {}
level05.props.Tile5_FenceID.model = Assets.LoadModel('Models/tile5_fence.model')
level05.props.Tile5_FenceID.transformID = Gear.BindStaticInstance(level05.props.Tile5_FenceID.model)
Transform.SetPosition(level05.props.Tile5_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.Tile5_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Tile5_FenceID.transformID, {x=-0, y=0, z=-0})
level05.colliders.Tile5_wallNr48ID = {}
level05.colliders.Tile5_wallNr48ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr48ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr48ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr48ID.collider:SetHalfLengths(0.3,5.0977,0.5)
level05.colliders.Tile5_wallNr48ID.collider:SetPos(467,60.4414,383.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr48ID.collider, 3)
level05.colliders.Tile5_wallNr49ID = {}
level05.colliders.Tile5_wallNr49ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr49ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr49ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr49ID.collider:SetHalfLengths(0.3,5.66615,6.5)
level05.colliders.Tile5_wallNr49ID.collider:SetPos(467,60.5391,390.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr49ID.collider, 3)
level05.colliders.Tile5_wallNr50ID = {}
level05.colliders.Tile5_wallNr50ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr50ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr50ID.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.Tile5_wallNr50ID.collider:SetHalfLengths(0.3,6.99844,3.16228)
level05.colliders.Tile5_wallNr50ID.collider:SetPos(468,61.2052,400)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr50ID.collider, 3)
level05.colliders.Tile5_wallNr51ID = {}
level05.colliders.Tile5_wallNr51ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr51ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr51ID.collider:SetAxes(0.274721, 0, -0.961524, 0, -1, -0, -0.961524, 0, -0.274721)
level05.colliders.Tile5_wallNr51ID.collider:SetHalfLengths(0.3,12.1056,3.64005)
level05.colliders.Tile5_wallNr51ID.collider:SetPos(447.5,63.4257,421)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr51ID.collider, 3)
level05.colliders.Tile5_wallNr52ID = {}
level05.colliders.Tile5_wallNr52ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr52ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr52ID.collider:SetAxes(-0.301131, 0, -0.953583, -0, -1, 0, -0.953583, 0, 0.301131)
level05.colliders.Tile5_wallNr52ID.collider:SetHalfLengths(0.3,12.1056,9.96243)
level05.colliders.Tile5_wallNr52ID.collider:SetPos(434.5,70.5313,423)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr52ID.collider, 3)
level05.colliders.Tile5_wallNr53ID = {}
level05.colliders.Tile5_wallNr53ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr53ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr53ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr53ID.collider:SetHalfLengths(0.3,5.22205,3.53553)
level05.colliders.Tile5_wallNr53ID.collider:SetPos(422.5,77.6369,428.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr53ID.collider, 3)
level05.colliders.Tile5_wallNr54ID = {}
level05.colliders.Tile5_wallNr54ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr54ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr54ID.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level05.colliders.Tile5_wallNr54ID.collider:SetHalfLengths(0.3,5.22205,2.54951)
level05.colliders.Tile5_wallNr54ID.collider:SetPos(423.5,82.522,525.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr54ID.collider, 3)
level05.colliders.Tile5_wallNr55ID = {}
level05.colliders.Tile5_wallNr55ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr55ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr55ID.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level05.colliders.Tile5_wallNr55ID.collider:SetHalfLengths(0.3,5.44409,3.80789)
level05.colliders.Tile5_wallNr55ID.collider:SetPos(429.5,82.2999,527.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr55ID.collider, 3)
level05.colliders.Tile5_wallNr56ID = {}
level05.colliders.Tile5_wallNr56ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr56ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr56ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr56ID.collider:SetHalfLengths(0.3,5.22205,3.53553)
level05.colliders.Tile5_wallNr56ID.collider:SetPos(435.5,81.8558,531.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr56ID.collider, 3)
level05.colliders.Tile5_wallNr57ID = {}
level05.colliders.Tile5_wallNr57ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr57ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr57ID.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.Tile5_wallNr57ID.collider:SetHalfLengths(0.3,5.4441,3.16228)
level05.colliders.Tile5_wallNr57ID.collider:SetPos(439,81.6338,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr57ID.collider, 3)
level05.colliders.Tile5_wallNr58ID = {}
level05.colliders.Tile5_wallNr58ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr58ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr58ID.collider:SetAxes(-0.868243, 0, 0.496139, 0, -1, 0, 0.496139, 0, 0.868243)
level05.colliders.Tile5_wallNr58ID.collider:SetHalfLengths(0.3,5.8882,4.03113)
level05.colliders.Tile5_wallNr58ID.collider:SetPos(442,81.1897,543.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr58ID.collider, 3)
level05.colliders.Tile5_wallNr87ID = {}
level05.colliders.Tile5_wallNr87ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr87ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr87ID.collider:SetAxes(-0.813733, 0, 0.581238, 0, -1, 0, 0.581238, 0, 0.813733)
level05.colliders.Tile5_wallNr87ID.collider:SetHalfLengths(0.3,5.44411,4.30116)
level05.colliders.Tile5_wallNr87ID.collider:SetPos(446.5,80.3015,550.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr87ID.collider, 3)
level05.colliders.Tile5_wallNr89ID = {}
level05.colliders.Tile5_wallNr89ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr89ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr89ID.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.Tile5_wallNr89ID.collider:SetHalfLengths(0.3,5.22205,2.12132)
level05.colliders.Tile5_wallNr89ID.collider:SetPos(450.5,80.7456,555.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr89ID.collider, 3)
level05.colliders.Tile5_wallNr101ID = {}
level05.colliders.Tile5_wallNr101ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr101ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr101ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.Tile5_wallNr101ID.collider:SetHalfLengths(0.3,6.11024,3.60555)
level05.colliders.Tile5_wallNr101ID.collider:SetPos(455,80.9676,559)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr101ID.collider, 3)
level05.colliders.Tile5_wallNr102ID = {}
level05.colliders.Tile5_wallNr102ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr102ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr102ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level05.colliders.Tile5_wallNr102ID.collider:SetHalfLengths(0.3,5.4441,3.16228)
level05.colliders.Tile5_wallNr102ID.collider:SetPos(405,82.522,528)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr102ID.collider, 3)
level05.colliders.Tile5_wallNr103ID = {}
level05.colliders.Tile5_wallNr103ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr103ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr103ID.collider:SetAxes(-0.894427, 0, -0.447214, -0, -1, 0, -0.447214, 0, 0.894427)
level05.colliders.Tile5_wallNr103ID.collider:SetHalfLengths(0.3,5,3.3541)
level05.colliders.Tile5_wallNr103ID.collider:SetPos(400.5,82.0779,532)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr103ID.collider, 3)
level05.colliders.Tile5_wallNr106ID = {}
level05.colliders.Tile5_wallNr106ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr106ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr106ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.Tile5_wallNr106ID.collider:SetHalfLengths(0.3,5.22205,3.5)
level05.colliders.Tile5_wallNr106ID.collider:SetPos(399,82.0779,538.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr106ID.collider, 3)
level05.colliders.Tile5_wallNr107ID = {}
level05.colliders.Tile5_wallNr107ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr107ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr107ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.Tile5_wallNr107ID.collider:SetHalfLengths(0.3,6.11024,3.60555)
level05.colliders.Tile5_wallNr107ID.collider:SetPos(402,81.8558,544)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr107ID.collider, 3)
level05.colliders.Tile5_wallNr108ID = {}
level05.colliders.Tile5_wallNr108ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr108ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr108ID.collider:SetAxes(-0.316228, 0, 0.948683, 0, -1, 0, 0.948683, 0, 0.316228)
level05.colliders.Tile5_wallNr108ID.collider:SetHalfLengths(0.3,5.44409,3.16228)
level05.colliders.Tile5_wallNr108ID.collider:SetPos(408,82.9661,547)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr108ID.collider, 3)
level05.colliders.Tile5_wallNr109ID = {}
level05.colliders.Tile5_wallNr109ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr109ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr109ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.Tile5_wallNr109ID.collider:SetHalfLengths(0.3,5.44409,3.60555)
level05.colliders.Tile5_wallNr109ID.collider:SetPos(414,83.4102,550)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr109ID.collider, 3)
level05.colliders.Tile5_wallNr110ID = {}
level05.colliders.Tile5_wallNr110ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr110ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr110ID.collider:SetAxes(-0.77193, 0, 0.635707, 0, -1, 0, 0.635707, 0, 0.77193)
level05.colliders.Tile5_wallNr110ID.collider:SetHalfLengths(0.3,6.33229,11.0114)
level05.colliders.Tile5_wallNr110ID.collider:SetPos(424,82.9661,560.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr110ID.collider, 3)
level05.colliders.Tile5_wallNr112ID = {}
level05.colliders.Tile5_wallNr112ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr112ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr112ID.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level05.colliders.Tile5_wallNr112ID.collider:SetHalfLengths(0.3,5.22205,3.20156)
level05.colliders.Tile5_wallNr112ID.collider:SetPos(406.5,78.5251,429)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr112ID.collider, 3)
level05.props.Asset_Stone31ID = {}
level05.props.Asset_Stone31ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone31ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone31ID.model)
Transform.SetPosition(level05.props.Asset_Stone31ID.transformID, {x=421, y=44.8438, z=217.125})
Transform.SetScaleNonUniform(level05.props.Asset_Stone31ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone31ID.transformID, {x=0.0505981, y=0.967773, z=0.244385})
level05.props.Asset_Stone31ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone31ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone31ID.collider:SetAxes(0.566409, 0.0286837, -0.823625, 0.248103, -0.958965, 0.137224, 0.785892, 0.282068, 0.550283)
level05.props.Asset_Stone31ID.collider:SetHalfLengths(0.8,1,0.7)
level05.props.Asset_Stone31ID.collider:SetPos(421,45.8438,217.125)
CollisionHandler.AddOBB(level05.props.Asset_Stone31ID.collider, 3)
level05.props.Asset_Stone32ID = {}
level05.props.Asset_Stone32ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone32ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone32ID.model)
Transform.SetPosition(level05.props.Asset_Stone32ID.transformID, {x=424.25, y=46.75, z=224.625})
Transform.SetScaleNonUniform(level05.props.Asset_Stone32ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone32ID.transformID, {x=0.0278473, y=0.970215, z=0.237305})
level05.props.Asset_Stone32ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone32ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone32ID.collider:SetAxes(0.564903, 0.0157351, -0.825007, 0.220934, -0.966198, 0.132851, 0.79503, 0.25732, 0.549285)
level05.props.Asset_Stone32ID.collider:SetHalfLengths(0.8,1,0.7)
level05.props.Asset_Stone32ID.collider:SetPos(424.25,47.75,224.625)
CollisionHandler.AddOBB(level05.props.Asset_Stone32ID.collider, 3)
level05.props.Asset_Stone33ID = {}
level05.props.Asset_Stone33ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone33ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone33ID.model)
Transform.SetPosition(level05.props.Asset_Stone33ID.transformID, {x=458.25, y=43.25, z=216.875})
Transform.SetScaleNonUniform(level05.props.Asset_Stone33ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone33ID.transformID, {x=-0.194946, y=0.970215, z=0.12793})
level05.props.Asset_Stone33ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone33ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone33ID.collider:SetAxes(0.554418, -0.109472, -0.825007, -0.0888693, -0.99343, 0.0720989, 0.82748, -0.0333449, 0.560504)
level05.props.Asset_Stone33ID.collider:SetHalfLengths(0.8,1,0.7)
level05.props.Asset_Stone33ID.collider:SetPos(458.25,44.25,216.875)
CollisionHandler.AddOBB(level05.props.Asset_Stone33ID.collider, 3)
level05.props.Asset_Stone34ID = {}
level05.props.Asset_Stone34ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone34ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone34ID.model)
Transform.SetPosition(level05.props.Asset_Stone34ID.transformID, {x=454.75, y=43.625, z=213.75})
Transform.SetScaleNonUniform(level05.props.Asset_Stone34ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone34ID.transformID, {x=-0.173218, y=0.969727, z=0.170776})
level05.props.Asset_Stone34ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone34ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone34ID.collider:SetAxes(0.557062, -0.0974699, -0.824731, -0.0317822, -0.994863, 0.0961096, 0.829862, 0.0273273, 0.557298)
level05.props.Asset_Stone34ID.collider:SetHalfLengths(0.8,1,0.7)
level05.props.Asset_Stone34ID.collider:SetPos(454.75,44.625,213.75)
CollisionHandler.AddOBB(level05.props.Asset_Stone34ID.collider, 3)
level05.props.Asset_Stone35ID = {}
level05.props.Asset_Stone35ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone35ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone35ID.model)
Transform.SetPosition(level05.props.Asset_Stone35ID.transformID, {x=445.25, y=47.125, z=224.875})
Transform.SetScaleNonUniform(level05.props.Asset_Stone35ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone35ID.transformID, {x=-0.132568, y=0.980469, z=0.119568})
level05.props.Asset_Stone35ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone35ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone35ID.collider:SetAxes(0.551749, -0.073576, -0.830758, -0.0330107, -0.997247, 0.066397, 0.833357, 0.00921059, 0.552659)
level05.props.Asset_Stone35ID.collider:SetHalfLengths(0.8,1,0.7)
level05.props.Asset_Stone35ID.collider:SetPos(445.25,48.125,224.875)
CollisionHandler.AddOBB(level05.props.Asset_Stone35ID.collider, 3)
level05.props.Asset_Stone41ID = {}
level05.props.Asset_Stone41ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone41ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone41ID.model)
Transform.SetPosition(level05.props.Asset_Stone41ID.transformID, {x=445.75, y=41.25, z=197.625})
Transform.SetScaleNonUniform(level05.props.Asset_Stone41ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone41ID.transformID, {x=-0.050293, y=0.971191, z=0.228638})
level05.props.Asset_Stone41ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone41ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone41ID.collider:SetAxes(0.563603, -0.0283692, -0.825559, 0.137913, -0.982151, 0.127903, 0.814452, 0.185942, 0.549631)
level05.props.Asset_Stone41ID.collider:SetHalfLengths(0.6,1,0.6)
level05.props.Asset_Stone41ID.collider:SetPos(445.75,42.25,197.625)
CollisionHandler.AddOBB(level05.props.Asset_Stone41ID.collider, 3)
level05.props.Asset_Stone42ID = {}
level05.props.Asset_Stone42ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone42ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone42ID.model)
Transform.SetPosition(level05.props.Asset_Stone42ID.transformID, {x=429, y=46.5938, z=222.25})
Transform.SetScaleNonUniform(level05.props.Asset_Stone42ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone42ID.transformID, {x=0.0478516, y=0.974121, z=0.216064})
level05.props.Asset_Stone42ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone42ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone42ID.collider:SetAxes(0.561252, 0.0268773, -0.827208, 0.223861, -0.967148, 0.120463, 0.796795, 0.25279, 0.548831)
level05.props.Asset_Stone42ID.collider:SetHalfLengths(0.6,1,0.6)
level05.props.Asset_Stone42ID.collider:SetPos(429,47.5938,222.25)
CollisionHandler.AddOBB(level05.props.Asset_Stone42ID.collider, 3)
level05.props.Asset_Stone43ID = {}
level05.props.Asset_Stone43ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone43ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone43ID.model)
Transform.SetPosition(level05.props.Asset_Stone43ID.transformID, {x=421.5, y=38.9688, z=192.625})
Transform.SetScaleNonUniform(level05.props.Asset_Stone43ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone43ID.transformID, {x=0.0250244, y=0.992676, z=0.112793})
level05.props.Asset_Stone43ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone43ID.collider:SetOffset(0,1,0)
level05.props.Asset_Stone43ID.collider:SetAxes(0.54628, 0.0136732, -0.837491, 0.119096, -0.990976, 0.0615052, 0.829093, 0.133341, 0.542978)
level05.props.Asset_Stone43ID.collider:SetHalfLengths(0.6,1,0.6)
level05.props.Asset_Stone43ID.collider:SetPos(421.5,39.9688,192.625)
CollisionHandler.AddOBB(level05.props.Asset_Stone43ID.collider, 3)
level05.props.Asset_Stone21ID = {}
level05.props.Asset_Stone21ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone21ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone21ID.model)
Transform.SetPosition(level05.props.Asset_Stone21ID.transformID, {x=483.482, y=39.9063, z=173.541})
Transform.SetScaleNonUniform(level05.props.Asset_Stone21ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone21ID.transformID, {x=0.121643, y=0.990723, z=0.0562744})
level05.props.Asset_Stone21ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone21ID.collider:SetOffset(0,1,0.4)
level05.props.Asset_Stone21ID.collider:SetAxes(0.544036, 0.0665065, -0.836422, 0.167848, -0.985331, 0.0308269, 0.822102, 0.157163, 0.547218)
level05.props.Asset_Stone21ID.collider:SetHalfLengths(1,1,1.3)
level05.props.Asset_Stone21ID.collider:SetPos(483.482,40.9063,173.941)
CollisionHandler.AddOBB(level05.props.Asset_Stone21ID.collider, 3)
level05.props.Asset_Stone22ID = {}
level05.props.Asset_Stone22ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone22ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone22ID.model)
Transform.SetPosition(level05.props.Asset_Stone22ID.transformID, {x=471.269, y=38.1305, z=154.56})
Transform.SetScaleNonUniform(level05.props.Asset_Stone22ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone22ID.transformID, {x=0.106873, y=0.992676, z=0.0537109})
level05.props.Asset_Stone22ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone22ID.collider:SetOffset(0,1,0.4)
level05.props.Asset_Stone22ID.collider:SetAxes(0.543333, 0.0582895, -0.837491, 0.15122, -0.988065, 0.0293363, 0.825786, 0.142585, 0.545663)
level05.props.Asset_Stone22ID.collider:SetHalfLengths(1,1,1.3)
level05.props.Asset_Stone22ID.collider:SetPos(471.269,39.1305,154.96)
CollisionHandler.AddOBB(level05.props.Asset_Stone22ID.collider, 3)
level05.props.Asset_Stone23ID = {}
level05.props.Asset_Stone23ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone23ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone23ID.model)
Transform.SetPosition(level05.props.Asset_Stone23ID.transformID, {x=432.75, y=38.4375, z=184.875})
Transform.SetScaleNonUniform(level05.props.Asset_Stone23ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone23ID.transformID, {x=-0.00359726, y=0.984863, z=0.171143})
level05.props.Asset_Stone23ID.collider = OBBCollider.Create(-1)
level05.props.Asset_Stone23ID.collider:SetOffset(0,1,0.4)
level05.props.Asset_Stone23ID.collider:SetAxes(0.552973, -0.0019892, -0.833197, 0.138355, -0.985895, 0.0941766, 0.821632, 0.167354, 0.544899)
level05.props.Asset_Stone23ID.collider:SetHalfLengths(1,1,1.3)
level05.props.Asset_Stone23ID.collider:SetPos(432.75,39.4375,185.275)
CollisionHandler.AddOBB(level05.props.Asset_Stone23ID.collider, 3)
level05.triggers.BlockerTrigger7ID = {}
level05.triggers.BlockerTrigger7ID.collider = OBBCollider.Create(-1)
level05.triggers.BlockerTrigger7ID.collider:SetOffset(0,0,0)
level05.triggers.BlockerTrigger7ID.collider:SetAxes(0.91698, 0.0647954, -0.393636, 0.056125, -0.997861, -0.0335112, 0.394966, -0.00863628, 0.918655)
level05.triggers.BlockerTrigger7ID.collider:SetHalfLengths(3.40472,3,22.3649)
level05.triggers.BlockerTrigger7ID.collider:SetPos(455.587,54.0625,449.101)
sluice10 = CreateSluice(level05.triggers.BlockerTrigger7ID.collider, level05.props.BlockerClosedFire2ID.transformID, level05.props.BlockerClosedFire2ID, level05.props.BlockerOpenFire2ID.transformID)
level05.triggers.BlockerTrigger7ID.collider.OnEnter = function(self) SluiceEnter(sluice10) end
level05.triggers.BlockerTrigger7ID.collider.OnExit = function(self) SluiceExit(sluice10) end
level05.triggers.BlockerTrigger7ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice10) end
level05.triggers.BlockerTrigger7ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.BlockerTrigger7ID.collider, 4)
level05.triggers.BlockerTrigger8ID = {}
level05.triggers.BlockerTrigger8ID.collider = OBBCollider.Create(-1)
level05.triggers.BlockerTrigger8ID.collider:SetOffset(0,0,0)
level05.triggers.BlockerTrigger8ID.collider:SetAxes(0.942854, 0, -0.333206, 0, -1, 0, 0.333206, 0, 0.942854)
level05.triggers.BlockerTrigger8ID.collider:SetHalfLengths(2.64044,4.07561,13.8721)
level05.triggers.BlockerTrigger8ID.collider:SetPos(435.641,73.3125,411.125)
sluice11 = CreateSluice(level05.triggers.BlockerTrigger8ID.collider, level05.props.BlockerClosedNature2ID.transformID, level05.props.BlockerClosedNature2ID, level05.props.BlockerOpenNature2ID.transformID)
level05.triggers.BlockerTrigger8ID.collider.OnEnter = function(self) SluiceEnter(sluice11) end
level05.triggers.BlockerTrigger8ID.collider.OnExit = function(self) SluiceExit(sluice11) end
level05.triggers.BlockerTrigger8ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice11) end
level05.triggers.BlockerTrigger8ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.BlockerTrigger8ID.collider, 4)
level05.triggers.BlockerTrigger9ID = {}
level05.triggers.BlockerTrigger9ID.collider = OBBCollider.Create(-1)
level05.triggers.BlockerTrigger9ID.collider:SetOffset(0,0,0)
level05.triggers.BlockerTrigger9ID.collider:SetAxes(0.505167, 0, 0.863022, 0, -1, 0, -0.863022, 0, 0.505167)
level05.triggers.BlockerTrigger9ID.collider:SetHalfLengths(2.81146,3,15.5979)
level05.triggers.BlockerTrigger9ID.collider:SetPos(455.895,84.5841,582.683)
sluice13 = CreateSluice(level05.triggers.BlockerTrigger9ID.collider, level05.props.BlockerClosedNature3ID.transformID, level05.props.BlockerClosedNature3ID, level05.props.BlockerOpenNature3ID.transformID)
level05.triggers.BlockerTrigger9ID.collider.OnEnter = function(self) SluiceEnter(sluice13) end
level05.triggers.BlockerTrigger9ID.collider.OnExit = function(self) SluiceExit(sluice13) end
level05.triggers.BlockerTrigger9ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice13) end
level05.triggers.BlockerTrigger9ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.BlockerTrigger9ID.collider, 4)
level05.triggers.BlockerTrigger6ID = {}
level05.triggers.BlockerTrigger6ID.collider = OBBCollider.Create(-1)
level05.triggers.BlockerTrigger6ID.collider:SetOffset(0,0,0)
level05.triggers.BlockerTrigger6ID.collider:SetAxes(0.702581, 0, -0.711603, 0, -1, 0, 0.711603, 0, 0.702581)
level05.triggers.BlockerTrigger6ID.collider:SetHalfLengths(3.47607,4.28469,18.6487)
level05.triggers.BlockerTrigger6ID.collider:SetPos(569.055,84.625,622.085)
sluice14 = CreateSluice(level05.triggers.BlockerTrigger6ID.collider, level05.props.BlockerClosedIce3ID.transformID, level05.props.BlockerClosedIce3ID, level05.props.BlockerOpenIce3ID.transformID)
level05.triggers.BlockerTrigger6ID.collider.OnEnter = function(self) SluiceEnter(sluice14) end
level05.triggers.BlockerTrigger6ID.collider.OnExit = function(self) SluiceExit(sluice14) end
level05.triggers.BlockerTrigger6ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice14) end
level05.triggers.BlockerTrigger6ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.BlockerTrigger6ID.collider, 4)
level05.triggers.BlockerTrigger10ID = {}
level05.triggers.BlockerTrigger10ID.collider = OBBCollider.Create(-1)
level05.triggers.BlockerTrigger10ID.collider:SetOffset(0,0,0)
level05.triggers.BlockerTrigger10ID.collider:SetAxes(0.22386, 0, -0.974621, 0, -1, 0, 0.974621, 0, 0.22386)
level05.triggers.BlockerTrigger10ID.collider:SetHalfLengths(2,4.12589,19.5308)
level05.triggers.BlockerTrigger10ID.collider:SetPos(508.755,79.125,575.449)
sluice15 = CreateSluice(level05.triggers.BlockerTrigger10ID.collider, level05.props.BlockerClosedFire3ID.transformID, level05.props.BlockerClosedFire3ID, level05.props.BlockerOpenFire3ID.transformID)
level05.triggers.BlockerTrigger10ID.collider.OnEnter = function(self) SluiceEnter(sluice15) end
level05.triggers.BlockerTrigger10ID.collider.OnExit = function(self) SluiceExit(sluice15) end
level05.triggers.BlockerTrigger10ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice15) end
level05.triggers.BlockerTrigger10ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.BlockerTrigger10ID.collider, 4)
level05.triggers.BlockerTrigger11ID = {}
level05.triggers.BlockerTrigger11ID.collider = OBBCollider.Create(-1)
level05.triggers.BlockerTrigger11ID.collider:SetOffset(0,0,0)
level05.triggers.BlockerTrigger11ID.collider:SetAxes(0.92389, -0.0989963, 0.369632, -0.0902885, -0.995078, -0.0408312, -0.371855, -0.00435007, 0.928281)
level05.triggers.BlockerTrigger11ID.collider:SetHalfLengths(2,8.79282,37.2997)
level05.triggers.BlockerTrigger11ID.collider:SetPos(526.702,45.2223,428.906)
sluice16 = CreateSluice(level05.triggers.BlockerTrigger11ID.collider, level05.props.BlockerClosedIce2ID.transformID, level05.props.BlockerClosedIce2ID, level05.props.BlockerOpenIce2ID.transformID)
level05.triggers.BlockerTrigger11ID.collider.OnEnter = function(self) SluiceEnter(sluice16) end
level05.triggers.BlockerTrigger11ID.collider.OnExit = function(self) SluiceExit(sluice16) end
level05.triggers.BlockerTrigger11ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice16) end
level05.triggers.BlockerTrigger11ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.BlockerTrigger11ID.collider, 4)
level05.triggers.New3ID = {}
level05.triggers.New3ID.collider = OBBCollider.Create(-1)
level05.triggers.New3ID.collider:SetOffset(0,0,0)
level05.triggers.New3ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.triggers.New3ID.collider:SetHalfLengths(60.7841,42.5685,21.1744)
level05.triggers.New3ID.collider:SetPos(18.0324,193.05,97.4149)
level05.triggers.New3ID.collider.OnTriggering = function() print("derp") end
level05.triggers.New3ID.collider.triggered = false
CollisionHandler.AddOBB(level05.triggers.New3ID.collider, 4)
level05.triggers.New3ID.lightIndex = Light.addLight(18.0324, 193.05, 97.4149, 1, 1, 1, 500,1)
end
level05.unload = function()
level05.props.tile5ID = nil
Gear.UnbindInstance(level05.props.t5s1ID.transformID)
Assets.UnloadModel('Models/tile5_s1.model')
level05.props.t5s1ID = nil
Gear.UnbindInstance(level05.props.t5s2ID.transformID)
Assets.UnloadModel('Models/tile5_s2.model')
level05.props.t5s2ID = nil
Gear.UnbindInstance(level05.props.t5s3ID.transformID)
Assets.UnloadModel('Models/tile5_s3.model')
level05.props.t5s3ID = nil
Gear.UnbindInstance(level05.props.t5s4ID.transformID)
Assets.UnloadModel('Models/tile5_s4.model')
level05.props.t5s4ID = nil
Gear.UnbindInstance(level05.props.t5s5ID.transformID)
Assets.UnloadModel('Models/tile5_s5.model')
level05.props.t5s5ID = nil
Gear.UnbindInstance(level05.props.t5s6ID.transformID)
Assets.UnloadModel('Models/tile5_s6.model')
level05.props.t5s6ID = nil
level05.colliders.Tile5_wallNrID = nil
level05.colliders.Tile5_wallNr1ID = nil
level05.colliders.Tile5_wallNr2ID = nil
level05.colliders.Tile5_wallNr3ID = nil
level05.colliders.Tile5_wallNr4ID = nil
level05.colliders.Tile5_wallNr5ID = nil
level05.colliders.Tile5_wallNr6ID = nil
level05.colliders.Tile5_wallNr7ID = nil
level05.colliders.Tile5_wallNr8ID = nil
level05.colliders.Tile5_wallNr9ID = nil
level05.colliders.Tile5_wallNr10ID = nil
level05.colliders.Tile5_wallNr11ID = nil
level05.colliders.Tile5_wallNr12ID = nil
level05.colliders.Tile5_wallNr13ID = nil
level05.colliders.Tile5_wallNr14ID = nil
level05.colliders.Tile5_wallNr15ID = nil
level05.colliders.Tile5_wallNr16ID = nil
level05.colliders.Tile5_wallNr17ID = nil
level05.colliders.Tile5_wallNr18ID = nil
level05.colliders.Tile5_wallNr19ID = nil
level05.colliders.Tile5_wallNr20ID = nil
level05.colliders.Tile5_wallNr21ID = nil
level05.colliders.Tile5_wallNr22ID = nil
level05.colliders.Tile5_wallNr23ID = nil
level05.colliders.Tile5_wallNr24ID = nil
level05.colliders.Tile5_wallNr25ID = nil
level05.colliders.Tile5_wallNr26ID = nil
level05.colliders.Tile5_wallNr27ID = nil
level05.colliders.Tile5_wallNr28ID = nil
level05.colliders.Tile5_wallNr29ID = nil
level05.colliders.Tile5_wallNr30ID = nil
level05.colliders.Tile5_wallNr31ID = nil
level05.colliders.Tile5_wallNr32ID = nil
level05.colliders.Tile5_wallNr33ID = nil
level05.colliders.Tile5_wallNr34ID = nil
level05.colliders.Tile5_wallNr35ID = nil
level05.colliders.Tile5_wallNr36ID = nil
level05.colliders.Tile5_wallNr37ID = nil
level05.colliders.Tile5_wallNr38ID = nil
level05.colliders.Tile5_wallNr39ID = nil
level05.colliders.Tile5_wallNr40ID = nil
level05.colliders.Tile5_wallNr41ID = nil
level05.colliders.Tile5_wallNr42ID = nil
level05.colliders.Tile5_wallNr43ID = nil
level05.colliders.Tile5_wallNr44ID = nil
level05.colliders.Tile5_wallNr45ID = nil
level05.colliders.Tile5_wallNr46ID = nil
level05.colliders.Tile5_wallNr47ID = nil
level05.colliders.Tile5_wallNr59ID = nil
level05.colliders.Tile5_wallNr60ID = nil
level05.colliders.Tile5_wallNr61ID = nil
level05.colliders.Tile5_wallNr62ID = nil
level05.colliders.Tile5_wallNr63ID = nil
level05.colliders.Tile5_wallNr64ID = nil
level05.colliders.Tile5_wallNr65ID = nil
level05.colliders.Tile5_wallNr66ID = nil
level05.colliders.Tile5_wallNr67ID = nil
level05.colliders.Tile5_wallNr68ID = nil
level05.colliders.Tile5_wallNr69ID = nil
level05.colliders.Tile5_wallNr70ID = nil
level05.colliders.Tile5_wallNr71ID = nil
level05.colliders.Tile5_wallNr72ID = nil
level05.colliders.Tile5_wallNr73ID = nil
level05.colliders.Tile5_wallNr74ID = nil
level05.colliders.Tile5_wallNr75ID = nil
level05.colliders.Tile5_wallNr76ID = nil
level05.colliders.Tile5_wallNr77ID = nil
level05.colliders.Tile5_wallNr78ID = nil
level05.colliders.Tile5_wallNr79ID = nil
level05.colliders.Tile5_wallNr80ID = nil
level05.colliders.Tile5_wallNr81ID = nil
level05.colliders.Tile5_wallNr82ID = nil
level05.colliders.Tile5_wallNr83ID = nil
level05.colliders.Tile5_wallNr84ID = nil
level05.colliders.Tile5_wallNr85ID = nil
level05.colliders.Tile5_wallNr88ID = nil
level05.colliders.Tile5_wallNr90ID = nil
level05.colliders.Tile5_wallNr91ID = nil
level05.colliders.Tile5_wallNr94ID = nil
level05.colliders.Tile5_wallNr95ID = nil
level05.colliders.Tile5_wallNr96ID = nil
level05.colliders.Tile5_wallNr97ID = nil
level05.colliders.Tile5_wallNr98ID = nil
level05.colliders.Tile5_wallNr99ID = nil
level05.colliders.Tile5_wallNr100ID = nil
level05.colliders.Tile5_wallNr116ID = nil
level05.colliders.Tile5_wallNr117ID = nil
level05.colliders.Tile5_wallNr118ID = nil
level05.colliders.Tile5_wallNr119ID = nil
level05.colliders.Tile5_wallNr120ID = nil
level05.colliders.Tile5_wallNr121ID = nil
level05.colliders.Tile5_wallNr122ID = nil
level05.colliders.Tile5_wallNr123ID = nil
level05.colliders.Tile5_wallNr124ID = nil
level05.colliders.Tile5_wallNr125ID = nil
level05.colliders.Tile5_wallNr126ID = nil
level05.colliders.Tile5_wallNr127ID = nil
level05.colliders.Tile5_wallNr128ID = nil
level05.colliders.Tile5_wallNr129ID = nil
level05.colliders.Tile5_wallNr135ID = nil
level05.colliders.Tile5_wallNr136ID = nil
level05.colliders.Tile5_wallNr137ID = nil
level05.colliders.Tile5_wallNr138ID = nil
level05.colliders.Tile5_wallNr139ID = nil
level05.colliders.Tile5_wallNr140ID = nil
level05.colliders.Tile5_wallNr141ID = nil
level05.colliders.Tile5_wallNr142ID = nil
level05.colliders.Tile5_wallNr143ID = nil
level05.colliders.Tile5_wallNr144ID = nil
level05.colliders.Tile5_wallNr145ID = nil
level05.colliders.Tile5_wallNr146ID = nil
level05.colliders.Tile5_wallNr147ID = nil
level05.colliders.Tile5_wallNr148ID = nil
level05.colliders.Tile5_wallNr149ID = nil
level05.colliders.Tile5_wallNr150ID = nil
level05.colliders.Tile5_wallNr151ID = nil
level05.colliders.Tile5_wallNr152ID = nil
level05.colliders.Tile5_wallNr153ID = nil
level05.colliders.Tile5_wallNr154ID = nil
level05.colliders.Tile5_wallNr155ID = nil
level05.colliders.Tile5_wallNr157ID = nil
Gear.UnbindInstance(level05.props.t4s5ID.transformID)
Assets.UnloadModel('Models/tile4_s5.model')
level05.props.t4s5ID = nil
level05.colliders.Tile5_wallNr92ID = nil
level05.colliders.Tile5_wallNr104ID = nil
level05.colliders.Tile5_wallNr105ID = nil
level05.colliders.Tile5_wallNr156ID = nil
level05.colliders.Tile5_wallNr158ID = nil
Light.removeLight(level05.props.CrystalID.lightIndex)
Gear.UnbindInstance(level05.props.CrystalID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.CrystalID = nil
Light.removeLight(level05.props.Crystal1ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal1ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal1ID = nil
Light.removeLight(level05.props.Crystal2ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal2ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal2ID = nil
Light.removeLight(level05.props.Crystal3ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal3ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal3ID = nil
Light.removeLight(level05.props.Crystal4ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal4ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal4ID = nil
Light.removeLight(level05.props.Crystal5ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal5ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal5ID = nil
Light.removeLight(level05.props.Crystal6ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal6ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal6ID = nil
Light.removeLight(level05.props.Crystal7ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal7ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal7ID = nil
Light.removeLight(level05.props.Crystal8ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal8ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal8ID = nil
Light.removeLight(level05.props.Crystal9ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal9ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal9ID = nil
Light.removeLight(level05.props.Crystal10ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal10ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal10ID = nil
Light.removeLight(level05.props.Crystal11ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal11ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal11ID = nil
Light.removeLight(level05.props.Crystal12ID.lightIndex)
Gear.UnbindInstance(level05.props.Crystal12ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal12ID = nil
Gear.UnbindInstance(level05.props.BlockerClosedIce2ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerClosedIce2ID = nil
Gear.UnbindInstance(level05.props.BlockerOpenIce2ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerOpenIce2ID = nil
Gear.UnbindInstance(level05.props.BlockerClosedFire2ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerClosedFire2ID = nil
level05.triggers.BlockerTrigger7ID = nil
Gear.UnbindInstance(level05.props.BlockerOpenFire2ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerOpenFire2ID = nil
Gear.UnbindInstance(level05.props.BlockerClosedNature2ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerClosedNature2ID = nil
Gear.UnbindInstance(level05.props.BlockerOpenNature2ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerOpenNature2ID = nil
level05.triggers.BlockerTrigger8ID = nil
Gear.UnbindInstance(level05.props.BlockerClosedNature3ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerClosedNature3ID = nil
level05.triggers.BlockerTrigger9ID = nil
Gear.UnbindInstance(level05.props.BlockerOpenNature3ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level05.props.BlockerOpenNature3ID = nil
level05.colliders.Tile5_wallNr93ID = nil
level05.colliders.Tile5_wallNr159ID = nil
level05.colliders.Tile5_wallNr160ID = nil
level05.colliders.Tile5_wallNr161ID = nil
level05.colliders.Tile5_wallNr162ID = nil
level05.colliders.Tile5_wallNr163ID = nil
level05.colliders.Tile5_wallNr164ID = nil
level05.colliders.Tile5_wallNr165ID = nil
level05.colliders.Tile5_wallNr166ID = nil
level05.colliders.Tile5_wallNr167ID = nil
level05.colliders.Tile5_wallNr168ID = nil
level05.colliders.Tile5_wallNr169ID = nil
Gear.UnbindInstance(level05.props.BlockerClosedIce3ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerClosedIce3ID = nil
level05.triggers.BlockerTrigger6ID = nil
Gear.UnbindInstance(level05.props.BlockerOpenIce3ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level05.props.BlockerOpenIce3ID = nil
Gear.UnbindInstance(level05.props.BlockerClosedFire3ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerClosedFire3ID = nil
level05.triggers.BlockerTrigger10ID = nil
Gear.UnbindInstance(level05.props.BlockerOpenFire3ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level05.props.BlockerOpenFire3ID = nil
level05.triggers.BlockerTrigger11ID = nil
DestroyEnemy(level05.enemies.GoblinIce6ID)
DestroyEnemy(level05.enemies.GoblinIce7ID)
DestroyEnemy(level05.enemies.GoblinIce8ID)
DestroyEnemy(level05.enemies.GoblinIce9ID)
DestroyEnemy(level05.enemies.GoblinIce10ID)
DestroyEnemy(level05.enemies.GoblinIce11ID)
DestroyEnemy(level05.enemies.GoblinIce12ID)
DestroyEnemy(level05.enemies.GoblinIce13ID)
DestroyEnemy(level05.enemies.GoblinIce14ID)
DestroyEnemy(level05.enemies.GoblinIce15ID)
DestroyEnemy(level05.enemies.GoblinIce16ID)
DestroyEnemy(level05.enemies.GoblinIce17ID)
DestroyEnemy(level05.enemies.GoblinFire8ID)
DestroyEnemy(level05.enemies.GoblinFire9ID)
DestroyEnemy(level05.enemies.GoblinFire10ID)
DestroyEnemy(level05.enemies.GoblinFire11ID)
DestroyEnemy(level05.enemies.GoblinFire12ID)
DestroyEnemy(level05.enemies.GoblinFire13ID)
DestroyEnemy(level05.enemies.GoblinNature8ID)
DestroyEnemy(level05.enemies.GoblinNature9ID)
DestroyEnemy(level05.enemies.GoblinNature10ID)
DestroyEnemy(level05.enemies.GoblinNature11ID)
DestroyEnemy(level05.enemies.GoblinNature12ID)
DestroyEnemy(level05.enemies.GoblinNature13ID)
DestroyEnemy(level05.enemies.GoblinNature14ID)
DestroyEnemy(level05.enemies.GoblinNature15ID)
Gear.UnbindInstance(level05.props.Tile5_FenceID.transformID)
Assets.UnloadModel('Models/tile5_fence.model')
level05.props.Tile5_FenceID = nil
level05.colliders.Tile5_wallNr48ID = nil
level05.colliders.Tile5_wallNr49ID = nil
level05.colliders.Tile5_wallNr50ID = nil
level05.colliders.Tile5_wallNr51ID = nil
level05.colliders.Tile5_wallNr52ID = nil
level05.colliders.Tile5_wallNr53ID = nil
level05.colliders.Tile5_wallNr54ID = nil
level05.colliders.Tile5_wallNr55ID = nil
level05.colliders.Tile5_wallNr56ID = nil
level05.colliders.Tile5_wallNr57ID = nil
level05.colliders.Tile5_wallNr58ID = nil
level05.colliders.Tile5_wallNr87ID = nil
level05.colliders.Tile5_wallNr89ID = nil
level05.colliders.Tile5_wallNr101ID = nil
level05.colliders.Tile5_wallNr102ID = nil
level05.colliders.Tile5_wallNr103ID = nil
level05.colliders.Tile5_wallNr106ID = nil
level05.colliders.Tile5_wallNr107ID = nil
level05.colliders.Tile5_wallNr108ID = nil
level05.colliders.Tile5_wallNr109ID = nil
level05.colliders.Tile5_wallNr110ID = nil
level05.colliders.Tile5_wallNr112ID = nil
Light.removeLight(level05.triggers.New3ID.lightIndex)
level05.triggers.New3ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone31ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone31ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone32ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone32ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone33ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone33ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone34ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone34ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone35ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone35ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone41ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone41ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone42ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone42ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone43ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone43ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone21ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone21ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone22ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone22ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone23ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone23ID = nil
level05.props = nil
level05.colliders = nil
level05.triggers = nil
level05.enemies = nil
end
levels[5] = level05
-------------------------------------level05-----------------------------------------------


-------------------------------------level06-----------------------------------------------

level06 = {}
level06.surrounding = { 5, 7, 4 }
level06.load = function()
level06.props = {}
level06.colliders = {}
level06.triggers = {}
level06.enemies = {}
level06.props.tile6ID = {}
level06.props.t6s1ID = {}
level06.props.t6s1ID.model = Assets.LoadModel('Models/tile6_s1.model')
level06.props.t6s1ID.transformID = Gear.BindStaticInstance(level06.props.t6s1ID.model)
Transform.SetPosition(level06.props.t6s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s1ID.transformID, {x=-0, y=0, z=-0})
level06.props.t6s2ID = {}
level06.props.t6s2ID.model = Assets.LoadModel('Models/tile6_s2.model')
level06.props.t6s2ID.transformID = Gear.BindStaticInstance(level06.props.t6s2ID.model)
Transform.SetPosition(level06.props.t6s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s2ID.transformID, {x=-0, y=0, z=-0})
level06.props.t6s7ID = {}
level06.props.t6s7ID.model = Assets.LoadModel('Models/tile6_s7.model')
level06.props.t6s7ID.transformID = Gear.BindStaticInstance(level06.props.t6s7ID.model)
Transform.SetPosition(level06.props.t6s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s7ID.transformID, {x=-0, y=0, z=-0})
level06.props.t6s10ID = {}
level06.props.t6s10ID.model = Assets.LoadModel('Models/tile6_s10.model')
level06.props.t6s10ID.transformID = Gear.BindStaticInstance(level06.props.t6s10ID.model)
Transform.SetPosition(level06.props.t6s10ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s10ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s10ID.transformID, {x=-0, y=0, z=-0})
level06.props.t6s12ID = {}
level06.props.t6s12ID.model = Assets.LoadModel('Models/tile6_s12.model')
level06.props.t6s12ID.transformID = Gear.BindStaticInstance(level06.props.t6s12ID.model)
Transform.SetPosition(level06.props.t6s12ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s12ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s12ID.transformID, {x=-0, y=0, z=-0})
level06.props.t6s13ID = {}
level06.props.t6s13ID.model = Assets.LoadModel('Models/tile6_s13.model')
level06.props.t6s13ID.transformID = Gear.BindStaticInstance(level06.props.t6s13ID.model)
Transform.SetPosition(level06.props.t6s13ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s13ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s13ID.transformID, {x=-0, y=0, z=-0})
level06.colliders.Tile6_wallNr3ID = {}
level06.colliders.Tile6_wallNr3ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr3ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr3ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level06.colliders.Tile6_wallNr3ID.collider:SetHalfLengths(0.3,5,0.5)
level06.colliders.Tile6_wallNr3ID.collider:SetPos(512,85.0848,702.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr3ID.collider, 3)
level06.colliders.Tile6_wallNr4ID = {}
level06.colliders.Tile6_wallNr4ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr4ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr4ID.collider:SetAxes(-0.847998, 0, 0.529999, 0, -1, 0, 0.529999, 0, 0.847998)
level06.colliders.Tile6_wallNr4ID.collider:SetHalfLengths(0.3,5,4.71699)
level06.colliders.Tile6_wallNr4ID.collider:SetPos(472.5,85.0848,644)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr4ID.collider, 3)
level06.colliders.Tile6_wallNr5ID = {}
level06.colliders.Tile6_wallNr5ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr5ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr5ID.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level06.colliders.Tile6_wallNr5ID.collider:SetHalfLengths(0.3,5,3.04138)
level06.colliders.Tile6_wallNr5ID.collider:SetPos(474.5,85.0848,651)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr5ID.collider, 3)
level06.colliders.Tile6_wallNr6ID = {}
level06.colliders.Tile6_wallNr6ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr6ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr6ID.collider:SetAxes(-0.928477, 0, -0.371391, -0, -1, 0, -0.371391, 0, 0.928477)
level06.colliders.Tile6_wallNr6ID.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.Tile6_wallNr6ID.collider:SetPos(473,85.0848,656.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr6ID.collider, 3)
level06.colliders.Tile6_wallNr7ID = {}
level06.colliders.Tile6_wallNr7ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr7ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr7ID.collider:SetAxes(-0.6, 0, -0.8, -0, -1, 0, -0.8, 0, 0.6)
level06.colliders.Tile6_wallNr7ID.collider:SetHalfLengths(0.3,5,7.5)
level06.colliders.Tile6_wallNr7ID.collider:SetPos(466,85.0848,663.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr7ID.collider, 3)
level06.colliders.Tile6_wallNr16ID = {}
level06.colliders.Tile6_wallNr16ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr16ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr16ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level06.colliders.Tile6_wallNr16ID.collider:SetHalfLengths(0.3,7.98466,11.5)
level06.colliders.Tile6_wallNr16ID.collider:SetPos(395.5,103.078,716)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr16ID.collider, 3)
level06.colliders.Tile6_wallNr17ID = {}
level06.colliders.Tile6_wallNr17ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr17ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr17ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level06.colliders.Tile6_wallNr17ID.collider:SetHalfLengths(0.3,5.25583,1.5)
level06.colliders.Tile6_wallNr17ID.collider:SetPos(384,106.063,714.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr17ID.collider, 3)
level06.colliders.Tile6_wallNr19ID = {}
level06.colliders.Tile6_wallNr19ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr19ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr19ID.collider:SetAxes(-0.141421, 0, -0.98995, -0, -1, 0, -0.98995, 0, 0.141421)
level06.colliders.Tile6_wallNr19ID.collider:SetHalfLengths(0.3,5,3.53553)
level06.colliders.Tile6_wallNr19ID.collider:SetPos(508.5,85.0848,695.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr19ID.collider, 3)
level06.colliders.Tile6_wallNr20ID = {}
level06.colliders.Tile6_wallNr20ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr20ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr20ID.collider:SetAxes(-0.371391, 0, -0.928477, -0, -1, 0, -0.928477, 0, 0.371391)
level06.colliders.Tile6_wallNr20ID.collider:SetHalfLengths(0.3,5.93803,2.69258)
level06.colliders.Tile6_wallNr20ID.collider:SetPos(502.5,85.0848,697)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr20ID.collider, 3)
level06.colliders.Tile6_wallNr21ID = {}
level06.colliders.Tile6_wallNr21ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr21ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr21ID.collider:SetAxes(-0.939793, 0, -0.341743, -0, -1, 0, -0.341743, 0, 0.939793)
level06.colliders.Tile6_wallNr21ID.collider:SetHalfLengths(0.3,5.08527,11.7047)
level06.colliders.Tile6_wallNr21ID.collider:SetPos(496,86.0228,709)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr21ID.collider, 3)
level06.colliders.Tile6_wallNr22ID = {}
level06.colliders.Tile6_wallNr22ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr22ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr22ID.collider:SetAxes(-0.529999, 0, -0.847998, -0, -1, 0, -0.847998, 0, 0.529999)
level06.colliders.Tile6_wallNr22ID.collider:SetHalfLengths(0.3,5.3411,14.151)
level06.colliders.Tile6_wallNr22ID.collider:SetPos(480,85.9375,727.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr22ID.collider, 3)
level06.colliders.Tile6_wallNr23ID = {}
level06.colliders.Tile6_wallNr23ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr23ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr23ID.collider:SetAxes(-0.242536, 0, -0.970143, -0, -1, 0, -0.970143, 0, 0.242536)
level06.colliders.Tile6_wallNr23ID.collider:SetHalfLengths(0.3,5.3411,6.18466)
level06.colliders.Tile6_wallNr23ID.collider:SetPos(462,86.2786,736.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr23ID.collider, 3)
level06.colliders.Tile6_wallNr29ID = {}
level06.colliders.Tile6_wallNr29ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr29ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr29ID.collider:SetAxes(-0.135113, 0, 0.99083, 0, -1, 0, 0.99083, 0, 0.135113)
level06.colliders.Tile6_wallNr29ID.collider:SetHalfLengths(0.3,5.42638,11.1018)
level06.colliders.Tile6_wallNr29ID.collider:SetPos(395,104.954,726.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr29ID.collider, 3)
level06.colliders.Tile6_wallNr30ID = {}
level06.colliders.Tile6_wallNr30ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr30ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr30ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level06.colliders.Tile6_wallNr30ID.collider:SetHalfLengths(0.3,5.93803,3.5)
level06.colliders.Tile6_wallNr30ID.collider:SetPos(384,104.954,728.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr30ID.collider, 3)
level06.colliders.Tile6_wallNr2ID = {}
level06.colliders.Tile6_wallNr2ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr2ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr2ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level06.colliders.Tile6_wallNr2ID.collider:SetHalfLengths(0.3,5,2)
level06.colliders.Tile6_wallNr2ID.collider:SetPos(577,85.1031,642)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr2ID.collider, 3)
level06.colliders.Tile6_wallNr31ID = {}
level06.colliders.Tile6_wallNr31ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr31ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr31ID.collider:SetAxes(-0.928477, 0, 0.371391, 0, -1, 0, 0.371391, 0, 0.928477)
level06.colliders.Tile6_wallNr31ID.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.Tile6_wallNr31ID.collider:SetPos(578,85.1031,646.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr31ID.collider, 3)
level06.colliders.Tile6_wallNr32ID = {}
level06.colliders.Tile6_wallNr32ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr32ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr32ID.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level06.colliders.Tile6_wallNr32ID.collider:SetHalfLengths(0.3,5,2.5)
level06.colliders.Tile6_wallNr32ID.collider:SetPos(580.5,85.1031,651)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr32ID.collider, 3)
level06.colliders.Tile6_wallNr33ID = {}
level06.colliders.Tile6_wallNr33ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr33ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr33ID.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level06.colliders.Tile6_wallNr33ID.collider:SetHalfLengths(0.3,5.096,2.5)
level06.colliders.Tile6_wallNr33ID.collider:SetPos(584,85.1031,654.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr33ID.collider, 3)
level06.colliders.Tile6_wallNr34ID = {}
level06.colliders.Tile6_wallNr34ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr34ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr34ID.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level06.colliders.Tile6_wallNr34ID.collider:SetHalfLengths(0.3,5.28802,2.69258)
level06.colliders.Tile6_wallNr34ID.collider:SetPos(588.5,85.1991,657)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr34ID.collider, 3)
level06.colliders.Tile6_wallNr35ID = {}
level06.colliders.Tile6_wallNr35ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr35ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr35ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level06.colliders.Tile6_wallNr35ID.collider:SetHalfLengths(0.3,5.19201,2.5)
level06.colliders.Tile6_wallNr35ID.collider:SetPos(593.5,85.4871,658)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr35ID.collider, 3)
level06.colliders.Tile6_wallNr36ID = {}
level06.colliders.Tile6_wallNr36ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr36ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr36ID.collider:SetAxes(0.141421, -0, 0.98995, 0, -1, -0, 0.98995, 0, -0.141421)
level06.colliders.Tile6_wallNr36ID.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.Tile6_wallNr36ID.collider:SetPos(599.5,85.6791,657.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr36ID.collider, 3)
level06.colliders.Tile6_wallNr37ID = {}
level06.colliders.Tile6_wallNr37ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr37ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr37ID.collider:SetAxes(-0.780869, 0, 0.624695, 0, -1, 0, 0.624695, 0, 0.780869)
level06.colliders.Tile6_wallNr37ID.collider:SetHalfLengths(0.3,5.86406,3.20156)
level06.colliders.Tile6_wallNr37ID.collider:SetPos(605,85.9672,659.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr37ID.collider, 3)
level06.colliders.Tile6_wallNr38ID = {}
level06.colliders.Tile6_wallNr38ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr38ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr38ID.collider:SetAxes(-0.4741, 0, -0.880471, -0, -1, 0, -0.880471, 0, 0.4741)
level06.colliders.Tile6_wallNr38ID.collider:SetHalfLengths(0.3,5,7.38241)
level06.colliders.Tile6_wallNr38ID.collider:SetPos(600.5,86.8312,665.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr38ID.collider, 3)
level06.colliders.Tile6_wallNr39ID = {}
level06.colliders.Tile6_wallNr39ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr39ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr39ID.collider:SetAxes(-0.485643, 0, -0.874157, -0, -1, 0, -0.874157, 0, 0.485643)
level06.colliders.Tile6_wallNr39ID.collider:SetHalfLengths(0.3,5.096,5.14782)
level06.colliders.Tile6_wallNr39ID.collider:SetPos(589.5,86.8312,671.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr39ID.collider, 3)
level06.colliders.Tile6_wallNr40ID = {}
level06.colliders.Tile6_wallNr40ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr40ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr40ID.collider:SetAxes(-0.287348, 0, -0.957826, -0, -1, 0, -0.957826, 0, 0.287348)
level06.colliders.Tile6_wallNr40ID.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.Tile6_wallNr40ID.collider:SetPos(580,86.9272,675.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr40ID.collider, 3)
level06.colliders.Tile6_wallNr41ID = {}
level06.colliders.Tile6_wallNr41ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr41ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr41ID.collider:SetAxes(-0.178885, 0, -0.98387, -0, -1, 0, -0.98387, 0, 0.178885)
level06.colliders.Tile6_wallNr41ID.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.Tile6_wallNr41ID.collider:SetPos(569.5,87.0232,678)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr41ID.collider, 3)
level06.colliders.Tile6_wallNr42ID = {}
level06.colliders.Tile6_wallNr42ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr42ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr42ID.collider:SetAxes(-0.178885, 0, -0.98387, -0, -1, 0, -0.98387, 0, 0.178885)
level06.colliders.Tile6_wallNr42ID.collider:SetHalfLengths(0.3,5.096,5.59017)
level06.colliders.Tile6_wallNr42ID.collider:SetPos(558.5,86.9272,680)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr42ID.collider, 3)
level06.colliders.Tile6_wallNr43ID = {}
level06.colliders.Tile6_wallNr43ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr43ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr43ID.collider:SetAxes(-0.178885, 0, -0.98387, -0, -1, 0, -0.98387, 0, 0.178885)
level06.colliders.Tile6_wallNr43ID.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.Tile6_wallNr43ID.collider:SetPos(547.5,86.8312,682)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr43ID.collider, 3)
level06.colliders.Tile6_wallNr44ID = {}
level06.colliders.Tile6_wallNr44ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr44ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr44ID.collider:SetAxes(-0.287348, 0, -0.957826, -0, -1, 0, -0.957826, 0, 0.287348)
level06.colliders.Tile6_wallNr44ID.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.Tile6_wallNr44ID.collider:SetPos(537,86.7352,684.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr44ID.collider, 3)
level06.colliders.Tile6_wallNr45ID = {}
level06.colliders.Tile6_wallNr45ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr45ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr45ID.collider:SetAxes(-0.384615, 0, -0.923077, -0, -1, 0, -0.923077, 0, 0.384615)
level06.colliders.Tile6_wallNr45ID.collider:SetHalfLengths(0.3,5.19201,6.5)
level06.colliders.Tile6_wallNr45ID.collider:SetPos(526,86.6392,688.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr45ID.collider, 3)
level06.colliders.Tile6_wallNr46ID = {}
level06.colliders.Tile6_wallNr46ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr46ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr46ID.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level06.colliders.Tile6_wallNr46ID.collider:SetHalfLengths(0.3,7.20815,4.47214)
level06.colliders.Tile6_wallNr46ID.collider:SetPos(516,86.4472,693)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr46ID.collider, 3)
level06.props.Tile6_FenceID = {}
level06.props.Tile6_FenceID.model = Assets.LoadModel('Models/tile6_fence.model')
level06.props.Tile6_FenceID.transformID = Gear.BindStaticInstance(level06.props.Tile6_FenceID.model)
Transform.SetPosition(level06.props.Tile6_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.Tile6_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.Tile6_FenceID.transformID, {x=-0, y=0, z=-0})
level06.colliders.Tile6_wallNrID = {}
level06.colliders.Tile6_wallNrID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNrID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNrID.collider:SetAxes(-0.780869, 0, 0.624695, 0, -1, 0, 0.624695, 0, 0.780869)
level06.colliders.Tile6_wallNrID.collider:SetHalfLengths(0.3,5.76805,6.40312)
level06.colliders.Tile6_wallNrID.collider:SetPos(464,84.5271,673)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNrID.collider, 3)
level06.colliders.Tile6_wallNr1ID = {}
level06.colliders.Tile6_wallNr1ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr1ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr1ID.collider:SetAxes(-0.974391, 0, 0.22486, 0, -1, 0, 0.22486, 0, 0.974391)
level06.colliders.Tile6_wallNr1ID.collider:SetHalfLengths(0.3,5.09601,6.67083)
level06.colliders.Tile6_wallNr1ID.collider:SetPos(469.5,85.2951,684.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr1ID.collider, 3)
level06.colliders.Tile6_wallNr8ID = {}
level06.colliders.Tile6_wallNr8ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr8ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr8ID.collider:SetAxes(-0.98995, 0, -0.141421, -0, -1, 0, -0.141421, 0, 0.98995)
level06.colliders.Tile6_wallNr8ID.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.Tile6_wallNr8ID.collider:SetPos(470.5,85.3911,694.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr8ID.collider, 3)
level06.colliders.Tile6_wallNr9ID = {}
level06.colliders.Tile6_wallNr9ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr9ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr9ID.collider:SetAxes(-0.98995, 0, -0.141421, -0, -1, 0, -0.141421, 0, 0.98995)
level06.colliders.Tile6_wallNr9ID.collider:SetHalfLengths(0.3,5.38403,3.53553)
level06.colliders.Tile6_wallNr9ID.collider:SetPos(469.5,85.1031,701.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr9ID.collider, 3)
level06.colliders.Tile6_wallNr10ID = {}
level06.colliders.Tile6_wallNr10ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr10ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr10ID.collider:SetAxes(-0.5547, 0, -0.83205, -0, -1, 0, -0.83205, 0, 0.5547)
level06.colliders.Tile6_wallNr10ID.collider:SetHalfLengths(0.3,5,3.60555)
level06.colliders.Tile6_wallNr10ID.collider:SetPos(466,85.4871,707)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr10ID.collider, 3)
level06.colliders.Tile6_wallNr11ID = {}
level06.colliders.Tile6_wallNr11ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr11ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr11ID.collider:SetAxes(-0.0995037, 0, -0.995037, -0, -1, 0, -0.995037, 0, 0.0995037)
level06.colliders.Tile6_wallNr11ID.collider:SetHalfLengths(0.3,5.57604,10.0499)
level06.colliders.Tile6_wallNr11ID.collider:SetPos(453,85.4871,710)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr11ID.collider, 3)
level06.colliders.Tile6_wallNr12ID = {}
level06.colliders.Tile6_wallNr12ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr12ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr12ID.collider:SetAxes(0.0643823, 0, -0.997925, 0, -1, -0, -0.997925, 0, -0.0643823)
level06.colliders.Tile6_wallNr12ID.collider:SetHalfLengths(0.3,22.3772,15.5322)
level06.colliders.Tile6_wallNr12ID.collider:SetPos(427.5,84.9111,710)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr12ID.collider, 3)
level06.colliders.Tile6_wallNr13ID = {}
level06.colliders.Tile6_wallNr13ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr13ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr13ID.collider:SetAxes(-0.813733, 0, -0.581238, -0, -1, 0, -0.581238, 0, 0.813733)
level06.colliders.Tile6_wallNr13ID.collider:SetHalfLengths(0.3,5.67205,4.30116)
level06.colliders.Tile6_wallNr13ID.collider:SetPos(409.5,102.288,712.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr13ID.collider, 3)
level06.colliders.Tile6_wallNr14ID = {}
level06.colliders.Tile6_wallNr14ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr14ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr14ID.collider:SetAxes(0.071247, 0, -0.997459, 0, -1, -0, -0.997459, 0, -0.071247)
level06.colliders.Tile6_wallNr14ID.collider:SetHalfLengths(0.3,6.63211,7.01783)
level06.colliders.Tile6_wallNr14ID.collider:SetPos(449,86.6392,737.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr14ID.collider, 3)
level06.colliders.Tile6_wallNr15ID = {}
level06.colliders.Tile6_wallNr15ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr15ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr15ID.collider:SetAxes(0.0995037, 0, -0.995037, 0, -1, -0, -0.995037, 0, -0.0995037)
level06.colliders.Tile6_wallNr15ID.collider:SetHalfLengths(0.3,21.5131,15.0748)
level06.colliders.Tile6_wallNr15ID.collider:SetPos(427,88.2713,735.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr15ID.collider, 3)
level06.colliders.Tile6_wallNr18ID = {}
level06.colliders.Tile6_wallNr18ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr18ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr18ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level06.colliders.Tile6_wallNr18ID.collider:SetHalfLengths(0.3,5,4.24264)
level06.colliders.Tile6_wallNr18ID.collider:SetPos(409,104.784,731)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr18ID.collider, 3)
level06.props.New31ID = {}
level06.props.New31ID.collider = OBBCollider.Create(-1)
level06.props.New31ID.collider:SetOffset(0,0,0)
level06.props.New31ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level06.props.New31ID.collider:SetHalfLengths(60.7841,42.5685,21.1744)
level06.props.New31ID.collider:SetPos(443.5,205.428,790.5)
CollisionHandler.AddOBB(level06.props.New31ID.collider, 3)
level06.props.New31ID.lightIndex = Light.addLight(443.5, 205.428, 790.5, 1, 1, 1, 500,1)
end
level06.unload = function()
level06.props.tile6ID = nil
Gear.UnbindInstance(level06.props.t6s1ID.transformID)
Assets.UnloadModel('Models/tile6_s1.model')
level06.props.t6s1ID = nil
Gear.UnbindInstance(level06.props.t6s2ID.transformID)
Assets.UnloadModel('Models/tile6_s2.model')
level06.props.t6s2ID = nil
Gear.UnbindInstance(level06.props.t6s7ID.transformID)
Assets.UnloadModel('Models/tile6_s7.model')
level06.props.t6s7ID = nil
Gear.UnbindInstance(level06.props.t6s10ID.transformID)
Assets.UnloadModel('Models/tile6_s10.model')
level06.props.t6s10ID = nil
Gear.UnbindInstance(level06.props.t6s12ID.transformID)
Assets.UnloadModel('Models/tile6_s12.model')
level06.props.t6s12ID = nil
Gear.UnbindInstance(level06.props.t6s13ID.transformID)
Assets.UnloadModel('Models/tile6_s13.model')
level06.props.t6s13ID = nil
level06.colliders.Tile6_wallNr3ID = nil
level06.colliders.Tile6_wallNr4ID = nil
level06.colliders.Tile6_wallNr5ID = nil
level06.colliders.Tile6_wallNr6ID = nil
level06.colliders.Tile6_wallNr7ID = nil
level06.colliders.Tile6_wallNr16ID = nil
level06.colliders.Tile6_wallNr17ID = nil
level06.colliders.Tile6_wallNr19ID = nil
level06.colliders.Tile6_wallNr20ID = nil
level06.colliders.Tile6_wallNr21ID = nil
level06.colliders.Tile6_wallNr22ID = nil
level06.colliders.Tile6_wallNr23ID = nil
level06.colliders.Tile6_wallNr29ID = nil
level06.colliders.Tile6_wallNr30ID = nil
level06.colliders.Tile6_wallNr2ID = nil
level06.colliders.Tile6_wallNr31ID = nil
level06.colliders.Tile6_wallNr32ID = nil
level06.colliders.Tile6_wallNr33ID = nil
level06.colliders.Tile6_wallNr34ID = nil
level06.colliders.Tile6_wallNr35ID = nil
level06.colliders.Tile6_wallNr36ID = nil
level06.colliders.Tile6_wallNr37ID = nil
level06.colliders.Tile6_wallNr38ID = nil
level06.colliders.Tile6_wallNr39ID = nil
level06.colliders.Tile6_wallNr40ID = nil
level06.colliders.Tile6_wallNr41ID = nil
level06.colliders.Tile6_wallNr42ID = nil
level06.colliders.Tile6_wallNr43ID = nil
level06.colliders.Tile6_wallNr44ID = nil
level06.colliders.Tile6_wallNr45ID = nil
level06.colliders.Tile6_wallNr46ID = nil
Gear.UnbindInstance(level06.props.Tile6_FenceID.transformID)
Assets.UnloadModel('Models/tile6_fence.model')
level06.props.Tile6_FenceID = nil
level06.colliders.Tile6_wallNrID = nil
level06.colliders.Tile6_wallNr1ID = nil
level06.colliders.Tile6_wallNr8ID = nil
level06.colliders.Tile6_wallNr9ID = nil
level06.colliders.Tile6_wallNr10ID = nil
level06.colliders.Tile6_wallNr11ID = nil
level06.colliders.Tile6_wallNr12ID = nil
level06.colliders.Tile6_wallNr13ID = nil
level06.colliders.Tile6_wallNr14ID = nil
level06.colliders.Tile6_wallNr15ID = nil
level06.colliders.Tile6_wallNr18ID = nil
Light.removeLight(level06.props.New31ID.lightIndex)
level06.props.New31ID = nil
level06.props = nil
level06.colliders = nil
level06.triggers = nil
level06.enemies = nil
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
level07.enemies = {}
level07.props.tile7ID = {}
level07.props.t6s3ID = {}
level07.props.t6s3ID.model = Assets.LoadModel('Models/tile6_s3.model')
level07.props.t6s3ID.transformID = Gear.BindStaticInstance(level07.props.t6s3ID.model)
Transform.SetPosition(level07.props.t6s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s3ID.transformID, {x=-0, y=0, z=-0})
level07.props.t6s4ID = {}
level07.props.t6s4ID.model = Assets.LoadModel('Models/tile6_s4.model')
level07.props.t6s4ID.transformID = Gear.BindStaticInstance(level07.props.t6s4ID.model)
Transform.SetPosition(level07.props.t6s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s4ID.transformID, {x=-0, y=0, z=-0})
level07.props.t6s5ID = {}
level07.props.t6s5ID.model = Assets.LoadModel('Models/tile6_s5.model')
level07.props.t6s5ID.transformID = Gear.BindStaticInstance(level07.props.t6s5ID.model)
Transform.SetPosition(level07.props.t6s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s5ID.transformID, {x=-0, y=0, z=-0})
level07.props.t6s6ID = {}
level07.props.t6s6ID.model = Assets.LoadModel('Models/tile6_s6.model')
level07.props.t6s6ID.transformID = Gear.BindStaticInstance(level07.props.t6s6ID.model)
Transform.SetPosition(level07.props.t6s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s6ID.transformID, {x=-0, y=0, z=-0})
level07.props.t6s8ID = {}
level07.props.t6s8ID.model = Assets.LoadModel('Models/tile6_s8.model')
level07.props.t6s8ID.transformID = Gear.BindStaticInstance(level07.props.t6s8ID.model)
Transform.SetPosition(level07.props.t6s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s8ID.transformID, {x=-0, y=0, z=-0})
level07.props.t6s9ID = {}
level07.props.t6s9ID.model = Assets.LoadModel('Models/tile6_s9.model')
level07.props.t6s9ID.transformID = Gear.BindStaticInstance(level07.props.t6s9ID.model)
Transform.SetPosition(level07.props.t6s9ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s9ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s9ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s1ID = {}
level07.props.t7s1ID.model = Assets.LoadModel('Models/tile7_s1.model')
level07.props.t7s1ID.transformID = Gear.BindStaticInstance(level07.props.t7s1ID.model)
Transform.SetPosition(level07.props.t7s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s1ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s2ID = {}
level07.props.t7s2ID.model = Assets.LoadModel('Models/tile7_s2.model')
level07.props.t7s2ID.transformID = Gear.BindStaticInstance(level07.props.t7s2ID.model)
Transform.SetPosition(level07.props.t7s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s2ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s3ID = {}
level07.props.t7s3ID.model = Assets.LoadModel('Models/tile7_s3.model')
level07.props.t7s3ID.transformID = Gear.BindStaticInstance(level07.props.t7s3ID.model)
Transform.SetPosition(level07.props.t7s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s3ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s4ID = {}
level07.props.t7s4ID.model = Assets.LoadModel('Models/tile7_s4.model')
level07.props.t7s4ID.transformID = Gear.BindStaticInstance(level07.props.t7s4ID.model)
Transform.SetPosition(level07.props.t7s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s4ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s5ID = {}
level07.props.t7s5ID.model = Assets.LoadModel('Models/tile7_s5.model')
level07.props.t7s5ID.transformID = Gear.BindStaticInstance(level07.props.t7s5ID.model)
Transform.SetPosition(level07.props.t7s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s5ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s6ID = {}
level07.props.t7s6ID.model = Assets.LoadModel('Models/tile7_s6.model')
level07.props.t7s6ID.transformID = Gear.BindStaticInstance(level07.props.t7s6ID.model)
Transform.SetPosition(level07.props.t7s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s6ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s7ID = {}
level07.props.t7s7ID.model = Assets.LoadModel('Models/tile7_s7.model')
level07.props.t7s7ID.transformID = Gear.BindStaticInstance(level07.props.t7s7ID.model)
Transform.SetPosition(level07.props.t7s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s7ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s8ID = {}
level07.props.t7s8ID.model = Assets.LoadModel('Models/tile7_s8.model')
level07.props.t7s8ID.transformID = Gear.BindStaticInstance(level07.props.t7s8ID.model)
Transform.SetPosition(level07.props.t7s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s8ID.transformID, {x=-0, y=0, z=-0})
level07.props.t7s9ID = {}
level07.props.t7s9ID.model = Assets.LoadModel('Models/tile7_s9.model')
level07.props.t7s9ID.transformID = Gear.BindStaticInstance(level07.props.t7s9ID.model)
Transform.SetPosition(level07.props.t7s9ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s9ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s9ID.transformID, {x=-0, y=0, z=-0})
level07.colliders.Tile7_wallNrID = {}
level07.colliders.Tile7_wallNrID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNrID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNrID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNrID.collider:SetHalfLengths(0.3,14.1855,31.5)
level07.colliders.Tile7_wallNrID.collider:SetPos(384,122.35,639.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNrID.collider, 3)
level07.colliders.Tile7_wallNr1ID = {}
level07.colliders.Tile7_wallNr1ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr1ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr1ID.collider:SetAxes(0.514496, 0, -0.857493, 0, -1, -0, -0.857493, 0, -0.514496)
level07.colliders.Tile7_wallNr1ID.collider:SetHalfLengths(0.3,5,2.91548)
level07.colliders.Tile7_wallNr1ID.collider:SetPos(381.5,131.535,606.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr1ID.collider, 3)
level07.colliders.Tile7_wallNr2ID = {}
level07.colliders.Tile7_wallNr2ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr2ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr2ID.collider:SetAxes(0.485643, 0, -0.874157, 0, -1, -0, -0.874157, 0, -0.485643)
level07.colliders.Tile7_wallNr2ID.collider:SetHalfLengths(0.3,5.24173,5.14782)
level07.colliders.Tile7_wallNr2ID.collider:SetPos(374.5,131.535,602.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr2ID.collider, 3)
level07.colliders.Tile7_wallNr3ID = {}
level07.colliders.Tile7_wallNr3ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr3ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr3ID.collider:SetAxes(0.287348, 0, -0.957826, 0, -1, -0, -0.957826, 0, -0.287348)
level07.colliders.Tile7_wallNr3ID.collider:SetHalfLengths(0.3,5,5.22015)
level07.colliders.Tile7_wallNr3ID.collider:SetPos(365,131.293,598.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr3ID.collider, 3)
level07.colliders.Tile7_wallNr5ID = {}
level07.colliders.Tile7_wallNr5ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr5ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr5ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr5ID.collider:SetHalfLengths(0.3,5,19.5)
level07.colliders.Tile7_wallNr5ID.collider:SetPos(329,142.171,552.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr5ID.collider, 3)
level07.colliders.Tile7_wallNr6ID = {}
level07.colliders.Tile7_wallNr6ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr6ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr6ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.Tile7_wallNr6ID.collider:SetHalfLengths(0.3,5,12)
level07.colliders.Tile7_wallNr6ID.collider:SetPos(341,142.171,533)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr6ID.collider, 3)
level07.colliders.Tile7_wallNr7ID = {}
level07.colliders.Tile7_wallNr7ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr7ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr7ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr7ID.collider:SetHalfLengths(0.3,5,6.5)
level07.colliders.Tile7_wallNr7ID.collider:SetPos(353,142.171,526.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr7ID.collider, 3)
level07.colliders.Tile7_wallNr8ID = {}
level07.colliders.Tile7_wallNr8ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr8ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr8ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.Tile7_wallNr8ID.collider:SetHalfLengths(0.3,5,14)
level07.colliders.Tile7_wallNr8ID.collider:SetPos(339,142.171,520)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr8ID.collider, 3)
level07.colliders.Tile7_wallNr9ID = {}
level07.colliders.Tile7_wallNr9ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr9ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr9ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr9ID.collider:SetHalfLengths(0.3,5,4)
level07.colliders.Tile7_wallNr9ID.collider:SetPos(324,142.171,516)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr9ID.collider, 3)
level07.colliders.Tile7_wallNr10ID = {}
level07.colliders.Tile7_wallNr10ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr10ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr10ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.Tile7_wallNr10ID.collider:SetHalfLengths(0.3,5,4)
level07.colliders.Tile7_wallNr10ID.collider:SetPos(319,142.171,516)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr10ID.collider, 3)
level07.colliders.Tile7_wallNr11ID = {}
level07.colliders.Tile7_wallNr11ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr11ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr11ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.Tile7_wallNr11ID.collider:SetHalfLengths(0.3,5.24173,14.5)
level07.colliders.Tile7_wallNr11ID.collider:SetPos(304.5,142.171,520)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr11ID.collider, 3)
level07.colliders.Tile7_wallNr16ID = {}
level07.colliders.Tile7_wallNr16ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr16ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr16ID.collider:SetAxes(0.152057, 0, -0.988372, 0, -1, -0, -0.988372, 0, -0.152057)
level07.colliders.Tile7_wallNr16ID.collider:SetHalfLengths(0.3,5,6.57647)
level07.colliders.Tile7_wallNr16ID.collider:SetPos(203.5,125.009,521)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr16ID.collider, 3)
level07.colliders.Tile7_wallNr17ID = {}
level07.colliders.Tile7_wallNr17ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr17ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr17ID.collider:SetAxes(0.066519, 0, -0.997785, 0, -1, -0, -0.997785, 0, -0.066519)
level07.colliders.Tile7_wallNr17ID.collider:SetHalfLengths(0.3,5,7.51665)
level07.colliders.Tile7_wallNr17ID.collider:SetPos(189.5,125.009,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr17ID.collider, 3)
level07.colliders.Tile7_wallNr18ID = {}
level07.colliders.Tile7_wallNr18ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr18ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr18ID.collider:SetAxes(-0.0830455, 0, -0.996546, -0, -1, 0, -0.996546, 0, 0.0830455)
level07.colliders.Tile7_wallNr18ID.collider:SetHalfLengths(0.3,5.24172,6.0208)
level07.colliders.Tile7_wallNr18ID.collider:SetPos(176,125.009,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr18ID.collider, 3)
level07.colliders.Tile7_wallNr19ID = {}
level07.colliders.Tile7_wallNr19ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr19ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr19ID.collider:SetAxes(-0.22486, 0, -0.974391, -0, -1, 0, -0.974391, 0, 0.22486)
level07.colliders.Tile7_wallNr19ID.collider:SetHalfLengths(0.3,6.69208,6.67083)
level07.colliders.Tile7_wallNr19ID.collider:SetPos(163.5,125.25,521.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr19ID.collider, 3)
level07.colliders.Tile7_wallNr20ID = {}
level07.colliders.Tile7_wallNr20ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr20ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr20ID.collider:SetAxes(-0.640184, 0, -0.768221, -0, -1, 0, -0.768221, 0, 0.640184)
level07.colliders.Tile7_wallNr20ID.collider:SetHalfLengths(0.3,7.17552,7.81025)
level07.colliders.Tile7_wallNr20ID.collider:SetPos(151,126.942,528)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr20ID.collider, 3)
level07.colliders.Tile7_wallNr21ID = {}
level07.colliders.Tile7_wallNr21ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr21ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr21ID.collider:SetAxes(-0.763386, 0, -0.645942, -0, -1, 0, -0.645942, 0, 0.763386)
level07.colliders.Tile7_wallNr21ID.collider:SetHalfLengths(0.3,5.9669,8.51469)
level07.colliders.Tile7_wallNr21ID.collider:SetPos(139.5,129.118,539.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr21ID.collider, 3)
level07.colliders.Tile7_wallNr22ID = {}
level07.colliders.Tile7_wallNr22ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr22ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr22ID.collider:SetAxes(-0.970143, 0, 0.242536, 0, -1, 0, 0.242536, 0, 0.970143)
level07.colliders.Tile7_wallNr22ID.collider:SetHalfLengths(0.3,5.9669,6.18466)
level07.colliders.Tile7_wallNr22ID.collider:SetPos(135.5,130.085,552)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr22ID.collider, 3)
level07.colliders.Tile7_wallNr23ID = {}
level07.colliders.Tile7_wallNr23ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr23ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr23ID.collider:SetAxes(-0.910366, 0, 0.413803, 0, -1, 0, 0.413803, 0, 0.910366)
level07.colliders.Tile7_wallNr23ID.collider:SetHalfLengths(0.3,6.45035,6.04152)
level07.colliders.Tile7_wallNr23ID.collider:SetPos(139.5,129.118,563.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr23ID.collider, 3)
level07.colliders.Tile7_wallNr24ID = {}
level07.colliders.Tile7_wallNr24ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr24ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr24ID.collider:SetAxes(-0.658505, 0, 0.752577, 0, -1, 0, 0.752577, 0, 0.658505)
level07.colliders.Tile7_wallNr24ID.collider:SetHalfLengths(0.3,5.72517,10.6301)
level07.colliders.Tile7_wallNr24ID.collider:SetPos(150,127.668,576)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr24ID.collider, 3)
level07.colliders.Tile7_wallNr26ID = {}
level07.colliders.Tile7_wallNr26ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr26ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr26ID.collider:SetAxes(-0.633238, 0, -0.773957, -0, -1, 0, -0.773957, 0, 0.633238)
level07.colliders.Tile7_wallNr26ID.collider:SetHalfLengths(0.3,7.9007,7.10634)
level07.colliders.Tile7_wallNr26ID.collider:SetPos(138.5,83.6736,713.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr26ID.collider, 3)
level07.colliders.Tile7_wallNr27ID = {}
level07.colliders.Tile7_wallNr27ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr27ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr27ID.collider:SetAxes(-0.95448, 0, -0.298275, -0, -1, 0, -0.298275, 0, 0.95448)
level07.colliders.Tile7_wallNr27ID.collider:SetHalfLengths(0.3,10.0762,8.38153)
level07.colliders.Tile7_wallNr27ID.collider:SetPos(130.5,86.5743,726)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr27ID.collider, 3)
level07.colliders.Tile7_wallNr28ID = {}
level07.colliders.Tile7_wallNr28ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr28ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr28ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.Tile7_wallNr28ID.collider:SetHalfLengths(0.3,7.65897,5)
level07.colliders.Tile7_wallNr28ID.collider:SetPos(128,91.6505,739)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr28ID.collider, 3)
level07.colliders.Tile7_wallNr29ID = {}
level07.colliders.Tile7_wallNr29ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr29ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr29ID.collider:SetAxes(-0.776114, 0, 0.630593, 0, -1, 0, 0.630593, 0, 0.776114)
level07.colliders.Tile7_wallNr29ID.collider:SetHalfLengths(0.3,7.9007,10.3078)
level07.colliders.Tile7_wallNr29ID.collider:SetPos(134.5,94.3095,752)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr29ID.collider, 3)
level07.colliders.Tile7_wallNr30ID = {}
level07.colliders.Tile7_wallNr30ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr30ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr30ID.collider:SetAxes(-0.573462, 0, 0.819232, 0, -1, 0, 0.819232, 0, 0.573462)
level07.colliders.Tile7_wallNr30ID.collider:SetHalfLengths(0.3,6.9338,6.10328)
level07.colliders.Tile7_wallNr30ID.collider:SetPos(146,97.2102,763.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr30ID.collider, 3)
level07.colliders.Tile7_wallNr31ID = {}
level07.colliders.Tile7_wallNr31ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr31ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr31ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.Tile7_wallNr31ID.collider:SetHalfLengths(0.3,5,27.5)
level07.colliders.Tile7_wallNr31ID.collider:SetPos(178.5,99.144,767)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr31ID.collider, 3)
level07.colliders.Tile7_wallNr32ID = {}
level07.colliders.Tile7_wallNr32ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr32ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr32ID.collider:SetAxes(0.8, -0, 0.6, 0, -1, -0, 0.6, 0, -0.8)
level07.colliders.Tile7_wallNr32ID.collider:SetHalfLengths(0.3,6.69207,2.5)
level07.colliders.Tile7_wallNr32ID.collider:SetPos(207.5,99.144,765)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr32ID.collider, 3)
level07.colliders.Tile7_wallNr33ID = {}
level07.colliders.Tile7_wallNr33ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr33ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr33ID.collider:SetAxes(0.993884, -0, 0.110432, 0, -1, -0, 0.110432, 0, -0.993884)
level07.colliders.Tile7_wallNr33ID.collider:SetHalfLengths(0.3,8.62588,9.05539)
level07.colliders.Tile7_wallNr33ID.collider:SetPos(210,97.4519,754)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr33ID.collider, 3)
level07.colliders.Tile7_wallNr35ID = {}
level07.colliders.Tile7_wallNr35ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr35ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr35ID.collider:SetAxes(-0.948683, 0, -0.316228, -0, -1, 0, -0.316228, 0, 0.948683)
level07.colliders.Tile7_wallNr35ID.collider:SetHalfLengths(0.3,8.62588,6.32456)
level07.colliders.Tile7_wallNr35ID.collider:SetPos(304,103.012,742)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr35ID.collider, 3)
level07.colliders.Tile7_wallNr36ID = {}
level07.colliders.Tile7_wallNr36ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr36ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr36ID.collider:SetAxes(-0.563337, 0, 0.826227, 0, -1, 0, 0.826227, 0, 0.563337)
level07.colliders.Tile7_wallNr36ID.collider:SetHalfLengths(0.3,6.20862,13.3135)
level07.colliders.Tile7_wallNr36ID.collider:SetPos(313,99.3857,755.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr36ID.collider, 3)
level07.colliders.Tile7_wallNr37ID = {}
level07.colliders.Tile7_wallNr37ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr37ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr37ID.collider:SetAxes(-0.114624, 0, 0.993409, 0, -1, 0, 0.993409, 0, 0.114624)
level07.colliders.Tile7_wallNr37ID.collider:SetHalfLengths(0.3,5.72517,13.0863)
level07.colliders.Tile7_wallNr37ID.collider:SetPos(337,98.1771,764.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr37ID.collider, 3)
level07.colliders.Tile7_wallNr38ID = {}
level07.colliders.Tile7_wallNr38ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr38ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr38ID.collider:SetAxes(0.5547, -0, 0.83205, 0, -1, -0, 0.83205, 0, -0.5547)
level07.colliders.Tile7_wallNr38ID.collider:SetHalfLengths(0.3,5.48345,12.6194)
level07.colliders.Tile7_wallNr38ID.collider:SetPos(360.5,98.9023,759)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr38ID.collider, 3)
level07.colliders.Tile7_wallNr39ID = {}
level07.colliders.Tile7_wallNr39ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr39ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr39ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level07.colliders.Tile7_wallNr39ID.collider:SetHalfLengths(0.3,6.45035,9.19239)
level07.colliders.Tile7_wallNr39ID.collider:SetPos(377.5,98.4188,745.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr39ID.collider, 3)
level07.colliders.Tile7_wallNr40ID = {}
level07.colliders.Tile7_wallNr40ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr40ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr40ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr40ID.collider:SetHalfLengths(0.3,8.8676,3.5)
level07.colliders.Tile7_wallNr40ID.collider:SetPos(384,99.8692,735.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr40ID.collider, 3)
level07.colliders.Tile7_wallNr43ID = {}
level07.colliders.Tile7_wallNr43ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr43ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr43ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.Tile7_wallNr43ID.collider:SetHalfLengths(0.3,6.93379,1)
level07.colliders.Tile7_wallNr43ID.collider:SetPos(369,104.22,694)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr43ID.collider, 3)
level07.colliders.Tile7_wallNr45ID = {}
level07.colliders.Tile7_wallNr45ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr45ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr45ID.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level07.colliders.Tile7_wallNr45ID.collider:SetHalfLengths(0.3,6.45035,4.74342)
level07.colliders.Tile7_wallNr45ID.collider:SetPos(379.5,120.899,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr45ID.collider, 3)
level07.colliders.Tile7_wallNr48ID = {}
level07.colliders.Tile7_wallNr48ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr48ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr48ID.collider:SetAxes(0.650791, 0, -0.759257, 0, -1, -0, -0.759257, 0, -0.650791)
level07.colliders.Tile7_wallNr48ID.collider:SetHalfLengths(0.3,5.24173,4.60977)
level07.colliders.Tile7_wallNr48ID.collider:SetPos(203.5,84.3988,714)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr48ID.collider, 3)
level07.colliders.Tile7_wallNr49ID = {}
level07.colliders.Tile7_wallNr49ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr49ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr49ID.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level07.colliders.Tile7_wallNr49ID.collider:SetHalfLengths(0.3,6.20862,4.47214)
level07.colliders.Tile7_wallNr49ID.collider:SetPos(196,84.157,709)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr49ID.collider, 3)
level07.colliders.Tile7_wallNr50ID = {}
level07.colliders.Tile7_wallNr50ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr50ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr50ID.collider:SetAxes(0.187112, 0, -0.982339, 0, -1, -0, -0.982339, 0, -0.187112)
level07.colliders.Tile7_wallNr50ID.collider:SetHalfLengths(0.3,5.9669,10.6888)
level07.colliders.Tile7_wallNr50ID.collider:SetPos(181.5,82.9484,705)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr50ID.collider, 3)
level07.colliders.Tile7_wallNr51ID = {}
level07.colliders.Tile7_wallNr51ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr51ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr51ID.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level07.colliders.Tile7_wallNr51ID.collider:SetHalfLengths(0.3,5.24172,1.11803)
level07.colliders.Tile7_wallNr51ID.collider:SetPos(170,81.9815,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr51ID.collider, 3)
level07.colliders.Tile7_wallNr52ID = {}
level07.colliders.Tile7_wallNr52ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr52ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr52ID.collider:SetAxes(0.0995037, 0, -0.995037, 0, -1, -0, -0.995037, 0, -0.0995037)
level07.colliders.Tile7_wallNr52ID.collider:SetHalfLengths(0.3,5,5.02494)
level07.colliders.Tile7_wallNr52ID.collider:SetPos(164,82.2232,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr52ID.collider, 3)
level07.colliders.Tile7_wallNr55ID = {}
level07.colliders.Tile7_wallNr55ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr55ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr55ID.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level07.colliders.Tile7_wallNr55ID.collider:SetHalfLengths(0.3,7.17553,5)
level07.colliders.Tile7_wallNr55ID.collider:SetPos(173,127.909,590)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr55ID.collider, 3)
level07.colliders.Tile7_wallNr56ID = {}
level07.colliders.Tile7_wallNr56ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr56ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr56ID.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level07.colliders.Tile7_wallNr56ID.collider:SetHalfLengths(0.3,5.72517,7.82624)
level07.colliders.Tile7_wallNr56ID.collider:SetPos(184,125.734,596.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr56ID.collider, 3)
level07.colliders.Tile7_wallNr57ID = {}
level07.colliders.Tile7_wallNr57ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr57ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr57ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level07.colliders.Tile7_wallNr57ID.collider:SetHalfLengths(0.3,5.24172,4.12311)
level07.colliders.Tile7_wallNr57ID.collider:SetPos(195,125.009,599)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr57ID.collider, 3)
level07.colliders.Tile7_wallNr58ID = {}
level07.colliders.Tile7_wallNr58ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr58ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr58ID.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level07.colliders.Tile7_wallNr58ID.collider:SetHalfLengths(0.3,5.24172,4.74342)
level07.colliders.Tile7_wallNr58ID.collider:SetPos(203.5,125.25,596.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr58ID.collider, 3)
level07.colliders.Tile7_wallNr59ID = {}
level07.colliders.Tile7_wallNr59ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr59ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr59ID.collider:SetAxes(-0.877896, 0, 0.478852, 0, -1, 0, 0.478852, 0, 0.877896)
level07.colliders.Tile7_wallNr59ID.collider:SetHalfLengths(0.3,20.2287,12.53)
level07.colliders.Tile7_wallNr59ID.collider:SetPos(214,125.009,606)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr59ID.collider, 3)
level07.colliders.Tile7_wallNr60ID = {}
level07.colliders.Tile7_wallNr60ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr60ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr60ID.collider:SetAxes(-0.164399, 0, -0.986394, -0, -1, 0, -0.986394, 0, 0.164399)
level07.colliders.Tile7_wallNr60ID.collider:SetHalfLengths(0.3,6.9338,3.04138)
level07.colliders.Tile7_wallNr60ID.collider:SetPos(217,109.78,617.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr60ID.collider, 3)
level07.colliders.Tile7_wallNr61ID = {}
level07.colliders.Tile7_wallNr61ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr61ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr61ID.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level07.colliders.Tile7_wallNr61ID.collider:SetHalfLengths(0.3,7.41725,6.18466)
level07.colliders.Tile7_wallNr61ID.collider:SetPos(212.5,107.846,624)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr61ID.collider, 3)
level07.colliders.Tile7_wallNr62ID = {}
level07.colliders.Tile7_wallNr62ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr62ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr62ID.collider:SetAxes(-0.955779, 0, -0.294086, -0, -1, 0, -0.294086, 0, 0.955779)
level07.colliders.Tile7_wallNr62ID.collider:SetHalfLengths(0.3,7.9007,6.80074)
level07.colliders.Tile7_wallNr62ID.collider:SetPos(209,105.429,636.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr62ID.collider, 3)
level07.colliders.Tile7_wallNr63ID = {}
level07.colliders.Tile7_wallNr63ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr63ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr63ID.collider:SetAxes(-0.972387, 0, 0.233373, 0, -1, 0, 0.233373, 0, 0.972387)
level07.colliders.Tile7_wallNr63ID.collider:SetHalfLengths(0.3,10.8014,12.855)
level07.colliders.Tile7_wallNr63ID.collider:SetPos(210,102.528,655.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr63ID.collider, 3)
level07.colliders.Tile7_wallNr64ID = {}
level07.colliders.Tile7_wallNr64ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr64ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr64ID.collider:SetAxes(-0.573462, 0, 0.819232, 0, -1, 0, 0.819232, 0, 0.573462)
level07.colliders.Tile7_wallNr64ID.collider:SetHalfLengths(0.3,12.2517,12.2066)
level07.colliders.Tile7_wallNr64ID.collider:SetPos(223,96.7267,675)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr64ID.collider, 3)
level07.colliders.Tile7_wallNr65ID = {}
level07.colliders.Tile7_wallNr65ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr65ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr65ID.collider:SetAxes(-0.291162, 0, 0.956674, 0, -1, 0, 0.956674, 0, 0.291162)
level07.colliders.Tile7_wallNr65ID.collider:SetHalfLengths(0.3,6.45035,12.0208)
level07.colliders.Tile7_wallNr65ID.collider:SetPos(244.5,89.475,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr65ID.collider, 3)
level07.colliders.Tile7_wallNr66ID = {}
level07.colliders.Tile7_wallNr66ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr66ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr66ID.collider:SetAxes(0.178885, -0, 0.98387, 0, -1, -0, 0.98387, 0, -0.178885)
level07.colliders.Tile7_wallNr66ID.collider:SetHalfLengths(0.3,6.20863,5.59017)
level07.colliders.Tile7_wallNr66ID.collider:SetPos(261.5,88.0246,688)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr66ID.collider, 3)
level07.colliders.Tile7_wallNr67ID = {}
level07.colliders.Tile7_wallNr67ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr67ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr67ID.collider:SetAxes(0.351123, -0, 0.936329, 0, -1, -0, 0.936329, 0, -0.351123)
level07.colliders.Tile7_wallNr67ID.collider:SetHalfLengths(0.3,6.69208,4.272)
level07.colliders.Tile7_wallNr67ID.collider:SetPos(271,86.816,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr67ID.collider, 3)
level07.colliders.Tile7_wallNr69ID = {}
level07.colliders.Tile7_wallNr69ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr69ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr69ID.collider:SetAxes(-0.894427, 0, -0.447214, -0, -1, 0, -0.447214, 0, 0.894427)
level07.colliders.Tile7_wallNr69ID.collider:SetHalfLengths(0.3,5.24173,2.23607)
level07.colliders.Tile7_wallNr69ID.collider:SetPos(308,103.495,714)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr69ID.collider, 3)
level07.colliders.Tile7_wallNr70ID = {}
level07.colliders.Tile7_wallNr70ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr70ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr70ID.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level07.colliders.Tile7_wallNr70ID.collider:SetHalfLengths(0.3,5.24172,3.04138)
level07.colliders.Tile7_wallNr70ID.collider:SetPos(306.5,103.253,719)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr70ID.collider, 3)
level07.colliders.Tile7_wallNr72ID = {}
level07.colliders.Tile7_wallNr72ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr72ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr72ID.collider:SetAxes(-0.976187, 0, -0.21693, -0, -1, 0, -0.21693, 0, 0.976187)
level07.colliders.Tile7_wallNr72ID.collider:SetHalfLengths(0.3,7.41725,4.60977)
level07.colliders.Tile7_wallNr72ID.collider:SetPos(330,130.81,609.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr72ID.collider, 3)
level07.colliders.Tile7_wallNr73ID = {}
level07.colliders.Tile7_wallNr73ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr73ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr73ID.collider:SetAxes(-0.995893, 0, -0.0905357, -0, -1, 0, -0.0905357, 0, 0.995893)
level07.colliders.Tile7_wallNr73ID.collider:SetHalfLengths(0.3,8.14243,5.52268)
level07.colliders.Tile7_wallNr73ID.collider:SetPos(328.5,128.393,619.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr73ID.collider, 3)
level07.colliders.Tile7_wallNr74ID = {}
level07.colliders.Tile7_wallNr74ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr74ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr74ID.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level07.colliders.Tile7_wallNr74ID.collider:SetHalfLengths(0.3,6.45035,6.32456)
level07.colliders.Tile7_wallNr74ID.collider:SetPos(330,125.25,631)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr74ID.collider, 3)
level07.colliders.Tile7_wallNr75ID = {}
level07.colliders.Tile7_wallNr75ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr75ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr75ID.collider:SetAxes(-0.880471, 0, 0.4741, 0, -1, 0, 0.4741, 0, 0.880471)
level07.colliders.Tile7_wallNr75ID.collider:SetHalfLengths(0.3,6.69208,7.38241)
level07.colliders.Tile7_wallNr75ID.collider:SetPos(335.5,123.8,643.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr75ID.collider, 3)
level07.colliders.Tile7_wallNr79ID = {}
level07.colliders.Tile7_wallNr79ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr79ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr79ID.collider:SetAxes(0.316228, 0, -0.948683, 0, -1, -0, -0.948683, 0, -0.316228)
level07.colliders.Tile7_wallNr79ID.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.Tile7_wallNr79ID.collider:SetPos(344.5,104.22,696.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr79ID.collider, 3)
level07.colliders.Tile7_wallNr80ID = {}
level07.colliders.Tile7_wallNr80ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr80ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr80ID.collider:SetAxes(-0.21693, 0, -0.976187, -0, -1, 0, -0.976187, 0, 0.21693)
level07.colliders.Tile7_wallNr80ID.collider:SetHalfLengths(0.3,5.48345,4.60977)
level07.colliders.Tile7_wallNr80ID.collider:SetPos(338.5,104.22,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr80ID.collider, 3)
level07.colliders.Tile7_wallNr81ID = {}
level07.colliders.Tile7_wallNr81ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr81ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr81ID.collider:SetAxes(-0.242536, 0, -0.970143, -0, -1, 0, -0.970143, 0, 0.242536)
level07.colliders.Tile7_wallNr81ID.collider:SetHalfLengths(0.3,5.48345,8.24621)
level07.colliders.Tile7_wallNr81ID.collider:SetPos(326,103.737,700)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr81ID.collider, 3)
level07.colliders.Tile7_wallNr83ID = {}
level07.colliders.Tile7_wallNr83ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr83ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr83ID.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level07.colliders.Tile7_wallNr83ID.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.Tile7_wallNr83ID.collider:SetPos(285.5,88.7498,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr83ID.collider, 3)
level07.colliders.Tile7_wallNr84ID = {}
level07.colliders.Tile7_wallNr84ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr84ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr84ID.collider:SetAxes(0.995893, -0, 0.0905357, 0, -1, -0, 0.0905357, 0, -0.995893)
level07.colliders.Tile7_wallNr84ID.collider:SetHalfLengths(0.3,6.45035,5.52268)
level07.colliders.Tile7_wallNr84ID.collider:SetPos(286.5,88.7498,665.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr84ID.collider, 3)
level07.colliders.Tile7_wallNr85ID = {}
level07.colliders.Tile7_wallNr85ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr85ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr85ID.collider:SetAxes(0.923077, 0, -0.384615, 0, -1, -0, -0.384615, 0, -0.923077)
level07.colliders.Tile7_wallNr85ID.collider:SetHalfLengths(0.3,8.62588,6.5)
level07.colliders.Tile7_wallNr85ID.collider:SetPos(284.5,90.2002,654)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr85ID.collider, 3)
level07.colliders.Tile7_wallNr86ID = {}
level07.colliders.Tile7_wallNr86ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr86ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr86ID.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level07.colliders.Tile7_wallNr86ID.collider:SetHalfLengths(0.3,8.62588,6.7082)
level07.colliders.Tile7_wallNr86ID.collider:SetPos(279,93.826,642)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr86ID.collider, 3)
level07.colliders.Tile7_wallNr87ID = {}
level07.colliders.Tile7_wallNr87ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr87ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr87ID.collider:SetAxes(0.83205, 0, -0.5547, 0, -1, -0, -0.5547, 0, -0.83205)
level07.colliders.Tile7_wallNr87ID.collider:SetHalfLengths(0.3,11.2848,12.6194)
level07.colliders.Tile7_wallNr87ID.collider:SetPos(269,97.4519,625.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr87ID.collider, 3)
level07.colliders.Tile7_wallNr88ID = {}
level07.colliders.Tile7_wallNr88ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr88ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr88ID.collider:SetAxes(0.274721, 0, -0.961524, 0, -1, -0, -0.961524, 0, -0.274721)
level07.colliders.Tile7_wallNr88ID.collider:SetHalfLengths(0.3,7.41724,3.64005)
level07.colliders.Tile7_wallNr88ID.collider:SetPos(258.5,103.737,614)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr88ID.collider, 3)
level07.colliders.Tile7_wallNr89ID = {}
level07.colliders.Tile7_wallNr89ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr89ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr89ID.collider:SetAxes(0.242536, 0, -0.970143, 0, -1, -0, -0.970143, 0, -0.242536)
level07.colliders.Tile7_wallNr89ID.collider:SetHalfLengths(0.3,6.20863,4.12311)
level07.colliders.Tile7_wallNr89ID.collider:SetPos(251,106.154,612)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr89ID.collider, 3)
level07.colliders.Tile7_wallNr90ID = {}
level07.colliders.Tile7_wallNr90ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr90ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr90ID.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level07.colliders.Tile7_wallNr90ID.collider:SetHalfLengths(0.3,5.48344,4.74342)
level07.colliders.Tile7_wallNr90ID.collider:SetPos(242.5,107.363,612.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr90ID.collider, 3)
level07.colliders.Tile7_wallNr91ID = {}
level07.colliders.Tile7_wallNr91ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr91ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr91ID.collider:SetAxes(0.870022, 0, -0.493013, 0, -1, -0, -0.493013, 0, -0.870022)
level07.colliders.Tile7_wallNr91ID.collider:SetHalfLengths(0.3,21.1956,17.2409)
level07.colliders.Tile7_wallNr91ID.collider:SetPos(229.5,107.846,599)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr91ID.collider, 3)
level07.colliders.Tile7_wallNr92ID = {}
level07.colliders.Tile7_wallNr92ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr92ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr92ID.collider:SetAxes(0.654931, -0, 0.755689, 0, -1, -0, 0.755689, 0, -0.654931)
level07.colliders.Tile7_wallNr92ID.collider:SetHalfLengths(0.3,6.20863,9.92472)
level07.colliders.Tile7_wallNr92ID.collider:SetPos(228.5,124.042,577.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr92ID.collider, 3)
level07.colliders.Tile7_wallNr93ID = {}
level07.colliders.Tile7_wallNr93ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr93ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr93ID.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level07.colliders.Tile7_wallNr93ID.collider:SetHalfLengths(0.3,5.48345,10.9202)
level07.colliders.Tile7_wallNr93ID.collider:SetPos(233,122.833,560.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr93ID.collider, 3)
level07.colliders.Tile7_wallNr96ID = {}
level07.colliders.Tile7_wallNr96ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr96ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr96ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.Tile7_wallNr96ID.collider:SetHalfLengths(0.3,5.48346,13)
level07.colliders.Tile7_wallNr96ID.collider:SetPos(302,142.654,533)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr96ID.collider, 3)
level07.colliders.Tile7_wallNr97ID = {}
level07.colliders.Tile7_wallNr97ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr97ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr97ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.Tile7_wallNr97ID.collider:SetHalfLengths(0.3,5.72517,20)
level07.colliders.Tile7_wallNr97ID.collider:SetPos(315,142.171,553)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr97ID.collider, 3)
level07.props.RockID = {}
level07.props.RockID.model = Assets.LoadModel('Models/Stone2.model')
level07.props.RockID.transformID = Gear.BindStaticInstance(level07.props.RockID.model)
Transform.SetPosition(level07.props.RockID.transformID, {x=390.664, y=123.514, z=630.811})
Transform.SetScaleNonUniform(level07.props.RockID.transformID, 8.00562, 10.6213, 14.9332)
Transform.SetRotation(level07.props.RockID.transformID, {x=-0, y=0, z=-0})
level07.props.RockID.collider = SphereCollider.Create(-1)
level07.props.RockID.collider:SetOffset(-1,5,5)
level07.props.RockID.collider:SetRadius(2)
level07.props.RockID.collider:SetPos(389.664,128.514,635.811)
CollisionHandler.AddSphere(level07.props.RockID.collider, 3)
level07.props.Rock1ID = {}
level07.props.Rock1ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Rock1ID.transformID = Gear.BindStaticInstance(level07.props.Rock1ID.model)
Transform.SetPosition(level07.props.Rock1ID.transformID, {x=388.09, y=124.25, z=662.016})
Transform.SetScaleNonUniform(level07.props.Rock1ID.transformID, 8.40228, 16.538, 11.3485)
Transform.SetRotation(level07.props.Rock1ID.transformID, {x=-0, y=1.78624, z=-0})
level07.props.Rock1ID.collider = SphereCollider.Create(-1)
level07.props.Rock1ID.collider:SetOffset(1,0,0)
level07.props.Rock1ID.collider:SetRadius(1.5)
level07.props.Rock1ID.collider:SetPos(389.09,124.25,662.016)
CollisionHandler.AddSphere(level07.props.Rock1ID.collider, 3)
level07.props.t6s11ID = {}
level07.props.t6s11ID.model = Assets.LoadModel('Models/tile6_s11.model')
level07.props.t6s11ID.transformID = Gear.BindStaticInstance(level07.props.t6s11ID.model)
Transform.SetPosition(level07.props.t6s11ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s11ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s11ID.transformID, {x=-0, y=0, z=-0})
level07.props.t6s14ID = {}
level07.props.t6s14ID.model = Assets.LoadModel('Models/tile6_s14.model')
level07.props.t6s14ID.transformID = Gear.BindStaticInstance(level07.props.t6s14ID.model)
Transform.SetPosition(level07.props.t6s14ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s14ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s14ID.transformID, {x=-0, y=0, z=-0})
level07.colliders.Tile7_wallNr44ID = {}
level07.colliders.Tile7_wallNr44ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr44ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr44ID.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level07.colliders.Tile7_wallNr44ID.collider:SetHalfLengths(0.3,6.69207,3.04138)
level07.colliders.Tile7_wallNr44ID.collider:SetPos(367.5,106.154,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr44ID.collider, 3)
level07.colliders.Tile7_wallNr99ID = {}
level07.colliders.Tile7_wallNr99ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr99ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr99ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.Tile7_wallNr99ID.collider:SetHalfLengths(0.3,5.24172,1)
level07.colliders.Tile7_wallNr99ID.collider:SetPos(366,104.462,700)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr99ID.collider, 3)
level07.colliders.Tile7_wallNr100ID = {}
level07.colliders.Tile7_wallNr100ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr100ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr100ID.collider:SetAxes(0.990621, -0, 0.136637, 0, -1, -0, 0.136637, 0, -0.990621)
level07.colliders.Tile7_wallNr100ID.collider:SetHalfLengths(0.3,22.1625,14.6373)
level07.colliders.Tile7_wallNr100ID.collider:SetPos(367,104.704,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr100ID.collider, 3)
level07.colliders.Tile7_wallNr101ID = {}
level07.colliders.Tile7_wallNr101ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr101ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr101ID.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level07.colliders.Tile7_wallNr101ID.collider:SetHalfLengths(0.3,5.9669,3.3541)
level07.colliders.Tile7_wallNr101ID.collider:SetPos(372,121.866,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr101ID.collider, 3)
level07.colliders.Tile7_wallNr78ID = {}
level07.colliders.Tile7_wallNr78ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr78ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr78ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.Tile7_wallNr78ID.collider:SetHalfLengths(0.3,5,2)
level07.colliders.Tile7_wallNr78ID.collider:SetPos(348,104.22,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr78ID.collider, 3)
level07.colliders.Tile7_wallNr102ID = {}
level07.colliders.Tile7_wallNr102ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr102ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr102ID.collider:SetAxes(0.992278, -0, 0.124035, 0, -1, -0, 0.124035, 0, -0.992278)
level07.colliders.Tile7_wallNr102ID.collider:SetHalfLengths(0.3,21.4373,16.1245)
level07.colliders.Tile7_wallNr102ID.collider:SetPos(352,104.22,681)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr102ID.collider, 3)
level07.colliders.Tile7_wallNr103ID = {}
level07.colliders.Tile7_wallNr103ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr103ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr103ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.Tile7_wallNr103ID.collider:SetHalfLengths(0.3,5.72517,2.5)
level07.colliders.Tile7_wallNr103ID.collider:SetPos(351.5,120.658,665)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr103ID.collider, 3)
level07.colliders.Tile7_wallNr76ID = {}
level07.colliders.Tile7_wallNr76ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr76ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr76ID.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level07.colliders.Tile7_wallNr76ID.collider:SetHalfLengths(0.3,7.17552,9.01388)
level07.colliders.Tile7_wallNr76ID.collider:SetPos(344,122.108,657.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr76ID.collider, 3)
level07.colliders.Tile7_wallNr4ID = {}
level07.colliders.Tile7_wallNr4ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr4ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr4ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.Tile7_wallNr4ID.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.Tile7_wallNr4ID.collider:SetPos(327.5,142.171,566)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr4ID.collider, 3)
level07.colliders.Tile7_wallNr71ID = {}
level07.colliders.Tile7_wallNr71ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr71ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr71ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.Tile7_wallNr71ID.collider:SetHalfLengths(0.3,5,2)
level07.colliders.Tile7_wallNr71ID.collider:SetPos(326,142.171,568)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr71ID.collider, 3)
level07.colliders.Tile7_wallNr77ID = {}
level07.colliders.Tile7_wallNr77ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr77ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr77ID.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level07.colliders.Tile7_wallNr77ID.collider:SetHalfLengths(0.3,5,1.80278)
level07.colliders.Tile7_wallNr77ID.collider:SetPos(327.5,142.171,571)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr77ID.collider, 3)
level07.colliders.Tile7_wallNr98ID = {}
level07.colliders.Tile7_wallNr98ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr98ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr98ID.collider:SetAxes(-0.864789, 0, 0.502136, 0, -1, 0, 0.502136, 0, 0.864789)
level07.colliders.Tile7_wallNr98ID.collider:SetHalfLengths(0.3,14.1855,17.9234)
level07.colliders.Tile7_wallNr98ID.collider:SetPos(338,142.171,587.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr98ID.collider, 3)
level07.colliders.Tile7_wallNr104ID = {}
level07.colliders.Tile7_wallNr104ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr104ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr104ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr104ID.collider:SetHalfLengths(0.3,5.72517,1.5)
level07.colliders.Tile7_wallNr104ID.collider:SetPos(347,132.985,601.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr104ID.collider, 3)
level07.colliders.Tile7_wallNr105ID = {}
level07.colliders.Tile7_wallNr105ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr105ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr105ID.collider:SetAxes(0.22486, -0, 0.974391, 0, -1, -0, 0.974391, 0, -0.22486)
level07.colliders.Tile7_wallNr105ID.collider:SetHalfLengths(0.3,5.9669,6.67083)
level07.colliders.Tile7_wallNr105ID.collider:SetPos(353.5,132.26,598.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr105ID.collider, 3)
level07.colliders.Tile7_wallNr106ID = {}
level07.colliders.Tile7_wallNr106ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr106ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr106ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.Tile7_wallNr106ID.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.Tile7_wallNr106ID.collider:SetPos(316.5,142.171,568)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr106ID.collider, 3)
level07.colliders.Tile7_wallNr107ID = {}
level07.colliders.Tile7_wallNr107ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr107ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr107ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.Tile7_wallNr107ID.collider:SetHalfLengths(0.3,5,1)
level07.colliders.Tile7_wallNr107ID.collider:SetPos(318,142.171,569)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr107ID.collider, 3)
level07.colliders.Tile7_wallNr108ID = {}
level07.colliders.Tile7_wallNr108ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr108ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr108ID.collider:SetAxes(-0.83205, 0, -0.5547, -0, -1, 0, -0.5547, 0, 0.83205)
level07.colliders.Tile7_wallNr108ID.collider:SetHalfLengths(0.3,5.72517,1.80278)
level07.colliders.Tile7_wallNr108ID.collider:SetPos(317,142.171,571.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr108ID.collider, 3)
level07.colliders.Tile7_wallNr109ID = {}
level07.colliders.Tile7_wallNr109ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr109ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr109ID.collider:SetAxes(-0.857493, 0, 0.514496, 0, -1, 0, 0.514496, 0, 0.857493)
level07.colliders.Tile7_wallNr109ID.collider:SetHalfLengths(0.3,15.1525,20.4083)
level07.colliders.Tile7_wallNr109ID.collider:SetPos(326.5,141.446,590.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr109ID.collider, 3)
level07.colliders.Tile7_wallNr110ID = {}
level07.colliders.Tile7_wallNr110ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr110ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr110ID.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level07.colliders.Tile7_wallNr110ID.collider:SetHalfLengths(0.3,5.48344,1.11803)
level07.colliders.Tile7_wallNr110ID.collider:SetPos(336,131.293,608.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr110ID.collider, 3)
level07.colliders.Tile7_wallNr111ID = {}
level07.colliders.Tile7_wallNr111ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr111ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr111ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level07.colliders.Tile7_wallNr111ID.collider:SetHalfLengths(0.3,5,2.82843)
level07.colliders.Tile7_wallNr111ID.collider:SetPos(333,130.81,607)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr111ID.collider, 3)
level07.colliders.Tile7_wallNr25ID = {}
level07.colliders.Tile7_wallNr25ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr25ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr25ID.collider:SetAxes(0.994338, -0, 0.106265, 0, -1, -0, 0.106265, 0, -0.994338)
level07.colliders.Tile7_wallNr25ID.collider:SetHalfLengths(0.3,48.5105,65.873)
level07.colliders.Tile7_wallNr25ID.collider:SetPos(152,83.6736,643.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr25ID.collider, 3)
level07.colliders.Tile7_wallNr54ID = {}
level07.colliders.Tile7_wallNr54ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr54ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr54ID.collider:SetAxes(-0.6, 0, -0.8, -0, -1, 0, -0.8, 0, 0.6)
level07.colliders.Tile7_wallNr54ID.collider:SetHalfLengths(0.3,5,2.5)
level07.colliders.Tile7_wallNr54ID.collider:SetPos(157,127.184,579.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr54ID.collider, 3)
level07.colliders.Tile7_wallNr53ID = {}
level07.colliders.Tile7_wallNr53ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr53ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr53ID.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level07.colliders.Tile7_wallNr53ID.collider:SetHalfLengths(0.3,8.14243,4.12311)
level07.colliders.Tile7_wallNr53ID.collider:SetPos(158,82.2232,707)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr53ID.collider, 3)
level07.colliders.Tile7_wallNr112ID = {}
level07.colliders.Tile7_wallNr112ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr112ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr112ID.collider:SetAxes(0.995701, -0, 0.0926234, 0, -1, -0, 0.0926234, 0, -0.995701)
level07.colliders.Tile7_wallNr112ID.collider:SetHalfLengths(0.3,46.5767,64.7785)
level07.colliders.Tile7_wallNr112ID.collider:SetPos(163,85.3657,646.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr112ID.collider, 3)
level07.colliders.Tile7_wallNr113ID = {}
level07.colliders.Tile7_wallNr113ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr113ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr113ID.collider:SetAxes(-0.986394, 0, 0.164399, 0, -1, 0, 0.164399, 0, 0.986394)
level07.colliders.Tile7_wallNr113ID.collider:SetHalfLengths(0.3,5.48345,3.04138)
level07.colliders.Tile7_wallNr113ID.collider:SetPos(169.5,126.942,585)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr113ID.collider, 3)
level07.colliders.Tile7_wallNr34ID = {}
level07.colliders.Tile7_wallNr34ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr34ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr34ID.collider:SetAxes(-0.0774367, 0, -0.996997, -0, -1, 0, -0.996997, 0, 0.0774367)
level07.colliders.Tile7_wallNr34ID.collider:SetHalfLengths(0.3,14.9107,51.6551)
level07.colliders.Tile7_wallNr34ID.collider:SetPos(257.5,102.528,739)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr34ID.collider, 3)
level07.colliders.Tile7_wallNr46ID = {}
level07.colliders.Tile7_wallNr46ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr46ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr46ID.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level07.colliders.Tile7_wallNr46ID.collider:SetHalfLengths(0.3,6.20863,2.69258)
level07.colliders.Tile7_wallNr46ID.collider:SetPos(208.5,92.6174,744)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr46ID.collider, 3)
level07.colliders.Tile7_wallNr114ID = {}
level07.colliders.Tile7_wallNr114ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr114ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr114ID.collider:SetAxes(-0.0752577, 0, -0.997164, -0, -1, 0, -0.997164, 0, 0.0752577)
level07.colliders.Tile7_wallNr114ID.collider:SetHalfLengths(0.3,19.7452,53.1507)
level07.colliders.Tile7_wallNr114ID.collider:SetPos(257,103.978,728)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr114ID.collider, 3)
level07.colliders.Tile7_wallNr115ID = {}
level07.colliders.Tile7_wallNr115ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr115ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr115ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr115ID.collider:SetHalfLengths(0.3,5.9669,1.5)
level07.colliders.Tile7_wallNr115ID.collider:SetPos(204,89.2333,730.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr115ID.collider, 3)
level07.colliders.Tile7_wallNr116ID = {}
level07.colliders.Tile7_wallNr116ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr116ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr116ID.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level07.colliders.Tile7_wallNr116ID.collider:SetHalfLengths(0.3,5.9669,2.54951)
level07.colliders.Tile7_wallNr116ID.collider:SetPos(206.5,88.2664,728.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr116ID.collider, 3)
level07.colliders.Tile7_wallNr47ID = {}
level07.colliders.Tile7_wallNr47ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr47ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr47ID.collider:SetAxes(0.98387, 0, -0.178885, 0, -1, -0, -0.178885, 0, -0.98387)
level07.colliders.Tile7_wallNr47ID.collider:SetHalfLengths(0.3,7.9007,5.59017)
level07.colliders.Tile7_wallNr47ID.collider:SetPos(208,87.2995,722.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr47ID.collider, 3)
level07.colliders.Tile7_wallNr117ID = {}
level07.colliders.Tile7_wallNr117ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr117ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr117ID.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level07.colliders.Tile7_wallNr117ID.collider:SetHalfLengths(0.3,5.9669,2.23607)
level07.colliders.Tile7_wallNr117ID.collider:SetPos(308,103.978,723)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr117ID.collider, 3)
level07.colliders.Tile7_wallNr68ID = {}
level07.colliders.Tile7_wallNr68ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr68ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr68ID.collider:SetAxes(-0.652242, 0, 0.758011, 0, -1, 0, 0.758011, 0, 0.652242)
level07.colliders.Tile7_wallNr68ID.collider:SetHalfLengths(0.3,17.328,28.3637)
level07.colliders.Tile7_wallNr68ID.collider:SetPos(300.5,90.9253,687.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr68ID.collider, 3)
level07.colliders.Tile7_wallNr82ID = {}
level07.colliders.Tile7_wallNr82ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr82ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr82ID.collider:SetAxes(-0.640184, 0, 0.768221, 0, -1, 0, 0.768221, 0, 0.640184)
level07.colliders.Tile7_wallNr82ID.collider:SetHalfLengths(0.3,18.5366,27.3359)
level07.colliders.Tile7_wallNr82ID.collider:SetPos(292,90.2002,697.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr82ID.collider, 3)
level07.colliders.Tile7_wallNr118ID = {}
level07.colliders.Tile7_wallNr118ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr118ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr118ID.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level07.colliders.Tile7_wallNr118ID.collider:SetHalfLengths(0.3,5,2.54951)
level07.colliders.Tile7_wallNr118ID.collider:SetPos(321.5,103.253,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr118ID.collider, 3)
level07.colliders.Tile7_wallNr119ID = {}
level07.colliders.Tile7_wallNr119ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr119ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr119ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.Tile7_wallNr119ID.collider:SetHalfLengths(0.3,6.93379,3.5)
level07.colliders.Tile7_wallNr119ID.collider:SetPos(282.5,90.9253,669)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr119ID.collider, 3)
level07.colliders.Tile7_wallNr120ID = {}
level07.colliders.Tile7_wallNr120ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr120ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr120ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.Tile7_wallNr120ID.collider:SetHalfLengths(0.3,6.45035,2.5)
level07.colliders.Tile7_wallNr120ID.collider:SetPos(271,90.2002,682.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr120ID.collider, 3)
level07.colliders.Tile7_wallNr13ID = {}
level07.colliders.Tile7_wallNr13ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr13ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr13ID.collider:SetAxes(-0.176299, 0, -0.984337, -0, -1, 0, -0.984337, 0, 0.176299)
level07.colliders.Tile7_wallNr13ID.collider:SetHalfLengths(0.3,21.9207,34.0331)
level07.colliders.Tile7_wallNr13ID.collider:SetPos(258.5,142.171,537)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr13ID.collider, 3)
level07.colliders.Tile7_wallNr95ID = {}
level07.colliders.Tile7_wallNr95ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr95ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr95ID.collider:SetAxes(-0.813733, 0, 0.581238, 0, -1, 0, 0.581238, 0, 0.813733)
level07.colliders.Tile7_wallNr95ID.collider:SetHalfLengths(0.3,6.93379,4.30116)
level07.colliders.Tile7_wallNr95ID.collider:SetPos(227.5,125.25,546.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr95ID.collider, 3)
level07.colliders.Tile7_wallNr94ID = {}
level07.colliders.Tile7_wallNr94ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr94ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr94ID.collider:SetAxes(-0.145114, 0, -0.989415, -0, -1, 0, -0.989415, 0, 0.145114)
level07.colliders.Tile7_wallNr94ID.collider:SetHalfLengths(0.3,22.8876,37.9012)
level07.colliders.Tile7_wallNr94ID.collider:SetPos(254.5,142.171,527.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr94ID.collider, 3)
level07.colliders.Tile7_wallNr14ID = {}
level07.colliders.Tile7_wallNr14ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr14ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr14ID.collider:SetAxes(0.843661, 0, -0.536875, 0, -1, -0, -0.536875, 0, -0.843661)
level07.colliders.Tile7_wallNr14ID.collider:SetHalfLengths(0.3,5.72517,6.5192)
level07.colliders.Tile7_wallNr14ID.collider:SetPos(213.5,124.283,527.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr14ID.collider, 3)
level07.colliders.Tile7_wallNr15ID = {}
level07.colliders.Tile7_wallNr15ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr15ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr15ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.Tile7_wallNr15ID.collider:SetHalfLengths(0.3,5,1)
level07.colliders.Tile7_wallNr15ID.collider:SetPos(292,142.171,521)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr15ID.collider, 3)
level07.props.BlockerClosedNature4ID = {}
level07.props.BlockerClosedNature4ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerClosedNature4ID.transformID = Gear.BindStaticInstance(level07.props.BlockerClosedNature4ID.model)
Transform.SetPosition(level07.props.BlockerClosedNature4ID.transformID, {x=277.5, y=93.4103, z=676})
Transform.SetScaleNonUniform(level07.props.BlockerClosedNature4ID.transformID, 1, 1, 1.5)
Transform.SetRotation(level07.props.BlockerClosedNature4ID.transformID, {x=-0, y=2.43442, z=-0})
level07.props.BlockerClosedNature4ID.collider = OBBCollider.Create(-1)
level07.props.BlockerClosedNature4ID.collider:SetOffset(0,0,0)
level07.props.BlockerClosedNature4ID.collider:SetAxes(-0.760204, 0, -0.649684, 0, -1, -0, 0.649684, 0, -0.760204)
level07.props.BlockerClosedNature4ID.collider:SetHalfLengths(0.5,9,10.5)
level07.props.BlockerClosedNature4ID.collider:SetPos(277.5,93.4103,676)
CollisionHandler.AddOBB(level07.props.BlockerClosedNature4ID.collider, 3)
level07.props.BlockerOpenNature4ID = {}
level07.props.BlockerOpenNature4ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerOpenNature4ID.transformID = Gear.BindStaticInstance(level07.props.BlockerOpenNature4ID.model)
Transform.SetPosition(level07.props.BlockerOpenNature4ID.transformID, {x=315.429, y=99.5388, z=708.686})
Transform.SetScaleNonUniform(level07.props.BlockerOpenNature4ID.transformID, 1, 1, 1.5)
Transform.SetRotation(level07.props.BlockerOpenNature4ID.transformID, {x=-0, y=2.4459, z=-0})
level07.props.BlockerClosedNature5ID = {}
level07.props.BlockerClosedNature5ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerClosedNature5ID.transformID = Gear.BindStaticInstance(level07.props.BlockerClosedNature5ID.model)
Transform.SetPosition(level07.props.BlockerClosedNature5ID.transformID, {x=214.038, y=127.818, z=588.234})
Transform.SetScaleNonUniform(level07.props.BlockerClosedNature5ID.transformID, 1, 1.3, 2)
Transform.SetRotation(level07.props.BlockerClosedNature5ID.transformID, {x=-0, y=2.23689, z=-0})
level07.props.BlockerClosedNature5ID.collider = OBBCollider.Create(-1)
level07.props.BlockerClosedNature5ID.collider:SetOffset(0,0,0)
level07.props.BlockerClosedNature5ID.collider:SetAxes(-0.617918, 0, -0.786243, 0, -1, -0, 0.786243, 0, -0.617918)
level07.props.BlockerClosedNature5ID.collider:SetHalfLengths(0.5,11.7,14)
level07.props.BlockerClosedNature5ID.collider:SetPos(214.038,127.818,588.234)
CollisionHandler.AddOBB(level07.props.BlockerClosedNature5ID.collider, 3)
level07.props.BlockerOpenNature5ID = {}
level07.props.BlockerOpenNature5ID.model = Assets.LoadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerOpenNature5ID.transformID = Gear.BindStaticInstance(level07.props.BlockerOpenNature5ID.model)
Transform.SetPosition(level07.props.BlockerOpenNature5ID.transformID, {x=231.652, y=101.838, z=618.411})
Transform.SetScaleNonUniform(level07.props.BlockerOpenNature5ID.transformID, 1, 1.3, 2)
Transform.SetRotation(level07.props.BlockerOpenNature5ID.transformID, {x=-0, y=2.119, z=-0})
level07.props.BlockerOpenFire4ID = {}
level07.props.BlockerOpenFire4ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerOpenFire4ID.transformID = Gear.BindStaticInstance(level07.props.BlockerOpenFire4ID.model)
Transform.SetPosition(level07.props.BlockerOpenFire4ID.transformID, {x=308.744, y=98.9674, z=729.976})
Transform.SetScaleNonUniform(level07.props.BlockerOpenFire4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.BlockerOpenFire4ID.transformID, {x=-0, y=-3.17281, z=-0})
level07.props.BlockerClosedFire4ID = {}
level07.props.BlockerClosedFire4ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerClosedFire4ID.transformID = Gear.BindStaticInstance(level07.props.BlockerClosedFire4ID.model)
Transform.SetPosition(level07.props.BlockerClosedFire4ID.transformID, {x=206.599, y=94.426, z=735.749})
Transform.SetScaleNonUniform(level07.props.BlockerClosedFire4ID.transformID, 1, 1.3, 1.4)
Transform.SetRotation(level07.props.BlockerClosedFire4ID.transformID, {x=-0, y=-3.10506, z=-0})
level07.props.BlockerClosedFire4ID.collider = OBBCollider.Create(-1)
level07.props.BlockerClosedFire4ID.collider:SetOffset(0,0,0)
level07.props.BlockerClosedFire4ID.collider:SetAxes(-0.999333, 0, 0.0365244, -0, -1, 0, -0.0365244, 0, -0.999333)
level07.props.BlockerClosedFire4ID.collider:SetHalfLengths(0.5,11.7,9.8)
level07.props.BlockerClosedFire4ID.collider:SetPos(206.599,94.426,735.749)
CollisionHandler.AddOBB(level07.props.BlockerClosedFire4ID.collider, 3)
level07.props.BlockerClosedIce4ID = {}
level07.props.BlockerClosedIce4ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerClosedIce4ID.transformID = Gear.BindStaticInstance(level07.props.BlockerClosedIce4ID.model)
Transform.SetPosition(level07.props.BlockerClosedIce4ID.transformID, {x=361.538, y=122.739, z=672.44})
Transform.SetScaleNonUniform(level07.props.BlockerClosedIce4ID.transformID, 1, 1, 1.5)
Transform.SetRotation(level07.props.BlockerClosedIce4ID.transformID, {x=-0, y=1.25548, z=-0})
level07.props.BlockerClosedIce4ID.collider = OBBCollider.Create(-1)
level07.props.BlockerClosedIce4ID.collider:SetOffset(0,0,0)
level07.props.BlockerClosedIce4ID.collider:SetAxes(0.310114, 0, -0.9507, 0, -1, 0, 0.9507, 0, 0.310114)
level07.props.BlockerClosedIce4ID.collider:SetHalfLengths(0.5,9,10.5)
level07.props.BlockerClosedIce4ID.collider:SetPos(361.538,122.739,672.44)
CollisionHandler.AddOBB(level07.props.BlockerClosedIce4ID.collider, 3)
level07.props.BlockerOpenIce4ID = {}
level07.props.BlockerOpenIce4ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerOpenIce4ID.transformID = Gear.BindStaticInstance(level07.props.BlockerOpenIce4ID.model)
Transform.SetPosition(level07.props.BlockerOpenIce4ID.transformID, {x=357.932, y=100.855, z=697.902})
Transform.SetScaleNonUniform(level07.props.BlockerOpenIce4ID.transformID, 1, 1, 1.5)
Transform.SetRotation(level07.props.BlockerOpenIce4ID.transformID, {x=-0, y=1.40306, z=-0})
level07.props.BlockerClosedIce5ID = {}
level07.props.BlockerClosedIce5ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerClosedIce5ID.transformID = Gear.BindStaticInstance(level07.props.BlockerClosedIce5ID.model)
Transform.SetPosition(level07.props.BlockerClosedIce5ID.transformID, {x=321.762, y=145.286, z=566.071})
Transform.SetScaleNonUniform(level07.props.BlockerClosedIce5ID.transformID, 1, 1, 1.2)
Transform.SetRotation(level07.props.BlockerClosedIce5ID.transformID, {x=-0, y=1.6125, z=-0})
level07.props.BlockerClosedIce5ID.collider = OBBCollider.Create(-1)
level07.props.BlockerClosedIce5ID.collider:SetOffset(0,0,0)
level07.props.BlockerClosedIce5ID.collider:SetAxes(-0.0416884, 0, -0.999131, 0, -1, -0, 0.999131, 0, -0.0416884)
level07.props.BlockerClosedIce5ID.collider:SetHalfLengths(0.5,9,8.4)
level07.props.BlockerClosedIce5ID.collider:SetPos(321.762,145.286,566.071)
CollisionHandler.AddOBB(level07.props.BlockerClosedIce5ID.collider, 3)
level07.props.BlockerOpenIce5ID = {}
level07.props.BlockerOpenIce5ID.model = Assets.LoadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerOpenIce5ID.transformID = Gear.BindStaticInstance(level07.props.BlockerOpenIce5ID.model)
Transform.SetPosition(level07.props.BlockerOpenIce5ID.transformID, {x=340.313, y=127.039, z=603.714})
Transform.SetScaleNonUniform(level07.props.BlockerOpenIce5ID.transformID, 1, 1, 1.5)
Transform.SetRotation(level07.props.BlockerOpenIce5ID.transformID, {x=-0, y=1.93491, z=-0})
level07.props.BlockerClosedFire5ID = {}
level07.props.BlockerClosedFire5ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerClosedFire5ID.transformID = Gear.BindStaticInstance(level07.props.BlockerClosedFire5ID.model)
Transform.SetPosition(level07.props.BlockerClosedFire5ID.transformID, {x=164.328, y=129.733, z=581.147})
Transform.SetScaleNonUniform(level07.props.BlockerClosedFire5ID.transformID, 1, 1, 1.1)
Transform.SetRotation(level07.props.BlockerClosedFire5ID.transformID, {x=-0, y=1.16669, z=-0})
level07.props.BlockerClosedFire5ID.collider = OBBCollider.Create(-1)
level07.props.BlockerClosedFire5ID.collider:SetOffset(0,0,0)
level07.props.BlockerClosedFire5ID.collider:SetAxes(0.393201, 0, -0.919453, 0, -1, 0, 0.919453, 0, 0.393201)
level07.props.BlockerClosedFire5ID.collider:SetHalfLengths(0.5,9,7.7)
level07.props.BlockerClosedFire5ID.collider:SetPos(164.328,129.733,581.147)
CollisionHandler.AddOBB(level07.props.BlockerClosedFire5ID.collider, 3)
level07.props.BlockerOpenFire5ID = {}
level07.props.BlockerOpenFire5ID.model = Assets.LoadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerOpenFire5ID.transformID = Gear.BindStaticInstance(level07.props.BlockerOpenFire5ID.model)
Transform.SetPosition(level07.props.BlockerOpenFire5ID.transformID, {x=151.3, y=79.2607, z=709})
Transform.SetScaleNonUniform(level07.props.BlockerOpenFire5ID.transformID, 1, 1, 1.3)
Transform.SetRotation(level07.props.BlockerOpenFire5ID.transformID, {x=-0, y=1.52783, z=-0})
level07.colliders.Tile7_wallNr12ID = {}
level07.colliders.Tile7_wallNr12ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr12ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr12ID.collider:SetAxes(-0.819232, 0, 0.573462, 0, -1, 0, 0.573462, 0, 0.819232)
level07.colliders.Tile7_wallNr12ID.collider:SetHalfLengths(0.3,9.82891,6.10328)
level07.colliders.Tile7_wallNr12ID.collider:SetPos(221.5,111.606,622)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr12ID.collider, 3)
level07.colliders.Tile7_wallNr121ID = {}
level07.colliders.Tile7_wallNr121ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr121ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr121ID.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level07.colliders.Tile7_wallNr121ID.collider:SetHalfLengths(0.3,5.53654,1.11803)
level07.colliders.Tile7_wallNr121ID.collider:SetPos(226,106.777,626.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr121ID.collider, 3)
level07.colliders.Tile7_wallNr122ID = {}
level07.colliders.Tile7_wallNr122ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr122ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr122ID.collider:SetAxes(0.789352, 0, -0.613941, 0, -1, -0, -0.613941, 0, -0.789352)
level07.colliders.Tile7_wallNr122ID.collider:SetHalfLengths(0.3,11.1703,5.70088)
level07.colliders.Tile7_wallNr122ID.collider:SetPos(223.5,107.314,621.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr122ID.collider, 3)
level07.enemies.GoblinFire14ID = CreateEnemy(ENEMY_MELEE, {x=168.125, y=96.625, z=750}, 0)
level07.enemies.GoblinFire14ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire15ID = CreateEnemy(ENEMY_MELEE, {x=178.625, y=91.9375, z=736}, 0)
level07.enemies.GoblinFire15ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire16ID = CreateEnemy(ENEMY_MELEE, {x=178.75, y=96.875, z=753}, 0)
level07.enemies.GoblinFire16ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire17ID = CreateEnemy(ENEMY_MELEE, {x=157.875, y=96.25, z=747.5}, 0)
level07.enemies.GoblinFire17ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire18ID = CreateEnemy(ENEMY_MELEE, {x=182.25, y=94.375, z=745}, 0)
level07.enemies.GoblinFire18ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire19ID = CreateEnemy(ENEMY_MELEE, {x=181.875, y=88.6875, z=726.5}, 0)
level07.enemies.GoblinFire19ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire20ID = CreateEnemy(ENEMY_MELEE, {x=181.375, y=93.25, z=741}, 0)
level07.enemies.GoblinFire20ID:SetStats(9, 50, 30)

level07.enemies.GoblinFire21ID = CreateEnemy(ENEMY_MELEE, {x=163.875, y=93.25, z=737.5}, 0)
level07.enemies.GoblinFire21ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutralID = CreateEnemy(ENEMY_MELEE, {x=175.25, y=127.5, z=548.5}, 3)
level07.enemies.GoblinNeutralID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral1ID = CreateEnemy(ENEMY_MELEE, {x=189.125, y=126.75, z=556.5}, 3)
level07.enemies.GoblinNeutral1ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral2ID = CreateEnemy(ENEMY_MELEE, {x=192.875, y=127, z=539.5}, 3)
level07.enemies.GoblinNeutral2ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral3ID = CreateEnemy(ENEMY_MELEE, {x=174.25, y=127.313, z=556.5}, 3)
level07.enemies.GoblinNeutral3ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral4ID = CreateEnemy(ENEMY_MELEE, {x=194.125, y=126.188, z=563}, 3)
level07.enemies.GoblinNeutral4ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral5ID = CreateEnemy(ENEMY_MELEE, {x=184.75, y=127.188, z=542}, 3)
level07.enemies.GoblinNeutral5ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral6ID = CreateEnemy(ENEMY_MELEE, {x=178.125, y=127, z=564}, 3)
level07.enemies.GoblinNeutral6ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature16ID = CreateEnemy(ENEMY_MELEE, {x=232.375, y=100.063, z=652}, 1)
level07.enemies.GoblinNature16ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature17ID = CreateEnemy(ENEMY_MELEE, {x=249.5, y=96.75, z=657}, 1)
level07.enemies.GoblinNature17ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature18ID = CreateEnemy(ENEMY_MELEE, {x=265.75, y=98.0625, z=641.5}, 1)
level07.enemies.GoblinNature18ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature19ID = CreateEnemy(ENEMY_MELEE, {x=246.625, y=102.313, z=632}, 1)
level07.enemies.GoblinNature19ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature20ID = CreateEnemy(ENEMY_MELEE, {x=236.375, y=101.938, z=640}, 1)
level07.enemies.GoblinNature20ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature21ID = CreateEnemy(ENEMY_MELEE, {x=236.625, y=97.5, z=661}, 1)
level07.enemies.GoblinNature21ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature22ID = CreateEnemy(ENEMY_MELEE, {x=254.125, y=98.9375, z=643.5}, 1)
level07.enemies.GoblinNature22ID:SetStats(9, 50, 30)

level07.enemies.GoblinNature23ID = CreateEnemy(ENEMY_MELEE, {x=236.25, y=103, z=635}, 1)
level07.enemies.GoblinNature23ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce18ID = CreateEnemy(ENEMY_MELEE, {x=367.75, y=129.375, z=625.5}, 2)
level07.enemies.GoblinIce18ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce19ID = CreateEnemy(ENEMY_MELEE, {x=355.25, y=126.875, z=633.5}, 2)
level07.enemies.GoblinIce19ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce20ID = CreateEnemy(ENEMY_MELEE, {x=368.5, y=125, z=649}, 2)
level07.enemies.GoblinIce20ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce21ID = CreateEnemy(ENEMY_MELEE, {x=374, y=129.25, z=630}, 2)
level07.enemies.GoblinIce21ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce22ID = CreateEnemy(ENEMY_MELEE, {x=357.5, y=130.5, z=615.5}, 2)
level07.enemies.GoblinIce22ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce23ID = CreateEnemy(ENEMY_MELEE, {x=351, y=127.375, z=628.5}, 2)
level07.enemies.GoblinIce23ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce24ID = CreateEnemy(ENEMY_MELEE, {x=363.75, y=126.813, z=638}, 2)
level07.enemies.GoblinIce24ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce25ID = CreateEnemy(ENEMY_MELEE, {x=368, y=128, z=633.5}, 2)
level07.enemies.GoblinIce25ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce26ID = CreateEnemy(ENEMY_MELEE, {x=370.5, y=131.5, z=614.5}, 2)
level07.enemies.GoblinIce26ID:SetStats(9, 50, 30)

level07.enemies.GoblinIce27ID = CreateEnemy(ENEMY_MELEE, {x=355.25, y=127.938, z=627.5}, 2)
level07.enemies.GoblinIce27ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral7ID = CreateEnemy(ENEMY_MELEE, {x=326.5, y=102, z=736.5}, 3)
level07.enemies.GoblinNeutral7ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral8ID = CreateEnemy(ENEMY_MELEE, {x=342.5, y=101.75, z=749}, 3)
level07.enemies.GoblinNeutral8ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral9ID = CreateEnemy(ENEMY_MELEE, {x=344.25, y=103, z=728.5}, 3)
level07.enemies.GoblinNeutral9ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral10ID = CreateEnemy(ENEMY_MELEE, {x=335.75, y=103.188, z=716.5}, 3)
level07.enemies.GoblinNeutral10ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral11ID = CreateEnemy(ENEMY_MELEE, {x=327, y=102.5, z=727}, 3)
level07.enemies.GoblinNeutral11ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral12ID = CreateEnemy(ENEMY_MELEE, {x=328.75, y=101.563, z=745.5}, 3)
level07.enemies.GoblinNeutral12ID:SetStats(9, 50, 30)

level07.enemies.GoblinNeutral13ID = CreateEnemy(ENEMY_MELEE, {x=339.25, y=102.5, z=735.5}, 3)
level07.enemies.GoblinNeutral13ID:SetStats(9, 50, 30)

level07.props.Tile7_FenceID = {}
level07.props.Tile7_FenceID.model = Assets.LoadModel('Models/tile7_fence.model')
level07.props.Tile7_FenceID.transformID = Gear.BindStaticInstance(level07.props.Tile7_FenceID.model)
Transform.SetPosition(level07.props.Tile7_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.Tile7_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Tile7_FenceID.transformID, {x=-0, y=0, z=-0})
level07.colliders.Tile7_wallNr41ID = {}
level07.colliders.Tile7_wallNr41ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr41ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr41ID.collider:SetAxes(0.928477, 0, -0.371391, 0, -1, -0, -0.371391, 0, -0.928477)
level07.colliders.Tile7_wallNr41ID.collider:SetHalfLengths(0.3,5.07994,2.69258)
level07.colliders.Tile7_wallNr41ID.collider:SetPos(383,106.321,710.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr41ID.collider, 3)
level07.colliders.Tile7_wallNr42ID = {}
level07.colliders.Tile7_wallNr42ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr42ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr42ID.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level07.colliders.Tile7_wallNr42ID.collider:SetHalfLengths(0.3,5.53654,3.20156)
level07.colliders.Tile7_wallNr42ID.collider:SetPos(379.5,106.241,706)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr42ID.collider, 3)
level07.colliders.Tile7_wallNr123ID = {}
level07.colliders.Tile7_wallNr123ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr123ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr123ID.collider:SetAxes(0.371391, 0, -0.928477, 0, -1, -0, -0.928477, 0, -0.371391)
level07.colliders.Tile7_wallNr123ID.collider:SetHalfLengths(0.3,6.0731,5.38516)
level07.colliders.Tile7_wallNr123ID.collider:SetPos(372,105.704,702)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr123ID.collider, 3)
level07.props.PineTreeWickedID = {}
level07.props.PineTreeWickedID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWickedID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWickedID.model)
Transform.SetPosition(level07.props.PineTreeWickedID.transformID, {x=377.25, y=131.625, z=614})
Transform.SetScaleNonUniform(level07.props.PineTreeWickedID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWickedID.transformID, {x=-0, y=0.964525, z=-0})
level07.props.PineTreeWickedID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWickedID.collider:SetOffset(0,3,0)
level07.props.PineTreeWickedID.collider:SetAxes(0.569807, 0, -0.821778, 0, -1, 0, 0.821778, 0, 0.569807)
level07.props.PineTreeWickedID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWickedID.collider:SetPos(377.25,134.625,614)
CollisionHandler.AddOBB(level07.props.PineTreeWickedID.collider, 3)
level07.props.PineTreeWicked1ID = {}
level07.props.PineTreeWicked1ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked1ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked1ID.model)
Transform.SetPosition(level07.props.PineTreeWicked1ID.transformID, {x=337.5, y=125.012, z=627.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked1ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked1ID.transformID, {x=-0, y=0, z=-0.184674})
level07.props.PineTreeWicked1ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked1ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked1ID.collider:SetAxes(1, 0, 0, 0, -0.982996, -0.183626, 0, -0.183626, 0.982996)
level07.props.PineTreeWicked1ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked1ID.collider:SetPos(337.5,128.012,627.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked1ID.collider, 3)
level07.props.PineTreeWicked2ID = {}
level07.props.PineTreeWicked2ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked2ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked2ID.model)
Transform.SetPosition(level07.props.PineTreeWicked2ID.transformID, {x=379.25, y=125.375, z=652})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked2ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked2ID.transformID, {x=-0, y=-0.679363, z=-0})
level07.props.PineTreeWicked2ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked2ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked2ID.collider:SetAxes(0.777973, 0, 0.628297, 0, -1, 0, -0.628297, 0, 0.777973)
level07.props.PineTreeWicked2ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked2ID.collider:SetPos(379.25,128.375,652)
CollisionHandler.AddOBB(level07.props.PineTreeWicked2ID.collider, 3)
level07.props.PineTreeWicked3ID = {}
level07.props.PineTreeWicked3ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked3ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked3ID.model)
Transform.SetPosition(level07.props.PineTreeWicked3ID.transformID, {x=355, y=132.487, z=602.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked3ID.transformID, {x=-0.239221, y=-1.12973, z=-0})
level07.props.PineTreeWicked3ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked3ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked3ID.collider:SetAxes(0.414747, -0.101153, 0.904297, -0.236946, -0.971523, 0, -0.878545, 0.21427, 0.426904)
level07.props.PineTreeWicked3ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked3ID.collider:SetPos(355,135.487,602.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked3ID.collider, 3)
level07.props.PineTreeWicked4ID = {}
level07.props.PineTreeWicked4ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked4ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked4ID.model)
Transform.SetPosition(level07.props.PineTreeWicked4ID.transformID, {x=198.125, y=101.688, z=770})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked4ID.transformID, {x=-0, y=-0.951199, z=-0})
level07.props.PineTreeWicked4ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked4ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked4ID.collider:SetAxes(0.580707, 0, 0.814113, 0, -1, 0, -0.814113, 0, 0.580707)
level07.props.PineTreeWicked4ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked4ID.collider:SetPos(198.125,104.688,770)
CollisionHandler.AddOBB(level07.props.PineTreeWicked4ID.collider, 3)
level07.props.PineTreeWicked5ID = {}
level07.props.PineTreeWicked5ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked5ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked5ID.model)
Transform.SetPosition(level07.props.PineTreeWicked5ID.transformID, {x=192.375, y=102.313, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked5ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked5ID.transformID, {x=0.0631531, y=0, z=-0})
level07.props.PineTreeWicked5ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked5ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked5ID.collider:SetAxes(0.998007, 0.0631111, 0, 0.0631111, -0.998007, 0, 0, 0, 1)
level07.props.PineTreeWicked5ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked5ID.collider:SetPos(192.375,105.313,769.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked5ID.collider, 3)
level07.props.PineTreeWicked6ID = {}
level07.props.PineTreeWicked6ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked6ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked6ID.model)
Transform.SetPosition(level07.props.PineTreeWicked6ID.transformID, {x=187, y=102.563, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked6ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked6ID.transformID, {x=-0, y=1.63621, z=-0})
level07.props.PineTreeWicked6ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked6ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked6ID.collider:SetAxes(-0.0653646, 0, -0.997861, 0, -1, -0, 0.997861, 0, -0.0653646)
level07.props.PineTreeWicked6ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked6ID.collider:SetPos(187,105.563,769.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked6ID.collider, 3)
level07.props.PineTreeWicked7ID = {}
level07.props.PineTreeWicked7ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked7ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked7ID.model)
Transform.SetPosition(level07.props.PineTreeWicked7ID.transformID, {x=180.375, y=102.938, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked7ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked7ID.transformID, {x=-0, y=-1.11427, z=-0})
level07.props.PineTreeWicked7ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked7ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked7ID.collider:SetAxes(0.440832, 0, 0.89759, 0, -1, 0, -0.89759, 0, 0.440832)
level07.props.PineTreeWicked7ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked7ID.collider:SetPos(180.375,105.938,769.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked7ID.collider, 3)
level07.props.PineTreeWicked8ID = {}
level07.props.PineTreeWicked8ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked8ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked8ID.model)
Transform.SetPosition(level07.props.PineTreeWicked8ID.transformID, {x=175.125, y=103, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked8ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked8ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked8ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked8ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked8ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked8ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked8ID.collider:SetPos(175.125,106,769.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked8ID.collider, 3)
level07.props.PineTreeWicked9ID = {}
level07.props.PineTreeWicked9ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked9ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked9ID.model)
Transform.SetPosition(level07.props.PineTreeWicked9ID.transformID, {x=169.25, y=102.875, z=769})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked9ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked9ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked9ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked9ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked9ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked9ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked9ID.collider:SetPos(169.25,105.875,769)
CollisionHandler.AddOBB(level07.props.PineTreeWicked9ID.collider, 3)
level07.props.PineTreeWicked10ID = {}
level07.props.PineTreeWicked10ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked10ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked10ID.model)
Transform.SetPosition(level07.props.PineTreeWicked10ID.transformID, {x=161.625, y=102.938, z=769})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked10ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked10ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked10ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked10ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked10ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked10ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked10ID.collider:SetPos(161.625,105.938,769)
CollisionHandler.AddOBB(level07.props.PineTreeWicked10ID.collider, 3)
level07.props.PineTreeWicked11ID = {}
level07.props.PineTreeWicked11ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked11ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked11ID.model)
Transform.SetPosition(level07.props.PineTreeWicked11ID.transformID, {x=155.875, y=101.688, z=769})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked11ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked11ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked11ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked11ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked11ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked11ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked11ID.collider:SetPos(155.875,104.688,769)
CollisionHandler.AddOBB(level07.props.PineTreeWicked11ID.collider, 3)
level07.props.Asset_Stone3ID = {}
level07.props.Asset_Stone3ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Asset_Stone3ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone3ID.model)
Transform.SetPosition(level07.props.Asset_Stone3ID.transformID, {x=183.375, y=102.375, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone3ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone3ID.collider = OBBCollider.Create(-1)
level07.props.Asset_Stone3ID.collider:SetOffset(0,1,0)
level07.props.Asset_Stone3ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.Asset_Stone3ID.collider:SetHalfLengths(0.8,1,0.7)
level07.props.Asset_Stone3ID.collider:SetPos(183.375,103.375,768.5)
CollisionHandler.AddOBB(level07.props.Asset_Stone3ID.collider, 3)
level07.props.Asset_Stone36ID = {}
level07.props.Asset_Stone36ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Asset_Stone36ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone36ID.model)
Transform.SetPosition(level07.props.Asset_Stone36ID.transformID, {x=171.625, y=102.688, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone36ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone36ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone36ID.collider = OBBCollider.Create(-1)
level07.props.Asset_Stone36ID.collider:SetOffset(0,1,0)
level07.props.Asset_Stone36ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.Asset_Stone36ID.collider:SetHalfLengths(0.8,1,0.7)
level07.props.Asset_Stone36ID.collider:SetPos(171.625,103.688,768.5)
CollisionHandler.AddOBB(level07.props.Asset_Stone36ID.collider, 3)
level07.props.Asset_Stone4ID = {}
level07.props.Asset_Stone4ID.model = Assets.LoadModel('Models/Stone4.model')
level07.props.Asset_Stone4ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone4ID.model)
Transform.SetPosition(level07.props.Asset_Stone4ID.transformID, {x=164.5, y=102.75, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone4ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone4ID.collider = OBBCollider.Create(-1)
level07.props.Asset_Stone4ID.collider:SetOffset(0,1,0)
level07.props.Asset_Stone4ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.Asset_Stone4ID.collider:SetHalfLengths(0.6,1,0.6)
level07.props.Asset_Stone4ID.collider:SetPos(164.5,103.75,768.5)
CollisionHandler.AddOBB(level07.props.Asset_Stone4ID.collider, 3)
level07.props.Asset_Stone44ID = {}
level07.props.Asset_Stone44ID.model = Assets.LoadModel('Models/Stone4.model')
level07.props.Asset_Stone44ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone44ID.model)
Transform.SetPosition(level07.props.Asset_Stone44ID.transformID, {x=177.375, y=102.625, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone44ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone44ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone44ID.collider = OBBCollider.Create(-1)
level07.props.Asset_Stone44ID.collider:SetOffset(0,1,0)
level07.props.Asset_Stone44ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.Asset_Stone44ID.collider:SetHalfLengths(0.6,1,0.6)
level07.props.Asset_Stone44ID.collider:SetPos(177.375,103.625,768.5)
CollisionHandler.AddOBB(level07.props.Asset_Stone44ID.collider, 3)
level07.props.Asset_Stone45ID = {}
level07.props.Asset_Stone45ID.model = Assets.LoadModel('Models/Stone4.model')
level07.props.Asset_Stone45ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone45ID.model)
Transform.SetPosition(level07.props.Asset_Stone45ID.transformID, {x=194.75, y=106.063, z=769})
Transform.SetScaleNonUniform(level07.props.Asset_Stone45ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone45ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone45ID.collider = OBBCollider.Create(-1)
level07.props.Asset_Stone45ID.collider:SetOffset(0,1,0)
level07.props.Asset_Stone45ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.Asset_Stone45ID.collider:SetHalfLengths(0.6,1,0.6)
level07.props.Asset_Stone45ID.collider:SetPos(194.75,107.063,769)
CollisionHandler.AddOBB(level07.props.Asset_Stone45ID.collider, 3)
level07.props.Asset_Torch3ID = {}
level07.props.Asset_Torch3ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch3ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch3ID.model)
Transform.SetPosition(level07.props.Asset_Torch3ID.transformID, {x=310.25, y=102.688, z=735})
Transform.SetScaleNonUniform(level07.props.Asset_Torch3ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch3ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch3ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch3ID.particle, 310.25, 105.688, 735)
Particle.SetAlive(level07.props.Asset_Torch3ID.particle)
level07.props.Asset_Torch3ID.lightIndex = Light.addLight(310.25, 105.688, 735, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch4ID = {}
level07.props.Asset_Torch4ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch4ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch4ID.model)
Transform.SetPosition(level07.props.Asset_Torch4ID.transformID, {x=311, y=104.125, z=724})
Transform.SetScaleNonUniform(level07.props.Asset_Torch4ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch4ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch4ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch4ID.particle, 311, 107.125, 724)
Particle.SetAlive(level07.props.Asset_Torch4ID.particle)
level07.props.Asset_Torch4ID.lightIndex = Light.addLight(311, 107.125, 724, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch5ID = {}
level07.props.Asset_Torch5ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch5ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch5ID.model)
Transform.SetPosition(level07.props.Asset_Torch5ID.transformID, {x=312.75, y=103.938, z=715})
Transform.SetScaleNonUniform(level07.props.Asset_Torch5ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch5ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch5ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch5ID.particle, 312.75, 106.938, 715)
Particle.SetAlive(level07.props.Asset_Torch5ID.particle)
level07.props.Asset_Torch5ID.lightIndex = Light.addLight(312.75, 106.938, 715, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch6ID = {}
level07.props.Asset_Torch6ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch6ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch6ID.model)
Transform.SetPosition(level07.props.Asset_Torch6ID.transformID, {x=321.844, y=103.313, z=705.498})
Transform.SetScaleNonUniform(level07.props.Asset_Torch6ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch6ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch6ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch6ID.particle, 321.844, 106.313, 705.498)
Particle.SetAlive(level07.props.Asset_Torch6ID.particle)
level07.props.Asset_Torch6ID.lightIndex = Light.addLight(321.844, 106.313, 705.498, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch7ID = {}
level07.props.Asset_Torch7ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch7ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch7ID.model)
Transform.SetPosition(level07.props.Asset_Torch7ID.transformID, {x=348.25, y=104.438, z=699.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch7ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch7ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch7ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch7ID.particle, 348.25, 107.438, 699.5)
Particle.SetAlive(level07.props.Asset_Torch7ID.particle)
level07.props.Asset_Torch7ID.lightIndex = Light.addLight(348.25, 107.438, 699.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch8ID = {}
level07.props.Asset_Torch8ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch8ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch8ID.model)
Transform.SetPosition(level07.props.Asset_Torch8ID.transformID, {x=366.25, y=104.688, z=702})
Transform.SetScaleNonUniform(level07.props.Asset_Torch8ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch8ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch8ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch8ID.particle, 366.25, 107.688, 702)
Particle.SetAlive(level07.props.Asset_Torch8ID.particle)
level07.props.Asset_Torch8ID.lightIndex = Light.addLight(366.25, 107.688, 702, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch9ID = {}
level07.props.Asset_Torch9ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch9ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch9ID.model)
Transform.SetPosition(level07.props.Asset_Torch9ID.transformID, {x=337.5, y=130.875, z=609.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch9ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch9ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch9ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch9ID.particle, 337.5, 133.875, 609.5)
Particle.SetAlive(level07.props.Asset_Torch9ID.particle)
level07.props.Asset_Torch9ID.lightIndex = Light.addLight(337.5, 133.875, 609.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch10ID = {}
level07.props.Asset_Torch10ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch10ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch10ID.model)
Transform.SetPosition(level07.props.Asset_Torch10ID.transformID, {x=347.601, y=132.299, z=603.81})
Transform.SetScaleNonUniform(level07.props.Asset_Torch10ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch10ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch10ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch10ID.particle, 347.601, 135.299, 603.81)
Particle.SetAlive(level07.props.Asset_Torch10ID.particle)
level07.props.Asset_Torch10ID.lightIndex = Light.addLight(347.601, 135.299, 603.81, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch11ID = {}
level07.props.Asset_Torch11ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch11ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch11ID.model)
Transform.SetPosition(level07.props.Asset_Torch11ID.transformID, {x=144, y=85.0625, z=712.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch11ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch11ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch11ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch11ID.particle, 144, 88.0625, 712.5)
Particle.SetAlive(level07.props.Asset_Torch11ID.particle)
level07.props.Asset_Torch11ID.lightIndex = Light.addLight(144, 88.0625, 712.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch12ID = {}
level07.props.Asset_Torch12ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch12ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch12ID.model)
Transform.SetPosition(level07.props.Asset_Torch12ID.transformID, {x=157.16, y=85.8125, z=712.29})
Transform.SetScaleNonUniform(level07.props.Asset_Torch12ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch12ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch12ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch12ID.particle, 157.16, 88.8125, 712.29)
Particle.SetAlive(level07.props.Asset_Torch12ID.particle)
level07.props.Asset_Torch12ID.lightIndex = Light.addLight(157.16, 88.8125, 712.29, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch13ID = {}
level07.props.Asset_Torch13ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch13ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch13ID.model)
Transform.SetPosition(level07.props.Asset_Torch13ID.transformID, {x=226.875, y=106.375, z=627.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch13ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch13ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch13ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch13ID.particle, 226.875, 109.375, 627.5)
Particle.SetAlive(level07.props.Asset_Torch13ID.particle)
level07.props.Asset_Torch13ID.lightIndex = Light.addLight(226.875, 109.375, 627.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch14ID = {}
level07.props.Asset_Torch14ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch14ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch14ID.model)
Transform.SetPosition(level07.props.Asset_Torch14ID.transformID, {x=241.5, y=108.313, z=616})
Transform.SetScaleNonUniform(level07.props.Asset_Torch14ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch14ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch14ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch14ID.particle, 241.5, 111.313, 616)
Particle.SetAlive(level07.props.Asset_Torch14ID.particle)
level07.props.Asset_Torch14ID.lightIndex = Light.addLight(241.5, 111.313, 616, 1, 0.576471, 0.160784, 6,2.5)
level07.props.PineTreeWicked12ID = {}
level07.props.PineTreeWicked12ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked12ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked12ID.model)
Transform.SetPosition(level07.props.PineTreeWicked12ID.transformID, {x=351, y=101.375, z=751.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked12ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked12ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked12ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked12ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked12ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked12ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked12ID.collider:SetPos(351,104.375,751.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked12ID.collider, 3)
level07.props.PineTreeWicked13ID = {}
level07.props.PineTreeWicked13ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked13ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked13ID.model)
Transform.SetPosition(level07.props.PineTreeWicked13ID.transformID, {x=332.25, y=103.875, z=706})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked13ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked13ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked13ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked13ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked13ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked13ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked13ID.collider:SetPos(332.25,106.875,706)
CollisionHandler.AddOBB(level07.props.PineTreeWicked13ID.collider, 3)
level07.props.PineTreeWicked14ID = {}
level07.props.PineTreeWicked14ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked14ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked14ID.model)
Transform.SetPosition(level07.props.PineTreeWicked14ID.transformID, {x=366.25, y=103.063, z=731.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked14ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked14ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked14ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked14ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked14ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked14ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked14ID.collider:SetPos(366.25,106.063,731.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked14ID.collider, 3)
level07.props.PineTreeWicked15ID = {}
level07.props.PineTreeWicked15ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked15ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked15ID.model)
Transform.SetPosition(level07.props.PineTreeWicked15ID.transformID, {x=321, y=101.688, z=743.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked15ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked15ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked15ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked15ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked15ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked15ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked15ID.collider:SetPos(321,104.688,743.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked15ID.collider, 3)
level07.props.PineTreeWicked16ID = {}
level07.props.PineTreeWicked16ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked16ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked16ID.model)
Transform.SetPosition(level07.props.PineTreeWicked16ID.transformID, {x=269.5, y=94.875, z=653})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked16ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked16ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked16ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked16ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked16ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked16ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked16ID.collider:SetPos(269.5,97.875,653)
CollisionHandler.AddOBB(level07.props.PineTreeWicked16ID.collider, 3)
level07.props.PineTreeWicked17ID = {}
level07.props.PineTreeWicked17ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked17ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked17ID.model)
Transform.SetPosition(level07.props.PineTreeWicked17ID.transformID, {x=228.25, y=102, z=644.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked17ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked17ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked17ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked17ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked17ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked17ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked17ID.collider:SetPos(228.25,105,644.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked17ID.collider, 3)
level07.props.PineTreeWicked18ID = {}
level07.props.PineTreeWicked18ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked18ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked18ID.model)
Transform.SetPosition(level07.props.PineTreeWicked18ID.transformID, {x=255.75, y=92.75, z=671})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked18ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked18ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked18ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked18ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked18ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked18ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked18ID.collider:SetPos(255.75,95.75,671)
CollisionHandler.AddOBB(level07.props.PineTreeWicked18ID.collider, 3)
level07.props.PineTreeWicked19ID = {}
level07.props.PineTreeWicked19ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked19ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked19ID.model)
Transform.SetPosition(level07.props.PineTreeWicked19ID.transformID, {x=250.875, y=104.813, z=620.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked19ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked19ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked19ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked19ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked19ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked19ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked19ID.collider:SetPos(250.875,107.813,620.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked19ID.collider, 3)
level07.props.PineTreeWicked20ID = {}
level07.props.PineTreeWicked20ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked20ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked20ID.model)
Transform.SetPosition(level07.props.PineTreeWicked20ID.transformID, {x=148.875, y=95.875, z=744.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked20ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked20ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked20ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked20ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked20ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked20ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked20ID.collider:SetPos(148.875,98.875,744.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked20ID.collider, 3)
level07.props.PineTreeWicked21ID = {}
level07.props.PineTreeWicked21ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked21ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked21ID.model)
Transform.SetPosition(level07.props.PineTreeWicked21ID.transformID, {x=143.75, y=89.3125, z=724})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked21ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked21ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked21ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked21ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked21ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked21ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked21ID.collider:SetPos(143.75,92.3125,724)
CollisionHandler.AddOBB(level07.props.PineTreeWicked21ID.collider, 3)
level07.props.PineTreeWicked22ID = {}
level07.props.PineTreeWicked22ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked22ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked22ID.model)
Transform.SetPosition(level07.props.PineTreeWicked22ID.transformID, {x=191.875, y=85.75, z=716.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked22ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked22ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked22ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked22ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked22ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked22ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked22ID.collider:SetPos(191.875,88.75,716.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked22ID.collider, 3)
level07.props.PineTreeWicked23ID = {}
level07.props.PineTreeWicked23ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked23ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked23ID.model)
Transform.SetPosition(level07.props.PineTreeWicked23ID.transformID, {x=193.5, y=89.3125, z=717})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked23ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked23ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked23ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked23ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked23ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked23ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked23ID.collider:SetPos(193.5,92.3125,717)
CollisionHandler.AddOBB(level07.props.PineTreeWicked23ID.collider, 3)
level07.props.PineTreeWicked24ID = {}
level07.props.PineTreeWicked24ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked24ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked24ID.model)
Transform.SetPosition(level07.props.PineTreeWicked24ID.transformID, {x=173.375, y=85.75, z=711.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked24ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked24ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked24ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked24ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked24ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked24ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked24ID.collider:SetPos(173.375,88.75,711.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked24ID.collider, 3)
level07.props.PineTreeWicked25ID = {}
level07.props.PineTreeWicked25ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked25ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked25ID.model)
Transform.SetPosition(level07.props.PineTreeWicked25ID.transformID, {x=193.75, y=97.625, z=758.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked25ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked25ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked25ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked25ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked25ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked25ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked25ID.collider:SetPos(193.75,100.625,758.5)
CollisionHandler.AddOBB(level07.props.PineTreeWicked25ID.collider, 3)
level07.props.PineTreeWicked26ID = {}
level07.props.PineTreeWicked26ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked26ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked26ID.model)
Transform.SetPosition(level07.props.PineTreeWicked26ID.transformID, {x=169.25, y=94.3125, z=742})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked26ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked26ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked26ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked26ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked26ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked26ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked26ID.collider:SetPos(169.25,97.3125,742)
CollisionHandler.AddOBB(level07.props.PineTreeWicked26ID.collider, 3)
level07.props.PineTreeWicked27ID = {}
level07.props.PineTreeWicked27ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked27ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked27ID.model)
Transform.SetPosition(level07.props.PineTreeWicked27ID.transformID, {x=164, y=99.3125, z=759})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked27ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked27ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked27ID.collider = OBBCollider.Create(-1)
level07.props.PineTreeWicked27ID.collider:SetOffset(0,3,0)
level07.props.PineTreeWicked27ID.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.props.PineTreeWicked27ID.collider:SetHalfLengths(1.5,5,1.5)
level07.props.PineTreeWicked27ID.collider:SetPos(164,102.313,759)
CollisionHandler.AddOBB(level07.props.PineTreeWicked27ID.collider, 3)
level07.props.Asset_Torch15ID = {}
level07.props.Asset_Torch15ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch15ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch15ID.model)
Transform.SetPosition(level07.props.Asset_Torch15ID.transformID, {x=153.125, y=128.125, z=558.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch15ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch15ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch15ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch15ID.particle, 153.125, 131.125, 558.5)
Particle.SetAlive(level07.props.Asset_Torch15ID.particle)
level07.props.Asset_Torch15ID.lightIndex = Light.addLight(153.125, 131.125, 558.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch16ID = {}
level07.props.Asset_Torch16ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch16ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch16ID.model)
Transform.SetPosition(level07.props.Asset_Torch16ID.transformID, {x=150, y=129.5, z=544})
Transform.SetScaleNonUniform(level07.props.Asset_Torch16ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch16ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch16ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch16ID.particle, 150, 132.5, 544)
Particle.SetAlive(level07.props.Asset_Torch16ID.particle)
level07.props.Asset_Torch16ID.lightIndex = Light.addLight(150, 132.5, 544, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch17ID = {}
level07.props.Asset_Torch17ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch17ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch17ID.model)
Transform.SetPosition(level07.props.Asset_Torch17ID.transformID, {x=177.5, y=127.563, z=531})
Transform.SetScaleNonUniform(level07.props.Asset_Torch17ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch17ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch17ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch17ID.particle, 177.5, 130.563, 531)
Particle.SetAlive(level07.props.Asset_Torch17ID.particle)
level07.props.Asset_Torch17ID.lightIndex = Light.addLight(177.5, 130.563, 531, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch18ID = {}
level07.props.Asset_Torch18ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch18ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch18ID.model)
Transform.SetPosition(level07.props.Asset_Torch18ID.transformID, {x=205.75, y=125.875, z=529})
Transform.SetScaleNonUniform(level07.props.Asset_Torch18ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch18ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch18ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch18ID.particle, 205.75, 128.875, 529)
Particle.SetAlive(level07.props.Asset_Torch18ID.particle)
level07.props.Asset_Torch18ID.lightIndex = Light.addLight(205.75, 128.875, 529, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch19ID = {}
level07.props.Asset_Torch19ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch19ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch19ID.model)
Transform.SetPosition(level07.props.Asset_Torch19ID.transformID, {x=225.625, y=124.188, z=556.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch19ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch19ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch19ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch19ID.particle, 225.625, 127.188, 556.5)
Particle.SetAlive(level07.props.Asset_Torch19ID.particle)
level07.props.Asset_Torch19ID.lightIndex = Light.addLight(225.625, 127.188, 556.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch20ID = {}
level07.props.Asset_Torch20ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch20ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch20ID.model)
Transform.SetPosition(level07.props.Asset_Torch20ID.transformID, {x=225.75, y=124.5, z=570.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch20ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch20ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch20ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch20ID.particle, 225.75, 127.5, 570.5)
Particle.SetAlive(level07.props.Asset_Torch20ID.particle)
level07.props.Asset_Torch20ID.lightIndex = Light.addLight(225.75, 127.5, 570.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch21ID = {}
level07.props.Asset_Torch21ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch21ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch21ID.model)
Transform.SetPosition(level07.props.Asset_Torch21ID.transformID, {x=200.5, y=125.688, z=591.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch21ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch21ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch21ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch21ID.particle, 200.5, 128.688, 591.5)
Particle.SetAlive(level07.props.Asset_Torch21ID.particle)
level07.props.Asset_Torch21ID.lightIndex = Light.addLight(200.5, 128.688, 591.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch22ID = {}
level07.props.Asset_Torch22ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch22ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch22ID.model)
Transform.SetPosition(level07.props.Asset_Torch22ID.transformID, {x=177, y=126.625, z=582})
Transform.SetScaleNonUniform(level07.props.Asset_Torch22ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch22ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch22ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch22ID.particle, 177, 129.625, 582)
Particle.SetAlive(level07.props.Asset_Torch22ID.particle)
level07.props.Asset_Torch22ID.lightIndex = Light.addLight(177, 129.625, 582, 1, 0.576471, 0.160784, 6,2.5)
level07.triggers.BlockerTrigger12ID = {}
level07.triggers.BlockerTrigger12ID.collider = OBBCollider.Create(-1)
level07.triggers.BlockerTrigger12ID.collider:SetOffset(0,0,0)
level07.triggers.BlockerTrigger12ID.collider:SetAxes(0.663779, 0, -0.747929, 0, -1, 0, 0.747929, 0, 0.663779)
level07.triggers.BlockerTrigger12ID.collider:SetHalfLengths(9.57697,13.5245,22.4036)
level07.triggers.BlockerTrigger12ID.collider:SetPos(295.293,96.5625,690.565)
sluice18 = CreateSluice(level07.triggers.BlockerTrigger12ID.collider, level07.props.BlockerClosedNature4ID.transformID, level07.props.BlockerClosedNature4ID, level07.props.BlockerOpenNature4ID.transformID)
level07.triggers.BlockerTrigger12ID.collider.OnEnter = function(self) SluiceEnter(sluice18) end
level07.triggers.BlockerTrigger12ID.collider.OnExit = function(self) SluiceExit(sluice18) end
level07.triggers.BlockerTrigger12ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice18) end
level07.triggers.BlockerTrigger12ID.collider.triggered = false
CollisionHandler.AddOBB(level07.triggers.BlockerTrigger12ID.collider, 4)
level07.triggers.BlockerTrigger13ID = {}
level07.triggers.BlockerTrigger13ID.collider = OBBCollider.Create(-1)
level07.triggers.BlockerTrigger13ID.collider:SetOffset(0,0,0)
level07.triggers.BlockerTrigger13ID.collider:SetAxes(0.784145, 0, -0.620578, 0, -1, 0, 0.620578, 0, 0.784145)
level07.triggers.BlockerTrigger13ID.collider:SetHalfLengths(12.9171,23.5948,9.88232)
level07.triggers.BlockerTrigger13ID.collider:SetPos(219.679,115.5,596.831)
sluice19 = CreateSluice(level07.triggers.BlockerTrigger13ID.collider, level07.props.BlockerClosedNature5ID.transformID, level07.props.BlockerClosedNature5ID, level07.props.BlockerOpenNature5ID.transformID)
level07.triggers.BlockerTrigger13ID.collider.OnEnter = function(self) SluiceEnter(sluice19) end
level07.triggers.BlockerTrigger13ID.collider.OnExit = function(self) SluiceExit(sluice19) end
level07.triggers.BlockerTrigger13ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice19) end
level07.triggers.BlockerTrigger13ID.collider.triggered = false
CollisionHandler.AddOBB(level07.triggers.BlockerTrigger13ID.collider, 4)
level07.triggers.BlockerTrigger14ID = {}
level07.triggers.BlockerTrigger14ID.collider = OBBCollider.Create(-1)
level07.triggers.BlockerTrigger14ID.collider:SetOffset(0,0,0)
level07.triggers.BlockerTrigger14ID.collider:SetAxes(0.99678, 0, -0.080188, 0, -1, 0, 0.080188, 0, 0.99678)
level07.triggers.BlockerTrigger14ID.collider:SetHalfLengths(28.5138,19.3845,10.0422)
level07.triggers.BlockerTrigger14ID.collider:SetPos(235.233,86.1875,737.352)
sluice20 = CreateSluice(level07.triggers.BlockerTrigger14ID.collider, level07.props.BlockerClosedFire4ID.transformID, level07.props.BlockerClosedFire4ID, level07.props.BlockerOpenFire4ID.transformID)
level07.triggers.BlockerTrigger14ID.collider.OnEnter = function(self) SluiceEnter(sluice20) end
level07.triggers.BlockerTrigger14ID.collider.OnExit = function(self) SluiceExit(sluice20) end
level07.triggers.BlockerTrigger14ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice20) end
level07.triggers.BlockerTrigger14ID.collider.triggered = false
CollisionHandler.AddOBB(level07.triggers.BlockerTrigger14ID.collider, 4)
level07.triggers.BlockerTrigger15ID = {}
level07.triggers.BlockerTrigger15ID.collider = OBBCollider.Create(-1)
level07.triggers.BlockerTrigger15ID.collider:SetOffset(0,0,0)
level07.triggers.BlockerTrigger15ID.collider:SetAxes(0.950682, 0, 0.310166, 0, -1, 0, -0.310166, 0, 0.950682)
level07.triggers.BlockerTrigger15ID.collider:SetHalfLengths(12.0506,16.3252,6.61011)
level07.triggers.BlockerTrigger15ID.collider:SetPos(359.206,117.375,678.393)
sluice21 = CreateSluice(level07.triggers.BlockerTrigger15ID.collider, level07.props.BlockerClosedIce4ID.transformID, level07.props.BlockerClosedIce4ID, level07.props.BlockerOpenIce4ID.transformID)
level07.triggers.BlockerTrigger15ID.collider.OnEnter = function(self) SluiceEnter(sluice21) end
level07.triggers.BlockerTrigger15ID.collider.OnExit = function(self) SluiceExit(sluice21) end
level07.triggers.BlockerTrigger15ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice21) end
level07.triggers.BlockerTrigger15ID.collider.triggered = false
CollisionHandler.AddOBB(level07.triggers.BlockerTrigger15ID.collider, 4)
level07.triggers.BlockerTrigger16ID = {}
level07.triggers.BlockerTrigger16ID.collider = OBBCollider.Create(-1)
level07.triggers.BlockerTrigger16ID.collider:SetOffset(0,0,0)
level07.triggers.BlockerTrigger16ID.collider:SetAxes(0.998421, 0, -0.0561746, 0, -1, 0, 0.0561746, 0, 0.998421)
level07.triggers.BlockerTrigger16ID.collider:SetHalfLengths(10.5968,12.8873,12.2036)
level07.triggers.BlockerTrigger16ID.collider:SetPos(325.904,136.25,578.422)
sluice23 = CreateSluice(level07.triggers.BlockerTrigger16ID.collider, level07.props.BlockerClosedIce5ID.transformID, level07.props.BlockerClosedIce5ID, level07.props.BlockerOpenIce5ID.transformID)
level07.triggers.BlockerTrigger16ID.collider.OnEnter = function(self) SluiceEnter(sluice23) end
level07.triggers.BlockerTrigger16ID.collider.OnExit = function(self) SluiceExit(sluice23) end
level07.triggers.BlockerTrigger16ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice23) end
level07.triggers.BlockerTrigger16ID.collider.triggered = false
CollisionHandler.AddOBB(level07.triggers.BlockerTrigger16ID.collider, 4)
level07.triggers.BlockerTrigger17ID = {}
level07.triggers.BlockerTrigger17ID.collider = OBBCollider.Create(-1)
level07.triggers.BlockerTrigger17ID.collider:SetOffset(0,0,0)
level07.triggers.BlockerTrigger17ID.collider:SetAxes(0.939347, 0, 0.342968, 0, -1, 0, -0.342968, 0, 0.939347)
level07.triggers.BlockerTrigger17ID.collider:SetHalfLengths(4.22369,26.4925,24.6726)
level07.triggers.BlockerTrigger17ID.collider:SetPos(154.775,120.573,604.051)
sluice24 = CreateSluice(level07.triggers.BlockerTrigger17ID.collider, level07.props.BlockerClosedFire5ID.transformID, level07.props.BlockerClosedFire5ID, level07.props.BlockerOpenFire5ID.transformID)
level07.triggers.BlockerTrigger17ID.collider.OnEnter = function(self) SluiceEnter(sluice24) end
level07.triggers.BlockerTrigger17ID.collider.OnExit = function(self) SluiceExit(sluice24) end
level07.triggers.BlockerTrigger17ID.collider.OnTriggering = function(self, dt) SluiceUpdate(dt, sluice24) end
level07.triggers.BlockerTrigger17ID.collider.triggered = false
CollisionHandler.AddOBB(level07.triggers.BlockerTrigger17ID.collider, 4)
end
level07.unload = function()
level07.props.tile7ID = nil
Gear.UnbindInstance(level07.props.t6s3ID.transformID)
Assets.UnloadModel('Models/tile6_s3.model')
level07.props.t6s3ID = nil
Gear.UnbindInstance(level07.props.t6s4ID.transformID)
Assets.UnloadModel('Models/tile6_s4.model')
level07.props.t6s4ID = nil
Gear.UnbindInstance(level07.props.t6s5ID.transformID)
Assets.UnloadModel('Models/tile6_s5.model')
level07.props.t6s5ID = nil
Gear.UnbindInstance(level07.props.t6s6ID.transformID)
Assets.UnloadModel('Models/tile6_s6.model')
level07.props.t6s6ID = nil
Gear.UnbindInstance(level07.props.t6s8ID.transformID)
Assets.UnloadModel('Models/tile6_s8.model')
level07.props.t6s8ID = nil
Gear.UnbindInstance(level07.props.t6s9ID.transformID)
Assets.UnloadModel('Models/tile6_s9.model')
level07.props.t6s9ID = nil
Gear.UnbindInstance(level07.props.t7s1ID.transformID)
Assets.UnloadModel('Models/tile7_s1.model')
level07.props.t7s1ID = nil
Gear.UnbindInstance(level07.props.t7s2ID.transformID)
Assets.UnloadModel('Models/tile7_s2.model')
level07.props.t7s2ID = nil
Gear.UnbindInstance(level07.props.t7s3ID.transformID)
Assets.UnloadModel('Models/tile7_s3.model')
level07.props.t7s3ID = nil
Gear.UnbindInstance(level07.props.t7s4ID.transformID)
Assets.UnloadModel('Models/tile7_s4.model')
level07.props.t7s4ID = nil
Gear.UnbindInstance(level07.props.t7s5ID.transformID)
Assets.UnloadModel('Models/tile7_s5.model')
level07.props.t7s5ID = nil
Gear.UnbindInstance(level07.props.t7s6ID.transformID)
Assets.UnloadModel('Models/tile7_s6.model')
level07.props.t7s6ID = nil
Gear.UnbindInstance(level07.props.t7s7ID.transformID)
Assets.UnloadModel('Models/tile7_s7.model')
level07.props.t7s7ID = nil
Gear.UnbindInstance(level07.props.t7s8ID.transformID)
Assets.UnloadModel('Models/tile7_s8.model')
level07.props.t7s8ID = nil
Gear.UnbindInstance(level07.props.t7s9ID.transformID)
Assets.UnloadModel('Models/tile7_s9.model')
level07.props.t7s9ID = nil
level07.colliders.Tile7_wallNrID = nil
level07.colliders.Tile7_wallNr1ID = nil
level07.colliders.Tile7_wallNr2ID = nil
level07.colliders.Tile7_wallNr3ID = nil
level07.colliders.Tile7_wallNr5ID = nil
level07.colliders.Tile7_wallNr6ID = nil
level07.colliders.Tile7_wallNr7ID = nil
level07.colliders.Tile7_wallNr8ID = nil
level07.colliders.Tile7_wallNr9ID = nil
level07.colliders.Tile7_wallNr10ID = nil
level07.colliders.Tile7_wallNr11ID = nil
level07.colliders.Tile7_wallNr16ID = nil
level07.colliders.Tile7_wallNr17ID = nil
level07.colliders.Tile7_wallNr18ID = nil
level07.colliders.Tile7_wallNr19ID = nil
level07.colliders.Tile7_wallNr20ID = nil
level07.colliders.Tile7_wallNr21ID = nil
level07.colliders.Tile7_wallNr22ID = nil
level07.colliders.Tile7_wallNr23ID = nil
level07.colliders.Tile7_wallNr24ID = nil
level07.colliders.Tile7_wallNr26ID = nil
level07.colliders.Tile7_wallNr27ID = nil
level07.colliders.Tile7_wallNr28ID = nil
level07.colliders.Tile7_wallNr29ID = nil
level07.colliders.Tile7_wallNr30ID = nil
level07.colliders.Tile7_wallNr31ID = nil
level07.colliders.Tile7_wallNr32ID = nil
level07.colliders.Tile7_wallNr33ID = nil
level07.colliders.Tile7_wallNr35ID = nil
level07.colliders.Tile7_wallNr36ID = nil
level07.colliders.Tile7_wallNr37ID = nil
level07.colliders.Tile7_wallNr38ID = nil
level07.colliders.Tile7_wallNr39ID = nil
level07.colliders.Tile7_wallNr40ID = nil
level07.colliders.Tile7_wallNr43ID = nil
level07.colliders.Tile7_wallNr45ID = nil
level07.colliders.Tile7_wallNr48ID = nil
level07.colliders.Tile7_wallNr49ID = nil
level07.colliders.Tile7_wallNr50ID = nil
level07.colliders.Tile7_wallNr51ID = nil
level07.colliders.Tile7_wallNr52ID = nil
level07.colliders.Tile7_wallNr55ID = nil
level07.colliders.Tile7_wallNr56ID = nil
level07.colliders.Tile7_wallNr57ID = nil
level07.colliders.Tile7_wallNr58ID = nil
level07.colliders.Tile7_wallNr59ID = nil
level07.colliders.Tile7_wallNr60ID = nil
level07.colliders.Tile7_wallNr61ID = nil
level07.colliders.Tile7_wallNr62ID = nil
level07.colliders.Tile7_wallNr63ID = nil
level07.colliders.Tile7_wallNr64ID = nil
level07.colliders.Tile7_wallNr65ID = nil
level07.colliders.Tile7_wallNr66ID = nil
level07.colliders.Tile7_wallNr67ID = nil
level07.colliders.Tile7_wallNr69ID = nil
level07.colliders.Tile7_wallNr70ID = nil
level07.colliders.Tile7_wallNr72ID = nil
level07.colliders.Tile7_wallNr73ID = nil
level07.colliders.Tile7_wallNr74ID = nil
level07.colliders.Tile7_wallNr75ID = nil
level07.colliders.Tile7_wallNr79ID = nil
level07.colliders.Tile7_wallNr80ID = nil
level07.colliders.Tile7_wallNr81ID = nil
level07.colliders.Tile7_wallNr83ID = nil
level07.colliders.Tile7_wallNr84ID = nil
level07.colliders.Tile7_wallNr85ID = nil
level07.colliders.Tile7_wallNr86ID = nil
level07.colliders.Tile7_wallNr87ID = nil
level07.colliders.Tile7_wallNr88ID = nil
level07.colliders.Tile7_wallNr89ID = nil
level07.colliders.Tile7_wallNr90ID = nil
level07.colliders.Tile7_wallNr91ID = nil
level07.colliders.Tile7_wallNr92ID = nil
level07.colliders.Tile7_wallNr93ID = nil
level07.colliders.Tile7_wallNr96ID = nil
level07.colliders.Tile7_wallNr97ID = nil
Gear.UnbindInstance(level07.props.RockID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level07.props.RockID = nil
Gear.UnbindInstance(level07.props.Rock1ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level07.props.Rock1ID = nil
Gear.UnbindInstance(level07.props.t6s11ID.transformID)
Assets.UnloadModel('Models/tile6_s11.model')
level07.props.t6s11ID = nil
Gear.UnbindInstance(level07.props.t6s14ID.transformID)
Assets.UnloadModel('Models/tile6_s14.model')
level07.props.t6s14ID = nil
level07.colliders.Tile7_wallNr44ID = nil
level07.colliders.Tile7_wallNr99ID = nil
level07.colliders.Tile7_wallNr100ID = nil
level07.colliders.Tile7_wallNr101ID = nil
level07.colliders.Tile7_wallNr78ID = nil
level07.colliders.Tile7_wallNr102ID = nil
level07.colliders.Tile7_wallNr103ID = nil
level07.colliders.Tile7_wallNr76ID = nil
level07.colliders.Tile7_wallNr4ID = nil
level07.colliders.Tile7_wallNr71ID = nil
level07.colliders.Tile7_wallNr77ID = nil
level07.colliders.Tile7_wallNr98ID = nil
level07.colliders.Tile7_wallNr104ID = nil
level07.colliders.Tile7_wallNr105ID = nil
level07.colliders.Tile7_wallNr106ID = nil
level07.colliders.Tile7_wallNr107ID = nil
level07.colliders.Tile7_wallNr108ID = nil
level07.colliders.Tile7_wallNr109ID = nil
level07.colliders.Tile7_wallNr110ID = nil
level07.colliders.Tile7_wallNr111ID = nil
level07.colliders.Tile7_wallNr25ID = nil
level07.colliders.Tile7_wallNr54ID = nil
level07.colliders.Tile7_wallNr53ID = nil
level07.colliders.Tile7_wallNr112ID = nil
level07.colliders.Tile7_wallNr113ID = nil
level07.colliders.Tile7_wallNr34ID = nil
level07.colliders.Tile7_wallNr46ID = nil
level07.colliders.Tile7_wallNr114ID = nil
level07.colliders.Tile7_wallNr115ID = nil
level07.colliders.Tile7_wallNr116ID = nil
level07.colliders.Tile7_wallNr47ID = nil
level07.colliders.Tile7_wallNr117ID = nil
level07.colliders.Tile7_wallNr68ID = nil
level07.colliders.Tile7_wallNr82ID = nil
level07.colliders.Tile7_wallNr118ID = nil
level07.colliders.Tile7_wallNr119ID = nil
level07.colliders.Tile7_wallNr120ID = nil
level07.colliders.Tile7_wallNr13ID = nil
level07.colliders.Tile7_wallNr95ID = nil
level07.colliders.Tile7_wallNr94ID = nil
level07.colliders.Tile7_wallNr14ID = nil
level07.colliders.Tile7_wallNr15ID = nil
Gear.UnbindInstance(level07.props.BlockerClosedNature4ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerClosedNature4ID = nil
level07.triggers.BlockerTrigger12ID = nil
Gear.UnbindInstance(level07.props.BlockerOpenNature4ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerOpenNature4ID = nil
Gear.UnbindInstance(level07.props.BlockerClosedNature5ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerClosedNature5ID = nil
level07.triggers.BlockerTrigger13ID = nil
Gear.UnbindInstance(level07.props.BlockerOpenNature5ID.transformID)
Assets.UnloadModel('Models/Grass_Branch_blocker.model')
level07.props.BlockerOpenNature5ID = nil
Gear.UnbindInstance(level07.props.BlockerOpenFire4ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerOpenFire4ID = nil
level07.triggers.BlockerTrigger14ID = nil
Gear.UnbindInstance(level07.props.BlockerClosedFire4ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerClosedFire4ID = nil
Gear.UnbindInstance(level07.props.BlockerClosedIce4ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerClosedIce4ID = nil
level07.triggers.BlockerTrigger15ID = nil
Gear.UnbindInstance(level07.props.BlockerOpenIce4ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerOpenIce4ID = nil
Gear.UnbindInstance(level07.props.BlockerClosedIce5ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerClosedIce5ID = nil
level07.triggers.BlockerTrigger16ID = nil
Gear.UnbindInstance(level07.props.BlockerOpenIce5ID.transformID)
Assets.UnloadModel('Models/Ice_Branch_blocker.model')
level07.props.BlockerOpenIce5ID = nil
Gear.UnbindInstance(level07.props.BlockerClosedFire5ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerClosedFire5ID = nil
level07.triggers.BlockerTrigger17ID = nil
Gear.UnbindInstance(level07.props.BlockerOpenFire5ID.transformID)
Assets.UnloadModel('Models/Fire_Branch_blocker.model')
level07.props.BlockerOpenFire5ID = nil
level07.colliders.Tile7_wallNr12ID = nil
level07.colliders.Tile7_wallNr121ID = nil
level07.colliders.Tile7_wallNr122ID = nil
DestroyEnemy(level07.enemies.GoblinFire14ID)
DestroyEnemy(level07.enemies.GoblinFire15ID)
DestroyEnemy(level07.enemies.GoblinFire16ID)
DestroyEnemy(level07.enemies.GoblinFire17ID)
DestroyEnemy(level07.enemies.GoblinFire18ID)
DestroyEnemy(level07.enemies.GoblinFire19ID)
DestroyEnemy(level07.enemies.GoblinFire20ID)
DestroyEnemy(level07.enemies.GoblinFire21ID)
DestroyEnemy(level07.enemies.GoblinNeutralID)
DestroyEnemy(level07.enemies.GoblinNeutral1ID)
DestroyEnemy(level07.enemies.GoblinNeutral2ID)
DestroyEnemy(level07.enemies.GoblinNeutral3ID)
DestroyEnemy(level07.enemies.GoblinNeutral4ID)
DestroyEnemy(level07.enemies.GoblinNeutral5ID)
DestroyEnemy(level07.enemies.GoblinNeutral6ID)
DestroyEnemy(level07.enemies.GoblinNature16ID)
DestroyEnemy(level07.enemies.GoblinNature17ID)
DestroyEnemy(level07.enemies.GoblinNature18ID)
DestroyEnemy(level07.enemies.GoblinNature19ID)
DestroyEnemy(level07.enemies.GoblinNature20ID)
DestroyEnemy(level07.enemies.GoblinNature21ID)
DestroyEnemy(level07.enemies.GoblinNature22ID)
DestroyEnemy(level07.enemies.GoblinNature23ID)
DestroyEnemy(level07.enemies.GoblinIce18ID)
DestroyEnemy(level07.enemies.GoblinIce19ID)
DestroyEnemy(level07.enemies.GoblinIce20ID)
DestroyEnemy(level07.enemies.GoblinIce21ID)
DestroyEnemy(level07.enemies.GoblinIce22ID)
DestroyEnemy(level07.enemies.GoblinIce23ID)
DestroyEnemy(level07.enemies.GoblinIce24ID)
DestroyEnemy(level07.enemies.GoblinIce25ID)
DestroyEnemy(level07.enemies.GoblinIce26ID)
DestroyEnemy(level07.enemies.GoblinIce27ID)
DestroyEnemy(level07.enemies.GoblinNeutral7ID)
DestroyEnemy(level07.enemies.GoblinNeutral8ID)
DestroyEnemy(level07.enemies.GoblinNeutral9ID)
DestroyEnemy(level07.enemies.GoblinNeutral10ID)
DestroyEnemy(level07.enemies.GoblinNeutral11ID)
DestroyEnemy(level07.enemies.GoblinNeutral12ID)
DestroyEnemy(level07.enemies.GoblinNeutral13ID)
Gear.UnbindInstance(level07.props.Tile7_FenceID.transformID)
Assets.UnloadModel('Models/tile7_fence.model')
level07.props.Tile7_FenceID = nil
level07.colliders.Tile7_wallNr41ID = nil
level07.colliders.Tile7_wallNr42ID = nil
level07.colliders.Tile7_wallNr123ID = nil
Gear.UnbindInstance(level07.props.PineTreeWickedID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWickedID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked1ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked1ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked2ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked2ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked3ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked3ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked4ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked4ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked5ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked5ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked6ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked6ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked7ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked7ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked8ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked8ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked9ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked9ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked10ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked10ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked11ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked11ID = nil
Gear.UnbindInstance(level07.props.Asset_Stone3ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level07.props.Asset_Stone3ID = nil
Gear.UnbindInstance(level07.props.Asset_Stone36ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level07.props.Asset_Stone36ID = nil
Gear.UnbindInstance(level07.props.Asset_Stone4ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level07.props.Asset_Stone4ID = nil
Gear.UnbindInstance(level07.props.Asset_Stone44ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level07.props.Asset_Stone44ID = nil
Gear.UnbindInstance(level07.props.Asset_Stone45ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level07.props.Asset_Stone45ID = nil
Light.removeLight(level07.props.Asset_Torch3ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch3ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch3ID = nil
Light.removeLight(level07.props.Asset_Torch4ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch4ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch4ID = nil
Light.removeLight(level07.props.Asset_Torch5ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch5ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch5ID = nil
Light.removeLight(level07.props.Asset_Torch6ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch6ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch6ID = nil
Light.removeLight(level07.props.Asset_Torch7ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch7ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch7ID = nil
Light.removeLight(level07.props.Asset_Torch8ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch8ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch8ID = nil
Light.removeLight(level07.props.Asset_Torch9ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch9ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch9ID = nil
Light.removeLight(level07.props.Asset_Torch10ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch10ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch10ID = nil
Light.removeLight(level07.props.Asset_Torch11ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch11ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch11ID = nil
Light.removeLight(level07.props.Asset_Torch12ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch12ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch12ID = nil
Light.removeLight(level07.props.Asset_Torch13ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch13ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch13ID = nil
Light.removeLight(level07.props.Asset_Torch14ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch14ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch14ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked12ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked12ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked13ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked13ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked14ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked14ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked15ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked15ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked16ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked16ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked17ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked17ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked18ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked18ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked19ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked19ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked20ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked20ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked21ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked21ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked22ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked22ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked23ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked23ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked24ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked24ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked25ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked25ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked26ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked26ID = nil
Gear.UnbindInstance(level07.props.PineTreeWicked27ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked27ID = nil
Light.removeLight(level07.props.Asset_Torch15ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch15ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch15ID = nil
Light.removeLight(level07.props.Asset_Torch16ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch16ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch16ID = nil
Light.removeLight(level07.props.Asset_Torch17ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch17ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch17ID = nil
Light.removeLight(level07.props.Asset_Torch18ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch18ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch18ID = nil
Light.removeLight(level07.props.Asset_Torch19ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch19ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch19ID = nil
Light.removeLight(level07.props.Asset_Torch20ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch20ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch20ID = nil
Light.removeLight(level07.props.Asset_Torch21ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch21ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch21ID = nil
Light.removeLight(level07.props.Asset_Torch22ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch22ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch22ID = nil
level07.props = nil
level07.colliders = nil
level07.triggers = nil
level07.enemies = nil
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
level08.enemies = {}
level08.props.tile8ID = {}
level08.props.t8s1ID = {}
level08.props.t8s1ID.model = Assets.LoadModel('Models/tile8_s1.model')
level08.props.t8s1ID.transformID = Gear.BindStaticInstance(level08.props.t8s1ID.model)
Transform.SetPosition(level08.props.t8s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s1ID.transformID, {x=-0, y=0, z=-0})
level08.props.t8s2ID = {}
level08.props.t8s2ID.model = Assets.LoadModel('Models/tile8_s2.model')
level08.props.t8s2ID.transformID = Gear.BindStaticInstance(level08.props.t8s2ID.model)
Transform.SetPosition(level08.props.t8s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s2ID.transformID, {x=-0, y=0, z=-0})
level08.props.t8s3ID = {}
level08.props.t8s3ID.model = Assets.LoadModel('Models/tile8_s3.model')
level08.props.t8s3ID.transformID = Gear.BindStaticInstance(level08.props.t8s3ID.model)
Transform.SetPosition(level08.props.t8s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s3ID.transformID, {x=-0, y=0, z=-0})
level08.props.t8s4ID = {}
level08.props.t8s4ID.model = Assets.LoadModel('Models/tile8_s4.model')
level08.props.t8s4ID.transformID = Gear.BindStaticInstance(level08.props.t8s4ID.model)
Transform.SetPosition(level08.props.t8s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s4ID.transformID, {x=-0, y=0, z=-0})
level08.props.t8s6ID = {}
level08.props.t8s6ID.model = Assets.LoadModel('Models/tile8_s6a.model')
level08.props.t8s6ID.transformID = Gear.BindStaticInstance(level08.props.t8s6ID.model)
Transform.SetPosition(level08.props.t8s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s6ID.transformID, {x=-0, y=0, z=-0})
level08.props.t8s7ID = {}
level08.props.t8s7ID.model = Assets.LoadModel('Models/tile8_s7.model')
level08.props.t8s7ID.transformID = Gear.BindStaticInstance(level08.props.t8s7ID.model)
Transform.SetPosition(level08.props.t8s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s7ID.transformID, {x=-0, y=0, z=-0})
level08.props.t8s8ID = {}
level08.props.t8s8ID.model = Assets.LoadModel('Models/tile8_s8a.model')
level08.props.t8s8ID.transformID = Gear.BindStaticInstance(level08.props.t8s8ID.model)
Transform.SetPosition(level08.props.t8s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s8ID.transformID, {x=-0, y=0, z=-0})
level08.colliders.Tile8_wallNrID = {}
level08.colliders.Tile8_wallNrID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNrID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNrID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level08.colliders.Tile8_wallNrID.collider:SetHalfLengths(0.3,5,8)
level08.colliders.Tile8_wallNrID.collider:SetPos(324,142.046,503)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNrID.collider, 3)
level08.colliders.Tile8_wallNr1ID = {}
level08.colliders.Tile8_wallNr1ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr1ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr1ID.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level08.colliders.Tile8_wallNr1ID.collider:SetHalfLengths(0.3,5.33105,2)
level08.colliders.Tile8_wallNr1ID.collider:SetPos(326,142.046,495)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr1ID.collider, 3)
level08.colliders.Tile8_wallNr2ID = {}
level08.colliders.Tile8_wallNr2ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr2ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr2ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level08.colliders.Tile8_wallNr2ID.collider:SetHalfLengths(0.3,7.64857,4.12311)
level08.colliders.Tile8_wallNr2ID.collider:SetPos(332,141.715,494)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr2ID.collider, 3)
level08.colliders.Tile8_wallNr3ID = {}
level08.colliders.Tile8_wallNr3ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr3ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr3ID.collider:SetAxes(0.21693, -0, 0.976187, 0, -1, -0, 0.976187, 0, -0.21693)
level08.colliders.Tile8_wallNr3ID.collider:SetHalfLengths(0.3,9.80052,4.60977)
level08.colliders.Tile8_wallNr3ID.collider:SetPos(340.5,139.066,492)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr3ID.collider, 3)
level08.colliders.Tile8_wallNr4ID = {}
level08.colliders.Tile8_wallNr4ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr4ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr4ID.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level08.colliders.Tile8_wallNr4ID.collider:SetHalfLengths(0.3,7.97963,3.3541)
level08.colliders.Tile8_wallNr4ID.collider:SetPos(348,134.266,489.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr4ID.collider, 3)
level08.colliders.Tile8_wallNr5ID = {}
level08.colliders.Tile8_wallNr5ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr5ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr5ID.collider:SetAxes(0.581238, -0, 0.813733, 0, -1, -0, 0.813733, 0, -0.581238)
level08.colliders.Tile8_wallNr5ID.collider:SetHalfLengths(0.3,9.46946,4.30116)
level08.colliders.Tile8_wallNr5ID.collider:SetPos(354.5,131.286,485.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr5ID.collider, 3)
level08.colliders.Tile8_wallNr6ID = {}
level08.colliders.Tile8_wallNr6ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr6ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr6ID.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level08.colliders.Tile8_wallNr6ID.collider:SetHalfLengths(0.3,6.15874,1.80278)
level08.colliders.Tile8_wallNr6ID.collider:SetPos(359,126.817,481.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr6ID.collider, 3)
level08.colliders.Tile8_wallNr19ID = {}
level08.colliders.Tile8_wallNr19ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr19ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr19ID.collider:SetAxes(-0.83205, 0, -0.5547, -0, -1, 0, -0.5547, 0, 0.83205)
level08.colliders.Tile8_wallNr19ID.collider:SetHalfLengths(0.3,5.4966,3.60555)
level08.colliders.Tile8_wallNr19ID.collider:SetPos(351,126.155,401)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr19ID.collider, 3)
level08.colliders.Tile8_wallNr20ID = {}
level08.colliders.Tile8_wallNr20ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr20ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr20ID.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level08.colliders.Tile8_wallNr20ID.collider:SetHalfLengths(0.3,5.33107,3.53553)
level08.colliders.Tile8_wallNr20ID.collider:SetPos(346.5,126.651,406.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr20ID.collider, 3)
level08.colliders.Tile8_wallNr21ID = {}
level08.colliders.Tile8_wallNr21ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr21ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr21ID.collider:SetAxes(0.529999, 0, -0.847998, 0, -1, -0, -0.847998, 0, -0.529999)
level08.colliders.Tile8_wallNr21ID.collider:SetHalfLengths(0.3,5.16553,4.71699)
level08.colliders.Tile8_wallNr21ID.collider:SetPos(340,126.32,406.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr21ID.collider, 3)
level08.colliders.Tile8_wallNr22ID = {}
level08.colliders.Tile8_wallNr22ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr22ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr22ID.collider:SetAxes(0.316228, 0, -0.948683, 0, -1, -0, -0.948683, 0, -0.316228)
level08.colliders.Tile8_wallNr22ID.collider:SetHalfLengths(0.3,5.33107,4.74342)
level08.colliders.Tile8_wallNr22ID.collider:SetPos(331.5,126.486,402.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr22ID.collider, 3)
level08.colliders.Tile8_wallNr23ID = {}
level08.colliders.Tile8_wallNr23ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr23ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr23ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level08.colliders.Tile8_wallNr23ID.collider:SetHalfLengths(0.3,5,5.5)
level08.colliders.Tile8_wallNr23ID.collider:SetPos(321.5,126.817,401)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr23ID.collider, 3)
level08.colliders.Tile8_wallNr24ID = {}
level08.colliders.Tile8_wallNr24ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr24ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr24ID.collider:SetAxes(-0.274721, 0, -0.961524, -0, -1, 0, -0.961524, 0, 0.274721)
level08.colliders.Tile8_wallNr24ID.collider:SetHalfLengths(0.3,5.16553,3.64005)
level08.colliders.Tile8_wallNr24ID.collider:SetPos(312.5,126.817,402)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr24ID.collider, 3)
level08.colliders.Tile8_wallNr25ID = {}
level08.colliders.Tile8_wallNr25ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr25ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr25ID.collider:SetAxes(-0.478852, 0, -0.877896, -0, -1, 0, -0.877896, 0, 0.478852)
level08.colliders.Tile8_wallNr25ID.collider:SetHalfLengths(0.3,5.16553,6.26498)
level08.colliders.Tile8_wallNr25ID.collider:SetPos(303.5,126.651,406)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr25ID.collider, 3)
level08.colliders.Tile8_wallNr26ID = {}
level08.colliders.Tile8_wallNr26ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr26ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr26ID.collider:SetAxes(0.773957, 0, -0.633238, 0, -1, -0, -0.633238, 0, -0.773957)
level08.colliders.Tile8_wallNr26ID.collider:SetHalfLengths(0.3,5.33107,7.10634)
level08.colliders.Tile8_wallNr26ID.collider:SetPos(293.5,126.486,403.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr26ID.collider, 3)
level08.colliders.Tile8_wallNr39ID = {}
level08.colliders.Tile8_wallNr39ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr39ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr39ID.collider:SetAxes(-0.624695, 0, 0.780869, 0, -1, 0, 0.780869, 0, 0.624695)
level08.colliders.Tile8_wallNr39ID.collider:SetHalfLengths(0.3,7.64857,3.20156)
level08.colliders.Tile8_wallNr39ID.collider:SetPos(288.5,126.817,485)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr39ID.collider, 3)
level08.colliders.Tile8_wallNr40ID = {}
level08.colliders.Tile8_wallNr40ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr40ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr40ID.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level08.colliders.Tile8_wallNr40ID.collider:SetHalfLengths(0.3,8.47624,3.3541)
level08.colliders.Tile8_wallNr40ID.collider:SetPos(294,129.465,488.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr40ID.collider, 3)
level08.colliders.Tile8_wallNr41ID = {}
level08.colliders.Tile8_wallNr41ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr41ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr41ID.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level08.colliders.Tile8_wallNr41ID.collider:SetHalfLengths(0.3,9.13838,3.80789)
level08.colliders.Tile8_wallNr41ID.collider:SetPos(300.5,132.942,491.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr41ID.collider, 3)
level08.colliders.Tile8_wallNr42ID = {}
level08.colliders.Tile8_wallNr42ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr42ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr42ID.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level08.colliders.Tile8_wallNr42ID.collider:SetHalfLengths(0.3,6.65535,2.06155)
level08.colliders.Tile8_wallNr42ID.collider:SetPos(306,137.08,493.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr42ID.collider, 3)
level08.colliders.Tile8_wallNr43ID = {}
level08.colliders.Tile8_wallNr43ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr43ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr43ID.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level08.colliders.Tile8_wallNr43ID.collider:SetHalfLengths(0.3,7.31749,2.54951)
level08.colliders.Tile8_wallNr43ID.collider:SetPos(310.5,138.735,494.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr43ID.collider, 3)
level08.colliders.Tile8_wallNr44ID = {}
level08.colliders.Tile8_wallNr44ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr44ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr44ID.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level08.colliders.Tile8_wallNr44ID.collider:SetHalfLengths(0.3,5.99321,3.04138)
level08.colliders.Tile8_wallNr44ID.collider:SetPos(316,141.053,495.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr44ID.collider, 3)
level08.colliders.Tile8_wallNr45ID = {}
level08.colliders.Tile8_wallNr45ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr45ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr45ID.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level08.colliders.Tile8_wallNr45ID.collider:SetHalfLengths(0.3,5,7.5)
level08.colliders.Tile8_wallNr45ID.collider:SetPos(319,142.046,503.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr45ID.collider, 3)
level08.colliders.Tile8_wallNr46ID = {}
level08.colliders.Tile8_wallNr46ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr46ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr46ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level08.colliders.Tile8_wallNr46ID.collider:SetHalfLengths(0.3,5.16553,7)
level08.colliders.Tile8_wallNr46ID.collider:SetPos(322,141.384,486)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr46ID.collider, 3)
level08.colliders.Tile8_wallNr47ID = {}
level08.colliders.Tile8_wallNr47ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr47ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr47ID.collider:SetAxes(0.274721, 0, -0.961524, 0, -1, -0, -0.961524, 0, -0.274721)
level08.colliders.Tile8_wallNr47ID.collider:SetHalfLengths(0.3,8.80731,3.64005)
level08.colliders.Tile8_wallNr47ID.collider:SetPos(311.5,141.218,485)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr47ID.collider, 3)
level08.colliders.Tile8_wallNr48ID = {}
level08.colliders.Tile8_wallNr48ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr48ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr48ID.collider:SetAxes(0.371391, 0, -0.928477, 0, -1, -0, -0.928477, 0, -0.371391)
level08.colliders.Tile8_wallNr48ID.collider:SetHalfLengths(0.3,8.47624,2.69258)
level08.colliders.Tile8_wallNr48ID.collider:SetPos(305.5,137.411,483)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr48ID.collider, 3)
level08.colliders.Tile8_wallNr49ID = {}
level08.colliders.Tile8_wallNr49ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr49ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr49ID.collider:SetAxes(0.478852, 0, -0.877896, 0, -1, -0, -0.877896, 0, -0.478852)
level08.colliders.Tile8_wallNr49ID.collider:SetHalfLengths(0.3,12.118,6.26498)
level08.colliders.Tile8_wallNr49ID.collider:SetPos(297.5,133.935,479)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr49ID.collider, 3)
level08.colliders.Tile8_wallNr59ID = {}
level08.colliders.Tile8_wallNr59ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr59ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr59ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level08.colliders.Tile8_wallNr59ID.collider:SetHalfLengths(0.3,7.31749,2.06155)
level08.colliders.Tile8_wallNr59ID.collider:SetPos(331,141.384,485.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr59ID.collider, 3)
level08.colliders.Tile8_wallNr60ID = {}
level08.colliders.Tile8_wallNr60ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr60ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr60ID.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level08.colliders.Tile8_wallNr60ID.collider:SetHalfLengths(0.3,8.3107,3.16228)
level08.colliders.Tile8_wallNr60ID.collider:SetPos(336,139.066,484)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr60ID.collider, 3)
level08.colliders.Tile8_wallNr61ID = {}
level08.colliders.Tile8_wallNr61ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr61ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr61ID.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level08.colliders.Tile8_wallNr61ID.collider:SetHalfLengths(0.3,7.8141,2.06155)
level08.colliders.Tile8_wallNr61ID.collider:SetPos(341,135.756,482.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr61ID.collider, 3)
level08.colliders.Tile8_wallNr62ID = {}
level08.colliders.Tile8_wallNr62ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr62ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr62ID.collider:SetAxes(0.5547, -0, 0.83205, 0, -1, -0, 0.83205, 0, -0.5547)
level08.colliders.Tile8_wallNr62ID.collider:SetHalfLengths(0.3,10.9593,5.40833)
level08.colliders.Tile8_wallNr62ID.collider:SetPos(347.5,132.942,479)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr62ID.collider, 3)
level08.props.Tile8_FenceID = {}
level08.props.Tile8_FenceID.model = Assets.LoadModel('Models/tile8_fence.model')
level08.props.Tile8_FenceID.transformID = Gear.BindStaticInstance(level08.props.Tile8_FenceID.model)
Transform.SetPosition(level08.props.Tile8_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.Tile8_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.Tile8_FenceID.transformID, {x=-0, y=0, z=-0})
level08.props.t8clockID = {}
level08.props.t8clockID.model = Assets.LoadModel('Models/tile8_s5.model')
level08.props.t8clockID.transformID = Gear.BindStaticInstance(level08.props.t8clockID.model)
Transform.SetPosition(level08.props.t8clockID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8clockID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8clockID.transformID, {x=-0, y=0, z=-0})
level08.colliders.Tile8_wallNr7ID = {}
level08.colliders.Tile8_wallNr7ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr7ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr7ID.collider:SetAxes(0.8, 0, -0.6, 0, -1, -0, -0.6, 0, -0.8)
level08.colliders.Tile8_wallNr7ID.collider:SetHalfLengths(0.3,5,2.5)
level08.colliders.Tile8_wallNr7ID.collider:SetPos(284.5,126.815,481)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr7ID.collider, 3)
level08.colliders.Tile8_wallNr8ID = {}
level08.colliders.Tile8_wallNr8ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr8ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr8ID.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level08.colliders.Tile8_wallNr8ID.collider:SetHalfLengths(0.3,5,4.24264)
level08.colliders.Tile8_wallNr8ID.collider:SetPos(280,126.815,476)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr8ID.collider, 3)
level08.colliders.Tile8_wallNr9ID = {}
level08.colliders.Tile8_wallNr9ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr9ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr9ID.collider:SetAxes(0.768221, 0, -0.640184, 0, -1, -0, -0.640184, 0, -0.768221)
level08.colliders.Tile8_wallNr9ID.collider:SetHalfLengths(0.3,5.16553,3.90512)
level08.colliders.Tile8_wallNr9ID.collider:SetPos(274.5,126.815,470)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr9ID.collider, 3)
level08.colliders.Tile8_wallNr10ID = {}
level08.colliders.Tile8_wallNr10ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr10ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr10ID.collider:SetAxes(0.916157, 0, -0.400819, 0, -1, -0, -0.400819, 0, -0.916157)
level08.colliders.Tile8_wallNr10ID.collider:SetHalfLengths(0.3,5.33105,8.73212)
level08.colliders.Tile8_wallNr10ID.collider:SetPos(268.5,126.981,459)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr10ID.collider, 3)
level08.colliders.Tile8_wallNr11ID = {}
level08.colliders.Tile8_wallNr11ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr11ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr11ID.collider:SetAxes(0.992278, 0, -0.124035, 0, -1, -0, -0.124035, 0, -0.992278)
level08.colliders.Tile8_wallNr11ID.collider:SetHalfLengths(0.3,5.33105,8.06226)
level08.colliders.Tile8_wallNr11ID.collider:SetPos(264,127.312,443)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr11ID.collider, 3)
level08.colliders.Tile8_wallNr12ID = {}
level08.colliders.Tile8_wallNr12ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr12ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr12ID.collider:SetAxes(0.984784, -0, 0.173785, 0, -1, -0, 0.173785, 0, -0.984784)
level08.colliders.Tile8_wallNr12ID.collider:SetHalfLengths(0.3,5.16553,8.63134)
level08.colliders.Tile8_wallNr12ID.collider:SetPos(264.5,127.643,426.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr12ID.collider, 3)
level08.colliders.Tile8_wallNr13ID = {}
level08.colliders.Tile8_wallNr13ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr13ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr13ID.collider:SetAxes(0.919145, -0, 0.393919, 0, -1, -0, 0.393919, 0, -0.919145)
level08.colliders.Tile8_wallNr13ID.collider:SetHalfLengths(0.3,5.16553,3.80789)
level08.colliders.Tile8_wallNr13ID.collider:SetPos(267.5,127.808,414.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr13ID.collider, 3)
level08.colliders.Tile8_wallNr14ID = {}
level08.colliders.Tile8_wallNr14ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr14ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr14ID.collider:SetAxes(0.813733, -0, 0.581238, 0, -1, -0, 0.581238, 0, -0.813733)
level08.colliders.Tile8_wallNr14ID.collider:SetHalfLengths(0.3,5.16553,4.30116)
level08.colliders.Tile8_wallNr14ID.collider:SetPos(271.5,127.974,407.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr14ID.collider, 3)
level08.colliders.Tile8_wallNr15ID = {}
level08.colliders.Tile8_wallNr15ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr15ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr15ID.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level08.colliders.Tile8_wallNr15ID.collider:SetHalfLengths(0.3,5,8.07775)
level08.colliders.Tile8_wallNr15ID.collider:SetPos(281.5,128.14,401)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr15ID.collider, 3)
level08.colliders.Tile8_wallNr16ID = {}
level08.colliders.Tile8_wallNr16ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr16ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr16ID.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level08.colliders.Tile8_wallNr16ID.collider:SetHalfLengths(0.3,5,0.5)
level08.colliders.Tile8_wallNr16ID.collider:SetPos(360,126.65,479.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr16ID.collider, 3)
level08.colliders.Tile8_wallNr17ID = {}
level08.colliders.Tile8_wallNr17ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr17ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr17ID.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level08.colliders.Tile8_wallNr17ID.collider:SetHalfLengths(0.3,5.16553,4.24264)
level08.colliders.Tile8_wallNr17ID.collider:SetPos(363,126.65,476)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr17ID.collider, 3)
level08.colliders.Tile8_wallNr18ID = {}
level08.colliders.Tile8_wallNr18ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr18ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr18ID.collider:SetAxes(0.768221, -0, 0.640184, 0, -1, -0, 0.640184, 0, -0.768221)
level08.colliders.Tile8_wallNr18ID.collider:SetHalfLengths(0.3,5.16553,3.90512)
level08.colliders.Tile8_wallNr18ID.collider:SetPos(368.5,126.815,470)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr18ID.collider, 3)
level08.colliders.Tile8_wallNr27ID = {}
level08.colliders.Tile8_wallNr27ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr27ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr27ID.collider:SetAxes(0.916157, -0, 0.400819, 0, -1, -0, 0.400819, 0, -0.916157)
level08.colliders.Tile8_wallNr27ID.collider:SetHalfLengths(0.3,5.16553,8.73212)
level08.colliders.Tile8_wallNr27ID.collider:SetPos(374.5,126.981,459)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr27ID.collider, 3)
level08.colliders.Tile8_wallNr28ID = {}
level08.colliders.Tile8_wallNr28ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr28ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr28ID.collider:SetAxes(0.992278, -0, 0.124035, 0, -1, -0, 0.124035, 0, -0.992278)
level08.colliders.Tile8_wallNr28ID.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.Tile8_wallNr28ID.collider:SetPos(378.5,127.146,447)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr28ID.collider, 3)
level08.colliders.Tile8_wallNr29ID = {}
level08.colliders.Tile8_wallNr29ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr29ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr29ID.collider:SetAxes(0.992278, -0, 0.124035, 0, -1, -0, 0.124035, 0, -0.992278)
level08.colliders.Tile8_wallNr29ID.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.Tile8_wallNr29ID.collider:SetPos(379.5,127.312,439)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr29ID.collider, 3)
level08.colliders.Tile8_wallNr30ID = {}
level08.colliders.Tile8_wallNr30ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr30ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr30ID.collider:SetAxes(0.984784, 0, -0.173785, 0, -1, -0, -0.173785, 0, -0.984784)
level08.colliders.Tile8_wallNr30ID.collider:SetHalfLengths(0.3,5.33105,8.63134)
level08.colliders.Tile8_wallNr30ID.collider:SetPos(378.5,127.477,426.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr30ID.collider, 3)
level08.colliders.Tile8_wallNr31ID = {}
level08.colliders.Tile8_wallNr31ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr31ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr31ID.collider:SetAxes(0.906183, 0, -0.422886, 0, -1, -0, -0.422886, 0, -0.906183)
level08.colliders.Tile8_wallNr31ID.collider:SetHalfLengths(0.3,5.33105,8.27647)
level08.colliders.Tile8_wallNr31ID.collider:SetPos(373.5,127.808,410.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr31ID.collider, 3)
level08.colliders.Tile8_wallNr32ID = {}
level08.colliders.Tile8_wallNr32ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr32ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr32ID.collider:SetAxes(0.773957, 0, -0.633238, 0, -1, -0, -0.633238, 0, -0.773957)
level08.colliders.Tile8_wallNr32ID.collider:SetHalfLengths(0.3,5.16553,7.10634)
level08.colliders.Tile8_wallNr32ID.collider:SetPos(365.5,128.14,397.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr32ID.collider, 3)
level08.colliders.Tile8_wallNr33ID = {}
level08.colliders.Tile8_wallNr33ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr33ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr33ID.collider:SetAxes(-0.668965, 0, -0.743294, -0, -1, 0, -0.743294, 0, 0.668965)
level08.colliders.Tile8_wallNr33ID.collider:SetHalfLengths(0.3,5.16553,6.72681)
level08.colliders.Tile8_wallNr33ID.collider:SetPos(356,128.305,396.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr33ID.collider, 3)
level08.colliders.Tile8_wallNr34ID = {}
level08.colliders.Tile8_wallNr34ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr34ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr34ID.collider:SetAxes(-0.422886, 0, -0.906183, -0, -1, 0, -0.906183, 0, 0.422886)
level08.colliders.Tile8_wallNr34ID.collider:SetHalfLengths(0.3,5.16553,8.27647)
level08.colliders.Tile8_wallNr34ID.collider:SetPos(344.5,126.815,479.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr34ID.collider, 3)
level08.colliders.Tile8_wallNr35ID = {}
level08.colliders.Tile8_wallNr35ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr35ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr35ID.collider:SetAxes(-0.21693, 0, -0.976187, -0, -1, 0, -0.976187, 0, 0.21693)
level08.colliders.Tile8_wallNr35ID.collider:SetHalfLengths(0.3,5,4.60977)
level08.colliders.Tile8_wallNr35ID.collider:SetPos(332.5,126.65,484)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr35ID.collider, 3)
level08.colliders.Tile8_wallNr36ID = {}
level08.colliders.Tile8_wallNr36ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr36ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr36ID.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level08.colliders.Tile8_wallNr36ID.collider:SetHalfLengths(0.3,5,6)
level08.colliders.Tile8_wallNr36ID.collider:SetPos(322,126.65,485)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr36ID.collider, 3)
level08.colliders.Tile8_wallNr37ID = {}
level08.colliders.Tile8_wallNr37ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr37ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr37ID.collider:SetAxes(0.316228, 0, -0.948683, 0, -1, -0, -0.948683, 0, -0.316228)
level08.colliders.Tile8_wallNr37ID.collider:SetHalfLengths(0.3,5.16553,7.90569)
level08.colliders.Tile8_wallNr37ID.collider:SetPos(308.5,126.65,482.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr37ID.collider, 3)
level08.colliders.Tile8_wallNr38ID = {}
level08.colliders.Tile8_wallNr38ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr38ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr38ID.collider:SetAxes(0.406139, 0, -0.913812, 0, -1, -0, -0.913812, 0, -0.406139)
level08.colliders.Tile8_wallNr38ID.collider:SetHalfLengths(0.3,5,4.92443)
level08.colliders.Tile8_wallNr38ID.collider:SetPos(296.5,126.815,478)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr38ID.collider, 3)
end
level08.unload = function()
level08.props.tile8ID = nil
Gear.UnbindInstance(level08.props.t8s1ID.transformID)
Assets.UnloadModel('Models/tile8_s1.model')
level08.props.t8s1ID = nil
Gear.UnbindInstance(level08.props.t8s2ID.transformID)
Assets.UnloadModel('Models/tile8_s2.model')
level08.props.t8s2ID = nil
Gear.UnbindInstance(level08.props.t8s3ID.transformID)
Assets.UnloadModel('Models/tile8_s3.model')
level08.props.t8s3ID = nil
Gear.UnbindInstance(level08.props.t8s4ID.transformID)
Assets.UnloadModel('Models/tile8_s4.model')
level08.props.t8s4ID = nil
Gear.UnbindInstance(level08.props.t8s6ID.transformID)
Assets.UnloadModel('Models/tile8_s6a.model')
level08.props.t8s6ID = nil
Gear.UnbindInstance(level08.props.t8s7ID.transformID)
Assets.UnloadModel('Models/tile8_s7.model')
level08.props.t8s7ID = nil
Gear.UnbindInstance(level08.props.t8s8ID.transformID)
Assets.UnloadModel('Models/tile8_s8a.model')
level08.props.t8s8ID = nil
level08.colliders.Tile8_wallNrID = nil
level08.colliders.Tile8_wallNr1ID = nil
level08.colliders.Tile8_wallNr2ID = nil
level08.colliders.Tile8_wallNr3ID = nil
level08.colliders.Tile8_wallNr4ID = nil
level08.colliders.Tile8_wallNr5ID = nil
level08.colliders.Tile8_wallNr6ID = nil
level08.colliders.Tile8_wallNr19ID = nil
level08.colliders.Tile8_wallNr20ID = nil
level08.colliders.Tile8_wallNr21ID = nil
level08.colliders.Tile8_wallNr22ID = nil
level08.colliders.Tile8_wallNr23ID = nil
level08.colliders.Tile8_wallNr24ID = nil
level08.colliders.Tile8_wallNr25ID = nil
level08.colliders.Tile8_wallNr26ID = nil
level08.colliders.Tile8_wallNr39ID = nil
level08.colliders.Tile8_wallNr40ID = nil
level08.colliders.Tile8_wallNr41ID = nil
level08.colliders.Tile8_wallNr42ID = nil
level08.colliders.Tile8_wallNr43ID = nil
level08.colliders.Tile8_wallNr44ID = nil
level08.colliders.Tile8_wallNr45ID = nil
level08.colliders.Tile8_wallNr46ID = nil
level08.colliders.Tile8_wallNr47ID = nil
level08.colliders.Tile8_wallNr48ID = nil
level08.colliders.Tile8_wallNr49ID = nil
level08.colliders.Tile8_wallNr59ID = nil
level08.colliders.Tile8_wallNr60ID = nil
level08.colliders.Tile8_wallNr61ID = nil
level08.colliders.Tile8_wallNr62ID = nil
Gear.UnbindInstance(level08.props.Tile8_FenceID.transformID)
Assets.UnloadModel('Models/tile8_fence.model')
level08.props.Tile8_FenceID = nil
Gear.UnbindInstance(level08.props.t8clockID.transformID)
Assets.UnloadModel('Models/tile8_s5.model')
level08.props.t8clockID = nil
level08.colliders.Tile8_wallNr7ID = nil
level08.colliders.Tile8_wallNr8ID = nil
level08.colliders.Tile8_wallNr9ID = nil
level08.colliders.Tile8_wallNr10ID = nil
level08.colliders.Tile8_wallNr11ID = nil
level08.colliders.Tile8_wallNr12ID = nil
level08.colliders.Tile8_wallNr13ID = nil
level08.colliders.Tile8_wallNr14ID = nil
level08.colliders.Tile8_wallNr15ID = nil
level08.colliders.Tile8_wallNr16ID = nil
level08.colliders.Tile8_wallNr17ID = nil
level08.colliders.Tile8_wallNr18ID = nil
level08.colliders.Tile8_wallNr27ID = nil
level08.colliders.Tile8_wallNr28ID = nil
level08.colliders.Tile8_wallNr29ID = nil
level08.colliders.Tile8_wallNr30ID = nil
level08.colliders.Tile8_wallNr31ID = nil
level08.colliders.Tile8_wallNr32ID = nil
level08.colliders.Tile8_wallNr33ID = nil
level08.colliders.Tile8_wallNr34ID = nil
level08.colliders.Tile8_wallNr35ID = nil
level08.colliders.Tile8_wallNr36ID = nil
level08.colliders.Tile8_wallNr37ID = nil
level08.colliders.Tile8_wallNr38ID = nil
level08.props = nil
level08.colliders = nil
level08.triggers = nil
level08.enemies = nil
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
