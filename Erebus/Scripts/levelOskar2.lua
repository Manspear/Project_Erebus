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
Heightmap8.asset:SetHeightMultiplier(0.110467)
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
level01.props.tile12ID = {}
level01.props.m15ID = {}
level01.props.m15ID.model = Assets.LoadModel('Models/tile1_m1.model')
level01.props.m15ID.transformID = Gear.BindStaticInstance(level01.props.m15ID.model)
Transform.SetPosition(level01.props.m15ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m15ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m15ID.transformID, {x=0, y=0, z=0})
level01.props.m26ID = {}
level01.props.m26ID.model = Assets.LoadModel('Models/tile1_m2.model')
level01.props.m26ID.transformID = Gear.BindStaticInstance(level01.props.m26ID.model)
Transform.SetPosition(level01.props.m26ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m26ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m26ID.transformID, {x=0, y=0, z=0})
level01.props.m37ID = {}
level01.props.m37ID.model = Assets.LoadModel('Models/tile1_m3.model')
level01.props.m37ID.transformID = Gear.BindStaticInstance(level01.props.m37ID.model)
Transform.SetPosition(level01.props.m37ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m37ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m37ID.transformID, {x=0, y=0, z=0})
level01.props.m48ID = {}
level01.props.m48ID.model = Assets.LoadModel('Models/tile1_m4.model')
level01.props.m48ID.transformID = Gear.BindStaticInstance(level01.props.m48ID.model)
Transform.SetPosition(level01.props.m48ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m48ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m48ID.transformID, {x=0, y=0, z=0})
level01.props.m59ID = {}
level01.props.m59ID.model = Assets.LoadModel('Models/tile1_m5.model')
level01.props.m59ID.transformID = Gear.BindStaticInstance(level01.props.m59ID.model)
Transform.SetPosition(level01.props.m59ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m59ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m59ID.transformID, {x=0, y=0, z=0})
level01.props.m610ID = {}
level01.props.m610ID.model = Assets.LoadModel('Models/tile1_m6.model')
level01.props.m610ID.transformID = Gear.BindStaticInstance(level01.props.m610ID.model)
Transform.SetPosition(level01.props.m610ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m610ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m610ID.transformID, {x=0, y=0, z=0})
level01.props.m711ID = {}
level01.props.m711ID.model = Assets.LoadModel('Models/tile1_m7.model')
level01.props.m711ID.transformID = Gear.BindStaticInstance(level01.props.m711ID.model)
Transform.SetPosition(level01.props.m711ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m711ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m711ID.transformID, {x=0, y=0, z=0})
level01.props.m812ID = {}
level01.props.m812ID.model = Assets.LoadModel('Models/tile1_m8.model')
level01.props.m812ID.transformID = Gear.BindStaticInstance(level01.props.m812ID.model)
Transform.SetPosition(level01.props.m812ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m812ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m812ID.transformID, {x=0, y=0, z=0})
level01.props.s113ID = {}
level01.props.s113ID.model = Assets.LoadModel('Models/tile1_s1.model')
level01.props.s113ID.transformID = Gear.BindStaticInstance(level01.props.s113ID.model)
Transform.SetPosition(level01.props.s113ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s113ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s113ID.transformID, {x=0, y=0, z=0})
level01.props.s214ID = {}
level01.props.s214ID.model = Assets.LoadModel('Models/tile1_s2.model')
level01.props.s214ID.transformID = Gear.BindStaticInstance(level01.props.s214ID.model)
Transform.SetPosition(level01.props.s214ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s214ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s214ID.transformID, {x=0, y=0, z=0})
level01.props.s315ID = {}
level01.props.s315ID.model = Assets.LoadModel('Models/tile1_s3.model')
level01.props.s315ID.transformID = Gear.BindStaticInstance(level01.props.s315ID.model)
Transform.SetPosition(level01.props.s315ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s315ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s315ID.transformID, {x=0, y=0, z=0})
level01.props.s416ID = {}
level01.props.s416ID.model = Assets.LoadModel('Models/tile1_s4.model')
level01.props.s416ID.transformID = Gear.BindStaticInstance(level01.props.s416ID.model)
Transform.SetPosition(level01.props.s416ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s416ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s416ID.transformID, {x=0, y=0, z=0})
level01.props.s517ID = {}
level01.props.s517ID.model = Assets.LoadModel('Models/tile1_s5.model')
level01.props.s517ID.transformID = Gear.BindStaticInstance(level01.props.s517ID.model)
Transform.SetPosition(level01.props.s517ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s517ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s517ID.transformID, {x=0, y=0, z=0})
level01.props.s618ID = {}
level01.props.s618ID.model = Assets.LoadModel('Models/tile1_s6.model')
level01.props.s618ID.transformID = Gear.BindStaticInstance(level01.props.s618ID.model)
Transform.SetPosition(level01.props.s618ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s618ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s618ID.transformID, {x=0, y=0, z=0})
level01.props.s719ID = {}
level01.props.s719ID.model = Assets.LoadModel('Models/tile1_s7.model')
level01.props.s719ID.transformID = Gear.BindStaticInstance(level01.props.s719ID.model)
Transform.SetPosition(level01.props.s719ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s719ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s719ID.transformID, {x=0, y=0, z=0})
level01.colliders.OpWall76ID = {}
level01.colliders.OpWall76ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall76ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall76ID.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.OpWall76ID.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.OpWall76ID.collider:SetPos(6,6.83489,143)
CollisionHandler.AddOBB(level01.colliders.OpWall76ID.collider, 3)
level01.colliders.OpWall177ID = {}
level01.colliders.OpWall177ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall177ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall177ID.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.OpWall177ID.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.OpWall177ID.collider:SetPos(10.5,7.12947,140)
CollisionHandler.AddOBB(level01.colliders.OpWall177ID.collider, 3)
level01.colliders.OpWall278ID = {}
level01.colliders.OpWall278ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall278ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall278ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall278ID.collider:SetHalfLengths(0.3,5,4)
level01.colliders.OpWall278ID.collider:SetPos(17,6.98218,141)
CollisionHandler.AddOBB(level01.colliders.OpWall278ID.collider, 3)
level01.colliders.OpWall379ID = {}
level01.colliders.OpWall379ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall379ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall379ID.collider:SetZAxis(-0.894427,0,-0.447214)
level01.colliders.OpWall379ID.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.OpWall379ID.collider:SetPos(45,8.60238,129.5)
CollisionHandler.AddOBB(level01.colliders.OpWall379ID.collider, 3)
level01.colliders.OpWall480ID = {}
level01.colliders.OpWall480ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall480ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall480ID.collider:SetZAxis(0.503871,0,0.863779)
level01.colliders.OpWall480ID.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.OpWall480ID.collider:SetPos(51.5,8.60238,137)
CollisionHandler.AddOBB(level01.colliders.OpWall480ID.collider, 3)
level01.colliders.OpWall581ID = {}
level01.colliders.OpWall581ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall581ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall581ID.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.OpWall581ID.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.OpWall581ID.collider:SetPos(55.5,9.33883,145.5)
CollisionHandler.AddOBB(level01.colliders.OpWall581ID.collider, 3)
level01.colliders.OpWall682ID = {}
level01.colliders.OpWall682ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall682ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall682ID.collider:SetZAxis(-0.658505,0,0.752577)
level01.colliders.OpWall682ID.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.OpWall682ID.collider:SetPos(52.5,9.33883,152)
CollisionHandler.AddOBB(level01.colliders.OpWall682ID.collider, 3)
level01.colliders.OpWall783ID = {}
level01.colliders.OpWall783ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall783ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall783ID.collider:SetZAxis(-0.980581,0,0.196116)
level01.colliders.OpWall783ID.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.OpWall783ID.collider:SetPos(44,9.48612,157)
CollisionHandler.AddOBB(level01.colliders.OpWall783ID.collider, 3)
level01.colliders.OpWall884ID = {}
level01.colliders.OpWall884ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall884ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall884ID.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.OpWall884ID.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.OpWall884ID.collider:SetPos(35,7.12947,155)
CollisionHandler.AddOBB(level01.colliders.OpWall884ID.collider, 3)
level01.colliders.OpWall985ID = {}
level01.colliders.OpWall985ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall985ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall985ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall985ID.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.OpWall985ID.collider:SetPos(37,7.27676,160)
CollisionHandler.AddOBB(level01.colliders.OpWall985ID.collider, 3)
level01.colliders.OpWall1086ID = {}
level01.colliders.OpWall1086ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1086ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1086ID.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.OpWall1086ID.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.OpWall1086ID.collider:SetPos(39.5,6.98218,163)
CollisionHandler.AddOBB(level01.colliders.OpWall1086ID.collider, 3)
level01.colliders.OpWall1187ID = {}
level01.colliders.OpWall1187ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1187ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1187ID.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.OpWall1187ID.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.OpWall1187ID.collider:SetPos(43.5,7.12947,165)
CollisionHandler.AddOBB(level01.colliders.OpWall1187ID.collider, 3)
level01.colliders.OpWall1288ID = {}
level01.colliders.OpWall1288ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1288ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1288ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall1288ID.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.OpWall1288ID.collider:SetPos(48.5,7.57134,166)
CollisionHandler.AddOBB(level01.colliders.OpWall1288ID.collider, 3)
level01.colliders.OpWall1389ID = {}
level01.colliders.OpWall1389ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1389ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1389ID.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.OpWall1389ID.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.OpWall1389ID.collider:SetPos(54,8.01322,168)
CollisionHandler.AddOBB(level01.colliders.OpWall1389ID.collider, 3)
level01.colliders.OpWall1490ID = {}
level01.colliders.OpWall1490ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1490ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1490ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall1490ID.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.OpWall1490ID.collider:SetPos(57.5,8.01322,171)
CollisionHandler.AddOBB(level01.colliders.OpWall1490ID.collider, 3)
level01.colliders.OpWall1591ID = {}
level01.colliders.OpWall1591ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1591ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1591ID.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.OpWall1591ID.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.OpWall1591ID.collider:SetPos(57,8,176)
CollisionHandler.AddOBB(level01.colliders.OpWall1591ID.collider, 3)
level01.colliders.OpWall1692ID = {}
level01.colliders.OpWall1692ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1692ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1692ID.collider:SetZAxis(-0.640184,0,0.768221)
level01.colliders.OpWall1692ID.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.OpWall1692ID.collider:SetPos(54,8,183)
CollisionHandler.AddOBB(level01.colliders.OpWall1692ID.collider, 3)
level01.colliders.OpWall1793ID = {}
level01.colliders.OpWall1793ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1793ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1793ID.collider:SetZAxis(-0.986394,0,0.164399)
level01.colliders.OpWall1793ID.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.OpWall1793ID.collider:SetPos(49,8.01322,186.5)
CollisionHandler.AddOBB(level01.colliders.OpWall1793ID.collider, 3)
level01.colliders.OpWall1894ID = {}
level01.colliders.OpWall1894ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1894ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1894ID.collider:SetZAxis(-1,0,0)
level01.colliders.OpWall1894ID.collider:SetHalfLengths(0.3,5,2)
level01.colliders.OpWall1894ID.collider:SetPos(44,8.01322,187)
CollisionHandler.AddOBB(level01.colliders.OpWall1894ID.collider, 3)
level01.colliders.OpWall1995ID = {}
level01.colliders.OpWall1995ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall1995ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall1995ID.collider:SetZAxis(-0.8,0,-0.6)
level01.colliders.OpWall1995ID.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.OpWall1995ID.collider:SetPos(40,8.01322,185.5)
CollisionHandler.AddOBB(level01.colliders.OpWall1995ID.collider, 3)
level01.colliders.OpWall2096ID = {}
level01.colliders.OpWall2096ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2096ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2096ID.collider:SetZAxis(-0.447214,0,-0.894427)
level01.colliders.OpWall2096ID.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.OpWall2096ID.collider:SetPos(37,7.71863,182)
CollisionHandler.AddOBB(level01.colliders.OpWall2096ID.collider, 3)
level01.colliders.OpWall2197ID = {}
level01.colliders.OpWall2197ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2197ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2197ID.collider:SetZAxis(-0.274721,0,-0.961524)
level01.colliders.OpWall2197ID.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.OpWall2197ID.collider:SetPos(35,7.12947,176.5)
CollisionHandler.AddOBB(level01.colliders.OpWall2197ID.collider, 3)
level01.colliders.OpWall2298ID = {}
level01.colliders.OpWall2298ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2298ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2298ID.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.OpWall2298ID.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.OpWall2298ID.collider:SetPos(32.5,6.54031,170.5)
CollisionHandler.AddOBB(level01.colliders.OpWall2298ID.collider, 3)
level01.colliders.OpWall2399ID = {}
level01.colliders.OpWall2399ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall2399ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall2399ID.collider:SetZAxis(-1,0,0)
level01.colliders.OpWall2399ID.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.OpWall2399ID.collider:SetPos(29.5,6.54031,168)
CollisionHandler.AddOBB(level01.colliders.OpWall2399ID.collider, 3)
level01.colliders.OpWall24100ID = {}
level01.colliders.OpWall24100ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall24100ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall24100ID.collider:SetZAxis(-0.768221,0,0.640184)
level01.colliders.OpWall24100ID.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.OpWall24100ID.collider:SetPos(25,6.09844,170.5)
CollisionHandler.AddOBB(level01.colliders.OpWall24100ID.collider, 3)
level01.colliders.OpWall25101ID = {}
level01.colliders.OpWall25101ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall25101ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall25101ID.collider:SetZAxis(0,0,1)
level01.colliders.OpWall25101ID.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.OpWall25101ID.collider:SetPos(22,5.80386,174.5)
CollisionHandler.AddOBB(level01.colliders.OpWall25101ID.collider, 3)
level01.colliders.OpWall26102ID = {}
level01.colliders.OpWall26102ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall26102ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall26102ID.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.OpWall26102ID.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.OpWall26102ID.collider:SetPos(23.5,5.80386,179.5)
CollisionHandler.AddOBB(level01.colliders.OpWall26102ID.collider, 3)
level01.colliders.OpWall27103ID = {}
level01.colliders.OpWall27103ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall27103ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall27103ID.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.OpWall27103ID.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.OpWall27103ID.collider:SetPos(32,5.50927,189.5)
CollisionHandler.AddOBB(level01.colliders.OpWall27103ID.collider, 3)
level01.colliders.OpWall28104ID = {}
level01.colliders.OpWall28104ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall28104ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall28104ID.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.OpWall28104ID.collider:SetHalfLengths(0.3,5.14729,1.58114)
level01.colliders.OpWall28104ID.collider:SetPos(37.5,8.16051,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall28104ID.collider, 3)
level01.colliders.OpWall29105ID = {}
level01.colliders.OpWall29105ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall29105ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall29105ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall29105ID.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.OpWall29105ID.collider:SetPos(35.5,8.16051,198)
CollisionHandler.AddOBB(level01.colliders.OpWall29105ID.collider, 3)
level01.colliders.OpWall30106ID = {}
level01.colliders.OpWall30106ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall30106ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall30106ID.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.OpWall30106ID.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.OpWall30106ID.collider:SetPos(42.5,8.3078,200)
CollisionHandler.AddOBB(level01.colliders.OpWall30106ID.collider, 3)
level01.colliders.OpWall31107ID = {}
level01.colliders.OpWall31107ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall31107ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall31107ID.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.OpWall31107ID.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.OpWall31107ID.collider:SetPos(50.5,9.63341,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall31107ID.collider, 3)
level01.colliders.OpWall32108ID = {}
level01.colliders.OpWall32108ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall32108ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall32108ID.collider:SetZAxis(0.8,0,0.6)
level01.colliders.OpWall32108ID.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.OpWall32108ID.collider:SetPos(55,10.3699,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall32108ID.collider, 3)
level01.colliders.OpWall33109ID = {}
level01.colliders.OpWall33109ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall33109ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall33109ID.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.OpWall33109ID.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.OpWall33109ID.collider:SetPos(62,11.4009,208)
CollisionHandler.AddOBB(level01.colliders.OpWall33109ID.collider, 3)
level01.colliders.OpWall34110ID = {}
level01.colliders.OpWall34110ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall34110ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall34110ID.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.OpWall34110ID.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.OpWall34110ID.collider:SetPos(71.5,15.0832,205.5)
CollisionHandler.AddOBB(level01.colliders.OpWall34110ID.collider, 3)
level01.colliders.OpWall35111ID = {}
level01.colliders.OpWall35111ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall35111ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall35111ID.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.OpWall35111ID.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.OpWall35111ID.collider:SetPos(79,18.3236,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall35111ID.collider, 3)
level01.colliders.OpWall36112ID = {}
level01.colliders.OpWall36112ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall36112ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall36112ID.collider:SetZAxis(0.759257,0,-0.650791)
level01.colliders.OpWall36112ID.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.OpWall36112ID.collider:SetPos(85.5,20.091,198)
CollisionHandler.AddOBB(level01.colliders.OpWall36112ID.collider, 3)
level01.colliders.OpWall37113ID = {}
level01.colliders.OpWall37113ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall37113ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall37113ID.collider:SetZAxis(0.923077,0,-0.384615)
level01.colliders.OpWall37113ID.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.OpWall37113ID.collider:SetPos(95,23.1841,192.5)
CollisionHandler.AddOBB(level01.colliders.OpWall37113ID.collider, 3)
level01.colliders.OpWall38114ID = {}
level01.colliders.OpWall38114ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall38114ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall38114ID.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.OpWall38114ID.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.OpWall38114ID.collider:SetPos(105,27.0137,192.5)
CollisionHandler.AddOBB(level01.colliders.OpWall38114ID.collider, 3)
level01.colliders.OpWall39115ID = {}
level01.colliders.OpWall39115ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall39115ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall39115ID.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.OpWall39115ID.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.OpWall39115ID.collider:SetPos(111,30.696,195.5)
CollisionHandler.AddOBB(level01.colliders.OpWall39115ID.collider, 3)
level01.colliders.OpWall40116ID = {}
level01.colliders.OpWall40116ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall40116ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall40116ID.collider:SetZAxis(0.780869,0,0.624695)
level01.colliders.OpWall40116ID.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.OpWall40116ID.collider:SetPos(115.5,31.8743,198)
CollisionHandler.AddOBB(level01.colliders.OpWall40116ID.collider, 3)
level01.colliders.OpWall41117ID = {}
level01.colliders.OpWall41117ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall41117ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall41117ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall41117ID.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.OpWall41117ID.collider:SetPos(121,34.6728,206)
CollisionHandler.AddOBB(level01.colliders.OpWall41117ID.collider, 3)
level01.colliders.OpWall42118ID = {}
level01.colliders.OpWall42118ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall42118ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall42118ID.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.OpWall42118ID.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.OpWall42118ID.collider:SetPos(126,32.9053,211.5)
CollisionHandler.AddOBB(level01.colliders.OpWall42118ID.collider, 3)
level01.colliders.OpWall43119ID = {}
level01.colliders.OpWall43119ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall43119ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall43119ID.collider:SetZAxis(0.406139,0,0.913812)
level01.colliders.OpWall43119ID.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.OpWall43119ID.collider:SetPos(90,21.5639,213.5)
CollisionHandler.AddOBB(level01.colliders.OpWall43119ID.collider, 3)
level01.colliders.OpWall44120ID = {}
level01.colliders.OpWall44120ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall44120ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall44120ID.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.OpWall44120ID.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.OpWall44120ID.collider:SetPos(98,22.4477,219.5)
CollisionHandler.AddOBB(level01.colliders.OpWall44120ID.collider, 3)
level01.colliders.OpWall45121ID = {}
level01.colliders.OpWall45121ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall45121ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall45121ID.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.OpWall45121ID.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.OpWall45121ID.collider:SetPos(105.5,26.8664,222.5)
CollisionHandler.AddOBB(level01.colliders.OpWall45121ID.collider, 3)
level01.colliders.OpWall46122ID = {}
level01.colliders.OpWall46122ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall46122ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall46122ID.collider:SetZAxis(0.913812,0,-0.406139)
level01.colliders.OpWall46122ID.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.OpWall46122ID.collider:SetPos(111.5,28.3393,222)
CollisionHandler.AddOBB(level01.colliders.OpWall46122ID.collider, 3)
level01.colliders.OpWall47123ID = {}
level01.colliders.OpWall47123ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall47123ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall47123ID.collider:SetZAxis(0,0,-1)
level01.colliders.OpWall47123ID.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.OpWall47123ID.collider:SetPos(116,30.9905,217)
CollisionHandler.AddOBB(level01.colliders.OpWall47123ID.collider, 3)
level01.colliders.OpWall48124ID = {}
level01.colliders.OpWall48124ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall48124ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall48124ID.collider:SetZAxis(-0.496139,0,-0.868243)
level01.colliders.OpWall48124ID.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.OpWall48124ID.collider:SetPos(114,36.1457,210.5)
CollisionHandler.AddOBB(level01.colliders.OpWall48124ID.collider, 3)
level01.colliders.OpWall49125ID = {}
level01.colliders.OpWall49125ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall49125ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall49125ID.collider:SetZAxis(-0.780869,0,-0.624695)
level01.colliders.OpWall49125ID.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.OpWall49125ID.collider:SetPos(107,34.6728,203)
CollisionHandler.AddOBB(level01.colliders.OpWall49125ID.collider, 3)
level01.colliders.OpWall50126ID = {}
level01.colliders.OpWall50126ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall50126ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall50126ID.collider:SetZAxis(-1,0,0)
level01.colliders.OpWall50126ID.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.OpWall50126ID.collider:SetPos(101,28.6339,199)
CollisionHandler.AddOBB(level01.colliders.OpWall50126ID.collider, 3)
level01.colliders.OpWall51127ID = {}
level01.colliders.OpWall51127ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall51127ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall51127ID.collider:SetZAxis(-0.819232,0,0.573462)
level01.colliders.OpWall51127ID.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.OpWall51127ID.collider:SetPos(95,27.3083,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall51127ID.collider, 3)
level01.colliders.OpWall52128ID = {}
level01.colliders.OpWall52128ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall52128ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall52128ID.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.OpWall52128ID.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.OpWall52128ID.collider:SetPos(89,22.595,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall52128ID.collider, 3)
level01.colliders.OpWall53129ID = {}
level01.colliders.OpWall53129ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall53129ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall53129ID.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.OpWall53129ID.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.OpWall53129ID.collider:SetPos(4.5,6.83489,147.5)
CollisionHandler.AddOBB(level01.colliders.OpWall53129ID.collider, 3)
level01.colliders.OpWall54130ID = {}
level01.colliders.OpWall54130ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall54130ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall54130ID.collider:SetZAxis(0,0,1)
level01.colliders.OpWall54130ID.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.OpWall54130ID.collider:SetPos(5,6.98218,151.5)
CollisionHandler.AddOBB(level01.colliders.OpWall54130ID.collider, 3)
level01.colliders.OpWall55131ID = {}
level01.colliders.OpWall55131ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall55131ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall55131ID.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.OpWall55131ID.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.OpWall55131ID.collider:SetPos(4.5,7.42405,159)
CollisionHandler.AddOBB(level01.colliders.OpWall55131ID.collider, 3)
level01.colliders.OpWall56132ID = {}
level01.colliders.OpWall56132ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall56132ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall56132ID.collider:SetZAxis(0.6,0,0.8)
level01.colliders.OpWall56132ID.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.OpWall56132ID.collider:SetPos(7,6.54031,167)
CollisionHandler.AddOBB(level01.colliders.OpWall56132ID.collider, 3)
level01.colliders.OpWall57133ID = {}
level01.colliders.OpWall57133ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall57133ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall57133ID.collider:SetZAxis(0,0,1)
level01.colliders.OpWall57133ID.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.OpWall57133ID.collider:SetPos(10,6.24573,173.5)
CollisionHandler.AddOBB(level01.colliders.OpWall57133ID.collider, 3)
level01.colliders.OpWall58134ID = {}
level01.colliders.OpWall58134ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall58134ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall58134ID.collider:SetZAxis(-0.759257,0,0.650791)
level01.colliders.OpWall58134ID.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.OpWall58134ID.collider:SetPos(6.5,5.65657,179)
CollisionHandler.AddOBB(level01.colliders.OpWall58134ID.collider, 3)
level01.colliders.OpWall59135ID = {}
level01.colliders.OpWall59135ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall59135ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall59135ID.collider:SetZAxis(-0.0830455,0,0.996546)
level01.colliders.OpWall59135ID.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.OpWall59135ID.collider:SetPos(2.5,5.36198,188)
CollisionHandler.AddOBB(level01.colliders.OpWall59135ID.collider, 3)
level01.colliders.OpWall60136ID = {}
level01.colliders.OpWall60136ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall60136ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall60136ID.collider:SetZAxis(0.514496,0,0.857493)
level01.colliders.OpWall60136ID.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.OpWall60136ID.collider:SetPos(3.5,4.03637,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall60136ID.collider, 3)
level01.colliders.OpWall61137ID = {}
level01.colliders.OpWall61137ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall61137ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall61137ID.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.OpWall61137ID.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.OpWall61137ID.collider:SetPos(6,3.44721,200.5)
CollisionHandler.AddOBB(level01.colliders.OpWall61137ID.collider, 3)
level01.colliders.OpWall62138ID = {}
level01.colliders.OpWall62138ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall62138ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall62138ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall62138ID.collider:SetHalfLengths(0.3,5.14729,1.11803)
level01.colliders.OpWall62138ID.collider:SetPos(7.5,3.44721,203)
CollisionHandler.AddOBB(level01.colliders.OpWall62138ID.collider, 3)
level01.colliders.OpWall63139ID = {}
level01.colliders.OpWall63139ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall63139ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall63139ID.collider:SetZAxis(0.977802,0,-0.209529)
level01.colliders.OpWall63139ID.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.OpWall63139ID.collider:SetPos(15,3.29992,202.5)
CollisionHandler.AddOBB(level01.colliders.OpWall63139ID.collider, 3)
level01.colliders.OpWall64140ID = {}
level01.colliders.OpWall64140ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall64140ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall64140ID.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.OpWall64140ID.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.OpWall64140ID.collider:SetPos(24.5,3.15263,199.5)
CollisionHandler.AddOBB(level01.colliders.OpWall64140ID.collider, 3)
level01.colliders.OpWall65141ID = {}
level01.colliders.OpWall65141ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall65141ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall65141ID.collider:SetZAxis(0.478852,0,0.877896)
level01.colliders.OpWall65141ID.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.OpWall65141ID.collider:SetPos(23,4.33095,190.5)
CollisionHandler.AddOBB(level01.colliders.OpWall65141ID.collider, 3)
level01.colliders.OpWall66142ID = {}
level01.colliders.OpWall66142ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall66142ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall66142ID.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.OpWall66142ID.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.OpWall66142ID.collider:SetPos(27,5.36198,196.5)
CollisionHandler.AddOBB(level01.colliders.OpWall66142ID.collider, 3)
level01.colliders.OpWall67143ID = {}
level01.colliders.OpWall67143ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall67143ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall67143ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall67143ID.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.OpWall67143ID.collider:SetPos(29,7.71863,197)
CollisionHandler.AddOBB(level01.colliders.OpWall67143ID.collider, 3)
level01.colliders.OpWall68144ID = {}
level01.colliders.OpWall68144ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall68144ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall68144ID.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.OpWall68144ID.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.OpWall68144ID.collider:SetPos(31.5,8.16051,200)
CollisionHandler.AddOBB(level01.colliders.OpWall68144ID.collider, 3)
level01.colliders.OpWall69145ID = {}
level01.colliders.OpWall69145ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall69145ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall69145ID.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.OpWall69145ID.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.OpWall69145ID.collider:SetPos(32.5,8.89696,203.5)
CollisionHandler.AddOBB(level01.colliders.OpWall69145ID.collider, 3)
level01.colliders.OpWall70146ID = {}
level01.colliders.OpWall70146ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall70146ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall70146ID.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.OpWall70146ID.collider:SetHalfLengths(0.3,5.14729,4.30116)
level01.colliders.OpWall70146ID.collider:SetPos(34.5,8.45509,207.5)
CollisionHandler.AddOBB(level01.colliders.OpWall70146ID.collider, 3)
level01.colliders.OpWall71147ID = {}
level01.colliders.OpWall71147ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall71147ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall71147ID.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.OpWall71147ID.collider:SetHalfLengths(0.3,5.73645,4.03113)
level01.colliders.OpWall71147ID.collider:SetPos(40.5,8.60238,213)
CollisionHandler.AddOBB(level01.colliders.OpWall71147ID.collider, 3)
level01.colliders.OpWall72148ID = {}
level01.colliders.OpWall72148ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall72148ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall72148ID.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.OpWall72148ID.collider:SetHalfLengths(0.3,5.58916,7.07107)
level01.colliders.OpWall72148ID.collider:SetPos(51,9.33883,216)
CollisionHandler.AddOBB(level01.colliders.OpWall72148ID.collider, 3)
level01.colliders.OpWall73149ID = {}
level01.colliders.OpWall73149ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall73149ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall73149ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall73149ID.collider:SetHalfLengths(0.3,10.4498,5)
level01.colliders.OpWall73149ID.collider:SetPos(63,8.74967,217)
CollisionHandler.AddOBB(level01.colliders.OpWall73149ID.collider, 3)
level01.colliders.OpWall74150ID = {}
level01.colliders.OpWall74150ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall74150ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall74150ID.collider:SetZAxis(0.871576,0,0.490261)
level01.colliders.OpWall74150ID.collider:SetHalfLengths(0.3,6.4729,9.17878)
level01.colliders.OpWall74150ID.collider:SetPos(76,14.1994,221.5)
CollisionHandler.AddOBB(level01.colliders.OpWall74150ID.collider, 3)
level01.colliders.OpWall75151ID = {}
level01.colliders.OpWall75151ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall75151ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall75151ID.collider:SetZAxis(0.841179,0,0.540758)
level01.colliders.OpWall75151ID.collider:SetHalfLengths(0.3,11.9227,8.32166)
level01.colliders.OpWall75151ID.collider:SetPos(91,15.6723,230.5)
CollisionHandler.AddOBB(level01.colliders.OpWall75151ID.collider, 3)
level01.colliders.OpWall76152ID = {}
level01.colliders.OpWall76152ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall76152ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall76152ID.collider:SetZAxis(0.988372,0,0.152057)
level01.colliders.OpWall76152ID.collider:SetHalfLengths(0.3,10.8916,6.57647)
level01.colliders.OpWall76152ID.collider:SetPos(104.5,22.595,236)
CollisionHandler.AddOBB(level01.colliders.OpWall76152ID.collider, 3)
level01.colliders.OpWall77153ID = {}
level01.colliders.OpWall77153ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall77153ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall77153ID.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.OpWall77153ID.collider:SetHalfLengths(0.3,6.91478,4.47214)
level01.colliders.OpWall77153ID.collider:SetPos(115,28.4866,235)
CollisionHandler.AddOBB(level01.colliders.OpWall77153ID.collider, 3)
level01.colliders.OpWall78154ID = {}
level01.colliders.OpWall78154ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall78154ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall78154ID.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.OpWall78154ID.collider:SetHalfLengths(0.3,6.76749,3.04138)
level01.colliders.OpWall78154ID.collider:SetPos(122,30.4014,233.5)
CollisionHandler.AddOBB(level01.colliders.OpWall78154ID.collider, 3)
level01.colliders.OpWall79155ID = {}
level01.colliders.OpWall79155ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall79155ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall79155ID.collider:SetZAxis(0.0995037,0,-0.995037)
level01.colliders.OpWall79155ID.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.OpWall79155ID.collider:SetPos(125.5,32.1689,229)
CollisionHandler.AddOBB(level01.colliders.OpWall79155ID.collider, 3)
level01.colliders.OpWall80156ID = {}
level01.colliders.OpWall80156ID.collider = OBBCollider.Create(-1)
level01.colliders.OpWall80156ID.collider:SetOffset(0,0,0)
level01.colliders.OpWall80156ID.collider:SetZAxis(1,0,0)
level01.colliders.OpWall80156ID.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.OpWall80156ID.collider:SetPos(127,32.758,224)
CollisionHandler.AddOBB(level01.colliders.OpWall80156ID.collider, 3)
level01.props.Bridge366ID = {}
level01.props.Bridge366ID.model = Assets.LoadModel('Models/bridge.model')
level01.props.Bridge366ID.transformID = Gear.BindStaticInstance(level01.props.Bridge366ID.model)
Transform.SetPosition(level01.props.Bridge366ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.Bridge366ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Bridge366ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider11367ID = {}
level01.props.OakTree_NoCollider11367ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11367ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider11367ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider11367ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider11367ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(level01.props.OakTree_NoCollider11367ID.transformID, {x=0, y=2.76508, z=0})
level01.props.OakTree_NoCollider12368ID = {}
level01.props.OakTree_NoCollider12368ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12368ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider12368ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider12368ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider12368ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(level01.props.OakTree_NoCollider12368ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider13369ID = {}
level01.props.OakTree_NoCollider13369ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13369ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider13369ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider13369ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider13369ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(level01.props.OakTree_NoCollider13369ID.transformID, {x=0, y=2.16382, z=0})
level01.props.OakTree_NoCollider14370ID = {}
level01.props.OakTree_NoCollider14370ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14370ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider14370ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider14370ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider14370ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(level01.props.OakTree_NoCollider14370ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider151371ID = {}
level01.props.OakTree_NoCollider151371ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151371ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider151371ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider151371ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider151371ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(level01.props.OakTree_NoCollider151371ID.transformID, {x=0, y=1.62265, z=0})
level01.props.OakTree_NoCollider16372ID = {}
level01.props.OakTree_NoCollider16372ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16372ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider16372ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider16372ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider16372ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(level01.props.OakTree_NoCollider16372ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider17373ID = {}
level01.props.OakTree_NoCollider17373ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17373ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider17373ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider17373ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider17373ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(level01.props.OakTree_NoCollider17373ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider18374ID = {}
level01.props.OakTree_NoCollider18374ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18374ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider18374ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider18374ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider18374ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(level01.props.OakTree_NoCollider18374ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider19375ID = {}
level01.props.OakTree_NoCollider19375ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19375ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider19375ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider19375ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider19375ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(level01.props.OakTree_NoCollider19375ID.transformID, {x=-0.045381, y=3.70048, z=0.0362335})
level01.props.OakTree_Collider376ID = {}
level01.props.OakTree_Collider376ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider376ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider376ID.model)
Transform.SetPosition(level01.props.OakTree_Collider376ID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider376ID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(level01.props.OakTree_Collider376ID.transformID, {x=0, y=1.7421, z=-0.00619812})
level01.props.OakTree_Collider376ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider376ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider376ID.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
level01.props.OakTree_Collider376ID.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.props.OakTree_Collider376ID.collider:SetPos(39.8641,12.8281,155.087)
CollisionHandler.AddOBB(level01.props.OakTree_Collider376ID.collider, 3)
level01.props.OakTree_Collider1377ID = {}
level01.props.OakTree_Collider1377ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1377ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1377ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1377ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1377ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1377ID.transformID, {x=0, y=0.376574, z=0})
level01.props.OakTree_Collider1377ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider1377ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider1377ID.collider:SetZAxis(0.367737,0,0.92993)
level01.props.OakTree_Collider1377ID.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.props.OakTree_Collider1377ID.collider:SetPos(24,10.8555,139)
CollisionHandler.AddOBB(level01.props.OakTree_Collider1377ID.collider, 3)
level01.props.OakTree_Collider2378ID = {}
level01.props.OakTree_Collider2378ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2378ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2378ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2378ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2378ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2378ID.transformID, {x=0, y=-2.0418, z=0})
level01.props.OakTree_Collider2378ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider2378ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider2378ID.collider:SetZAxis(-0.891114,0,-0.453779)
level01.props.OakTree_Collider2378ID.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.props.OakTree_Collider2378ID.collider:SetPos(6.18867,8.53125,180.735)
CollisionHandler.AddOBB(level01.props.OakTree_Collider2378ID.collider, 3)
level01.props.OakTree_Collider3379ID = {}
level01.props.OakTree_Collider3379ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3379ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3379ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3379ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3379ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3379ID.transformID, {x=0, y=-1.42165, z=0})
level01.props.OakTree_Collider3379ID.collider = OBBCollider.Create(-1)
level01.props.OakTree_Collider3379ID.collider:SetOffset(0,4,0)
level01.props.OakTree_Collider3379ID.collider:SetZAxis(-0.988898,0,0.148599)
level01.props.OakTree_Collider3379ID.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.props.OakTree_Collider3379ID.collider:SetPos(37.7154,11.4688,182.582)
CollisionHandler.AddOBB(level01.props.OakTree_Collider3379ID.collider, 3)
level01.props.PineTree_NoCollider380ID = {}
level01.props.PineTree_NoCollider380ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider380ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider380ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider380ID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider380ID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(level01.props.PineTree_NoCollider380ID.transformID, {x=0.536822, y=0.137189, z=0.401651})
level01.props.PineTree_NoCollider2418ID = {}
level01.props.PineTree_NoCollider2418ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2418ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider2418ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider2418ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider2418ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(level01.props.PineTree_NoCollider2418ID.transformID, {x=0, y=2.5061, z=0})
level01.props.PineTree_NoCollider3419ID = {}
level01.props.PineTree_NoCollider3419ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3419ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider3419ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider3419ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider3419ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(level01.props.PineTree_NoCollider3419ID.transformID, {x=0, y=1.9694, z=0})
level01.props.PineTree_NoCollider4420ID = {}
level01.props.PineTree_NoCollider4420ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4420ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider4420ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider4420ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider4420ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree_NoCollider4420ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree_NoCollider5421ID = {}
level01.props.PineTree_NoCollider5421ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5421ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider5421ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider5421ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider5421ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(level01.props.PineTree_NoCollider5421ID.transformID, {x=0, y=2.83677, z=0})
level01.colliders.Tile1_wallNr432ID = {}
level01.colliders.Tile1_wallNr432ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr432ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr432ID.collider:SetZAxis(-1,0,0)
level01.colliders.Tile1_wallNr432ID.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.Tile1_wallNr432ID.collider:SetPos(36.5,8.3078,128)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr432ID.collider, 3)
level01.colliders.Tile1_wallNr1433ID = {}
level01.colliders.Tile1_wallNr1433ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr1433ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr1433ID.collider:SetZAxis(-0.6,0,0.8)
level01.colliders.Tile1_wallNr1433ID.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.Tile1_wallNr1433ID.collider:SetPos(28,7.86593,132)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr1433ID.collider, 3)
level01.colliders.Tile1_wallNr2434ID = {}
level01.colliders.Tile1_wallNr2434ID.collider = OBBCollider.Create(-1)
level01.colliders.Tile1_wallNr2434ID.collider:SetOffset(0,0,0)
level01.colliders.Tile1_wallNr2434ID.collider:SetZAxis(-0.624695,0,0.780869)
level01.colliders.Tile1_wallNr2434ID.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.Tile1_wallNr2434ID.collider:SetPos(23,7.71863,138.5)
CollisionHandler.AddOBB(level01.colliders.Tile1_wallNr2434ID.collider, 3)
level01.props.Stone2674ID = {}
level01.props.Stone2674ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone2674ID.transformID = Gear.BindStaticInstance(level01.props.Stone2674ID.model)
Transform.SetPosition(level01.props.Stone2674ID.transformID, {x=4.34854, y=7.05469, z=139.31})
Transform.SetScaleNonUniform(level01.props.Stone2674ID.transformID, 2.87522, 2.86321, 2.81752)
Transform.SetRotation(level01.props.Stone2674ID.transformID, {x=-0.0120454, y=-1.17492, z=-0.0422012})
level01.props.Stone2674ID.collider = OBBCollider.Create(-1)
level01.props.Stone2674ID.collider:SetOffset(0.3,0.6,0)
level01.props.Stone2674ID.collider:SetZAxis(-0.921262,0.0509573,0.385591)
level01.props.Stone2674ID.collider:SetHalfLengths(2.87522,1.71793,2.81752)
level01.props.Stone2674ID.collider:SetPos(4.64854,7.65469,139.31)
CollisionHandler.AddOBB(level01.props.Stone2674ID.collider, 3)
level01.props.Stone3675ID = {}
level01.props.Stone3675ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone3675ID.transformID = Gear.BindStaticInstance(level01.props.Stone3675ID.model)
Transform.SetPosition(level01.props.Stone3675ID.transformID, {x=6.41381, y=6.84375, z=142.217})
Transform.SetScaleNonUniform(level01.props.Stone3675ID.transformID, 1.28523, 1.43478, 1.76532)
Transform.SetRotation(level01.props.Stone3675ID.transformID, {x=0, y=0, z=0})
level01.props.Stone3675ID.collider = SphereCollider.Create(-1)
level01.props.Stone3675ID.collider:SetOffset(0,0.2,0)
level01.props.Stone3675ID.collider:SetRadius(1)
level01.props.Stone3675ID.collider:SetPos(6.41381,7.04375,142.217)
CollisionHandler.AddSphere(level01.props.Stone3675ID.collider, 3)
level01.props.Stone1676ID = {}
level01.props.Stone1676ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone1676ID.transformID = Gear.BindStaticInstance(level01.props.Stone1676ID.model)
Transform.SetPosition(level01.props.Stone1676ID.transformID, {x=3.73525, y=6.76953, z=145.076})
Transform.SetScaleNonUniform(level01.props.Stone1676ID.transformID, 1.6774, 1.68557, 1.1635)
Transform.SetRotation(level01.props.Stone1676ID.transformID, {x=0, y=-1.78111, z=0})
level01.props.Stone1676ID.collider = SphereCollider.Create(-1)
level01.props.Stone1676ID.collider:SetOffset(-0.5,0,-0.5)
level01.props.Stone1676ID.collider:SetRadius(2)
level01.props.Stone1676ID.collider:SetPos(3.23525,6.76953,144.576)
CollisionHandler.AddSphere(level01.props.Stone1676ID.collider, 3)
level01.props.Stone31677ID = {}
level01.props.Stone31677ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone31677ID.transformID = Gear.BindStaticInstance(level01.props.Stone31677ID.model)
Transform.SetPosition(level01.props.Stone31677ID.transformID, {x=4.70592, y=6.84375, z=143.694})
Transform.SetScaleNonUniform(level01.props.Stone31677ID.transformID, 1, 2.45793, 1.84109)
Transform.SetRotation(level01.props.Stone31677ID.transformID, {x=0, y=0, z=0})
level01.props.Stone31677ID.collider = SphereCollider.Create(-1)
level01.props.Stone31677ID.collider:SetOffset(0,0.2,0)
level01.props.Stone31677ID.collider:SetRadius(1)
level01.props.Stone31677ID.collider:SetPos(4.70592,7.04375,143.694)
CollisionHandler.AddSphere(level01.props.Stone31677ID.collider, 3)
level01.props.House678ID = {}
level01.props.House678ID.model = Assets.LoadModel('Models/House1.model')
level01.props.House678ID.transformID = Gear.BindStaticInstance(level01.props.House678ID.model)
Transform.SetPosition(level01.props.House678ID.transformID, {x=36.887, y=7.96094, z=130.834})
Transform.SetScaleNonUniform(level01.props.House678ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level01.props.House678ID.transformID, {x=0, y=0, z=0})
level01.props.House678ID.collider = OBBCollider.Create(-1)
level01.props.House678ID.collider:SetOffset(0,3,0)
level01.props.House678ID.collider:SetZAxis(0,0,1)
level01.props.House678ID.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level01.props.House678ID.collider:SetPos(36.887,10.9609,130.834)
CollisionHandler.AddOBB(level01.props.House678ID.collider, 3)
level01.props.Stone11679ID = {}
level01.props.Stone11679ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone11679ID.transformID = Gear.BindStaticInstance(level01.props.Stone11679ID.model)
Transform.SetPosition(level01.props.Stone11679ID.transformID, {x=3.52792, y=3.78483, z=188.422})
Transform.SetScaleNonUniform(level01.props.Stone11679ID.transformID, 1.51213, 1.79035, 1.59059)
Transform.SetRotation(level01.props.Stone11679ID.transformID, {x=0, y=0, z=0})
level01.props.Stone11679ID.collider = SphereCollider.Create(-1)
level01.props.Stone11679ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone11679ID.collider:SetRadius(2)
level01.props.Stone11679ID.collider:SetPos(3.52792,4.28483,189.022)
CollisionHandler.AddSphere(level01.props.Stone11679ID.collider, 3)
level01.props.Stone21680ID = {}
level01.props.Stone21680ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone21680ID.transformID = Gear.BindStaticInstance(level01.props.Stone21680ID.model)
Transform.SetPosition(level01.props.Stone21680ID.transformID, {x=4.952, y=4.125, z=191.432})
Transform.SetScaleNonUniform(level01.props.Stone21680ID.transformID, 1.4564, 1.68508, 1.50235)
Transform.SetRotation(level01.props.Stone21680ID.transformID, {x=0.0164697, y=0, z=0})
level01.props.Stone21680ID.collider = OBBCollider.Create(-1)
level01.props.Stone21680ID.collider:SetOffset(0.3,0.6,0)
level01.props.Stone21680ID.collider:SetZAxis(0,-0.016469,0.999864)
level01.props.Stone21680ID.collider:SetHalfLengths(1.4564,1.01105,1.50235)
level01.props.Stone21680ID.collider:SetPos(5.252,4.725,191.432)
CollisionHandler.AddOBB(level01.props.Stone21680ID.collider, 3)
level01.props.Stone32681ID = {}
level01.props.Stone32681ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone32681ID.transformID = Gear.BindStaticInstance(level01.props.Stone32681ID.model)
Transform.SetPosition(level01.props.Stone32681ID.transformID, {x=5.19985, y=3.98828, z=188.718})
Transform.SetScaleNonUniform(level01.props.Stone32681ID.transformID, 1.25457, 2.0231, 1.39897)
Transform.SetRotation(level01.props.Stone32681ID.transformID, {x=0, y=0, z=0})
level01.props.Stone32681ID.collider = SphereCollider.Create(-1)
level01.props.Stone32681ID.collider:SetOffset(0,0.2,0)
level01.props.Stone32681ID.collider:SetRadius(1)
level01.props.Stone32681ID.collider:SetPos(5.19985,4.18828,188.718)
CollisionHandler.AddSphere(level01.props.Stone32681ID.collider, 3)
level01.props.Stone33682ID = {}
level01.props.Stone33682ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone33682ID.transformID = Gear.BindStaticInstance(level01.props.Stone33682ID.model)
Transform.SetPosition(level01.props.Stone33682ID.transformID, {x=5.32939, y=3.88086, z=193.526})
Transform.SetScaleNonUniform(level01.props.Stone33682ID.transformID, 1.44906, 1.65862, 1.39719)
Transform.SetRotation(level01.props.Stone33682ID.transformID, {x=0, y=0, z=0})
level01.props.Stone33682ID.collider = SphereCollider.Create(-1)
level01.props.Stone33682ID.collider:SetOffset(0,0.2,0)
level01.props.Stone33682ID.collider:SetRadius(1)
level01.props.Stone33682ID.collider:SetPos(5.32939,4.08086,193.526)
CollisionHandler.AddSphere(level01.props.Stone33682ID.collider, 3)
level01.props.Stone34683ID = {}
level01.props.Stone34683ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone34683ID.transformID = Gear.BindStaticInstance(level01.props.Stone34683ID.model)
Transform.SetPosition(level01.props.Stone34683ID.transformID, {x=3.03896, y=3.69922, z=190.737})
Transform.SetScaleNonUniform(level01.props.Stone34683ID.transformID, 2.2204, 5.14281, 2.41628)
Transform.SetRotation(level01.props.Stone34683ID.transformID, {x=0, y=0, z=0})
level01.props.Stone34683ID.collider = SphereCollider.Create(-1)
level01.props.Stone34683ID.collider:SetOffset(0,0.2,0)
level01.props.Stone34683ID.collider:SetRadius(1)
level01.props.Stone34683ID.collider:SetPos(3.03896,3.89922,190.737)
CollisionHandler.AddSphere(level01.props.Stone34683ID.collider, 3)
level01.props.Stone12684ID = {}
level01.props.Stone12684ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone12684ID.transformID = Gear.BindStaticInstance(level01.props.Stone12684ID.model)
Transform.SetPosition(level01.props.Stone12684ID.transformID, {x=3.2186, y=3.70508, z=193.414})
Transform.SetScaleNonUniform(level01.props.Stone12684ID.transformID, 1.01499, 1.34828, 1.3712)
Transform.SetRotation(level01.props.Stone12684ID.transformID, {x=0.0261728, y=-3.50038, z=0.00149078})
level01.props.Stone12684ID.collider = SphereCollider.Create(-1)
level01.props.Stone12684ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone12684ID.collider:SetRadius(2)
level01.props.Stone12684ID.collider:SetPos(3.2186,4.20508,194.014)
CollisionHandler.AddSphere(level01.props.Stone12684ID.collider, 3)
level01.props.Lantern696ID = {}
level01.props.Lantern696ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern696ID.transformID = Gear.BindStaticInstance(level01.props.Lantern696ID.model)
Transform.SetPosition(level01.props.Lantern696ID.transformID, {x=91.1085, y=19.6589, z=229.316})
Transform.SetScaleNonUniform(level01.props.Lantern696ID.transformID, 1.10704, 1.46453, 1.26106)
Transform.SetRotation(level01.props.Lantern696ID.transformID, {x=0, y=4.06324, z=0})
Light.addLight(92.4085, 24.6589, 227.716, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern1697ID = {}
level01.props.Lantern1697ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern1697ID.transformID = Gear.BindStaticInstance(level01.props.Lantern1697ID.model)
Transform.SetPosition(level01.props.Lantern1697ID.transformID, {x=104.807, y=24.2813, z=235.177})
Transform.SetScaleNonUniform(level01.props.Lantern1697ID.transformID, 1, 1.31997, 1.13)
Transform.SetRotation(level01.props.Lantern1697ID.transformID, {x=0, y=-1.60358, z=0})
Light.addLight(104.807, 28.2813, 233.177, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern2698ID = {}
level01.props.Lantern2698ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern2698ID.transformID = Gear.BindStaticInstance(level01.props.Lantern2698ID.model)
Transform.SetPosition(level01.props.Lantern2698ID.transformID, {x=120.768, y=30.5925, z=229.329})
Transform.SetScaleNonUniform(level01.props.Lantern2698ID.transformID, 1.0591, 1.30088, 1.26469)
Transform.SetRotation(level01.props.Lantern2698ID.transformID, {x=0, y=-1.03939, z=0})
Light.addLight(119.768, 34.5925, 227.579, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern3699ID = {}
level01.props.Lantern3699ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern3699ID.transformID = Gear.BindStaticInstance(level01.props.Lantern3699ID.model)
Transform.SetPosition(level01.props.Lantern3699ID.transformID, {x=75.5229, y=16.0708, z=218.97})
Transform.SetScaleNonUniform(level01.props.Lantern3699ID.transformID, 1.05539, 1.31311, 1.34544)
Transform.SetRotation(level01.props.Lantern3699ID.transformID, {x=0, y=-1.90402, z=0})
Light.addLight(76.0229, 20.0708, 216.97, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern5701ID = {}
level01.props.Lantern5701ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern5701ID.transformID = Gear.BindStaticInstance(level01.props.Lantern5701ID.model)
Transform.SetPosition(level01.props.Lantern5701ID.transformID, {x=31.481, y=7.76563, z=137.765})
Transform.SetScaleNonUniform(level01.props.Lantern5701ID.transformID, 0.817026, 0.683302, 0.733902)
Transform.SetRotation(level01.props.Lantern5701ID.transformID, {x=0, y=1.5866, z=0})
Light.addLight(31.481, 9.76563, 139.215, 1, 0.576471, 0.121569, 10,2)
level01.props.Lantern6702ID = {}
level01.props.Lantern6702ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern6702ID.transformID = Gear.BindStaticInstance(level01.props.Lantern6702ID.model)
Transform.SetPosition(level01.props.Lantern6702ID.transformID, {x=19.7806, y=4.85156, z=183.644})
Transform.SetScaleNonUniform(level01.props.Lantern6702ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Lantern6702ID.transformID, {x=0, y=-1.1856, z=0})
Light.addLight(18.9806, 8.60156, 181.844, 1, 0.576471, 0.160784, 10,2)

slussen = {}
slussen.model = Assets.LoadModel('Models/Branch_blocker.model')
slussen.transformID = Gear.BindStaticInstance(slussen.model)
Transform.SetPosition(slussen.transformID, {x =25.0156, y = 8, z = 157.875})

slussen2 = {}
slussen2.transformID = Gear.BindStaticInstance(slussen.model)
Transform.SetPosition(slussen2.transformID, {x =15.0156, y = 3, z = 157.875})

slussCollider1 = {}
slussCollider1.collider = OBBCollider.Create(-1)
slussCollider1.collider:SetOffset(0,0,0)
slussCollider1.collider:SetZAxis(0.0,0,-1)
slussCollider1.collider:SetHalfLengths(0.3,5.66843,5.14782)
slussCollider1.collider:SetPos(25.0156,8,157.875)
CollisionHandler.AddOBB(slussCollider1.collider, 3)

level01.triggers.New435ID = {}
level01.triggers.New435ID.collider = SphereCollider.Create(-1)
level01.triggers.New435ID.collider:SetOffset(0,0,0)
level01.triggers.New435ID.collider:SetRadius(1)
level01.triggers.New435ID.collider:SetPos(20.0156,6.19141,157.875)
sluice1 = CreateSluice(level01.triggers.New435ID.collider, slussen.transformID, slussCollider1, slussen2.transformID)
level01.triggers.New435ID.collider.OnEnter= function(self) SluiceEnter(sluice1) end
level01.triggers.New435ID.collider.OnTriggering = function(self,dt) SluiceUpdate(dt, sluice1) end
level01.triggers.New435ID.collider.OnExit = function(self) SluiceExit(sluice1) end
level01.triggers.New435ID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.New435ID.collider, 4)

end
level01.unload = function()
level01.props.tile12ID = nil
Gear.UnbindInstance(level01.props.m15ID.transformID)
Assets.UnloadModel('Models/tile1_m1.model')
level01.props.m15ID = nil
Gear.UnbindInstance(level01.props.m26ID.transformID)
Assets.UnloadModel('Models/tile1_m2.model')
level01.props.m26ID = nil
Gear.UnbindInstance(level01.props.m37ID.transformID)
Assets.UnloadModel('Models/tile1_m3.model')
level01.props.m37ID = nil
Gear.UnbindInstance(level01.props.m48ID.transformID)
Assets.UnloadModel('Models/tile1_m4.model')
level01.props.m48ID = nil
Gear.UnbindInstance(level01.props.m59ID.transformID)
Assets.UnloadModel('Models/tile1_m5.model')
level01.props.m59ID = nil
Gear.UnbindInstance(level01.props.m610ID.transformID)
Assets.UnloadModel('Models/tile1_m6.model')
level01.props.m610ID = nil
Gear.UnbindInstance(level01.props.m711ID.transformID)
Assets.UnloadModel('Models/tile1_m7.model')
level01.props.m711ID = nil
Gear.UnbindInstance(level01.props.m812ID.transformID)
Assets.UnloadModel('Models/tile1_m8.model')
level01.props.m812ID = nil
Gear.UnbindInstance(level01.props.s113ID.transformID)
Assets.UnloadModel('Models/tile1_s1.model')
level01.props.s113ID = nil
Gear.UnbindInstance(level01.props.s214ID.transformID)
Assets.UnloadModel('Models/tile1_s2.model')
level01.props.s214ID = nil
Gear.UnbindInstance(level01.props.s315ID.transformID)
Assets.UnloadModel('Models/tile1_s3.model')
level01.props.s315ID = nil
Gear.UnbindInstance(level01.props.s416ID.transformID)
Assets.UnloadModel('Models/tile1_s4.model')
level01.props.s416ID = nil
Gear.UnbindInstance(level01.props.s517ID.transformID)
Assets.UnloadModel('Models/tile1_s5.model')
level01.props.s517ID = nil
Gear.UnbindInstance(level01.props.s618ID.transformID)
Assets.UnloadModel('Models/tile1_s6.model')
level01.props.s618ID = nil
Gear.UnbindInstance(level01.props.s719ID.transformID)
Assets.UnloadModel('Models/tile1_s7.model')
level01.props.s719ID = nil
level01.colliders.OpWall76ID = nil
level01.colliders.OpWall177ID = nil
level01.colliders.OpWall278ID = nil
level01.colliders.OpWall379ID = nil
level01.colliders.OpWall480ID = nil
level01.colliders.OpWall581ID = nil
level01.colliders.OpWall682ID = nil
level01.colliders.OpWall783ID = nil
level01.colliders.OpWall884ID = nil
level01.colliders.OpWall985ID = nil
level01.colliders.OpWall1086ID = nil
level01.colliders.OpWall1187ID = nil
level01.colliders.OpWall1288ID = nil
level01.colliders.OpWall1389ID = nil
level01.colliders.OpWall1490ID = nil
level01.colliders.OpWall1591ID = nil
level01.colliders.OpWall1692ID = nil
level01.colliders.OpWall1793ID = nil
level01.colliders.OpWall1894ID = nil
level01.colliders.OpWall1995ID = nil
level01.colliders.OpWall2096ID = nil
level01.colliders.OpWall2197ID = nil
level01.colliders.OpWall2298ID = nil
level01.colliders.OpWall2399ID = nil
level01.colliders.OpWall24100ID = nil
level01.colliders.OpWall25101ID = nil
level01.colliders.OpWall26102ID = nil
level01.colliders.OpWall27103ID = nil
level01.colliders.OpWall28104ID = nil
level01.colliders.OpWall29105ID = nil
level01.colliders.OpWall30106ID = nil
level01.colliders.OpWall31107ID = nil
level01.colliders.OpWall32108ID = nil
level01.colliders.OpWall33109ID = nil
level01.colliders.OpWall34110ID = nil
level01.colliders.OpWall35111ID = nil
level01.colliders.OpWall36112ID = nil
level01.colliders.OpWall37113ID = nil
level01.colliders.OpWall38114ID = nil
level01.colliders.OpWall39115ID = nil
level01.colliders.OpWall40116ID = nil
level01.colliders.OpWall41117ID = nil
level01.colliders.OpWall42118ID = nil
level01.colliders.OpWall43119ID = nil
level01.colliders.OpWall44120ID = nil
level01.colliders.OpWall45121ID = nil
level01.colliders.OpWall46122ID = nil
level01.colliders.OpWall47123ID = nil
level01.colliders.OpWall48124ID = nil
level01.colliders.OpWall49125ID = nil
level01.colliders.OpWall50126ID = nil
level01.colliders.OpWall51127ID = nil
level01.colliders.OpWall52128ID = nil
level01.colliders.OpWall53129ID = nil
level01.colliders.OpWall54130ID = nil
level01.colliders.OpWall55131ID = nil
level01.colliders.OpWall56132ID = nil
level01.colliders.OpWall57133ID = nil
level01.colliders.OpWall58134ID = nil
level01.colliders.OpWall59135ID = nil
level01.colliders.OpWall60136ID = nil
level01.colliders.OpWall61137ID = nil
level01.colliders.OpWall62138ID = nil
level01.colliders.OpWall63139ID = nil
level01.colliders.OpWall64140ID = nil
level01.colliders.OpWall65141ID = nil
level01.colliders.OpWall66142ID = nil
level01.colliders.OpWall67143ID = nil
level01.colliders.OpWall68144ID = nil
level01.colliders.OpWall69145ID = nil
level01.colliders.OpWall70146ID = nil
level01.colliders.OpWall71147ID = nil
level01.colliders.OpWall72148ID = nil
level01.colliders.OpWall73149ID = nil
level01.colliders.OpWall74150ID = nil
level01.colliders.OpWall75151ID = nil
level01.colliders.OpWall76152ID = nil
level01.colliders.OpWall77153ID = nil
level01.colliders.OpWall78154ID = nil
level01.colliders.OpWall79155ID = nil
level01.colliders.OpWall80156ID = nil
Gear.UnbindInstance(level01.props.Bridge366ID.transformID)
Assets.UnloadModel('Models/bridge.model')
level01.props.Bridge366ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider11367ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11367ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider12368ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12368ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider13369ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13369ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider14370ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14370ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider151371ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151371ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider16372ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16372ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider17373ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17373ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider18374ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18374ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider19375ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19375ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider376ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider376ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider1377ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1377ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider2378ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2378ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider3379ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3379ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider380ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider380ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider2418ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2418ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider3419ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3419ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider4420ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4420ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider5421ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5421ID = nil
level01.colliders.Tile1_wallNr432ID = nil
level01.colliders.Tile1_wallNr1433ID = nil
level01.colliders.Tile1_wallNr2434ID = nil
level01.triggers.New435ID = nil
Gear.UnbindInstance(level01.props.Stone2674ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level01.props.Stone2674ID = nil
Gear.UnbindInstance(level01.props.Stone3675ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone3675ID = nil
Gear.UnbindInstance(level01.props.Stone1676ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level01.props.Stone1676ID = nil
Gear.UnbindInstance(level01.props.Stone31677ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone31677ID = nil
Gear.UnbindInstance(level01.props.House678ID.transformID)
Assets.UnloadModel('Models/House1.model')
level01.props.House678ID = nil
Gear.UnbindInstance(level01.props.Stone11679ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level01.props.Stone11679ID = nil
Gear.UnbindInstance(level01.props.Stone21680ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level01.props.Stone21680ID = nil
Gear.UnbindInstance(level01.props.Stone32681ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone32681ID = nil
Gear.UnbindInstance(level01.props.Stone33682ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone33682ID = nil
Gear.UnbindInstance(level01.props.Stone34683ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level01.props.Stone34683ID = nil
Gear.UnbindInstance(level01.props.Stone12684ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level01.props.Stone12684ID = nil
Gear.UnbindInstance(level01.props.Lantern696ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern696ID = nil
Gear.UnbindInstance(level01.props.Lantern1697ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern1697ID = nil
Gear.UnbindInstance(level01.props.Lantern2698ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern2698ID = nil
Gear.UnbindInstance(level01.props.Lantern3699ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern3699ID = nil
Gear.UnbindInstance(level01.props.Lantern5701ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern5701ID = nil
Gear.UnbindInstance(level01.props.Lantern6702ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern6702ID = nil
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
level02.props.tile24ID = {}
level02.props.t2s120ID = {}
level02.props.t2s120ID.model = Assets.LoadModel('Models/tile2_s1.model')
level02.props.t2s120ID.transformID = Gear.BindStaticInstance(level02.props.t2s120ID.model)
Transform.SetPosition(level02.props.t2s120ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s120ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s120ID.transformID, {x=0, y=0, z=0})
level02.props.t2s221ID = {}
level02.props.t2s221ID.model = Assets.LoadModel('Models/tile2_s2.model')
level02.props.t2s221ID.transformID = Gear.BindStaticInstance(level02.props.t2s221ID.model)
Transform.SetPosition(level02.props.t2s221ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s221ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s221ID.transformID, {x=0, y=0, z=0})
level02.props.t2s322ID = {}
level02.props.t2s322ID.model = Assets.LoadModel('Models/tile2_s3.model')
level02.props.t2s322ID.transformID = Gear.BindStaticInstance(level02.props.t2s322ID.model)
Transform.SetPosition(level02.props.t2s322ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s322ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s322ID.transformID, {x=0, y=0, z=0})
level02.props.t2s423ID = {}
level02.props.t2s423ID.model = Assets.LoadModel('Models/tile2_s4.model')
level02.props.t2s423ID.transformID = Gear.BindStaticInstance(level02.props.t2s423ID.model)
Transform.SetPosition(level02.props.t2s423ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s423ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s423ID.transformID, {x=0, y=0, z=0})
level02.props.t2s524ID = {}
level02.props.t2s524ID.model = Assets.LoadModel('Models/tile2_s5.model')
level02.props.t2s524ID.transformID = Gear.BindStaticInstance(level02.props.t2s524ID.model)
Transform.SetPosition(level02.props.t2s524ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s524ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s524ID.transformID, {x=0, y=0, z=0})
level02.props.t2s625ID = {}
level02.props.t2s625ID.model = Assets.LoadModel('Models/tile2_s6.model')
level02.props.t2s625ID.transformID = Gear.BindStaticInstance(level02.props.t2s625ID.model)
Transform.SetPosition(level02.props.t2s625ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s625ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s625ID.transformID, {x=0, y=0, z=0})
level02.props.t2s726ID = {}
level02.props.t2s726ID.model = Assets.LoadModel('Models/tile2_s7.model')
level02.props.t2s726ID.transformID = Gear.BindStaticInstance(level02.props.t2s726ID.model)
Transform.SetPosition(level02.props.t2s726ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s726ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s726ID.transformID, {x=0, y=0, z=0})
level02.props.t2s827ID = {}
level02.props.t2s827ID.model = Assets.LoadModel('Models/tile2_s8.model')
level02.props.t2s827ID.transformID = Gear.BindStaticInstance(level02.props.t2s827ID.model)
Transform.SetPosition(level02.props.t2s827ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s827ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s827ID.transformID, {x=0, y=0, z=0})
level02.props.t2s928ID = {}
level02.props.t2s928ID.model = Assets.LoadModel('Models/tile2_s9.model')
level02.props.t2s928ID.transformID = Gear.BindStaticInstance(level02.props.t2s928ID.model)
Transform.SetPosition(level02.props.t2s928ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s928ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s928ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1231ID = {}
level02.props.t2s1231ID.model = Assets.LoadModel('Models/tile2_s12.model')
level02.props.t2s1231ID.transformID = Gear.BindStaticInstance(level02.props.t2s1231ID.model)
Transform.SetPosition(level02.props.t2s1231ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1231ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1231ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1332ID = {}
level02.props.t2s1332ID.model = Assets.LoadModel('Models/tile2_s13.model')
level02.props.t2s1332ID.transformID = Gear.BindStaticInstance(level02.props.t2s1332ID.model)
Transform.SetPosition(level02.props.t2s1332ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1332ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1332ID.transformID, {x=0, y=0, z=0})
level02.props.t2s1433ID = {}
level02.props.t2s1433ID.model = Assets.LoadModel('Models/tile2_s14.model')
level02.props.t2s1433ID.transformID = Gear.BindStaticInstance(level02.props.t2s1433ID.model)
Transform.SetPosition(level02.props.t2s1433ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1433ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1433ID.transformID, {x=0, y=0, z=0})
level02.colliders.Tile2_wallNr157ID = {}
level02.colliders.Tile2_wallNr157ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr157ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr157ID.collider:SetZAxis(0.874157,0,-0.485643)
level02.colliders.Tile2_wallNr157ID.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.Tile2_wallNr157ID.collider:SetPos(132.5,34.0803,208.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr157ID.collider, 3)
level02.colliders.Tile2_wallNr1158ID = {}
level02.colliders.Tile2_wallNr1158ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr1158ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr1158ID.collider:SetZAxis(0.581238,0,-0.813733)
level02.colliders.Tile2_wallNr1158ID.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.Tile2_wallNr1158ID.collider:SetPos(139.5,34.7488,202.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr1158ID.collider, 3)
level02.colliders.Tile2_wallNr2159ID = {}
level02.colliders.Tile2_wallNr2159ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr2159ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr2159ID.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.Tile2_wallNr2159ID.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.Tile2_wallNr2159ID.collider:SetPos(143,36.9769,195.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr2159ID.collider, 3)
level02.colliders.Tile2_wallNr3160ID = {}
level02.colliders.Tile2_wallNr3160ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr3160ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr3160ID.collider:SetZAxis(-0.141421,0,-0.98995)
level02.colliders.Tile2_wallNr3160ID.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.Tile2_wallNr3160ID.collider:SetPos(143,38.8707,185)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr3160ID.collider, 3)
level02.colliders.Tile2_wallNr4161ID = {}
level02.colliders.Tile2_wallNr4161ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr4161ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr4161ID.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.Tile2_wallNr4161ID.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.Tile2_wallNr4161ID.collider:SetPos(141,40.5418,173)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr4161ID.collider, 3)
level02.colliders.Tile2_wallNr5162ID = {}
level02.colliders.Tile2_wallNr5162ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr5162ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr5162ID.collider:SetZAxis(-0.178885,0,-0.98387)
level02.colliders.Tile2_wallNr5162ID.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.Tile2_wallNr5162ID.collider:SetPos(139,44.2181,162.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr5162ID.collider, 3)
level02.colliders.Tile2_wallNr6163ID = {}
level02.colliders.Tile2_wallNr6163ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr6163ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr6163ID.collider:SetZAxis(0.351123,0,-0.936329)
level02.colliders.Tile2_wallNr6163ID.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.Tile2_wallNr6163ID.collider:SetPos(139.5,48.7857,153)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr6163ID.collider, 3)
level02.colliders.Tile2_wallNr7164ID = {}
level02.colliders.Tile2_wallNr7164ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr7164ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr7164ID.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr7164ID.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.Tile2_wallNr7164ID.collider:SetPos(144.5,50.234,147.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr7164ID.collider, 3)
level02.colliders.Tile2_wallNr8165ID = {}
level02.colliders.Tile2_wallNr8165ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr8165ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr8165ID.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.Tile2_wallNr8165ID.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.Tile2_wallNr8165ID.collider:SetPos(152,50.4568,146.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr8165ID.collider, 3)
level02.colliders.Tile2_wallNr9166ID = {}
level02.colliders.Tile2_wallNr9166ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr9166ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr9166ID.collider:SetZAxis(0.939793,0,0.341743)
level02.colliders.Tile2_wallNr9166ID.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.Tile2_wallNr9166ID.collider:SetPos(161.5,50.234,149)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr9166ID.collider, 3)
level02.colliders.Tile2_wallNr10167ID = {}
level02.colliders.Tile2_wallNr10167ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr10167ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr10167ID.collider:SetZAxis(0.948683,0,0.316228)
level02.colliders.Tile2_wallNr10167ID.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.Tile2_wallNr10167ID.collider:SetPos(170,52.1279,152)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr10167ID.collider, 3)
level02.colliders.Tile2_wallNr11168ID = {}
level02.colliders.Tile2_wallNr11168ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr11168ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr11168ID.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.Tile2_wallNr11168ID.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.Tile2_wallNr11168ID.collider:SetPos(176.5,52.7963,152.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr11168ID.collider, 3)
level02.colliders.Tile2_wallNr12169ID = {}
level02.colliders.Tile2_wallNr12169ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr12169ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr12169ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr12169ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr12169ID.collider:SetPos(182,54.1331,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr12169ID.collider, 3)
level02.colliders.Tile2_wallNr13170ID = {}
level02.colliders.Tile2_wallNr13170ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr13170ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr13170ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr13170ID.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.Tile2_wallNr13170ID.collider:SetPos(184.5,54.8016,147.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr13170ID.collider, 3)
level02.colliders.Tile2_wallNr14171ID = {}
level02.colliders.Tile2_wallNr14171ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr14171ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr14171ID.collider:SetZAxis(0.371391,0,-0.928477)
level02.colliders.Tile2_wallNr14171ID.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.Tile2_wallNr14171ID.collider:SetPos(186,55.5814,143.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr14171ID.collider, 3)
level02.colliders.Tile2_wallNr15172ID = {}
level02.colliders.Tile2_wallNr15172ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr15172ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr15172ID.collider:SetZAxis(0.164399,0,-0.986394)
level02.colliders.Tile2_wallNr15172ID.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.Tile2_wallNr15172ID.collider:SetPos(187.5,55.2472,138)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr15172ID.collider, 3)
level02.colliders.Tile2_wallNr16173ID = {}
level02.colliders.Tile2_wallNr16173ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr16173ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr16173ID.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.Tile2_wallNr16173ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr16173ID.collider:SetPos(187.5,55.2472,133)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr16173ID.collider, 3)
level02.colliders.Tile2_wallNr17174ID = {}
level02.colliders.Tile2_wallNr17174ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr17174ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr17174ID.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.Tile2_wallNr17174ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr17174ID.collider:SetPos(186.5,55.3586,129)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr17174ID.collider, 3)
level02.colliders.Tile2_wallNr18175ID = {}
level02.colliders.Tile2_wallNr18175ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr18175ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr18175ID.collider:SetZAxis(-0.287348,0,-0.957826)
level02.colliders.Tile2_wallNr18175ID.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.Tile2_wallNr18175ID.collider:SetPos(181.5,55.2472,112)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr18175ID.collider, 3)
level02.colliders.Tile2_wallNr19176ID = {}
level02.colliders.Tile2_wallNr19176ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr19176ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr19176ID.collider:SetZAxis(-0.0995037,0,-0.995037)
level02.colliders.Tile2_wallNr19176ID.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.Tile2_wallNr19176ID.collider:SetPos(176.5,56.8068,92)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr19176ID.collider, 3)
level02.colliders.Tile2_wallNr20177ID = {}
level02.colliders.Tile2_wallNr20177ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr20177ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr20177ID.collider:SetZAxis(0.058722,0,-0.998274)
level02.colliders.Tile2_wallNr20177ID.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.Tile2_wallNr20177ID.collider:SetPos(176.5,56.584,78.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr20177ID.collider, 3)
level02.colliders.Tile2_wallNr21178ID = {}
level02.colliders.Tile2_wallNr21178ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr21178ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr21178ID.collider:SetZAxis(0.294086,0,-0.955779)
level02.colliders.Tile2_wallNr21178ID.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.Tile2_wallNr21178ID.collider:SetPos(179,56.2498,63.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr21178ID.collider, 3)
level02.colliders.Tile2_wallNr22179ID = {}
level02.colliders.Tile2_wallNr22179ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr22179ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr22179ID.collider:SetZAxis(0.5547,0,-0.83205)
level02.colliders.Tile2_wallNr22179ID.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.Tile2_wallNr22179ID.collider:SetPos(185,54.5788,51)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr22179ID.collider, 3)
level02.colliders.Tile2_wallNr23180ID = {}
level02.colliders.Tile2_wallNr23180ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr23180ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr23180ID.collider:SetZAxis(0.819232,0,-0.573462)
level02.colliders.Tile2_wallNr23180ID.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.Tile2_wallNr23180ID.collider:SetPos(194,53.5761,41.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr23180ID.collider, 3)
level02.colliders.Tile2_wallNr24181ID = {}
level02.colliders.Tile2_wallNr24181ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr24181ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr24181ID.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.Tile2_wallNr24181ID.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.Tile2_wallNr24181ID.collider:SetPos(202.5,52.9077,36)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr24181ID.collider, 3)
level02.colliders.Tile2_wallNr25182ID = {}
level02.colliders.Tile2_wallNr25182ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr25182ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr25182ID.collider:SetZAxis(0.998618,0,0.0525588)
level02.colliders.Tile2_wallNr25182ID.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.Tile2_wallNr25182ID.collider:SetPos(215.5,52.0165,34.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr25182ID.collider, 3)
level02.colliders.Tile2_wallNr26183ID = {}
level02.colliders.Tile2_wallNr26183ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr26183ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr26183ID.collider:SetZAxis(0.988936,0,0.14834)
level02.colliders.Tile2_wallNr26183ID.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.Tile2_wallNr26183ID.collider:SetPos(235,48.0059,36.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr26183ID.collider, 3)
level02.colliders.Tile2_wallNr27184ID = {}
level02.colliders.Tile2_wallNr27184ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr27184ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr27184ID.collider:SetZAxis(0.900159,0,0.435561)
level02.colliders.Tile2_wallNr27184ID.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.Tile2_wallNr27184ID.collider:SetPos(260.5,45.2208,45.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr27184ID.collider, 3)
level02.colliders.Tile2_wallNr28185ID = {}
level02.colliders.Tile2_wallNr28185ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr28185ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr28185ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr28185ID.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.Tile2_wallNr28185ID.collider:SetPos(283,40.9874,60)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr28185ID.collider, 3)
level02.colliders.Tile2_wallNr29186ID = {}
level02.colliders.Tile2_wallNr29186ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr29186ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr29186ID.collider:SetZAxis(0.620703,0,0.784046)
level02.colliders.Tile2_wallNr29186ID.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.Tile2_wallNr29186ID.collider:SetPos(299.5,41.3216,79)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr29186ID.collider, 3)
level02.colliders.Tile2_wallNr30187ID = {}
level02.colliders.Tile2_wallNr30187ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr30187ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr30187ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr30187ID.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.Tile2_wallNr30187ID.collider:SetPos(312,42.6585,94)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr30187ID.collider, 3)
level02.colliders.Tile2_wallNr31188ID = {}
level02.colliders.Tile2_wallNr31188ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr31188ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr31188ID.collider:SetZAxis(0.624695,0,0.780869)
level02.colliders.Tile2_wallNr31188ID.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.Tile2_wallNr31188ID.collider:SetPos(318,42.1015,102)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr31188ID.collider, 3)
level02.colliders.Tile2_wallNr32189ID = {}
level02.colliders.Tile2_wallNr32189ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr32189ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr32189ID.collider:SetZAxis(0.732794,0,0.680451)
level02.colliders.Tile2_wallNr32189ID.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.Tile2_wallNr32189ID.collider:SetPos(329,37.4225,113.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr32189ID.collider, 3)
level02.colliders.Tile2_wallNr33190ID = {}
level02.colliders.Tile2_wallNr33190ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr33190ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr33190ID.collider:SetZAxis(0.573462,0,0.819232)
level02.colliders.Tile2_wallNr33190ID.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.Tile2_wallNr33190ID.collider:SetPos(343,37.0883,130)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr33190ID.collider, 3)
level02.colliders.Tile2_wallNr34191ID = {}
level02.colliders.Tile2_wallNr34191ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr34191ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr34191ID.collider:SetZAxis(0.847998,0,0.529999)
level02.colliders.Tile2_wallNr34191ID.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.Tile2_wallNr34191ID.collider:SetPos(354,38.8707,142.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr34191ID.collider, 3)
level02.colliders.Tile2_wallNr35192ID = {}
level02.colliders.Tile2_wallNr35192ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr35192ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr35192ID.collider:SetZAxis(0.980581,0,0.196116)
level02.colliders.Tile2_wallNr35192ID.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.Tile2_wallNr35192ID.collider:SetPos(363,38.6479,146)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr35192ID.collider, 3)
level02.colliders.Tile2_wallNr36193ID = {}
level02.colliders.Tile2_wallNr36193ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr36193ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr36193ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr36193ID.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.Tile2_wallNr36193ID.collider:SetPos(372,38.3137,147)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr36193ID.collider, 3)
level02.colliders.Tile2_wallNr37194ID = {}
level02.colliders.Tile2_wallNr37194ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr37194ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr37194ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr37194ID.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.Tile2_wallNr37194ID.collider:SetPos(380,37.1997,147)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr37194ID.collider, 3)
level02.colliders.Tile2_wallNr38195ID = {}
level02.colliders.Tile2_wallNr38195ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr38195ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr38195ID.collider:SetZAxis(0.992278,0,-0.124035)
level02.colliders.Tile2_wallNr38195ID.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.Tile2_wallNr38195ID.collider:SetPos(132,33.8575,223.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr38195ID.collider, 3)
level02.colliders.Tile2_wallNr39196ID = {}
level02.colliders.Tile2_wallNr39196ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr39196ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr39196ID.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.Tile2_wallNr39196ID.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.Tile2_wallNr39196ID.collider:SetPos(138.5,35.5286,222)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr39196ID.collider, 3)
level02.colliders.Tile2_wallNr40197ID = {}
level02.colliders.Tile2_wallNr40197ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr40197ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr40197ID.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.Tile2_wallNr40197ID.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.Tile2_wallNr40197ID.collider:SetPos(143,35.1944,220.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr40197ID.collider, 3)
level02.colliders.Tile2_wallNr41198ID = {}
level02.colliders.Tile2_wallNr41198ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr41198ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr41198ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr41198ID.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.Tile2_wallNr41198ID.collider:SetPos(146.5,35.1944,221.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr41198ID.collider, 3)
level02.colliders.Tile2_wallNr42199ID = {}
level02.colliders.Tile2_wallNr42199ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr42199ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr42199ID.collider:SetZAxis(0.0995037,0,0.995037)
level02.colliders.Tile2_wallNr42199ID.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.Tile2_wallNr42199ID.collider:SetPos(148.5,36.0856,228)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr42199ID.collider, 3)
level02.colliders.Tile2_wallNr43200ID = {}
level02.colliders.Tile2_wallNr43200ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr43200ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr43200ID.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.Tile2_wallNr43200ID.collider:SetHalfLengths(0.3,5.1114,3.53553)
level02.colliders.Tile2_wallNr43200ID.collider:SetPos(149.5,37.0883,236.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr43200ID.collider, 3)
level02.colliders.Tile2_wallNr44201ID = {}
level02.colliders.Tile2_wallNr44201ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr44201ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr44201ID.collider:SetZAxis(0,0,1)
level02.colliders.Tile2_wallNr44201ID.collider:SetHalfLengths(0.3,5,1.5)
level02.colliders.Tile2_wallNr44201ID.collider:SetPos(150,37.1997,241.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr44201ID.collider, 3)
level02.colliders.Tile2_wallNr45202ID = {}
level02.colliders.Tile2_wallNr45202ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr45202ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr45202ID.collider:SetZAxis(0.924678,0,0.38075)
level02.colliders.Tile2_wallNr45202ID.collider:SetHalfLengths(0.3,10.9044,9.19239)
level02.colliders.Tile2_wallNr45202ID.collider:SetPos(158.5,37.1997,246.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr45202ID.collider, 3)
level02.colliders.Tile2_wallNr46203ID = {}
level02.colliders.Tile2_wallNr46203ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr46203ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr46203ID.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.Tile2_wallNr46203ID.collider:SetHalfLengths(0.3,9.01056,6.08276)
level02.colliders.Tile2_wallNr46203ID.collider:SetPos(173,43.1041,251)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr46203ID.collider, 3)
level02.colliders.Tile2_wallNr47204ID = {}
level02.colliders.Tile2_wallNr47204ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr47204ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr47204ID.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr47204ID.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.Tile2_wallNr47204ID.collider:SetPos(182.5,47.1147,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr47204ID.collider, 3)
level02.colliders.Tile2_wallNr48205ID = {}
level02.colliders.Tile2_wallNr48205ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr48205ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr48205ID.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.Tile2_wallNr48205ID.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.Tile2_wallNr48205ID.collider:SetPos(189,50.5682,246.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr48205ID.collider, 3)
level02.colliders.Tile2_wallNr49206ID = {}
level02.colliders.Tile2_wallNr49206ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr49206ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr49206ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr49206ID.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.Tile2_wallNr49206ID.collider:SetPos(194.5,51.4594,244)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr49206ID.collider, 3)
level02.colliders.Tile2_wallNr50207ID = {}
level02.colliders.Tile2_wallNr50207ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr50207ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr50207ID.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.Tile2_wallNr50207ID.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.Tile2_wallNr50207ID.collider:SetPos(200.5,53.2419,244.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr50207ID.collider, 3)
level02.colliders.Tile2_wallNr51208ID = {}
level02.colliders.Tile2_wallNr51208ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr51208ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr51208ID.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.Tile2_wallNr51208ID.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.Tile2_wallNr51208ID.collider:SetPos(207,55.2472,245.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr51208ID.collider, 3)
level02.colliders.Tile2_wallNr52209ID = {}
level02.colliders.Tile2_wallNr52209ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr52209ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr52209ID.collider:SetZAxis(0.928477,0,0.371391)
level02.colliders.Tile2_wallNr52209ID.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.Tile2_wallNr52209ID.collider:SetPos(212.5,56.6954,247)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr52209ID.collider, 3)
level02.colliders.Tile2_wallNr53210ID = {}
level02.colliders.Tile2_wallNr53210ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr53210ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr53210ID.collider:SetZAxis(0.857493,0,0.514496)
level02.colliders.Tile2_wallNr53210ID.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.Tile2_wallNr53210ID.collider:SetPos(217.5,58.9235,249.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr53210ID.collider, 3)
level02.colliders.Tile2_wallNr54211ID = {}
level02.colliders.Tile2_wallNr54211ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr54211ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr54211ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr54211ID.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.Tile2_wallNr54211ID.collider:SetPos(221.5,59.7034,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr54211ID.collider, 3)
level02.colliders.Tile2_wallNr55212ID = {}
level02.colliders.Tile2_wallNr55212ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr55212ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr55212ID.collider:SetZAxis(0.993884,0,-0.110432)
level02.colliders.Tile2_wallNr55212ID.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.Tile2_wallNr55212ID.collider:SetPos(227.5,60.2604,253.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr55212ID.collider, 3)
level02.colliders.Tile2_wallNr56213ID = {}
level02.colliders.Tile2_wallNr56213ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr56213ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr56213ID.collider:SetZAxis(0.976187,0,-0.21693)
level02.colliders.Tile2_wallNr56213ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.Tile2_wallNr56213ID.collider:SetPos(236.5,60.149,252)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr56213ID.collider, 3)
level02.colliders.Tile2_wallNr57214ID = {}
level02.colliders.Tile2_wallNr57214ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr57214ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr57214ID.collider:SetZAxis(0.98387,0,-0.178885)
level02.colliders.Tile2_wallNr57214ID.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.Tile2_wallNr57214ID.collider:SetPos(246.5,60.3718,250)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr57214ID.collider, 3)
level02.colliders.Tile2_wallNr58215ID = {}
level02.colliders.Tile2_wallNr58215ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr58215ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr58215ID.collider:SetZAxis(0.997785,0,0.066519)
level02.colliders.Tile2_wallNr58215ID.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.Tile2_wallNr58215ID.collider:SetPos(259.5,59.9262,249.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr58215ID.collider, 3)
level02.colliders.Tile2_wallNr59216ID = {}
level02.colliders.Tile2_wallNr59216ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr59216ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr59216ID.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.Tile2_wallNr59216ID.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.Tile2_wallNr59216ID.collider:SetPos(274,60.0376,251)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr59216ID.collider, 3)
level02.colliders.Tile2_wallNr60217ID = {}
level02.colliders.Tile2_wallNr60217ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr60217ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr60217ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr60217ID.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.Tile2_wallNr60217ID.collider:SetPos(287.5,59.7034,252)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr60217ID.collider, 3)
level02.colliders.Tile2_wallNr61218ID = {}
level02.colliders.Tile2_wallNr61218ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr61218ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr61218ID.collider:SetZAxis(0.970143,0,0.242536)
level02.colliders.Tile2_wallNr61218ID.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.Tile2_wallNr61218ID.collider:SetPos(296,58.5893,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr61218ID.collider, 3)
level02.colliders.Tile2_wallNr62219ID = {}
level02.colliders.Tile2_wallNr62219ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr62219ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr62219ID.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.Tile2_wallNr62219ID.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.Tile2_wallNr62219ID.collider:SetPos(299,55.1358,254)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr62219ID.collider, 3)
level02.colliders.Tile2_wallNr63220ID = {}
level02.colliders.Tile2_wallNr63220ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr63220ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr63220ID.collider:SetZAxis(1,0,0)
level02.colliders.Tile2_wallNr63220ID.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.Tile2_wallNr63220ID.collider:SetPos(307,55.2472,255)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr63220ID.collider, 3)
level02.colliders.Tile2_wallNr64221ID = {}
level02.colliders.Tile2_wallNr64221ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr64221ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr64221ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr64221ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr64221ID.collider:SetPos(314,51.2366,252.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr64221ID.collider, 3)
level02.colliders.Tile2_wallNr65222ID = {}
level02.colliders.Tile2_wallNr65222ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr65222ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr65222ID.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.Tile2_wallNr65222ID.collider:SetHalfLengths(0.3,5.44562,2.06155)
level02.colliders.Tile2_wallNr65222ID.collider:SetPos(313.5,50.5682,248)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr65222ID.collider, 3)
level02.colliders.Tile2_wallNr87223ID = {}
level02.colliders.Tile2_wallNr87223ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr87223ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr87223ID.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.Tile2_wallNr87223ID.collider:SetHalfLengths(0.3,5.66843,3.53553)
level02.colliders.Tile2_wallNr87223ID.collider:SetPos(234.5,57.1411,234.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr87223ID.collider, 3)
level02.colliders.Tile2_wallNr88224ID = {}
level02.colliders.Tile2_wallNr88224ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr88224ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr88224ID.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.Tile2_wallNr88224ID.collider:SetHalfLengths(0.3,5.22281,3.3541)
level02.colliders.Tile2_wallNr88224ID.collider:SetPos(241,57.8095,233.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr88224ID.collider, 3)
level02.colliders.Tile2_wallNr89225ID = {}
level02.colliders.Tile2_wallNr89225ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr89225ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr89225ID.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.Tile2_wallNr89225ID.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.Tile2_wallNr89225ID.collider:SetPos(247.5,57.5867,231.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr89225ID.collider, 3)
level02.colliders.Tile2_wallNr90226ID = {}
level02.colliders.Tile2_wallNr90226ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr90226ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr90226ID.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.Tile2_wallNr90226ID.collider:SetHalfLengths(0.3,6.00264,8.06226)
level02.colliders.Tile2_wallNr90226ID.collider:SetPos(259,57.8095,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr90226ID.collider, 3)
level02.colliders.Tile2_wallNr91227ID = {}
level02.colliders.Tile2_wallNr91227ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr91227ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr91227ID.collider:SetZAxis(0.998752,0,0.0499376)
level02.colliders.Tile2_wallNr91227ID.collider:SetHalfLengths(0.3,5.77983,10.0125)
level02.colliders.Tile2_wallNr91227ID.collider:SetPos(277,56.8068,233.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr91227ID.collider, 3)
level02.colliders.Tile2_wallNr92228ID = {}
level02.colliders.Tile2_wallNr92228ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr92228ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr92228ID.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.Tile2_wallNr92228ID.collider:SetHalfLengths(0.3,11.2386,8.24621)
level02.colliders.Tile2_wallNr92228ID.collider:SetPos(295,56.027,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr92228ID.collider, 3)
level02.colliders.Tile2_wallNr94229ID = {}
level02.colliders.Tile2_wallNr94229ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr94229ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr94229ID.collider:SetZAxis(-0.56921,0,-0.822192)
level02.colliders.Tile2_wallNr94229ID.collider:SetHalfLengths(0.3,9.12196,7.90569)
level02.colliders.Tile2_wallNr94229ID.collider:SetPos(340.5,55.47,248.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr94229ID.collider, 3)
level02.colliders.Tile2_wallNr95230ID = {}
level02.colliders.Tile2_wallNr95230ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr95230ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr95230ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr95230ID.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.Tile2_wallNr95230ID.collider:SetPos(346.5,55.47,250.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr95230ID.collider, 3)
level02.colliders.Tile2_wallNr96231ID = {}
level02.colliders.Tile2_wallNr96231ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr96231ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr96231ID.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.Tile2_wallNr96231ID.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.Tile2_wallNr96231ID.collider:SetPos(353,57.0297,240.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr96231ID.collider, 3)
level02.colliders.Tile2_wallNr97232ID = {}
level02.colliders.Tile2_wallNr97232ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr97232ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr97232ID.collider:SetZAxis(0.50702,0,-0.861934)
level02.colliders.Tile2_wallNr97232ID.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.Tile2_wallNr97232ID.collider:SetPos(363,53.5761,226.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr97232ID.collider, 3)
level02.colliders.Tile2_wallNr98233ID = {}
level02.colliders.Tile2_wallNr98233ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr98233ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr98233ID.collider:SetZAxis(0.393919,0,-0.919145)
level02.colliders.Tile2_wallNr98233ID.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.Tile2_wallNr98233ID.collider:SetPos(371,48.8971,211)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr98233ID.collider, 3)
level02.colliders.Tile2_wallNr99234ID = {}
level02.colliders.Tile2_wallNr99234ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr99234ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr99234ID.collider:SetZAxis(-0.0333148,0,-0.999445)
level02.colliders.Tile2_wallNr99234ID.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.Tile2_wallNr99234ID.collider:SetPos(373.5,46.4462,189)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr99234ID.collider, 3)
level02.colliders.Tile2_wallNr100235ID = {}
level02.colliders.Tile2_wallNr100235ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr100235ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr100235ID.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.Tile2_wallNr100235ID.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.Tile2_wallNr100235ID.collider:SetPos(374,39.4277,170.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr100235ID.collider, 3)
level02.colliders.Tile2_wallNr101236ID = {}
level02.colliders.Tile2_wallNr101236ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr101236ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr101236ID.collider:SetZAxis(0.485643,0,-0.874157)
level02.colliders.Tile2_wallNr101236ID.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.Tile2_wallNr101236ID.collider:SetPos(377.5,39.9848,162.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr101236ID.collider, 3)
level02.colliders.Tile2_wallNr102237ID = {}
level02.colliders.Tile2_wallNr102237ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr102237ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr102237ID.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.Tile2_wallNr102237ID.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.Tile2_wallNr102237ID.collider:SetPos(382,37.0883,157.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr102237ID.collider, 3)
level02.colliders.Tile2_wallNr66238ID = {}
level02.colliders.Tile2_wallNr66238ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr66238ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr66238ID.collider:SetZAxis(-0.658505,0,-0.752577)
level02.colliders.Tile2_wallNr66238ID.collider:SetHalfLengths(0.3,9.79039,5.31507)
level02.colliders.Tile2_wallNr66238ID.collider:SetPos(220.5,56.3612,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr66238ID.collider, 3)
level02.colliders.Tile2_wallNr67239ID = {}
level02.colliders.Tile2_wallNr67239ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr67239ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr67239ID.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.Tile2_wallNr67239ID.collider:SetHalfLengths(0.3,5.89124,4.74342)
level02.colliders.Tile2_wallNr67239ID.collider:SetPos(212.5,51.5708,223.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr67239ID.collider, 3)
level02.colliders.Tile2_wallNr68240ID = {}
level02.colliders.Tile2_wallNr68240ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr68240ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr68240ID.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.Tile2_wallNr68240ID.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.Tile2_wallNr68240ID.collider:SetPos(205,50.6796,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr68240ID.collider, 3)
level02.colliders.Tile2_wallNr69241ID = {}
level02.colliders.Tile2_wallNr69241ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr69241ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr69241ID.collider:SetZAxis(-0.98995,0,0.141421)
level02.colliders.Tile2_wallNr69241ID.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.Tile2_wallNr69241ID.collider:SetPos(198.5,49.5656,227.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr69241ID.collider, 3)
level02.colliders.Tile2_wallNr70242ID = {}
level02.colliders.Tile2_wallNr70242ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr70242ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr70242ID.collider:SetZAxis(-1,0,0)
level02.colliders.Tile2_wallNr70242ID.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.Tile2_wallNr70242ID.collider:SetPos(191.5,48.3401,228)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr70242ID.collider, 3)
level02.colliders.Tile2_wallNr71243ID = {}
level02.colliders.Tile2_wallNr71243ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr71243ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr71243ID.collider:SetZAxis(-0.913812,0,-0.406139)
level02.colliders.Tile2_wallNr71243ID.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.Tile2_wallNr71243ID.collider:SetPos(183.5,46.8918,226)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr71243ID.collider, 3)
level02.colliders.Tile2_wallNr72244ID = {}
level02.colliders.Tile2_wallNr72244ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr72244ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr72244ID.collider:SetZAxis(-0.371391,0,-0.928477)
level02.colliders.Tile2_wallNr72244ID.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.Tile2_wallNr72244ID.collider:SetPos(178,42.7699,221.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr72244ID.collider, 3)
level02.colliders.Tile2_wallNr73245ID = {}
level02.colliders.Tile2_wallNr73245ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr73245ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr73245ID.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.Tile2_wallNr73245ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.Tile2_wallNr73245ID.collider:SetPos(176.5,41.9901,216.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr73245ID.collider, 3)
level02.colliders.Tile2_wallNr74246ID = {}
level02.colliders.Tile2_wallNr74246ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr74246ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr74246ID.collider:SetZAxis(0.447214,0,-0.894427)
level02.colliders.Tile2_wallNr74246ID.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.Tile2_wallNr74246ID.collider:SetPos(177,41.433,212)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr74246ID.collider, 3)
level02.colliders.Tile2_wallNr75247ID = {}
level02.colliders.Tile2_wallNr75247ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr75247ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr75247ID.collider:SetZAxis(0.857493,0,-0.514496)
level02.colliders.Tile2_wallNr75247ID.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.Tile2_wallNr75247ID.collider:SetPos(180.5,41.6558,208.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr75247ID.collider, 3)
level02.colliders.Tile2_wallNr76248ID = {}
level02.colliders.Tile2_wallNr76248ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr76248ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr76248ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr76248ID.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.Tile2_wallNr76248ID.collider:SetPos(185.5,41.8786,206.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr76248ID.collider, 3)
level02.colliders.Tile2_wallNr77249ID = {}
level02.colliders.Tile2_wallNr77249ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr77249ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr77249ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr77249ID.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.Tile2_wallNr77249ID.collider:SetPos(190.5,41.3216,205.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr77249ID.collider, 3)
level02.colliders.Tile2_wallNr78250ID = {}
level02.colliders.Tile2_wallNr78250ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr78250ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr78250ID.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.Tile2_wallNr78250ID.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.Tile2_wallNr78250ID.collider:SetPos(198,40.6532,203)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr78250ID.collider, 3)
level02.colliders.Tile2_wallNr79251ID = {}
level02.colliders.Tile2_wallNr79251ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr79251ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr79251ID.collider:SetZAxis(0.514496,0,-0.857493)
level02.colliders.Tile2_wallNr79251ID.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.Tile2_wallNr79251ID.collider:SetPos(204.5,39.6506,198.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr79251ID.collider, 3)
level02.colliders.Tile2_wallNr80252ID = {}
level02.colliders.Tile2_wallNr80252ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr80252ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr80252ID.collider:SetZAxis(0.287348,0,-0.957826)
level02.colliders.Tile2_wallNr80252ID.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.Tile2_wallNr80252ID.collider:SetPos(207.5,38.9821,191)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr80252ID.collider, 3)
level02.colliders.Tile2_wallNr81253ID = {}
level02.colliders.Tile2_wallNr81253ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr81253ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr81253ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr81253ID.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.Tile2_wallNr81253ID.collider:SetPos(211,37.7567,184.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr81253ID.collider, 3)
level02.colliders.Tile2_wallNr82254ID = {}
level02.colliders.Tile2_wallNr82254ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr82254ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr82254ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr82254ID.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.Tile2_wallNr82254ID.collider:SetPos(215,36.9769,181.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr82254ID.collider, 3)
level02.colliders.Tile2_wallNr83255ID = {}
level02.colliders.Tile2_wallNr83255ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr83255ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr83255ID.collider:SetZAxis(0.573462,0,-0.819232)
level02.colliders.Tile2_wallNr83255ID.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.Tile2_wallNr83255ID.collider:SetPos(220.5,36.0856,175)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr83255ID.collider, 3)
level02.colliders.Tile2_wallNr84256ID = {}
level02.colliders.Tile2_wallNr84256ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr84256ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr84256ID.collider:SetZAxis(0.813733,0,-0.581238)
level02.colliders.Tile2_wallNr84256ID.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.Tile2_wallNr84256ID.collider:SetPos(227.5,35.64,167.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr84256ID.collider, 3)
level02.colliders.Tile2_wallNr85257ID = {}
level02.colliders.Tile2_wallNr85257ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr85257ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr85257ID.collider:SetZAxis(0.763386,0,-0.645942)
level02.colliders.Tile2_wallNr85257ID.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.Tile2_wallNr85257ID.collider:SetPos(237.5,35.64,159.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr85257ID.collider, 3)
level02.colliders.Tile2_wallNr86258ID = {}
level02.colliders.Tile2_wallNr86258ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr86258ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr86258ID.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr86258ID.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.Tile2_wallNr86258ID.collider:SetPos(249.5,36.0856,148.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr86258ID.collider, 3)
level02.colliders.Tile2_wallNr103259ID = {}
level02.colliders.Tile2_wallNr103259ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr103259ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr103259ID.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr103259ID.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.Tile2_wallNr103259ID.collider:SetPos(258,36.8654,140)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr103259ID.collider, 3)
level02.colliders.Tile2_wallNr104260ID = {}
level02.colliders.Tile2_wallNr104260ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr104260ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr104260ID.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.Tile2_wallNr104260ID.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.Tile2_wallNr104260ID.collider:SetPos(264,37.3111,134.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr104260ID.collider, 3)
level02.colliders.Tile2_wallNr105261ID = {}
level02.colliders.Tile2_wallNr105261ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr105261ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr105261ID.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.Tile2_wallNr105261ID.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.Tile2_wallNr105261ID.collider:SetPos(269,37.4225,131)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr105261ID.collider, 3)
level02.colliders.Tile2_wallNr106262ID = {}
level02.colliders.Tile2_wallNr106262ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr106262ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr106262ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr106262ID.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.Tile2_wallNr106262ID.collider:SetPos(273.5,37.3111,129.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr106262ID.collider, 3)
level02.colliders.Tile2_wallNr107263ID = {}
level02.colliders.Tile2_wallNr107263ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr107263ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr107263ID.collider:SetZAxis(0.995893,0,-0.0905357)
level02.colliders.Tile2_wallNr107263ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.Tile2_wallNr107263ID.collider:SetPos(281.5,37.5339,128.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr107263ID.collider, 3)
level02.colliders.Tile2_wallNr108264ID = {}
level02.colliders.Tile2_wallNr108264ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr108264ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr108264ID.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.Tile2_wallNr108264ID.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.Tile2_wallNr108264ID.collider:SetPos(293,37.1997,129)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr108264ID.collider, 3)
level02.colliders.Tile2_wallNr109265ID = {}
level02.colliders.Tile2_wallNr109265ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr109265ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr109265ID.collider:SetZAxis(0.961524,0,0.274721)
level02.colliders.Tile2_wallNr109265ID.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.Tile2_wallNr109265ID.collider:SetPos(306,36.3084,132)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr109265ID.collider, 3)
level02.colliders.Tile2_wallNr110266ID = {}
level02.colliders.Tile2_wallNr110266ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr110266ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr110266ID.collider:SetZAxis(0.682318,0,-0.731055)
level02.colliders.Tile2_wallNr110266ID.collider:SetHalfLengths(0.3,12.0185,10.2591)
level02.colliders.Tile2_wallNr110266ID.collider:SetPos(339,48.1173,215.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr110266ID.collider, 3)
level02.colliders.Tile2_wallNr111267ID = {}
level02.colliders.Tile2_wallNr111267ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr111267ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr111267ID.collider:SetZAxis(0.406139,0,-0.913812)
level02.colliders.Tile2_wallNr111267ID.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.Tile2_wallNr111267ID.collider:SetPos(348,41.0988,203.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr111267ID.collider, 3)
level02.colliders.Tile2_wallNr112268ID = {}
level02.colliders.Tile2_wallNr112268ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr112268ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr112268ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr112268ID.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.Tile2_wallNr112268ID.collider:SetPos(350,39.4277,194)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr112268ID.collider, 3)
level02.colliders.Tile2_wallNr113269ID = {}
level02.colliders.Tile2_wallNr113269ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr113269ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr113269ID.collider:SetZAxis(0.263117,0,-0.964764)
level02.colliders.Tile2_wallNr113269ID.collider:SetHalfLengths(0.3,6.22545,5.70088)
level02.colliders.Tile2_wallNr113269ID.collider:SetPos(351.5,38.3137,183.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr113269ID.collider, 3)
level02.colliders.Tile2_wallNr114270ID = {}
level02.colliders.Tile2_wallNr114270ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr114270ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr114270ID.collider:SetZAxis(-0.514496,0,-0.857493)
level02.colliders.Tile2_wallNr114270ID.collider:SetHalfLengths(0.3,5.89124,5.83095)
level02.colliders.Tile2_wallNr114270ID.collider:SetPos(350,37.0883,173)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr114270ID.collider, 3)
level02.colliders.Tile2_wallNr115271ID = {}
level02.colliders.Tile2_wallNr115271ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr115271ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr115271ID.collider:SetZAxis(-0.734803,0,-0.67828)
level02.colliders.Tile2_wallNr115271ID.collider:SetHalfLengths(0.3,5.55702,8.8459)
level02.colliders.Tile2_wallNr115271ID.collider:SetPos(340.5,36.197,162)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr115271ID.collider, 3)
level02.colliders.Tile2_wallNr116272ID = {}
level02.colliders.Tile2_wallNr116272ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr116272ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr116272ID.collider:SetZAxis(-0.524097,0,-0.851658)
level02.colliders.Tile2_wallNr116272ID.collider:SetHalfLengths(0.3,5.89124,7.63217)
level02.colliders.Tile2_wallNr116272ID.collider:SetPos(330,35.64,149.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr116272ID.collider, 3)
level02.colliders.Tile2_wallNr117273ID = {}
level02.colliders.Tile2_wallNr117273ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr117273ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr117273ID.collider:SetZAxis(-0.822192,0,-0.56921)
level02.colliders.Tile2_wallNr117273ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.Tile2_wallNr117273ID.collider:SetPos(319.5,34.7488,138.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr117273ID.collider, 3)
level02.colliders.Tile2_wallNr118274ID = {}
level02.colliders.Tile2_wallNr118274ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr118274ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr118274ID.collider:SetZAxis(-0.654931,0,-0.755689)
level02.colliders.Tile2_wallNr118274ID.collider:SetHalfLengths(0.3,6.33685,9.92472)
level02.colliders.Tile2_wallNr118274ID.collider:SetPos(291.5,38.2023,98.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr118274ID.collider, 3)
level02.colliders.Tile2_wallNr119275ID = {}
level02.colliders.Tile2_wallNr119275ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr119275ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr119275ID.collider:SetZAxis(-0.629198,0,-0.777245)
level02.colliders.Tile2_wallNr119275ID.collider:SetHalfLengths(0.3,5.77983,13.5093)
level02.colliders.Tile2_wallNr119275ID.collider:SetPos(276.5,39.5392,80.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr119275ID.collider, 3)
level02.colliders.Tile2_wallNr120276ID = {}
level02.colliders.Tile2_wallNr120276ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr120276ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr120276ID.collider:SetZAxis(-0.792624,0,-0.609711)
level02.colliders.Tile2_wallNr120276ID.collider:SetHalfLengths(0.3,7.22809,8.20061)
level02.colliders.Tile2_wallNr120276ID.collider:SetPos(261.5,38.7593,65)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr120276ID.collider, 3)
level02.colliders.Tile2_wallNr121277ID = {}
level02.colliders.Tile2_wallNr121277ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr121277ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr121277ID.collider:SetZAxis(-0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr121277ID.collider:SetHalfLengths(0.3,9.01056,7.61577)
level02.colliders.Tile2_wallNr121277ID.collider:SetPos(248,40.9874,57)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr121277ID.collider, 3)
level02.colliders.Tile2_wallNr122278ID = {}
level02.colliders.Tile2_wallNr122278ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr122278ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr122278ID.collider:SetZAxis(-0.948683,0,-0.316228)
level02.colliders.Tile2_wallNr122278ID.collider:SetHalfLengths(0.3,8.45354,7.90569)
level02.colliders.Tile2_wallNr122278ID.collider:SetPos(233.5,44.998,51.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr122278ID.collider, 3)
level02.colliders.Tile2_wallNr123279ID = {}
level02.colliders.Tile2_wallNr123279ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr123279ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr123279ID.collider:SetZAxis(-0.993884,0,-0.110432)
level02.colliders.Tile2_wallNr123279ID.collider:SetHalfLengths(0.3,7.00528,4.52769)
level02.colliders.Tile2_wallNr123279ID.collider:SetPos(221.5,48.4515,48.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr123279ID.collider, 3)
level02.colliders.Tile2_wallNr124280ID = {}
level02.colliders.Tile2_wallNr124280ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr124280ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr124280ID.collider:SetZAxis(-0.992278,0,0.124035)
level02.colliders.Tile2_wallNr124280ID.collider:SetHalfLengths(0.3,6.78247,4.03113)
level02.colliders.Tile2_wallNr124280ID.collider:SetPos(213,50.4568,48.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr124280ID.collider, 3)
level02.colliders.Tile2_wallNr125281ID = {}
level02.colliders.Tile2_wallNr125281ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr125281ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr125281ID.collider:SetZAxis(-0.83205,0,0.5547)
level02.colliders.Tile2_wallNr125281ID.collider:SetHalfLengths(0.3,6.44826,5.40833)
level02.colliders.Tile2_wallNr125281ID.collider:SetPos(204.5,52.2393,52)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr125281ID.collider, 3)
level02.colliders.Tile2_wallNr126282ID = {}
level02.colliders.Tile2_wallNr126282ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr126282ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr126282ID.collider:SetZAxis(-0.5547,0,0.83205)
level02.colliders.Tile2_wallNr126282ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.Tile2_wallNr126282ID.collider:SetPos(197,53.6875,59.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr126282ID.collider, 3)
level02.colliders.Tile2_wallNr127283ID = {}
level02.colliders.Tile2_wallNr127283ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr127283ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr127283ID.collider:SetZAxis(-0.0766965,0,0.997055)
level02.colliders.Tile2_wallNr127283ID.collider:SetHalfLengths(0.3,6.00264,6.5192)
level02.colliders.Tile2_wallNr127283ID.collider:SetPos(193.5,54.5788,70.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr127283ID.collider, 3)
level02.colliders.Tile2_wallNr128284ID = {}
level02.colliders.Tile2_wallNr128284ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr128284ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr128284ID.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.Tile2_wallNr128284ID.collider:SetHalfLengths(0.3,6.00264,7.07107)
level02.colliders.Tile2_wallNr128284ID.collider:SetPos(194,55.5814,84)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr128284ID.collider, 3)
level02.colliders.Tile2_wallNr129285ID = {}
level02.colliders.Tile2_wallNr129285ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr129285ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr129285ID.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.Tile2_wallNr129285ID.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.Tile2_wallNr129285ID.collider:SetPos(197.5,56.584,98.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr129285ID.collider, 3)
level02.colliders.Tile2_wallNr130286ID = {}
level02.colliders.Tile2_wallNr130286ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr130286ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr130286ID.collider:SetZAxis(0.231621,0,0.972806)
level02.colliders.Tile2_wallNr130286ID.collider:SetHalfLengths(0.3,5.89124,10.7935)
level02.colliders.Tile2_wallNr130286ID.collider:SetPos(202.5,56.027,116.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr130286ID.collider, 3)
level02.colliders.Tile2_wallNr131287ID = {}
level02.colliders.Tile2_wallNr131287ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr131287ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr131287ID.collider:SetZAxis(0.0905357,0,0.995893)
level02.colliders.Tile2_wallNr131287ID.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.Tile2_wallNr131287ID.collider:SetPos(205.5,55.1358,132.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr131287ID.collider, 3)
level02.colliders.Tile2_wallNr132288ID = {}
level02.colliders.Tile2_wallNr132288ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr132288ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr132288ID.collider:SetZAxis(0.0905357,0,0.995893)
level02.colliders.Tile2_wallNr132288ID.collider:SetHalfLengths(0.3,5.22281,5.52268)
level02.colliders.Tile2_wallNr132288ID.collider:SetPos(206.5,55.47,143.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr132288ID.collider, 3)
level02.colliders.Tile2_wallNr133289ID = {}
level02.colliders.Tile2_wallNr133289ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr133289ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr133289ID.collider:SetZAxis(-0.371391,0,0.928477)
level02.colliders.Tile2_wallNr133289ID.collider:SetHalfLengths(0.3,5.22281,5.38516)
level02.colliders.Tile2_wallNr133289ID.collider:SetPos(205,55.2472,154)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr133289ID.collider, 3)
level02.colliders.Tile2_wallNr134290ID = {}
level02.colliders.Tile2_wallNr134290ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr134290ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr134290ID.collider:SetZAxis(-0.707107,0,0.707107)
level02.colliders.Tile2_wallNr134290ID.collider:SetHalfLengths(0.3,5.77983,6.36396)
level02.colliders.Tile2_wallNr134290ID.collider:SetPos(198.5,55.0244,163.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr134290ID.collider, 3)
level02.colliders.Tile2_wallNr135291ID = {}
level02.colliders.Tile2_wallNr135291ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr135291ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr135291ID.collider:SetZAxis(-0.976187,0,0.21693)
level02.colliders.Tile2_wallNr135291ID.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.Tile2_wallNr135291ID.collider:SetPos(189.5,55.8042,169)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr135291ID.collider, 3)
level02.colliders.Tile2_wallNr136292ID = {}
level02.colliders.Tile2_wallNr136292ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr136292ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr136292ID.collider:SetZAxis(-0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr136292ID.collider:SetHalfLengths(0.3,5.44562,5.09902)
level02.colliders.Tile2_wallNr136292ID.collider:SetPos(180,56.027,169)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr136292ID.collider, 3)
level02.colliders.Tile2_wallNr137293ID = {}
level02.colliders.Tile2_wallNr137293ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr137293ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr137293ID.collider:SetZAxis(-0.874157,0,-0.485643)
level02.colliders.Tile2_wallNr137293ID.collider:SetHalfLengths(0.3,6.44826,5.14782)
level02.colliders.Tile2_wallNr137293ID.collider:SetPos(170.5,55.5814,165.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr137293ID.collider, 3)
level02.colliders.Tile2_wallNr138294ID = {}
level02.colliders.Tile2_wallNr138294ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr138294ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr138294ID.collider:SetZAxis(-0.910366,0,-0.413803)
level02.colliders.Tile2_wallNr138294ID.collider:SetHalfLengths(0.3,8.56494,6.04152)
level02.colliders.Tile2_wallNr138294ID.collider:SetPos(160.5,54.1331,160.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr138294ID.collider, 3)
level02.colliders.Tile2_wallNr139295ID = {}
level02.colliders.Tile2_wallNr139295ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr139295ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr139295ID.collider:SetZAxis(-0.393919,0,0.919145)
level02.colliders.Tile2_wallNr139295ID.collider:SetHalfLengths(0.3,6.67107,3.80789)
level02.colliders.Tile2_wallNr139295ID.collider:SetPos(153.5,50.5682,161.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr139295ID.collider, 3)
level02.colliders.Tile2_wallNr140296ID = {}
level02.colliders.Tile2_wallNr140296ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr140296ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr140296ID.collider:SetZAxis(0.658505,0,0.752577)
level02.colliders.Tile2_wallNr140296ID.collider:SetHalfLengths(0.3,5.44561,5.31507)
level02.colliders.Tile2_wallNr140296ID.collider:SetPos(155.5,48.8971,169)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr140296ID.collider, 3)
level02.colliders.Tile2_wallNr141297ID = {}
level02.colliders.Tile2_wallNr141297ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr141297ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr141297ID.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.Tile2_wallNr141297ID.collider:SetHalfLengths(0.3,9.7904,6.32456)
level02.colliders.Tile2_wallNr141297ID.collider:SetPos(161,48.4515,179)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr141297ID.collider, 3)
level02.colliders.Tile2_wallNr142298ID = {}
level02.colliders.Tile2_wallNr142298ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr142298ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr142298ID.collider:SetZAxis(0,0,1)
level02.colliders.Tile2_wallNr142298ID.collider:SetHalfLengths(0.3,8.34213,9.5)
level02.colliders.Tile2_wallNr142298ID.collider:SetPos(163,43.6611,194.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr142298ID.collider, 3)
level02.colliders.Tile2_wallNr143299ID = {}
level02.colliders.Tile2_wallNr143299ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr143299ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr143299ID.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.Tile2_wallNr143299ID.collider:SetHalfLengths(0.3,7.5623,8.06226)
level02.colliders.Tile2_wallNr143299ID.collider:SetPos(170,40.319,200)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr143299ID.collider, 3)
level02.colliders.Tile2_wallNr144300ID = {}
level02.colliders.Tile2_wallNr144300ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr144300ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr144300ID.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.Tile2_wallNr144300ID.collider:SetHalfLengths(0.3,5.22281,7.61577)
level02.colliders.Tile2_wallNr144300ID.collider:SetPos(184,42.8813,193)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr144300ID.collider, 3)
level02.colliders.Tile2_wallNr145301ID = {}
level02.colliders.Tile2_wallNr145301ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr145301ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr145301ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr145301ID.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.Tile2_wallNr145301ID.collider:SetPos(192.5,42.6585,185.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr145301ID.collider, 3)
level02.colliders.Tile2_wallNr146302ID = {}
level02.colliders.Tile2_wallNr146302ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr146302ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr146302ID.collider:SetZAxis(0.841179,0,-0.540758)
level02.colliders.Tile2_wallNr146302ID.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.Tile2_wallNr146302ID.collider:SetPos(201,40.319,176.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr146302ID.collider, 3)
level02.colliders.Tile2_wallNr147303ID = {}
level02.colliders.Tile2_wallNr147303ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr147303ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr147303ID.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.Tile2_wallNr147303ID.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.Tile2_wallNr147303ID.collider:SetPos(213,39.3163,166.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr147303ID.collider, 3)
level02.colliders.Tile2_wallNr148304ID = {}
level02.colliders.Tile2_wallNr148304ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr148304ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr148304ID.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.Tile2_wallNr148304ID.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.Tile2_wallNr148304ID.collider:SetPos(219,36.4198,158)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr148304ID.collider, 3)
level02.colliders.Tile2_wallNr149305ID = {}
level02.colliders.Tile2_wallNr149305ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr149305ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr149305ID.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.Tile2_wallNr149305ID.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.Tile2_wallNr149305ID.collider:SetPos(222,36.5312,153.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr149305ID.collider, 3)
level02.colliders.Tile2_wallNr150306ID = {}
level02.colliders.Tile2_wallNr150306ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr150306ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr150306ID.collider:SetZAxis(0.948683,0,-0.316228)
level02.colliders.Tile2_wallNr150306ID.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.Tile2_wallNr150306ID.collider:SetPos(228.5,36.6426,150.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr150306ID.collider, 3)
level02.colliders.Tile2_wallNr151307ID = {}
level02.colliders.Tile2_wallNr151307ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr151307ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr151307ID.collider:SetZAxis(0.658505,0,-0.752577)
level02.colliders.Tile2_wallNr151307ID.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.Tile2_wallNr151307ID.collider:SetPos(236.5,36.5312,145)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr151307ID.collider, 3)
level02.colliders.Tile2_wallNr152308ID = {}
level02.colliders.Tile2_wallNr152308ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr152308ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr152308ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr152308ID.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.Tile2_wallNr152308ID.collider:SetPos(240,36.754,139)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr152308ID.collider, 3)
level02.colliders.Tile2_wallNr153309ID = {}
level02.colliders.Tile2_wallNr153309ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr153309ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr153309ID.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr153309ID.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.Tile2_wallNr153309ID.collider:SetPos(238,37.3111,135)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr153309ID.collider, 3)
level02.colliders.Tile2_wallNr154310ID = {}
level02.colliders.Tile2_wallNr154310ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr154310ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr154310ID.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.Tile2_wallNr154310ID.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.Tile2_wallNr154310ID.collider:SetPos(221,36.6426,148)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr154310ID.collider, 3)
level02.colliders.Tile2_wallNr155311ID = {}
level02.colliders.Tile2_wallNr155311ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr155311ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr155311ID.collider:SetZAxis(-0.209529,0,-0.977802)
level02.colliders.Tile2_wallNr155311ID.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.Tile2_wallNr155311ID.collider:SetPos(218.5,38.9821,136)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr155311ID.collider, 3)
level02.colliders.Tile2_wallNr156312ID = {}
level02.colliders.Tile2_wallNr156312ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr156312ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr156312ID.collider:SetZAxis(0.83205,0,-0.5547)
level02.colliders.Tile2_wallNr156312ID.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.Tile2_wallNr156312ID.collider:SetPos(221.5,41.3216,126)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr156312ID.collider, 3)
level02.colliders.Tile2_wallNr157313ID = {}
level02.colliders.Tile2_wallNr157313ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr157313ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr157313ID.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.Tile2_wallNr157313ID.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.Tile2_wallNr157313ID.collider:SetPos(231,42.2129,122)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr157313ID.collider, 3)
level02.colliders.Tile2_wallNr158314ID = {}
level02.colliders.Tile2_wallNr158314ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr158314ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr158314ID.collider:SetZAxis(0.863779,0,0.503871)
level02.colliders.Tile2_wallNr158314ID.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.Tile2_wallNr158314ID.collider:SetPos(242,40.0962,124.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr158314ID.collider, 3)
level02.colliders.Tile2_wallNr159315ID = {}
level02.colliders.Tile2_wallNr159315ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr159315ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr159315ID.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr159315ID.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.Tile2_wallNr159315ID.collider:SetPos(253,37.9795,123)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr159315ID.collider, 3)
level02.colliders.Tile2_wallNr160316ID = {}
level02.colliders.Tile2_wallNr160316ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr160316ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr160316ID.collider:SetZAxis(0.773957,0,-0.633238)
level02.colliders.Tile2_wallNr160316ID.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.Tile2_wallNr160316ID.collider:SetPos(263.5,37.4225,113.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr160316ID.collider, 3)
level02.colliders.Tile2_wallNr161317ID = {}
level02.colliders.Tile2_wallNr161317ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr161317ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr161317ID.collider:SetZAxis(0.994692,0,-0.102899)
level02.colliders.Tile2_wallNr161317ID.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.Tile2_wallNr161317ID.collider:SetPos(283.5,36.9769,107.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr161317ID.collider, 3)
level02.colliders.Tile2_wallNr164318ID = {}
level02.colliders.Tile2_wallNr164318ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr164318ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr164318ID.collider:SetZAxis(0.868243,0,0.496139)
level02.colliders.Tile2_wallNr164318ID.collider:SetHalfLengths(0.3,5.77983,4.03113)
level02.colliders.Tile2_wallNr164318ID.collider:SetPos(227.5,56.3612,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr164318ID.collider, 3)
level02.props.PineTree_Collider381ID = {}
level02.props.PineTree_Collider381ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider381ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider381ID.model)
Transform.SetPosition(level02.props.PineTree_Collider381ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider381ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_Collider381ID.transformID, {x=0.0166519, y=-0.520999, z=0})
level02.props.PineTree_Collider381ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider381ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider381ID.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
level02.props.PineTree_Collider381ID.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.props.PineTree_Collider381ID.collider:SetPos(176.796,45.2188,214.625)
CollisionHandler.AddOBB(level02.props.PineTree_Collider381ID.collider, 3)
level02.props.PineTree_Collider1382ID = {}
level02.props.PineTree_Collider1382ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1382ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider1382ID.model)
Transform.SetPosition(level02.props.PineTree_Collider1382ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider1382ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_Collider1382ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider1382ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider1382ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider1382ID.collider:SetZAxis(0,0,1)
level02.props.PineTree_Collider1382ID.collider:SetHalfLengths(2.5,4,2.5)
level02.props.PineTree_Collider1382ID.collider:SetPos(183.5,51.8438,240)
CollisionHandler.AddOBB(level02.props.PineTree_Collider1382ID.collider, 3)
level02.props.PineTree_Collider2383ID = {}
level02.props.PineTree_Collider2383ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2383ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2383ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2383ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2383ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2383ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider2383ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider2383ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider2383ID.collider:SetZAxis(0,0,1)
level02.props.PineTree_Collider2383ID.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.props.PineTree_Collider2383ID.collider:SetPos(163.885,45.0938,193.24)
CollisionHandler.AddOBB(level02.props.PineTree_Collider2383ID.collider, 3)
level02.props.PineTree_NoCollider1384ID = {}
level02.props.PineTree_NoCollider1384ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1384ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider1384ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider1384ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider1384ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(level02.props.PineTree_NoCollider1384ID.transformID, {x=0, y=2.74772, z=0})
level02.props.PineTree_NoCollider11385ID = {}
level02.props.PineTree_NoCollider11385ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11385ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider11385ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider11385ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider11385ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(level02.props.PineTree_NoCollider11385ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider12386ID = {}
level02.props.PineTree_NoCollider12386ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12386ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider12386ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider12386ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider12386ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(level02.props.PineTree_NoCollider12386ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider13387ID = {}
level02.props.PineTree_NoCollider13387ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13387ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider13387ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider13387ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider13387ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider13387ID.transformID, {x=0, y=0.550171, z=0})
level02.props.PineTree_NoCollider14388ID = {}
level02.props.PineTree_NoCollider14388ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14388ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider14388ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider14388ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider14388ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider14388ID.transformID, {x=0, y=2.98311, z=0})
level02.props.PineTree_NoCollider15389ID = {}
level02.props.PineTree_NoCollider15389ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15389ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider15389ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider15389ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider15389ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(level02.props.PineTree_NoCollider15389ID.transformID, {x=0, y=-7.32886, z=0})
level02.props.PineTree_NoCollider16390ID = {}
level02.props.PineTree_NoCollider16390ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16390ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider16390ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider16390ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider16390ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(level02.props.PineTree_NoCollider16390ID.transformID, {x=0, y=-2.98524, z=0})
level02.props.PineTree_NoCollider17391ID = {}
level02.props.PineTree_NoCollider17391ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17391ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider17391ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider17391ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider17391ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(level02.props.PineTree_NoCollider17391ID.transformID, {x=0, y=-2.76387, z=0})
level02.props.PineTree_NoCollider18392ID = {}
level02.props.PineTree_NoCollider18392ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18392ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider18392ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider18392ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider18392ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(level02.props.PineTree_NoCollider18392ID.transformID, {x=0, y=1.82048, z=0})
level02.props.PineTree_NoCollider19393ID = {}
level02.props.PineTree_NoCollider19393ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19393ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider19393ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider19393ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider19393ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(level02.props.PineTree_NoCollider19393ID.transformID, {x=0, y=-2.19759, z=0})
level02.props.OakTree_Collider4394ID = {}
level02.props.OakTree_Collider4394ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4394ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider4394ID.model)
Transform.SetPosition(level02.props.OakTree_Collider4394ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider4394ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(level02.props.OakTree_Collider4394ID.transformID, {x=0, y=3.64905, z=0})
level02.props.OakTree_Collider4394ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider4394ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider4394ID.collider:SetZAxis(-0.485958,0,-0.873982)
level02.props.OakTree_Collider4394ID.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.props.OakTree_Collider4394ID.collider:SetPos(235,42.375,133.125)
CollisionHandler.AddOBB(level02.props.OakTree_Collider4394ID.collider, 3)
level02.props.OakTree_Collider41395ID = {}
level02.props.OakTree_Collider41395ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41395ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41395ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41395ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41395ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41395ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider41395ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider41395ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider41395ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider41395ID.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.props.OakTree_Collider41395ID.collider:SetPos(328.75,41.0313,113.313)
CollisionHandler.AddOBB(level02.props.OakTree_Collider41395ID.collider, 3)
level02.props.OakTree_Collider42396ID = {}
level02.props.OakTree_Collider42396ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42396ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42396ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42396ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42396ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42396ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider42396ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider42396ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider42396ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider42396ID.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.props.OakTree_Collider42396ID.collider:SetPos(339.5,40.3125,156.5)
CollisionHandler.AddOBB(level02.props.OakTree_Collider42396ID.collider, 3)
level02.props.OakTree_Collider43397ID = {}
level02.props.OakTree_Collider43397ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43397ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43397ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43397ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43397ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43397ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider43397ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider43397ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider43397ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider43397ID.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.props.OakTree_Collider43397ID.collider:SetPos(370.079,42.4331,185.415)
CollisionHandler.AddOBB(level02.props.OakTree_Collider43397ID.collider, 3)
level02.props.OakTree_Collider44398ID = {}
level02.props.OakTree_Collider44398ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44398ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44398ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44398ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44398ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44398ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider44398ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider44398ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider44398ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider44398ID.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.props.OakTree_Collider44398ID.collider:SetPos(365.671,47.676,214.229)
CollisionHandler.AddOBB(level02.props.OakTree_Collider44398ID.collider, 3)
level02.props.OakTree_Collider45399ID = {}
level02.props.OakTree_Collider45399ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45399ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45399ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45399ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45399ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45399ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider45399ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider45399ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider45399ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider45399ID.collider:SetHalfLengths(1.75,4,1.75)
level02.props.OakTree_Collider45399ID.collider:SetPos(354.858,50.9688,226.742)
CollisionHandler.AddOBB(level02.props.OakTree_Collider45399ID.collider, 3)
level02.props.OakTree_Collider46400ID = {}
level02.props.OakTree_Collider46400ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46400ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46400ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46400ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46400ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46400ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider46400ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider46400ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider46400ID.collider:SetZAxis(0,0,1)
level02.props.OakTree_Collider46400ID.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.props.OakTree_Collider46400ID.collider:SetPos(347.526,56,240.375)
CollisionHandler.AddOBB(level02.props.OakTree_Collider46400ID.collider, 3)
level02.props.OakTree_NoCollider1401ID = {}
level02.props.OakTree_NoCollider1401ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1401ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider1401ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider1401ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider1401ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(level02.props.OakTree_NoCollider1401ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider15402ID = {}
level02.props.OakTree_NoCollider15402ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15402ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider15402ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider15402ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider15402ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(level02.props.OakTree_NoCollider15402ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider111403ID = {}
level02.props.OakTree_NoCollider111403ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111403ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider111403ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider111403ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider111403ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(level02.props.OakTree_NoCollider111403ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider112404ID = {}
level02.props.OakTree_NoCollider112404ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112404ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider112404ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider112404ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider112404ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_NoCollider112404ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider113405ID = {}
level02.props.OakTree_NoCollider113405ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113405ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider113405ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider113405ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider113405ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(level02.props.OakTree_NoCollider113405ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider114406ID = {}
level02.props.OakTree_NoCollider114406ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114406ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider114406ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider114406ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider114406ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(level02.props.OakTree_NoCollider114406ID.transformID, {x=0, y=-5.86132, z=0})
level02.props.OakTree_NoCollider115407ID = {}
level02.props.OakTree_NoCollider115407ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115407ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider115407ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider115407ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider115407ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(level02.props.OakTree_NoCollider115407ID.transformID, {x=0, y=1.59683, z=0})
level02.props.OakTree_NoCollider116408ID = {}
level02.props.OakTree_NoCollider116408ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116408ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider116408ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider116408ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider116408ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(level02.props.OakTree_NoCollider116408ID.transformID, {x=0, y=-1.86515, z=0})
level02.props.OakTree_NoCollider117409ID = {}
level02.props.OakTree_NoCollider117409ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117409ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider117409ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider117409ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider117409ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(level02.props.OakTree_NoCollider117409ID.transformID, {x=0, y=-1.52942, z=0})
level02.props.OakTree_NoCollider118410ID = {}
level02.props.OakTree_NoCollider118410ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118410ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider118410ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider118410ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider118410ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(level02.props.OakTree_NoCollider118410ID.transformID, {x=0, y=3.43332, z=0})
level02.props.OakTree_NoCollider119411ID = {}
level02.props.OakTree_NoCollider119411ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119411ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider119411ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider119411ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider119411ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(level02.props.OakTree_NoCollider119411ID.transformID, {x=0, y=1.121, z=0})
level02.props.OakTree_NoCollider120412ID = {}
level02.props.OakTree_NoCollider120412ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120412ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider120412ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider120412ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider120412ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(level02.props.OakTree_NoCollider120412ID.transformID, {x=0, y=1.69246, z=0})
level02.props.OakTree_NoCollider121413ID = {}
level02.props.OakTree_NoCollider121413ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121413ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider121413ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider121413ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider121413ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(level02.props.OakTree_NoCollider121413ID.transformID, {x=0, y=1.70454, z=0})
level02.props.OakTree_NoCollider122414ID = {}
level02.props.OakTree_NoCollider122414ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122414ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider122414ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider122414ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider122414ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(level02.props.OakTree_NoCollider122414ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider123415ID = {}
level02.props.OakTree_NoCollider123415ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123415ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider123415ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider123415ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider123415ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(level02.props.OakTree_NoCollider123415ID.transformID, {x=0, y=2.28254, z=0})
level02.props.OakTree_NoCollider124416ID = {}
level02.props.OakTree_NoCollider124416ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124416ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider124416ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider124416ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider124416ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(level02.props.OakTree_NoCollider124416ID.transformID, {x=0, y=-7.63234, z=0})
level02.props.OakTree_NoCollider125417ID = {}
level02.props.OakTree_NoCollider125417ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125417ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider125417ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider125417ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider125417ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(level02.props.OakTree_NoCollider125417ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider126422ID = {}
level02.props.OakTree_NoCollider126422ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126422ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider126422ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider126422ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider126422ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(level02.props.OakTree_NoCollider126422ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider127423ID = {}
level02.props.OakTree_NoCollider127423ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127423ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider127423ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider127423ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider127423ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(level02.props.OakTree_NoCollider127423ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider128424ID = {}
level02.props.OakTree_NoCollider128424ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128424ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider128424ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider128424ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider128424ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(level02.props.OakTree_NoCollider128424ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider129425ID = {}
level02.props.OakTree_NoCollider129425ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129425ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider129425ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider129425ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider129425ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(level02.props.OakTree_NoCollider129425ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider130426ID = {}
level02.props.OakTree_NoCollider130426ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130426ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider130426ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider130426ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider130426ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(level02.props.OakTree_NoCollider130426ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider131427ID = {}
level02.props.OakTree_NoCollider131427ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131427ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider131427ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider131427ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider131427ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(level02.props.OakTree_NoCollider131427ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider132428ID = {}
level02.props.OakTree_NoCollider132428ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132428ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider132428ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider132428ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider132428ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(level02.props.OakTree_NoCollider132428ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider133429ID = {}
level02.props.OakTree_NoCollider133429ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133429ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider133429ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider133429ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider133429ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(level02.props.OakTree_NoCollider133429ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider134430ID = {}
level02.props.OakTree_NoCollider134430ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134430ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider134430ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider134430ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider134430ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(level02.props.OakTree_NoCollider134430ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider135431ID = {}
level02.props.OakTree_NoCollider135431ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135431ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider135431ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider135431ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider135431ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(level02.props.OakTree_NoCollider135431ID.transformID, {x=0, y=0, z=0})
level02.props.Bridge1436ID = {}
level02.props.Bridge1436ID.model = Assets.LoadModel('Models/Bridge1.model')
level02.props.Bridge1436ID.transformID = Gear.BindStaticInstance(level02.props.Bridge1436ID.model)
Transform.SetPosition(level02.props.Bridge1436ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Bridge1436ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Bridge1436ID.transformID, {x=0, y=0, z=0})
level02.colliders.Tile2_wallNr162437ID = {}
level02.colliders.Tile2_wallNr162437ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr162437ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr162437ID.collider:SetZAxis(0,0,-1)
level02.colliders.Tile2_wallNr162437ID.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.Tile2_wallNr162437ID.collider:SetPos(332,48.7857,225.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr162437ID.collider, 3)
level02.colliders.Tile2_wallNr163438ID = {}
level02.colliders.Tile2_wallNr163438ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr163438ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr163438ID.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.Tile2_wallNr163438ID.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.Tile2_wallNr163438ID.collider:SetPos(320,48.7857,232)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr163438ID.collider, 3)
level02.colliders.Tile2_wallNr165439ID = {}
level02.colliders.Tile2_wallNr165439ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr165439ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr165439ID.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.Tile2_wallNr165439ID.collider:SetHalfLengths(0.3,6.00264,3.53553)
level02.colliders.Tile2_wallNr165439ID.collider:SetPos(305.5,51.2366,233.5)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr165439ID.collider, 3)
level02.colliders.Tile2_wallNr93440ID = {}
level02.colliders.Tile2_wallNr93440ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr93440ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr93440ID.collider:SetZAxis(0.944497,0,-0.328521)
level02.colliders.Tile2_wallNr93440ID.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.Tile2_wallNr93440ID.collider:SetPos(323.5,51.6822,242)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr93440ID.collider, 3)
level02.colliders.Tile2_wallNr166441ID = {}
level02.colliders.Tile2_wallNr166441ID.collider = OBBCollider.Create(-1)
level02.colliders.Tile2_wallNr166441ID.collider:SetOffset(0,0,0)
level02.colliders.Tile2_wallNr166441ID.collider:SetZAxis(0.242536,0,0.970143)
level02.colliders.Tile2_wallNr166441ID.collider:SetHalfLengths(0.3,5.55702,2.06155)
level02.colliders.Tile2_wallNr166441ID.collider:SetPos(335.5,50.791,240)
CollisionHandler.AddOBB(level02.colliders.Tile2_wallNr166441ID.collider, 3)
level02.props.Water673ID = {}
level02.props.Water673ID.model = Assets.LoadModel('Models/lake.model')
level02.props.Water673ID.transformID = Gear.BindStaticInstance(level02.props.Water673ID.model)
Transform.SetPosition(level02.props.Water673ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Water673ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Water673ID.transformID, {x=0, y=0, z=0})
level02.props.House1695ID = {}
level02.props.House1695ID.model = Assets.LoadModel('Models/House1.model')
level02.props.House1695ID.transformID = Gear.BindStaticInstance(level02.props.House1695ID.model)
Transform.SetPosition(level02.props.House1695ID.transformID, {x=225.855, y=38.7525, z=139.26})
Transform.SetScaleNonUniform(level02.props.House1695ID.transformID, 1.50664, 1.67704, 1.68159)
Transform.SetRotation(level02.props.House1695ID.transformID, {x=0.0540893, y=4.89373, z=-0.000975025})
level02.props.House1695ID.collider = OBBCollider.Create(-1)
level02.props.House1695ID.collider:SetOffset(0,0,0)
level02.props.House1695ID.collider:SetZAxis(-0.982216,-0.0531053,0.180086)
level02.props.House1695ID.collider:SetHalfLengths(7.53319,6.70818,7.56718)
level02.props.House1695ID.collider:SetPos(225.855,38.7525,139.26)
CollisionHandler.AddOBB(level02.props.House1695ID.collider, 3)
level02.props.Lantern4700ID = {}
level02.props.Lantern4700ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern4700ID.transformID = Gear.BindStaticInstance(level02.props.Lantern4700ID.model)
Transform.SetPosition(level02.props.Lantern4700ID.transformID, {x=226, y=39, z=133})
Transform.SetScaleNonUniform(level02.props.Lantern4700ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern4700ID.transformID, {x=0, y=-1.0472, z=0})
Light.addLight(225.5, 42.75, 131, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern7704ID = {}
level02.props.Lantern7704ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern7704ID.transformID = Gear.BindStaticInstance(level02.props.Lantern7704ID.model)
Transform.SetPosition(level02.props.Lantern7704ID.transformID, {x=310.464, y=52.5625, z=246.125})
Transform.SetScaleNonUniform(level02.props.Lantern7704ID.transformID, 1, 1.22127, 1)
Transform.SetRotation(level02.props.Lantern7704ID.transformID, {x=0, y=0, z=0})
Light.addLight(307.964, 56.5625, 246.125, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern8705ID = {}
level02.props.Lantern8705ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern8705ID.transformID = Gear.BindStaticInstance(level02.props.Lantern8705ID.model)
Transform.SetPosition(level02.props.Lantern8705ID.transformID, {x=336.838, y=50.9375, z=237.224})
Transform.SetScaleNonUniform(level02.props.Lantern8705ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern8705ID.transformID, {x=0, y=3.91918, z=0})
Light.addLight(338.838, 54.9375, 235.224, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern9706ID = {}
level02.props.Lantern9706ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern9706ID.transformID = Gear.BindStaticInstance(level02.props.Lantern9706ID.model)
Transform.SetPosition(level02.props.Lantern9706ID.transformID, {x=196.044, y=40.2449, z=203.33})
Transform.SetScaleNonUniform(level02.props.Lantern9706ID.transformID, 1, 1.06172, 1)
Transform.SetRotation(level02.props.Lantern9706ID.transformID, {x=0, y=-1.18189, z=0})
Light.addLight(195.044, 44.2449, 201.08, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern10707ID = {}
level02.props.Lantern10707ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern10707ID.transformID = Gear.BindStaticInstance(level02.props.Lantern10707ID.model)
Transform.SetPosition(level02.props.Lantern10707ID.transformID, {x=216.289, y=36.0584, z=179.585})
Transform.SetScaleNonUniform(level02.props.Lantern10707ID.transformID, 1, 1.19206, 1)
Transform.SetRotation(level02.props.Lantern10707ID.transformID, {x=0, y=-0.661819, z=0})
Light.addLight(214.289, 40.5584, 177.985, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern11708ID = {}
level02.props.Lantern11708ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern11708ID.transformID = Gear.BindStaticInstance(level02.props.Lantern11708ID.model)
Transform.SetPosition(level02.props.Lantern11708ID.transformID, {x=235.862, y=35.5215, z=159.577})
Transform.SetScaleNonUniform(level02.props.Lantern11708ID.transformID, 1, 1.0759, 1)
Transform.SetRotation(level02.props.Lantern11708ID.transformID, {x=0, y=-0.977943, z=0})
Light.addLight(234.612, 39.5215, 157.577, 1, 0.576471, 0.160784, 10,2)
level02.props.PineTree_Collider3709ID = {}
level02.props.PineTree_Collider3709ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3709ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider3709ID.model)
Transform.SetPosition(level02.props.PineTree_Collider3709ID.transformID, {x=305.672, y=53.5464, z=253.254})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider3709ID.transformID, 1.32645, 1.7271, 1.22295)
Transform.SetRotation(level02.props.PineTree_Collider3709ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider3709ID.collider = OBBCollider.Create(-1)
level02.props.PineTree_Collider3709ID.collider:SetOffset(0,4,0)
level02.props.PineTree_Collider3709ID.collider:SetZAxis(0,0,1)
level02.props.PineTree_Collider3709ID.collider:SetHalfLengths(3.31612,6.90839,3.05737)
level02.props.PineTree_Collider3709ID.collider:SetPos(305.672,57.5464,253.254)
CollisionHandler.AddOBB(level02.props.PineTree_Collider3709ID.collider, 3)
level02.props.OakTree_Collider47710ID = {}
level02.props.OakTree_Collider47710ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47710ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider47710ID.model)
Transform.SetPosition(level02.props.OakTree_Collider47710ID.transformID, {x=346.368, y=37.1634, z=203.707})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider47710ID.transformID, 1.41434, 1.77458, 1.43405)
Transform.SetRotation(level02.props.OakTree_Collider47710ID.transformID, {x=0, y=3.24973, z=0})
level02.props.OakTree_Collider47710ID.collider = OBBCollider.Create(-1)
level02.props.OakTree_Collider47710ID.collider:SetOffset(0,4,0)
level02.props.OakTree_Collider47710ID.collider:SetZAxis(-0.107927,0,-0.994159)
level02.props.OakTree_Collider47710ID.collider:SetHalfLengths(2.47509,7.09833,2.50959)
level02.props.OakTree_Collider47710ID.collider:SetPos(346.368,41.1634,203.707)
CollisionHandler.AddOBB(level02.props.OakTree_Collider47710ID.collider, 3)
local New21916ID = CreateEnemy(ENEMY_DUMMY, {x=43.5625, y=7.46875, z=176.25})
New21916ID.moveSpeed = 9
New21916ID.health = 50
New21916ID.visionRange = 30

local New22921ID = CreateEnemy(ENEMY_DUMMY, {x=43.0625, y=7.58594, z=180.625})
New22921ID.moveSpeed = 9
New22921ID.health = 50
New22921ID.visionRange = 30

local New23924ID = CreateEnemy(ENEMY_DUMMY, {x=44.9063, y=7.1875, z=171.625})
New23924ID.moveSpeed = 9
New23924ID.health = 50
New23924ID.visionRange = 30

local New24925ID = CreateEnemy(ENEMY_DUMMY, {x=15.8047, y=3.67578, z=196.25})
New24925ID.moveSpeed = 9
New24925ID.health = 50
New24925ID.visionRange = 30

local New25926ID = CreateEnemy(ENEMY_MELEE, {x=45.1875, y=9.88281, z=207})
New25926ID.moveSpeed = 9
New25926ID.health = 50
New25926ID.visionRange = 30

local New26927ID = CreateEnemy(ENEMY_MELEE, {x=53.0625, y=10.9844, z=211.125})
New26927ID.moveSpeed = 9
New26927ID.health = 50
New26927ID.visionRange = 30

local New27928ID = CreateEnemy(ENEMY_MELEE, {x=56.0625, y=11.8125, z=212.625})
New27928ID.moveSpeed = 9
New27928ID.health = 50
New27928ID.visionRange = 30

local New28929ID = CreateEnemy(ENEMY_MELEE, {x=48.4688, y=10.2422, z=207.75})
New28929ID.moveSpeed = 9
New28929ID.health = 50
New28929ID.visionRange = 30

local New29930ID = CreateEnemy(ENEMY_MELEE, {x=44.0625, y=9.94531, z=203.375})
New29930ID.moveSpeed = 9
New29930ID.health = 50
New29930ID.visionRange = 30

local New210931ID = CreateEnemy(ENEMY_MELEE, {x=109.375, y=28.0313, z=230})
New210931ID.moveSpeed = 9
New210931ID.health = 50
New210931ID.visionRange = 30

local New211932ID = CreateEnemy(ENEMY_MELEE, {x=114.688, y=29.1406, z=229.5})
New211932ID.moveSpeed = 9
New211932ID.health = 50
New211932ID.visionRange = 30

local New212933ID = CreateEnemy(ENEMY_MELEE, {x=118.563, y=30.3125, z=226.875})
New212933ID.moveSpeed = 9
New212933ID.health = 50
New212933ID.visionRange = 30

local New213934ID = CreateEnemy(ENEMY_MELEE, {x=121.875, y=31.1563, z=222.5})
New213934ID.moveSpeed = 9
New213934ID.health = 50
New213934ID.visionRange = 30

local New214935ID = CreateEnemy(ENEMY_MELEE, {x=114.875, y=30.2031, z=222.75})
New214935ID.moveSpeed = 9
New214935ID.health = 50
New214935ID.visionRange = 30

local New215936ID = CreateEnemy(ENEMY_MELEE, {x=110.625, y=29.2188, z=224.375})
New215936ID.moveSpeed = 9
New215936ID.health = 50
New215936ID.visionRange = 30

local New216937ID = CreateEnemy(ENEMY_MELEE, {x=178.5, y=45.0313, z=233.875})
New216937ID.moveSpeed = 9
New216937ID.health = 50
New216937ID.visionRange = 30

local New217938ID = CreateEnemy(ENEMY_MELEE, {x=183.25, y=47.1875, z=233.875})
New217938ID.moveSpeed = 9
New217938ID.health = 50
New217938ID.visionRange = 30

local New218939ID = CreateEnemy(ENEMY_MELEE, {x=188.125, y=49.125, z=235.75})
New218939ID.moveSpeed = 9
New218939ID.health = 50
New218939ID.visionRange = 30

local New219940ID = CreateEnemy(ENEMY_MELEE, {x=198.125, y=51.5625, z=240.625})
New219940ID.moveSpeed = 9
New219940ID.health = 50
New219940ID.visionRange = 30

local New220941ID = CreateEnemy(ENEMY_MELEE, {x=202.625, y=52.25, z=237.5})
New220941ID.moveSpeed = 9
New220941ID.health = 50
New220941ID.visionRange = 30

local New221942ID = CreateEnemy(ENEMY_MELEE, {x=198.75, y=51.0938, z=234.625})
New221942ID.moveSpeed = 9
New221942ID.health = 50
New221942ID.visionRange = 30

end
level02.unload = function()
level02.props.tile24ID = nil
Gear.UnbindInstance(level02.props.t2s120ID.transformID)
Assets.UnloadModel('Models/tile2_s1.model')
level02.props.t2s120ID = nil
Gear.UnbindInstance(level02.props.t2s221ID.transformID)
Assets.UnloadModel('Models/tile2_s2.model')
level02.props.t2s221ID = nil
Gear.UnbindInstance(level02.props.t2s322ID.transformID)
Assets.UnloadModel('Models/tile2_s3.model')
level02.props.t2s322ID = nil
Gear.UnbindInstance(level02.props.t2s423ID.transformID)
Assets.UnloadModel('Models/tile2_s4.model')
level02.props.t2s423ID = nil
Gear.UnbindInstance(level02.props.t2s524ID.transformID)
Assets.UnloadModel('Models/tile2_s5.model')
level02.props.t2s524ID = nil
Gear.UnbindInstance(level02.props.t2s625ID.transformID)
Assets.UnloadModel('Models/tile2_s6.model')
level02.props.t2s625ID = nil
Gear.UnbindInstance(level02.props.t2s726ID.transformID)
Assets.UnloadModel('Models/tile2_s7.model')
level02.props.t2s726ID = nil
Gear.UnbindInstance(level02.props.t2s827ID.transformID)
Assets.UnloadModel('Models/tile2_s8.model')
level02.props.t2s827ID = nil
Gear.UnbindInstance(level02.props.t2s928ID.transformID)
Assets.UnloadModel('Models/tile2_s9.model')
level02.props.t2s928ID = nil
Gear.UnbindInstance(level02.props.t2s1231ID.transformID)
Assets.UnloadModel('Models/tile2_s12.model')
level02.props.t2s1231ID = nil
Gear.UnbindInstance(level02.props.t2s1332ID.transformID)
Assets.UnloadModel('Models/tile2_s13.model')
level02.props.t2s1332ID = nil
Gear.UnbindInstance(level02.props.t2s1433ID.transformID)
Assets.UnloadModel('Models/tile2_s14.model')
level02.props.t2s1433ID = nil
level02.colliders.Tile2_wallNr157ID = nil
level02.colliders.Tile2_wallNr1158ID = nil
level02.colliders.Tile2_wallNr2159ID = nil
level02.colliders.Tile2_wallNr3160ID = nil
level02.colliders.Tile2_wallNr4161ID = nil
level02.colliders.Tile2_wallNr5162ID = nil
level02.colliders.Tile2_wallNr6163ID = nil
level02.colliders.Tile2_wallNr7164ID = nil
level02.colliders.Tile2_wallNr8165ID = nil
level02.colliders.Tile2_wallNr9166ID = nil
level02.colliders.Tile2_wallNr10167ID = nil
level02.colliders.Tile2_wallNr11168ID = nil
level02.colliders.Tile2_wallNr12169ID = nil
level02.colliders.Tile2_wallNr13170ID = nil
level02.colliders.Tile2_wallNr14171ID = nil
level02.colliders.Tile2_wallNr15172ID = nil
level02.colliders.Tile2_wallNr16173ID = nil
level02.colliders.Tile2_wallNr17174ID = nil
level02.colliders.Tile2_wallNr18175ID = nil
level02.colliders.Tile2_wallNr19176ID = nil
level02.colliders.Tile2_wallNr20177ID = nil
level02.colliders.Tile2_wallNr21178ID = nil
level02.colliders.Tile2_wallNr22179ID = nil
level02.colliders.Tile2_wallNr23180ID = nil
level02.colliders.Tile2_wallNr24181ID = nil
level02.colliders.Tile2_wallNr25182ID = nil
level02.colliders.Tile2_wallNr26183ID = nil
level02.colliders.Tile2_wallNr27184ID = nil
level02.colliders.Tile2_wallNr28185ID = nil
level02.colliders.Tile2_wallNr29186ID = nil
level02.colliders.Tile2_wallNr30187ID = nil
level02.colliders.Tile2_wallNr31188ID = nil
level02.colliders.Tile2_wallNr32189ID = nil
level02.colliders.Tile2_wallNr33190ID = nil
level02.colliders.Tile2_wallNr34191ID = nil
level02.colliders.Tile2_wallNr35192ID = nil
level02.colliders.Tile2_wallNr36193ID = nil
level02.colliders.Tile2_wallNr37194ID = nil
level02.colliders.Tile2_wallNr38195ID = nil
level02.colliders.Tile2_wallNr39196ID = nil
level02.colliders.Tile2_wallNr40197ID = nil
level02.colliders.Tile2_wallNr41198ID = nil
level02.colliders.Tile2_wallNr42199ID = nil
level02.colliders.Tile2_wallNr43200ID = nil
level02.colliders.Tile2_wallNr44201ID = nil
level02.colliders.Tile2_wallNr45202ID = nil
level02.colliders.Tile2_wallNr46203ID = nil
level02.colliders.Tile2_wallNr47204ID = nil
level02.colliders.Tile2_wallNr48205ID = nil
level02.colliders.Tile2_wallNr49206ID = nil
level02.colliders.Tile2_wallNr50207ID = nil
level02.colliders.Tile2_wallNr51208ID = nil
level02.colliders.Tile2_wallNr52209ID = nil
level02.colliders.Tile2_wallNr53210ID = nil
level02.colliders.Tile2_wallNr54211ID = nil
level02.colliders.Tile2_wallNr55212ID = nil
level02.colliders.Tile2_wallNr56213ID = nil
level02.colliders.Tile2_wallNr57214ID = nil
level02.colliders.Tile2_wallNr58215ID = nil
level02.colliders.Tile2_wallNr59216ID = nil
level02.colliders.Tile2_wallNr60217ID = nil
level02.colliders.Tile2_wallNr61218ID = nil
level02.colliders.Tile2_wallNr62219ID = nil
level02.colliders.Tile2_wallNr63220ID = nil
level02.colliders.Tile2_wallNr64221ID = nil
level02.colliders.Tile2_wallNr65222ID = nil
level02.colliders.Tile2_wallNr87223ID = nil
level02.colliders.Tile2_wallNr88224ID = nil
level02.colliders.Tile2_wallNr89225ID = nil
level02.colliders.Tile2_wallNr90226ID = nil
level02.colliders.Tile2_wallNr91227ID = nil
level02.colliders.Tile2_wallNr92228ID = nil
level02.colliders.Tile2_wallNr94229ID = nil
level02.colliders.Tile2_wallNr95230ID = nil
level02.colliders.Tile2_wallNr96231ID = nil
level02.colliders.Tile2_wallNr97232ID = nil
level02.colliders.Tile2_wallNr98233ID = nil
level02.colliders.Tile2_wallNr99234ID = nil
level02.colliders.Tile2_wallNr100235ID = nil
level02.colliders.Tile2_wallNr101236ID = nil
level02.colliders.Tile2_wallNr102237ID = nil
level02.colliders.Tile2_wallNr66238ID = nil
level02.colliders.Tile2_wallNr67239ID = nil
level02.colliders.Tile2_wallNr68240ID = nil
level02.colliders.Tile2_wallNr69241ID = nil
level02.colliders.Tile2_wallNr70242ID = nil
level02.colliders.Tile2_wallNr71243ID = nil
level02.colliders.Tile2_wallNr72244ID = nil
level02.colliders.Tile2_wallNr73245ID = nil
level02.colliders.Tile2_wallNr74246ID = nil
level02.colliders.Tile2_wallNr75247ID = nil
level02.colliders.Tile2_wallNr76248ID = nil
level02.colliders.Tile2_wallNr77249ID = nil
level02.colliders.Tile2_wallNr78250ID = nil
level02.colliders.Tile2_wallNr79251ID = nil
level02.colliders.Tile2_wallNr80252ID = nil
level02.colliders.Tile2_wallNr81253ID = nil
level02.colliders.Tile2_wallNr82254ID = nil
level02.colliders.Tile2_wallNr83255ID = nil
level02.colliders.Tile2_wallNr84256ID = nil
level02.colliders.Tile2_wallNr85257ID = nil
level02.colliders.Tile2_wallNr86258ID = nil
level02.colliders.Tile2_wallNr103259ID = nil
level02.colliders.Tile2_wallNr104260ID = nil
level02.colliders.Tile2_wallNr105261ID = nil
level02.colliders.Tile2_wallNr106262ID = nil
level02.colliders.Tile2_wallNr107263ID = nil
level02.colliders.Tile2_wallNr108264ID = nil
level02.colliders.Tile2_wallNr109265ID = nil
level02.colliders.Tile2_wallNr110266ID = nil
level02.colliders.Tile2_wallNr111267ID = nil
level02.colliders.Tile2_wallNr112268ID = nil
level02.colliders.Tile2_wallNr113269ID = nil
level02.colliders.Tile2_wallNr114270ID = nil
level02.colliders.Tile2_wallNr115271ID = nil
level02.colliders.Tile2_wallNr116272ID = nil
level02.colliders.Tile2_wallNr117273ID = nil
level02.colliders.Tile2_wallNr118274ID = nil
level02.colliders.Tile2_wallNr119275ID = nil
level02.colliders.Tile2_wallNr120276ID = nil
level02.colliders.Tile2_wallNr121277ID = nil
level02.colliders.Tile2_wallNr122278ID = nil
level02.colliders.Tile2_wallNr123279ID = nil
level02.colliders.Tile2_wallNr124280ID = nil
level02.colliders.Tile2_wallNr125281ID = nil
level02.colliders.Tile2_wallNr126282ID = nil
level02.colliders.Tile2_wallNr127283ID = nil
level02.colliders.Tile2_wallNr128284ID = nil
level02.colliders.Tile2_wallNr129285ID = nil
level02.colliders.Tile2_wallNr130286ID = nil
level02.colliders.Tile2_wallNr131287ID = nil
level02.colliders.Tile2_wallNr132288ID = nil
level02.colliders.Tile2_wallNr133289ID = nil
level02.colliders.Tile2_wallNr134290ID = nil
level02.colliders.Tile2_wallNr135291ID = nil
level02.colliders.Tile2_wallNr136292ID = nil
level02.colliders.Tile2_wallNr137293ID = nil
level02.colliders.Tile2_wallNr138294ID = nil
level02.colliders.Tile2_wallNr139295ID = nil
level02.colliders.Tile2_wallNr140296ID = nil
level02.colliders.Tile2_wallNr141297ID = nil
level02.colliders.Tile2_wallNr142298ID = nil
level02.colliders.Tile2_wallNr143299ID = nil
level02.colliders.Tile2_wallNr144300ID = nil
level02.colliders.Tile2_wallNr145301ID = nil
level02.colliders.Tile2_wallNr146302ID = nil
level02.colliders.Tile2_wallNr147303ID = nil
level02.colliders.Tile2_wallNr148304ID = nil
level02.colliders.Tile2_wallNr149305ID = nil
level02.colliders.Tile2_wallNr150306ID = nil
level02.colliders.Tile2_wallNr151307ID = nil
level02.colliders.Tile2_wallNr152308ID = nil
level02.colliders.Tile2_wallNr153309ID = nil
level02.colliders.Tile2_wallNr154310ID = nil
level02.colliders.Tile2_wallNr155311ID = nil
level02.colliders.Tile2_wallNr156312ID = nil
level02.colliders.Tile2_wallNr157313ID = nil
level02.colliders.Tile2_wallNr158314ID = nil
level02.colliders.Tile2_wallNr159315ID = nil
level02.colliders.Tile2_wallNr160316ID = nil
level02.colliders.Tile2_wallNr161317ID = nil
level02.colliders.Tile2_wallNr164318ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider381ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider381ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider1382ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1382ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider2383ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2383ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider1384ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1384ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider11385ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11385ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider12386ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12386ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider13387ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13387ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider14388ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14388ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider15389ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15389ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider16390ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16390ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider17391ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17391ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider18392ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18392ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider19393ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19393ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider4394ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4394ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider41395ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41395ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider42396ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42396ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider43397ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43397ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider44398ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44398ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider45399ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45399ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider46400ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46400ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider1401ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1401ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider15402ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15402ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider111403ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111403ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider112404ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112404ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider113405ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113405ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider114406ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114406ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider115407ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115407ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider116408ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116408ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider117409ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117409ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider118410ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118410ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider119411ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119411ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider120412ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120412ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider121413ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121413ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider122414ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122414ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider123415ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123415ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider124416ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124416ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider125417ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125417ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider126422ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126422ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider127423ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127423ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider128424ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128424ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider129425ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129425ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider130426ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130426ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider131427ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131427ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider132428ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132428ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider133429ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133429ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider134430ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134430ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider135431ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135431ID = nil
Gear.UnbindInstance(level02.props.Bridge1436ID.transformID)
Assets.UnloadModel('Models/Bridge1.model')
level02.props.Bridge1436ID = nil
level02.colliders.Tile2_wallNr162437ID = nil
level02.colliders.Tile2_wallNr163438ID = nil
level02.colliders.Tile2_wallNr165439ID = nil
level02.colliders.Tile2_wallNr93440ID = nil
level02.colliders.Tile2_wallNr166441ID = nil
Gear.UnbindInstance(level02.props.Water673ID.transformID)
Assets.UnloadModel('Models/lake.model')
level02.props.Water673ID = nil
Gear.UnbindInstance(level02.props.House1695ID.transformID)
Assets.UnloadModel('Models/House1.model')
level02.props.House1695ID = nil
Gear.UnbindInstance(level02.props.Lantern4700ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern4700ID = nil
Gear.UnbindInstance(level02.props.Lantern7704ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern7704ID = nil
Gear.UnbindInstance(level02.props.Lantern8705ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern8705ID = nil
Gear.UnbindInstance(level02.props.Lantern9706ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern9706ID = nil
Gear.UnbindInstance(level02.props.Lantern10707ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern10707ID = nil
Gear.UnbindInstance(level02.props.Lantern11708ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern11708ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider3709ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3709ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider47710ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47710ID = nil





















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
level03.props.t2s1029ID = {}
level03.props.t2s1029ID.model = Assets.LoadModel('Models/tile2_s10.model')
level03.props.t2s1029ID.transformID = Gear.BindStaticInstance(level03.props.t2s1029ID.model)
Transform.SetPosition(level03.props.t2s1029ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t2s1029ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t2s1029ID.transformID, {x=0, y=0, z=0})
level03.props.t2s11a30ID = {}
level03.props.t2s11a30ID.model = Assets.LoadModel('Models/tile2_s11a.model')
level03.props.t2s11a30ID.transformID = Gear.BindStaticInstance(level03.props.t2s11a30ID.model)
Transform.SetPosition(level03.props.t2s11a30ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t2s11a30ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t2s11a30ID.transformID, {x=0, y=0, z=0})
level03.props.t3s134ID = {}
level03.props.t3s134ID.model = Assets.LoadModel('Models/tile3_s1.model')
level03.props.t3s134ID.transformID = Gear.BindStaticInstance(level03.props.t3s134ID.model)
Transform.SetPosition(level03.props.t3s134ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s134ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s134ID.transformID, {x=0, y=0, z=0})
level03.props.tile335ID = {}
level03.props.t3s241ID = {}
level03.props.t3s241ID.model = Assets.LoadModel('Models/tile3_s2.model')
level03.props.t3s241ID.transformID = Gear.BindStaticInstance(level03.props.t3s241ID.model)
Transform.SetPosition(level03.props.t3s241ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s241ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s241ID.transformID, {x=0, y=0, z=0})
level03.props.t3s342ID = {}
level03.props.t3s342ID.model = Assets.LoadModel('Models/tile3_s3.model')
level03.props.t3s342ID.transformID = Gear.BindStaticInstance(level03.props.t3s342ID.model)
Transform.SetPosition(level03.props.t3s342ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s342ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s342ID.transformID, {x=0, y=0, z=0})
level03.props.t3s443ID = {}
level03.props.t3s443ID.model = Assets.LoadModel('Models/tile3_s4.model')
level03.props.t3s443ID.transformID = Gear.BindStaticInstance(level03.props.t3s443ID.model)
Transform.SetPosition(level03.props.t3s443ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s443ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s443ID.transformID, {x=0, y=0, z=0})
level03.colliders.Tile3_wallNr319ID = {}
level03.colliders.Tile3_wallNr319ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr319ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr319ID.collider:SetZAxis(1,0,0)
level03.colliders.Tile3_wallNr319ID.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.Tile3_wallNr319ID.collider:SetPos(388.5,36.4629,157)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr319ID.collider, 3)
level03.colliders.Tile3_wallNr1320ID = {}
level03.colliders.Tile3_wallNr1320ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr1320ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr1320ID.collider:SetZAxis(0.980581,0,0.196116)
level03.colliders.Tile3_wallNr1320ID.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.Tile3_wallNr1320ID.collider:SetPos(398,36.3044,158)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr1320ID.collider, 3)
level03.colliders.Tile3_wallNr2321ID = {}
level03.colliders.Tile3_wallNr2321ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr2321ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr2321ID.collider:SetZAxis(0.707107,0,0.707107)
level03.colliders.Tile3_wallNr2321ID.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.Tile3_wallNr2321ID.collider:SetPos(404,36.146,160)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr2321ID.collider, 3)
level03.colliders.Tile3_wallNr3322ID = {}
level03.colliders.Tile3_wallNr3322ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr3322ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr3322ID.collider:SetZAxis(0.5547,0,0.83205)
level03.colliders.Tile3_wallNr3322ID.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.Tile3_wallNr3322ID.collider:SetPos(406,36.3044,162.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr3322ID.collider, 3)
level03.colliders.Tile3_wallNr4323ID = {}
level03.colliders.Tile3_wallNr4323ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr4323ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr4323ID.collider:SetZAxis(0.447214,0,0.894427)
level03.colliders.Tile3_wallNr4323ID.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.Tile3_wallNr4323ID.collider:SetPos(409,36.4629,168)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr4323ID.collider, 3)
level03.colliders.Tile3_wallNr5324ID = {}
level03.colliders.Tile3_wallNr5324ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr5324ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr5324ID.collider:SetZAxis(0.351123,0,0.936329)
level03.colliders.Tile3_wallNr5324ID.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.Tile3_wallNr5324ID.collider:SetPos(412.5,36.7798,176)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr5324ID.collider, 3)
level03.colliders.Tile3_wallNr6325ID = {}
level03.colliders.Tile3_wallNr6325ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr6325ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr6325ID.collider:SetZAxis(0.287348,0,0.957826)
level03.colliders.Tile3_wallNr6325ID.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.Tile3_wallNr6325ID.collider:SetPos(415.5,37.5722,185)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr6325ID.collider, 3)
level03.colliders.Tile3_wallNr7326ID = {}
level03.colliders.Tile3_wallNr7326ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr7326ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr7326ID.collider:SetZAxis(0.178885,0,0.98387)
level03.colliders.Tile3_wallNr7326ID.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.Tile3_wallNr7326ID.collider:SetPos(418,38.2061,195.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr7326ID.collider, 3)
level03.colliders.Tile3_wallNr8327ID = {}
level03.colliders.Tile3_wallNr8327ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr8327ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr8327ID.collider:SetZAxis(0.066519,0,0.997785)
level03.colliders.Tile3_wallNr8327ID.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.Tile3_wallNr8327ID.collider:SetPos(419.5,40.2662,208.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr8327ID.collider, 3)
level03.colliders.Tile3_wallNr9328ID = {}
level03.colliders.Tile3_wallNr9328ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr9328ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr9328ID.collider:SetZAxis(-0.196116,0,0.980581)
level03.colliders.Tile3_wallNr9328ID.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.Tile3_wallNr9328ID.collider:SetPos(418.5,44.5448,223.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr9328ID.collider, 3)
level03.colliders.Tile3_wallNr10329ID = {}
level03.colliders.Tile3_wallNr10329ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr10329ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr10329ID.collider:SetZAxis(-0.242536,0,0.970143)
level03.colliders.Tile3_wallNr10329ID.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.Tile3_wallNr10329ID.collider:SetPos(416,48.3481,235)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr10329ID.collider, 3)
level03.colliders.Tile3_wallNr11330ID = {}
level03.colliders.Tile3_wallNr11330ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr11330ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr11330ID.collider:SetZAxis(0.919145,0,0.393919)
level03.colliders.Tile3_wallNr11330ID.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.Tile3_wallNr11330ID.collider:SetPos(422,50.7251,242)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr11330ID.collider, 3)
level03.colliders.Tile3_wallNr12331ID = {}
level03.colliders.Tile3_wallNr12331ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr12331ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr12331ID.collider:SetZAxis(0.573462,0,0.819232)
level03.colliders.Tile3_wallNr12331ID.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.Tile3_wallNr12331ID.collider:SetPos(432.5,51.5175,250)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr12331ID.collider, 3)
level03.colliders.Tile3_wallNr14332ID = {}
level03.colliders.Tile3_wallNr14332ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr14332ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr14332ID.collider:SetZAxis(-0.0370117,0,-0.999315)
level03.colliders.Tile3_wallNr14332ID.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.Tile3_wallNr14332ID.collider:SetPos(511.5,41.5339,241.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr14332ID.collider, 3)
level03.colliders.Tile3_wallNr15333ID = {}
level03.colliders.Tile3_wallNr15333ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr15333ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr15333ID.collider:SetZAxis(-0.141421,0,-0.98995)
level03.colliders.Tile3_wallNr15333ID.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.Tile3_wallNr15333ID.collider:SetPos(510,41.8508,221)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr15333ID.collider, 3)
level03.colliders.Tile3_wallNr16334ID = {}
level03.colliders.Tile3_wallNr16334ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr16334ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr16334ID.collider:SetZAxis(-0.316228,0,-0.948683)
level03.colliders.Tile3_wallNr16334ID.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.Tile3_wallNr16334ID.collider:SetPos(506.5,42.1678,206.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr16334ID.collider, 3)
level03.colliders.Tile3_wallNr17335ID = {}
level03.colliders.Tile3_wallNr17335ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr17335ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr17335ID.collider:SetZAxis(-0.362446,0,-0.932005)
level03.colliders.Tile3_wallNr17335ID.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.Tile3_wallNr17335ID.collider:SetPos(500.5,41.8508,190)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr17335ID.collider, 3)
level03.colliders.Tile3_wallNr18336ID = {}
level03.colliders.Tile3_wallNr18336ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr18336ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr18336ID.collider:SetZAxis(-0.485643,0,-0.874157)
level03.colliders.Tile3_wallNr18336ID.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.Tile3_wallNr18336ID.collider:SetPos(492,41.217,172)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr18336ID.collider, 3)
level03.colliders.Tile3_wallNr19337ID = {}
level03.colliders.Tile3_wallNr19337ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr19337ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr19337ID.collider:SetZAxis(-0.576683,0,-0.816968)
level03.colliders.Tile3_wallNr19337ID.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.Tile3_wallNr19337ID.collider:SetPos(481,39.7907,154.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr19337ID.collider, 3)
level03.colliders.Tile3_wallNr20338ID = {}
level03.colliders.Tile3_wallNr20338ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr20338ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr20338ID.collider:SetZAxis(-0.870563,0,-0.492057)
level03.colliders.Tile3_wallNr20338ID.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.Tile3_wallNr20338ID.collider:SetPos(463.5,38.2061,139.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr20338ID.collider, 3)
level03.colliders.Tile3_wallNr21339ID = {}
level03.colliders.Tile3_wallNr21339ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr21339ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr21339ID.collider:SetZAxis(-0.963518,0,-0.267644)
level03.colliders.Tile3_wallNr21339ID.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.Tile3_wallNr21339ID.collider:SetPos(443,36.7798,130.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr21339ID.collider, 3)
level03.colliders.Tile3_wallNr22340ID = {}
level03.colliders.Tile3_wallNr22340ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr22340ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr22340ID.collider:SetZAxis(-0.863779,0,0.503871)
level03.colliders.Tile3_wallNr22340ID.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.Tile3_wallNr22340ID.collider:SetPos(428,35.829,131.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr22340ID.collider, 3)
level03.colliders.Tile3_wallNr23341ID = {}
level03.colliders.Tile3_wallNr23341ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr23341ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr23341ID.collider:SetZAxis(-0.903738,0,0.428086)
level03.colliders.Tile3_wallNr23341ID.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.Tile3_wallNr23341ID.collider:SetPos(412.5,35.5121,139.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr23341ID.collider, 3)
level03.colliders.Tile3_wallNr24342ID = {}
level03.colliders.Tile3_wallNr24342ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr24342ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr24342ID.collider:SetZAxis(-0.948683,0,0.316228)
level03.colliders.Tile3_wallNr24342ID.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.Tile3_wallNr24342ID.collider:SetPos(401.5,35.3536,144.5)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr24342ID.collider, 3)
level03.colliders.Tile3_wallNr25343ID = {}
level03.colliders.Tile3_wallNr25343ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr25343ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr25343ID.collider:SetZAxis(-1,0,0)
level03.colliders.Tile3_wallNr25343ID.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.Tile3_wallNr25343ID.collider:SetPos(392,35.3536,145)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr25343ID.collider, 3)
level03.colliders.Tile3_wallNr26344ID = {}
level03.colliders.Tile3_wallNr26344ID.collider = OBBCollider.Create(-1)
level03.colliders.Tile3_wallNr26344ID.collider:SetOffset(0,0,0)
level03.colliders.Tile3_wallNr26344ID.collider:SetZAxis(0,0,1)
level03.colliders.Tile3_wallNr26344ID.collider:SetHalfLengths(0.3,5,1)
level03.colliders.Tile3_wallNr26344ID.collider:SetPos(384,35.1951,146)
CollisionHandler.AddOBB(level03.colliders.Tile3_wallNr26344ID.collider, 3)
end
level03.unload = function()
Gear.UnbindInstance(level03.props.t2s1029ID.transformID)
Assets.UnloadModel('Models/tile2_s10.model')
level03.props.t2s1029ID = nil
Gear.UnbindInstance(level03.props.t2s11a30ID.transformID)
Assets.UnloadModel('Models/tile2_s11a.model')
level03.props.t2s11a30ID = nil
Gear.UnbindInstance(level03.props.t3s134ID.transformID)
Assets.UnloadModel('Models/tile3_s1.model')
level03.props.t3s134ID = nil
level03.props.tile335ID = nil
Gear.UnbindInstance(level03.props.t3s241ID.transformID)
Assets.UnloadModel('Models/tile3_s2.model')
level03.props.t3s241ID = nil
Gear.UnbindInstance(level03.props.t3s342ID.transformID)
Assets.UnloadModel('Models/tile3_s3.model')
level03.props.t3s342ID = nil
Gear.UnbindInstance(level03.props.t3s443ID.transformID)
Assets.UnloadModel('Models/tile3_s4.model')
level03.props.t3s443ID = nil
level03.colliders.Tile3_wallNr319ID = nil
level03.colliders.Tile3_wallNr1320ID = nil
level03.colliders.Tile3_wallNr2321ID = nil
level03.colliders.Tile3_wallNr3322ID = nil
level03.colliders.Tile3_wallNr4323ID = nil
level03.colliders.Tile3_wallNr5324ID = nil
level03.colliders.Tile3_wallNr6325ID = nil
level03.colliders.Tile3_wallNr7326ID = nil
level03.colliders.Tile3_wallNr8327ID = nil
level03.colliders.Tile3_wallNr9328ID = nil
level03.colliders.Tile3_wallNr10329ID = nil
level03.colliders.Tile3_wallNr11330ID = nil
level03.colliders.Tile3_wallNr12331ID = nil
level03.colliders.Tile3_wallNr14332ID = nil
level03.colliders.Tile3_wallNr15333ID = nil
level03.colliders.Tile3_wallNr16334ID = nil
level03.colliders.Tile3_wallNr17335ID = nil
level03.colliders.Tile3_wallNr18336ID = nil
level03.colliders.Tile3_wallNr19337ID = nil
level03.colliders.Tile3_wallNr20338ID = nil
level03.colliders.Tile3_wallNr21339ID = nil
level03.colliders.Tile3_wallNr22340ID = nil
level03.colliders.Tile3_wallNr23341ID = nil
level03.colliders.Tile3_wallNr24342ID = nil
level03.colliders.Tile3_wallNr25343ID = nil
level03.colliders.Tile3_wallNr26344ID = nil
level03.props = nil
level03.colliders = nil
level03.triggers = nil
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
level04.props.tile436ID = {}
level04.props.t4s144ID = {}
level04.props.t4s144ID.model = Assets.LoadModel('Models/tile4_s1.model')
level04.props.t4s144ID.transformID = Gear.BindStaticInstance(level04.props.t4s144ID.model)
Transform.SetPosition(level04.props.t4s144ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s144ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s144ID.transformID, {x=0, y=0, z=0})
level04.props.t4s245ID = {}
level04.props.t4s245ID.model = Assets.LoadModel('Models/tile4_s2.model')
level04.props.t4s245ID.transformID = Gear.BindStaticInstance(level04.props.t4s245ID.model)
Transform.SetPosition(level04.props.t4s245ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s245ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s245ID.transformID, {x=0, y=0, z=0})
level04.props.t4s346ID = {}
level04.props.t4s346ID.model = Assets.LoadModel('Models/tile4_s3.model')
level04.props.t4s346ID.transformID = Gear.BindStaticInstance(level04.props.t4s346ID.model)
Transform.SetPosition(level04.props.t4s346ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s346ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s346ID.transformID, {x=0, y=0, z=0})
level04.props.t4s447ID = {}
level04.props.t4s447ID.model = Assets.LoadModel('Models/tile4_s4.model')
level04.props.t4s447ID.transformID = Gear.BindStaticInstance(level04.props.t4s447ID.model)
Transform.SetPosition(level04.props.t4s447ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s447ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s447ID.transformID, {x=0, y=0, z=0})
level04.colliders.Tile4_wallNr345ID = {}
level04.colliders.Tile4_wallNr345ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr345ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr345ID.collider:SetZAxis(0,0,1)
level04.colliders.Tile4_wallNr345ID.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.Tile4_wallNr345ID.collider:SetPos(512,41.5953,300.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr345ID.collider, 3)
level04.colliders.Tile4_wallNr1346ID = {}
level04.colliders.Tile4_wallNr1346ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr1346ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr1346ID.collider:SetZAxis(-0.470588,0,0.882353)
level04.colliders.Tile4_wallNr1346ID.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.Tile4_wallNr1346ID.collider:SetPos(508,34.7835,352.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr1346ID.collider, 3)
level04.colliders.Tile4_wallNr2347ID = {}
level04.colliders.Tile4_wallNr2347ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr2347ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr2347ID.collider:SetZAxis(-0.316228,0,0.948683)
level04.colliders.Tile4_wallNr2347ID.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.Tile4_wallNr2347ID.collider:SetPos(502.5,35.8052,364.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr2347ID.collider, 3)
level04.colliders.Tile4_wallNr3348ID = {}
level04.colliders.Tile4_wallNr3348ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr3348ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr3348ID.collider:SetZAxis(0.393919,0,0.919145)
level04.colliders.Tile4_wallNr3348ID.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.Tile4_wallNr3348ID.collider:SetPos(502.5,37.0541,372.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr3348ID.collider, 3)
level04.colliders.Tile4_wallNr4349ID = {}
level04.colliders.Tile4_wallNr4349ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr4349ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr4349ID.collider:SetZAxis(0.496139,0,0.868243)
level04.colliders.Tile4_wallNr4349ID.collider:SetHalfLengths(0.3,5.90825,4.03113)
level04.colliders.Tile4_wallNr4349ID.collider:SetPos(506,37.7352,379.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr4349ID.collider, 3)
level04.colliders.Tile4_wallNr5350ID = {}
level04.colliders.Tile4_wallNr5350ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr5350ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr5350ID.collider:SetZAxis(0.178885,0,0.98387)
level04.colliders.Tile4_wallNr5350ID.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.Tile4_wallNr5350ID.collider:SetPos(474,40.2329,303.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr5350ID.collider, 3)
level04.colliders.Tile4_wallNr6351ID = {}
level04.colliders.Tile4_wallNr6351ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr6351ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr6351ID.collider:SetZAxis(-0.106533,0,0.994309)
level04.colliders.Tile4_wallNr6351ID.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.Tile4_wallNr6351ID.collider:SetPos(475.5,42.39,334)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr6351ID.collider, 3)
level04.colliders.Tile4_wallNr7352ID = {}
level04.colliders.Tile4_wallNr7352ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr7352ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr7352ID.collider:SetZAxis(0.0854011,0,0.996347)
level04.colliders.Tile4_wallNr7352ID.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.Tile4_wallNr7352ID.collider:SetPos(475.5,43.9794,365.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr7352ID.collider, 3)
level04.colliders.Tile4_wallNr8353ID = {}
level04.colliders.Tile4_wallNr8353ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr8353ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr8353ID.collider:SetZAxis(-0.613941,0,0.789352)
level04.colliders.Tile4_wallNr8353ID.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.Tile4_wallNr8353ID.collider:SetPos(467.5,40.2329,291.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr8353ID.collider, 3)
level04.colliders.Tile4_wallNr9354ID = {}
level04.colliders.Tile4_wallNr9354ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr9354ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr9354ID.collider:SetZAxis(0.196116,0,0.980581)
level04.colliders.Tile4_wallNr9354ID.collider:SetHalfLengths(0.3,5.68119,10.198)
level04.colliders.Tile4_wallNr9354ID.collider:SetPos(466,50.5642,306)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr9354ID.collider, 3)
level04.colliders.Tile4_wallNr10355ID = {}
level04.colliders.Tile4_wallNr10355ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr10355ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr10355ID.collider:SetZAxis(0.0525588,0,0.998618)
level04.colliders.Tile4_wallNr10355ID.collider:SetHalfLengths(0.3,8.29239,9.51315)
level04.colliders.Tile4_wallNr10355ID.collider:SetPos(468.5,51.2454,325.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr10355ID.collider, 3)
level04.colliders.Tile4_wallNr11356ID = {}
level04.colliders.Tile4_wallNr11356ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr11356ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr11356ID.collider:SetZAxis(0.039968,0,0.999201)
level04.colliders.Tile4_wallNr11356ID.collider:SetHalfLengths(0.3,6.81649,12.51)
level04.colliders.Tile4_wallNr11356ID.collider:SetPos(469.5,54.5378,347.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr11356ID.collider, 3)
level04.colliders.Tile4_wallNr12357ID = {}
level04.colliders.Tile4_wallNr12357ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr12357ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr12357ID.collider:SetZAxis(0,0,1)
level04.colliders.Tile4_wallNr12357ID.collider:SetHalfLengths(0.3,7.49767,11.5)
level04.colliders.Tile4_wallNr12357ID.collider:SetPos(470,56.3543,371.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr12357ID.collider, 3)
level04.colliders.Tile4_wallNr14358ID = {}
level04.colliders.Tile4_wallNr14358ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr14358ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr14358ID.collider:SetZAxis(0,0,1)
level04.colliders.Tile4_wallNr14358ID.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.Tile4_wallNr14358ID.collider:SetPos(435,52.8348,263)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr14358ID.collider, 3)
level04.colliders.Tile4_wallNr15359ID = {}
level04.colliders.Tile4_wallNr15359ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr15359ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr15359ID.collider:SetZAxis(0.0738717,0,0.997268)
level04.colliders.Tile4_wallNr15359ID.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.Tile4_wallNr15359ID.collider:SetPos(436,53.9701,283.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr15359ID.collider, 3)
level04.colliders.Tile4_wallNr16360ID = {}
level04.colliders.Tile4_wallNr16360ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr16360ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr16360ID.collider:SetZAxis(0.157991,0,0.987441)
level04.colliders.Tile4_wallNr16360ID.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.Tile4_wallNr16360ID.collider:SetPos(439,55.7866,309.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr16360ID.collider, 3)
level04.colliders.Tile4_wallNr17361ID = {}
level04.colliders.Tile4_wallNr17361ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr17361ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr17361ID.collider:SetZAxis(0.22486,0,0.974391)
level04.colliders.Tile4_wallNr17361ID.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.Tile4_wallNr17361ID.collider:SetPos(442.5,56.1272,328.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr17361ID.collider, 3)
level04.colliders.Tile4_wallNr18362ID = {}
level04.colliders.Tile4_wallNr18362ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr18362ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr18362ID.collider:SetZAxis(0.371391,0,0.928477)
level04.colliders.Tile4_wallNr18362ID.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.Tile4_wallNr18362ID.collider:SetPos(447,57.2625,342.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr18362ID.collider, 3)
level04.colliders.Tile4_wallNr19363ID = {}
level04.colliders.Tile4_wallNr19363ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr19363ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr19363ID.collider:SetZAxis(0.0766965,0,0.997055)
level04.colliders.Tile4_wallNr19363ID.collider:SetHalfLengths(0.3,5.90825,6.5192)
level04.colliders.Tile4_wallNr19363ID.collider:SetPos(450.5,60.2143,356.5)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr19363ID.collider, 3)
level04.colliders.Tile4_wallNr20364ID = {}
level04.colliders.Tile4_wallNr20364ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr20364ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr20364ID.collider:SetZAxis(0.0995037,0,0.995037)
level04.colliders.Tile4_wallNr20364ID.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.Tile4_wallNr20364ID.collider:SetPos(452,61.1226,373)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr20364ID.collider, 3)
level04.colliders.Tile4_wallNr21365ID = {}
level04.colliders.Tile4_wallNr21365ID.collider = OBBCollider.Create(-1)
level04.colliders.Tile4_wallNr21365ID.collider:SetOffset(0,0,0)
level04.colliders.Tile4_wallNr21365ID.collider:SetZAxis(1,0,0)
level04.colliders.Tile4_wallNr21365ID.collider:SetHalfLengths(0.3,19.5319,3.5)
level04.colliders.Tile4_wallNr21365ID.collider:SetPos(473.5,58.852,383)
CollisionHandler.AddOBB(level04.colliders.Tile4_wallNr21365ID.collider, 3)
level04.props.New1444ID = {}
Light.addLight(495.343, 43.5625, 415.697, 0, 1, 1, 100,3)
end
level04.unload = function()
level04.props.tile436ID = nil
Gear.UnbindInstance(level04.props.t4s144ID.transformID)
Assets.UnloadModel('Models/tile4_s1.model')
level04.props.t4s144ID = nil
Gear.UnbindInstance(level04.props.t4s245ID.transformID)
Assets.UnloadModel('Models/tile4_s2.model')
level04.props.t4s245ID = nil
Gear.UnbindInstance(level04.props.t4s346ID.transformID)
Assets.UnloadModel('Models/tile4_s3.model')
level04.props.t4s346ID = nil
Gear.UnbindInstance(level04.props.t4s447ID.transformID)
Assets.UnloadModel('Models/tile4_s4.model')
level04.props.t4s447ID = nil
level04.colliders.Tile4_wallNr345ID = nil
level04.colliders.Tile4_wallNr1346ID = nil
level04.colliders.Tile4_wallNr2347ID = nil
level04.colliders.Tile4_wallNr3348ID = nil
level04.colliders.Tile4_wallNr4349ID = nil
level04.colliders.Tile4_wallNr5350ID = nil
level04.colliders.Tile4_wallNr6351ID = nil
level04.colliders.Tile4_wallNr7352ID = nil
level04.colliders.Tile4_wallNr8353ID = nil
level04.colliders.Tile4_wallNr9354ID = nil
level04.colliders.Tile4_wallNr10355ID = nil
level04.colliders.Tile4_wallNr11356ID = nil
level04.colliders.Tile4_wallNr12357ID = nil
level04.colliders.Tile4_wallNr14358ID = nil
level04.colliders.Tile4_wallNr15359ID = nil
level04.colliders.Tile4_wallNr16360ID = nil
level04.colliders.Tile4_wallNr17361ID = nil
level04.colliders.Tile4_wallNr18362ID = nil
level04.colliders.Tile4_wallNr19363ID = nil
level04.colliders.Tile4_wallNr20364ID = nil
level04.colliders.Tile4_wallNr21365ID = nil
level04.props.New1444ID = nil
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
level05.props.tile537ID = {}
level05.props.t5s148ID = {}
level05.props.t5s148ID.model = Assets.LoadModel('Models/tile5_s1.model')
level05.props.t5s148ID.transformID = Gear.BindStaticInstance(level05.props.t5s148ID.model)
Transform.SetPosition(level05.props.t5s148ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s148ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s148ID.transformID, {x=0, y=0, z=0})
level05.props.t5s249ID = {}
level05.props.t5s249ID.model = Assets.LoadModel('Models/tile5_s2.model')
level05.props.t5s249ID.transformID = Gear.BindStaticInstance(level05.props.t5s249ID.model)
Transform.SetPosition(level05.props.t5s249ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s249ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s249ID.transformID, {x=0, y=0, z=0})
level05.props.t5s350ID = {}
level05.props.t5s350ID.model = Assets.LoadModel('Models/tile5_s3.model')
level05.props.t5s350ID.transformID = Gear.BindStaticInstance(level05.props.t5s350ID.model)
Transform.SetPosition(level05.props.t5s350ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s350ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s350ID.transformID, {x=0, y=0, z=0})
level05.props.t5s451ID = {}
level05.props.t5s451ID.model = Assets.LoadModel('Models/tile5_s4.model')
level05.props.t5s451ID.transformID = Gear.BindStaticInstance(level05.props.t5s451ID.model)
Transform.SetPosition(level05.props.t5s451ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s451ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s451ID.transformID, {x=0, y=0, z=0})
level05.props.t5s552ID = {}
level05.props.t5s552ID.model = Assets.LoadModel('Models/tile5_s5.model')
level05.props.t5s552ID.transformID = Gear.BindStaticInstance(level05.props.t5s552ID.model)
Transform.SetPosition(level05.props.t5s552ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s552ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s552ID.transformID, {x=0, y=0, z=0})
level05.props.t5s653ID = {}
level05.props.t5s653ID.model = Assets.LoadModel('Models/tile5_s6.model')
level05.props.t5s653ID.transformID = Gear.BindStaticInstance(level05.props.t5s653ID.model)
Transform.SetPosition(level05.props.t5s653ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s653ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s653ID.transformID, {x=0, y=0, z=0})
level05.colliders.Tile5_wallNr442ID = {}
level05.colliders.Tile5_wallNr442ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr442ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr442ID.collider:SetZAxis(0.164399,0,0.986394)
level05.colliders.Tile5_wallNr442ID.collider:SetHalfLengths(0.3,5,3.04138)
level05.colliders.Tile5_wallNr442ID.collider:SetPos(509.5,38.8167,388)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr442ID.collider, 3)
level05.colliders.Tile5_wallNr1443ID = {}
level05.colliders.Tile5_wallNr1443ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr1443ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr1443ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr1443ID.collider:SetHalfLengths(0.3,6.04229,3.53553)
level05.colliders.Tile5_wallNr1443ID.collider:SetPos(510.5,38.8167,394.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr1443ID.collider, 3)
level05.colliders.Tile5_wallNr2445ID = {}
level05.colliders.Tile5_wallNr2445ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr2445ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr2445ID.collider:SetZAxis(0.6,0,0.8)
level05.colliders.Tile5_wallNr2445ID.collider:SetHalfLengths(0.3,9.42971,5)
level05.colliders.Tile5_wallNr2445ID.collider:SetPos(514,39.859,402)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr2445ID.collider, 3)
level05.colliders.Tile5_wallNr3446ID = {}
level05.colliders.Tile5_wallNr3446ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr3446ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr3446ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr3446ID.collider:SetHalfLengths(0.3,9.69028,4.24264)
level05.colliders.Tile5_wallNr3446ID.collider:SetPos(520,44.2887,409)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr3446ID.collider, 3)
level05.colliders.Tile5_wallNr4447ID = {}
level05.colliders.Tile5_wallNr4447ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr4447ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr4447ID.collider:SetZAxis(0.8,0,0.6)
level05.colliders.Tile5_wallNr4447ID.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.Tile5_wallNr4447ID.collider:SetPos(525,48.979,413.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr4447ID.collider, 3)
level05.colliders.Tile5_wallNr5448ID = {}
level05.colliders.Tile5_wallNr5448ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr5448ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr5448ID.collider:SetZAxis(0.880471,0,0.4741)
level05.colliders.Tile5_wallNr5448ID.collider:SetHalfLengths(0.3,5.52114,7.38241)
level05.colliders.Tile5_wallNr5448ID.collider:SetPos(533.5,49.2396,418.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr5448ID.collider, 3)
level05.colliders.Tile5_wallNr6449ID = {}
level05.colliders.Tile5_wallNr6449ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr6449ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr6449ID.collider:SetZAxis(0.923077,0,0.384615)
level05.colliders.Tile5_wallNr6449ID.collider:SetHalfLengths(0.3,6.56343,6.5)
level05.colliders.Tile5_wallNr6449ID.collider:SetPos(546,48.7184,424.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr6449ID.collider, 3)
level05.colliders.Tile5_wallNr7450ID = {}
level05.colliders.Tile5_wallNr7450ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr7450ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr7450ID.collider:SetZAxis(0.933346,0,0.358979)
level05.colliders.Tile5_wallNr7450ID.collider:SetHalfLengths(0.3,7.86628,6.96419)
level05.colliders.Tile5_wallNr7450ID.collider:SetPos(558.5,50.2819,429.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr7450ID.collider, 3)
level05.colliders.Tile5_wallNr8451ID = {}
level05.colliders.Tile5_wallNr8451ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr8451ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr8451ID.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.Tile5_wallNr8451ID.collider:SetHalfLengths(0.3,6.30286,8.74643)
level05.colliders.Tile5_wallNr8451ID.collider:SetPos(572.5,53.1481,436.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr8451ID.collider, 3)
level05.colliders.Tile5_wallNr9452ID = {}
level05.colliders.Tile5_wallNr9452ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr9452ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr9452ID.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.Tile5_wallNr9452ID.collider:SetHalfLengths(0.3,6.824,2.91548)
level05.colliders.Tile5_wallNr9452ID.collider:SetPos(582.5,54.451,442.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr9452ID.collider, 3)
level05.colliders.Tile5_wallNr10453ID = {}
level05.colliders.Tile5_wallNr10453ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr10453ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr10453ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr10453ID.collider:SetHalfLengths(0.3,6.30286,1.41421)
level05.colliders.Tile5_wallNr10453ID.collider:SetPos(586,56.275,445)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr10453ID.collider, 3)
level05.colliders.Tile5_wallNr11454ID = {}
level05.colliders.Tile5_wallNr11454ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr11454ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr11454ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr11454ID.collider:SetHalfLengths(0.3,5.78172,2.23607)
level05.colliders.Tile5_wallNr11454ID.collider:SetPos(588,57.5778,448)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr11454ID.collider, 3)
level05.colliders.Tile5_wallNr12455ID = {}
level05.colliders.Tile5_wallNr12455ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr12455ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr12455ID.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.Tile5_wallNr12455ID.collider:SetHalfLengths(0.3,6.30286,4.92443)
level05.colliders.Tile5_wallNr12455ID.collider:SetPos(591,58.3596,454.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr12455ID.collider, 3)
level05.colliders.Tile5_wallNr13456ID = {}
level05.colliders.Tile5_wallNr13456ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr13456ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr13456ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr13456ID.collider:SetHalfLengths(0.3,6.56343,4.47214)
level05.colliders.Tile5_wallNr13456ID.collider:SetPos(595,59.6624,463)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr13456ID.collider, 3)
level05.colliders.Tile5_wallNr14457ID = {}
level05.colliders.Tile5_wallNr14457ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr14457ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr14457ID.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.Tile5_wallNr14457ID.collider:SetHalfLengths(0.3,8.12685,6.32456)
level05.colliders.Tile5_wallNr14457ID.collider:SetPos(599,61.2258,473)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr14457ID.collider, 3)
level05.colliders.Tile5_wallNr15458ID = {}
level05.colliders.Tile5_wallNr15458ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr15458ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr15458ID.collider:SetZAxis(0.341743,0,0.939793)
level05.colliders.Tile5_wallNr15458ID.collider:SetHalfLengths(0.3,11.2537,11.7047)
level05.colliders.Tile5_wallNr15458ID.collider:SetPos(605,64.3527,490)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr15458ID.collider, 3)
level05.colliders.Tile5_wallNr16459ID = {}
level05.colliders.Tile5_wallNr16459ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr16459ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr16459ID.collider:SetZAxis(0.066519,0,0.997785)
level05.colliders.Tile5_wallNr16459ID.collider:SetHalfLengths(0.3,7.86629,7.51665)
level05.colliders.Tile5_wallNr16459ID.collider:SetPos(609.5,70.6064,508.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr16459ID.collider, 3)
level05.colliders.Tile5_wallNr17460ID = {}
level05.colliders.Tile5_wallNr17460ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr17460ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr17460ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr17460ID.collider:SetHalfLengths(0.3,7.34514,9)
level05.colliders.Tile5_wallNr17460ID.collider:SetPos(610,73.4727,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr17460ID.collider, 3)
level05.colliders.Tile5_wallNr18461ID = {}
level05.colliders.Tile5_wallNr18461ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr18461ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr18461ID.collider:SetZAxis(0.0830455,0,0.996546)
level05.colliders.Tile5_wallNr18461ID.collider:SetHalfLengths(0.3,9.69028,12.0416)
level05.colliders.Tile5_wallNr18461ID.collider:SetPos(611,75.8178,546)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr18461ID.collider, 3)
level05.colliders.Tile5_wallNr19462ID = {}
level05.colliders.Tile5_wallNr19462ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr19462ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr19462ID.collider:SetZAxis(0.0738717,0,0.997268)
level05.colliders.Tile5_wallNr19462ID.collider:SetHalfLengths(0.3,9.42972,13.537)
level05.colliders.Tile5_wallNr19462ID.collider:SetPos(613,80.5081,571.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr19462ID.collider, 3)
level05.colliders.Tile5_wallNr20463ID = {}
level05.colliders.Tile5_wallNr20463ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr20463ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr20463ID.collider:SetZAxis(0.242536,0,0.970143)
level05.colliders.Tile5_wallNr20463ID.collider:SetHalfLengths(0.3,5.52113,2.06155)
level05.colliders.Tile5_wallNr20463ID.collider:SetPos(614.5,84.9378,587)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr20463ID.collider, 3)
level05.colliders.Tile5_wallNr21464ID = {}
level05.colliders.Tile5_wallNr21464ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr21464ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr21464ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr21464ID.collider:SetHalfLengths(0.3,5.78172,1.11803)
level05.colliders.Tile5_wallNr21464ID.collider:SetPos(615.5,85.459,590)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr21464ID.collider, 3)
level05.colliders.Tile5_wallNr22465ID = {}
level05.colliders.Tile5_wallNr22465ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr22465ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr22465ID.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.Tile5_wallNr22465ID.collider:SetHalfLengths(0.3,5.52114,1.11803)
level05.colliders.Tile5_wallNr22465ID.collider:SetPos(617,86.2407,591.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr22465ID.collider, 3)
level05.colliders.Tile5_wallNr23466ID = {}
level05.colliders.Tile5_wallNr23466ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr23466ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr23466ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr23466ID.collider:SetHalfLengths(0.3,5.26057,11)
level05.colliders.Tile5_wallNr23466ID.collider:SetPos(629,86.7618,592)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr23466ID.collider, 3)
level05.colliders.Tile5_wallNr24467ID = {}
level05.colliders.Tile5_wallNr24467ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr24467ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr24467ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr24467ID.collider:SetHalfLengths(0.3,5,16)
level05.colliders.Tile5_wallNr24467ID.collider:SetPos(640,86.5012,608)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr24467ID.collider, 3)
level05.colliders.Tile5_wallNr25468ID = {}
level05.colliders.Tile5_wallNr25468ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr25468ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr25468ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr25468ID.collider:SetHalfLengths(0.3,5.52114,2.82843)
level05.colliders.Tile5_wallNr25468ID.collider:SetPos(638,86.5012,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr25468ID.collider, 3)
level05.colliders.Tile5_wallNr26469ID = {}
level05.colliders.Tile5_wallNr26469ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr26469ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr26469ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr26469ID.collider:SetHalfLengths(0.3,5.26057,2.82843)
level05.colliders.Tile5_wallNr26469ID.collider:SetPos(634,87.0224,630)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr26469ID.collider, 3)
level05.colliders.Tile5_wallNr27470ID = {}
level05.colliders.Tile5_wallNr27470ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr27470ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr27470ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr27470ID.collider:SetHalfLengths(0.3,5.26057,4.94975)
level05.colliders.Tile5_wallNr27470ID.collider:SetPos(628.5,86.7618,635.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr27470ID.collider, 3)
level05.colliders.Tile5_wallNr28471ID = {}
level05.colliders.Tile5_wallNr28471ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr28471ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr28471ID.collider:SetZAxis(-1,0,0)
level05.colliders.Tile5_wallNr28471ID.collider:SetHalfLengths(0.3,6.04229,5.5)
level05.colliders.Tile5_wallNr28471ID.collider:SetPos(619.5,86.5012,639)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr28471ID.collider, 3)
level05.colliders.Tile5_wallNr29472ID = {}
level05.colliders.Tile5_wallNr29472ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr29472ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr29472ID.collider:SetZAxis(-0.196116,0,-0.980581)
level05.colliders.Tile5_wallNr29472ID.collider:SetHalfLengths(0.3,5.26056,2.54951)
level05.colliders.Tile5_wallNr29472ID.collider:SetPos(613.5,85.459,636.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr29472ID.collider, 3)
level05.colliders.Tile5_wallNr30473ID = {}
level05.colliders.Tile5_wallNr30473ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr30473ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr30473ID.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr30473ID.collider:SetHalfLengths(0.3,5.26057,3.3541)
level05.colliders.Tile5_wallNr30473ID.collider:SetPos(611.5,85.1984,631)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr30473ID.collider, 3)
level05.colliders.Tile5_wallNr31474ID = {}
level05.colliders.Tile5_wallNr31474ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr31474ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr31474ID.collider:SetZAxis(-0.780869,0,-0.624695)
level05.colliders.Tile5_wallNr31474ID.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.Tile5_wallNr31474ID.collider:SetPos(607.5,84.9378,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr31474ID.collider, 3)
level05.colliders.Tile5_wallNr32475ID = {}
level05.colliders.Tile5_wallNr32475ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr32475ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr32475ID.collider:SetZAxis(-0.928477,0,-0.371391)
level05.colliders.Tile5_wallNr32475ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr32475ID.collider:SetPos(602.5,84.9378,623)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr32475ID.collider, 3)
level05.colliders.Tile5_wallNr33476ID = {}
level05.colliders.Tile5_wallNr33476ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr33476ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr33476ID.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.Tile5_wallNr33476ID.collider:SetHalfLengths(0.3,5,4.03113)
level05.colliders.Tile5_wallNr33476ID.collider:SetPos(596,84.9378,622.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr33476ID.collider, 3)
level05.colliders.Tile5_wallNr34477ID = {}
level05.colliders.Tile5_wallNr34477ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr34477ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr34477ID.collider:SetZAxis(-0.919145,0,0.393919)
level05.colliders.Tile5_wallNr34477ID.collider:SetHalfLengths(0.3,5,3.80789)
level05.colliders.Tile5_wallNr34477ID.collider:SetPos(588.5,84.9378,624.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr34477ID.collider, 3)
level05.colliders.Tile5_wallNr35478ID = {}
level05.colliders.Tile5_wallNr35478ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr35478ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr35478ID.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.Tile5_wallNr35478ID.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.Tile5_wallNr35478ID.collider:SetPos(582.5,84.9378,628)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr35478ID.collider, 3)
level05.colliders.Tile5_wallNr36479ID = {}
level05.colliders.Tile5_wallNr36479ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr36479ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr36479ID.collider:SetZAxis(-0.371391,0,0.928477)
level05.colliders.Tile5_wallNr36479ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr36479ID.collider:SetPos(579,84.9378,632.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr36479ID.collider, 3)
level05.colliders.Tile5_wallNr37480ID = {}
level05.colliders.Tile5_wallNr37480ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr37480ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr37480ID.collider:SetZAxis(-0.242536,0,0.970143)
level05.colliders.Tile5_wallNr37480ID.collider:SetHalfLengths(0.3,5,2.06155)
level05.colliders.Tile5_wallNr37480ID.collider:SetPos(577.5,84.9378,637)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr37480ID.collider, 3)
level05.colliders.Tile5_wallNr38481ID = {}
level05.colliders.Tile5_wallNr38481ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr38481ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr38481ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr38481ID.collider:SetHalfLengths(0.3,10.472,9.5)
level05.colliders.Tile5_wallNr38481ID.collider:SetPos(505.5,43.2464,446)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr38481ID.collider, 3)
level05.colliders.Tile5_wallNr39482ID = {}
level05.colliders.Tile5_wallNr39482ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr39482ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr39482ID.collider:SetZAxis(0.992278,0,0.124035)
level05.colliders.Tile5_wallNr39482ID.collider:SetHalfLengths(0.3,7.08457,4.03113)
level05.colliders.Tile5_wallNr39482ID.collider:SetPos(519,48.7184,446.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr39482ID.collider, 3)
level05.colliders.Tile5_wallNr40483ID = {}
level05.colliders.Tile5_wallNr40483ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr40483ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr40483ID.collider:SetZAxis(0.871576,0,0.490261)
level05.colliders.Tile5_wallNr40483ID.collider:SetHalfLengths(0.3,9.69028,9.17878)
level05.colliders.Tile5_wallNr40483ID.collider:SetPos(531,50.803,451.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr40483ID.collider, 3)
level05.colliders.Tile5_wallNr41484ID = {}
level05.colliders.Tile5_wallNr41484ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr41484ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr41484ID.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.Tile5_wallNr41484ID.collider:SetHalfLengths(0.3,8.90857,9.01388)
level05.colliders.Tile5_wallNr41484ID.collider:SetPos(546.5,55.4933,461)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr41484ID.collider, 3)
level05.colliders.Tile5_wallNr42485ID = {}
level05.colliders.Tile5_wallNr42485ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr42485ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr42485ID.collider:SetZAxis(0.481919,0,0.876216)
level05.colliders.Tile5_wallNr42485ID.collider:SetHalfLengths(0.3,12.5566,11.4127)
level05.colliders.Tile5_wallNr42485ID.collider:SetPos(559.5,59.4018,476)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr42485ID.collider, 3)
level05.colliders.Tile5_wallNr43486ID = {}
level05.colliders.Tile5_wallNr43486ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr43486ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr43486ID.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.Tile5_wallNr43486ID.collider:SetHalfLengths(0.3,8.12685,4.92443)
level05.colliders.Tile5_wallNr43486ID.collider:SetPos(567,66.9584,490.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr43486ID.collider, 3)
level05.colliders.Tile5_wallNr44487ID = {}
level05.colliders.Tile5_wallNr44487ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr44487ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr44487ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr44487ID.collider:SetHalfLengths(0.3,7.34515,6.7082)
level05.colliders.Tile5_wallNr44487ID.collider:SetPos(572,70.0853,501)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr44487ID.collider, 3)
level05.colliders.Tile5_wallNr45488ID = {}
level05.colliders.Tile5_wallNr45488ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr45488ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr45488ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr45488ID.collider:SetHalfLengths(0.3,10.2114,14.1421)
level05.colliders.Tile5_wallNr45488ID.collider:SetPos(577,72.4304,521)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr45488ID.collider, 3)
level05.colliders.Tile5_wallNr46489ID = {}
level05.colliders.Tile5_wallNr46489ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr46489ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr46489ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr46489ID.collider:SetHalfLengths(0.3,10.2114,17.6777)
level05.colliders.Tile5_wallNr46489ID.collider:SetPos(581.5,77.6418,552.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr46489ID.collider, 3)
level05.colliders.Tile5_wallNr47490ID = {}
level05.colliders.Tile5_wallNr47490ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr47490ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr47490ID.collider:SetZAxis(-0.393919,0,0.919145)
level05.colliders.Tile5_wallNr47490ID.collider:SetHalfLengths(0.3,7.08458,3.80789)
level05.colliders.Tile5_wallNr47490ID.collider:SetPos(582.5,82.8532,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr47490ID.collider, 3)
level05.colliders.Tile5_wallNr48491ID = {}
level05.colliders.Tile5_wallNr48491ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr48491ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr48491ID.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.Tile5_wallNr48491ID.collider:SetHalfLengths(0.3,6.04228,1.80278)
level05.colliders.Tile5_wallNr48491ID.collider:SetPos(579.5,84.9378,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr48491ID.collider, 3)
level05.colliders.Tile5_wallNr49492ID = {}
level05.colliders.Tile5_wallNr49492ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr49492ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr49492ID.collider:SetZAxis(-1,0,0)
level05.colliders.Tile5_wallNr49492ID.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.Tile5_wallNr49492ID.collider:SetPos(575.5,85.9801,579)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr49492ID.collider, 3)
level05.colliders.Tile5_wallNr50493ID = {}
level05.colliders.Tile5_wallNr50493ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr50493ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr50493ID.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr50493ID.collider:SetHalfLengths(0.3,7.08457,1.41421)
level05.colliders.Tile5_wallNr50493ID.collider:SetPos(572,85.7195,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr50493ID.collider, 3)
level05.colliders.Tile5_wallNr51494ID = {}
level05.colliders.Tile5_wallNr51494ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr51494ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr51494ID.collider:SetZAxis(0.141421,0,-0.98995)
level05.colliders.Tile5_wallNr51494ID.collider:SetHalfLengths(0.3,10.472,3.53553)
level05.colliders.Tile5_wallNr51494ID.collider:SetPos(571.5,87.8041,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr51494ID.collider, 3)
level05.colliders.Tile5_wallNr52495ID = {}
level05.colliders.Tile5_wallNr52495ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr52495ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr52495ID.collider:SetZAxis(-0.609711,0,-0.792624)
level05.colliders.Tile5_wallNr52495ID.collider:SetHalfLengths(0.3,12.8171,8.20061)
level05.colliders.Tile5_wallNr52495ID.collider:SetPos(567,93.2761,563.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr52495ID.collider, 3)
level05.colliders.Tile5_wallNr53496ID = {}
level05.colliders.Tile5_wallNr53496ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr53496ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr53496ID.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.Tile5_wallNr53496ID.collider:SetHalfLengths(0.3,11.2537,7.28011)
level05.colliders.Tile5_wallNr53496ID.collider:SetPos(560,85.459,550)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr53496ID.collider, 3)
level05.colliders.Tile5_wallNr54497ID = {}
level05.colliders.Tile5_wallNr54497ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr54497ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr54497ID.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr54497ID.collider:SetHalfLengths(0.3,9.95086,6.7082)
level05.colliders.Tile5_wallNr54497ID.collider:SetPos(555,79.2053,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr54497ID.collider, 3)
level05.colliders.Tile5_wallNr55498ID = {}
level05.colliders.Tile5_wallNr55498ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr55498ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr55498ID.collider:SetZAxis(-0.5547,0,-0.83205)
level05.colliders.Tile5_wallNr55498ID.collider:SetHalfLengths(0.3,8.12685,7.2111)
level05.colliders.Tile5_wallNr55498ID.collider:SetPos(548,74.2544,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr55498ID.collider, 3)
level05.colliders.Tile5_wallNr56499ID = {}
level05.colliders.Tile5_wallNr56499ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr56499ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr56499ID.collider:SetZAxis(-0.73994,0,-0.672673)
level05.colliders.Tile5_wallNr56499ID.collider:SetHalfLengths(0.3,8.38743,7.43303)
level05.colliders.Tile5_wallNr56499ID.collider:SetPos(538.5,71.1275,514)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr56499ID.collider, 3)
level05.colliders.Tile5_wallNr57500ID = {}
level05.colliders.Tile5_wallNr57500ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr57500ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr57500ID.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.Tile5_wallNr57500ID.collider:SetHalfLengths(0.3,6.04229,4.03113)
level05.colliders.Tile5_wallNr57500ID.collider:SetPos(529,67.7401,508.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr57500ID.collider, 3)
level05.colliders.Tile5_wallNr58501ID = {}
level05.colliders.Tile5_wallNr58501ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr58501ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr58501ID.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.Tile5_wallNr58501ID.collider:SetHalfLengths(0.3,6.04228,4.03113)
level05.colliders.Tile5_wallNr58501ID.collider:SetPos(521,66.6978,507.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr58501ID.collider, 3)
level05.colliders.Tile5_wallNr59502ID = {}
level05.colliders.Tile5_wallNr59502ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr59502ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr59502ID.collider:SetZAxis(-0.996546,0,-0.0830455)
level05.colliders.Tile5_wallNr59502ID.collider:SetHalfLengths(0.3,6.30286,6.0208)
level05.colliders.Tile5_wallNr59502ID.collider:SetPos(511,65.6555,506.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr59502ID.collider, 3)
level05.colliders.Tile5_wallNr60503ID = {}
level05.colliders.Tile5_wallNr60503ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr60503ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr60503ID.collider:SetZAxis(-0.986394,0,-0.164399)
level05.colliders.Tile5_wallNr60503ID.collider:SetHalfLengths(0.3,5.26057,6.08276)
level05.colliders.Tile5_wallNr60503ID.collider:SetPos(499,64.3527,505)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr60503ID.collider, 3)
level05.colliders.Tile5_wallNr61504ID = {}
level05.colliders.Tile5_wallNr61504ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr61504ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr61504ID.collider:SetZAxis(-0.955779,0,-0.294086)
level05.colliders.Tile5_wallNr61504ID.collider:SetHalfLengths(0.3,5.26057,6.80074)
level05.colliders.Tile5_wallNr61504ID.collider:SetPos(486.5,64.6133,502)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr61504ID.collider, 3)
level05.colliders.Tile5_wallNr62505ID = {}
level05.colliders.Tile5_wallNr62505ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr62505ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr62505ID.collider:SetZAxis(-0.874157,0,-0.485643)
level05.colliders.Tile5_wallNr62505ID.collider:SetHalfLengths(0.3,6.30285,10.2956)
level05.colliders.Tile5_wallNr62505ID.collider:SetPos(471,64.3527,495)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr62505ID.collider, 3)
level05.colliders.Tile5_wallNr63506ID = {}
level05.colliders.Tile5_wallNr63506ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr63506ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr63506ID.collider:SetZAxis(-0.650791,0,-0.759257)
level05.colliders.Tile5_wallNr63506ID.collider:SetHalfLengths(0.3,5.78171,4.60977)
level05.colliders.Tile5_wallNr63506ID.collider:SetPos(459,63.0498,486.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr63506ID.collider, 3)
level05.colliders.Tile5_wallNr64507ID = {}
level05.colliders.Tile5_wallNr64507ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr64507ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr64507ID.collider:SetZAxis(-0.529999,0,-0.847998)
level05.colliders.Tile5_wallNr64507ID.collider:SetHalfLengths(0.3,5.52114,4.71699)
level05.colliders.Tile5_wallNr64507ID.collider:SetPos(453.5,63.8316,479)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr64507ID.collider, 3)
level05.colliders.Tile5_wallNr65508ID = {}
level05.colliders.Tile5_wallNr65508ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr65508ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr65508ID.collider:SetZAxis(-0.242536,0,-0.970143)
level05.colliders.Tile5_wallNr65508ID.collider:SetHalfLengths(0.3,6.04228,2.06155)
level05.colliders.Tile5_wallNr65508ID.collider:SetPos(450.5,63.3104,473)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr65508ID.collider, 3)
level05.colliders.Tile5_wallNr66509ID = {}
level05.colliders.Tile5_wallNr66509ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr66509ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr66509ID.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.Tile5_wallNr66509ID.collider:SetHalfLengths(0.3,5.78172,2.06155)
level05.colliders.Tile5_wallNr66509ID.collider:SetPos(450.5,62.2681,469)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr66509ID.collider, 3)
level05.colliders.Tile5_wallNr67510ID = {}
level05.colliders.Tile5_wallNr67510ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr67510ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr67510ID.collider:SetZAxis(0.6,0,-0.8)
level05.colliders.Tile5_wallNr67510ID.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.Tile5_wallNr67510ID.collider:SetPos(452.5,61.4864,465)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr67510ID.collider, 3)
level05.colliders.Tile5_wallNr68511ID = {}
level05.colliders.Tile5_wallNr68511ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr68511ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr68511ID.collider:SetZAxis(0.928477,0,-0.371391)
level05.colliders.Tile5_wallNr68511ID.collider:SetHalfLengths(0.3,7.08457,2.69258)
level05.colliders.Tile5_wallNr68511ID.collider:SetPos(456.5,59.1413,462)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr68511ID.collider, 3)
level05.colliders.Tile5_wallNr69512ID = {}
level05.colliders.Tile5_wallNr69512ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr69512ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr69512ID.collider:SetZAxis(0.980581,0,-0.196116)
level05.colliders.Tile5_wallNr69512ID.collider:SetHalfLengths(0.3,7.60571,2.54951)
level05.colliders.Tile5_wallNr69512ID.collider:SetPos(461.5,57.0567,460.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr69512ID.collider, 3)
level05.colliders.Tile5_wallNr70513ID = {}
level05.colliders.Tile5_wallNr70513ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr70513ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr70513ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr70513ID.collider:SetHalfLengths(0.3,7.60571,2.5)
level05.colliders.Tile5_wallNr70513ID.collider:SetPos(466.5,54.451,460)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr70513ID.collider, 3)
level05.colliders.Tile5_wallNr71514ID = {}
level05.colliders.Tile5_wallNr71514ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr71514ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr71514ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr71514ID.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.Tile5_wallNr71514ID.collider:SetPos(471.5,51.8453,460)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr71514ID.collider, 3)
level05.colliders.Tile5_wallNr72515ID = {}
level05.colliders.Tile5_wallNr72515ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr72515ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr72515ID.collider:SetZAxis(0.970143,0,-0.242536)
level05.colliders.Tile5_wallNr72515ID.collider:SetHalfLengths(0.3,6.04229,2.06155)
level05.colliders.Tile5_wallNr72515ID.collider:SetPos(476,49.5001,459.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr72515ID.collider, 3)
level05.colliders.Tile5_wallNr73516ID = {}
level05.colliders.Tile5_wallNr73516ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr73516ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr73516ID.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.Tile5_wallNr73516ID.collider:SetHalfLengths(0.3,6.30285,2.91548)
level05.colliders.Tile5_wallNr73516ID.collider:SetPos(480.5,48.4579,457.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr73516ID.collider, 3)
level05.colliders.Tile5_wallNr74517ID = {}
level05.colliders.Tile5_wallNr74517ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr74517ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr74517ID.collider:SetZAxis(0.780869,0,-0.624695)
level05.colliders.Tile5_wallNr74517ID.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.Tile5_wallNr74517ID.collider:SetPos(485.5,47.155,454)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr74517ID.collider, 3)
level05.colliders.Tile5_wallNr75518ID = {}
level05.colliders.Tile5_wallNr75518ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr75518ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr75518ID.collider:SetZAxis(0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr75518ID.collider:SetHalfLengths(0.3,6.30285,2.12132)
level05.colliders.Tile5_wallNr75518ID.collider:SetPos(489.5,45.5916,450.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr75518ID.collider, 3)
level05.colliders.Tile5_wallNr76519ID = {}
level05.colliders.Tile5_wallNr76519ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr76519ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr76519ID.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.Tile5_wallNr76519ID.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.Tile5_wallNr76519ID.collider:SetPos(493.5,44.2887,447.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr76519ID.collider, 3)
level05.colliders.Tile5_wallNr77520ID = {}
level05.colliders.Tile5_wallNr77520ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr77520ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr77520ID.collider:SetZAxis(0.274721,0,0.961524)
level05.colliders.Tile5_wallNr77520ID.collider:SetHalfLengths(0.3,5.52114,3.64005)
level05.colliders.Tile5_wallNr77520ID.collider:SetPos(454,65.395,388.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr77520ID.collider, 3)
level05.colliders.Tile5_wallNr78521ID = {}
level05.colliders.Tile5_wallNr78521ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr78521ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr78521ID.collider:SetZAxis(-0.164399,0,0.986394)
level05.colliders.Tile5_wallNr78521ID.collider:SetHalfLengths(0.3,7.34514,3.04138)
level05.colliders.Tile5_wallNr78521ID.collider:SetPos(454.5,64.8738,395)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr78521ID.collider, 3)
level05.colliders.Tile5_wallNr79522ID = {}
level05.colliders.Tile5_wallNr79522ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr79522ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr79522ID.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.Tile5_wallNr79522ID.collider:SetHalfLengths(0.3,8.12685,3.16228)
level05.colliders.Tile5_wallNr79522ID.collider:SetPos(451,67.219,399)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr79522ID.collider, 3)
level05.colliders.Tile5_wallNr80523ID = {}
level05.colliders.Tile5_wallNr80523ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr80523ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr80523ID.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.Tile5_wallNr80523ID.collider:SetHalfLengths(0.3,7.08457,4.12311)
level05.colliders.Tile5_wallNr80523ID.collider:SetPos(444,70.3458,401)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr80523ID.collider, 3)
level05.colliders.Tile5_wallNr81524ID = {}
level05.colliders.Tile5_wallNr81524ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr81524ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr81524ID.collider:SetZAxis(-0.964764,0,0.263117)
level05.colliders.Tile5_wallNr81524ID.collider:SetHalfLengths(0.3,7.08456,5.70088)
level05.colliders.Tile5_wallNr81524ID.collider:SetPos(434.5,72.4304,403.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr81524ID.collider, 3)
level05.colliders.Tile5_wallNr82525ID = {}
level05.colliders.Tile5_wallNr82525ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr82525ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr82525ID.collider:SetZAxis(-0.819232,0,0.573462)
level05.colliders.Tile5_wallNr82525ID.collider:SetHalfLengths(0.3,7.34514,6.10328)
level05.colliders.Tile5_wallNr82525ID.collider:SetPos(424,74.515,408.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr82525ID.collider, 3)
level05.colliders.Tile5_wallNr83526ID = {}
level05.colliders.Tile5_wallNr83526ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr83526ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr83526ID.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.Tile5_wallNr83526ID.collider:SetHalfLengths(0.3,6.30286,3.20156)
level05.colliders.Tile5_wallNr83526ID.collider:SetPos(416.5,76.8601,414)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr83526ID.collider, 3)
level05.colliders.Tile5_wallNr84527ID = {}
level05.colliders.Tile5_wallNr84527ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr84527ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr84527ID.collider:SetZAxis(-0.98995,0,0.141421)
level05.colliders.Tile5_wallNr84527ID.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.Tile5_wallNr84527ID.collider:SetPos(410.5,78.163,416.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr84527ID.collider, 3)
level05.colliders.Tile5_wallNr85528ID = {}
level05.colliders.Tile5_wallNr85528ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr85528ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr85528ID.collider:SetZAxis(-0.254493,0,0.967075)
level05.colliders.Tile5_wallNr85528ID.collider:SetHalfLengths(0.3,5,9.82344)
level05.colliders.Tile5_wallNr85528ID.collider:SetPos(404.5,78.163,426.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr85528ID.collider, 3)
level05.colliders.Tile5_wallNr86529ID = {}
level05.colliders.Tile5_wallNr86529ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr86529ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr86529ID.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.Tile5_wallNr86529ID.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.Tile5_wallNr86529ID.collider:SetPos(403.5,78.163,436.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr86529ID.collider, 3)
level05.colliders.Tile5_wallNr88530ID = {}
level05.colliders.Tile5_wallNr88530ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr88530ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr88530ID.collider:SetZAxis(0.104685,0,0.994505)
level05.colliders.Tile5_wallNr88530ID.collider:SetHalfLengths(0.3,8.38743,9.55249)
level05.colliders.Tile5_wallNr88530ID.collider:SetPos(478,45.5916,394.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr88530ID.collider, 3)
level05.colliders.Tile5_wallNr89531ID = {}
level05.colliders.Tile5_wallNr89531ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr89531ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr89531ID.collider:SetZAxis(-0.05547,0,0.99846)
level05.colliders.Tile5_wallNr89531ID.collider:SetHalfLengths(0.3,5.26057,9.01388)
level05.colliders.Tile5_wallNr89531ID.collider:SetPos(469.5,59.4018,394)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr89531ID.collider, 3)
level05.colliders.Tile5_wallNr90532ID = {}
level05.colliders.Tile5_wallNr90532ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr90532ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr90532ID.collider:SetZAxis(0.773957,0,0.633238)
level05.colliders.Tile5_wallNr90532ID.collider:SetHalfLengths(0.3,15.6834,7.10634)
level05.colliders.Tile5_wallNr90532ID.collider:SetPos(474.5,59.1413,407.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr90532ID.collider, 3)
level05.colliders.Tile5_wallNr91533ID = {}
level05.colliders.Tile5_wallNr91533ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr91533ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr91533ID.collider:SetZAxis(-0.124035,0,-0.992278)
level05.colliders.Tile5_wallNr91533ID.collider:SetHalfLengths(0.3,5.52114,4.03113)
level05.colliders.Tile5_wallNr91533ID.collider:SetPos(479.5,48.4579,408)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr91533ID.collider, 3)
level05.colliders.Tile5_wallNr94534ID = {}
level05.colliders.Tile5_wallNr94534ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr94534ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr94534ID.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.Tile5_wallNr94534ID.collider:SetHalfLengths(0.3,6.824,6.08276)
level05.colliders.Tile5_wallNr94534ID.collider:SetPos(428,61.747,510)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr94534ID.collider, 3)
level05.colliders.Tile5_wallNr95535ID = {}
level05.colliders.Tile5_wallNr95535ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr95535ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr95535ID.collider:SetZAxis(-0.0298375,0,-0.999555)
level05.colliders.Tile5_wallNr95535ID.collider:SetHalfLengths(0.3,5.26057,33.5149)
level05.colliders.Tile5_wallNr95535ID.collider:SetPos(421,59.923,477.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr95535ID.collider, 3)
level05.colliders.Tile5_wallNr96536ID = {}
level05.colliders.Tile5_wallNr96536ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr96536ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr96536ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr96536ID.collider:SetHalfLengths(0.3,5.78172,2.5)
level05.colliders.Tile5_wallNr96536ID.collider:SetPos(422.5,59.6624,444)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr96536ID.collider, 3)
level05.colliders.Tile5_wallNr97537ID = {}
level05.colliders.Tile5_wallNr97537ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr97537ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr97537ID.collider:SetZAxis(0.393919,0,-0.919145)
level05.colliders.Tile5_wallNr97537ID.collider:SetHalfLengths(0.3,5.26057,3.80789)
level05.colliders.Tile5_wallNr97537ID.collider:SetPos(426.5,60.4441,440.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr97537ID.collider, 3)
level05.colliders.Tile5_wallNr98538ID = {}
level05.colliders.Tile5_wallNr98538ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr98538ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr98538ID.collider:SetZAxis(0.789352,0,-0.613941)
level05.colliders.Tile5_wallNr98538ID.collider:SetHalfLengths(0.3,8.12685,5.70088)
level05.colliders.Tile5_wallNr98538ID.collider:SetPos(432.5,60.1836,433.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr98538ID.collider, 3)
level05.colliders.Tile5_wallNr99539ID = {}
level05.colliders.Tile5_wallNr99539ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr99539ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr99539ID.collider:SetZAxis(0.923077,0,-0.384615)
level05.colliders.Tile5_wallNr99539ID.collider:SetHalfLengths(0.3,5.26057,6.5)
level05.colliders.Tile5_wallNr99539ID.collider:SetPos(443,63.3104,427.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr99539ID.collider, 3)
level05.colliders.Tile5_wallNr100540ID = {}
level05.colliders.Tile5_wallNr100540ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr100540ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr100540ID.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.Tile5_wallNr100540ID.collider:SetHalfLengths(0.3,6.56343,1.80278)
level05.colliders.Tile5_wallNr100540ID.collider:SetPos(450,63.0498,423.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr100540ID.collider, 3)
level05.colliders.Tile5_wallNr101541ID = {}
level05.colliders.Tile5_wallNr101541ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr101541ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr101541ID.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.Tile5_wallNr101541ID.collider:SetHalfLengths(0.3,10.7326,4.03113)
level05.colliders.Tile5_wallNr101541ID.collider:SetPos(447,64.6133,422.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr101541ID.collider, 3)
level05.colliders.Tile5_wallNr102542ID = {}
level05.colliders.Tile5_wallNr102542ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr102542ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr102542ID.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.Tile5_wallNr102542ID.collider:SetHalfLengths(0.3,8.64799,3.04138)
level05.colliders.Tile5_wallNr102542ID.collider:SetPos(440,70.3458,423.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr102542ID.collider, 3)
level05.colliders.Tile5_wallNr103543ID = {}
level05.colliders.Tile5_wallNr103543ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr103543ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr103543ID.collider:SetZAxis(-0.874157,0,0.485643)
level05.colliders.Tile5_wallNr103543ID.collider:SetHalfLengths(0.3,7.60571,5.14782)
level05.colliders.Tile5_wallNr103543ID.collider:SetPos(432.5,73.9938,426.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr103543ID.collider, 3)
level05.colliders.Tile5_wallNr106544ID = {}
level05.colliders.Tile5_wallNr106544ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr106544ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr106544ID.collider:SetZAxis(-1,0,0)
level05.colliders.Tile5_wallNr106544ID.collider:SetHalfLengths(0.3,7.08456,3)
level05.colliders.Tile5_wallNr106544ID.collider:SetPos(405,82.8532,525)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr106544ID.collider, 3)
level05.colliders.Tile5_wallNr107545ID = {}
level05.colliders.Tile5_wallNr107545ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr107545ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr107545ID.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.Tile5_wallNr107545ID.collider:SetHalfLengths(0.3,5.52114,1.80278)
level05.colliders.Tile5_wallNr107545ID.collider:SetPos(400.5,80.7687,526)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr107545ID.collider, 3)
level05.colliders.Tile5_wallNr108546ID = {}
level05.colliders.Tile5_wallNr108546ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr108546ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr108546ID.collider:SetZAxis(-0.514496,0,0.857493)
level05.colliders.Tile5_wallNr108546ID.collider:SetHalfLengths(0.3,5,2.91548)
level05.colliders.Tile5_wallNr108546ID.collider:SetPos(397.5,80.2475,529.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr108546ID.collider, 3)
level05.colliders.Tile5_wallNr109547ID = {}
level05.colliders.Tile5_wallNr109547ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr109547ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr109547ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr109547ID.collider:SetHalfLengths(0.3,5.52114,4.5)
level05.colliders.Tile5_wallNr109547ID.collider:SetPos(396,80.2475,536.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr109547ID.collider, 3)
level05.colliders.Tile5_wallNr110548ID = {}
level05.colliders.Tile5_wallNr110548ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr110548ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr110548ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr110548ID.collider:SetHalfLengths(0.3,5.52114,2.23607)
level05.colliders.Tile5_wallNr110548ID.collider:SetPos(397,80.7687,543)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr110548ID.collider, 3)
level05.colliders.Tile5_wallNr111549ID = {}
level05.colliders.Tile5_wallNr111549ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr111549ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr111549ID.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.Tile5_wallNr111549ID.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.Tile5_wallNr111549ID.collider:SetPos(400.5,81.2898,546.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr111549ID.collider, 3)
level05.colliders.Tile5_wallNr112550ID = {}
level05.colliders.Tile5_wallNr112550ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr112550ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr112550ID.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.Tile5_wallNr112550ID.collider:SetHalfLengths(0.3,5.52113,6.32456)
level05.colliders.Tile5_wallNr112550ID.collider:SetPos(409,82.3321,550)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr112550ID.collider, 3)
level05.colliders.Tile5_wallNr113551ID = {}
level05.colliders.Tile5_wallNr113551ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr113551ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr113551ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr113551ID.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.Tile5_wallNr113551ID.collider:SetPos(417.5,82.8532,554.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr113551ID.collider, 3)
level05.colliders.Tile5_wallNr114552ID = {}
level05.colliders.Tile5_wallNr114552ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr114552ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr114552ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr114552ID.collider:SetHalfLengths(0.3,5.78172,3.53553)
level05.colliders.Tile5_wallNr114552ID.collider:SetPos(422.5,82.8532,559.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr114552ID.collider, 3)
level05.colliders.Tile5_wallNr115553ID = {}
level05.colliders.Tile5_wallNr115553ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr115553ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr115553ID.collider:SetZAxis(0.581238,0,0.813733)
level05.colliders.Tile5_wallNr115553ID.collider:SetHalfLengths(0.3,5.52113,4.30116)
level05.colliders.Tile5_wallNr115553ID.collider:SetPos(427.5,83.635,565.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr115553ID.collider, 3)
level05.colliders.Tile5_wallNr116554ID = {}
level05.colliders.Tile5_wallNr116554ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr116554ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr116554ID.collider:SetZAxis(1,0,0)
level05.colliders.Tile5_wallNr116554ID.collider:SetHalfLengths(0.3,5.26057,1)
level05.colliders.Tile5_wallNr116554ID.collider:SetPos(431,84.1561,569)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr116554ID.collider, 3)
level05.colliders.Tile5_wallNr117555ID = {}
level05.colliders.Tile5_wallNr117555ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr117555ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr117555ID.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.Tile5_wallNr117555ID.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.Tile5_wallNr117555ID.collider:SetPos(434.5,84.4167,570)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr117555ID.collider, 3)
level05.colliders.Tile5_wallNr118556ID = {}
level05.colliders.Tile5_wallNr118556ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr118556ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr118556ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr118556ID.collider:SetHalfLengths(0.3,5,2.82843)
level05.colliders.Tile5_wallNr118556ID.collider:SetPos(439,84.4167,573)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr118556ID.collider, 3)
level05.colliders.Tile5_wallNr119557ID = {}
level05.colliders.Tile5_wallNr119557ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr119557ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr119557ID.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.Tile5_wallNr119557ID.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.Tile5_wallNr119557ID.collider:SetPos(442,84.4167,577)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr119557ID.collider, 3)
level05.colliders.Tile5_wallNr120558ID = {}
level05.colliders.Tile5_wallNr120558ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr120558ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr120558ID.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.Tile5_wallNr120558ID.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.Tile5_wallNr120558ID.collider:SetPos(443.5,84.6772,580.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr120558ID.collider, 3)
level05.colliders.Tile5_wallNr121559ID = {}
level05.colliders.Tile5_wallNr121559ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr121559ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr121559ID.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.Tile5_wallNr121559ID.collider:SetHalfLengths(0.3,6.30286,3.53553)
level05.colliders.Tile5_wallNr121559ID.collider:SetPos(444.5,84.4167,585.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr121559ID.collider, 3)
level05.colliders.Tile5_wallNr122560ID = {}
level05.colliders.Tile5_wallNr122560ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr122560ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr122560ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr122560ID.collider:SetHalfLengths(0.3,5.78171,2.5)
level05.colliders.Tile5_wallNr122560ID.collider:SetPos(445,83.1138,591.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr122560ID.collider, 3)
level05.colliders.Tile5_wallNr123561ID = {}
level05.colliders.Tile5_wallNr123561ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr123561ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr123561ID.collider:SetZAxis(-0.624695,0,0.780869)
level05.colliders.Tile5_wallNr123561ID.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.Tile5_wallNr123561ID.collider:SetPos(443,82.3321,596.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr123561ID.collider, 3)
level05.colliders.Tile5_wallNr124562ID = {}
level05.colliders.Tile5_wallNr124562ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr124562ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr124562ID.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.Tile5_wallNr124562ID.collider:SetHalfLengths(0.3,5.26057,1.41421)
level05.colliders.Tile5_wallNr124562ID.collider:SetPos(440,80.7687,600)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr124562ID.collider, 3)
level05.colliders.Tile5_wallNr125563ID = {}
level05.colliders.Tile5_wallNr125563ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr125563ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr125563ID.collider:SetZAxis(-0.894427,0,0.447214)
level05.colliders.Tile5_wallNr125563ID.collider:SetHalfLengths(0.3,6.04228,3.3541)
level05.colliders.Tile5_wallNr125563ID.collider:SetPos(436,80.5081,602.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr125563ID.collider, 3)
level05.colliders.Tile5_wallNr126564ID = {}
level05.colliders.Tile5_wallNr126564ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr126564ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr126564ID.collider:SetZAxis(0.822192,0,0.56921)
level05.colliders.Tile5_wallNr126564ID.collider:SetHalfLengths(0.3,8.64799,7.90569)
level05.colliders.Tile5_wallNr126564ID.collider:SetPos(439.5,79.4658,608.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr126564ID.collider, 3)
level05.colliders.Tile5_wallNr127565ID = {}
level05.colliders.Tile5_wallNr127565ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr127565ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr127565ID.collider:SetZAxis(0.763386,0,0.645942)
level05.colliders.Tile5_wallNr127565ID.collider:SetHalfLengths(0.3,7.08458,8.51469)
level05.colliders.Tile5_wallNr127565ID.collider:SetPos(452.5,83.1138,618.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr127565ID.collider, 3)
level05.colliders.Tile5_wallNr128566ID = {}
level05.colliders.Tile5_wallNr128566ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr128566ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr128566ID.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.Tile5_wallNr128566ID.collider:SetHalfLengths(0.3,5,3.60555)
level05.colliders.Tile5_wallNr128566ID.collider:SetPos(462,85.1984,626)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr128566ID.collider, 3)
level05.colliders.Tile5_wallNr129567ID = {}
level05.colliders.Tile5_wallNr129567ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr129567ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr129567ID.collider:SetZAxis(0.413803,0,0.910366)
level05.colliders.Tile5_wallNr129567ID.collider:SetHalfLengths(0.3,5.78171,6.04152)
level05.colliders.Tile5_wallNr129567ID.collider:SetPos(467.5,85.1984,633.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr129567ID.collider, 3)
level05.colliders.Tile5_wallNr130568ID = {}
level05.colliders.Tile5_wallNr130568ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr130568ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr130568ID.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.Tile5_wallNr130568ID.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.Tile5_wallNr130568ID.collider:SetPos(426,82.5927,527)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr130568ID.collider, 3)
level05.colliders.Tile5_wallNr131569ID = {}
level05.colliders.Tile5_wallNr131569ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr131569ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr131569ID.collider:SetZAxis(0.664364,0,0.747409)
level05.colliders.Tile5_wallNr131569ID.collider:SetHalfLengths(0.3,5.52114,6.0208)
level05.colliders.Tile5_wallNr131569ID.collider:SetPos(435,82.0715,533.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr131569ID.collider, 3)
level05.colliders.Tile5_wallNr132570ID = {}
level05.colliders.Tile5_wallNr132570ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr132570ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr132570ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr132570ID.collider:SetHalfLengths(0.3,7.86628,8.48528)
level05.colliders.Tile5_wallNr132570ID.collider:SetPos(445,81.5504,544)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr132570ID.collider, 3)
level05.colliders.Tile5_wallNr133571ID = {}
level05.colliders.Tile5_wallNr133571ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr133571ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr133571ID.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.Tile5_wallNr133571ID.collider:SetHalfLengths(0.3,7.08456,4.24264)
level05.colliders.Tile5_wallNr133571ID.collider:SetPos(454,78.6841,553)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr133571ID.collider, 3)
level05.colliders.Tile5_wallNr134572ID = {}
level05.colliders.Tile5_wallNr134572ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr134572ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr134572ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr134572ID.collider:SetHalfLengths(0.3,5.78172,1.5)
level05.colliders.Tile5_wallNr134572ID.collider:SetPos(457,80.7687,557.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr134572ID.collider, 3)
level05.colliders.Tile5_wallNr135573ID = {}
level05.colliders.Tile5_wallNr135573ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr135573ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr135573ID.collider:SetZAxis(0.478852,0,0.877896)
level05.colliders.Tile5_wallNr135573ID.collider:SetHalfLengths(0.3,6.30285,6.26498)
level05.colliders.Tile5_wallNr135573ID.collider:SetPos(460,81.5504,564.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr135573ID.collider, 3)
level05.colliders.Tile5_wallNr136574ID = {}
level05.colliders.Tile5_wallNr136574ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr136574ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr136574ID.collider:SetZAxis(0.6,0,0.8)
level05.colliders.Tile5_wallNr136574ID.collider:SetHalfLengths(0.3,7.60571,7.5)
level05.colliders.Tile5_wallNr136574ID.collider:SetPos(467.5,82.8532,576)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr136574ID.collider, 3)
level05.colliders.Tile5_wallNr137575ID = {}
level05.colliders.Tile5_wallNr137575ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr137575ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr137575ID.collider:SetZAxis(0.8,0,0.6)
level05.colliders.Tile5_wallNr137575ID.collider:SetHalfLengths(0.3,5.26056,2.5)
level05.colliders.Tile5_wallNr137575ID.collider:SetPos(474,85.459,583.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr137575ID.collider, 3)
level05.colliders.Tile5_wallNr138576ID = {}
level05.colliders.Tile5_wallNr138576ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr138576ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr138576ID.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.Tile5_wallNr138576ID.collider:SetHalfLengths(0.3,6.30286,3.3541)
level05.colliders.Tile5_wallNr138576ID.collider:SetPos(479,85.1984,586.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr138576ID.collider, 3)
level05.colliders.Tile5_wallNr139577ID = {}
level05.colliders.Tile5_wallNr139577ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr139577ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr139577ID.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.Tile5_wallNr139577ID.collider:SetHalfLengths(0.3,5.26057,2.91548)
level05.colliders.Tile5_wallNr139577ID.collider:SetPos(484.5,83.8955,586.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr139577ID.collider, 3)
level05.colliders.Tile5_wallNr140578ID = {}
level05.colliders.Tile5_wallNr140578ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr140578ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr140578ID.collider:SetZAxis(0.768221,0,-0.640184)
level05.colliders.Tile5_wallNr140578ID.collider:SetHalfLengths(0.3,6.04229,3.90512)
level05.colliders.Tile5_wallNr140578ID.collider:SetPos(490,83.635,582.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr140578ID.collider, 3)
level05.colliders.Tile5_wallNr141579ID = {}
level05.colliders.Tile5_wallNr141579ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr141579ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr141579ID.collider:SetZAxis(0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr141579ID.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.Tile5_wallNr141579ID.collider:SetPos(494,82.5927,578)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr141579ID.collider, 3)
level05.colliders.Tile5_wallNr142580ID = {}
level05.colliders.Tile5_wallNr142580ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr142580ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr142580ID.collider:SetZAxis(0.371391,0,-0.928477)
level05.colliders.Tile5_wallNr142580ID.collider:SetHalfLengths(0.3,5.78172,2.69258)
level05.colliders.Tile5_wallNr142580ID.collider:SetPos(496,82.3321,573.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr142580ID.collider, 3)
level05.colliders.Tile5_wallNr143581ID = {}
level05.colliders.Tile5_wallNr143581ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr143581ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr143581ID.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.Tile5_wallNr143581ID.collider:SetHalfLengths(0.3,6.30286,4.12311)
level05.colliders.Tile5_wallNr143581ID.collider:SetPos(498,81.5504,567)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr143581ID.collider, 3)
level05.colliders.Tile5_wallNr144582ID = {}
level05.colliders.Tile5_wallNr144582ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr144582ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr144582ID.collider:SetZAxis(0,0,-1)
level05.colliders.Tile5_wallNr144582ID.collider:SetHalfLengths(0.3,6.824,3.5)
level05.colliders.Tile5_wallNr144582ID.collider:SetPos(499,80.2475,559.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr144582ID.collider, 3)
level05.colliders.Tile5_wallNr145583ID = {}
level05.colliders.Tile5_wallNr145583ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr145583ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr145583ID.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.Tile5_wallNr145583ID.collider:SetHalfLengths(0.3,7.34514,3.64005)
level05.colliders.Tile5_wallNr145583ID.collider:SetPos(498,78.4235,552.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr145583ID.collider, 3)
level05.colliders.Tile5_wallNr146584ID = {}
level05.colliders.Tile5_wallNr146584ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr146584ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr146584ID.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr146584ID.collider:SetHalfLengths(0.3,6.82401,3.53553)
level05.colliders.Tile5_wallNr146584ID.collider:SetPos(494.5,76.0784,546.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr146584ID.collider, 3)
level05.colliders.Tile5_wallNr147585ID = {}
level05.colliders.Tile5_wallNr147585ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr147585ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr147585ID.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.Tile5_wallNr147585ID.collider:SetHalfLengths(0.3,7.34514,2.82843)
level05.colliders.Tile5_wallNr147585ID.collider:SetPos(490,74.2544,542)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr147585ID.collider, 3)
level05.colliders.Tile5_wallNr148586ID = {}
level05.colliders.Tile5_wallNr148586ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr148586ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr148586ID.collider:SetZAxis(-0.813733,0,-0.581238)
level05.colliders.Tile5_wallNr148586ID.collider:SetHalfLengths(0.3,11.7748,4.30116)
level05.colliders.Tile5_wallNr148586ID.collider:SetPos(484.5,71.9093,537.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr148586ID.collider, 3)
level05.colliders.Tile5_wallNr149587ID = {}
level05.colliders.Tile5_wallNr149587ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr149587ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr149587ID.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.Tile5_wallNr149587ID.collider:SetHalfLengths(0.3,5.78172,4.03113)
level05.colliders.Tile5_wallNr149587ID.collider:SetPos(477,65.1344,535.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr149587ID.collider, 3)
level05.colliders.Tile5_wallNr150588ID = {}
level05.colliders.Tile5_wallNr150588ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr150588ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr150588ID.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.Tile5_wallNr150588ID.collider:SetHalfLengths(0.3,5.26057,3.16228)
level05.colliders.Tile5_wallNr150588ID.collider:SetPos(470,64.3527,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr150588ID.collider, 3)
level05.colliders.Tile5_wallNr151589ID = {}
level05.colliders.Tile5_wallNr151589ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr151589ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr151589ID.collider:SetZAxis(-0.928477,0,0.371391)
level05.colliders.Tile5_wallNr151589ID.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.Tile5_wallNr151589ID.collider:SetPos(462,64.6133,540)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr151589ID.collider, 3)
level05.colliders.Tile5_wallNr152590ID = {}
level05.colliders.Tile5_wallNr152590ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr152590ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr152590ID.collider:SetZAxis(-0.514496,0,-0.857493)
level05.colliders.Tile5_wallNr152590ID.collider:SetHalfLengths(0.3,9.16914,5.83095)
level05.colliders.Tile5_wallNr152590ID.collider:SetPos(454,65.1344,537)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr152590ID.collider, 3)
level05.colliders.Tile5_wallNr153591ID = {}
level05.colliders.Tile5_wallNr153591ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr153591ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr153591ID.collider:SetZAxis(-0.668965,0,-0.743294)
level05.colliders.Tile5_wallNr153591ID.collider:SetHalfLengths(0.3,6.04229,6.72681)
level05.colliders.Tile5_wallNr153591ID.collider:SetPos(446.5,60.9653,527)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr153591ID.collider, 3)
level05.colliders.Tile5_wallNr154592ID = {}
level05.colliders.Tile5_wallNr154592ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr154592ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr154592ID.collider:SetZAxis(-0.581238,0,-0.813733)
level05.colliders.Tile5_wallNr154592ID.collider:SetHalfLengths(0.3,6.04229,4.30116)
level05.colliders.Tile5_wallNr154592ID.collider:SetPos(439.5,59.923,518.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr154592ID.collider, 3)
level05.colliders.Tile5_wallNr155593ID = {}
level05.colliders.Tile5_wallNr155593ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr155593ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr155593ID.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.Tile5_wallNr155593ID.collider:SetHalfLengths(0.3,5.78171,3.3541)
level05.colliders.Tile5_wallNr155593ID.collider:SetPos(435.5,60.9653,512)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr155593ID.collider, 3)
level05.colliders.Tile5_wallNr157740ID = {}
level05.colliders.Tile5_wallNr157740ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr157740ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr157740ID.collider:SetZAxis(0,0,-1)
level05.colliders.Tile5_wallNr157740ID.collider:SetHalfLengths(0.3,5,0.5)
level05.colliders.Tile5_wallNr157740ID.collider:SetPos(577,84.9378,639.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr157740ID.collider, 3)
level05.props.t4s5893ID = {}
level05.props.t4s5893ID.model = Assets.LoadModel('Models/tile4_s5.model')
level05.props.t4s5893ID.transformID = Gear.BindStaticInstance(level05.props.t4s5893ID.model)
Transform.SetPosition(level05.props.t4s5893ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t4s5893ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t4s5893ID.transformID, {x=0, y=0, z=0})
level05.colliders.Tile5_wallNr87894ID = {}
level05.colliders.Tile5_wallNr87894ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr87894ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr87894ID.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.Tile5_wallNr87894ID.collider:SetHalfLengths(0.3,6.99844,4.12311)
level05.colliders.Tile5_wallNr87894ID.collider:SetPos(424,75.8605,430)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr87894ID.collider, 3)
level05.colliders.Tile5_wallNr92895ID = {}
level05.colliders.Tile5_wallNr92895ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr92895ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr92895ID.collider:SetZAxis(-0.0444006,0,0.999014)
level05.colliders.Tile5_wallNr92895ID.collider:SetHalfLengths(0.3,12.5497,22.5222)
level05.colliders.Tile5_wallNr92895ID.collider:SetPos(419,77.8589,453.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr92895ID.collider, 3)
level05.colliders.Tile5_wallNr104896ID = {}
level05.colliders.Tile5_wallNr104896ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr104896ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr104896ID.collider:SetZAxis(0.0192272,0,0.999815)
level05.colliders.Tile5_wallNr104896ID.collider:SetHalfLengths(0.3,17.8789,26.0048)
level05.colliders.Tile5_wallNr104896ID.collider:SetPos(418.5,70.3092,502)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr104896ID.collider, 3)
level05.colliders.Tile5_wallNr105897ID = {}
level05.colliders.Tile5_wallNr105897ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr105897ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr105897ID.collider:SetZAxis(0,0,1)
level05.colliders.Tile5_wallNr105897ID.collider:SetHalfLengths(0.3,9.21893,48.5)
level05.colliders.Tile5_wallNr105897ID.collider:SetPos(409,78.5251,479.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr105897ID.collider, 3)
level05.colliders.Tile5_wallNr156898ID = {}
level05.colliders.Tile5_wallNr156898ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr156898ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr156898ID.collider:SetZAxis(-0.316228,0,-0.948683)
level05.colliders.Tile5_wallNr156898ID.collider:SetHalfLengths(0.3,5.4441,1.58114)
level05.colliders.Tile5_wallNr156898ID.collider:SetPos(408.5,82.744,526.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr156898ID.collider, 3)
level05.colliders.Tile5_wallNr158899ID = {}
level05.colliders.Tile5_wallNr158899ID.collider = OBBCollider.Create(-1)
level05.colliders.Tile5_wallNr158899ID.collider:SetOffset(0,0,0)
level05.colliders.Tile5_wallNr158899ID.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.Tile5_wallNr158899ID.collider:SetHalfLengths(0.3,5.66615,1.80278)
level05.colliders.Tile5_wallNr158899ID.collider:SetPos(420,83.1881,526.5)
CollisionHandler.AddOBB(level05.colliders.Tile5_wallNr158899ID.collider, 3)
level05.props.Crystal900ID = {}
level05.props.Crystal900ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal900ID.transformID = Gear.BindStaticInstance(level05.props.Crystal900ID.model)
Transform.SetPosition(level05.props.Crystal900ID.transformID, {x=559.253, y=69.928, z=424.467})
Transform.SetScaleNonUniform(level05.props.Crystal900ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal900ID.transformID, {x=2.02975, y=0, z=0.195233})
Light.addLight(553.253, 69.928, 432.467, 0, 1, 1, 30,4)
level05.props.Crystal1901ID = {}
level05.props.Crystal1901ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal1901ID.transformID = Gear.BindStaticInstance(level05.props.Crystal1901ID.model)
Transform.SetPosition(level05.props.Crystal1901ID.transformID, {x=588, y=91.3975, z=457})
Transform.SetScaleNonUniform(level05.props.Crystal1901ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal1901ID.transformID, {x=0, y=0.963286, z=2.71347})
Light.addLight(586, 83.3975, 455, 0, 1, 1, 30,4)
level05.props.Crystal2902ID = {}
level05.props.Crystal2902ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal2902ID.transformID = Gear.BindStaticInstance(level05.props.Crystal2902ID.model)
Transform.SetPosition(level05.props.Crystal2902ID.transformID, {x=565.5, y=91.4545, z=480.75})
Transform.SetScaleNonUniform(level05.props.Crystal2902ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal2902ID.transformID, {x=0, y=-1.08236, z=-2.43984})
Light.addLight(573.5, 87.4545, 480.75, 0, 1, 1, 30,4)
level05.props.Crystal3903ID = {}
level05.props.Crystal3903ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal3903ID.transformID = Gear.BindStaticInstance(level05.props.Crystal3903ID.model)
Transform.SetPosition(level05.props.Crystal3903ID.transformID, {x=547.152, y=76.9418, z=460.579})
Transform.SetScaleNonUniform(level05.props.Crystal3903ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal3903ID.transformID, {x=-2.16321, y=0, z=-1.00929})
Light.addLight(555.152, 76.9418, 452.579, 0, 1, 1, 30,4)
level05.props.Crystal4904ID = {}
level05.props.Crystal4904ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal4904ID.transformID = Gear.BindStaticInstance(level05.props.Crystal4904ID.model)
Transform.SetPosition(level05.props.Crystal4904ID.transformID, {x=583.5, y=103, z=512.5})
Transform.SetScaleNonUniform(level05.props.Crystal4904ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal4904ID.transformID, {x=0, y=0, z=-2.71513})
Light.addLight(587.5, 95, 516.5, 0, 1, 1, 30,4)
level05.props.Crystal5905ID = {}
level05.props.Crystal5905ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal5905ID.transformID = Gear.BindStaticInstance(level05.props.Crystal5905ID.model)
Transform.SetPosition(level05.props.Crystal5905ID.transformID, {x=578, y=90.3125, z=538.5})
Transform.SetScaleNonUniform(level05.props.Crystal5905ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal5905ID.transformID, {x=0, y=0, z=-1.3005})
Light.addLight(586, 90.3125, 538.5, 0, 1, 1, 30,4)
level05.props.Crystal6906ID = {}
level05.props.Crystal6906ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal6906ID.transformID = Gear.BindStaticInstance(level05.props.Crystal6906ID.model)
Transform.SetPosition(level05.props.Crystal6906ID.transformID, {x=612.239, y=100.25, z=532.578})
Transform.SetScaleNonUniform(level05.props.Crystal6906ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal6906ID.transformID, {x=0, y=0, z=2.22123})
Light.addLight(604.239, 98.25, 532.578, 0, 1, 1, 30,4)
level05.props.Crystal7907ID = {}
level05.props.Crystal7907ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal7907ID.transformID = Gear.BindStaticInstance(level05.props.Crystal7907ID.model)
Transform.SetPosition(level05.props.Crystal7907ID.transformID, {x=601, y=111.625, z=547.27})
Transform.SetScaleNonUniform(level05.props.Crystal7907ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal7907ID.transformID, {x=0, y=0, z=-3.2123})
Light.addLight(601, 103.625, 547.27, 0, 1, 1, 30,4)
level05.props.Crystal8908ID = {}
level05.props.Crystal8908ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal8908ID.transformID = Gear.BindStaticInstance(level05.props.Crystal8908ID.model)
Transform.SetPosition(level05.props.Crystal8908ID.transformID, {x=613.5, y=104.625, z=575.5})
Transform.SetScaleNonUniform(level05.props.Crystal8908ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal8908ID.transformID, {x=0, y=0, z=2.12905})
Light.addLight(609.5, 102.625, 573.5, 0, 1, 1, 30,4)
level05.props.Crystal9909ID = {}
level05.props.Crystal9909ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal9909ID.transformID = Gear.BindStaticInstance(level05.props.Crystal9909ID.model)
Transform.SetPosition(level05.props.Crystal9909ID.transformID, {x=606.05, y=86.6875, z=481.468})
Transform.SetScaleNonUniform(level05.props.Crystal9909ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal9909ID.transformID, {x=-0.339734, y=-0.0166414, z=2.09508})
Light.addLight(598.05, 86.6875, 485.468, 0, 1, 1, 30,4)
level05.props.Crystal10910ID = {}
level05.props.Crystal10910ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal10910ID.transformID = Gear.BindStaticInstance(level05.props.Crystal10910ID.model)
Transform.SetPosition(level05.props.Crystal10910ID.transformID, {x=509.706, y=60.7813, z=447.76})
Transform.SetScaleNonUniform(level05.props.Crystal10910ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal10910ID.transformID, {x=-1.34518, y=0, z=-0.0526855})
Light.addLight(505.706, 60.7813, 439.76, 0, 1, 1, 30,4)
level05.props.Crystal11911ID = {}
level05.props.Crystal11911ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal11911ID.transformID = Gear.BindStaticInstance(level05.props.Crystal11911ID.model)
Transform.SetPosition(level05.props.Crystal11911ID.transformID, {x=514.321, y=75.75, z=405.863})
Transform.SetScaleNonUniform(level05.props.Crystal11911ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal11911ID.transformID, {x=0.259607, y=0.695798, z=1.30789})
Light.addLight(508.321, 75.75, 409.863, 0, 1, 1, 30,4)
level05.props.Crystal12912ID = {}
level05.props.Crystal12912ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal12912ID.transformID = Gear.BindStaticInstance(level05.props.Crystal12912ID.model)
Transform.SetPosition(level05.props.Crystal12912ID.transformID, {x=519.119, y=48.9107, z=404.748})
Transform.SetScaleNonUniform(level05.props.Crystal12912ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal12912ID.transformID, {x=1.2884, y=0, z=0.54079})
Light.addLight(511.119, 48.9107, 412.748, 0, 1, 1, 30,4)
end
level05.unload = function()
level05.props.tile537ID = nil
Gear.UnbindInstance(level05.props.t5s148ID.transformID)
Assets.UnloadModel('Models/tile5_s1.model')
level05.props.t5s148ID = nil
Gear.UnbindInstance(level05.props.t5s249ID.transformID)
Assets.UnloadModel('Models/tile5_s2.model')
level05.props.t5s249ID = nil
Gear.UnbindInstance(level05.props.t5s350ID.transformID)
Assets.UnloadModel('Models/tile5_s3.model')
level05.props.t5s350ID = nil
Gear.UnbindInstance(level05.props.t5s451ID.transformID)
Assets.UnloadModel('Models/tile5_s4.model')
level05.props.t5s451ID = nil
Gear.UnbindInstance(level05.props.t5s552ID.transformID)
Assets.UnloadModel('Models/tile5_s5.model')
level05.props.t5s552ID = nil
Gear.UnbindInstance(level05.props.t5s653ID.transformID)
Assets.UnloadModel('Models/tile5_s6.model')
level05.props.t5s653ID = nil
level05.colliders.Tile5_wallNr442ID = nil
level05.colliders.Tile5_wallNr1443ID = nil
level05.colliders.Tile5_wallNr2445ID = nil
level05.colliders.Tile5_wallNr3446ID = nil
level05.colliders.Tile5_wallNr4447ID = nil
level05.colliders.Tile5_wallNr5448ID = nil
level05.colliders.Tile5_wallNr6449ID = nil
level05.colliders.Tile5_wallNr7450ID = nil
level05.colliders.Tile5_wallNr8451ID = nil
level05.colliders.Tile5_wallNr9452ID = nil
level05.colliders.Tile5_wallNr10453ID = nil
level05.colliders.Tile5_wallNr11454ID = nil
level05.colliders.Tile5_wallNr12455ID = nil
level05.colliders.Tile5_wallNr13456ID = nil
level05.colliders.Tile5_wallNr14457ID = nil
level05.colliders.Tile5_wallNr15458ID = nil
level05.colliders.Tile5_wallNr16459ID = nil
level05.colliders.Tile5_wallNr17460ID = nil
level05.colliders.Tile5_wallNr18461ID = nil
level05.colliders.Tile5_wallNr19462ID = nil
level05.colliders.Tile5_wallNr20463ID = nil
level05.colliders.Tile5_wallNr21464ID = nil
level05.colliders.Tile5_wallNr22465ID = nil
level05.colliders.Tile5_wallNr23466ID = nil
level05.colliders.Tile5_wallNr24467ID = nil
level05.colliders.Tile5_wallNr25468ID = nil
level05.colliders.Tile5_wallNr26469ID = nil
level05.colliders.Tile5_wallNr27470ID = nil
level05.colliders.Tile5_wallNr28471ID = nil
level05.colliders.Tile5_wallNr29472ID = nil
level05.colliders.Tile5_wallNr30473ID = nil
level05.colliders.Tile5_wallNr31474ID = nil
level05.colliders.Tile5_wallNr32475ID = nil
level05.colliders.Tile5_wallNr33476ID = nil
level05.colliders.Tile5_wallNr34477ID = nil
level05.colliders.Tile5_wallNr35478ID = nil
level05.colliders.Tile5_wallNr36479ID = nil
level05.colliders.Tile5_wallNr37480ID = nil
level05.colliders.Tile5_wallNr38481ID = nil
level05.colliders.Tile5_wallNr39482ID = nil
level05.colliders.Tile5_wallNr40483ID = nil
level05.colliders.Tile5_wallNr41484ID = nil
level05.colliders.Tile5_wallNr42485ID = nil
level05.colliders.Tile5_wallNr43486ID = nil
level05.colliders.Tile5_wallNr44487ID = nil
level05.colliders.Tile5_wallNr45488ID = nil
level05.colliders.Tile5_wallNr46489ID = nil
level05.colliders.Tile5_wallNr47490ID = nil
level05.colliders.Tile5_wallNr48491ID = nil
level05.colliders.Tile5_wallNr49492ID = nil
level05.colliders.Tile5_wallNr50493ID = nil
level05.colliders.Tile5_wallNr51494ID = nil
level05.colliders.Tile5_wallNr52495ID = nil
level05.colliders.Tile5_wallNr53496ID = nil
level05.colliders.Tile5_wallNr54497ID = nil
level05.colliders.Tile5_wallNr55498ID = nil
level05.colliders.Tile5_wallNr56499ID = nil
level05.colliders.Tile5_wallNr57500ID = nil
level05.colliders.Tile5_wallNr58501ID = nil
level05.colliders.Tile5_wallNr59502ID = nil
level05.colliders.Tile5_wallNr60503ID = nil
level05.colliders.Tile5_wallNr61504ID = nil
level05.colliders.Tile5_wallNr62505ID = nil
level05.colliders.Tile5_wallNr63506ID = nil
level05.colliders.Tile5_wallNr64507ID = nil
level05.colliders.Tile5_wallNr65508ID = nil
level05.colliders.Tile5_wallNr66509ID = nil
level05.colliders.Tile5_wallNr67510ID = nil
level05.colliders.Tile5_wallNr68511ID = nil
level05.colliders.Tile5_wallNr69512ID = nil
level05.colliders.Tile5_wallNr70513ID = nil
level05.colliders.Tile5_wallNr71514ID = nil
level05.colliders.Tile5_wallNr72515ID = nil
level05.colliders.Tile5_wallNr73516ID = nil
level05.colliders.Tile5_wallNr74517ID = nil
level05.colliders.Tile5_wallNr75518ID = nil
level05.colliders.Tile5_wallNr76519ID = nil
level05.colliders.Tile5_wallNr77520ID = nil
level05.colliders.Tile5_wallNr78521ID = nil
level05.colliders.Tile5_wallNr79522ID = nil
level05.colliders.Tile5_wallNr80523ID = nil
level05.colliders.Tile5_wallNr81524ID = nil
level05.colliders.Tile5_wallNr82525ID = nil
level05.colliders.Tile5_wallNr83526ID = nil
level05.colliders.Tile5_wallNr84527ID = nil
level05.colliders.Tile5_wallNr85528ID = nil
level05.colliders.Tile5_wallNr86529ID = nil
level05.colliders.Tile5_wallNr88530ID = nil
level05.colliders.Tile5_wallNr89531ID = nil
level05.colliders.Tile5_wallNr90532ID = nil
level05.colliders.Tile5_wallNr91533ID = nil
level05.colliders.Tile5_wallNr94534ID = nil
level05.colliders.Tile5_wallNr95535ID = nil
level05.colliders.Tile5_wallNr96536ID = nil
level05.colliders.Tile5_wallNr97537ID = nil
level05.colliders.Tile5_wallNr98538ID = nil
level05.colliders.Tile5_wallNr99539ID = nil
level05.colliders.Tile5_wallNr100540ID = nil
level05.colliders.Tile5_wallNr101541ID = nil
level05.colliders.Tile5_wallNr102542ID = nil
level05.colliders.Tile5_wallNr103543ID = nil
level05.colliders.Tile5_wallNr106544ID = nil
level05.colliders.Tile5_wallNr107545ID = nil
level05.colliders.Tile5_wallNr108546ID = nil
level05.colliders.Tile5_wallNr109547ID = nil
level05.colliders.Tile5_wallNr110548ID = nil
level05.colliders.Tile5_wallNr111549ID = nil
level05.colliders.Tile5_wallNr112550ID = nil
level05.colliders.Tile5_wallNr113551ID = nil
level05.colliders.Tile5_wallNr114552ID = nil
level05.colliders.Tile5_wallNr115553ID = nil
level05.colliders.Tile5_wallNr116554ID = nil
level05.colliders.Tile5_wallNr117555ID = nil
level05.colliders.Tile5_wallNr118556ID = nil
level05.colliders.Tile5_wallNr119557ID = nil
level05.colliders.Tile5_wallNr120558ID = nil
level05.colliders.Tile5_wallNr121559ID = nil
level05.colliders.Tile5_wallNr122560ID = nil
level05.colliders.Tile5_wallNr123561ID = nil
level05.colliders.Tile5_wallNr124562ID = nil
level05.colliders.Tile5_wallNr125563ID = nil
level05.colliders.Tile5_wallNr126564ID = nil
level05.colliders.Tile5_wallNr127565ID = nil
level05.colliders.Tile5_wallNr128566ID = nil
level05.colliders.Tile5_wallNr129567ID = nil
level05.colliders.Tile5_wallNr130568ID = nil
level05.colliders.Tile5_wallNr131569ID = nil
level05.colliders.Tile5_wallNr132570ID = nil
level05.colliders.Tile5_wallNr133571ID = nil
level05.colliders.Tile5_wallNr134572ID = nil
level05.colliders.Tile5_wallNr135573ID = nil
level05.colliders.Tile5_wallNr136574ID = nil
level05.colliders.Tile5_wallNr137575ID = nil
level05.colliders.Tile5_wallNr138576ID = nil
level05.colliders.Tile5_wallNr139577ID = nil
level05.colliders.Tile5_wallNr140578ID = nil
level05.colliders.Tile5_wallNr141579ID = nil
level05.colliders.Tile5_wallNr142580ID = nil
level05.colliders.Tile5_wallNr143581ID = nil
level05.colliders.Tile5_wallNr144582ID = nil
level05.colliders.Tile5_wallNr145583ID = nil
level05.colliders.Tile5_wallNr146584ID = nil
level05.colliders.Tile5_wallNr147585ID = nil
level05.colliders.Tile5_wallNr148586ID = nil
level05.colliders.Tile5_wallNr149587ID = nil
level05.colliders.Tile5_wallNr150588ID = nil
level05.colliders.Tile5_wallNr151589ID = nil
level05.colliders.Tile5_wallNr152590ID = nil
level05.colliders.Tile5_wallNr153591ID = nil
level05.colliders.Tile5_wallNr154592ID = nil
level05.colliders.Tile5_wallNr155593ID = nil
level05.colliders.Tile5_wallNr157740ID = nil
Gear.UnbindInstance(level05.props.t4s5893ID.transformID)
Assets.UnloadModel('Models/tile4_s5.model')
level05.props.t4s5893ID = nil
level05.colliders.Tile5_wallNr87894ID = nil
level05.colliders.Tile5_wallNr92895ID = nil
level05.colliders.Tile5_wallNr104896ID = nil
level05.colliders.Tile5_wallNr105897ID = nil
level05.colliders.Tile5_wallNr156898ID = nil
level05.colliders.Tile5_wallNr158899ID = nil
Gear.UnbindInstance(level05.props.Crystal900ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal900ID = nil
Gear.UnbindInstance(level05.props.Crystal1901ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal1901ID = nil
Gear.UnbindInstance(level05.props.Crystal2902ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal2902ID = nil
Gear.UnbindInstance(level05.props.Crystal3903ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal3903ID = nil
Gear.UnbindInstance(level05.props.Crystal4904ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal4904ID = nil
Gear.UnbindInstance(level05.props.Crystal5905ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal5905ID = nil
Gear.UnbindInstance(level05.props.Crystal6906ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal6906ID = nil
Gear.UnbindInstance(level05.props.Crystal7907ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal7907ID = nil
Gear.UnbindInstance(level05.props.Crystal8908ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal8908ID = nil
Gear.UnbindInstance(level05.props.Crystal9909ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal9909ID = nil
Gear.UnbindInstance(level05.props.Crystal10910ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal10910ID = nil
Gear.UnbindInstance(level05.props.Crystal11911ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal11911ID = nil
Gear.UnbindInstance(level05.props.Crystal12912ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal12912ID = nil
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
level06.props.tile638ID = {}
level06.props.t6s154ID = {}
level06.props.t6s154ID.model = Assets.LoadModel('Models/tile6_s1.model')
level06.props.t6s154ID.transformID = Gear.BindStaticInstance(level06.props.t6s154ID.model)
Transform.SetPosition(level06.props.t6s154ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s154ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s154ID.transformID, {x=0, y=0, z=0})
level06.props.t6s255ID = {}
level06.props.t6s255ID.model = Assets.LoadModel('Models/tile6_s2.model')
level06.props.t6s255ID.transformID = Gear.BindStaticInstance(level06.props.t6s255ID.model)
Transform.SetPosition(level06.props.t6s255ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s255ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s255ID.transformID, {x=0, y=0, z=0})
level06.props.t6s760ID = {}
level06.props.t6s760ID.model = Assets.LoadModel('Models/tile6_s7.model')
level06.props.t6s760ID.transformID = Gear.BindStaticInstance(level06.props.t6s760ID.model)
Transform.SetPosition(level06.props.t6s760ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s760ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s760ID.transformID, {x=0, y=0, z=0})
level06.props.t6s1063ID = {}
level06.props.t6s1063ID.model = Assets.LoadModel('Models/tile6_s10.model')
level06.props.t6s1063ID.transformID = Gear.BindStaticInstance(level06.props.t6s1063ID.model)
Transform.SetPosition(level06.props.t6s1063ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s1063ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s1063ID.transformID, {x=0, y=0, z=0})
level06.colliders.Tile6_wallNr1628ID = {}
level06.colliders.Tile6_wallNr1628ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr1628ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr1628ID.collider:SetZAxis(-0.857493,0,-0.514496)
level06.colliders.Tile6_wallNr1628ID.collider:SetHalfLengths(0.3,5.3411,2.91548)
level06.colliders.Tile6_wallNr1628ID.collider:SetPos(386.5,106.148,703.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr1628ID.collider, 3)
level06.props.t6s12688ID = {}
level06.props.t6s12688ID.model = Assets.LoadModel('Models/tile6_s12.model')
level06.props.t6s12688ID.transformID = Gear.BindStaticInstance(level06.props.t6s12688ID.model)
Transform.SetPosition(level06.props.t6s12688ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s12688ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s12688ID.transformID, {x=0, y=0, z=0})
level06.props.t6s13689ID = {}
level06.props.t6s13689ID.model = Assets.LoadModel('Models/tile6_s13.model')
level06.props.t6s13689ID.transformID = Gear.BindStaticInstance(level06.props.t6s13689ID.model)
Transform.SetPosition(level06.props.t6s13689ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s13689ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s13689ID.transformID, {x=0, y=0, z=0})
level06.colliders.Tile6_wallNr3711ID = {}
level06.colliders.Tile6_wallNr3711ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr3711ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr3711ID.collider:SetZAxis(0,0,-1)
level06.colliders.Tile6_wallNr3711ID.collider:SetHalfLengths(0.3,5,0.5)
level06.colliders.Tile6_wallNr3711ID.collider:SetPos(512,85.0848,702.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr3711ID.collider, 3)
level06.colliders.Tile6_wallNr4712ID = {}
level06.colliders.Tile6_wallNr4712ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr4712ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr4712ID.collider:SetZAxis(0.529999,0,0.847998)
level06.colliders.Tile6_wallNr4712ID.collider:SetHalfLengths(0.3,5,4.71699)
level06.colliders.Tile6_wallNr4712ID.collider:SetPos(472.5,85.0848,644)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr4712ID.collider, 3)
level06.colliders.Tile6_wallNr5713ID = {}
level06.colliders.Tile6_wallNr5713ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr5713ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr5713ID.collider:SetZAxis(-0.164399,0,0.986394)
level06.colliders.Tile6_wallNr5713ID.collider:SetHalfLengths(0.3,5,3.04138)
level06.colliders.Tile6_wallNr5713ID.collider:SetPos(474.5,85.0848,651)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr5713ID.collider, 3)
level06.colliders.Tile6_wallNr6714ID = {}
level06.colliders.Tile6_wallNr6714ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr6714ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr6714ID.collider:SetZAxis(-0.371391,0,0.928477)
level06.colliders.Tile6_wallNr6714ID.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.Tile6_wallNr6714ID.collider:SetPos(473,85.0848,656.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr6714ID.collider, 3)
level06.colliders.Tile6_wallNr7715ID = {}
level06.colliders.Tile6_wallNr7715ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr7715ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr7715ID.collider:SetZAxis(-0.8,0,0.6)
level06.colliders.Tile6_wallNr7715ID.collider:SetHalfLengths(0.3,5,7.5)
level06.colliders.Tile6_wallNr7715ID.collider:SetPos(466,85.0848,663.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr7715ID.collider, 3)
level06.colliders.Tile6_wallNr8716ID = {}
level06.colliders.Tile6_wallNr8716ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr8716ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr8716ID.collider:SetZAxis(0.56921,0,0.822192)
level06.colliders.Tile6_wallNr8716ID.collider:SetHalfLengths(0.3,5,7.90569)
level06.colliders.Tile6_wallNr8716ID.collider:SetPos(464.5,85.0848,674.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr8716ID.collider, 3)
level06.colliders.Tile6_wallNr9717ID = {}
level06.colliders.Tile6_wallNr9717ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr9717ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr9717ID.collider:SetZAxis(0.071247,0,0.997459)
level06.colliders.Tile6_wallNr9717ID.collider:SetHalfLengths(0.3,5.42638,7.01783)
level06.colliders.Tile6_wallNr9717ID.collider:SetPos(469.5,85.0848,688)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr9717ID.collider, 3)
level06.colliders.Tile6_wallNr10718ID = {}
level06.colliders.Tile6_wallNr10718ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr10718ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr10718ID.collider:SetZAxis(-0.316228,0,0.948683)
level06.colliders.Tile6_wallNr10718ID.collider:SetHalfLengths(0.3,5.08527,4.74342)
level06.colliders.Tile6_wallNr10718ID.collider:SetPos(468.5,85.5112,699.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr10718ID.collider, 3)
level06.colliders.Tile6_wallNr11719ID = {}
level06.colliders.Tile6_wallNr11719ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr11719ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr11719ID.collider:SetZAxis(-0.857493,0,0.514496)
level06.colliders.Tile6_wallNr11719ID.collider:SetHalfLengths(0.3,5,2.91548)
level06.colliders.Tile6_wallNr11719ID.collider:SetPos(464.5,85.4259,705.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr11719ID.collider, 3)
level06.colliders.Tile6_wallNr12720ID = {}
level06.colliders.Tile6_wallNr12720ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr12720ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr12720ID.collider:SetZAxis(-0.995496,0,0.0948091)
level06.colliders.Tile6_wallNr12720ID.collider:SetHalfLengths(0.3,5.25583,10.5475)
level06.colliders.Tile6_wallNr12720ID.collider:SetPos(451.5,85.4259,708)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr12720ID.collider, 3)
level06.colliders.Tile6_wallNr13721ID = {}
level06.colliders.Tile6_wallNr13721ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr13721ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr13721ID.collider:SetZAxis(-0.998542,0,-0.0539753)
level06.colliders.Tile6_wallNr13721ID.collider:SetHalfLengths(0.3,21.9699,18.527)
level06.colliders.Tile6_wallNr13721ID.collider:SetPos(422.5,85.1701,708)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr13721ID.collider, 3)
level06.colliders.Tile6_wallNr14722ID = {}
level06.colliders.Tile6_wallNr14722ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr14722ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr14722ID.collider:SetZAxis(-0.707107,0,0.707107)
level06.colliders.Tile6_wallNr14722ID.collider:SetHalfLengths(0.3,6.36442,1.41421)
level06.colliders.Tile6_wallNr14722ID.collider:SetPos(403,102.14,708)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr14722ID.collider, 3)
level06.colliders.Tile6_wallNr15723ID = {}
level06.colliders.Tile6_wallNr15723ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr15723ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr15723ID.collider:SetZAxis(0,0,1)
level06.colliders.Tile6_wallNr15723ID.collider:SetHalfLengths(0.3,5.51165,3)
level06.colliders.Tile6_wallNr15723ID.collider:SetPos(402,103.504,712)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr15723ID.collider, 3)
level06.colliders.Tile6_wallNr16724ID = {}
level06.colliders.Tile6_wallNr16724ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr16724ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr16724ID.collider:SetZAxis(-1,0,0)
level06.colliders.Tile6_wallNr16724ID.collider:SetHalfLengths(0.3,7.98466,11.5)
level06.colliders.Tile6_wallNr16724ID.collider:SetPos(395.5,103.078,716)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr16724ID.collider, 3)
level06.colliders.Tile6_wallNr17725ID = {}
level06.colliders.Tile6_wallNr17725ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr17725ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr17725ID.collider:SetZAxis(0,0,-1)
level06.colliders.Tile6_wallNr17725ID.collider:SetHalfLengths(0.3,5.25583,1.5)
level06.colliders.Tile6_wallNr17725ID.collider:SetPos(384,106.063,714.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr17725ID.collider, 3)
level06.colliders.Tile6_wallNr18726ID = {}
level06.colliders.Tile6_wallNr18726ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr18726ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr18726ID.collider:SetZAxis(1,0,0)
level06.colliders.Tile6_wallNr18726ID.collider:SetHalfLengths(0.3,5.17055,2.5)
level06.colliders.Tile6_wallNr18726ID.collider:SetPos(386.5,106.318,713)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr18726ID.collider, 3)
level06.colliders.Tile6_wallNr727ID = {}
level06.colliders.Tile6_wallNr727ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr727ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr727ID.collider:SetZAxis(0,0,-1)
level06.colliders.Tile6_wallNr727ID.collider:SetHalfLengths(0.3,5.3411,4)
level06.colliders.Tile6_wallNr727ID.collider:SetPos(389,106.489,709)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr727ID.collider, 3)
level06.colliders.Tile6_wallNr19728ID = {}
level06.colliders.Tile6_wallNr19728ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr19728ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr19728ID.collider:SetZAxis(-0.98995,0,0.141421)
level06.colliders.Tile6_wallNr19728ID.collider:SetHalfLengths(0.3,5,3.53553)
level06.colliders.Tile6_wallNr19728ID.collider:SetPos(508.5,85.0848,695.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr19728ID.collider, 3)
level06.colliders.Tile6_wallNr20729ID = {}
level06.colliders.Tile6_wallNr20729ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr20729ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr20729ID.collider:SetZAxis(-0.928477,0,0.371391)
level06.colliders.Tile6_wallNr20729ID.collider:SetHalfLengths(0.3,5.93803,2.69258)
level06.colliders.Tile6_wallNr20729ID.collider:SetPos(502.5,85.0848,697)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr20729ID.collider, 3)
level06.colliders.Tile6_wallNr21730ID = {}
level06.colliders.Tile6_wallNr21730ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr21730ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr21730ID.collider:SetZAxis(-0.341743,0,0.939793)
level06.colliders.Tile6_wallNr21730ID.collider:SetHalfLengths(0.3,5.08527,11.7047)
level06.colliders.Tile6_wallNr21730ID.collider:SetPos(496,86.0228,709)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr21730ID.collider, 3)
level06.colliders.Tile6_wallNr22731ID = {}
level06.colliders.Tile6_wallNr22731ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr22731ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr22731ID.collider:SetZAxis(-0.847998,0,0.529999)
level06.colliders.Tile6_wallNr22731ID.collider:SetHalfLengths(0.3,5.3411,14.151)
level06.colliders.Tile6_wallNr22731ID.collider:SetPos(480,85.9375,727.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr22731ID.collider, 3)
level06.colliders.Tile6_wallNr23732ID = {}
level06.colliders.Tile6_wallNr23732ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr23732ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr23732ID.collider:SetZAxis(-0.970143,0,0.242536)
level06.colliders.Tile6_wallNr23732ID.collider:SetHalfLengths(0.3,5.3411,6.18466)
level06.colliders.Tile6_wallNr23732ID.collider:SetPos(462,86.2786,736.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr23732ID.collider, 3)
level06.colliders.Tile6_wallNr24733ID = {}
level06.colliders.Tile6_wallNr24733ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr24733ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr24733ID.collider:SetZAxis(-1,0,0)
level06.colliders.Tile6_wallNr24733ID.collider:SetHalfLengths(0.3,6.44968,8)
level06.colliders.Tile6_wallNr24733ID.collider:SetPos(448,86.6197,738)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr24733ID.collider, 3)
level06.colliders.Tile6_wallNr25734ID = {}
level06.colliders.Tile6_wallNr25734ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr25734ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr25734ID.collider:SetZAxis(-0.99846,0,-0.05547)
level06.colliders.Tile6_wallNr25734ID.collider:SetHalfLengths(0.3,21.8846,18.0278)
level06.colliders.Tile6_wallNr25734ID.collider:SetPos(422,88.0694,737)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr25734ID.collider, 3)
level06.colliders.Tile6_wallNr26735ID = {}
level06.colliders.Tile6_wallNr26735ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr26735ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr26735ID.collider:SetZAxis(0,0,-1)
level06.colliders.Tile6_wallNr26735ID.collider:SetHalfLengths(0.3,5.3411,1.5)
level06.colliders.Tile6_wallNr26735ID.collider:SetPos(404,104.954,734.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr26735ID.collider, 3)
level06.colliders.Tile6_wallNr27736ID = {}
level06.colliders.Tile6_wallNr27736ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr27736ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr27736ID.collider:SetZAxis(-1,0,0)
level06.colliders.Tile6_wallNr27736ID.collider:SetHalfLengths(0.3,5.17055,1)
level06.colliders.Tile6_wallNr27736ID.collider:SetPos(403,104.613,733)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr27736ID.collider, 3)
level06.colliders.Tile6_wallNr28737ID = {}
level06.colliders.Tile6_wallNr28737ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr28737ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr28737ID.collider:SetZAxis(0,0,-1)
level06.colliders.Tile6_wallNr28737ID.collider:SetHalfLengths(0.3,5.42638,2.5)
level06.colliders.Tile6_wallNr28737ID.collider:SetPos(402,104.442,730.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr28737ID.collider, 3)
level06.colliders.Tile6_wallNr29738ID = {}
level06.colliders.Tile6_wallNr29738ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr29738ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr29738ID.collider:SetZAxis(0.99083,0,0.135113)
level06.colliders.Tile6_wallNr29738ID.collider:SetHalfLengths(0.3,5.42638,11.1018)
level06.colliders.Tile6_wallNr29738ID.collider:SetPos(395,104.954,726.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr29738ID.collider, 3)
level06.colliders.Tile6_wallNr30739ID = {}
level06.colliders.Tile6_wallNr30739ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr30739ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr30739ID.collider:SetZAxis(0,0,1)
level06.colliders.Tile6_wallNr30739ID.collider:SetHalfLengths(0.3,5.93803,3.5)
level06.colliders.Tile6_wallNr30739ID.collider:SetPos(384,104.954,728.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr30739ID.collider, 3)
level06.colliders.Tile6_wallNr2876ID = {}
level06.colliders.Tile6_wallNr2876ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr2876ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr2876ID.collider:SetZAxis(0,0,1)
level06.colliders.Tile6_wallNr2876ID.collider:SetHalfLengths(0.3,5,2)
level06.colliders.Tile6_wallNr2876ID.collider:SetPos(577,85.1031,642)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr2876ID.collider, 3)
level06.colliders.Tile6_wallNr31877ID = {}
level06.colliders.Tile6_wallNr31877ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr31877ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr31877ID.collider:SetZAxis(0.371391,0,0.928477)
level06.colliders.Tile6_wallNr31877ID.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.Tile6_wallNr31877ID.collider:SetPos(578,85.1031,646.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr31877ID.collider, 3)
level06.colliders.Tile6_wallNr32878ID = {}
level06.colliders.Tile6_wallNr32878ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr32878ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr32878ID.collider:SetZAxis(0.6,0,0.8)
level06.colliders.Tile6_wallNr32878ID.collider:SetHalfLengths(0.3,5,2.5)
level06.colliders.Tile6_wallNr32878ID.collider:SetPos(580.5,85.1031,651)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr32878ID.collider, 3)
level06.colliders.Tile6_wallNr33879ID = {}
level06.colliders.Tile6_wallNr33879ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr33879ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr33879ID.collider:SetZAxis(0.8,0,0.6)
level06.colliders.Tile6_wallNr33879ID.collider:SetHalfLengths(0.3,5.096,2.5)
level06.colliders.Tile6_wallNr33879ID.collider:SetPos(584,85.1031,654.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr33879ID.collider, 3)
level06.colliders.Tile6_wallNr34880ID = {}
level06.colliders.Tile6_wallNr34880ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr34880ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr34880ID.collider:SetZAxis(0.928477,0,0.371391)
level06.colliders.Tile6_wallNr34880ID.collider:SetHalfLengths(0.3,5.28802,2.69258)
level06.colliders.Tile6_wallNr34880ID.collider:SetPos(588.5,85.1991,657)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr34880ID.collider, 3)
level06.colliders.Tile6_wallNr35881ID = {}
level06.colliders.Tile6_wallNr35881ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr35881ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr35881ID.collider:SetZAxis(1,0,0)
level06.colliders.Tile6_wallNr35881ID.collider:SetHalfLengths(0.3,5.19201,2.5)
level06.colliders.Tile6_wallNr35881ID.collider:SetPos(593.5,85.4871,658)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr35881ID.collider, 3)
level06.colliders.Tile6_wallNr36882ID = {}
level06.colliders.Tile6_wallNr36882ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr36882ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr36882ID.collider:SetZAxis(0.98995,0,-0.141421)
level06.colliders.Tile6_wallNr36882ID.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.Tile6_wallNr36882ID.collider:SetPos(599.5,85.6791,657.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr36882ID.collider, 3)
level06.colliders.Tile6_wallNr37883ID = {}
level06.colliders.Tile6_wallNr37883ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr37883ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr37883ID.collider:SetZAxis(0.624695,0,0.780869)
level06.colliders.Tile6_wallNr37883ID.collider:SetHalfLengths(0.3,5.86406,3.20156)
level06.colliders.Tile6_wallNr37883ID.collider:SetPos(605,85.9672,659.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr37883ID.collider, 3)
level06.colliders.Tile6_wallNr38884ID = {}
level06.colliders.Tile6_wallNr38884ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr38884ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr38884ID.collider:SetZAxis(-0.880471,0,0.4741)
level06.colliders.Tile6_wallNr38884ID.collider:SetHalfLengths(0.3,5,7.38241)
level06.colliders.Tile6_wallNr38884ID.collider:SetPos(600.5,86.8312,665.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr38884ID.collider, 3)
level06.colliders.Tile6_wallNr39885ID = {}
level06.colliders.Tile6_wallNr39885ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr39885ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr39885ID.collider:SetZAxis(-0.874157,0,0.485643)
level06.colliders.Tile6_wallNr39885ID.collider:SetHalfLengths(0.3,5.096,5.14782)
level06.colliders.Tile6_wallNr39885ID.collider:SetPos(589.5,86.8312,671.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr39885ID.collider, 3)
level06.colliders.Tile6_wallNr40886ID = {}
level06.colliders.Tile6_wallNr40886ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr40886ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr40886ID.collider:SetZAxis(-0.957826,0,0.287348)
level06.colliders.Tile6_wallNr40886ID.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.Tile6_wallNr40886ID.collider:SetPos(580,86.9272,675.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr40886ID.collider, 3)
level06.colliders.Tile6_wallNr41887ID = {}
level06.colliders.Tile6_wallNr41887ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr41887ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr41887ID.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.Tile6_wallNr41887ID.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.Tile6_wallNr41887ID.collider:SetPos(569.5,87.0232,678)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr41887ID.collider, 3)
level06.colliders.Tile6_wallNr42888ID = {}
level06.colliders.Tile6_wallNr42888ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr42888ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr42888ID.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.Tile6_wallNr42888ID.collider:SetHalfLengths(0.3,5.096,5.59017)
level06.colliders.Tile6_wallNr42888ID.collider:SetPos(558.5,86.9272,680)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr42888ID.collider, 3)
level06.colliders.Tile6_wallNr43889ID = {}
level06.colliders.Tile6_wallNr43889ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr43889ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr43889ID.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.Tile6_wallNr43889ID.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.Tile6_wallNr43889ID.collider:SetPos(547.5,86.8312,682)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr43889ID.collider, 3)
level06.colliders.Tile6_wallNr44890ID = {}
level06.colliders.Tile6_wallNr44890ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr44890ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr44890ID.collider:SetZAxis(-0.957826,0,0.287348)
level06.colliders.Tile6_wallNr44890ID.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.Tile6_wallNr44890ID.collider:SetPos(537,86.7352,684.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr44890ID.collider, 3)
level06.colliders.Tile6_wallNr45891ID = {}
level06.colliders.Tile6_wallNr45891ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr45891ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr45891ID.collider:SetZAxis(-0.923077,0,0.384615)
level06.colliders.Tile6_wallNr45891ID.collider:SetHalfLengths(0.3,5.19201,6.5)
level06.colliders.Tile6_wallNr45891ID.collider:SetPos(526,86.6392,688.5)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr45891ID.collider, 3)
level06.colliders.Tile6_wallNr46892ID = {}
level06.colliders.Tile6_wallNr46892ID.collider = OBBCollider.Create(-1)
level06.colliders.Tile6_wallNr46892ID.collider:SetOffset(0,0,0)
level06.colliders.Tile6_wallNr46892ID.collider:SetZAxis(-0.894427,0,0.447214)
level06.colliders.Tile6_wallNr46892ID.collider:SetHalfLengths(0.3,7.20815,4.47214)
level06.colliders.Tile6_wallNr46892ID.collider:SetPos(516,86.4472,693)
CollisionHandler.AddOBB(level06.colliders.Tile6_wallNr46892ID.collider, 3)
end
level06.unload = function()
level06.props.tile638ID = nil
Gear.UnbindInstance(level06.props.t6s154ID.transformID)
Assets.UnloadModel('Models/tile6_s1.model')
level06.props.t6s154ID = nil
Gear.UnbindInstance(level06.props.t6s255ID.transformID)
Assets.UnloadModel('Models/tile6_s2.model')
level06.props.t6s255ID = nil
Gear.UnbindInstance(level06.props.t6s760ID.transformID)
Assets.UnloadModel('Models/tile6_s7.model')
level06.props.t6s760ID = nil
Gear.UnbindInstance(level06.props.t6s1063ID.transformID)
Assets.UnloadModel('Models/tile6_s10.model')
level06.props.t6s1063ID = nil
level06.colliders.Tile6_wallNr1628ID = nil
Gear.UnbindInstance(level06.props.t6s12688ID.transformID)
Assets.UnloadModel('Models/tile6_s12.model')
level06.props.t6s12688ID = nil
Gear.UnbindInstance(level06.props.t6s13689ID.transformID)
Assets.UnloadModel('Models/tile6_s13.model')
level06.props.t6s13689ID = nil
level06.colliders.Tile6_wallNr3711ID = nil
level06.colliders.Tile6_wallNr4712ID = nil
level06.colliders.Tile6_wallNr5713ID = nil
level06.colliders.Tile6_wallNr6714ID = nil
level06.colliders.Tile6_wallNr7715ID = nil
level06.colliders.Tile6_wallNr8716ID = nil
level06.colliders.Tile6_wallNr9717ID = nil
level06.colliders.Tile6_wallNr10718ID = nil
level06.colliders.Tile6_wallNr11719ID = nil
level06.colliders.Tile6_wallNr12720ID = nil
level06.colliders.Tile6_wallNr13721ID = nil
level06.colliders.Tile6_wallNr14722ID = nil
level06.colliders.Tile6_wallNr15723ID = nil
level06.colliders.Tile6_wallNr16724ID = nil
level06.colliders.Tile6_wallNr17725ID = nil
level06.colliders.Tile6_wallNr18726ID = nil
level06.colliders.Tile6_wallNr727ID = nil
level06.colliders.Tile6_wallNr19728ID = nil
level06.colliders.Tile6_wallNr20729ID = nil
level06.colliders.Tile6_wallNr21730ID = nil
level06.colliders.Tile6_wallNr22731ID = nil
level06.colliders.Tile6_wallNr23732ID = nil
level06.colliders.Tile6_wallNr24733ID = nil
level06.colliders.Tile6_wallNr25734ID = nil
level06.colliders.Tile6_wallNr26735ID = nil
level06.colliders.Tile6_wallNr27736ID = nil
level06.colliders.Tile6_wallNr28737ID = nil
level06.colliders.Tile6_wallNr29738ID = nil
level06.colliders.Tile6_wallNr30739ID = nil
level06.colliders.Tile6_wallNr2876ID = nil
level06.colliders.Tile6_wallNr31877ID = nil
level06.colliders.Tile6_wallNr32878ID = nil
level06.colliders.Tile6_wallNr33879ID = nil
level06.colliders.Tile6_wallNr34880ID = nil
level06.colliders.Tile6_wallNr35881ID = nil
level06.colliders.Tile6_wallNr36882ID = nil
level06.colliders.Tile6_wallNr37883ID = nil
level06.colliders.Tile6_wallNr38884ID = nil
level06.colliders.Tile6_wallNr39885ID = nil
level06.colliders.Tile6_wallNr40886ID = nil
level06.colliders.Tile6_wallNr41887ID = nil
level06.colliders.Tile6_wallNr42888ID = nil
level06.colliders.Tile6_wallNr43889ID = nil
level06.colliders.Tile6_wallNr44890ID = nil
level06.colliders.Tile6_wallNr45891ID = nil
level06.colliders.Tile6_wallNr46892ID = nil
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
level07.props.tile739ID = {}
level07.props.t6s356ID = {}
level07.props.t6s356ID.model = Assets.LoadModel('Models/tile6_s3.model')
level07.props.t6s356ID.transformID = Gear.BindStaticInstance(level07.props.t6s356ID.model)
Transform.SetPosition(level07.props.t6s356ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s356ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s356ID.transformID, {x=0, y=0, z=0})
level07.props.t6s457ID = {}
level07.props.t6s457ID.model = Assets.LoadModel('Models/tile6_s4.model')
level07.props.t6s457ID.transformID = Gear.BindStaticInstance(level07.props.t6s457ID.model)
Transform.SetPosition(level07.props.t6s457ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s457ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s457ID.transformID, {x=0, y=0, z=0})
level07.props.t6s558ID = {}
level07.props.t6s558ID.model = Assets.LoadModel('Models/tile6_s5.model')
level07.props.t6s558ID.transformID = Gear.BindStaticInstance(level07.props.t6s558ID.model)
Transform.SetPosition(level07.props.t6s558ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s558ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s558ID.transformID, {x=0, y=0, z=0})
level07.props.t6s659ID = {}
level07.props.t6s659ID.model = Assets.LoadModel('Models/tile6_s6.model')
level07.props.t6s659ID.transformID = Gear.BindStaticInstance(level07.props.t6s659ID.model)
Transform.SetPosition(level07.props.t6s659ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s659ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s659ID.transformID, {x=0, y=0, z=0})
level07.props.t6s861ID = {}
level07.props.t6s861ID.model = Assets.LoadModel('Models/tile6_s8.model')
level07.props.t6s861ID.transformID = Gear.BindStaticInstance(level07.props.t6s861ID.model)
Transform.SetPosition(level07.props.t6s861ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s861ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s861ID.transformID, {x=0, y=0, z=0})
level07.props.t6s962ID = {}
level07.props.t6s962ID.model = Assets.LoadModel('Models/tile6_s9.model')
level07.props.t6s962ID.transformID = Gear.BindStaticInstance(level07.props.t6s962ID.model)
Transform.SetPosition(level07.props.t6s962ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s962ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s962ID.transformID, {x=0, y=0, z=0})
level07.props.t7s164ID = {}
level07.props.t7s164ID.model = Assets.LoadModel('Models/tile7_s1.model')
level07.props.t7s164ID.transformID = Gear.BindStaticInstance(level07.props.t7s164ID.model)
Transform.SetPosition(level07.props.t7s164ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s164ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s164ID.transformID, {x=0, y=0, z=0})
level07.props.t7s265ID = {}
level07.props.t7s265ID.model = Assets.LoadModel('Models/tile7_s2.model')
level07.props.t7s265ID.transformID = Gear.BindStaticInstance(level07.props.t7s265ID.model)
Transform.SetPosition(level07.props.t7s265ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s265ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s265ID.transformID, {x=0, y=0, z=0})
level07.props.t7s366ID = {}
level07.props.t7s366ID.model = Assets.LoadModel('Models/tile7_s3.model')
level07.props.t7s366ID.transformID = Gear.BindStaticInstance(level07.props.t7s366ID.model)
Transform.SetPosition(level07.props.t7s366ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s366ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s366ID.transformID, {x=0, y=0, z=0})
level07.props.t7s467ID = {}
level07.props.t7s467ID.model = Assets.LoadModel('Models/tile7_s4.model')
level07.props.t7s467ID.transformID = Gear.BindStaticInstance(level07.props.t7s467ID.model)
Transform.SetPosition(level07.props.t7s467ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s467ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s467ID.transformID, {x=0, y=0, z=0})
level07.props.t7s568ID = {}
level07.props.t7s568ID.model = Assets.LoadModel('Models/tile7_s5.model')
level07.props.t7s568ID.transformID = Gear.BindStaticInstance(level07.props.t7s568ID.model)
Transform.SetPosition(level07.props.t7s568ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s568ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s568ID.transformID, {x=0, y=0, z=0})
level07.props.t7s669ID = {}
level07.props.t7s669ID.model = Assets.LoadModel('Models/tile7_s6.model')
level07.props.t7s669ID.transformID = Gear.BindStaticInstance(level07.props.t7s669ID.model)
Transform.SetPosition(level07.props.t7s669ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s669ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s669ID.transformID, {x=0, y=0, z=0})
level07.props.t7s770ID = {}
level07.props.t7s770ID.model = Assets.LoadModel('Models/tile7_s7.model')
level07.props.t7s770ID.transformID = Gear.BindStaticInstance(level07.props.t7s770ID.model)
Transform.SetPosition(level07.props.t7s770ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s770ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s770ID.transformID, {x=0, y=0, z=0})
level07.props.t7s871ID = {}
level07.props.t7s871ID.model = Assets.LoadModel('Models/tile7_s8.model')
level07.props.t7s871ID.transformID = Gear.BindStaticInstance(level07.props.t7s871ID.model)
Transform.SetPosition(level07.props.t7s871ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s871ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s871ID.transformID, {x=0, y=0, z=0})
level07.props.t7s972ID = {}
level07.props.t7s972ID.model = Assets.LoadModel('Models/tile7_s9.model')
level07.props.t7s972ID.transformID = Gear.BindStaticInstance(level07.props.t7s972ID.model)
Transform.SetPosition(level07.props.t7s972ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s972ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s972ID.transformID, {x=0, y=0, z=0})
level07.colliders.Tile7_wallNr594ID = {}
level07.colliders.Tile7_wallNr594ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr594ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr594ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr594ID.collider:SetHalfLengths(0.3,14.1855,31.5)
level07.colliders.Tile7_wallNr594ID.collider:SetPos(384,122.35,639.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr594ID.collider, 3)
level07.colliders.Tile7_wallNr1595ID = {}
level07.colliders.Tile7_wallNr1595ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr1595ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr1595ID.collider:SetZAxis(-0.857493,0,-0.514496)
level07.colliders.Tile7_wallNr1595ID.collider:SetHalfLengths(0.3,5,2.91548)
level07.colliders.Tile7_wallNr1595ID.collider:SetPos(381.5,131.535,606.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr1595ID.collider, 3)
level07.colliders.Tile7_wallNr2596ID = {}
level07.colliders.Tile7_wallNr2596ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr2596ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr2596ID.collider:SetZAxis(-0.874157,0,-0.485643)
level07.colliders.Tile7_wallNr2596ID.collider:SetHalfLengths(0.3,5.24173,5.14782)
level07.colliders.Tile7_wallNr2596ID.collider:SetPos(374.5,131.535,602.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr2596ID.collider, 3)
level07.colliders.Tile7_wallNr3597ID = {}
level07.colliders.Tile7_wallNr3597ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr3597ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr3597ID.collider:SetZAxis(-0.957826,0,-0.287348)
level07.colliders.Tile7_wallNr3597ID.collider:SetHalfLengths(0.3,5,5.22015)
level07.colliders.Tile7_wallNr3597ID.collider:SetPos(365,131.293,598.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr3597ID.collider, 3)
level07.colliders.Tile7_wallNr5598ID = {}
level07.colliders.Tile7_wallNr5598ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr5598ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr5598ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr5598ID.collider:SetHalfLengths(0.3,5,19.5)
level07.colliders.Tile7_wallNr5598ID.collider:SetPos(329,142.171,552.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr5598ID.collider, 3)
level07.colliders.Tile7_wallNr6599ID = {}
level07.colliders.Tile7_wallNr6599ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr6599ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr6599ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr6599ID.collider:SetHalfLengths(0.3,5,12)
level07.colliders.Tile7_wallNr6599ID.collider:SetPos(341,142.171,533)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr6599ID.collider, 3)
level07.colliders.Tile7_wallNr7600ID = {}
level07.colliders.Tile7_wallNr7600ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr7600ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr7600ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr7600ID.collider:SetHalfLengths(0.3,5,6.5)
level07.colliders.Tile7_wallNr7600ID.collider:SetPos(353,142.171,526.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr7600ID.collider, 3)
level07.colliders.Tile7_wallNr8601ID = {}
level07.colliders.Tile7_wallNr8601ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr8601ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr8601ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr8601ID.collider:SetHalfLengths(0.3,5,14)
level07.colliders.Tile7_wallNr8601ID.collider:SetPos(339,142.171,520)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr8601ID.collider, 3)
level07.colliders.Tile7_wallNr9602ID = {}
level07.colliders.Tile7_wallNr9602ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr9602ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr9602ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr9602ID.collider:SetHalfLengths(0.3,5,4)
level07.colliders.Tile7_wallNr9602ID.collider:SetPos(324,142.171,516)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr9602ID.collider, 3)
level07.colliders.Tile7_wallNr10603ID = {}
level07.colliders.Tile7_wallNr10603ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr10603ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr10603ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr10603ID.collider:SetHalfLengths(0.3,5,4)
level07.colliders.Tile7_wallNr10603ID.collider:SetPos(319,142.171,516)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr10603ID.collider, 3)
level07.colliders.Tile7_wallNr11604ID = {}
level07.colliders.Tile7_wallNr11604ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr11604ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr11604ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr11604ID.collider:SetHalfLengths(0.3,5.24173,14.5)
level07.colliders.Tile7_wallNr11604ID.collider:SetPos(304.5,142.171,520)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr11604ID.collider, 3)
level07.colliders.Tile7_wallNr16605ID = {}
level07.colliders.Tile7_wallNr16605ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr16605ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr16605ID.collider:SetZAxis(-0.988372,0,-0.152057)
level07.colliders.Tile7_wallNr16605ID.collider:SetHalfLengths(0.3,5,6.57647)
level07.colliders.Tile7_wallNr16605ID.collider:SetPos(203.5,125.009,521)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr16605ID.collider, 3)
level07.colliders.Tile7_wallNr17606ID = {}
level07.colliders.Tile7_wallNr17606ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr17606ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr17606ID.collider:SetZAxis(-0.997785,0,-0.066519)
level07.colliders.Tile7_wallNr17606ID.collider:SetHalfLengths(0.3,5,7.51665)
level07.colliders.Tile7_wallNr17606ID.collider:SetPos(189.5,125.009,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr17606ID.collider, 3)
level07.colliders.Tile7_wallNr18607ID = {}
level07.colliders.Tile7_wallNr18607ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr18607ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr18607ID.collider:SetZAxis(-0.996546,0,0.0830455)
level07.colliders.Tile7_wallNr18607ID.collider:SetHalfLengths(0.3,5.24172,6.0208)
level07.colliders.Tile7_wallNr18607ID.collider:SetPos(176,125.009,519.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr18607ID.collider, 3)
level07.colliders.Tile7_wallNr19608ID = {}
level07.colliders.Tile7_wallNr19608ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr19608ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr19608ID.collider:SetZAxis(-0.974391,0,0.22486)
level07.colliders.Tile7_wallNr19608ID.collider:SetHalfLengths(0.3,6.69208,6.67083)
level07.colliders.Tile7_wallNr19608ID.collider:SetPos(163.5,125.25,521.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr19608ID.collider, 3)
level07.colliders.Tile7_wallNr20609ID = {}
level07.colliders.Tile7_wallNr20609ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr20609ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr20609ID.collider:SetZAxis(-0.768221,0,0.640184)
level07.colliders.Tile7_wallNr20609ID.collider:SetHalfLengths(0.3,7.17552,7.81025)
level07.colliders.Tile7_wallNr20609ID.collider:SetPos(151,126.942,528)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr20609ID.collider, 3)
level07.colliders.Tile7_wallNr21610ID = {}
level07.colliders.Tile7_wallNr21610ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr21610ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr21610ID.collider:SetZAxis(-0.645942,0,0.763386)
level07.colliders.Tile7_wallNr21610ID.collider:SetHalfLengths(0.3,5.9669,8.51469)
level07.colliders.Tile7_wallNr21610ID.collider:SetPos(139.5,129.118,539.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr21610ID.collider, 3)
level07.colliders.Tile7_wallNr22611ID = {}
level07.colliders.Tile7_wallNr22611ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr22611ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr22611ID.collider:SetZAxis(0.242536,0,0.970143)
level07.colliders.Tile7_wallNr22611ID.collider:SetHalfLengths(0.3,5.9669,6.18466)
level07.colliders.Tile7_wallNr22611ID.collider:SetPos(135.5,130.085,552)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr22611ID.collider, 3)
level07.colliders.Tile7_wallNr23612ID = {}
level07.colliders.Tile7_wallNr23612ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr23612ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr23612ID.collider:SetZAxis(0.413803,0,0.910366)
level07.colliders.Tile7_wallNr23612ID.collider:SetHalfLengths(0.3,6.45035,6.04152)
level07.colliders.Tile7_wallNr23612ID.collider:SetPos(139.5,129.118,563.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr23612ID.collider, 3)
level07.colliders.Tile7_wallNr24613ID = {}
level07.colliders.Tile7_wallNr24613ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr24613ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr24613ID.collider:SetZAxis(0.752577,0,0.658505)
level07.colliders.Tile7_wallNr24613ID.collider:SetHalfLengths(0.3,5.72517,10.6301)
level07.colliders.Tile7_wallNr24613ID.collider:SetPos(150,127.668,576)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr24613ID.collider, 3)
level07.colliders.Tile7_wallNr26614ID = {}
level07.colliders.Tile7_wallNr26614ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr26614ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr26614ID.collider:SetZAxis(-0.773957,0,0.633238)
level07.colliders.Tile7_wallNr26614ID.collider:SetHalfLengths(0.3,7.9007,7.10634)
level07.colliders.Tile7_wallNr26614ID.collider:SetPos(138.5,83.6736,713.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr26614ID.collider, 3)
level07.colliders.Tile7_wallNr27615ID = {}
level07.colliders.Tile7_wallNr27615ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr27615ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr27615ID.collider:SetZAxis(-0.298275,0,0.95448)
level07.colliders.Tile7_wallNr27615ID.collider:SetHalfLengths(0.3,10.0762,8.38153)
level07.colliders.Tile7_wallNr27615ID.collider:SetPos(130.5,86.5743,726)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr27615ID.collider, 3)
level07.colliders.Tile7_wallNr28616ID = {}
level07.colliders.Tile7_wallNr28616ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr28616ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr28616ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr28616ID.collider:SetHalfLengths(0.3,7.65897,5)
level07.colliders.Tile7_wallNr28616ID.collider:SetPos(128,91.6505,739)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr28616ID.collider, 3)
level07.colliders.Tile7_wallNr29617ID = {}
level07.colliders.Tile7_wallNr29617ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr29617ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr29617ID.collider:SetZAxis(0.630593,0,0.776114)
level07.colliders.Tile7_wallNr29617ID.collider:SetHalfLengths(0.3,7.9007,10.3078)
level07.colliders.Tile7_wallNr29617ID.collider:SetPos(134.5,94.3095,752)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr29617ID.collider, 3)
level07.colliders.Tile7_wallNr30618ID = {}
level07.colliders.Tile7_wallNr30618ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr30618ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr30618ID.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.Tile7_wallNr30618ID.collider:SetHalfLengths(0.3,6.9338,6.10328)
level07.colliders.Tile7_wallNr30618ID.collider:SetPos(146,97.2102,763.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr30618ID.collider, 3)
level07.colliders.Tile7_wallNr31619ID = {}
level07.colliders.Tile7_wallNr31619ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr31619ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr31619ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr31619ID.collider:SetHalfLengths(0.3,5,27.5)
level07.colliders.Tile7_wallNr31619ID.collider:SetPos(178.5,99.144,767)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr31619ID.collider, 3)
level07.colliders.Tile7_wallNr32620ID = {}
level07.colliders.Tile7_wallNr32620ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr32620ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr32620ID.collider:SetZAxis(0.6,0,-0.8)
level07.colliders.Tile7_wallNr32620ID.collider:SetHalfLengths(0.3,6.69207,2.5)
level07.colliders.Tile7_wallNr32620ID.collider:SetPos(207.5,99.144,765)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr32620ID.collider, 3)
level07.colliders.Tile7_wallNr33621ID = {}
level07.colliders.Tile7_wallNr33621ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr33621ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr33621ID.collider:SetZAxis(0.110432,0,-0.993884)
level07.colliders.Tile7_wallNr33621ID.collider:SetHalfLengths(0.3,8.62588,9.05539)
level07.colliders.Tile7_wallNr33621ID.collider:SetPos(210,97.4519,754)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr33621ID.collider, 3)
level07.colliders.Tile7_wallNr35622ID = {}
level07.colliders.Tile7_wallNr35622ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr35622ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr35622ID.collider:SetZAxis(-0.316228,0,0.948683)
level07.colliders.Tile7_wallNr35622ID.collider:SetHalfLengths(0.3,8.62588,6.32456)
level07.colliders.Tile7_wallNr35622ID.collider:SetPos(304,103.012,742)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr35622ID.collider, 3)
level07.colliders.Tile7_wallNr36623ID = {}
level07.colliders.Tile7_wallNr36623ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr36623ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr36623ID.collider:SetZAxis(0.826227,0,0.563337)
level07.colliders.Tile7_wallNr36623ID.collider:SetHalfLengths(0.3,6.20862,13.3135)
level07.colliders.Tile7_wallNr36623ID.collider:SetPos(313,99.3857,755.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr36623ID.collider, 3)
level07.colliders.Tile7_wallNr37624ID = {}
level07.colliders.Tile7_wallNr37624ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr37624ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr37624ID.collider:SetZAxis(0.993409,0,0.114624)
level07.colliders.Tile7_wallNr37624ID.collider:SetHalfLengths(0.3,5.72517,13.0863)
level07.colliders.Tile7_wallNr37624ID.collider:SetPos(337,98.1771,764.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr37624ID.collider, 3)
level07.colliders.Tile7_wallNr38625ID = {}
level07.colliders.Tile7_wallNr38625ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr38625ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr38625ID.collider:SetZAxis(0.83205,0,-0.5547)
level07.colliders.Tile7_wallNr38625ID.collider:SetHalfLengths(0.3,5.48345,12.6194)
level07.colliders.Tile7_wallNr38625ID.collider:SetPos(360.5,98.9023,759)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr38625ID.collider, 3)
level07.colliders.Tile7_wallNr39626ID = {}
level07.colliders.Tile7_wallNr39626ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr39626ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr39626ID.collider:SetZAxis(0.707107,0,-0.707107)
level07.colliders.Tile7_wallNr39626ID.collider:SetHalfLengths(0.3,6.45035,9.19239)
level07.colliders.Tile7_wallNr39626ID.collider:SetPos(377.5,98.4188,745.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr39626ID.collider, 3)
level07.colliders.Tile7_wallNr40627ID = {}
level07.colliders.Tile7_wallNr40627ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr40627ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr40627ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr40627ID.collider:SetHalfLengths(0.3,8.8676,3.5)
level07.colliders.Tile7_wallNr40627ID.collider:SetPos(384,99.8692,735.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr40627ID.collider, 3)
level07.colliders.Tile7_wallNr41629ID = {}
level07.colliders.Tile7_wallNr41629ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr41629ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr41629ID.collider:SetZAxis(-0.8,0,-0.6)
level07.colliders.Tile7_wallNr41629ID.collider:SetHalfLengths(0.3,5.24173,2.5)
level07.colliders.Tile7_wallNr41629ID.collider:SetPos(382,105.671,700.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr41629ID.collider, 3)
level07.colliders.Tile7_wallNr42630ID = {}
level07.colliders.Tile7_wallNr42630ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr42630ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr42630ID.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.Tile7_wallNr42630ID.collider:SetHalfLengths(0.3,6.20862,5.59017)
level07.colliders.Tile7_wallNr42630ID.collider:SetPos(375,105.429,696.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr42630ID.collider, 3)
level07.colliders.Tile7_wallNr43631ID = {}
level07.colliders.Tile7_wallNr43631ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr43631ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr43631ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr43631ID.collider:SetHalfLengths(0.3,6.93379,1)
level07.colliders.Tile7_wallNr43631ID.collider:SetPos(369,104.22,694)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr43631ID.collider, 3)
level07.colliders.Tile7_wallNr45632ID = {}
level07.colliders.Tile7_wallNr45632ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr45632ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr45632ID.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.Tile7_wallNr45632ID.collider:SetHalfLengths(0.3,6.45035,4.74342)
level07.colliders.Tile7_wallNr45632ID.collider:SetPos(379.5,120.899,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr45632ID.collider, 3)
level07.colliders.Tile7_wallNr48633ID = {}
level07.colliders.Tile7_wallNr48633ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr48633ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr48633ID.collider:SetZAxis(-0.759257,0,-0.650791)
level07.colliders.Tile7_wallNr48633ID.collider:SetHalfLengths(0.3,5.24173,4.60977)
level07.colliders.Tile7_wallNr48633ID.collider:SetPos(203.5,84.3988,714)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr48633ID.collider, 3)
level07.colliders.Tile7_wallNr49634ID = {}
level07.colliders.Tile7_wallNr49634ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr49634ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr49634ID.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.Tile7_wallNr49634ID.collider:SetHalfLengths(0.3,6.20862,4.47214)
level07.colliders.Tile7_wallNr49634ID.collider:SetPos(196,84.157,709)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr49634ID.collider, 3)
level07.colliders.Tile7_wallNr50635ID = {}
level07.colliders.Tile7_wallNr50635ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr50635ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr50635ID.collider:SetZAxis(-0.982339,0,-0.187112)
level07.colliders.Tile7_wallNr50635ID.collider:SetHalfLengths(0.3,5.9669,10.6888)
level07.colliders.Tile7_wallNr50635ID.collider:SetPos(181.5,82.9484,705)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr50635ID.collider, 3)
level07.colliders.Tile7_wallNr51636ID = {}
level07.colliders.Tile7_wallNr51636ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr51636ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr51636ID.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.Tile7_wallNr51636ID.collider:SetHalfLengths(0.3,5.24172,1.11803)
level07.colliders.Tile7_wallNr51636ID.collider:SetPos(170,81.9815,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr51636ID.collider, 3)
level07.colliders.Tile7_wallNr52637ID = {}
level07.colliders.Tile7_wallNr52637ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr52637ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr52637ID.collider:SetZAxis(-0.995037,0,-0.0995037)
level07.colliders.Tile7_wallNr52637ID.collider:SetHalfLengths(0.3,5,5.02494)
level07.colliders.Tile7_wallNr52637ID.collider:SetPos(164,82.2232,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr52637ID.collider, 3)
level07.colliders.Tile7_wallNr55638ID = {}
level07.colliders.Tile7_wallNr55638ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr55638ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr55638ID.collider:SetZAxis(0.8,0,0.6)
level07.colliders.Tile7_wallNr55638ID.collider:SetHalfLengths(0.3,7.17553,5)
level07.colliders.Tile7_wallNr55638ID.collider:SetPos(173,127.909,590)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr55638ID.collider, 3)
level07.colliders.Tile7_wallNr56639ID = {}
level07.colliders.Tile7_wallNr56639ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr56639ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr56639ID.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.Tile7_wallNr56639ID.collider:SetHalfLengths(0.3,5.72517,7.82624)
level07.colliders.Tile7_wallNr56639ID.collider:SetPos(184,125.734,596.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr56639ID.collider, 3)
level07.colliders.Tile7_wallNr57640ID = {}
level07.colliders.Tile7_wallNr57640ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr57640ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr57640ID.collider:SetZAxis(0.970143,0,-0.242536)
level07.colliders.Tile7_wallNr57640ID.collider:SetHalfLengths(0.3,5.24172,4.12311)
level07.colliders.Tile7_wallNr57640ID.collider:SetPos(195,125.009,599)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr57640ID.collider, 3)
level07.colliders.Tile7_wallNr58641ID = {}
level07.colliders.Tile7_wallNr58641ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr58641ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr58641ID.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.Tile7_wallNr58641ID.collider:SetHalfLengths(0.3,5.24172,4.74342)
level07.colliders.Tile7_wallNr58641ID.collider:SetPos(203.5,125.25,596.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr58641ID.collider, 3)
level07.colliders.Tile7_wallNr59642ID = {}
level07.colliders.Tile7_wallNr59642ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr59642ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr59642ID.collider:SetZAxis(0.478852,0,0.877896)
level07.colliders.Tile7_wallNr59642ID.collider:SetHalfLengths(0.3,20.2287,12.53)
level07.colliders.Tile7_wallNr59642ID.collider:SetPos(214,125.009,606)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr59642ID.collider, 3)
level07.colliders.Tile7_wallNr60643ID = {}
level07.colliders.Tile7_wallNr60643ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr60643ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr60643ID.collider:SetZAxis(-0.986394,0,0.164399)
level07.colliders.Tile7_wallNr60643ID.collider:SetHalfLengths(0.3,6.9338,3.04138)
level07.colliders.Tile7_wallNr60643ID.collider:SetPos(217,109.78,617.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr60643ID.collider, 3)
level07.colliders.Tile7_wallNr61644ID = {}
level07.colliders.Tile7_wallNr61644ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr61644ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr61644ID.collider:SetZAxis(-0.242536,0,0.970143)
level07.colliders.Tile7_wallNr61644ID.collider:SetHalfLengths(0.3,7.41725,6.18466)
level07.colliders.Tile7_wallNr61644ID.collider:SetPos(212.5,107.846,624)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr61644ID.collider, 3)
level07.colliders.Tile7_wallNr62645ID = {}
level07.colliders.Tile7_wallNr62645ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr62645ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr62645ID.collider:SetZAxis(-0.294086,0,0.955779)
level07.colliders.Tile7_wallNr62645ID.collider:SetHalfLengths(0.3,7.9007,6.80074)
level07.colliders.Tile7_wallNr62645ID.collider:SetPos(209,105.429,636.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr62645ID.collider, 3)
level07.colliders.Tile7_wallNr63646ID = {}
level07.colliders.Tile7_wallNr63646ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr63646ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr63646ID.collider:SetZAxis(0.233373,0,0.972387)
level07.colliders.Tile7_wallNr63646ID.collider:SetHalfLengths(0.3,10.8014,12.855)
level07.colliders.Tile7_wallNr63646ID.collider:SetPos(210,102.528,655.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr63646ID.collider, 3)
level07.colliders.Tile7_wallNr64647ID = {}
level07.colliders.Tile7_wallNr64647ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr64647ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr64647ID.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.Tile7_wallNr64647ID.collider:SetHalfLengths(0.3,12.2517,12.2066)
level07.colliders.Tile7_wallNr64647ID.collider:SetPos(223,96.7267,675)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr64647ID.collider, 3)
level07.colliders.Tile7_wallNr65648ID = {}
level07.colliders.Tile7_wallNr65648ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr65648ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr65648ID.collider:SetZAxis(0.956674,0,0.291162)
level07.colliders.Tile7_wallNr65648ID.collider:SetHalfLengths(0.3,6.45035,12.0208)
level07.colliders.Tile7_wallNr65648ID.collider:SetPos(244.5,89.475,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr65648ID.collider, 3)
level07.colliders.Tile7_wallNr66649ID = {}
level07.colliders.Tile7_wallNr66649ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr66649ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr66649ID.collider:SetZAxis(0.98387,0,-0.178885)
level07.colliders.Tile7_wallNr66649ID.collider:SetHalfLengths(0.3,6.20863,5.59017)
level07.colliders.Tile7_wallNr66649ID.collider:SetPos(261.5,88.0246,688)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr66649ID.collider, 3)
level07.colliders.Tile7_wallNr67650ID = {}
level07.colliders.Tile7_wallNr67650ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr67650ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr67650ID.collider:SetZAxis(0.936329,0,-0.351123)
level07.colliders.Tile7_wallNr67650ID.collider:SetHalfLengths(0.3,6.69208,4.272)
level07.colliders.Tile7_wallNr67650ID.collider:SetPos(271,86.816,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr67650ID.collider, 3)
level07.colliders.Tile7_wallNr69651ID = {}
level07.colliders.Tile7_wallNr69651ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr69651ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr69651ID.collider:SetZAxis(-0.447214,0,0.894427)
level07.colliders.Tile7_wallNr69651ID.collider:SetHalfLengths(0.3,5.24173,2.23607)
level07.colliders.Tile7_wallNr69651ID.collider:SetPos(308,103.495,714)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr69651ID.collider, 3)
level07.colliders.Tile7_wallNr70652ID = {}
level07.colliders.Tile7_wallNr70652ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr70652ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr70652ID.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.Tile7_wallNr70652ID.collider:SetHalfLengths(0.3,5.24172,3.04138)
level07.colliders.Tile7_wallNr70652ID.collider:SetPos(306.5,103.253,719)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr70652ID.collider, 3)
level07.colliders.Tile7_wallNr72653ID = {}
level07.colliders.Tile7_wallNr72653ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr72653ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr72653ID.collider:SetZAxis(-0.21693,0,0.976187)
level07.colliders.Tile7_wallNr72653ID.collider:SetHalfLengths(0.3,7.41725,4.60977)
level07.colliders.Tile7_wallNr72653ID.collider:SetPos(330,130.81,609.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr72653ID.collider, 3)
level07.colliders.Tile7_wallNr73654ID = {}
level07.colliders.Tile7_wallNr73654ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr73654ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr73654ID.collider:SetZAxis(-0.0905357,0,0.995893)
level07.colliders.Tile7_wallNr73654ID.collider:SetHalfLengths(0.3,8.14243,5.52268)
level07.colliders.Tile7_wallNr73654ID.collider:SetPos(328.5,128.393,619.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr73654ID.collider, 3)
level07.colliders.Tile7_wallNr74655ID = {}
level07.colliders.Tile7_wallNr74655ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr74655ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr74655ID.collider:SetZAxis(0.316228,0,0.948683)
level07.colliders.Tile7_wallNr74655ID.collider:SetHalfLengths(0.3,6.45035,6.32456)
level07.colliders.Tile7_wallNr74655ID.collider:SetPos(330,125.25,631)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr74655ID.collider, 3)
level07.colliders.Tile7_wallNr75656ID = {}
level07.colliders.Tile7_wallNr75656ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr75656ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr75656ID.collider:SetZAxis(0.4741,0,0.880471)
level07.colliders.Tile7_wallNr75656ID.collider:SetHalfLengths(0.3,6.69208,7.38241)
level07.colliders.Tile7_wallNr75656ID.collider:SetPos(335.5,123.8,643.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr75656ID.collider, 3)
level07.colliders.Tile7_wallNr79657ID = {}
level07.colliders.Tile7_wallNr79657ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr79657ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr79657ID.collider:SetZAxis(-0.948683,0,-0.316228)
level07.colliders.Tile7_wallNr79657ID.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.Tile7_wallNr79657ID.collider:SetPos(344.5,104.22,696.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr79657ID.collider, 3)
level07.colliders.Tile7_wallNr80658ID = {}
level07.colliders.Tile7_wallNr80658ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr80658ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr80658ID.collider:SetZAxis(-0.976187,0,0.21693)
level07.colliders.Tile7_wallNr80658ID.collider:SetHalfLengths(0.3,5.48345,4.60977)
level07.colliders.Tile7_wallNr80658ID.collider:SetPos(338.5,104.22,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr80658ID.collider, 3)
level07.colliders.Tile7_wallNr81659ID = {}
level07.colliders.Tile7_wallNr81659ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr81659ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr81659ID.collider:SetZAxis(-0.970143,0,0.242536)
level07.colliders.Tile7_wallNr81659ID.collider:SetHalfLengths(0.3,5.48345,8.24621)
level07.colliders.Tile7_wallNr81659ID.collider:SetPos(326,103.737,700)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr81659ID.collider, 3)
level07.colliders.Tile7_wallNr83660ID = {}
level07.colliders.Tile7_wallNr83660ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr83660ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr83660ID.collider:SetZAxis(0.316228,0,-0.948683)
level07.colliders.Tile7_wallNr83660ID.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.Tile7_wallNr83660ID.collider:SetPos(285.5,88.7498,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr83660ID.collider, 3)
level07.colliders.Tile7_wallNr84661ID = {}
level07.colliders.Tile7_wallNr84661ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr84661ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr84661ID.collider:SetZAxis(0.0905357,0,-0.995893)
level07.colliders.Tile7_wallNr84661ID.collider:SetHalfLengths(0.3,6.45035,5.52268)
level07.colliders.Tile7_wallNr84661ID.collider:SetPos(286.5,88.7498,665.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr84661ID.collider, 3)
level07.colliders.Tile7_wallNr85662ID = {}
level07.colliders.Tile7_wallNr85662ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr85662ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr85662ID.collider:SetZAxis(-0.384615,0,-0.923077)
level07.colliders.Tile7_wallNr85662ID.collider:SetHalfLengths(0.3,8.62588,6.5)
level07.colliders.Tile7_wallNr85662ID.collider:SetPos(284.5,90.2002,654)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr85662ID.collider, 3)
level07.colliders.Tile7_wallNr86663ID = {}
level07.colliders.Tile7_wallNr86663ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr86663ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr86663ID.collider:SetZAxis(-0.447214,0,-0.894427)
level07.colliders.Tile7_wallNr86663ID.collider:SetHalfLengths(0.3,8.62588,6.7082)
level07.colliders.Tile7_wallNr86663ID.collider:SetPos(279,93.826,642)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr86663ID.collider, 3)
level07.colliders.Tile7_wallNr87664ID = {}
level07.colliders.Tile7_wallNr87664ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr87664ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr87664ID.collider:SetZAxis(-0.5547,0,-0.83205)
level07.colliders.Tile7_wallNr87664ID.collider:SetHalfLengths(0.3,11.2848,12.6194)
level07.colliders.Tile7_wallNr87664ID.collider:SetPos(269,97.4519,625.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr87664ID.collider, 3)
level07.colliders.Tile7_wallNr88665ID = {}
level07.colliders.Tile7_wallNr88665ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr88665ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr88665ID.collider:SetZAxis(-0.961524,0,-0.274721)
level07.colliders.Tile7_wallNr88665ID.collider:SetHalfLengths(0.3,7.41724,3.64005)
level07.colliders.Tile7_wallNr88665ID.collider:SetPos(258.5,103.737,614)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr88665ID.collider, 3)
level07.colliders.Tile7_wallNr89666ID = {}
level07.colliders.Tile7_wallNr89666ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr89666ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr89666ID.collider:SetZAxis(-0.970143,0,-0.242536)
level07.colliders.Tile7_wallNr89666ID.collider:SetHalfLengths(0.3,6.20863,4.12311)
level07.colliders.Tile7_wallNr89666ID.collider:SetPos(251,106.154,612)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr89666ID.collider, 3)
level07.colliders.Tile7_wallNr90667ID = {}
level07.colliders.Tile7_wallNr90667ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr90667ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr90667ID.collider:SetZAxis(-0.948683,0,0.316228)
level07.colliders.Tile7_wallNr90667ID.collider:SetHalfLengths(0.3,5.48344,4.74342)
level07.colliders.Tile7_wallNr90667ID.collider:SetPos(242.5,107.363,612.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr90667ID.collider, 3)
level07.colliders.Tile7_wallNr91668ID = {}
level07.colliders.Tile7_wallNr91668ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr91668ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr91668ID.collider:SetZAxis(-0.493013,0,-0.870022)
level07.colliders.Tile7_wallNr91668ID.collider:SetHalfLengths(0.3,21.1956,17.2409)
level07.colliders.Tile7_wallNr91668ID.collider:SetPos(229.5,107.846,599)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr91668ID.collider, 3)
level07.colliders.Tile7_wallNr92669ID = {}
level07.colliders.Tile7_wallNr92669ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr92669ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr92669ID.collider:SetZAxis(0.755689,0,-0.654931)
level07.colliders.Tile7_wallNr92669ID.collider:SetHalfLengths(0.3,6.20863,9.92472)
level07.colliders.Tile7_wallNr92669ID.collider:SetPos(228.5,124.042,577.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr92669ID.collider, 3)
level07.colliders.Tile7_wallNr93670ID = {}
level07.colliders.Tile7_wallNr93670ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr93670ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr93670ID.collider:SetZAxis(-0.274721,0,-0.961524)
level07.colliders.Tile7_wallNr93670ID.collider:SetHalfLengths(0.3,5.48345,10.9202)
level07.colliders.Tile7_wallNr93670ID.collider:SetPos(233,122.833,560.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr93670ID.collider, 3)
level07.colliders.Tile7_wallNr96671ID = {}
level07.colliders.Tile7_wallNr96671ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr96671ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr96671ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr96671ID.collider:SetHalfLengths(0.3,5.48346,13)
level07.colliders.Tile7_wallNr96671ID.collider:SetPos(302,142.654,533)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr96671ID.collider, 3)
level07.colliders.Tile7_wallNr97672ID = {}
level07.colliders.Tile7_wallNr97672ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr97672ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr97672ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr97672ID.collider:SetHalfLengths(0.3,5.72517,20)
level07.colliders.Tile7_wallNr97672ID.collider:SetPos(315,142.171,553)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr97672ID.collider, 3)
level07.props.Rock685ID = {}
level07.props.Rock685ID.model = Assets.LoadModel('Models/Stone2.model')
level07.props.Rock685ID.transformID = Gear.BindStaticInstance(level07.props.Rock685ID.model)
Transform.SetPosition(level07.props.Rock685ID.transformID, {x=390.664, y=123.514, z=630.811})
Transform.SetScaleNonUniform(level07.props.Rock685ID.transformID, 8.00562, 10.6213, 14.9332)
Transform.SetRotation(level07.props.Rock685ID.transformID, {x=0, y=0, z=0})
level07.props.Rock685ID.collider = SphereCollider.Create(-1)
level07.props.Rock685ID.collider:SetOffset(-1,5,5)
level07.props.Rock685ID.collider:SetRadius(2)
level07.props.Rock685ID.collider:SetPos(389.664,128.514,635.811)
CollisionHandler.AddSphere(level07.props.Rock685ID.collider, 3)
level07.props.Rock1686ID = {}
level07.props.Rock1686ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Rock1686ID.transformID = Gear.BindStaticInstance(level07.props.Rock1686ID.model)
Transform.SetPosition(level07.props.Rock1686ID.transformID, {x=388.09, y=124.25, z=662.016})
Transform.SetScaleNonUniform(level07.props.Rock1686ID.transformID, 8.40228, 16.538, 11.3485)
Transform.SetRotation(level07.props.Rock1686ID.transformID, {x=0, y=1.78624, z=0})
level07.props.Rock1686ID.collider = SphereCollider.Create(-1)
level07.props.Rock1686ID.collider:SetOffset(1,0,0)
level07.props.Rock1686ID.collider:SetRadius(1.5)
level07.props.Rock1686ID.collider:SetPos(389.09,124.25,662.016)
CollisionHandler.AddSphere(level07.props.Rock1686ID.collider, 3)
level07.props.t6s11687ID = {}
level07.props.t6s11687ID.model = Assets.LoadModel('Models/tile6_s11.model')
level07.props.t6s11687ID.transformID = Gear.BindStaticInstance(level07.props.t6s11687ID.model)
Transform.SetPosition(level07.props.t6s11687ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s11687ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s11687ID.transformID, {x=0, y=0, z=0})
level07.props.t6s14690ID = {}
level07.props.t6s14690ID.model = Assets.LoadModel('Models/tile6_s14.model')
level07.props.t6s14690ID.transformID = Gear.BindStaticInstance(level07.props.t6s14690ID.model)
Transform.SetPosition(level07.props.t6s14690ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s14690ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s14690ID.transformID, {x=0, y=0, z=0})
level07.colliders.Tile7_wallNr44741ID = {}
level07.colliders.Tile7_wallNr44741ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr44741ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr44741ID.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.Tile7_wallNr44741ID.collider:SetHalfLengths(0.3,6.69207,3.04138)
level07.colliders.Tile7_wallNr44741ID.collider:SetPos(367.5,106.154,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr44741ID.collider, 3)
level07.colliders.Tile7_wallNr99742ID = {}
level07.colliders.Tile7_wallNr99742ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr99742ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr99742ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr99742ID.collider:SetHalfLengths(0.3,5.24172,1)
level07.colliders.Tile7_wallNr99742ID.collider:SetPos(366,104.462,700)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr99742ID.collider, 3)
level07.colliders.Tile7_wallNr100743ID = {}
level07.colliders.Tile7_wallNr100743ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr100743ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr100743ID.collider:SetZAxis(0.136637,0,-0.990621)
level07.colliders.Tile7_wallNr100743ID.collider:SetHalfLengths(0.3,22.1625,14.6373)
level07.colliders.Tile7_wallNr100743ID.collider:SetPos(367,104.704,685.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr100743ID.collider, 3)
level07.colliders.Tile7_wallNr101744ID = {}
level07.colliders.Tile7_wallNr101744ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr101744ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr101744ID.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.Tile7_wallNr101744ID.collider:SetHalfLengths(0.3,5.9669,3.3541)
level07.colliders.Tile7_wallNr101744ID.collider:SetPos(372,121.866,672.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr101744ID.collider, 3)
level07.colliders.Tile7_wallNr78745ID = {}
level07.colliders.Tile7_wallNr78745ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr78745ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr78745ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr78745ID.collider:SetHalfLengths(0.3,5,2)
level07.colliders.Tile7_wallNr78745ID.collider:SetPos(348,104.22,697)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr78745ID.collider, 3)
level07.colliders.Tile7_wallNr102746ID = {}
level07.colliders.Tile7_wallNr102746ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr102746ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr102746ID.collider:SetZAxis(0.124035,0,-0.992278)
level07.colliders.Tile7_wallNr102746ID.collider:SetHalfLengths(0.3,21.4373,16.1245)
level07.colliders.Tile7_wallNr102746ID.collider:SetPos(352,104.22,681)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr102746ID.collider, 3)
level07.colliders.Tile7_wallNr103747ID = {}
level07.colliders.Tile7_wallNr103747ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr103747ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr103747ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr103747ID.collider:SetHalfLengths(0.3,5.72517,2.5)
level07.colliders.Tile7_wallNr103747ID.collider:SetPos(351.5,120.658,665)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr103747ID.collider, 3)
level07.colliders.Tile7_wallNr76748ID = {}
level07.colliders.Tile7_wallNr76748ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr76748ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr76748ID.collider:SetZAxis(0.5547,0,0.83205)
level07.colliders.Tile7_wallNr76748ID.collider:SetHalfLengths(0.3,7.17552,9.01388)
level07.colliders.Tile7_wallNr76748ID.collider:SetPos(344,122.108,657.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr76748ID.collider, 3)
level07.colliders.Tile7_wallNr4749ID = {}
level07.colliders.Tile7_wallNr4749ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr4749ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr4749ID.collider:SetZAxis(-1,0,0)
level07.colliders.Tile7_wallNr4749ID.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.Tile7_wallNr4749ID.collider:SetPos(327.5,142.171,566)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr4749ID.collider, 3)
level07.colliders.Tile7_wallNr71750ID = {}
level07.colliders.Tile7_wallNr71750ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr71750ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr71750ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr71750ID.collider:SetHalfLengths(0.3,5,2)
level07.colliders.Tile7_wallNr71750ID.collider:SetPos(326,142.171,568)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr71750ID.collider, 3)
level07.colliders.Tile7_wallNr77751ID = {}
level07.colliders.Tile7_wallNr77751ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr77751ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr77751ID.collider:SetZAxis(0.83205,0,0.5547)
level07.colliders.Tile7_wallNr77751ID.collider:SetHalfLengths(0.3,5,1.80278)
level07.colliders.Tile7_wallNr77751ID.collider:SetPos(327.5,142.171,571)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr77751ID.collider, 3)
level07.colliders.Tile7_wallNr98752ID = {}
level07.colliders.Tile7_wallNr98752ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr98752ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr98752ID.collider:SetZAxis(0.502136,0,0.864789)
level07.colliders.Tile7_wallNr98752ID.collider:SetHalfLengths(0.3,14.1855,17.9234)
level07.colliders.Tile7_wallNr98752ID.collider:SetPos(338,142.171,587.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr98752ID.collider, 3)
level07.colliders.Tile7_wallNr104753ID = {}
level07.colliders.Tile7_wallNr104753ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr104753ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr104753ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr104753ID.collider:SetHalfLengths(0.3,5.72517,1.5)
level07.colliders.Tile7_wallNr104753ID.collider:SetPos(347,132.985,601.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr104753ID.collider, 3)
level07.colliders.Tile7_wallNr105754ID = {}
level07.colliders.Tile7_wallNr105754ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr105754ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr105754ID.collider:SetZAxis(0.974391,0,-0.22486)
level07.colliders.Tile7_wallNr105754ID.collider:SetHalfLengths(0.3,5.9669,6.67083)
level07.colliders.Tile7_wallNr105754ID.collider:SetPos(353.5,132.26,598.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr105754ID.collider, 3)
level07.colliders.Tile7_wallNr106755ID = {}
level07.colliders.Tile7_wallNr106755ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr106755ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr106755ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr106755ID.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.Tile7_wallNr106755ID.collider:SetPos(316.5,142.171,568)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr106755ID.collider, 3)
level07.colliders.Tile7_wallNr107756ID = {}
level07.colliders.Tile7_wallNr107756ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr107756ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr107756ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr107756ID.collider:SetHalfLengths(0.3,5,1)
level07.colliders.Tile7_wallNr107756ID.collider:SetPos(318,142.171,569)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr107756ID.collider, 3)
level07.colliders.Tile7_wallNr108757ID = {}
level07.colliders.Tile7_wallNr108757ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr108757ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr108757ID.collider:SetZAxis(-0.5547,0,0.83205)
level07.colliders.Tile7_wallNr108757ID.collider:SetHalfLengths(0.3,5.72517,1.80278)
level07.colliders.Tile7_wallNr108757ID.collider:SetPos(317,142.171,571.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr108757ID.collider, 3)
level07.colliders.Tile7_wallNr109758ID = {}
level07.colliders.Tile7_wallNr109758ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr109758ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr109758ID.collider:SetZAxis(0.514496,0,0.857493)
level07.colliders.Tile7_wallNr109758ID.collider:SetHalfLengths(0.3,15.1525,20.4083)
level07.colliders.Tile7_wallNr109758ID.collider:SetPos(326.5,141.446,590.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr109758ID.collider, 3)
level07.colliders.Tile7_wallNr110759ID = {}
level07.colliders.Tile7_wallNr110759ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr110759ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr110759ID.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.Tile7_wallNr110759ID.collider:SetHalfLengths(0.3,5.48344,1.11803)
level07.colliders.Tile7_wallNr110759ID.collider:SetPos(336,131.293,608.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr110759ID.collider, 3)
level07.colliders.Tile7_wallNr111760ID = {}
level07.colliders.Tile7_wallNr111760ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr111760ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr111760ID.collider:SetZAxis(-0.707107,0,-0.707107)
level07.colliders.Tile7_wallNr111760ID.collider:SetHalfLengths(0.3,5,2.82843)
level07.colliders.Tile7_wallNr111760ID.collider:SetPos(333,130.81,607)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr111760ID.collider, 3)
level07.colliders.Tile7_wallNr25761ID = {}
level07.colliders.Tile7_wallNr25761ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr25761ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr25761ID.collider:SetZAxis(0.106265,0,-0.994338)
level07.colliders.Tile7_wallNr25761ID.collider:SetHalfLengths(0.3,48.5105,65.873)
level07.colliders.Tile7_wallNr25761ID.collider:SetPos(152,83.6736,643.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr25761ID.collider, 3)
level07.colliders.Tile7_wallNr54762ID = {}
level07.colliders.Tile7_wallNr54762ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr54762ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr54762ID.collider:SetZAxis(-0.8,0,0.6)
level07.colliders.Tile7_wallNr54762ID.collider:SetHalfLengths(0.3,5,2.5)
level07.colliders.Tile7_wallNr54762ID.collider:SetPos(157,127.184,579.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr54762ID.collider, 3)
level07.colliders.Tile7_wallNr53763ID = {}
level07.colliders.Tile7_wallNr53763ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr53763ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr53763ID.collider:SetZAxis(-0.242536,0,0.970143)
level07.colliders.Tile7_wallNr53763ID.collider:SetHalfLengths(0.3,8.14243,4.12311)
level07.colliders.Tile7_wallNr53763ID.collider:SetPos(158,82.2232,707)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr53763ID.collider, 3)
level07.colliders.Tile7_wallNr112764ID = {}
level07.colliders.Tile7_wallNr112764ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr112764ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr112764ID.collider:SetZAxis(0.0926234,0,-0.995701)
level07.colliders.Tile7_wallNr112764ID.collider:SetHalfLengths(0.3,46.5767,64.7785)
level07.colliders.Tile7_wallNr112764ID.collider:SetPos(163,85.3657,646.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr112764ID.collider, 3)
level07.colliders.Tile7_wallNr113765ID = {}
level07.colliders.Tile7_wallNr113765ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr113765ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr113765ID.collider:SetZAxis(0.164399,0,0.986394)
level07.colliders.Tile7_wallNr113765ID.collider:SetHalfLengths(0.3,5.48345,3.04138)
level07.colliders.Tile7_wallNr113765ID.collider:SetPos(169.5,126.942,585)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr113765ID.collider, 3)
level07.colliders.Tile7_wallNr34766ID = {}
level07.colliders.Tile7_wallNr34766ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr34766ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr34766ID.collider:SetZAxis(-0.996997,0,0.0774367)
level07.colliders.Tile7_wallNr34766ID.collider:SetHalfLengths(0.3,14.9107,51.6551)
level07.colliders.Tile7_wallNr34766ID.collider:SetPos(257.5,102.528,739)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr34766ID.collider, 3)
level07.colliders.Tile7_wallNr46767ID = {}
level07.colliders.Tile7_wallNr46767ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr46767ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr46767ID.collider:SetZAxis(0.928477,0,0.371391)
level07.colliders.Tile7_wallNr46767ID.collider:SetHalfLengths(0.3,6.20863,2.69258)
level07.colliders.Tile7_wallNr46767ID.collider:SetPos(208.5,92.6174,744)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr46767ID.collider, 3)
level07.colliders.Tile7_wallNr114768ID = {}
level07.colliders.Tile7_wallNr114768ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr114768ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr114768ID.collider:SetZAxis(-0.997164,0,0.0752577)
level07.colliders.Tile7_wallNr114768ID.collider:SetHalfLengths(0.3,19.7452,53.1507)
level07.colliders.Tile7_wallNr114768ID.collider:SetPos(257,103.978,728)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr114768ID.collider, 3)
level07.colliders.Tile7_wallNr115769ID = {}
level07.colliders.Tile7_wallNr115769ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr115769ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr115769ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr115769ID.collider:SetHalfLengths(0.3,5.9669,1.5)
level07.colliders.Tile7_wallNr115769ID.collider:SetPos(204,89.2333,730.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr115769ID.collider, 3)
level07.colliders.Tile7_wallNr116770ID = {}
level07.colliders.Tile7_wallNr116770ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr116770ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr116770ID.collider:SetZAxis(0.980581,0,-0.196116)
level07.colliders.Tile7_wallNr116770ID.collider:SetHalfLengths(0.3,5.9669,2.54951)
level07.colliders.Tile7_wallNr116770ID.collider:SetPos(206.5,88.2664,728.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr116770ID.collider, 3)
level07.colliders.Tile7_wallNr47771ID = {}
level07.colliders.Tile7_wallNr47771ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr47771ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr47771ID.collider:SetZAxis(-0.178885,0,-0.98387)
level07.colliders.Tile7_wallNr47771ID.collider:SetHalfLengths(0.3,7.9007,5.59017)
level07.colliders.Tile7_wallNr47771ID.collider:SetPos(208,87.2995,722.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr47771ID.collider, 3)
level07.colliders.Tile7_wallNr117772ID = {}
level07.colliders.Tile7_wallNr117772ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr117772ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr117772ID.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.Tile7_wallNr117772ID.collider:SetHalfLengths(0.3,5.9669,2.23607)
level07.colliders.Tile7_wallNr117772ID.collider:SetPos(308,103.978,723)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr117772ID.collider, 3)
level07.colliders.Tile7_wallNr68773ID = {}
level07.colliders.Tile7_wallNr68773ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr68773ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr68773ID.collider:SetZAxis(0.758011,0,0.652242)
level07.colliders.Tile7_wallNr68773ID.collider:SetHalfLengths(0.3,17.328,28.3637)
level07.colliders.Tile7_wallNr68773ID.collider:SetPos(300.5,90.9253,687.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr68773ID.collider, 3)
level07.colliders.Tile7_wallNr82774ID = {}
level07.colliders.Tile7_wallNr82774ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr82774ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr82774ID.collider:SetZAxis(0.768221,0,0.640184)
level07.colliders.Tile7_wallNr82774ID.collider:SetHalfLengths(0.3,18.5366,27.3359)
level07.colliders.Tile7_wallNr82774ID.collider:SetPos(292,90.2002,697.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr82774ID.collider, 3)
level07.colliders.Tile7_wallNr118775ID = {}
level07.colliders.Tile7_wallNr118775ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr118775ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr118775ID.collider:SetZAxis(-0.196116,0,-0.980581)
level07.colliders.Tile7_wallNr118775ID.collider:SetHalfLengths(0.3,5,2.54951)
level07.colliders.Tile7_wallNr118775ID.collider:SetPos(321.5,103.253,703.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr118775ID.collider, 3)
level07.colliders.Tile7_wallNr119776ID = {}
level07.colliders.Tile7_wallNr119776ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr119776ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr119776ID.collider:SetZAxis(1,0,0)
level07.colliders.Tile7_wallNr119776ID.collider:SetHalfLengths(0.3,6.93379,3.5)
level07.colliders.Tile7_wallNr119776ID.collider:SetPos(282.5,90.9253,669)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr119776ID.collider, 3)
level07.colliders.Tile7_wallNr120777ID = {}
level07.colliders.Tile7_wallNr120777ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr120777ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr120777ID.collider:SetZAxis(0,0,1)
level07.colliders.Tile7_wallNr120777ID.collider:SetHalfLengths(0.3,6.45035,2.5)
level07.colliders.Tile7_wallNr120777ID.collider:SetPos(271,90.2002,682.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr120777ID.collider, 3)
level07.colliders.Tile7_wallNr13778ID = {}
level07.colliders.Tile7_wallNr13778ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr13778ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr13778ID.collider:SetZAxis(-0.984337,0,0.176299)
level07.colliders.Tile7_wallNr13778ID.collider:SetHalfLengths(0.3,21.9207,34.0331)
level07.colliders.Tile7_wallNr13778ID.collider:SetPos(258.5,142.171,537)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr13778ID.collider, 3)
level07.colliders.Tile7_wallNr95779ID = {}
level07.colliders.Tile7_wallNr95779ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr95779ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr95779ID.collider:SetZAxis(0.581238,0,0.813733)
level07.colliders.Tile7_wallNr95779ID.collider:SetHalfLengths(0.3,6.93379,4.30116)
level07.colliders.Tile7_wallNr95779ID.collider:SetPos(227.5,125.25,546.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr95779ID.collider, 3)
level07.colliders.Tile7_wallNr94780ID = {}
level07.colliders.Tile7_wallNr94780ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr94780ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr94780ID.collider:SetZAxis(-0.989415,0,0.145114)
level07.colliders.Tile7_wallNr94780ID.collider:SetHalfLengths(0.3,22.8876,37.9012)
level07.colliders.Tile7_wallNr94780ID.collider:SetPos(254.5,142.171,527.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr94780ID.collider, 3)
level07.colliders.Tile7_wallNr14781ID = {}
level07.colliders.Tile7_wallNr14781ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr14781ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr14781ID.collider:SetZAxis(-0.536875,0,-0.843661)
level07.colliders.Tile7_wallNr14781ID.collider:SetHalfLengths(0.3,5.72517,6.5192)
level07.colliders.Tile7_wallNr14781ID.collider:SetPos(213.5,124.283,527.5)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr14781ID.collider, 3)
level07.colliders.Tile7_wallNr15782ID = {}
level07.colliders.Tile7_wallNr15782ID.collider = OBBCollider.Create(-1)
level07.colliders.Tile7_wallNr15782ID.collider:SetOffset(0,0,0)
level07.colliders.Tile7_wallNr15782ID.collider:SetZAxis(0,0,-1)
level07.colliders.Tile7_wallNr15782ID.collider:SetHalfLengths(0.3,5,1)
level07.colliders.Tile7_wallNr15782ID.collider:SetPos(292,142.171,521)
CollisionHandler.AddOBB(level07.colliders.Tile7_wallNr15782ID.collider, 3)
end
level07.unload = function()
level07.props.tile739ID = nil
Gear.UnbindInstance(level07.props.t6s356ID.transformID)
Assets.UnloadModel('Models/tile6_s3.model')
level07.props.t6s356ID = nil
Gear.UnbindInstance(level07.props.t6s457ID.transformID)
Assets.UnloadModel('Models/tile6_s4.model')
level07.props.t6s457ID = nil
Gear.UnbindInstance(level07.props.t6s558ID.transformID)
Assets.UnloadModel('Models/tile6_s5.model')
level07.props.t6s558ID = nil
Gear.UnbindInstance(level07.props.t6s659ID.transformID)
Assets.UnloadModel('Models/tile6_s6.model')
level07.props.t6s659ID = nil
Gear.UnbindInstance(level07.props.t6s861ID.transformID)
Assets.UnloadModel('Models/tile6_s8.model')
level07.props.t6s861ID = nil
Gear.UnbindInstance(level07.props.t6s962ID.transformID)
Assets.UnloadModel('Models/tile6_s9.model')
level07.props.t6s962ID = nil
Gear.UnbindInstance(level07.props.t7s164ID.transformID)
Assets.UnloadModel('Models/tile7_s1.model')
level07.props.t7s164ID = nil
Gear.UnbindInstance(level07.props.t7s265ID.transformID)
Assets.UnloadModel('Models/tile7_s2.model')
level07.props.t7s265ID = nil
Gear.UnbindInstance(level07.props.t7s366ID.transformID)
Assets.UnloadModel('Models/tile7_s3.model')
level07.props.t7s366ID = nil
Gear.UnbindInstance(level07.props.t7s467ID.transformID)
Assets.UnloadModel('Models/tile7_s4.model')
level07.props.t7s467ID = nil
Gear.UnbindInstance(level07.props.t7s568ID.transformID)
Assets.UnloadModel('Models/tile7_s5.model')
level07.props.t7s568ID = nil
Gear.UnbindInstance(level07.props.t7s669ID.transformID)
Assets.UnloadModel('Models/tile7_s6.model')
level07.props.t7s669ID = nil
Gear.UnbindInstance(level07.props.t7s770ID.transformID)
Assets.UnloadModel('Models/tile7_s7.model')
level07.props.t7s770ID = nil
Gear.UnbindInstance(level07.props.t7s871ID.transformID)
Assets.UnloadModel('Models/tile7_s8.model')
level07.props.t7s871ID = nil
Gear.UnbindInstance(level07.props.t7s972ID.transformID)
Assets.UnloadModel('Models/tile7_s9.model')
level07.props.t7s972ID = nil
level07.colliders.Tile7_wallNr594ID = nil
level07.colliders.Tile7_wallNr1595ID = nil
level07.colliders.Tile7_wallNr2596ID = nil
level07.colliders.Tile7_wallNr3597ID = nil
level07.colliders.Tile7_wallNr5598ID = nil
level07.colliders.Tile7_wallNr6599ID = nil
level07.colliders.Tile7_wallNr7600ID = nil
level07.colliders.Tile7_wallNr8601ID = nil
level07.colliders.Tile7_wallNr9602ID = nil
level07.colliders.Tile7_wallNr10603ID = nil
level07.colliders.Tile7_wallNr11604ID = nil
level07.colliders.Tile7_wallNr16605ID = nil
level07.colliders.Tile7_wallNr17606ID = nil
level07.colliders.Tile7_wallNr18607ID = nil
level07.colliders.Tile7_wallNr19608ID = nil
level07.colliders.Tile7_wallNr20609ID = nil
level07.colliders.Tile7_wallNr21610ID = nil
level07.colliders.Tile7_wallNr22611ID = nil
level07.colliders.Tile7_wallNr23612ID = nil
level07.colliders.Tile7_wallNr24613ID = nil
level07.colliders.Tile7_wallNr26614ID = nil
level07.colliders.Tile7_wallNr27615ID = nil
level07.colliders.Tile7_wallNr28616ID = nil
level07.colliders.Tile7_wallNr29617ID = nil
level07.colliders.Tile7_wallNr30618ID = nil
level07.colliders.Tile7_wallNr31619ID = nil
level07.colliders.Tile7_wallNr32620ID = nil
level07.colliders.Tile7_wallNr33621ID = nil
level07.colliders.Tile7_wallNr35622ID = nil
level07.colliders.Tile7_wallNr36623ID = nil
level07.colliders.Tile7_wallNr37624ID = nil
level07.colliders.Tile7_wallNr38625ID = nil
level07.colliders.Tile7_wallNr39626ID = nil
level07.colliders.Tile7_wallNr40627ID = nil
level07.colliders.Tile7_wallNr41629ID = nil
level07.colliders.Tile7_wallNr42630ID = nil
level07.colliders.Tile7_wallNr43631ID = nil
level07.colliders.Tile7_wallNr45632ID = nil
level07.colliders.Tile7_wallNr48633ID = nil
level07.colliders.Tile7_wallNr49634ID = nil
level07.colliders.Tile7_wallNr50635ID = nil
level07.colliders.Tile7_wallNr51636ID = nil
level07.colliders.Tile7_wallNr52637ID = nil
level07.colliders.Tile7_wallNr55638ID = nil
level07.colliders.Tile7_wallNr56639ID = nil
level07.colliders.Tile7_wallNr57640ID = nil
level07.colliders.Tile7_wallNr58641ID = nil
level07.colliders.Tile7_wallNr59642ID = nil
level07.colliders.Tile7_wallNr60643ID = nil
level07.colliders.Tile7_wallNr61644ID = nil
level07.colliders.Tile7_wallNr62645ID = nil
level07.colliders.Tile7_wallNr63646ID = nil
level07.colliders.Tile7_wallNr64647ID = nil
level07.colliders.Tile7_wallNr65648ID = nil
level07.colliders.Tile7_wallNr66649ID = nil
level07.colliders.Tile7_wallNr67650ID = nil
level07.colliders.Tile7_wallNr69651ID = nil
level07.colliders.Tile7_wallNr70652ID = nil
level07.colliders.Tile7_wallNr72653ID = nil
level07.colliders.Tile7_wallNr73654ID = nil
level07.colliders.Tile7_wallNr74655ID = nil
level07.colliders.Tile7_wallNr75656ID = nil
level07.colliders.Tile7_wallNr79657ID = nil
level07.colliders.Tile7_wallNr80658ID = nil
level07.colliders.Tile7_wallNr81659ID = nil
level07.colliders.Tile7_wallNr83660ID = nil
level07.colliders.Tile7_wallNr84661ID = nil
level07.colliders.Tile7_wallNr85662ID = nil
level07.colliders.Tile7_wallNr86663ID = nil
level07.colliders.Tile7_wallNr87664ID = nil
level07.colliders.Tile7_wallNr88665ID = nil
level07.colliders.Tile7_wallNr89666ID = nil
level07.colliders.Tile7_wallNr90667ID = nil
level07.colliders.Tile7_wallNr91668ID = nil
level07.colliders.Tile7_wallNr92669ID = nil
level07.colliders.Tile7_wallNr93670ID = nil
level07.colliders.Tile7_wallNr96671ID = nil
level07.colliders.Tile7_wallNr97672ID = nil
Gear.UnbindInstance(level07.props.Rock685ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level07.props.Rock685ID = nil
Gear.UnbindInstance(level07.props.Rock1686ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level07.props.Rock1686ID = nil
Gear.UnbindInstance(level07.props.t6s11687ID.transformID)
Assets.UnloadModel('Models/tile6_s11.model')
level07.props.t6s11687ID = nil
Gear.UnbindInstance(level07.props.t6s14690ID.transformID)
Assets.UnloadModel('Models/tile6_s14.model')
level07.props.t6s14690ID = nil
level07.colliders.Tile7_wallNr44741ID = nil
level07.colliders.Tile7_wallNr99742ID = nil
level07.colliders.Tile7_wallNr100743ID = nil
level07.colliders.Tile7_wallNr101744ID = nil
level07.colliders.Tile7_wallNr78745ID = nil
level07.colliders.Tile7_wallNr102746ID = nil
level07.colliders.Tile7_wallNr103747ID = nil
level07.colliders.Tile7_wallNr76748ID = nil
level07.colliders.Tile7_wallNr4749ID = nil
level07.colliders.Tile7_wallNr71750ID = nil
level07.colliders.Tile7_wallNr77751ID = nil
level07.colliders.Tile7_wallNr98752ID = nil
level07.colliders.Tile7_wallNr104753ID = nil
level07.colliders.Tile7_wallNr105754ID = nil
level07.colliders.Tile7_wallNr106755ID = nil
level07.colliders.Tile7_wallNr107756ID = nil
level07.colliders.Tile7_wallNr108757ID = nil
level07.colliders.Tile7_wallNr109758ID = nil
level07.colliders.Tile7_wallNr110759ID = nil
level07.colliders.Tile7_wallNr111760ID = nil
level07.colliders.Tile7_wallNr25761ID = nil
level07.colliders.Tile7_wallNr54762ID = nil
level07.colliders.Tile7_wallNr53763ID = nil
level07.colliders.Tile7_wallNr112764ID = nil
level07.colliders.Tile7_wallNr113765ID = nil
level07.colliders.Tile7_wallNr34766ID = nil
level07.colliders.Tile7_wallNr46767ID = nil
level07.colliders.Tile7_wallNr114768ID = nil
level07.colliders.Tile7_wallNr115769ID = nil
level07.colliders.Tile7_wallNr116770ID = nil
level07.colliders.Tile7_wallNr47771ID = nil
level07.colliders.Tile7_wallNr117772ID = nil
level07.colliders.Tile7_wallNr68773ID = nil
level07.colliders.Tile7_wallNr82774ID = nil
level07.colliders.Tile7_wallNr118775ID = nil
level07.colliders.Tile7_wallNr119776ID = nil
level07.colliders.Tile7_wallNr120777ID = nil
level07.colliders.Tile7_wallNr13778ID = nil
level07.colliders.Tile7_wallNr95779ID = nil
level07.colliders.Tile7_wallNr94780ID = nil
level07.colliders.Tile7_wallNr14781ID = nil
level07.colliders.Tile7_wallNr15782ID = nil
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
level08.props.tile840ID = {}
level08.props.t8s173ID = {}
level08.props.t8s173ID.model = Assets.LoadModel('Models/tile8_s1.model')
level08.props.t8s173ID.transformID = Gear.BindStaticInstance(level08.props.t8s173ID.model)
Transform.SetPosition(level08.props.t8s173ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s173ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s173ID.transformID, {x=0, y=0, z=0})
level08.props.t8s274ID = {}
level08.props.t8s274ID.model = Assets.LoadModel('Models/tile8_s2.model')
level08.props.t8s274ID.transformID = Gear.BindStaticInstance(level08.props.t8s274ID.model)
Transform.SetPosition(level08.props.t8s274ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s274ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s274ID.transformID, {x=0, y=0, z=0})
level08.props.t8s375ID = {}
level08.props.t8s375ID.model = Assets.LoadModel('Models/tile8_s3.model')
level08.props.t8s375ID.transformID = Gear.BindStaticInstance(level08.props.t8s375ID.model)
Transform.SetPosition(level08.props.t8s375ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s375ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s375ID.transformID, {x=0, y=0, z=0})
level08.props.t8s4691ID = {}
level08.props.t8s4691ID.model = Assets.LoadModel('Models/tile8_s4.model')
level08.props.t8s4691ID.transformID = Gear.BindStaticInstance(level08.props.t8s4691ID.model)
Transform.SetPosition(level08.props.t8s4691ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s4691ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s4691ID.transformID, {x=0, y=0, z=0})
level08.props.t8s5692ID = {}
level08.props.t8s5692ID.model = Assets.LoadModel('Models/tile8_s5.model')
level08.props.t8s5692ID.transformID = Gear.BindStaticInstance(level08.props.t8s5692ID.model)
Transform.SetPosition(level08.props.t8s5692ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s5692ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s5692ID.transformID, {x=0, y=0, z=0})
level08.props.t8s6693ID = {}
level08.props.t8s6693ID.model = Assets.LoadModel('Models/tile8_s6a.model')
level08.props.t8s6693ID.transformID = Gear.BindStaticInstance(level08.props.t8s6693ID.model)
Transform.SetPosition(level08.props.t8s6693ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s6693ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s6693ID.transformID, {x=0, y=0, z=0})
level08.props.t8s7694ID = {}
level08.props.t8s7694ID.model = Assets.LoadModel('Models/tile8_s7.model')
level08.props.t8s7694ID.transformID = Gear.BindStaticInstance(level08.props.t8s7694ID.model)
Transform.SetPosition(level08.props.t8s7694ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s7694ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s7694ID.transformID, {x=0, y=0, z=0})
level08.props.t8s8703ID = {}
level08.props.t8s8703ID.model = Assets.LoadModel('Models/tile8_s8a.model')
level08.props.t8s8703ID.transformID = Gear.BindStaticInstance(level08.props.t8s8703ID.model)
Transform.SetPosition(level08.props.t8s8703ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s8703ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s8703ID.transformID, {x=0, y=0, z=0})
level08.colliders.Tile8_wallNr783ID = {}
level08.colliders.Tile8_wallNr783ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr783ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr783ID.collider:SetZAxis(0,0,-1)
level08.colliders.Tile8_wallNr783ID.collider:SetHalfLengths(0.3,5,8)
level08.colliders.Tile8_wallNr783ID.collider:SetPos(324,142.046,503)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr783ID.collider, 3)
level08.colliders.Tile8_wallNr1784ID = {}
level08.colliders.Tile8_wallNr1784ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr1784ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr1784ID.collider:SetZAxis(1,0,0)
level08.colliders.Tile8_wallNr1784ID.collider:SetHalfLengths(0.3,5.33105,2)
level08.colliders.Tile8_wallNr1784ID.collider:SetPos(326,142.046,495)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr1784ID.collider, 3)
level08.colliders.Tile8_wallNr2785ID = {}
level08.colliders.Tile8_wallNr2785ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr2785ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr2785ID.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.Tile8_wallNr2785ID.collider:SetHalfLengths(0.3,7.64857,4.12311)
level08.colliders.Tile8_wallNr2785ID.collider:SetPos(332,141.715,494)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr2785ID.collider, 3)
level08.colliders.Tile8_wallNr3786ID = {}
level08.colliders.Tile8_wallNr3786ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr3786ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr3786ID.collider:SetZAxis(0.976187,0,-0.21693)
level08.colliders.Tile8_wallNr3786ID.collider:SetHalfLengths(0.3,9.80052,4.60977)
level08.colliders.Tile8_wallNr3786ID.collider:SetPos(340.5,139.066,492)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr3786ID.collider, 3)
level08.colliders.Tile8_wallNr4787ID = {}
level08.colliders.Tile8_wallNr4787ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr4787ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr4787ID.collider:SetZAxis(0.894427,0,-0.447214)
level08.colliders.Tile8_wallNr4787ID.collider:SetHalfLengths(0.3,7.97963,3.3541)
level08.colliders.Tile8_wallNr4787ID.collider:SetPos(348,134.266,489.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr4787ID.collider, 3)
level08.colliders.Tile8_wallNr5788ID = {}
level08.colliders.Tile8_wallNr5788ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr5788ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr5788ID.collider:SetZAxis(0.813733,0,-0.581238)
level08.colliders.Tile8_wallNr5788ID.collider:SetHalfLengths(0.3,9.46946,4.30116)
level08.colliders.Tile8_wallNr5788ID.collider:SetPos(354.5,131.286,485.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr5788ID.collider, 3)
level08.colliders.Tile8_wallNr6789ID = {}
level08.colliders.Tile8_wallNr6789ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr6789ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr6789ID.collider:SetZAxis(0.5547,0,-0.83205)
level08.colliders.Tile8_wallNr6789ID.collider:SetHalfLengths(0.3,6.15874,1.80278)
level08.colliders.Tile8_wallNr6789ID.collider:SetPos(359,126.817,481.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr6789ID.collider, 3)
level08.colliders.Tile8_wallNr7790ID = {}
level08.colliders.Tile8_wallNr7790ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr7790ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr7790ID.collider:SetZAxis(0.707107,0,-0.707107)
level08.colliders.Tile8_wallNr7790ID.collider:SetHalfLengths(0.3,5,3.53553)
level08.colliders.Tile8_wallNr7790ID.collider:SetPos(362.5,125.658,477.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr7790ID.collider, 3)
level08.colliders.Tile8_wallNr8791ID = {}
level08.colliders.Tile8_wallNr8791ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr8791ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr8791ID.collider:SetZAxis(0.650791,0,-0.759257)
level08.colliders.Tile8_wallNr8791ID.collider:SetHalfLengths(0.3,5,4.60977)
level08.colliders.Tile8_wallNr8791ID.collider:SetPos(368,125.658,471.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr8791ID.collider, 3)
level08.colliders.Tile8_wallNr9792ID = {}
level08.colliders.Tile8_wallNr9792ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr9792ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr9792ID.collider:SetZAxis(0.447214,0,-0.894427)
level08.colliders.Tile8_wallNr9792ID.collider:SetHalfLengths(0.3,5,4.47214)
level08.colliders.Tile8_wallNr9792ID.collider:SetPos(373,125.658,464)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr9792ID.collider, 3)
level08.colliders.Tile8_wallNr10793ID = {}
level08.colliders.Tile8_wallNr10793ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr10793ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr10793ID.collider:SetZAxis(0.351123,0,-0.936329)
level08.colliders.Tile8_wallNr10793ID.collider:SetHalfLengths(0.3,5,4.272)
level08.colliders.Tile8_wallNr10793ID.collider:SetPos(376.5,125.658,456)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr10793ID.collider, 3)
level08.colliders.Tile8_wallNr11794ID = {}
level08.colliders.Tile8_wallNr11794ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr11794ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr11794ID.collider:SetZAxis(0.141421,0,-0.98995)
level08.colliders.Tile8_wallNr11794ID.collider:SetHalfLengths(0.3,5.16553,3.53553)
level08.colliders.Tile8_wallNr11794ID.collider:SetPos(378.5,125.658,448.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr11794ID.collider, 3)
level08.colliders.Tile8_wallNr12795ID = {}
level08.colliders.Tile8_wallNr12795ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr12795ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr12795ID.collider:SetZAxis(0.0995037,0,-0.995037)
level08.colliders.Tile8_wallNr12795ID.collider:SetHalfLengths(0.3,5.16553,5.02494)
level08.colliders.Tile8_wallNr12795ID.collider:SetPos(379.5,125.824,440)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr12795ID.collider, 3)
level08.colliders.Tile8_wallNr13796ID = {}
level08.colliders.Tile8_wallNr13796ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr13796ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr13796ID.collider:SetZAxis(-0.124035,0,-0.992278)
level08.colliders.Tile8_wallNr13796ID.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.Tile8_wallNr13796ID.collider:SetPos(379.5,125.989,431)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr13796ID.collider, 3)
level08.colliders.Tile8_wallNr14797ID = {}
level08.colliders.Tile8_wallNr14797ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr14797ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr14797ID.collider:SetZAxis(-0.110432,0,-0.993884)
level08.colliders.Tile8_wallNr14797ID.collider:SetHalfLengths(0.3,5.16553,4.52769)
level08.colliders.Tile8_wallNr14797ID.collider:SetPos(378.5,126.155,422.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr14797ID.collider, 3)
level08.colliders.Tile8_wallNr15798ID = {}
level08.colliders.Tile8_wallNr15798ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr15798ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr15798ID.collider:SetZAxis(-0.393919,0,-0.919145)
level08.colliders.Tile8_wallNr15798ID.collider:SetHalfLengths(0.3,5.16553,3.80789)
level08.colliders.Tile8_wallNr15798ID.collider:SetPos(376.5,125.989,414.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr15798ID.collider, 3)
level08.colliders.Tile8_wallNr16799ID = {}
level08.colliders.Tile8_wallNr16799ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr16799ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr16799ID.collider:SetZAxis(-0.447214,0,-0.894427)
level08.colliders.Tile8_wallNr16799ID.collider:SetHalfLengths(0.3,5,4.47214)
level08.colliders.Tile8_wallNr16799ID.collider:SetPos(373,125.824,407)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr16799ID.collider, 3)
level08.colliders.Tile8_wallNr17800ID = {}
level08.colliders.Tile8_wallNr17800ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr17800ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr17800ID.collider:SetZAxis(-0.640184,0,-0.768221)
level08.colliders.Tile8_wallNr17800ID.collider:SetHalfLengths(0.3,5.16553,7.81025)
level08.colliders.Tile8_wallNr17800ID.collider:SetPos(366,125.824,397)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr17800ID.collider, 3)
level08.colliders.Tile8_wallNr18801ID = {}
level08.colliders.Tile8_wallNr18801ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr18801ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr18801ID.collider:SetZAxis(-0.752577,0,0.658505)
level08.colliders.Tile8_wallNr18801ID.collider:SetHalfLengths(0.3,5.4966,5.31507)
level08.colliders.Tile8_wallNr18801ID.collider:SetPos(357,125.658,394.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr18801ID.collider, 3)
level08.colliders.Tile8_wallNr19802ID = {}
level08.colliders.Tile8_wallNr19802ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr19802ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr19802ID.collider:SetZAxis(-0.5547,0,0.83205)
level08.colliders.Tile8_wallNr19802ID.collider:SetHalfLengths(0.3,5.4966,3.60555)
level08.colliders.Tile8_wallNr19802ID.collider:SetPos(351,126.155,401)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr19802ID.collider, 3)
level08.colliders.Tile8_wallNr20803ID = {}
level08.colliders.Tile8_wallNr20803ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr20803ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr20803ID.collider:SetZAxis(-0.707107,0,0.707107)
level08.colliders.Tile8_wallNr20803ID.collider:SetHalfLengths(0.3,5.33107,3.53553)
level08.colliders.Tile8_wallNr20803ID.collider:SetPos(346.5,126.651,406.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr20803ID.collider, 3)
level08.colliders.Tile8_wallNr21804ID = {}
level08.colliders.Tile8_wallNr21804ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr21804ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr21804ID.collider:SetZAxis(-0.847998,0,-0.529999)
level08.colliders.Tile8_wallNr21804ID.collider:SetHalfLengths(0.3,5.16553,4.71699)
level08.colliders.Tile8_wallNr21804ID.collider:SetPos(340,126.32,406.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr21804ID.collider, 3)
level08.colliders.Tile8_wallNr22805ID = {}
level08.colliders.Tile8_wallNr22805ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr22805ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr22805ID.collider:SetZAxis(-0.948683,0,-0.316228)
level08.colliders.Tile8_wallNr22805ID.collider:SetHalfLengths(0.3,5.33107,4.74342)
level08.colliders.Tile8_wallNr22805ID.collider:SetPos(331.5,126.486,402.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr22805ID.collider, 3)
level08.colliders.Tile8_wallNr23806ID = {}
level08.colliders.Tile8_wallNr23806ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr23806ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr23806ID.collider:SetZAxis(-1,0,0)
level08.colliders.Tile8_wallNr23806ID.collider:SetHalfLengths(0.3,5,5.5)
level08.colliders.Tile8_wallNr23806ID.collider:SetPos(321.5,126.817,401)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr23806ID.collider, 3)
level08.colliders.Tile8_wallNr24807ID = {}
level08.colliders.Tile8_wallNr24807ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr24807ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr24807ID.collider:SetZAxis(-0.961524,0,0.274721)
level08.colliders.Tile8_wallNr24807ID.collider:SetHalfLengths(0.3,5.16553,3.64005)
level08.colliders.Tile8_wallNr24807ID.collider:SetPos(312.5,126.817,402)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr24807ID.collider, 3)
level08.colliders.Tile8_wallNr25808ID = {}
level08.colliders.Tile8_wallNr25808ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr25808ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr25808ID.collider:SetZAxis(-0.877896,0,0.478852)
level08.colliders.Tile8_wallNr25808ID.collider:SetHalfLengths(0.3,5.16553,6.26498)
level08.colliders.Tile8_wallNr25808ID.collider:SetPos(303.5,126.651,406)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr25808ID.collider, 3)
level08.colliders.Tile8_wallNr26809ID = {}
level08.colliders.Tile8_wallNr26809ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr26809ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr26809ID.collider:SetZAxis(-0.633238,0,-0.773957)
level08.colliders.Tile8_wallNr26809ID.collider:SetHalfLengths(0.3,5.33107,7.10634)
level08.colliders.Tile8_wallNr26809ID.collider:SetPos(293.5,126.486,403.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr26809ID.collider, 3)
level08.colliders.Tile8_wallNr27810ID = {}
level08.colliders.Tile8_wallNr27810ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr27810ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr27810ID.collider:SetZAxis(-0.928477,0,0.371391)
level08.colliders.Tile8_wallNr27810ID.collider:SetHalfLengths(0.3,6.15874,8.07775)
level08.colliders.Tile8_wallNr27810ID.collider:SetPos(281.5,126.155,401)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr27810ID.collider, 3)
level08.colliders.Tile8_wallNr28811ID = {}
level08.colliders.Tile8_wallNr28811ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr28811ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr28811ID.collider:SetZAxis(-0.970143,0,0.242536)
level08.colliders.Tile8_wallNr28811ID.collider:SetHalfLengths(0.3,6.48981,2.06155)
level08.colliders.Tile8_wallNr28811ID.collider:SetPos(272,127.313,404.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr28811ID.collider, 3)
level08.colliders.Tile8_wallNr29812ID = {}
level08.colliders.Tile8_wallNr29812ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr29812ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr29812ID.collider:SetZAxis(-0.393919,0,0.919145)
level08.colliders.Tile8_wallNr29812ID.collider:SetHalfLengths(0.3,5.16553,7.61577)
level08.colliders.Tile8_wallNr29812ID.collider:SetPos(267,125.824,412)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr29812ID.collider, 3)
level08.colliders.Tile8_wallNr30813ID = {}
level08.colliders.Tile8_wallNr30813ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr30813ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr30813ID.collider:SetZAxis(-0.124035,0,0.992278)
level08.colliders.Tile8_wallNr30813ID.collider:SetHalfLengths(0.3,5,4.03113)
level08.colliders.Tile8_wallNr30813ID.collider:SetPos(263.5,125.658,423)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr30813ID.collider, 3)
level08.colliders.Tile8_wallNr31814ID = {}
level08.colliders.Tile8_wallNr31814ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr31814ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr31814ID.collider:SetZAxis(-0.124035,0,0.992278)
level08.colliders.Tile8_wallNr31814ID.collider:SetHalfLengths(0.3,5,4.03113)
level08.colliders.Tile8_wallNr31814ID.collider:SetPos(262.5,125.658,431)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr31814ID.collider, 3)
level08.colliders.Tile8_wallNr32815ID = {}
level08.colliders.Tile8_wallNr32815ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr32815ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr32815ID.collider:SetZAxis(0.110432,0,0.993884)
level08.colliders.Tile8_wallNr32815ID.collider:SetHalfLengths(0.3,5.16553,4.52769)
level08.colliders.Tile8_wallNr32815ID.collider:SetPos(262.5,125.658,439.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr32815ID.collider, 3)
level08.colliders.Tile8_wallNr33816ID = {}
level08.colliders.Tile8_wallNr33816ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr33816ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr33816ID.collider:SetZAxis(0.242536,0,0.970143)
level08.colliders.Tile8_wallNr33816ID.collider:SetHalfLengths(0.3,5.16553,4.12311)
level08.colliders.Tile8_wallNr33816ID.collider:SetPos(264,125.824,448)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr33816ID.collider, 3)
level08.colliders.Tile8_wallNr34817ID = {}
level08.colliders.Tile8_wallNr34817ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr34817ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr34817ID.collider:SetZAxis(0.351123,0,0.936329)
level08.colliders.Tile8_wallNr34817ID.collider:SetHalfLengths(0.3,5.16553,4.272)
level08.colliders.Tile8_wallNr34817ID.collider:SetPos(266.5,125.989,456)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr34817ID.collider, 3)
level08.colliders.Tile8_wallNr35818ID = {}
level08.colliders.Tile8_wallNr35818ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr35818ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr35818ID.collider:SetZAxis(0.393919,0,0.919145)
level08.colliders.Tile8_wallNr35818ID.collider:SetHalfLengths(0.3,5,3.80789)
level08.colliders.Tile8_wallNr35818ID.collider:SetPos(269.5,125.824,463.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr35818ID.collider, 3)
level08.colliders.Tile8_wallNr36819ID = {}
level08.colliders.Tile8_wallNr36819ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr36819ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr36819ID.collider:SetZAxis(0.640184,0,0.768221)
level08.colliders.Tile8_wallNr36819ID.collider:SetHalfLengths(0.3,5,3.90512)
level08.colliders.Tile8_wallNr36819ID.collider:SetPos(273.5,125.824,470)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr36819ID.collider, 3)
level08.colliders.Tile8_wallNr37820ID = {}
level08.colliders.Tile8_wallNr37820ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr37820ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr37820ID.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.Tile8_wallNr37820ID.collider:SetHalfLengths(0.3,5,4.94975)
level08.colliders.Tile8_wallNr37820ID.collider:SetPos(279.5,125.824,476.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr37820ID.collider, 3)
level08.colliders.Tile8_wallNr38821ID = {}
level08.colliders.Tile8_wallNr38821ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr38821ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr38821ID.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.Tile8_wallNr38821ID.collider:SetHalfLengths(0.3,5.99321,2.12132)
level08.colliders.Tile8_wallNr38821ID.collider:SetPos(284.5,125.824,481.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr38821ID.collider, 3)
level08.colliders.Tile8_wallNr39822ID = {}
level08.colliders.Tile8_wallNr39822ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr39822ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr39822ID.collider:SetZAxis(0.780869,0,0.624695)
level08.colliders.Tile8_wallNr39822ID.collider:SetHalfLengths(0.3,7.64857,3.20156)
level08.colliders.Tile8_wallNr39822ID.collider:SetPos(288.5,126.817,485)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr39822ID.collider, 3)
level08.colliders.Tile8_wallNr40823ID = {}
level08.colliders.Tile8_wallNr40823ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr40823ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr40823ID.collider:SetZAxis(0.894427,0,0.447214)
level08.colliders.Tile8_wallNr40823ID.collider:SetHalfLengths(0.3,8.47624,3.3541)
level08.colliders.Tile8_wallNr40823ID.collider:SetPos(294,129.465,488.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr40823ID.collider, 3)
level08.colliders.Tile8_wallNr41824ID = {}
level08.colliders.Tile8_wallNr41824ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr41824ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr41824ID.collider:SetZAxis(0.919145,0,0.393919)
level08.colliders.Tile8_wallNr41824ID.collider:SetHalfLengths(0.3,9.13838,3.80789)
level08.colliders.Tile8_wallNr41824ID.collider:SetPos(300.5,132.942,491.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr41824ID.collider, 3)
level08.colliders.Tile8_wallNr42825ID = {}
level08.colliders.Tile8_wallNr42825ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr42825ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr42825ID.collider:SetZAxis(0.970143,0,0.242536)
level08.colliders.Tile8_wallNr42825ID.collider:SetHalfLengths(0.3,6.65535,2.06155)
level08.colliders.Tile8_wallNr42825ID.collider:SetPos(306,137.08,493.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr42825ID.collider, 3)
level08.colliders.Tile8_wallNr43826ID = {}
level08.colliders.Tile8_wallNr43826ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr43826ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr43826ID.collider:SetZAxis(0.980581,0,0.196116)
level08.colliders.Tile8_wallNr43826ID.collider:SetHalfLengths(0.3,7.31749,2.54951)
level08.colliders.Tile8_wallNr43826ID.collider:SetPos(310.5,138.735,494.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr43826ID.collider, 3)
level08.colliders.Tile8_wallNr44827ID = {}
level08.colliders.Tile8_wallNr44827ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr44827ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr44827ID.collider:SetZAxis(0.986394,0,0.164399)
level08.colliders.Tile8_wallNr44827ID.collider:SetHalfLengths(0.3,5.99321,3.04138)
level08.colliders.Tile8_wallNr44827ID.collider:SetPos(316,141.053,495.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr44827ID.collider, 3)
level08.colliders.Tile8_wallNr45828ID = {}
level08.colliders.Tile8_wallNr45828ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr45828ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr45828ID.collider:SetZAxis(0,0,1)
level08.colliders.Tile8_wallNr45828ID.collider:SetHalfLengths(0.3,5,7.5)
level08.colliders.Tile8_wallNr45828ID.collider:SetPos(319,142.046,503.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr45828ID.collider, 3)
level08.colliders.Tile8_wallNr46829ID = {}
level08.colliders.Tile8_wallNr46829ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr46829ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr46829ID.collider:SetZAxis(-1,0,0)
level08.colliders.Tile8_wallNr46829ID.collider:SetHalfLengths(0.3,5.16553,7)
level08.colliders.Tile8_wallNr46829ID.collider:SetPos(322,141.384,486)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr46829ID.collider, 3)
level08.colliders.Tile8_wallNr47830ID = {}
level08.colliders.Tile8_wallNr47830ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr47830ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr47830ID.collider:SetZAxis(-0.961524,0,-0.274721)
level08.colliders.Tile8_wallNr47830ID.collider:SetHalfLengths(0.3,8.80731,3.64005)
level08.colliders.Tile8_wallNr47830ID.collider:SetPos(311.5,141.218,485)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr47830ID.collider, 3)
level08.colliders.Tile8_wallNr48831ID = {}
level08.colliders.Tile8_wallNr48831ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr48831ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr48831ID.collider:SetZAxis(-0.928477,0,-0.371391)
level08.colliders.Tile8_wallNr48831ID.collider:SetHalfLengths(0.3,8.47624,2.69258)
level08.colliders.Tile8_wallNr48831ID.collider:SetPos(305.5,137.411,483)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr48831ID.collider, 3)
level08.colliders.Tile8_wallNr49832ID = {}
level08.colliders.Tile8_wallNr49832ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr49832ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr49832ID.collider:SetZAxis(-0.877896,0,-0.478852)
level08.colliders.Tile8_wallNr49832ID.collider:SetHalfLengths(0.3,12.118,6.26498)
level08.colliders.Tile8_wallNr49832ID.collider:SetPos(297.5,133.935,479)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr49832ID.collider, 3)
level08.colliders.Tile8_wallNr50833ID = {}
level08.colliders.Tile8_wallNr50833ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr50833ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr50833ID.collider:SetZAxis(0.948683,0,0.316228)
level08.colliders.Tile8_wallNr50833ID.collider:SetHalfLengths(0.3,5.16553,4.74342)
level08.colliders.Tile8_wallNr50833ID.collider:SetPos(296.5,126.817,477.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr50833ID.collider, 3)
level08.colliders.Tile8_wallNr51834ID = {}
level08.colliders.Tile8_wallNr51834ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr51834ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr51834ID.collider:SetZAxis(0.447214,0,-0.894427)
level08.colliders.Tile8_wallNr51834ID.collider:SetHalfLengths(0.3,5.16553,4.47214)
level08.colliders.Tile8_wallNr51834ID.collider:SetPos(303,126.982,475)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr51834ID.collider, 3)
level08.colliders.Tile8_wallNr52835ID = {}
level08.colliders.Tile8_wallNr52835ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr52835ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr52835ID.collider:SetZAxis(0.939793,0,0.341743)
level08.colliders.Tile8_wallNr52835ID.collider:SetHalfLengths(0.3,5.16553,5.85235)
level08.colliders.Tile8_wallNr52835ID.collider:SetPos(310.5,126.817,473)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr52835ID.collider, 3)
level08.colliders.Tile8_wallNr53836ID = {}
level08.colliders.Tile8_wallNr53836ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr53836ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr53836ID.collider:SetZAxis(-0.0995037,0,0.995037)
level08.colliders.Tile8_wallNr53836ID.collider:SetHalfLengths(0.3,5.33107,5.02494)
level08.colliders.Tile8_wallNr53836ID.collider:SetPos(315.5,126.651,480)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr53836ID.collider, 3)
level08.colliders.Tile8_wallNr54837ID = {}
level08.colliders.Tile8_wallNr54837ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr54837ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr54837ID.collider:SetZAxis(1,0,0)
level08.colliders.Tile8_wallNr54837ID.collider:SetHalfLengths(0.3,5.4966,7)
level08.colliders.Tile8_wallNr54837ID.collider:SetPos(322,126.982,485)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr54837ID.collider, 3)
level08.colliders.Tile8_wallNr55838ID = {}
level08.colliders.Tile8_wallNr55838ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr55838ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr55838ID.collider:SetZAxis(-0.178885,0,-0.98387)
level08.colliders.Tile8_wallNr55838ID.collider:SetHalfLengths(0.3,5.16553,5.59017)
level08.colliders.Tile8_wallNr55838ID.collider:SetPos(328,127.479,479.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr55838ID.collider, 3)
level08.colliders.Tile8_wallNr56839ID = {}
level08.colliders.Tile8_wallNr56839ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr56839ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr56839ID.collider:SetZAxis(0.964764,0,-0.263117)
level08.colliders.Tile8_wallNr56839ID.collider:SetHalfLengths(0.3,5.33107,5.70088)
level08.colliders.Tile8_wallNr56839ID.collider:SetPos(332.5,127.313,472.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr56839ID.collider, 3)
level08.colliders.Tile8_wallNr57840ID = {}
level08.colliders.Tile8_wallNr57840ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr57840ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr57840ID.collider:SetZAxis(0.371391,0,0.928477)
level08.colliders.Tile8_wallNr57840ID.collider:SetHalfLengths(0.3,5.4966,5.38516)
level08.colliders.Tile8_wallNr57840ID.collider:SetPos(340,126.982,476)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr57840ID.collider, 3)
level08.colliders.Tile8_wallNr58841ID = {}
level08.colliders.Tile8_wallNr58841ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr58841ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr58841ID.collider:SetZAxis(0.894427,0,-0.447214)
level08.colliders.Tile8_wallNr58841ID.collider:SetHalfLengths(0.3,5.4966,5.59017)
level08.colliders.Tile8_wallNr58841ID.collider:SetPos(347,127.479,478.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr58841ID.collider, 3)
level08.colliders.Tile8_wallNr59842ID = {}
level08.colliders.Tile8_wallNr59842ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr59842ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr59842ID.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.Tile8_wallNr59842ID.collider:SetHalfLengths(0.3,7.31749,2.06155)
level08.colliders.Tile8_wallNr59842ID.collider:SetPos(331,141.384,485.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr59842ID.collider, 3)
level08.colliders.Tile8_wallNr60843ID = {}
level08.colliders.Tile8_wallNr60843ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr60843ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr60843ID.collider:SetZAxis(0.948683,0,-0.316228)
level08.colliders.Tile8_wallNr60843ID.collider:SetHalfLengths(0.3,8.3107,3.16228)
level08.colliders.Tile8_wallNr60843ID.collider:SetPos(336,139.066,484)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr60843ID.collider, 3)
level08.colliders.Tile8_wallNr61844ID = {}
level08.colliders.Tile8_wallNr61844ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr61844ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr61844ID.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.Tile8_wallNr61844ID.collider:SetHalfLengths(0.3,7.8141,2.06155)
level08.colliders.Tile8_wallNr61844ID.collider:SetPos(341,135.756,482.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr61844ID.collider, 3)
level08.colliders.Tile8_wallNr62845ID = {}
level08.colliders.Tile8_wallNr62845ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr62845ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr62845ID.collider:SetZAxis(0.83205,0,-0.5547)
level08.colliders.Tile8_wallNr62845ID.collider:SetHalfLengths(0.3,10.9593,5.40833)
level08.colliders.Tile8_wallNr62845ID.collider:SetPos(347.5,132.942,479)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr62845ID.collider, 3)
level08.colliders.Tile8_wallNr63846ID = {}
level08.colliders.Tile8_wallNr63846ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr63846ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr63846ID.collider:SetZAxis(0.633238,0,-0.773957)
level08.colliders.Tile8_wallNr63846ID.collider:SetHalfLengths(0.3,5,7.10634)
level08.colliders.Tile8_wallNr63846ID.collider:SetPos(358.5,127.479,467.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr63846ID.collider, 3)
level08.colliders.Tile8_wallNr64847ID = {}
level08.colliders.Tile8_wallNr64847ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr64847ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr64847ID.collider:SetZAxis(-0.847998,0,-0.529999)
level08.colliders.Tile8_wallNr64847ID.collider:SetHalfLengths(0.3,5.4966,4.71699)
level08.colliders.Tile8_wallNr64847ID.collider:SetPos(359,127.479,459.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr64847ID.collider, 3)
level08.colliders.Tile8_wallNr65848ID = {}
level08.colliders.Tile8_wallNr65848ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr65848ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr65848ID.collider:SetZAxis(-0.664364,0,0.747409)
level08.colliders.Tile8_wallNr65848ID.collider:SetHalfLengths(0.3,5.16553,6.0208)
level08.colliders.Tile8_wallNr65848ID.collider:SetPos(351,126.982,461.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr65848ID.collider, 3)
level08.colliders.Tile8_wallNr66849ID = {}
level08.colliders.Tile8_wallNr66849ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr66849ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr66849ID.collider:SetZAxis(0.752577,0,0.658505)
level08.colliders.Tile8_wallNr66849ID.collider:SetHalfLengths(0.3,5.16553,5.31507)
level08.colliders.Tile8_wallNr66849ID.collider:SetPos(351,127.148,469.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr66849ID.collider, 3)
level08.colliders.Tile8_wallNr67850ID = {}
level08.colliders.Tile8_wallNr67850ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr67850ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr67850ID.collider:SetZAxis(0.957826,0,0.287348)
level08.colliders.Tile8_wallNr67850ID.collider:SetHalfLengths(0.3,5,5.22015)
level08.colliders.Tile8_wallNr67850ID.collider:SetPos(365,127.313,447.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr67850ID.collider, 3)
level08.colliders.Tile8_wallNr68851ID = {}
level08.colliders.Tile8_wallNr68851ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr68851ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr68851ID.collider:SetZAxis(0.066519,0,-0.997785)
level08.colliders.Tile8_wallNr68851ID.collider:SetHalfLengths(0.3,5.4966,7.51665)
level08.colliders.Tile8_wallNr68851ID.collider:SetPos(370.5,127.313,441.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr68851ID.collider, 3)
level08.colliders.Tile8_wallNr69852ID = {}
level08.colliders.Tile8_wallNr69852ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr69852ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr69852ID.collider:SetZAxis(-0.995037,0,0.0995037)
level08.colliders.Tile8_wallNr69852ID.collider:SetHalfLengths(0.3,5.33107,5.02494)
level08.colliders.Tile8_wallNr69852ID.collider:SetPos(366,127.81,434.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr69852ID.collider, 3)
level08.colliders.Tile8_wallNr70853ID = {}
level08.colliders.Tile8_wallNr70853ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr70853ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr70853ID.collider:SetZAxis(-0.0905358,0,0.995893)
level08.colliders.Tile8_wallNr70853ID.collider:SetHalfLengths(0.3,5.16553,5.52268)
level08.colliders.Tile8_wallNr70853ID.collider:SetPos(360.5,127.479,440.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr70853ID.collider, 3)
level08.colliders.Tile8_wallNr71854ID = {}
level08.colliders.Tile8_wallNr71854ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr71854ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr71854ID.collider:SetZAxis(-0.447214,0,-0.894427)
level08.colliders.Tile8_wallNr71854ID.collider:SetHalfLengths(0.3,5.16553,7.82624)
level08.colliders.Tile8_wallNr71854ID.collider:SetPos(366.5,126.982,414)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr71854ID.collider, 3)
level08.colliders.Tile8_wallNr72855ID = {}
level08.colliders.Tile8_wallNr72855ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr72855ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr72855ID.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.Tile8_wallNr72855ID.collider:SetHalfLengths(0.3,5.66214,2.5)
level08.colliders.Tile8_wallNr72855ID.collider:SetPos(361,127.148,408.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr72855ID.collider, 3)
level08.colliders.Tile8_wallNr73856ID = {}
level08.colliders.Tile8_wallNr73856ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr73856ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr73856ID.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.Tile8_wallNr73856ID.collider:SetHalfLengths(0.3,5.33107,2.5)
level08.colliders.Tile8_wallNr73856ID.collider:SetPos(357,127.81,411.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr73856ID.collider, 3)
level08.colliders.Tile8_wallNr74857ID = {}
level08.colliders.Tile8_wallNr74857ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr74857ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr74857ID.collider:SetZAxis(0.447214,0,0.894427)
level08.colliders.Tile8_wallNr74857ID.collider:SetHalfLengths(0.3,5.4966,5.59017)
level08.colliders.Tile8_wallNr74857ID.collider:SetPos(357.5,127.479,418)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr74857ID.collider, 3)
level08.colliders.Tile8_wallNr75858ID = {}
level08.colliders.Tile8_wallNr75858ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr75858ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr75858ID.collider:SetZAxis(0.980581,0,-0.196116)
level08.colliders.Tile8_wallNr75858ID.collider:SetHalfLengths(0.3,5,5.09902)
level08.colliders.Tile8_wallNr75858ID.collider:SetPos(365,126.982,422)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr75858ID.collider, 3)
level08.colliders.Tile8_wallNr76859ID = {}
level08.colliders.Tile8_wallNr76859ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr76859ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr76859ID.collider:SetZAxis(0.868243,0,0.496139)
level08.colliders.Tile8_wallNr76859ID.collider:SetHalfLengths(0.3,6.65535,4.03113)
level08.colliders.Tile8_wallNr76859ID.collider:SetPos(277.5,127.313,406)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr76859ID.collider, 3)
level08.colliders.Tile8_wallNr77860ID = {}
level08.colliders.Tile8_wallNr77860ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr77860ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr77860ID.collider:SetZAxis(0.813733,0,0.581238)
level08.colliders.Tile8_wallNr77860ID.collider:SetHalfLengths(0.3,6.32428,4.30116)
level08.colliders.Tile8_wallNr77860ID.collider:SetPos(284.5,128.969,410.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr77860ID.collider, 3)
level08.colliders.Tile8_wallNr78861ID = {}
level08.colliders.Tile8_wallNr78861ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr78861ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr78861ID.collider:SetZAxis(-0.478852,0,0.877896)
level08.colliders.Tile8_wallNr78861ID.collider:SetHalfLengths(0.3,5.4966,6.26498)
level08.colliders.Tile8_wallNr78861ID.collider:SetPos(285,127.644,418.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr78861ID.collider, 3)
level08.colliders.Tile8_wallNr79862ID = {}
level08.colliders.Tile8_wallNr79862ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr79862ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr79862ID.collider:SetZAxis(-0.928477,0,-0.371391)
level08.colliders.Tile8_wallNr79862ID.collider:SetHalfLengths(0.3,5,5.38516)
level08.colliders.Tile8_wallNr79862ID.collider:SetPos(277,127.148,422)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr79862ID.collider, 3)
level08.colliders.Tile8_wallNr80863ID = {}
level08.colliders.Tile8_wallNr80863ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr80863ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr80863ID.collider:SetZAxis(0.124035,0,-0.992278)
level08.colliders.Tile8_wallNr80863ID.collider:SetHalfLengths(0.3,6.15874,4.03113)
level08.colliders.Tile8_wallNr80863ID.collider:SetPos(272.5,127.148,416)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr80863ID.collider, 3)
level08.colliders.Tile8_wallNr81864ID = {}
level08.colliders.Tile8_wallNr81864ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr81864ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr81864ID.collider:SetZAxis(0.124035,0,-0.992278)
level08.colliders.Tile8_wallNr81864ID.collider:SetHalfLengths(0.3,5.99321,4.03113)
level08.colliders.Tile8_wallNr81864ID.collider:SetPos(273.5,128.307,408)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr81864ID.collider, 3)
level08.colliders.Tile8_wallNr82865ID = {}
level08.colliders.Tile8_wallNr82865ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr82865ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr82865ID.collider:SetZAxis(0.707107,0,-0.707107)
level08.colliders.Tile8_wallNr82865ID.collider:SetHalfLengths(0.3,5.33107,4.94975)
level08.colliders.Tile8_wallNr82865ID.collider:SetPos(291.5,126.982,468.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr82865ID.collider, 3)
level08.colliders.Tile8_wallNr83866ID = {}
level08.colliders.Tile8_wallNr83866ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr83866ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr83866ID.collider:SetZAxis(-0.664364,0,-0.747409)
level08.colliders.Tile8_wallNr83866ID.collider:SetHalfLengths(0.3,5.33107,6.0208)
level08.colliders.Tile8_wallNr83866ID.collider:SetPos(291,127.313,460.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr83866ID.collider, 3)
level08.colliders.Tile8_wallNr84867ID = {}
level08.colliders.Tile8_wallNr84867ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr84867ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr84867ID.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.Tile8_wallNr84867ID.collider:SetHalfLengths(0.3,5.33107,5)
level08.colliders.Tile8_wallNr84867ID.collider:SetPos(283,126.982,459)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr84867ID.collider, 3)
level08.colliders.Tile8_wallNr85868ID = {}
level08.colliders.Tile8_wallNr85868ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr85868ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr85868ID.collider:SetZAxis(0.624695,0,0.780869)
level08.colliders.Tile8_wallNr85868ID.collider:SetHalfLengths(0.3,5.33107,3.20156)
level08.colliders.Tile8_wallNr85868ID.collider:SetPos(281,127.313,464.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr85868ID.collider, 3)
level08.colliders.Tile8_wallNr86869ID = {}
level08.colliders.Tile8_wallNr86869ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr86869ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr86869ID.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.Tile8_wallNr86869ID.collider:SetHalfLengths(0.3,5.66214,3.53553)
level08.colliders.Tile8_wallNr86869ID.collider:SetPos(285.5,127.644,469.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr86869ID.collider, 3)
level08.colliders.Tile8_wallNr87870ID = {}
level08.colliders.Tile8_wallNr87870ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr87870ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr87870ID.collider:SetZAxis(-0.928477,0,0.371391)
level08.colliders.Tile8_wallNr87870ID.collider:SetHalfLengths(0.3,5.66215,2.69258)
level08.colliders.Tile8_wallNr87870ID.collider:SetPos(280.5,127.81,447)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr87870ID.collider, 3)
level08.colliders.Tile8_wallNr88871ID = {}
level08.colliders.Tile8_wallNr88871ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr88871ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr88871ID.collider:SetZAxis(-0.980581,0,0.196116)
level08.colliders.Tile8_wallNr88871ID.collider:SetHalfLengths(0.3,5.66215,2.54951)
level08.colliders.Tile8_wallNr88871ID.collider:SetPos(275.5,128.472,448.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr88871ID.collider, 3)
level08.colliders.Tile8_wallNr89872ID = {}
level08.colliders.Tile8_wallNr89872ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr89872ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr89872ID.collider:SetZAxis(-0.141421,0,-0.98995)
level08.colliders.Tile8_wallNr89872ID.collider:SetHalfLengths(0.3,5.33108,3.53553)
level08.colliders.Tile8_wallNr89872ID.collider:SetPos(272.5,127.81,445.5)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr89872ID.collider, 3)
level08.colliders.Tile8_wallNr90873ID = {}
level08.colliders.Tile8_wallNr90873ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr90873ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr90873ID.collider:SetZAxis(-0.124035,0,-0.992278)
level08.colliders.Tile8_wallNr90873ID.collider:SetHalfLengths(0.3,5.66215,4.03113)
level08.colliders.Tile8_wallNr90873ID.collider:SetPos(271.5,128.141,438)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr90873ID.collider, 3)
level08.colliders.Tile8_wallNr91874ID = {}
level08.colliders.Tile8_wallNr91874ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr91874ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr91874ID.collider:SetZAxis(1,0,0)
level08.colliders.Tile8_wallNr91874ID.collider:SetHalfLengths(0.3,5.66214,5)
level08.colliders.Tile8_wallNr91874ID.collider:SetPos(276,127.479,434)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr91874ID.collider, 3)
level08.colliders.Tile8_wallNr92875ID = {}
level08.colliders.Tile8_wallNr92875ID.collider = OBBCollider.Create(-1)
level08.colliders.Tile8_wallNr92875ID.collider:SetOffset(0,0,0)
level08.colliders.Tile8_wallNr92875ID.collider:SetZAxis(0.164399,0,0.986394)
level08.colliders.Tile8_wallNr92875ID.collider:SetHalfLengths(0.3,5.99321,6.08276)
level08.colliders.Tile8_wallNr92875ID.collider:SetPos(282,126.817,440)
CollisionHandler.AddOBB(level08.colliders.Tile8_wallNr92875ID.collider, 3)
end
level08.unload = function()
level08.props.tile840ID = nil
Gear.UnbindInstance(level08.props.t8s173ID.transformID)
Assets.UnloadModel('Models/tile8_s1.model')
level08.props.t8s173ID = nil
Gear.UnbindInstance(level08.props.t8s274ID.transformID)
Assets.UnloadModel('Models/tile8_s2.model')
level08.props.t8s274ID = nil
Gear.UnbindInstance(level08.props.t8s375ID.transformID)
Assets.UnloadModel('Models/tile8_s3.model')
level08.props.t8s375ID = nil
Gear.UnbindInstance(level08.props.t8s4691ID.transformID)
Assets.UnloadModel('Models/tile8_s4.model')
level08.props.t8s4691ID = nil
Gear.UnbindInstance(level08.props.t8s5692ID.transformID)
Assets.UnloadModel('Models/tile8_s5.model')
level08.props.t8s5692ID = nil
Gear.UnbindInstance(level08.props.t8s6693ID.transformID)
Assets.UnloadModel('Models/tile8_s6a.model')
level08.props.t8s6693ID = nil
Gear.UnbindInstance(level08.props.t8s7694ID.transformID)
Assets.UnloadModel('Models/tile8_s7.model')
level08.props.t8s7694ID = nil
Gear.UnbindInstance(level08.props.t8s8703ID.transformID)
Assets.UnloadModel('Models/tile8_s8a.model')
level08.props.t8s8703ID = nil
level08.colliders.Tile8_wallNr783ID = nil
level08.colliders.Tile8_wallNr1784ID = nil
level08.colliders.Tile8_wallNr2785ID = nil
level08.colliders.Tile8_wallNr3786ID = nil
level08.colliders.Tile8_wallNr4787ID = nil
level08.colliders.Tile8_wallNr5788ID = nil
level08.colliders.Tile8_wallNr6789ID = nil
level08.colliders.Tile8_wallNr7790ID = nil
level08.colliders.Tile8_wallNr8791ID = nil
level08.colliders.Tile8_wallNr9792ID = nil
level08.colliders.Tile8_wallNr10793ID = nil
level08.colliders.Tile8_wallNr11794ID = nil
level08.colliders.Tile8_wallNr12795ID = nil
level08.colliders.Tile8_wallNr13796ID = nil
level08.colliders.Tile8_wallNr14797ID = nil
level08.colliders.Tile8_wallNr15798ID = nil
level08.colliders.Tile8_wallNr16799ID = nil
level08.colliders.Tile8_wallNr17800ID = nil
level08.colliders.Tile8_wallNr18801ID = nil
level08.colliders.Tile8_wallNr19802ID = nil
level08.colliders.Tile8_wallNr20803ID = nil
level08.colliders.Tile8_wallNr21804ID = nil
level08.colliders.Tile8_wallNr22805ID = nil
level08.colliders.Tile8_wallNr23806ID = nil
level08.colliders.Tile8_wallNr24807ID = nil
level08.colliders.Tile8_wallNr25808ID = nil
level08.colliders.Tile8_wallNr26809ID = nil
level08.colliders.Tile8_wallNr27810ID = nil
level08.colliders.Tile8_wallNr28811ID = nil
level08.colliders.Tile8_wallNr29812ID = nil
level08.colliders.Tile8_wallNr30813ID = nil
level08.colliders.Tile8_wallNr31814ID = nil
level08.colliders.Tile8_wallNr32815ID = nil
level08.colliders.Tile8_wallNr33816ID = nil
level08.colliders.Tile8_wallNr34817ID = nil
level08.colliders.Tile8_wallNr35818ID = nil
level08.colliders.Tile8_wallNr36819ID = nil
level08.colliders.Tile8_wallNr37820ID = nil
level08.colliders.Tile8_wallNr38821ID = nil
level08.colliders.Tile8_wallNr39822ID = nil
level08.colliders.Tile8_wallNr40823ID = nil
level08.colliders.Tile8_wallNr41824ID = nil
level08.colliders.Tile8_wallNr42825ID = nil
level08.colliders.Tile8_wallNr43826ID = nil
level08.colliders.Tile8_wallNr44827ID = nil
level08.colliders.Tile8_wallNr45828ID = nil
level08.colliders.Tile8_wallNr46829ID = nil
level08.colliders.Tile8_wallNr47830ID = nil
level08.colliders.Tile8_wallNr48831ID = nil
level08.colliders.Tile8_wallNr49832ID = nil
level08.colliders.Tile8_wallNr50833ID = nil
level08.colliders.Tile8_wallNr51834ID = nil
level08.colliders.Tile8_wallNr52835ID = nil
level08.colliders.Tile8_wallNr53836ID = nil
level08.colliders.Tile8_wallNr54837ID = nil
level08.colliders.Tile8_wallNr55838ID = nil
level08.colliders.Tile8_wallNr56839ID = nil
level08.colliders.Tile8_wallNr57840ID = nil
level08.colliders.Tile8_wallNr58841ID = nil
level08.colliders.Tile8_wallNr59842ID = nil
level08.colliders.Tile8_wallNr60843ID = nil
level08.colliders.Tile8_wallNr61844ID = nil
level08.colliders.Tile8_wallNr62845ID = nil
level08.colliders.Tile8_wallNr63846ID = nil
level08.colliders.Tile8_wallNr64847ID = nil
level08.colliders.Tile8_wallNr65848ID = nil
level08.colliders.Tile8_wallNr66849ID = nil
level08.colliders.Tile8_wallNr67850ID = nil
level08.colliders.Tile8_wallNr68851ID = nil
level08.colliders.Tile8_wallNr69852ID = nil
level08.colliders.Tile8_wallNr70853ID = nil
level08.colliders.Tile8_wallNr71854ID = nil
level08.colliders.Tile8_wallNr72855ID = nil
level08.colliders.Tile8_wallNr73856ID = nil
level08.colliders.Tile8_wallNr74857ID = nil
level08.colliders.Tile8_wallNr75858ID = nil
level08.colliders.Tile8_wallNr76859ID = nil
level08.colliders.Tile8_wallNr77860ID = nil
level08.colliders.Tile8_wallNr78861ID = nil
level08.colliders.Tile8_wallNr79862ID = nil
level08.colliders.Tile8_wallNr80863ID = nil
level08.colliders.Tile8_wallNr81864ID = nil
level08.colliders.Tile8_wallNr82865ID = nil
level08.colliders.Tile8_wallNr83866ID = nil
level08.colliders.Tile8_wallNr84867ID = nil
level08.colliders.Tile8_wallNr85868ID = nil
level08.colliders.Tile8_wallNr86869ID = nil
level08.colliders.Tile8_wallNr87870ID = nil
level08.colliders.Tile8_wallNr88871ID = nil
level08.colliders.Tile8_wallNr89872ID = nil
level08.colliders.Tile8_wallNr90873ID = nil
level08.colliders.Tile8_wallNr91874ID = nil
level08.colliders.Tile8_wallNr92875ID = nil
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
