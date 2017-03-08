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
level01.props.OakTree_Collider1ID = {}
level01.props.OakTree_Collider1ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1ID.transformID, {x=-0, y=0.376574, z=-0})
level01.props.OakTree_Collider2ID = {}
level01.props.OakTree_Collider2ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2ID.transformID, {x=-0, y=-2.0418, z=-0})
level01.props.OakTree_Collider3ID = {}
level01.props.OakTree_Collider3ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3ID.transformID, {x=-0, y=-1.42165, z=-0})
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
level01.props.Stone2ID = {}
level01.props.Stone2ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone2ID.transformID = Gear.BindStaticInstance(level01.props.Stone2ID.model)
Transform.SetPosition(level01.props.Stone2ID.transformID, {x=4.34854, y=7.05469, z=139.31})
Transform.SetScaleNonUniform(level01.props.Stone2ID.transformID, 2.87522, 2.86321, 2.81752)
Transform.SetRotation(level01.props.Stone2ID.transformID, {x=0.0120454, y=-1.17492, z=0.0422012})
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
level01.props.StreamID = {}
level01.props.StreamID.model = Assets.LoadModel('Models/Stream.model')
level01.props.StreamID.transformID = Gear.BindStaticInstance(level01.props.StreamID.model)
Transform.SetPosition(level01.props.StreamID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.StreamID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.StreamID.transformID, {x=-0, y=0, z=-0})
level01.colliders.C_Parent_Tile_1ID = {}
level01.colliders.C_Parent_Tile_1ID.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID.collider:SetMinPos(0.895148,-3.32028,127.7)
level01.colliders.C_Parent_Tile_1ID.collider:SetMaxPos(128.073,45.7117,236.3)
level01.colliders.C_Parent_Tile_1ID.collider:SetPos(0,0,0)
level01.colliders.C_Parent_Tile_1ID1 = {}
level01.colliders.C_Parent_Tile_1ID1.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID1.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID1.collider:SetMinPos(0.895148,1.54031,127.7)
level01.colliders.C_Parent_Tile_1ID1.collider:SetMaxPos(55.2591,16.3583,147.134)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID1.collider)
level01.colliders.C_Parent_Tile_1ID2 = {}
level01.colliders.C_Parent_Tile_1ID2.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID2.collider:SetOffset(6,6.83489,143)
level01.colliders.C_Parent_Tile_1ID2.collider:SetAxes(0.894427, -0, 0.447214, 0, -1, -0, 0.447214, 0, -0.894427)
level01.colliders.C_Parent_Tile_1ID2.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID2.collider)
level01.colliders.C_Parent_Tile_1ID3 = {}
level01.colliders.C_Parent_Tile_1ID3.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID3.collider:SetOffset(10.5,7.12947,140)
level01.colliders.C_Parent_Tile_1ID3.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level01.colliders.C_Parent_Tile_1ID3.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID3.collider)
level01.colliders.C_Parent_Tile_1ID4 = {}
level01.colliders.C_Parent_Tile_1ID4.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID4.collider:SetOffset(45,8.60238,129.5)
level01.colliders.C_Parent_Tile_1ID4.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level01.colliders.C_Parent_Tile_1ID4.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID4.collider)
level01.colliders.C_Parent_Tile_1ID5 = {}
level01.colliders.C_Parent_Tile_1ID5.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID5.collider:SetOffset(51.5,8.60238,137)
level01.colliders.C_Parent_Tile_1ID5.collider:SetAxes(-0.863779, 0, 0.503871, 0, -1, 0, 0.503871, 0, 0.863779)
level01.colliders.C_Parent_Tile_1ID5.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID5.collider)
level01.colliders.C_Parent_Tile_1ID6 = {}
level01.colliders.C_Parent_Tile_1ID6.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID6.collider:SetOffset(24,10.8555,139)
level01.colliders.C_Parent_Tile_1ID6.collider:SetAxes(0.92993, 0, -0.367737, 0, -1, 0, 0.367737, 0, 0.92993)
level01.colliders.C_Parent_Tile_1ID6.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID6.collider)
level01.colliders.C_Parent_Tile_1ID7 = {}
level01.colliders.C_Parent_Tile_1ID7.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID7.collider:SetOffset(36.5,8.3078,128)
level01.colliders.C_Parent_Tile_1ID7.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.C_Parent_Tile_1ID7.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID7.collider)
level01.colliders.C_Parent_Tile_1ID8 = {}
level01.colliders.C_Parent_Tile_1ID8.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID8.collider:SetOffset(28,7.86593,132)
level01.colliders.C_Parent_Tile_1ID8.collider:SetAxes(-0.8, 0, -0.6, -0, -1, 0, -0.6, 0, 0.8)
level01.colliders.C_Parent_Tile_1ID8.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID8.collider)
level01.colliders.C_Parent_Tile_1ID9 = {}
level01.colliders.C_Parent_Tile_1ID9.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID9.collider:SetOffset(23,7.71863,138.5)
level01.colliders.C_Parent_Tile_1ID9.collider:SetAxes(-0.780869, 0, -0.624695, -0, -1, 0, -0.624695, 0, 0.780869)
level01.colliders.C_Parent_Tile_1ID9.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID9.collider)
level01.colliders.C_Parent_Tile_1ID10 = {}
level01.colliders.C_Parent_Tile_1ID10.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID10.collider:SetOffset(4.64854,7.65469,139.31)
level01.colliders.C_Parent_Tile_1ID10.collider:SetAxes(0.385591, 0.00464481, 0.922658, -0.0268886, -0.999506, 0.0162688, -0.922278, 0.031082, 0.385276)
level01.colliders.C_Parent_Tile_1ID10.collider:SetHalfLengths(2.87522,1.71793,2.81752)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID10.collider)
level01.colliders.C_Parent_Tile_1ID11 = {}
level01.colliders.C_Parent_Tile_1ID11.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID11.collider:SetOffset(36.887,10.9609,130.834)
level01.colliders.C_Parent_Tile_1ID11.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.C_Parent_Tile_1ID11.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID11.collider)
level01.colliders.C_Parent_Tile_1ID12 = {}
level01.colliders.C_Parent_Tile_1ID12.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID12.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID12.collider:SetMinPos(3.70232,1.54031,139.841)
level01.colliders.C_Parent_Tile_1ID12.collider:SetMaxPos(56.2942,18.8711,163.037)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID12.collider)
level01.colliders.C_Parent_Tile_1ID13 = {}
level01.colliders.C_Parent_Tile_1ID13.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID13.collider:SetOffset(17,6.98218,141)
level01.colliders.C_Parent_Tile_1ID13.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.C_Parent_Tile_1ID13.collider:SetHalfLengths(0.3,5,4)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID13.collider)
level01.colliders.C_Parent_Tile_1ID14 = {}
level01.colliders.C_Parent_Tile_1ID14.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID14.collider:SetOffset(55.5,9.33883,145.5)
level01.colliders.C_Parent_Tile_1ID14.collider:SetAxes(-0.980581, 0, 0.196116, 0, -1, 0, 0.196116, 0, 0.980581)
level01.colliders.C_Parent_Tile_1ID14.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID14.collider)
level01.colliders.C_Parent_Tile_1ID15 = {}
level01.colliders.C_Parent_Tile_1ID15.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID15.collider:SetOffset(52.5,9.33883,152)
level01.colliders.C_Parent_Tile_1ID15.collider:SetAxes(-0.752577, 0, -0.658505, -0, -1, 0, -0.658505, 0, 0.752577)
level01.colliders.C_Parent_Tile_1ID15.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID15.collider)
level01.colliders.C_Parent_Tile_1ID16 = {}
level01.colliders.C_Parent_Tile_1ID16.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID16.collider:SetOffset(44,9.48612,157)
level01.colliders.C_Parent_Tile_1ID16.collider:SetAxes(-0.196116, 0, -0.980581, -0, -1, 0, -0.980581, 0, 0.196116)
level01.colliders.C_Parent_Tile_1ID16.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID16.collider)
level01.colliders.C_Parent_Tile_1ID17 = {}
level01.colliders.C_Parent_Tile_1ID17.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID17.collider:SetOffset(35,7.12947,155)
level01.colliders.C_Parent_Tile_1ID17.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level01.colliders.C_Parent_Tile_1ID17.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID17.collider)
level01.colliders.C_Parent_Tile_1ID18 = {}
level01.colliders.C_Parent_Tile_1ID18.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID18.collider:SetOffset(4.5,6.83489,147.5)
level01.colliders.C_Parent_Tile_1ID18.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level01.colliders.C_Parent_Tile_1ID18.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID18.collider)
level01.colliders.C_Parent_Tile_1ID19 = {}
level01.colliders.C_Parent_Tile_1ID19.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID19.collider:SetOffset(5,6.98218,151.5)
level01.colliders.C_Parent_Tile_1ID19.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.C_Parent_Tile_1ID19.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID19.collider)
level01.colliders.C_Parent_Tile_1ID20 = {}
level01.colliders.C_Parent_Tile_1ID20.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID20.collider:SetOffset(4.5,7.42405,159)
level01.colliders.C_Parent_Tile_1ID20.collider:SetAxes(-0.992278, 0, -0.124035, -0, -1, 0, -0.124035, 0, 0.992278)
level01.colliders.C_Parent_Tile_1ID20.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID20.collider)
level01.colliders.C_Parent_Tile_1ID21 = {}
level01.colliders.C_Parent_Tile_1ID21.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID21.collider:SetOffset(39.8641,12.8281,155.087)
level01.colliders.C_Parent_Tile_1ID21.collider:SetAxes(-0.170469, 0, -0.985363, 0.00610736, -0.999981, -0.00105658, 0.985344, 0.00619808, -0.170466)
level01.colliders.C_Parent_Tile_1ID21.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID21.collider)
level01.colliders.C_Parent_Tile_1ID22 = {}
level01.colliders.C_Parent_Tile_1ID22.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID22.collider:SetOffset(7.5,6.98218,144)
level01.colliders.C_Parent_Tile_1ID22.collider:SetAxes(-0.847998, 0, -0.529999, -0, -1, 0, -0.529999, 0, 0.847998)
level01.colliders.C_Parent_Tile_1ID22.collider:SetHalfLengths(0.3,5,4.71699)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID22.collider)
level01.colliders.C_Parent_Tile_1ID23 = {}
level01.colliders.C_Parent_Tile_1ID23.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID23.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID23.collider:SetMinPos(3.76,0.656566,157.866)
level01.colliders.C_Parent_Tile_1ID23.collider:SetMaxPos(57.1664,13.0132,176)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID23.collider)
level01.colliders.C_Parent_Tile_1ID24 = {}
level01.colliders.C_Parent_Tile_1ID24.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID24.collider:SetOffset(37,7.27676,160)
level01.colliders.C_Parent_Tile_1ID24.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.C_Parent_Tile_1ID24.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID24.collider)
level01.colliders.C_Parent_Tile_1ID25 = {}
level01.colliders.C_Parent_Tile_1ID25.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID25.collider:SetOffset(39.5,6.98218,163)
level01.colliders.C_Parent_Tile_1ID25.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level01.colliders.C_Parent_Tile_1ID25.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID25.collider)
level01.colliders.C_Parent_Tile_1ID26 = {}
level01.colliders.C_Parent_Tile_1ID26.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID26.collider:SetOffset(43.5,7.12947,165)
level01.colliders.C_Parent_Tile_1ID26.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level01.colliders.C_Parent_Tile_1ID26.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID26.collider)
level01.colliders.C_Parent_Tile_1ID27 = {}
level01.colliders.C_Parent_Tile_1ID27.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID27.collider:SetOffset(48.5,7.57134,166)
level01.colliders.C_Parent_Tile_1ID27.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.C_Parent_Tile_1ID27.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID27.collider)
level01.colliders.C_Parent_Tile_1ID28 = {}
level01.colliders.C_Parent_Tile_1ID28.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID28.collider:SetOffset(54,8.01322,168)
level01.colliders.C_Parent_Tile_1ID28.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level01.colliders.C_Parent_Tile_1ID28.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID28.collider)
level01.colliders.C_Parent_Tile_1ID29 = {}
level01.colliders.C_Parent_Tile_1ID29.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID29.collider:SetOffset(32.5,6.54031,170.5)
level01.colliders.C_Parent_Tile_1ID29.collider:SetAxes(0.857493, 0, -0.514496, 0, -1, -0, -0.514496, 0, -0.857493)
level01.colliders.C_Parent_Tile_1ID29.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID29.collider)
level01.colliders.C_Parent_Tile_1ID30 = {}
level01.colliders.C_Parent_Tile_1ID30.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID30.collider:SetOffset(29.5,6.54031,168)
level01.colliders.C_Parent_Tile_1ID30.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.C_Parent_Tile_1ID30.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID30.collider)
level01.colliders.C_Parent_Tile_1ID31 = {}
level01.colliders.C_Parent_Tile_1ID31.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID31.collider:SetOffset(25,6.09844,170.5)
level01.colliders.C_Parent_Tile_1ID31.collider:SetAxes(-0.640184, 0, -0.768221, -0, -1, 0, -0.768221, 0, 0.640184)
level01.colliders.C_Parent_Tile_1ID31.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID31.collider)
level01.colliders.C_Parent_Tile_1ID32 = {}
level01.colliders.C_Parent_Tile_1ID32.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID32.collider:SetOffset(7,6.54031,167)
level01.colliders.C_Parent_Tile_1ID32.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level01.colliders.C_Parent_Tile_1ID32.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID32.collider)
level01.colliders.C_Parent_Tile_1ID33 = {}
level01.colliders.C_Parent_Tile_1ID33.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID33.collider:SetOffset(10,6.24573,173.5)
level01.colliders.C_Parent_Tile_1ID33.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.C_Parent_Tile_1ID33.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID33.collider)
level01.colliders.C_Parent_Tile_1ID34 = {}
level01.colliders.C_Parent_Tile_1ID34.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID34.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID34.collider:SetMinPos(1.70104,-0.963631,169.866)
level01.colliders.C_Parent_Tile_1ID34.collider:SetMaxPos(58.2977,21.9153,194.025)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID34.collider)
level01.colliders.C_Parent_Tile_1ID35 = {}
level01.colliders.C_Parent_Tile_1ID35.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID35.collider:SetOffset(57.5,8.01322,171)
level01.colliders.C_Parent_Tile_1ID35.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.C_Parent_Tile_1ID35.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID35.collider)
level01.colliders.C_Parent_Tile_1ID36 = {}
level01.colliders.C_Parent_Tile_1ID36.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID36.collider:SetOffset(57.5,8.01322,176)
level01.colliders.C_Parent_Tile_1ID36.collider:SetAxes(-0.992278, 0, -0.124035, -0, -1, 0, -0.124035, 0, 0.992278)
level01.colliders.C_Parent_Tile_1ID36.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID36.collider)
level01.colliders.C_Parent_Tile_1ID37 = {}
level01.colliders.C_Parent_Tile_1ID37.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID37.collider:SetOffset(37,7.71863,182)
level01.colliders.C_Parent_Tile_1ID37.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level01.colliders.C_Parent_Tile_1ID37.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID37.collider)
level01.colliders.C_Parent_Tile_1ID38 = {}
level01.colliders.C_Parent_Tile_1ID38.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID38.collider:SetOffset(35,7.12947,176.5)
level01.colliders.C_Parent_Tile_1ID38.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level01.colliders.C_Parent_Tile_1ID38.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID38.collider)
level01.colliders.C_Parent_Tile_1ID39 = {}
level01.colliders.C_Parent_Tile_1ID39.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID39.collider:SetOffset(22,5.80386,174.5)
level01.colliders.C_Parent_Tile_1ID39.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level01.colliders.C_Parent_Tile_1ID39.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID39.collider)
level01.colliders.C_Parent_Tile_1ID40 = {}
level01.colliders.C_Parent_Tile_1ID40.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID40.collider:SetOffset(23.5,5.80386,179.5)
level01.colliders.C_Parent_Tile_1ID40.collider:SetAxes(-0.919145, 0, 0.393919, 0, -1, 0, 0.393919, 0, 0.919145)
level01.colliders.C_Parent_Tile_1ID40.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID40.collider)
level01.colliders.C_Parent_Tile_1ID41 = {}
level01.colliders.C_Parent_Tile_1ID41.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID41.collider:SetOffset(6.5,5.65657,179)
level01.colliders.C_Parent_Tile_1ID41.collider:SetAxes(-0.650791, 0, -0.759257, -0, -1, 0, -0.759257, 0, 0.650791)
level01.colliders.C_Parent_Tile_1ID41.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID41.collider)
level01.colliders.C_Parent_Tile_1ID42 = {}
level01.colliders.C_Parent_Tile_1ID42.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID42.collider:SetOffset(2.5,5.36198,188)
level01.colliders.C_Parent_Tile_1ID42.collider:SetAxes(-0.996546, 0, -0.0830455, -0, -1, 0, -0.0830455, 0, 0.996546)
level01.colliders.C_Parent_Tile_1ID42.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID42.collider)
level01.colliders.C_Parent_Tile_1ID43 = {}
level01.colliders.C_Parent_Tile_1ID43.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID43.collider:SetOffset(6.18867,8.53125,180.735)
level01.colliders.C_Parent_Tile_1ID43.collider:SetAxes(-0.453779, 0, 0.891114, -0, -1, 0, -0.891114, 0, -0.453779)
level01.colliders.C_Parent_Tile_1ID43.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID43.collider)
level01.colliders.C_Parent_Tile_1ID44 = {}
level01.colliders.C_Parent_Tile_1ID44.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID44.collider:SetOffset(37.7154,11.4688,182.582)
level01.colliders.C_Parent_Tile_1ID44.collider:SetAxes(0.148599, 0, 0.988898, 0, -1, 0, -0.988898, 0, 0.148599)
level01.colliders.C_Parent_Tile_1ID44.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID44.collider)
level01.colliders.C_Parent_Tile_1ID45 = {}
level01.colliders.C_Parent_Tile_1ID45.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID45.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID45.collider:SetMinPos(1.74275,-2.14196,179.808)
level01.colliders.C_Parent_Tile_1ID45.collider:SetMaxPos(57.2305,13.3078,199.154)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID45.collider)
level01.colliders.C_Parent_Tile_1ID46 = {}
level01.colliders.C_Parent_Tile_1ID46.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID46.collider:SetOffset(54.5,8.01322,183)
level01.colliders.C_Parent_Tile_1ID46.collider:SetAxes(-0.768221, 0, -0.640184, -0, -1, 0, -0.640184, 0, 0.768221)
level01.colliders.C_Parent_Tile_1ID46.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID46.collider)
level01.colliders.C_Parent_Tile_1ID47 = {}
level01.colliders.C_Parent_Tile_1ID47.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID47.collider:SetOffset(49,8.01322,186.5)
level01.colliders.C_Parent_Tile_1ID47.collider:SetAxes(-0.164399, 0, -0.986394, -0, -1, 0, -0.986394, 0, 0.164399)
level01.colliders.C_Parent_Tile_1ID47.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID47.collider)
level01.colliders.C_Parent_Tile_1ID48 = {}
level01.colliders.C_Parent_Tile_1ID48.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID48.collider:SetOffset(44,8.01322,187)
level01.colliders.C_Parent_Tile_1ID48.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.C_Parent_Tile_1ID48.collider:SetHalfLengths(0.3,5,2)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID48.collider)
level01.colliders.C_Parent_Tile_1ID49 = {}
level01.colliders.C_Parent_Tile_1ID49.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID49.collider:SetOffset(40,8.01322,185.5)
level01.colliders.C_Parent_Tile_1ID49.collider:SetAxes(0.6, 0, -0.8, 0, -1, -0, -0.8, 0, -0.6)
level01.colliders.C_Parent_Tile_1ID49.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID49.collider)
level01.colliders.C_Parent_Tile_1ID50 = {}
level01.colliders.C_Parent_Tile_1ID50.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID50.collider:SetOffset(32,5.50927,189.5)
level01.colliders.C_Parent_Tile_1ID50.collider:SetAxes(-0.680451, 0, 0.732794, 0, -1, 0, 0.732794, 0, 0.680451)
level01.colliders.C_Parent_Tile_1ID50.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID50.collider)
level01.colliders.C_Parent_Tile_1ID51 = {}
level01.colliders.C_Parent_Tile_1ID51.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID51.collider:SetOffset(3.5,4.03637,196.5)
level01.colliders.C_Parent_Tile_1ID51.collider:SetAxes(-0.857493, 0, 0.514496, 0, -1, 0, 0.514496, 0, 0.857493)
level01.colliders.C_Parent_Tile_1ID51.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID51.collider)
level01.colliders.C_Parent_Tile_1ID52 = {}
level01.colliders.C_Parent_Tile_1ID52.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID52.collider:SetOffset(23,4.33095,190.5)
level01.colliders.C_Parent_Tile_1ID52.collider:SetAxes(-0.877896, 0, 0.478852, 0, -1, 0, 0.478852, 0, 0.877896)
level01.colliders.C_Parent_Tile_1ID52.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID52.collider)
level01.colliders.C_Parent_Tile_1ID53 = {}
level01.colliders.C_Parent_Tile_1ID53.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID53.collider:SetOffset(27,5.36198,196.5)
level01.colliders.C_Parent_Tile_1ID53.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level01.colliders.C_Parent_Tile_1ID53.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID53.collider)
level01.colliders.C_Parent_Tile_1ID54 = {}
level01.colliders.C_Parent_Tile_1ID54.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID54.collider:SetOffset(5.252,4.725,191.432)
level01.colliders.C_Parent_Tile_1ID54.collider:SetAxes(0.999864, -0.016469, 0, -0.016469, -0.999864, 0, 0, 0, 1)
level01.colliders.C_Parent_Tile_1ID54.collider:SetHalfLengths(1.4564,1.01105,1.50235)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID54.collider)
level01.colliders.C_Parent_Tile_1ID55 = {}
level01.colliders.C_Parent_Tile_1ID55.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID55.collider:SetOffset(35,8.16051,194)
level01.colliders.C_Parent_Tile_1ID55.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level01.colliders.C_Parent_Tile_1ID55.collider:SetHalfLengths(0.3,5,1.41421)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID55.collider)
level01.colliders.C_Parent_Tile_1ID56 = {}
level01.colliders.C_Parent_Tile_1ID56.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID56.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID56.collider:SetMinPos(4.75038,-3.32028,194.866)
level01.colliders.C_Parent_Tile_1ID56.collider:SetMaxPos(53.2441,15.3699,206.174)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID56.collider)
level01.colliders.C_Parent_Tile_1ID57 = {}
level01.colliders.C_Parent_Tile_1ID57.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID57.collider:SetOffset(35.5,8.16051,198)
level01.colliders.C_Parent_Tile_1ID57.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.C_Parent_Tile_1ID57.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID57.collider)
level01.colliders.C_Parent_Tile_1ID58 = {}
level01.colliders.C_Parent_Tile_1ID58.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID58.collider:SetOffset(42.5,8.3078,200)
level01.colliders.C_Parent_Tile_1ID58.collider:SetAxes(0.178885, -0, 0.98387, 0, -1, -0, 0.98387, 0, -0.178885)
level01.colliders.C_Parent_Tile_1ID58.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID58.collider)
level01.colliders.C_Parent_Tile_1ID59 = {}
level01.colliders.C_Parent_Tile_1ID59.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID59.collider:SetOffset(50.5,9.63341,202.5)
level01.colliders.C_Parent_Tile_1ID59.collider:SetAxes(-0.813733, 0, 0.581238, 0, -1, 0, 0.581238, 0, 0.813733)
level01.colliders.C_Parent_Tile_1ID59.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID59.collider)
level01.colliders.C_Parent_Tile_1ID60 = {}
level01.colliders.C_Parent_Tile_1ID60.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID60.collider:SetOffset(6,3.44721,200.5)
level01.colliders.C_Parent_Tile_1ID60.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level01.colliders.C_Parent_Tile_1ID60.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID60.collider)
level01.colliders.C_Parent_Tile_1ID61 = {}
level01.colliders.C_Parent_Tile_1ID61.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID61.collider:SetOffset(15,3.29992,202.5)
level01.colliders.C_Parent_Tile_1ID61.collider:SetAxes(0.209529, -0, 0.977802, 0, -1, -0, 0.977802, 0, -0.209529)
level01.colliders.C_Parent_Tile_1ID61.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID61.collider)
level01.colliders.C_Parent_Tile_1ID62 = {}
level01.colliders.C_Parent_Tile_1ID62.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID62.collider:SetOffset(24.5,3.15263,199.5)
level01.colliders.C_Parent_Tile_1ID62.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level01.colliders.C_Parent_Tile_1ID62.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID62.collider)
level01.colliders.C_Parent_Tile_1ID63 = {}
level01.colliders.C_Parent_Tile_1ID63.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID63.collider:SetOffset(29,7.71863,197)
level01.colliders.C_Parent_Tile_1ID63.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.C_Parent_Tile_1ID63.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID63.collider)
level01.colliders.C_Parent_Tile_1ID64 = {}
level01.colliders.C_Parent_Tile_1ID64.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID64.collider:SetOffset(31.5,8.16051,200)
level01.colliders.C_Parent_Tile_1ID64.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.C_Parent_Tile_1ID64.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID64.collider)
level01.colliders.C_Parent_Tile_1ID65 = {}
level01.colliders.C_Parent_Tile_1ID65.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID65.collider:SetOffset(32.5,8.89696,203.5)
level01.colliders.C_Parent_Tile_1ID65.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level01.colliders.C_Parent_Tile_1ID65.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID65.collider)
level01.colliders.C_Parent_Tile_1ID66 = {}
level01.colliders.C_Parent_Tile_1ID66.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID66.collider:SetOffset(10,3.44721,202.5)
level01.colliders.C_Parent_Tile_1ID66.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level01.colliders.C_Parent_Tile_1ID66.collider:SetHalfLengths(0.3,5.29458,3.04138)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID66.collider)
level01.colliders.C_Parent_Tile_1ID67 = {}
level01.colliders.C_Parent_Tile_1ID67.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID67.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID67.collider:SetMinPos(31.76,2.71863,189.723)
level01.colliders.C_Parent_Tile_1ID67.collider:SetMaxPos(109.159,35.696,214.257)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID67.collider)
level01.colliders.C_Parent_Tile_1ID68 = {}
level01.colliders.C_Parent_Tile_1ID68.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID68.collider:SetOffset(55,10.3699,207.5)
level01.colliders.C_Parent_Tile_1ID68.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level01.colliders.C_Parent_Tile_1ID68.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID68.collider)
level01.colliders.C_Parent_Tile_1ID69 = {}
level01.colliders.C_Parent_Tile_1ID69.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID69.collider:SetOffset(62,11.4009,208)
level01.colliders.C_Parent_Tile_1ID69.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level01.colliders.C_Parent_Tile_1ID69.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID69.collider)
level01.colliders.C_Parent_Tile_1ID70 = {}
level01.colliders.C_Parent_Tile_1ID70.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID70.collider:SetOffset(71.5,15.0832,205.5)
level01.colliders.C_Parent_Tile_1ID70.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level01.colliders.C_Parent_Tile_1ID70.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID70.collider)
level01.colliders.C_Parent_Tile_1ID71 = {}
level01.colliders.C_Parent_Tile_1ID71.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID71.collider:SetOffset(79,18.3236,202.5)
level01.colliders.C_Parent_Tile_1ID71.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level01.colliders.C_Parent_Tile_1ID71.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID71.collider)
level01.colliders.C_Parent_Tile_1ID72 = {}
level01.colliders.C_Parent_Tile_1ID72.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID72.collider:SetOffset(85.5,20.091,198)
level01.colliders.C_Parent_Tile_1ID72.collider:SetAxes(0.650791, -0, 0.759257, 0, -1, -0, 0.759257, 0, -0.650791)
level01.colliders.C_Parent_Tile_1ID72.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID72.collider)
level01.colliders.C_Parent_Tile_1ID73 = {}
level01.colliders.C_Parent_Tile_1ID73.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID73.collider:SetOffset(95,23.1841,192.5)
level01.colliders.C_Parent_Tile_1ID73.collider:SetAxes(0.384615, -0, 0.923077, 0, -1, -0, 0.923077, 0, -0.384615)
level01.colliders.C_Parent_Tile_1ID73.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID73.collider)
level01.colliders.C_Parent_Tile_1ID74 = {}
level01.colliders.C_Parent_Tile_1ID74.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID74.collider:SetOffset(105,27.0137,192.5)
level01.colliders.C_Parent_Tile_1ID74.collider:SetAxes(-0.529999, 0, 0.847998, 0, -1, 0, 0.847998, 0, 0.529999)
level01.colliders.C_Parent_Tile_1ID74.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID74.collider)
level01.colliders.C_Parent_Tile_1ID75 = {}
level01.colliders.C_Parent_Tile_1ID75.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID75.collider:SetOffset(33.5,8.45509,206)
level01.colliders.C_Parent_Tile_1ID75.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level01.colliders.C_Parent_Tile_1ID75.collider:SetHalfLengths(0.3,5.14729,2.5)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID75.collider)
level01.colliders.C_Parent_Tile_1ID76 = {}
level01.colliders.C_Parent_Tile_1ID76.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID76.collider:SetOffset(37,8.60238,209.5)
level01.colliders.C_Parent_Tile_1ID76.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level01.colliders.C_Parent_Tile_1ID76.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID76.collider)
level01.colliders.C_Parent_Tile_1ID77 = {}
level01.colliders.C_Parent_Tile_1ID77.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID77.collider:SetOffset(41.5,9.04425,212.5)
level01.colliders.C_Parent_Tile_1ID77.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level01.colliders.C_Parent_Tile_1ID77.collider:SetHalfLengths(0.3,5.44187,2.91548)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID77.collider)
level01.colliders.C_Parent_Tile_1ID78 = {}
level01.colliders.C_Parent_Tile_1ID78.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID78.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID78.collider:SetMinPos(43.9051,1.98218,194.709)
level01.colliders.C_Parent_Tile_1ID78.collider:SetMaxPos(118.187,45.7117,218.296)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID78.collider)
level01.colliders.C_Parent_Tile_1ID79 = {}
level01.colliders.C_Parent_Tile_1ID79.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID79.collider:SetOffset(111,30.696,195.5)
level01.colliders.C_Parent_Tile_1ID79.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level01.colliders.C_Parent_Tile_1ID79.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID79.collider)
level01.colliders.C_Parent_Tile_1ID80 = {}
level01.colliders.C_Parent_Tile_1ID80.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID80.collider:SetOffset(115.5,31.8743,198)
level01.colliders.C_Parent_Tile_1ID80.collider:SetAxes(-0.624695, 0, 0.780869, 0, -1, 0, 0.780869, 0, 0.624695)
level01.colliders.C_Parent_Tile_1ID80.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID80.collider)
level01.colliders.C_Parent_Tile_1ID81 = {}
level01.colliders.C_Parent_Tile_1ID81.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID81.collider:SetOffset(90,21.5639,213.5)
level01.colliders.C_Parent_Tile_1ID81.collider:SetAxes(-0.913812, 0, 0.406139, 0, -1, 0, 0.406139, 0, 0.913812)
level01.colliders.C_Parent_Tile_1ID81.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID81.collider)
level01.colliders.C_Parent_Tile_1ID82 = {}
level01.colliders.C_Parent_Tile_1ID82.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID82.collider:SetOffset(107,34.6728,203)
level01.colliders.C_Parent_Tile_1ID82.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level01.colliders.C_Parent_Tile_1ID82.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID82.collider)
level01.colliders.C_Parent_Tile_1ID83 = {}
level01.colliders.C_Parent_Tile_1ID83.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID83.collider:SetOffset(101,28.6339,199)
level01.colliders.C_Parent_Tile_1ID83.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level01.colliders.C_Parent_Tile_1ID83.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID83.collider)
level01.colliders.C_Parent_Tile_1ID84 = {}
level01.colliders.C_Parent_Tile_1ID84.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID84.collider:SetOffset(95,27.3083,202.5)
level01.colliders.C_Parent_Tile_1ID84.collider:SetAxes(-0.573462, 0, -0.819232, -0, -1, 0, -0.819232, 0, 0.573462)
level01.colliders.C_Parent_Tile_1ID84.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID84.collider)
level01.colliders.C_Parent_Tile_1ID85 = {}
level01.colliders.C_Parent_Tile_1ID85.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID85.collider:SetOffset(89,22.595,207.5)
level01.colliders.C_Parent_Tile_1ID85.collider:SetAxes(-0.83205, 0, -0.5547, -0, -1, 0, -0.5547, 0, 0.83205)
level01.colliders.C_Parent_Tile_1ID85.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID85.collider)
level01.colliders.C_Parent_Tile_1ID86 = {}
level01.colliders.C_Parent_Tile_1ID86.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID86.collider:SetOffset(47,9.48612,215)
level01.colliders.C_Parent_Tile_1ID86.collider:SetAxes(-0.316228, 0, 0.948683, 0, -1, 0, 0.948683, 0, 0.316228)
level01.colliders.C_Parent_Tile_1ID86.collider:SetHalfLengths(0.3,5.29458,3.16228)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID86.collider)
level01.colliders.C_Parent_Tile_1ID87 = {}
level01.colliders.C_Parent_Tile_1ID87.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID87.collider:SetOffset(57.5,9.7807,216.5)
level01.colliders.C_Parent_Tile_1ID87.collider:SetAxes(-0.066519, 0, 0.997785, 0, -1, 0, 0.997785, 0, 0.066519)
level01.colliders.C_Parent_Tile_1ID87.collider:SetHalfLengths(0.3,7.79852,7.51665)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID87.collider)
level01.colliders.C_Parent_Tile_1ID88 = {}
level01.colliders.C_Parent_Tile_1ID88.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID88.collider:SetOffset(68,12.5792,217.5)
level01.colliders.C_Parent_Tile_1ID88.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level01.colliders.C_Parent_Tile_1ID88.collider:SetHalfLengths(0.3,7.35665,3.04138)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID88.collider)
level01.colliders.C_Parent_Tile_1ID89 = {}
level01.colliders.C_Parent_Tile_1ID89.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID89.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID89.collider:SetMinPos(70.8818,8.16838,199.866)
level01.colliders.C_Parent_Tile_1ID89.collider:SetMaxPos(128.073,42.6186,230.23)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID89.collider)
level01.colliders.C_Parent_Tile_1ID90 = {}
level01.colliders.C_Parent_Tile_1ID90.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID90.collider:SetOffset(121,34.6728,206)
level01.colliders.C_Parent_Tile_1ID90.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level01.colliders.C_Parent_Tile_1ID90.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID90.collider)
level01.colliders.C_Parent_Tile_1ID91 = {}
level01.colliders.C_Parent_Tile_1ID91.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID91.collider:SetOffset(126,32.9053,211.5)
level01.colliders.C_Parent_Tile_1ID91.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level01.colliders.C_Parent_Tile_1ID91.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID91.collider)
level01.colliders.C_Parent_Tile_1ID92 = {}
level01.colliders.C_Parent_Tile_1ID92.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID92.collider:SetOffset(98,22.4477,219.5)
level01.colliders.C_Parent_Tile_1ID92.collider:SetAxes(-0.242536, 0, 0.970142, 0, -1, 0, 0.970142, 0, 0.242536)
level01.colliders.C_Parent_Tile_1ID92.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID92.collider)
level01.colliders.C_Parent_Tile_1ID93 = {}
level01.colliders.C_Parent_Tile_1ID93.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID93.collider:SetOffset(105.5,26.8664,222.5)
level01.colliders.C_Parent_Tile_1ID93.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level01.colliders.C_Parent_Tile_1ID93.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID93.collider)
level01.colliders.C_Parent_Tile_1ID94 = {}
level01.colliders.C_Parent_Tile_1ID94.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID94.collider:SetOffset(111.5,28.3393,222)
level01.colliders.C_Parent_Tile_1ID94.collider:SetAxes(0.406139, -0, 0.913812, 0, -1, -0, 0.913812, 0, -0.406139)
level01.colliders.C_Parent_Tile_1ID94.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID94.collider)
level01.colliders.C_Parent_Tile_1ID95 = {}
level01.colliders.C_Parent_Tile_1ID95.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID95.collider:SetOffset(116,30.9905,217)
level01.colliders.C_Parent_Tile_1ID95.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level01.colliders.C_Parent_Tile_1ID95.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID95.collider)
level01.colliders.C_Parent_Tile_1ID96 = {}
level01.colliders.C_Parent_Tile_1ID96.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID96.collider:SetOffset(114,36.1457,210.5)
level01.colliders.C_Parent_Tile_1ID96.collider:SetAxes(0.868243, 0, -0.496139, 0, -1, -0, -0.496139, 0, -0.868243)
level01.colliders.C_Parent_Tile_1ID96.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID96.collider)
level01.colliders.C_Parent_Tile_1ID97 = {}
level01.colliders.C_Parent_Tile_1ID97.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID97.collider:SetOffset(74.5,14.9359,219.5)
level01.colliders.C_Parent_Tile_1ID97.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level01.colliders.C_Parent_Tile_1ID97.collider:SetHalfLengths(0.3,6.76749,3.80789)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID97.collider)
level01.colliders.C_Parent_Tile_1ID98 = {}
level01.colliders.C_Parent_Tile_1ID98.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID98.collider:SetOffset(81.5,16.7034,223)
level01.colliders.C_Parent_Tile_1ID98.collider:SetAxes(-0.496139, 0, 0.868243, 0, -1, 0, 0.868243, 0, 0.496139)
level01.colliders.C_Parent_Tile_1ID98.collider:SetHalfLengths(0.3,6.03103,4.03113)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID98.collider)
level01.colliders.C_Parent_Tile_1ID99 = {}
level01.colliders.C_Parent_Tile_1ID99.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID99.collider:SetOffset(88,17.7344,227.5)
level01.colliders.C_Parent_Tile_1ID99.collider:SetAxes(-0.640184, 0, 0.768221, 0, -1, 0, 0.768221, 0, 0.640184)
level01.colliders.C_Parent_Tile_1ID99.collider:SetHalfLengths(0.3,7.50394,3.90512)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID99.collider)
level01.colliders.C_Parent_Tile_1ID100 = {}
level01.colliders.C_Parent_Tile_1ID100.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID100.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID100.collider:SetMinPos(90.8512,13.1763,223.7)
level01.colliders.C_Parent_Tile_1ID100.collider:SetMaxPos(128,37.9053,236.3)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID100.collider)
level01.colliders.C_Parent_Tile_1ID101 = {}
level01.colliders.C_Parent_Tile_1ID101.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID101.collider:SetOffset(125.5,32.1689,229)
level01.colliders.C_Parent_Tile_1ID101.collider:SetAxes(0.995037, -0, 0.0995037, 0, -1, -0, 0.0995037, 0, -0.995037)
level01.colliders.C_Parent_Tile_1ID101.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID101.collider)
level01.colliders.C_Parent_Tile_1ID102 = {}
level01.colliders.C_Parent_Tile_1ID102.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID102.collider:SetOffset(127,32.758,224)
level01.colliders.C_Parent_Tile_1ID102.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.C_Parent_Tile_1ID102.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID102.collider)
level01.colliders.C_Parent_Tile_1ID103 = {}
level01.colliders.C_Parent_Tile_1ID103.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID103.collider:SetOffset(94.5,20.2383,232)
level01.colliders.C_Parent_Tile_1ID103.collider:SetAxes(-0.496139, 0, 0.868243, 0, -1, 0, 0.868243, 0, 0.496139)
level01.colliders.C_Parent_Tile_1ID103.collider:SetHalfLengths(0.3,7.06207,4.03113)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID103.collider)
level01.colliders.C_Parent_Tile_1ID104 = {}
level01.colliders.C_Parent_Tile_1ID104.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID104.collider:SetOffset(101.5,22.3004,235)
level01.colliders.C_Parent_Tile_1ID104.collider:SetAxes(-0.274721, 0, 0.961524, 0, -1, 0, 0.961524, 0, 0.274721)
level01.colliders.C_Parent_Tile_1ID104.collider:SetHalfLengths(0.3,8.38768,3.64005)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID104.collider)
level01.colliders.C_Parent_Tile_1ID105 = {}
level01.colliders.C_Parent_Tile_1ID105.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID105.collider:SetOffset(108.5,25.6881,236)
level01.colliders.C_Parent_Tile_1ID105.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level01.colliders.C_Parent_Tile_1ID105.collider:SetHalfLengths(0.3,7.94581,3.5)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID105.collider)
level01.colliders.C_Parent_Tile_1ID106 = {}
level01.colliders.C_Parent_Tile_1ID106.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID106.collider:SetOffset(115,28.6339,235.5)
level01.colliders.C_Parent_Tile_1ID106.collider:SetAxes(0.164399, -0, 0.986394, 0, -1, -0, 0.986394, 0, -0.164399)
level01.colliders.C_Parent_Tile_1ID106.collider:SetHalfLengths(0.3,6.4729,3.04138)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID106.collider)
level01.colliders.C_Parent_Tile_1ID107 = {}
level01.colliders.C_Parent_Tile_1ID107.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID107.collider:SetOffset(122,30.1068,232.5)
level01.colliders.C_Parent_Tile_1ID107.collider:SetAxes(0.529999, -0, 0.847998, 0, -1, -0, 0.847998, 0, -0.529999)
level01.colliders.C_Parent_Tile_1ID107.collider:SetHalfLengths(0.3,7.50394,4.71699)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID107.collider)
CollisionHandler.AddAABB(level01.colliders.C_Parent_Tile_1ID.collider, 3)
level01.colliders.C_Parent_Tile_1ID1 = nil
level01.colliders.C_Parent_Tile_1ID2 = nil
level01.colliders.C_Parent_Tile_1ID3 = nil
level01.colliders.C_Parent_Tile_1ID4 = nil
level01.colliders.C_Parent_Tile_1ID5 = nil
level01.colliders.C_Parent_Tile_1ID6 = nil
level01.colliders.C_Parent_Tile_1ID7 = nil
level01.colliders.C_Parent_Tile_1ID8 = nil
level01.colliders.C_Parent_Tile_1ID9 = nil
level01.colliders.C_Parent_Tile_1ID10 = nil
level01.colliders.C_Parent_Tile_1ID11 = nil
level01.colliders.C_Parent_Tile_1ID12 = nil
level01.colliders.C_Parent_Tile_1ID13 = nil
level01.colliders.C_Parent_Tile_1ID14 = nil
level01.colliders.C_Parent_Tile_1ID15 = nil
level01.colliders.C_Parent_Tile_1ID16 = nil
level01.colliders.C_Parent_Tile_1ID17 = nil
level01.colliders.C_Parent_Tile_1ID18 = nil
level01.colliders.C_Parent_Tile_1ID19 = nil
level01.colliders.C_Parent_Tile_1ID20 = nil
level01.colliders.C_Parent_Tile_1ID21 = nil
level01.colliders.C_Parent_Tile_1ID22 = nil
level01.colliders.C_Parent_Tile_1ID23 = nil
level01.colliders.C_Parent_Tile_1ID24 = nil
level01.colliders.C_Parent_Tile_1ID25 = nil
level01.colliders.C_Parent_Tile_1ID26 = nil
level01.colliders.C_Parent_Tile_1ID27 = nil
level01.colliders.C_Parent_Tile_1ID28 = nil
level01.colliders.C_Parent_Tile_1ID29 = nil
level01.colliders.C_Parent_Tile_1ID30 = nil
level01.colliders.C_Parent_Tile_1ID31 = nil
level01.colliders.C_Parent_Tile_1ID32 = nil
level01.colliders.C_Parent_Tile_1ID33 = nil
level01.colliders.C_Parent_Tile_1ID34 = nil
level01.colliders.C_Parent_Tile_1ID35 = nil
level01.colliders.C_Parent_Tile_1ID36 = nil
level01.colliders.C_Parent_Tile_1ID37 = nil
level01.colliders.C_Parent_Tile_1ID38 = nil
level01.colliders.C_Parent_Tile_1ID39 = nil
level01.colliders.C_Parent_Tile_1ID40 = nil
level01.colliders.C_Parent_Tile_1ID41 = nil
level01.colliders.C_Parent_Tile_1ID42 = nil
level01.colliders.C_Parent_Tile_1ID43 = nil
level01.colliders.C_Parent_Tile_1ID44 = nil
level01.colliders.C_Parent_Tile_1ID45 = nil
level01.colliders.C_Parent_Tile_1ID46 = nil
level01.colliders.C_Parent_Tile_1ID47 = nil
level01.colliders.C_Parent_Tile_1ID48 = nil
level01.colliders.C_Parent_Tile_1ID49 = nil
level01.colliders.C_Parent_Tile_1ID50 = nil
level01.colliders.C_Parent_Tile_1ID51 = nil
level01.colliders.C_Parent_Tile_1ID52 = nil
level01.colliders.C_Parent_Tile_1ID53 = nil
level01.colliders.C_Parent_Tile_1ID54 = nil
level01.colliders.C_Parent_Tile_1ID55 = nil
level01.colliders.C_Parent_Tile_1ID56 = nil
level01.colliders.C_Parent_Tile_1ID57 = nil
level01.colliders.C_Parent_Tile_1ID58 = nil
level01.colliders.C_Parent_Tile_1ID59 = nil
level01.colliders.C_Parent_Tile_1ID60 = nil
level01.colliders.C_Parent_Tile_1ID61 = nil
level01.colliders.C_Parent_Tile_1ID62 = nil
level01.colliders.C_Parent_Tile_1ID63 = nil
level01.colliders.C_Parent_Tile_1ID64 = nil
level01.colliders.C_Parent_Tile_1ID65 = nil
level01.colliders.C_Parent_Tile_1ID66 = nil
level01.colliders.C_Parent_Tile_1ID67 = nil
level01.colliders.C_Parent_Tile_1ID68 = nil
level01.colliders.C_Parent_Tile_1ID69 = nil
level01.colliders.C_Parent_Tile_1ID70 = nil
level01.colliders.C_Parent_Tile_1ID71 = nil
level01.colliders.C_Parent_Tile_1ID72 = nil
level01.colliders.C_Parent_Tile_1ID73 = nil
level01.colliders.C_Parent_Tile_1ID74 = nil
level01.colliders.C_Parent_Tile_1ID75 = nil
level01.colliders.C_Parent_Tile_1ID76 = nil
level01.colliders.C_Parent_Tile_1ID77 = nil
level01.colliders.C_Parent_Tile_1ID78 = nil
level01.colliders.C_Parent_Tile_1ID79 = nil
level01.colliders.C_Parent_Tile_1ID80 = nil
level01.colliders.C_Parent_Tile_1ID81 = nil
level01.colliders.C_Parent_Tile_1ID82 = nil
level01.colliders.C_Parent_Tile_1ID83 = nil
level01.colliders.C_Parent_Tile_1ID84 = nil
level01.colliders.C_Parent_Tile_1ID85 = nil
level01.colliders.C_Parent_Tile_1ID86 = nil
level01.colliders.C_Parent_Tile_1ID87 = nil
level01.colliders.C_Parent_Tile_1ID88 = nil
level01.colliders.C_Parent_Tile_1ID89 = nil
level01.colliders.C_Parent_Tile_1ID90 = nil
level01.colliders.C_Parent_Tile_1ID91 = nil
level01.colliders.C_Parent_Tile_1ID92 = nil
level01.colliders.C_Parent_Tile_1ID93 = nil
level01.colliders.C_Parent_Tile_1ID94 = nil
level01.colliders.C_Parent_Tile_1ID95 = nil
level01.colliders.C_Parent_Tile_1ID96 = nil
level01.colliders.C_Parent_Tile_1ID97 = nil
level01.colliders.C_Parent_Tile_1ID98 = nil
level01.colliders.C_Parent_Tile_1ID99 = nil
level01.colliders.C_Parent_Tile_1ID100 = nil
level01.colliders.C_Parent_Tile_1ID101 = nil
level01.colliders.C_Parent_Tile_1ID102 = nil
level01.colliders.C_Parent_Tile_1ID103 = nil
level01.colliders.C_Parent_Tile_1ID104 = nil
level01.colliders.C_Parent_Tile_1ID105 = nil
level01.colliders.C_Parent_Tile_1ID106 = nil
level01.colliders.C_Parent_Tile_1ID107 = nil
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
level01.colliders.C_Parent_Tile_11ID = nil
level01.colliders.C_Parent_Tile_12ID = nil
level01.colliders.C_Parent_Tile_13ID = nil
level01.colliders.C_Parent_Tile_14ID = nil
level01.colliders.C_Parent_Tile_15ID = nil
level01.colliders.C_Parent_Tile_16ID = nil
level01.colliders.C_Parent_Tile_17ID = nil
level01.colliders.C_Parent_Tile_18ID = nil
level01.colliders.C_Parent_Tile_19ID = nil
level01.colliders.C_Parent_Tile_110ID = nil
level01.colliders.C_Parent_Tile_1ID = nil
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
level02.props.PineTree_ColliderID = {}
level02.props.PineTree_ColliderID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_ColliderID.transformID = Gear.BindStaticInstance(level02.props.PineTree_ColliderID.model)
Transform.SetPosition(level02.props.PineTree_ColliderID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_ColliderID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_ColliderID.transformID, {x=-0.0166519, y=-0.520999, z=-0})
level02.props.PineTree_Collider2ID = {}
level02.props.PineTree_Collider2ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2ID.transformID, {x=-0, y=0, z=-0})
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
level02.props.OakTree_Collider41ID = {}
level02.props.OakTree_Collider41ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider42ID = {}
level02.props.OakTree_Collider42ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider43ID = {}
level02.props.OakTree_Collider43ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider44ID = {}
level02.props.OakTree_Collider44ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider45ID = {}
level02.props.OakTree_Collider45ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45ID.transformID, {x=-0, y=0, z=-0})
level02.props.OakTree_Collider46ID = {}
level02.props.OakTree_Collider46ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46ID.transformID, {x=-0, y=0, z=-0})
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
level02.props.OakTree_Collider47ID = {}
level02.props.OakTree_Collider47ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider47ID.model)
Transform.SetPosition(level02.props.OakTree_Collider47ID.transformID, {x=346.368, y=37.1634, z=203.707})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider47ID.transformID, 1.41434, 1.77458, 1.43405)
Transform.SetRotation(level02.props.OakTree_Collider47ID.transformID, {x=-0, y=3.24973, z=-0})
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
level02.colliders.C_Parent_Tile_2ID = {}
level02.colliders.C_Parent_Tile_2ID.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID.collider:SetMinPos(127.854,27.1865,33.7004)
level02.colliders.C_Parent_Tile_2ID.collider:SetMaxPos(384.073,67.0429,256.312)
level02.colliders.C_Parent_Tile_2ID.collider:SetPos(0,0,0)
level02.colliders.C_Parent_Tile_2ID1 = {}
level02.colliders.C_Parent_Tile_2ID1.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID1.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID1.collider:SetMinPos(127.854,27.1865,33.7004)
level02.colliders.C_Parent_Tile_2ID1.collider:SetMaxPos(309.235,62.9209,250.276)
level02.colliders.C_Parent_Tile_2ID.collider:AddChild(level02.colliders.C_Parent_Tile_2ID1.collider)
level02.colliders.C_Parent_Tile_2ID2 = {}
level02.colliders.C_Parent_Tile_2ID2.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID2.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID2.collider:SetMinPos(137.719,42.3375,33.7395)
level02.colliders.C_Parent_Tile_2ID2.collider:SetMaxPos(208.212,62.9209,157.105)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID2.collider)
level02.colliders.C_Parent_Tile_2ID3 = {}
level02.colliders.C_Parent_Tile_2ID3.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID3.collider:SetOffset(139.5,48.7857,153)
level02.colliders.C_Parent_Tile_2ID3.collider:SetAxes(0.936329, -0, 0.351123, 0, -1, -0, 0.351123, 0, -0.936329)
level02.colliders.C_Parent_Tile_2ID3.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID3.collider)
level02.colliders.C_Parent_Tile_2ID4 = {}
level02.colliders.C_Parent_Tile_2ID4.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID4.collider:SetOffset(144.5,50.234,147.5)
level02.colliders.C_Parent_Tile_2ID4.collider:SetAxes(0.393919, -0, 0.919145, 0, -1, -0, 0.919145, 0, -0.393919)
level02.colliders.C_Parent_Tile_2ID4.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID4.collider)
level02.colliders.C_Parent_Tile_2ID5 = {}
level02.colliders.C_Parent_Tile_2ID5.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID5.collider:SetOffset(181.5,55.2472,112)
level02.colliders.C_Parent_Tile_2ID5.collider:SetAxes(0.957826, 0, -0.287348, 0, -1, -0, -0.287348, 0, -0.957826)
level02.colliders.C_Parent_Tile_2ID5.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID5.collider)
level02.colliders.C_Parent_Tile_2ID6 = {}
level02.colliders.C_Parent_Tile_2ID6.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID6.collider:SetOffset(176.5,56.8068,92)
level02.colliders.C_Parent_Tile_2ID6.collider:SetAxes(0.995037, 0, -0.0995037, 0, -1, -0, -0.0995037, 0, -0.995037)
level02.colliders.C_Parent_Tile_2ID6.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID6.collider)
level02.colliders.C_Parent_Tile_2ID7 = {}
level02.colliders.C_Parent_Tile_2ID7.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID7.collider:SetOffset(176.5,56.584,78.5)
level02.colliders.C_Parent_Tile_2ID7.collider:SetAxes(0.998274, -0, 0.058722, 0, -1, -0, 0.058722, 0, -0.998274)
level02.colliders.C_Parent_Tile_2ID7.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID7.collider)
level02.colliders.C_Parent_Tile_2ID8 = {}
level02.colliders.C_Parent_Tile_2ID8.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID8.collider:SetOffset(179,56.2498,63.5)
level02.colliders.C_Parent_Tile_2ID8.collider:SetAxes(0.955779, -0, 0.294086, 0, -1, -0, 0.294086, 0, -0.955779)
level02.colliders.C_Parent_Tile_2ID8.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID8.collider)
level02.colliders.C_Parent_Tile_2ID9 = {}
level02.colliders.C_Parent_Tile_2ID9.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID9.collider:SetOffset(185,54.5788,51)
level02.colliders.C_Parent_Tile_2ID9.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level02.colliders.C_Parent_Tile_2ID9.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID9.collider)
level02.colliders.C_Parent_Tile_2ID10 = {}
level02.colliders.C_Parent_Tile_2ID10.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID10.collider:SetOffset(194,53.5761,41.5)
level02.colliders.C_Parent_Tile_2ID10.collider:SetAxes(0.573462, -0, 0.819232, 0, -1, -0, 0.819232, 0, -0.573462)
level02.colliders.C_Parent_Tile_2ID10.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID10.collider)
level02.colliders.C_Parent_Tile_2ID11 = {}
level02.colliders.C_Parent_Tile_2ID11.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID11.collider:SetOffset(202.5,52.9077,36)
level02.colliders.C_Parent_Tile_2ID11.collider:SetAxes(0.496139, -0, 0.868243, 0, -1, -0, 0.868243, 0, -0.496139)
level02.colliders.C_Parent_Tile_2ID11.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID11.collider)
level02.colliders.C_Parent_Tile_2ID12 = {}
level02.colliders.C_Parent_Tile_2ID12.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID12.collider:SetOffset(203,52.7963,58)
level02.colliders.C_Parent_Tile_2ID12.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level02.colliders.C_Parent_Tile_2ID12.collider:SetHalfLengths(0.3,7.11668,7.07107)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID12.collider)
level02.colliders.C_Parent_Tile_2ID13 = {}
level02.colliders.C_Parent_Tile_2ID13.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID13.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID13.collider:SetMinPos(137.705,28.4119,33.7004)
level02.colliders.C_Parent_Tile_2ID13.collider:SetMaxPos(250.1,62.5867,178.059)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID13.collider)
level02.colliders.C_Parent_Tile_2ID14 = {}
level02.colliders.C_Parent_Tile_2ID14.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID14.collider:SetOffset(141,40.5418,173)
level02.colliders.C_Parent_Tile_2ID14.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level02.colliders.C_Parent_Tile_2ID14.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID14.collider)
level02.colliders.C_Parent_Tile_2ID15 = {}
level02.colliders.C_Parent_Tile_2ID15.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID15.collider:SetOffset(139,44.2181,162.5)
level02.colliders.C_Parent_Tile_2ID15.collider:SetAxes(0.98387, 0, -0.178885, 0, -1, -0, -0.178885, 0, -0.98387)
level02.colliders.C_Parent_Tile_2ID15.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID15.collider)
level02.colliders.C_Parent_Tile_2ID16 = {}
level02.colliders.C_Parent_Tile_2ID16.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID16.collider:SetOffset(152,50.4568,146.5)
level02.colliders.C_Parent_Tile_2ID16.collider:SetAxes(-0.124035, 0, 0.992278, 0, -1, 0, 0.992278, 0, 0.124035)
level02.colliders.C_Parent_Tile_2ID16.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID16.collider)
level02.colliders.C_Parent_Tile_2ID17 = {}
level02.colliders.C_Parent_Tile_2ID17.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID17.collider:SetOffset(161.5,50.234,149)
level02.colliders.C_Parent_Tile_2ID17.collider:SetAxes(-0.341743, 0, 0.939793, 0, -1, 0, 0.939793, 0, 0.341743)
level02.colliders.C_Parent_Tile_2ID17.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID17.collider)
level02.colliders.C_Parent_Tile_2ID18 = {}
level02.colliders.C_Parent_Tile_2ID18.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID18.collider:SetOffset(215.5,52.0165,34.5)
level02.colliders.C_Parent_Tile_2ID18.collider:SetAxes(-0.0525588, 0, 0.998618, 0, -1, 0, 0.998618, 0, 0.0525588)
level02.colliders.C_Parent_Tile_2ID18.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID18.collider)
level02.colliders.C_Parent_Tile_2ID19 = {}
level02.colliders.C_Parent_Tile_2ID19.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID19.collider:SetOffset(234.5,41.9901,57.5)
level02.colliders.C_Parent_Tile_2ID19.collider:SetAxes(0.33441, 0, -0.942428, 0, -1, -0, -0.942428, 0, -0.33441)
level02.colliders.C_Parent_Tile_2ID19.collider:SetHalfLengths(0.3,13.5781,16.4469)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID19.collider)
level02.colliders.C_Parent_Tile_2ID20 = {}
level02.colliders.C_Parent_Tile_2ID20.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID20.collider:SetOffset(213.5,50.5682,52.5)
level02.colliders.C_Parent_Tile_2ID20.collider:SetAxes(-0.0905357, 0, -0.995893, -0, -1, 0, -0.995893, 0, 0.0905357)
level02.colliders.C_Parent_Tile_2ID20.collider:SetHalfLengths(0.3,7.22809,5.52268)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID20.collider)
level02.colliders.C_Parent_Tile_2ID21 = {}
level02.colliders.C_Parent_Tile_2ID21.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID21.collider:SetOffset(197.5,54.913,70.5)
level02.colliders.C_Parent_Tile_2ID21.collider:SetAxes(-0.997785, 0, -0.066519, -0, -1, 0, -0.066519, 0, 0.997785)
level02.colliders.C_Parent_Tile_2ID21.collider:SetHalfLengths(0.3,6.11404,7.51665)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID21.collider)
level02.colliders.C_Parent_Tile_2ID22 = {}
level02.colliders.C_Parent_Tile_2ID22.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID22.collider:SetOffset(198.5,56.027,86.5)
level02.colliders.C_Parent_Tile_2ID22.collider:SetAxes(-0.984784, 0, 0.173785, 0, -1, 0, 0.173785, 0, 0.984784)
level02.colliders.C_Parent_Tile_2ID22.collider:SetHalfLengths(0.3,5.33421,8.63134)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID22.collider)
level02.colliders.C_Parent_Tile_2ID23 = {}
level02.colliders.C_Parent_Tile_2ID23.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID23.collider:SetOffset(202,56.3612,109)
level02.colliders.C_Parent_Tile_2ID23.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level02.colliders.C_Parent_Tile_2ID23.collider:SetHalfLengths(0.3,6.22545,14.1421)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID23.collider)
level02.colliders.C_Parent_Tile_2ID24 = {}
level02.colliders.C_Parent_Tile_2ID24.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID24.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID24.collider:SetMinPos(141.703,32.1997,34.7033)
level02.colliders.C_Parent_Tile_2ID24.collider:SetMaxPos(245.044,60.5814,192.042)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID24.collider)
level02.colliders.C_Parent_Tile_2ID25 = {}
level02.colliders.C_Parent_Tile_2ID25.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID25.collider:SetOffset(143,38.8707,185)
level02.colliders.C_Parent_Tile_2ID25.collider:SetAxes(0.98995, 0, -0.141421, 0, -1, -0, -0.141421, 0, -0.98995)
level02.colliders.C_Parent_Tile_2ID25.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID25.collider)
level02.colliders.C_Parent_Tile_2ID26 = {}
level02.colliders.C_Parent_Tile_2ID26.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID26.collider:SetOffset(170,52.1279,152)
level02.colliders.C_Parent_Tile_2ID26.collider:SetAxes(-0.316228, 0, 0.948683, 0, -1, 0, 0.948683, 0, 0.316228)
level02.colliders.C_Parent_Tile_2ID26.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID26.collider)
level02.colliders.C_Parent_Tile_2ID27 = {}
level02.colliders.C_Parent_Tile_2ID27.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID27.collider:SetOffset(176.5,52.7963,152.5)
level02.colliders.C_Parent_Tile_2ID27.collider:SetAxes(0.141421, -0, 0.98995, 0, -1, -0, 0.98995, 0, -0.141421)
level02.colliders.C_Parent_Tile_2ID27.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID27.collider)
level02.colliders.C_Parent_Tile_2ID28 = {}
level02.colliders.C_Parent_Tile_2ID28.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID28.collider:SetOffset(187.5,55.2472,138)
level02.colliders.C_Parent_Tile_2ID28.collider:SetAxes(0.986394, -0, 0.164399, 0, -1, -0, 0.164399, 0, -0.986394)
level02.colliders.C_Parent_Tile_2ID28.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID28.collider)
level02.colliders.C_Parent_Tile_2ID29 = {}
level02.colliders.C_Parent_Tile_2ID29.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID29.collider:SetOffset(187.5,55.2472,133)
level02.colliders.C_Parent_Tile_2ID29.collider:SetAxes(0.970143, 0, -0.242536, 0, -1, -0, -0.242536, 0, -0.970143)
level02.colliders.C_Parent_Tile_2ID29.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID29.collider)
level02.colliders.C_Parent_Tile_2ID30 = {}
level02.colliders.C_Parent_Tile_2ID30.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID30.collider:SetOffset(186.5,55.3586,129)
level02.colliders.C_Parent_Tile_2ID30.collider:SetAxes(0.970143, 0, -0.242536, 0, -1, -0, -0.242536, 0, -0.970143)
level02.colliders.C_Parent_Tile_2ID30.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID30.collider)
level02.colliders.C_Parent_Tile_2ID31 = {}
level02.colliders.C_Parent_Tile_2ID31.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID31.collider:SetOffset(235,48.0059,36.5)
level02.colliders.C_Parent_Tile_2ID31.collider:SetAxes(-0.14834, 0, 0.988936, 0, -1, 0, 0.988936, 0, 0.14834)
level02.colliders.C_Parent_Tile_2ID31.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID31.collider)
level02.colliders.C_Parent_Tile_2ID32 = {}
level02.colliders.C_Parent_Tile_2ID32.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID32.collider:SetOffset(156.5,46.112,169.5)
level02.colliders.C_Parent_Tile_2ID32.collider:SetAxes(0.933346, 0, -0.358979, 0, -1, -0, -0.358979, 0, -0.933346)
level02.colliders.C_Parent_Tile_2ID32.collider:SetHalfLengths(0.3,9.34478,6.96419)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID32.collider)
level02.colliders.C_Parent_Tile_2ID33 = {}
level02.colliders.C_Parent_Tile_2ID33.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID33.collider:SetOffset(158.5,50.4568,163)
level02.colliders.C_Parent_Tile_2ID33.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.C_Parent_Tile_2ID33.collider:SetHalfLengths(0.3,8.11932,4.5)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID33.collider)
level02.colliders.C_Parent_Tile_2ID34 = {}
level02.colliders.C_Parent_Tile_2ID34.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID34.collider:SetOffset(168.5,53.5761,165.5)
level02.colliders.C_Parent_Tile_2ID34.collider:SetAxes(-0.413803, 0, 0.910366, 0, -1, 0, 0.910366, 0, 0.413803)
level02.colliders.C_Parent_Tile_2ID34.collider:SetHalfLengths(0.3,7.00528,6.04152)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID34.collider)
level02.colliders.C_Parent_Tile_2ID35 = {}
level02.colliders.C_Parent_Tile_2ID35.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID35.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID35.collider:SetMinPos(127.854,27.5207,122.977)
level02.colliders.C_Parent_Tile_2ID35.collider:SetMaxPos(205.299,60.9156,211.262)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID35.collider)
level02.colliders.C_Parent_Tile_2ID36 = {}
level02.colliders.C_Parent_Tile_2ID36.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID36.collider:SetOffset(132.5,34.0803,208.5)
level02.colliders.C_Parent_Tile_2ID36.collider:SetAxes(0.485643, -0, 0.874157, 0, -1, -0, 0.874157, 0, -0.485643)
level02.colliders.C_Parent_Tile_2ID36.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID36.collider)
level02.colliders.C_Parent_Tile_2ID37 = {}
level02.colliders.C_Parent_Tile_2ID37.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID37.collider:SetOffset(139.5,34.7488,202.5)
level02.colliders.C_Parent_Tile_2ID37.collider:SetAxes(0.813733, -0, 0.581238, 0, -1, -0, 0.581238, 0, -0.813733)
level02.colliders.C_Parent_Tile_2ID37.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID37.collider)
level02.colliders.C_Parent_Tile_2ID38 = {}
level02.colliders.C_Parent_Tile_2ID38.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID38.collider:SetOffset(143,36.9769,195.5)
level02.colliders.C_Parent_Tile_2ID38.collider:SetAxes(0.961524, -0, 0.274721, 0, -1, -0, 0.274721, 0, -0.961524)
level02.colliders.C_Parent_Tile_2ID38.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID38.collider)
level02.colliders.C_Parent_Tile_2ID39 = {}
level02.colliders.C_Parent_Tile_2ID39.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID39.collider:SetOffset(182,54.1331,150.5)
level02.colliders.C_Parent_Tile_2ID39.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.C_Parent_Tile_2ID39.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID39.collider)
level02.colliders.C_Parent_Tile_2ID40 = {}
level02.colliders.C_Parent_Tile_2ID40.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID40.collider:SetOffset(184.5,54.8016,147.5)
level02.colliders.C_Parent_Tile_2ID40.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.C_Parent_Tile_2ID40.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID40.collider)
level02.colliders.C_Parent_Tile_2ID41 = {}
level02.colliders.C_Parent_Tile_2ID41.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID41.collider:SetOffset(186,55.5814,143.5)
level02.colliders.C_Parent_Tile_2ID41.collider:SetAxes(0.928477, -0, 0.371391, 0, -1, -0, 0.371391, 0, -0.928477)
level02.colliders.C_Parent_Tile_2ID41.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID41.collider)
level02.colliders.C_Parent_Tile_2ID42 = {}
level02.colliders.C_Parent_Tile_2ID42.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID42.collider:SetOffset(169,47.0033,177.5)
level02.colliders.C_Parent_Tile_2ID42.collider:SetAxes(0.83205, 0, -0.5547, 0, -1, -0, -0.5547, 0, -0.83205)
level02.colliders.C_Parent_Tile_2ID42.collider:SetHalfLengths(0.3,9.79039,5.40833)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID42.collider)
level02.colliders.C_Parent_Tile_2ID43 = {}
level02.colliders.C_Parent_Tile_2ID43.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID43.collider:SetOffset(170,51.7936,170.5)
level02.colliders.C_Parent_Tile_2ID43.collider:SetAxes(0.529999, -0, 0.847998, 0, -1, -0, 0.847998, 0, -0.529999)
level02.colliders.C_Parent_Tile_2ID43.collider:SetHalfLengths(0.3,8.78775,4.71699)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID43.collider)
level02.colliders.C_Parent_Tile_2ID44 = {}
level02.colliders.C_Parent_Tile_2ID44.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID44.collider:SetOffset(163.5,49.3428,176.5)
level02.colliders.C_Parent_Tile_2ID44.collider:SetAxes(0.110432, 0, -0.993884, 0, -1, -0, -0.993884, 0, -0.110432)
level02.colliders.C_Parent_Tile_2ID44.collider:SetHalfLengths(0.3,8.23073,4.52769)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID44.collider)
level02.colliders.C_Parent_Tile_2ID45 = {}
level02.colliders.C_Parent_Tile_2ID45.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID45.collider:SetOffset(204.5,55.47,129.5)
level02.colliders.C_Parent_Tile_2ID45.collider:SetAxes(0.997055, 0, -0.0766965, 0, -1, -0, -0.0766965, 0, -0.997055)
level02.colliders.C_Parent_Tile_2ID45.collider:SetHalfLengths(0.3,5.33421,6.5192)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID45.collider)
level02.colliders.C_Parent_Tile_2ID46 = {}
level02.colliders.C_Parent_Tile_2ID46.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID46.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID46.collider:SetMinPos(160.696,31.5713,37.73)
level02.colliders.C_Parent_Tile_2ID46.collider:SetMaxPos(276.131,61.2498,196.351)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID46.collider)
level02.colliders.C_Parent_Tile_2ID47 = {}
level02.colliders.C_Parent_Tile_2ID47.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID47.collider:SetOffset(260.5,45.2208,45.5)
level02.colliders.C_Parent_Tile_2ID47.collider:SetAxes(-0.435561, 0, 0.900159, 0, -1, 0, 0.900159, 0, 0.435561)
level02.colliders.C_Parent_Tile_2ID47.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID47.collider)
level02.colliders.C_Parent_Tile_2ID48 = {}
level02.colliders.C_Parent_Tile_2ID48.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID48.collider:SetOffset(218.5,38.9821,136)
level02.colliders.C_Parent_Tile_2ID48.collider:SetAxes(0.977802, 0, -0.209529, 0, -1, -0, -0.209529, 0, -0.977802)
level02.colliders.C_Parent_Tile_2ID48.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID48.collider)
level02.colliders.C_Parent_Tile_2ID49 = {}
level02.colliders.C_Parent_Tile_2ID49.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID49.collider:SetOffset(221.5,41.3216,126)
level02.colliders.C_Parent_Tile_2ID49.collider:SetAxes(0.5547, -0, 0.83205, 0, -1, -0, 0.83205, 0, -0.5547)
level02.colliders.C_Parent_Tile_2ID49.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID49.collider)
level02.colliders.C_Parent_Tile_2ID50 = {}
level02.colliders.C_Parent_Tile_2ID50.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID50.collider:SetOffset(163.885,45.0938,193.24)
level02.colliders.C_Parent_Tile_2ID50.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID50.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID50.collider)
level02.colliders.C_Parent_Tile_2ID51 = {}
level02.colliders.C_Parent_Tile_2ID51.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID51.collider:SetOffset(225.855,38.7525,139.26)
level02.colliders.C_Parent_Tile_2ID51.collider:SetAxes(0.180086, -0.00975022, 0.983603, -0.0550206, -0.998485, 0.000175845, -0.982111, 0.05415, 0.180349)
level02.colliders.C_Parent_Tile_2ID51.collider:SetHalfLengths(7.53319,6.70818,7.56718)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID51.collider)
level02.colliders.C_Parent_Tile_2ID52 = {}
level02.colliders.C_Parent_Tile_2ID52.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID52.collider:SetOffset(175.5,44.5524,185.5)
level02.colliders.C_Parent_Tile_2ID52.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID52.collider:SetHalfLengths(0.3,7.4509,4.94975)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID52.collider)
level02.colliders.C_Parent_Tile_2ID53 = {}
level02.colliders.C_Parent_Tile_2ID53.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID53.collider:SetOffset(177.5,55.5814,168.5)
level02.colliders.C_Parent_Tile_2ID53.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.C_Parent_Tile_2ID53.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID53.collider)
level02.colliders.C_Parent_Tile_2ID54 = {}
level02.colliders.C_Parent_Tile_2ID54.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID54.collider:SetOffset(187.5,55.8042,167.5)
level02.colliders.C_Parent_Tile_2ID54.collider:SetAxes(0.22486, -0, 0.974391, 0, -1, -0, 0.974391, 0, -0.22486)
level02.colliders.C_Parent_Tile_2ID54.collider:SetHalfLengths(0.3,5.44562,6.67083)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID54.collider)
level02.colliders.C_Parent_Tile_2ID55 = {}
level02.colliders.C_Parent_Tile_2ID55.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID55.collider:SetOffset(206,54.5788,149.5)
level02.colliders.C_Parent_Tile_2ID55.collider:SetAxes(0.988372, -0, 0.152057, 0, -1, -0, 0.152057, 0, -0.988372)
level02.colliders.C_Parent_Tile_2ID55.collider:SetHalfLengths(0.3,5.66843,6.57647)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID55.collider)
level02.colliders.C_Parent_Tile_2ID56 = {}
level02.colliders.C_Parent_Tile_2ID56.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID56.collider:SetOffset(206,55.2472,139.5)
level02.colliders.C_Parent_Tile_2ID56.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level02.colliders.C_Parent_Tile_2ID56.collider:SetHalfLengths(0.3,5.22281,3.64005)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID56.collider)
level02.colliders.C_Parent_Tile_2ID57 = {}
level02.colliders.C_Parent_Tile_2ID57.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID57.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID57.collider:SetMinPos(127.963,27.1865,62.7409)
level02.colliders.C_Parent_Tile_2ID57.collider:SetMaxPos(262.151,61.3612,224.298)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID57.collider)
level02.colliders.C_Parent_Tile_2ID58 = {}
level02.colliders.C_Parent_Tile_2ID58.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID58.collider:SetOffset(132,33.8575,223.5)
level02.colliders.C_Parent_Tile_2ID58.collider:SetAxes(0.124035, -0, 0.992278, 0, -1, -0, 0.992278, 0, -0.124035)
level02.colliders.C_Parent_Tile_2ID58.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID58.collider)
level02.colliders.C_Parent_Tile_2ID59 = {}
level02.colliders.C_Parent_Tile_2ID59.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID59.collider:SetOffset(138.5,35.5286,222)
level02.colliders.C_Parent_Tile_2ID59.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level02.colliders.C_Parent_Tile_2ID59.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID59.collider)
level02.colliders.C_Parent_Tile_2ID60 = {}
level02.colliders.C_Parent_Tile_2ID60.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID60.collider:SetOffset(143,35.1944,220.5)
level02.colliders.C_Parent_Tile_2ID60.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level02.colliders.C_Parent_Tile_2ID60.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID60.collider)
level02.colliders.C_Parent_Tile_2ID61 = {}
level02.colliders.C_Parent_Tile_2ID61.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID61.collider:SetOffset(201,40.319,176.5)
level02.colliders.C_Parent_Tile_2ID61.collider:SetAxes(0.540758, -0, 0.841179, 0, -1, -0, 0.841179, 0, -0.540758)
level02.colliders.C_Parent_Tile_2ID61.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID61.collider)
level02.colliders.C_Parent_Tile_2ID62 = {}
level02.colliders.C_Parent_Tile_2ID62.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID62.collider:SetOffset(221,36.6426,148)
level02.colliders.C_Parent_Tile_2ID62.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level02.colliders.C_Parent_Tile_2ID62.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID62.collider)
level02.colliders.C_Parent_Tile_2ID63 = {}
level02.colliders.C_Parent_Tile_2ID63.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID63.collider:SetOffset(231,42.2129,122)
level02.colliders.C_Parent_Tile_2ID63.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.C_Parent_Tile_2ID63.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID63.collider)
level02.colliders.C_Parent_Tile_2ID64 = {}
level02.colliders.C_Parent_Tile_2ID64.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID64.collider:SetOffset(256,38.7593,66.5)
level02.colliders.C_Parent_Tile_2ID64.collider:SetAxes(0.503871, 0, -0.863779, 0, -1, -0, -0.863779, 0, -0.503871)
level02.colliders.C_Parent_Tile_2ID64.collider:SetHalfLengths(0.3,8.23073,6.94622)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID64.collider)
level02.colliders.C_Parent_Tile_2ID65 = {}
level02.colliders.C_Parent_Tile_2ID65.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID65.collider:SetOffset(185,42.6585,189.5)
level02.colliders.C_Parent_Tile_2ID65.collider:SetAxes(0.0830455, 0, -0.996546, 0, -1, -0, -0.996546, 0, -0.0830455)
level02.colliders.C_Parent_Tile_2ID65.collider:SetHalfLengths(0.3,6.89388,6.0208)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID65.collider)
level02.colliders.C_Parent_Tile_2ID66 = {}
level02.colliders.C_Parent_Tile_2ID66.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID66.collider:SetOffset(197,55.3586,163.5)
level02.colliders.C_Parent_Tile_2ID66.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level02.colliders.C_Parent_Tile_2ID66.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID66.collider)
level02.colliders.C_Parent_Tile_2ID67 = {}
level02.colliders.C_Parent_Tile_2ID67.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID67.collider:SetOffset(202.5,55.47,158.5)
level02.colliders.C_Parent_Tile_2ID67.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID67.collider:SetHalfLengths(0.3,5.89124,3.53553)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID67.collider)
level02.colliders.C_Parent_Tile_2ID68 = {}
level02.colliders.C_Parent_Tile_2ID68.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID68.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID68.collider:SetMinPos(148.918,30.64,69.7879)
level02.colliders.C_Parent_Tile_2ID68.collider:SetMaxPos(267.212,51.2651,232.288)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID68.collider)
level02.colliders.C_Parent_Tile_2ID69 = {}
level02.colliders.C_Parent_Tile_2ID69.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID69.collider:SetOffset(177,41.433,212)
level02.colliders.C_Parent_Tile_2ID69.collider:SetAxes(0.894427, -0, 0.447214, 0, -1, -0, 0.447214, 0, -0.894427)
level02.colliders.C_Parent_Tile_2ID69.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID69.collider)
level02.colliders.C_Parent_Tile_2ID70 = {}
level02.colliders.C_Parent_Tile_2ID70.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID70.collider:SetOffset(180.5,41.6558,208.5)
level02.colliders.C_Parent_Tile_2ID70.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level02.colliders.C_Parent_Tile_2ID70.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID70.collider)
level02.colliders.C_Parent_Tile_2ID71 = {}
level02.colliders.C_Parent_Tile_2ID71.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID71.collider:SetOffset(185.5,41.8786,206.5)
level02.colliders.C_Parent_Tile_2ID71.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.C_Parent_Tile_2ID71.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID71.collider)
level02.colliders.C_Parent_Tile_2ID72 = {}
level02.colliders.C_Parent_Tile_2ID72.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID72.collider:SetOffset(220.5,36.0856,175)
level02.colliders.C_Parent_Tile_2ID72.collider:SetAxes(0.819232, -0, 0.573462, 0, -1, -0, 0.573462, 0, -0.819232)
level02.colliders.C_Parent_Tile_2ID72.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID72.collider)
level02.colliders.C_Parent_Tile_2ID73 = {}
level02.colliders.C_Parent_Tile_2ID73.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID73.collider:SetOffset(236.5,36.5312,145)
level02.colliders.C_Parent_Tile_2ID73.collider:SetAxes(0.752577, -0, 0.658505, 0, -1, -0, 0.658505, 0, -0.752577)
level02.colliders.C_Parent_Tile_2ID73.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID73.collider)
level02.colliders.C_Parent_Tile_2ID74 = {}
level02.colliders.C_Parent_Tile_2ID74.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID74.collider:SetOffset(240,36.754,139)
level02.colliders.C_Parent_Tile_2ID74.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.C_Parent_Tile_2ID74.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID74.collider)
level02.colliders.C_Parent_Tile_2ID75 = {}
level02.colliders.C_Parent_Tile_2ID75.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID75.collider:SetOffset(253,37.9795,123)
level02.colliders.C_Parent_Tile_2ID75.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID75.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID75.collider)
level02.colliders.C_Parent_Tile_2ID76 = {}
level02.colliders.C_Parent_Tile_2ID76.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID76.collider:SetOffset(176.796,45.2188,214.625)
level02.colliders.C_Parent_Tile_2ID76.collider:SetAxes(0.867202, -0.0144419, 0.497747, -0.0166511, -0.999861, 0, -0.497678, 0.00828805, 0.867322)
level02.colliders.C_Parent_Tile_2ID76.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID76.collider)
level02.colliders.C_Parent_Tile_2ID77 = {}
level02.colliders.C_Parent_Tile_2ID77.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID77.collider:SetOffset(264.5,38.4251,72.5)
level02.colliders.C_Parent_Tile_2ID77.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID77.collider:SetHalfLengths(0.3,5.33421,3.53553)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID77.collider)
level02.colliders.C_Parent_Tile_2ID78 = {}
level02.colliders.C_Parent_Tile_2ID78.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID78.collider:SetOffset(152.5,36.754,231)
level02.colliders.C_Parent_Tile_2ID78.collider:SetAxes(-0.274721, 0, 0.961524, 0, -1, 0, 0.961524, 0, 0.274721)
level02.colliders.C_Parent_Tile_2ID78.collider:SetHalfLengths(0.3,5.44562,3.64005)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID78.collider)
level02.colliders.C_Parent_Tile_2ID79 = {}
level02.colliders.C_Parent_Tile_2ID79.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID79.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID79.collider:SetMinPos(155.75,30.083,74.8235)
level02.colliders.C_Parent_Tile_2ID79.collider:SetMaxPos(275.243,47.5471,238.166)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID79.collider)
level02.colliders.C_Parent_Tile_2ID80 = {}
level02.colliders.C_Parent_Tile_2ID80.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID80.collider:SetOffset(176.5,41.9901,216.5)
level02.colliders.C_Parent_Tile_2ID80.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level02.colliders.C_Parent_Tile_2ID80.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID80.collider)
level02.colliders.C_Parent_Tile_2ID81 = {}
level02.colliders.C_Parent_Tile_2ID81.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID81.collider:SetOffset(190.5,41.3216,205.5)
level02.colliders.C_Parent_Tile_2ID81.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.C_Parent_Tile_2ID81.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID81.collider)
level02.colliders.C_Parent_Tile_2ID82 = {}
level02.colliders.C_Parent_Tile_2ID82.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID82.collider:SetOffset(198,40.6532,203)
level02.colliders.C_Parent_Tile_2ID82.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level02.colliders.C_Parent_Tile_2ID82.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID82.collider)
level02.colliders.C_Parent_Tile_2ID83 = {}
level02.colliders.C_Parent_Tile_2ID83.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID83.collider:SetOffset(207.5,38.9821,191)
level02.colliders.C_Parent_Tile_2ID83.collider:SetAxes(0.957826, -0, 0.287348, 0, -1, -0, 0.287348, 0, -0.957826)
level02.colliders.C_Parent_Tile_2ID83.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID83.collider)
level02.colliders.C_Parent_Tile_2ID84 = {}
level02.colliders.C_Parent_Tile_2ID84.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID84.collider:SetOffset(211,37.7567,184.5)
level02.colliders.C_Parent_Tile_2ID84.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.C_Parent_Tile_2ID84.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID84.collider)
level02.colliders.C_Parent_Tile_2ID85 = {}
level02.colliders.C_Parent_Tile_2ID85.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID85.collider:SetOffset(215,36.9769,181.5)
level02.colliders.C_Parent_Tile_2ID85.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.C_Parent_Tile_2ID85.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID85.collider)
level02.colliders.C_Parent_Tile_2ID86 = {}
level02.colliders.C_Parent_Tile_2ID86.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID86.collider:SetOffset(227.5,35.64,167.5)
level02.colliders.C_Parent_Tile_2ID86.collider:SetAxes(0.581238, -0, 0.813733, 0, -1, -0, 0.813733, 0, -0.581238)
level02.colliders.C_Parent_Tile_2ID86.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID86.collider)
level02.colliders.C_Parent_Tile_2ID87 = {}
level02.colliders.C_Parent_Tile_2ID87.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID87.collider:SetOffset(237.5,35.64,159.5)
level02.colliders.C_Parent_Tile_2ID87.collider:SetAxes(0.645942, -0, 0.763386, 0, -1, -0, 0.763386, 0, -0.645942)
level02.colliders.C_Parent_Tile_2ID87.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID87.collider)
level02.colliders.C_Parent_Tile_2ID88 = {}
level02.colliders.C_Parent_Tile_2ID88.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID88.collider:SetOffset(271,37.9795,80.5)
level02.colliders.C_Parent_Tile_2ID88.collider:SetAxes(0.808736, 0, -0.588172, 0, -1, -0, -0.588172, 0, -0.808736)
level02.colliders.C_Parent_Tile_2ID88.collider:SetHalfLengths(0.3,5.44562,6.80074)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID88.collider)
level02.colliders.C_Parent_Tile_2ID89 = {}
level02.colliders.C_Parent_Tile_2ID89.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID89.collider:SetOffset(158,37.1997,235)
level02.colliders.C_Parent_Tile_2ID89.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level02.colliders.C_Parent_Tile_2ID89.collider:SetHalfLengths(0.3,7.11668,3.60555)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID89.collider)
level02.colliders.C_Parent_Tile_2ID90 = {}
level02.colliders.C_Parent_Tile_2ID90.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID90.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID90.collider:SetMinPos(159.813,30.3058,52.7879)
level02.colliders.C_Parent_Tile_2ID90.collider:SetMaxPos(298.031,56.0138,242.234)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID90.collider)
level02.colliders.C_Parent_Tile_2ID91 = {}
level02.colliders.C_Parent_Tile_2ID91.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID91.collider:SetOffset(283,40.9874,60)
level02.colliders.C_Parent_Tile_2ID91.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.C_Parent_Tile_2ID91.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID91.collider)
level02.colliders.C_Parent_Tile_2ID92 = {}
level02.colliders.C_Parent_Tile_2ID92.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID92.collider:SetOffset(183.5,46.8918,226)
level02.colliders.C_Parent_Tile_2ID92.collider:SetAxes(0.406139, 0, -0.913812, 0, -1, -0, -0.913812, 0, -0.406139)
level02.colliders.C_Parent_Tile_2ID92.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID92.collider)
level02.colliders.C_Parent_Tile_2ID93 = {}
level02.colliders.C_Parent_Tile_2ID93.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID93.collider:SetOffset(178,42.7699,221.5)
level02.colliders.C_Parent_Tile_2ID93.collider:SetAxes(0.928477, 0, -0.371391, 0, -1, -0, -0.371391, 0, -0.928477)
level02.colliders.C_Parent_Tile_2ID93.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID93.collider)
level02.colliders.C_Parent_Tile_2ID94 = {}
level02.colliders.C_Parent_Tile_2ID94.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID94.collider:SetOffset(204.5,39.6506,198.5)
level02.colliders.C_Parent_Tile_2ID94.collider:SetAxes(0.857493, -0, 0.514496, 0, -1, -0, 0.514496, 0, -0.857493)
level02.colliders.C_Parent_Tile_2ID94.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID94.collider)
level02.colliders.C_Parent_Tile_2ID95 = {}
level02.colliders.C_Parent_Tile_2ID95.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID95.collider:SetOffset(249.5,36.0856,148.5)
level02.colliders.C_Parent_Tile_2ID95.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID95.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID95.collider)
level02.colliders.C_Parent_Tile_2ID96 = {}
level02.colliders.C_Parent_Tile_2ID96.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID96.collider:SetOffset(258,36.8654,140)
level02.colliders.C_Parent_Tile_2ID96.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID96.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID96.collider)
level02.colliders.C_Parent_Tile_2ID97 = {}
level02.colliders.C_Parent_Tile_2ID97.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID97.collider:SetOffset(263.5,37.4225,113.5)
level02.colliders.C_Parent_Tile_2ID97.collider:SetAxes(0.633238, -0, 0.773957, 0, -1, -0, 0.773957, 0, -0.633238)
level02.colliders.C_Parent_Tile_2ID97.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID97.collider)
level02.colliders.C_Parent_Tile_2ID98 = {}
level02.colliders.C_Parent_Tile_2ID98.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID98.collider:SetOffset(283.5,36.9769,107.5)
level02.colliders.C_Parent_Tile_2ID98.collider:SetAxes(0.102899, -0, 0.994692, 0, -1, -0, 0.994692, 0, -0.102899)
level02.colliders.C_Parent_Tile_2ID98.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID98.collider)
level02.colliders.C_Parent_Tile_2ID99 = {}
level02.colliders.C_Parent_Tile_2ID99.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID99.collider:SetOffset(280.5,37.4225,93)
level02.colliders.C_Parent_Tile_2ID99.collider:SetAxes(0.786318, 0, -0.617822, 0, -1, -0, -0.617822, 0, -0.786318)
level02.colliders.C_Parent_Tile_2ID99.collider:SetHalfLengths(0.3,5.55702,8.90225)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID99.collider)
level02.colliders.C_Parent_Tile_2ID100 = {}
level02.colliders.C_Parent_Tile_2ID100.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID100.collider:SetOffset(162.5,39.3163,240)
level02.colliders.C_Parent_Tile_2ID100.collider:SetAxes(-0.624695, 0, 0.780869, 0, -1, 0, 0.780869, 0, 0.624695)
level02.colliders.C_Parent_Tile_2ID100.collider:SetHalfLengths(0.3,7.22809,3.20156)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID100.collider)
level02.colliders.C_Parent_Tile_2ID101 = {}
level02.colliders.C_Parent_Tile_2ID101.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID101.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID101.collider:SetMinPos(164.884,27.7435,66.8138)
level02.colliders.C_Parent_Tile_2ID101.collider:SetMaxPos(309.235,56.7937,250.276)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID101.collider)
level02.colliders.C_Parent_Tile_2ID102 = {}
level02.colliders.C_Parent_Tile_2ID102.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID102.collider:SetOffset(299.5,41.3216,79)
level02.colliders.C_Parent_Tile_2ID102.collider:SetAxes(-0.784046, 0, 0.620703, 0, -1, 0, 0.620703, 0, 0.784046)
level02.colliders.C_Parent_Tile_2ID102.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID102.collider)
level02.colliders.C_Parent_Tile_2ID103 = {}
level02.colliders.C_Parent_Tile_2ID103.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID103.collider:SetOffset(205,50.6796,226)
level02.colliders.C_Parent_Tile_2ID103.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level02.colliders.C_Parent_Tile_2ID103.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID103.collider)
level02.colliders.C_Parent_Tile_2ID104 = {}
level02.colliders.C_Parent_Tile_2ID104.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID104.collider:SetOffset(198.5,49.5656,227.5)
level02.colliders.C_Parent_Tile_2ID104.collider:SetAxes(-0.141421, 0, -0.98995, -0, -1, 0, -0.98995, 0, 0.141421)
level02.colliders.C_Parent_Tile_2ID104.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID104.collider)
level02.colliders.C_Parent_Tile_2ID105 = {}
level02.colliders.C_Parent_Tile_2ID105.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID105.collider:SetOffset(191.5,48.3401,228)
level02.colliders.C_Parent_Tile_2ID105.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level02.colliders.C_Parent_Tile_2ID105.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID105.collider)
level02.colliders.C_Parent_Tile_2ID106 = {}
level02.colliders.C_Parent_Tile_2ID106.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID106.collider:SetOffset(264,37.3111,134.5)
level02.colliders.C_Parent_Tile_2ID106.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level02.colliders.C_Parent_Tile_2ID106.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID106.collider)
level02.colliders.C_Parent_Tile_2ID107 = {}
level02.colliders.C_Parent_Tile_2ID107.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID107.collider:SetOffset(269,37.4225,131)
level02.colliders.C_Parent_Tile_2ID107.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level02.colliders.C_Parent_Tile_2ID107.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID107.collider)
level02.colliders.C_Parent_Tile_2ID108 = {}
level02.colliders.C_Parent_Tile_2ID108.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID108.collider:SetOffset(273.5,37.3111,129.5)
level02.colliders.C_Parent_Tile_2ID108.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.C_Parent_Tile_2ID108.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID108.collider)
level02.colliders.C_Parent_Tile_2ID109 = {}
level02.colliders.C_Parent_Tile_2ID109.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID109.collider:SetOffset(281.5,37.5339,128.5)
level02.colliders.C_Parent_Tile_2ID109.collider:SetAxes(0.0905358, -0, 0.995893, 0, -1, -0, 0.995893, 0, -0.0905358)
level02.colliders.C_Parent_Tile_2ID109.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID109.collider)
level02.colliders.C_Parent_Tile_2ID110 = {}
level02.colliders.C_Parent_Tile_2ID110.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID110.collider:SetOffset(292,38.2023,103)
level02.colliders.C_Parent_Tile_2ID110.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level02.colliders.C_Parent_Tile_2ID110.collider:SetHalfLengths(0.3,5.77983,6.7082)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID110.collider)
level02.colliders.C_Parent_Tile_2ID111 = {}
level02.colliders.C_Parent_Tile_2ID111.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID111.collider:SetOffset(174.5,41.5444,246)
level02.colliders.C_Parent_Tile_2ID111.collider:SetAxes(-0.388057, 0, 0.921635, 0, -1, 0, 0.921635, 0, 0.388057)
level02.colliders.C_Parent_Tile_2ID111.collider:SetHalfLengths(0.3,13.801,10.3078)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID111.collider)
level02.colliders.C_Parent_Tile_2ID112 = {}
level02.colliders.C_Parent_Tile_2ID112.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID112.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID112.collider:SetMinPos(144.788,29.1917,90.7879)
level02.colliders.C_Parent_Tile_2ID112.collider:SetMaxPos(384.073,67.0429,256.312)
level02.colliders.C_Parent_Tile_2ID.collider:AddChild(level02.colliders.C_Parent_Tile_2ID112.collider)
level02.colliders.C_Parent_Tile_2ID113 = {}
level02.colliders.C_Parent_Tile_2ID113.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID113.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID113.collider:SetMinPos(144.788,29.3031,120.741)
level02.colliders.C_Parent_Tile_2ID113.collider:SetMaxPos(248.151,49.998,233.03)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID113.collider)
level02.colliders.C_Parent_Tile_2ID114 = {}
level02.colliders.C_Parent_Tile_2ID114.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID114.collider:SetOffset(146.5,35.1944,221.5)
level02.colliders.C_Parent_Tile_2ID114.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.C_Parent_Tile_2ID114.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID114.collider)
level02.colliders.C_Parent_Tile_2ID115 = {}
level02.colliders.C_Parent_Tile_2ID115.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID115.collider:SetOffset(148.5,36.0856,228)
level02.colliders.C_Parent_Tile_2ID115.collider:SetAxes(-0.995037, 0, 0.0995037, 0, -1, 0, 0.0995037, 0, 0.995037)
level02.colliders.C_Parent_Tile_2ID115.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID115.collider)
level02.colliders.C_Parent_Tile_2ID116 = {}
level02.colliders.C_Parent_Tile_2ID116.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID116.collider:SetOffset(192.5,42.6585,185.5)
level02.colliders.C_Parent_Tile_2ID116.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.C_Parent_Tile_2ID116.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID116.collider)
level02.colliders.C_Parent_Tile_2ID117 = {}
level02.colliders.C_Parent_Tile_2ID117.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID117.collider:SetOffset(213,39.3163,166.5)
level02.colliders.C_Parent_Tile_2ID117.collider:SetAxes(0.73994, -0, 0.672673, 0, -1, -0, 0.672673, 0, -0.73994)
level02.colliders.C_Parent_Tile_2ID117.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID117.collider)
level02.colliders.C_Parent_Tile_2ID118 = {}
level02.colliders.C_Parent_Tile_2ID118.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID118.collider:SetOffset(219,36.4198,158)
level02.colliders.C_Parent_Tile_2ID118.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.C_Parent_Tile_2ID118.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID118.collider)
level02.colliders.C_Parent_Tile_2ID119 = {}
level02.colliders.C_Parent_Tile_2ID119.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID119.collider:SetOffset(222,36.5312,153.5)
level02.colliders.C_Parent_Tile_2ID119.collider:SetAxes(0.6, -0, 0.8, 0, -1, -0, 0.8, 0, -0.6)
level02.colliders.C_Parent_Tile_2ID119.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID119.collider)
level02.colliders.C_Parent_Tile_2ID120 = {}
level02.colliders.C_Parent_Tile_2ID120.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID120.collider:SetOffset(228.5,36.6426,150.5)
level02.colliders.C_Parent_Tile_2ID120.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level02.colliders.C_Parent_Tile_2ID120.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID120.collider)
level02.colliders.C_Parent_Tile_2ID121 = {}
level02.colliders.C_Parent_Tile_2ID121.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID121.collider:SetOffset(238,37.3111,135)
level02.colliders.C_Parent_Tile_2ID121.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level02.colliders.C_Parent_Tile_2ID121.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID121.collider)
level02.colliders.C_Parent_Tile_2ID122 = {}
level02.colliders.C_Parent_Tile_2ID122.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID122.collider:SetOffset(242,40.0962,124.5)
level02.colliders.C_Parent_Tile_2ID122.collider:SetAxes(-0.503871, 0, 0.863779, 0, -1, 0, 0.863779, 0, 0.503871)
level02.colliders.C_Parent_Tile_2ID122.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID122.collider)
level02.colliders.C_Parent_Tile_2ID123 = {}
level02.colliders.C_Parent_Tile_2ID123.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID123.collider:SetOffset(235,42.375,133.125)
level02.colliders.C_Parent_Tile_2ID123.collider:SetAxes(-0.873982, 0, 0.485958, -0, -1, 0, -0.485958, 0, -0.873982)
level02.colliders.C_Parent_Tile_2ID123.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID123.collider)
level02.colliders.C_Parent_Tile_2ID124 = {}
level02.colliders.C_Parent_Tile_2ID124.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID124.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID124.collider:SetMinPos(178.882,31.3084,90.7879)
level02.colliders.C_Parent_Tile_2ID124.collider:SetMaxPos(315.212,63.9235,252.276)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID124.collider)
level02.colliders.C_Parent_Tile_2ID125 = {}
level02.colliders.C_Parent_Tile_2ID125.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID125.collider:SetOffset(312,42.6585,94)
level02.colliders.C_Parent_Tile_2ID125.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.C_Parent_Tile_2ID125.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID125.collider)
level02.colliders.C_Parent_Tile_2ID126 = {}
level02.colliders.C_Parent_Tile_2ID126.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID126.collider:SetOffset(182.5,47.1147,250.5)
level02.colliders.C_Parent_Tile_2ID126.collider:SetAxes(0.393919, -0, 0.919145, 0, -1, -0, 0.919145, 0, -0.393919)
level02.colliders.C_Parent_Tile_2ID126.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID126.collider)
level02.colliders.C_Parent_Tile_2ID127 = {}
level02.colliders.C_Parent_Tile_2ID127.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID127.collider:SetOffset(189,50.5682,246.5)
level02.colliders.C_Parent_Tile_2ID127.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level02.colliders.C_Parent_Tile_2ID127.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID127.collider)
level02.colliders.C_Parent_Tile_2ID128 = {}
level02.colliders.C_Parent_Tile_2ID128.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID128.collider:SetOffset(194.5,51.4594,244)
level02.colliders.C_Parent_Tile_2ID128.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.C_Parent_Tile_2ID128.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID128.collider)
level02.colliders.C_Parent_Tile_2ID129 = {}
level02.colliders.C_Parent_Tile_2ID129.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID129.collider:SetOffset(200.5,53.2419,244.5)
level02.colliders.C_Parent_Tile_2ID129.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.C_Parent_Tile_2ID129.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID129.collider)
level02.colliders.C_Parent_Tile_2ID130 = {}
level02.colliders.C_Parent_Tile_2ID130.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID130.collider:SetOffset(207,55.2472,245.5)
level02.colliders.C_Parent_Tile_2ID130.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level02.colliders.C_Parent_Tile_2ID130.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID130.collider)
level02.colliders.C_Parent_Tile_2ID131 = {}
level02.colliders.C_Parent_Tile_2ID131.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID131.collider:SetOffset(212.5,56.6954,247)
level02.colliders.C_Parent_Tile_2ID131.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level02.colliders.C_Parent_Tile_2ID131.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID131.collider)
level02.colliders.C_Parent_Tile_2ID132 = {}
level02.colliders.C_Parent_Tile_2ID132.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID132.collider:SetOffset(293,37.1997,129)
level02.colliders.C_Parent_Tile_2ID132.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level02.colliders.C_Parent_Tile_2ID132.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID132.collider)
level02.colliders.C_Parent_Tile_2ID133 = {}
level02.colliders.C_Parent_Tile_2ID133.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID133.collider:SetOffset(213,50.6796,224)
level02.colliders.C_Parent_Tile_2ID133.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level02.colliders.C_Parent_Tile_2ID133.collider:SetHalfLengths(0.3,6.89388,5.09902)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID133.collider)
level02.colliders.C_Parent_Tile_2ID134 = {}
level02.colliders.C_Parent_Tile_2ID134.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID134.collider:SetOffset(223.5,52.5735,229)
level02.colliders.C_Parent_Tile_2ID134.collider:SetAxes(-0.737154, 0, 0.675725, 0, -1, 0, 0.675725, 0, 0.737154)
level02.colliders.C_Parent_Tile_2ID134.collider:SetHalfLengths(0.3,10.236,8.13941)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID134.collider)
level02.colliders.C_Parent_Tile_2ID135 = {}
level02.colliders.C_Parent_Tile_2ID135.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID135.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID135.collider:SetMinPos(214.846,29.1917,96.8126)
level02.colliders.C_Parent_Tile_2ID135.collider:SetMaxPos(336.204,65.3718,254.298)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID135.collider)
level02.colliders.C_Parent_Tile_2ID136 = {}
level02.colliders.C_Parent_Tile_2ID136.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID136.collider:SetOffset(318,42.1015,102)
level02.colliders.C_Parent_Tile_2ID136.collider:SetAxes(-0.780869, 0, 0.624695, 0, -1, 0, 0.624695, 0, 0.780869)
level02.colliders.C_Parent_Tile_2ID136.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID136.collider)
level02.colliders.C_Parent_Tile_2ID137 = {}
level02.colliders.C_Parent_Tile_2ID137.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID137.collider:SetOffset(329,37.4225,113.5)
level02.colliders.C_Parent_Tile_2ID137.collider:SetAxes(-0.680451, 0, 0.732794, 0, -1, 0, 0.732794, 0, 0.680451)
level02.colliders.C_Parent_Tile_2ID137.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID137.collider)
level02.colliders.C_Parent_Tile_2ID138 = {}
level02.colliders.C_Parent_Tile_2ID138.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID138.collider:SetOffset(217.5,58.9235,249.5)
level02.colliders.C_Parent_Tile_2ID138.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level02.colliders.C_Parent_Tile_2ID138.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID138.collider)
level02.colliders.C_Parent_Tile_2ID139 = {}
level02.colliders.C_Parent_Tile_2ID139.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID139.collider:SetOffset(221.5,59.7034,252.5)
level02.colliders.C_Parent_Tile_2ID139.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.C_Parent_Tile_2ID139.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID139.collider)
level02.colliders.C_Parent_Tile_2ID140 = {}
level02.colliders.C_Parent_Tile_2ID140.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID140.collider:SetOffset(227.5,60.2604,253.5)
level02.colliders.C_Parent_Tile_2ID140.collider:SetAxes(0.110432, -0, 0.993884, 0, -1, -0, 0.993884, 0, -0.110432)
level02.colliders.C_Parent_Tile_2ID140.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID140.collider)
level02.colliders.C_Parent_Tile_2ID141 = {}
level02.colliders.C_Parent_Tile_2ID141.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID141.collider:SetOffset(306,36.3084,132)
level02.colliders.C_Parent_Tile_2ID141.collider:SetAxes(-0.274721, 0, 0.961524, 0, -1, 0, 0.961524, 0, 0.274721)
level02.colliders.C_Parent_Tile_2ID141.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID141.collider)
level02.colliders.C_Parent_Tile_2ID142 = {}
level02.colliders.C_Parent_Tile_2ID142.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID142.collider:SetOffset(319.5,34.7488,138.5)
level02.colliders.C_Parent_Tile_2ID142.collider:SetAxes(0.56921, 0, -0.822192, 0, -1, -0, -0.822192, 0, -0.56921)
level02.colliders.C_Parent_Tile_2ID142.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID142.collider)
level02.colliders.C_Parent_Tile_2ID143 = {}
level02.colliders.C_Parent_Tile_2ID143.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID143.collider:SetOffset(232.5,57.8095,236.5)
level02.colliders.C_Parent_Tile_2ID143.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level02.colliders.C_Parent_Tile_2ID143.collider:SetHalfLengths(0.3,5.55703,3.80789)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID143.collider)
level02.colliders.C_Parent_Tile_2ID144 = {}
level02.colliders.C_Parent_Tile_2ID144.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID144.collider:SetOffset(239.5,58.3665,236.5)
level02.colliders.C_Parent_Tile_2ID144.collider:SetAxes(0.393919, -0, 0.919145, 0, -1, -0, 0.919145, 0, -0.393919)
level02.colliders.C_Parent_Tile_2ID144.collider:SetHalfLengths(0.3,5.55702,3.80789)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID144.collider)
level02.colliders.C_Parent_Tile_2ID145 = {}
level02.colliders.C_Parent_Tile_2ID145.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID145.collider:SetOffset(246.5,58.9235,234.5)
level02.colliders.C_Parent_Tile_2ID145.collider:SetAxes(0.141421, -0, 0.98995, 0, -1, -0, 0.98995, 0, -0.141421)
level02.colliders.C_Parent_Tile_2ID145.collider:SetHalfLengths(0.3,5.44562,3.53553)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID145.collider)
level02.colliders.C_Parent_Tile_2ID146 = {}
level02.colliders.C_Parent_Tile_2ID146.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID146.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID146.collider:SetMinPos(231.935,29.7488,111.26)
level02.colliders.C_Parent_Tile_2ID146.collider:SetMaxPos(350.246,65.8174,253.293)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID146.collider)
level02.colliders.C_Parent_Tile_2ID147 = {}
level02.colliders.C_Parent_Tile_2ID147.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID147.collider:SetOffset(343,37.0883,130)
level02.colliders.C_Parent_Tile_2ID147.collider:SetAxes(-0.819232, 0, 0.573462, 0, -1, 0, 0.573462, 0, 0.819232)
level02.colliders.C_Parent_Tile_2ID147.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID147.collider)
level02.colliders.C_Parent_Tile_2ID148 = {}
level02.colliders.C_Parent_Tile_2ID148.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID148.collider:SetOffset(236.5,60.149,252)
level02.colliders.C_Parent_Tile_2ID148.collider:SetAxes(0.21693, -0, 0.976187, 0, -1, -0, 0.976187, 0, -0.21693)
level02.colliders.C_Parent_Tile_2ID148.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID148.collider)
level02.colliders.C_Parent_Tile_2ID149 = {}
level02.colliders.C_Parent_Tile_2ID149.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID149.collider:SetOffset(246.5,60.3718,250)
level02.colliders.C_Parent_Tile_2ID149.collider:SetAxes(0.178885, -0, 0.98387, 0, -1, -0, 0.98387, 0, -0.178885)
level02.colliders.C_Parent_Tile_2ID149.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID149.collider)
level02.colliders.C_Parent_Tile_2ID150 = {}
level02.colliders.C_Parent_Tile_2ID150.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID150.collider:SetOffset(259.5,59.9262,249.5)
level02.colliders.C_Parent_Tile_2ID150.collider:SetAxes(-0.066519, 0, 0.997785, 0, -1, 0, 0.997785, 0, 0.066519)
level02.colliders.C_Parent_Tile_2ID150.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID150.collider)
level02.colliders.C_Parent_Tile_2ID151 = {}
level02.colliders.C_Parent_Tile_2ID151.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID151.collider:SetOffset(274,60.0376,251)
level02.colliders.C_Parent_Tile_2ID151.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.C_Parent_Tile_2ID151.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID151.collider)
level02.colliders.C_Parent_Tile_2ID152 = {}
level02.colliders.C_Parent_Tile_2ID152.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID152.collider:SetOffset(328.75,41.0313,113.313)
level02.colliders.C_Parent_Tile_2ID152.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID152.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID152.collider)
level02.colliders.C_Parent_Tile_2ID153 = {}
level02.colliders.C_Parent_Tile_2ID153.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID153.collider:SetOffset(339.5,40.3125,156.5)
level02.colliders.C_Parent_Tile_2ID153.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID153.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID153.collider)
level02.colliders.C_Parent_Tile_2ID154 = {}
level02.colliders.C_Parent_Tile_2ID154.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID154.collider:SetOffset(260.5,59.3692,235)
level02.colliders.C_Parent_Tile_2ID154.collider:SetAxes(-0.0948091, 0, 0.995496, 0, -1, 0, 0.995496, 0, 0.0948091)
level02.colliders.C_Parent_Tile_2ID154.collider:SetHalfLengths(0.3,6.33686,10.5475)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID154.collider)
level02.colliders.C_Parent_Tile_2ID155 = {}
level02.colliders.C_Parent_Tile_2ID155.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID155.collider:SetOffset(281.5,58.0323,236.5)
level02.colliders.C_Parent_Tile_2ID155.collider:SetAxes(-0.0475652, 0, 0.998868, 0, -1, 0, 0.998868, 0, 0.0475652)
level02.colliders.C_Parent_Tile_2ID155.collider:SetHalfLengths(0.3,6.55966,10.5119)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID155.collider)
level02.colliders.C_Parent_Tile_2ID156 = {}
level02.colliders.C_Parent_Tile_2ID156.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID156.collider:SetOffset(332.5,36.3084,150.5)
level02.colliders.C_Parent_Tile_2ID156.collider:SetAxes(0.755689, 0, -0.654931, 0, -1, -0, -0.654931, 0, -0.755689)
level02.colliders.C_Parent_Tile_2ID156.collider:SetHalfLengths(0.3,6.55967,9.92472)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID156.collider)
level02.colliders.C_Parent_Tile_2ID157 = {}
level02.colliders.C_Parent_Tile_2ID157.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID157.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID157.collider:SetMinPos(281,31.3084,139.746)
level02.colliders.C_Parent_Tile_2ID157.collider:SetMaxPos(368.059,67.0429,253.291)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID157.collider)
level02.colliders.C_Parent_Tile_2ID158 = {}
level02.colliders.C_Parent_Tile_2ID158.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID158.collider:SetOffset(354,38.8707,142.5)
level02.colliders.C_Parent_Tile_2ID158.collider:SetAxes(-0.529999, 0, 0.847998, 0, -1, 0, 0.847998, 0, 0.529999)
level02.colliders.C_Parent_Tile_2ID158.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID158.collider)
level02.colliders.C_Parent_Tile_2ID159 = {}
level02.colliders.C_Parent_Tile_2ID159.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID159.collider:SetOffset(363,38.6479,146)
level02.colliders.C_Parent_Tile_2ID159.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level02.colliders.C_Parent_Tile_2ID159.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID159.collider)
level02.colliders.C_Parent_Tile_2ID160 = {}
level02.colliders.C_Parent_Tile_2ID160.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID160.collider:SetOffset(287.5,59.7034,252)
level02.colliders.C_Parent_Tile_2ID160.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.C_Parent_Tile_2ID160.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID160.collider)
level02.colliders.C_Parent_Tile_2ID161 = {}
level02.colliders.C_Parent_Tile_2ID161.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID161.collider:SetOffset(296,58.5893,252.5)
level02.colliders.C_Parent_Tile_2ID161.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level02.colliders.C_Parent_Tile_2ID161.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID161.collider)
level02.colliders.C_Parent_Tile_2ID162 = {}
level02.colliders.C_Parent_Tile_2ID162.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID162.collider:SetOffset(320,48.7857,232)
level02.colliders.C_Parent_Tile_2ID162.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level02.colliders.C_Parent_Tile_2ID162.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID162.collider)
level02.colliders.C_Parent_Tile_2ID163 = {}
level02.colliders.C_Parent_Tile_2ID163.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID163.collider:SetOffset(296.5,56.4726,236)
level02.colliders.C_Parent_Tile_2ID163.collider:SetAxes(0.21693, -0, 0.976187, 0, -1, -0, 0.976187, 0, -0.21693)
level02.colliders.C_Parent_Tile_2ID163.collider:SetHalfLengths(0.3,9.12196,4.60977)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID163.collider)
level02.colliders.C_Parent_Tile_2ID164 = {}
level02.colliders.C_Parent_Tile_2ID164.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID164.collider:SetOffset(304.5,52.3507,235.5)
level02.colliders.C_Parent_Tile_2ID164.collider:SetAxes(-0.141421, 0, 0.98995, 0, -1, 0, 0.98995, 0, 0.141421)
level02.colliders.C_Parent_Tile_2ID164.collider:SetHalfLengths(0.3,6.11404,3.53553)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID164.collider)
level02.colliders.C_Parent_Tile_2ID165 = {}
level02.colliders.C_Parent_Tile_2ID165.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID165.collider:SetOffset(352,36.9769,175.5)
level02.colliders.C_Parent_Tile_2ID165.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.C_Parent_Tile_2ID165.collider:SetHalfLengths(0.3,5.22281,3.5)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID165.collider)
level02.colliders.C_Parent_Tile_2ID166 = {}
level02.colliders.C_Parent_Tile_2ID166.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID166.collider:SetOffset(351,36.754,168.5)
level02.colliders.C_Parent_Tile_2ID166.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level02.colliders.C_Parent_Tile_2ID166.collider:SetHalfLengths(0.3,5.22281,3.64005)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID166.collider)
level02.colliders.C_Parent_Tile_2ID167 = {}
level02.colliders.C_Parent_Tile_2ID167.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID167.collider:SetOffset(344.5,36.5312,161.5)
level02.colliders.C_Parent_Tile_2ID167.collider:SetAxes(0.536875, 0, -0.843661, 0, -1, -0, -0.843661, 0, -0.536875)
level02.colliders.C_Parent_Tile_2ID167.collider:SetHalfLengths(0.3,5.22281,6.5192)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID167.collider)
level02.colliders.C_Parent_Tile_2ID168 = {}
level02.colliders.C_Parent_Tile_2ID168.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID168.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID168.collider:SetMinPos(297.788,31.9769,146.7)
level02.colliders.C_Parent_Tile_2ID168.collider:SetMaxPos(376,64.4548,256.312)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID168.collider)
level02.colliders.C_Parent_Tile_2ID169 = {}
level02.colliders.C_Parent_Tile_2ID169.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID169.collider:SetOffset(372,38.3137,147)
level02.colliders.C_Parent_Tile_2ID169.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.C_Parent_Tile_2ID169.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID169.collider)
level02.colliders.C_Parent_Tile_2ID170 = {}
level02.colliders.C_Parent_Tile_2ID170.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID170.collider:SetOffset(299,55.1358,254)
level02.colliders.C_Parent_Tile_2ID170.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level02.colliders.C_Parent_Tile_2ID170.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID170.collider)
level02.colliders.C_Parent_Tile_2ID171 = {}
level02.colliders.C_Parent_Tile_2ID171.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID171.collider:SetOffset(307,55.2472,255)
level02.colliders.C_Parent_Tile_2ID171.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.C_Parent_Tile_2ID171.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID171.collider)
level02.colliders.C_Parent_Tile_2ID172 = {}
level02.colliders.C_Parent_Tile_2ID172.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID172.collider:SetOffset(350,39.4277,194)
level02.colliders.C_Parent_Tile_2ID172.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.C_Parent_Tile_2ID172.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID172.collider)
level02.colliders.C_Parent_Tile_2ID173 = {}
level02.colliders.C_Parent_Tile_2ID173.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID173.collider:SetOffset(323.5,51.6822,242)
level02.colliders.C_Parent_Tile_2ID173.collider:SetAxes(0.328521, -0, 0.944497, 0, -1, -0, 0.944497, 0, -0.328521)
level02.colliders.C_Parent_Tile_2ID173.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID173.collider)
level02.colliders.C_Parent_Tile_2ID174 = {}
level02.colliders.C_Parent_Tile_2ID174.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID174.collider:SetOffset(305.672,57.5464,253.254)
level02.colliders.C_Parent_Tile_2ID174.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID174.collider:SetHalfLengths(3.31612,6.90839,3.05737)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID174.collider)
level02.colliders.C_Parent_Tile_2ID175 = {}
level02.colliders.C_Parent_Tile_2ID175.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID175.collider:SetOffset(346.368,41.1634,203.707)
level02.colliders.C_Parent_Tile_2ID175.collider:SetAxes(-0.994159, 0, 0.107927, -0, -1, 0, -0.107927, 0, -0.994159)
level02.colliders.C_Parent_Tile_2ID175.collider:SetHalfLengths(2.47509,7.09833,2.50959)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID175.collider)
level02.colliders.C_Parent_Tile_2ID176 = {}
level02.colliders.C_Parent_Tile_2ID176.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID176.collider:SetOffset(312,53.0191,250.5)
level02.colliders.C_Parent_Tile_2ID176.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level02.colliders.C_Parent_Tile_2ID176.collider:SetHalfLengths(0.3,6.33685,4.5)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID176.collider)
level02.colliders.C_Parent_Tile_2ID177 = {}
level02.colliders.C_Parent_Tile_2ID177.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID177.collider:SetOffset(341,47.1147,215)
level02.colliders.C_Parent_Tile_2ID177.collider:SetAxes(0.813733, -0, 0.581238, 0, -1, -0, 0.581238, 0, -0.813733)
level02.colliders.C_Parent_Tile_2ID177.collider:SetHalfLengths(0.3,11.0158,8.60233)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID177.collider)
level02.colliders.C_Parent_Tile_2ID178 = {}
level02.colliders.C_Parent_Tile_2ID178.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID178.collider:SetOffset(351,38.3137,184)
level02.colliders.C_Parent_Tile_2ID178.collider:SetAxes(0.980581, -0, 0.196116, 0, -1, -0, 0.196116, 0, -0.980581)
level02.colliders.C_Parent_Tile_2ID178.collider:SetHalfLengths(0.3,6.33685,5.09902)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID178.collider)
level02.colliders.C_Parent_Tile_2ID179 = {}
level02.colliders.C_Parent_Tile_2ID179.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID179.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID179.collider:SetMinPos(331.75,31.0856,146.7)
level02.colliders.C_Parent_Tile_2ID179.collider:SetMaxPos(384.073,63.2551,252.185)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID179.collider)
level02.colliders.C_Parent_Tile_2ID180 = {}
level02.colliders.C_Parent_Tile_2ID180.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID180.collider:SetOffset(380,37.1997,147)
level02.colliders.C_Parent_Tile_2ID180.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level02.colliders.C_Parent_Tile_2ID180.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID180.collider)
level02.colliders.C_Parent_Tile_2ID181 = {}
level02.colliders.C_Parent_Tile_2ID181.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID181.collider:SetOffset(363,53.5761,226.5)
level02.colliders.C_Parent_Tile_2ID181.collider:SetAxes(0.861934, -0, 0.50702, 0, -1, -0, 0.50702, 0, -0.861934)
level02.colliders.C_Parent_Tile_2ID181.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID181.collider)
level02.colliders.C_Parent_Tile_2ID182 = {}
level02.colliders.C_Parent_Tile_2ID182.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID182.collider:SetOffset(373.5,46.4462,189)
level02.colliders.C_Parent_Tile_2ID182.collider:SetAxes(0.999445, 0, -0.0333148, 0, -1, -0, -0.0333148, 0, -0.999445)
level02.colliders.C_Parent_Tile_2ID182.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID182.collider)
level02.colliders.C_Parent_Tile_2ID183 = {}
level02.colliders.C_Parent_Tile_2ID183.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID183.collider:SetOffset(374,39.4277,170.5)
level02.colliders.C_Parent_Tile_2ID183.collider:SetAxes(0.961524, -0, 0.274721, 0, -1, -0, 0.274721, 0, -0.961524)
level02.colliders.C_Parent_Tile_2ID183.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID183.collider)
level02.colliders.C_Parent_Tile_2ID184 = {}
level02.colliders.C_Parent_Tile_2ID184.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID184.collider:SetOffset(377.5,39.9848,162.5)
level02.colliders.C_Parent_Tile_2ID184.collider:SetAxes(0.874157, -0, 0.485643, 0, -1, -0, 0.485643, 0, -0.874157)
level02.colliders.C_Parent_Tile_2ID184.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID184.collider)
level02.colliders.C_Parent_Tile_2ID185 = {}
level02.colliders.C_Parent_Tile_2ID185.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID185.collider:SetOffset(382,37.0883,157.5)
level02.colliders.C_Parent_Tile_2ID185.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level02.colliders.C_Parent_Tile_2ID185.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID185.collider)
level02.colliders.C_Parent_Tile_2ID186 = {}
level02.colliders.C_Parent_Tile_2ID186.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID186.collider:SetOffset(348,41.0988,203.5)
level02.colliders.C_Parent_Tile_2ID186.collider:SetAxes(0.913812, -0, 0.406139, 0, -1, -0, 0.406139, 0, -0.913812)
level02.colliders.C_Parent_Tile_2ID186.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID186.collider)
level02.colliders.C_Parent_Tile_2ID187 = {}
level02.colliders.C_Parent_Tile_2ID187.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID187.collider:SetOffset(370.079,42.4331,185.415)
level02.colliders.C_Parent_Tile_2ID187.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID187.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID187.collider)
level02.colliders.C_Parent_Tile_2ID188 = {}
level02.colliders.C_Parent_Tile_2ID188.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID188.collider:SetOffset(340.5,50.791,245)
level02.colliders.C_Parent_Tile_2ID188.collider:SetAxes(-0.786318, 0, 0.617822, 0, -1, 0, 0.617822, 0, 0.786318)
level02.colliders.C_Parent_Tile_2ID188.collider:SetHalfLengths(0.3,10.5702,8.90225)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID188.collider)
level02.colliders.C_Parent_Tile_2ID189 = {}
level02.colliders.C_Parent_Tile_2ID189.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID189.collider:SetOffset(334,48.7857,225)
level02.colliders.C_Parent_Tile_2ID189.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level02.colliders.C_Parent_Tile_2ID189.collider:SetHalfLengths(0.3,6.67107,3.60555)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID189.collider)
level02.colliders.C_Parent_Tile_2ID190 = {}
level02.colliders.C_Parent_Tile_2ID190.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID190.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID190.collider:SetMinPos(344.715,41.4462,203.882)
level02.colliders.C_Parent_Tile_2ID190.collider:SetMaxPos(374.276,65.4832,255.095)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID190.collider)
level02.colliders.C_Parent_Tile_2ID191 = {}
level02.colliders.C_Parent_Tile_2ID191.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID191.collider:SetOffset(346.5,55.47,250.5)
level02.colliders.C_Parent_Tile_2ID191.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level02.colliders.C_Parent_Tile_2ID191.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID191.collider)
level02.colliders.C_Parent_Tile_2ID192 = {}
level02.colliders.C_Parent_Tile_2ID192.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID192.collider:SetOffset(353,57.0297,240.5)
level02.colliders.C_Parent_Tile_2ID192.collider:SetAxes(0.73994, -0, 0.672673, 0, -1, -0, 0.672673, 0, -0.73994)
level02.colliders.C_Parent_Tile_2ID192.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID192.collider)
level02.colliders.C_Parent_Tile_2ID193 = {}
level02.colliders.C_Parent_Tile_2ID193.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID193.collider:SetOffset(371,48.8971,211)
level02.colliders.C_Parent_Tile_2ID193.collider:SetAxes(0.919145, -0, 0.393919, 0, -1, -0, 0.393919, 0, -0.919145)
level02.colliders.C_Parent_Tile_2ID193.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID193.collider)
level02.colliders.C_Parent_Tile_2ID194 = {}
level02.colliders.C_Parent_Tile_2ID194.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID194.collider:SetOffset(365.671,47.676,214.229)
level02.colliders.C_Parent_Tile_2ID194.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID194.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID194.collider)
level02.colliders.C_Parent_Tile_2ID195 = {}
level02.colliders.C_Parent_Tile_2ID195.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID195.collider:SetOffset(354.858,50.9688,226.742)
level02.colliders.C_Parent_Tile_2ID195.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID195.collider:SetHalfLengths(1.75,4,1.75)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID195.collider)
level02.colliders.C_Parent_Tile_2ID196 = {}
level02.colliders.C_Parent_Tile_2ID196.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID196.collider:SetOffset(347.526,56,240.375)
level02.colliders.C_Parent_Tile_2ID196.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level02.colliders.C_Parent_Tile_2ID196.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID196.collider)
CollisionHandler.AddAABB(level02.colliders.C_Parent_Tile_2ID.collider, 3)
level02.colliders.C_Parent_Tile_2ID1 = nil
level02.colliders.C_Parent_Tile_2ID2 = nil
level02.colliders.C_Parent_Tile_2ID3 = nil
level02.colliders.C_Parent_Tile_2ID4 = nil
level02.colliders.C_Parent_Tile_2ID5 = nil
level02.colliders.C_Parent_Tile_2ID6 = nil
level02.colliders.C_Parent_Tile_2ID7 = nil
level02.colliders.C_Parent_Tile_2ID8 = nil
level02.colliders.C_Parent_Tile_2ID9 = nil
level02.colliders.C_Parent_Tile_2ID10 = nil
level02.colliders.C_Parent_Tile_2ID11 = nil
level02.colliders.C_Parent_Tile_2ID12 = nil
level02.colliders.C_Parent_Tile_2ID13 = nil
level02.colliders.C_Parent_Tile_2ID14 = nil
level02.colliders.C_Parent_Tile_2ID15 = nil
level02.colliders.C_Parent_Tile_2ID16 = nil
level02.colliders.C_Parent_Tile_2ID17 = nil
level02.colliders.C_Parent_Tile_2ID18 = nil
level02.colliders.C_Parent_Tile_2ID19 = nil
level02.colliders.C_Parent_Tile_2ID20 = nil
level02.colliders.C_Parent_Tile_2ID21 = nil
level02.colliders.C_Parent_Tile_2ID22 = nil
level02.colliders.C_Parent_Tile_2ID23 = nil
level02.colliders.C_Parent_Tile_2ID24 = nil
level02.colliders.C_Parent_Tile_2ID25 = nil
level02.colliders.C_Parent_Tile_2ID26 = nil
level02.colliders.C_Parent_Tile_2ID27 = nil
level02.colliders.C_Parent_Tile_2ID28 = nil
level02.colliders.C_Parent_Tile_2ID29 = nil
level02.colliders.C_Parent_Tile_2ID30 = nil
level02.colliders.C_Parent_Tile_2ID31 = nil
level02.colliders.C_Parent_Tile_2ID32 = nil
level02.colliders.C_Parent_Tile_2ID33 = nil
level02.colliders.C_Parent_Tile_2ID34 = nil
level02.colliders.C_Parent_Tile_2ID35 = nil
level02.colliders.C_Parent_Tile_2ID36 = nil
level02.colliders.C_Parent_Tile_2ID37 = nil
level02.colliders.C_Parent_Tile_2ID38 = nil
level02.colliders.C_Parent_Tile_2ID39 = nil
level02.colliders.C_Parent_Tile_2ID40 = nil
level02.colliders.C_Parent_Tile_2ID41 = nil
level02.colliders.C_Parent_Tile_2ID42 = nil
level02.colliders.C_Parent_Tile_2ID43 = nil
level02.colliders.C_Parent_Tile_2ID44 = nil
level02.colliders.C_Parent_Tile_2ID45 = nil
level02.colliders.C_Parent_Tile_2ID46 = nil
level02.colliders.C_Parent_Tile_2ID47 = nil
level02.colliders.C_Parent_Tile_2ID48 = nil
level02.colliders.C_Parent_Tile_2ID49 = nil
level02.colliders.C_Parent_Tile_2ID50 = nil
level02.colliders.C_Parent_Tile_2ID51 = nil
level02.colliders.C_Parent_Tile_2ID52 = nil
level02.colliders.C_Parent_Tile_2ID53 = nil
level02.colliders.C_Parent_Tile_2ID54 = nil
level02.colliders.C_Parent_Tile_2ID55 = nil
level02.colliders.C_Parent_Tile_2ID56 = nil
level02.colliders.C_Parent_Tile_2ID57 = nil
level02.colliders.C_Parent_Tile_2ID58 = nil
level02.colliders.C_Parent_Tile_2ID59 = nil
level02.colliders.C_Parent_Tile_2ID60 = nil
level02.colliders.C_Parent_Tile_2ID61 = nil
level02.colliders.C_Parent_Tile_2ID62 = nil
level02.colliders.C_Parent_Tile_2ID63 = nil
level02.colliders.C_Parent_Tile_2ID64 = nil
level02.colliders.C_Parent_Tile_2ID65 = nil
level02.colliders.C_Parent_Tile_2ID66 = nil
level02.colliders.C_Parent_Tile_2ID67 = nil
level02.colliders.C_Parent_Tile_2ID68 = nil
level02.colliders.C_Parent_Tile_2ID69 = nil
level02.colliders.C_Parent_Tile_2ID70 = nil
level02.colliders.C_Parent_Tile_2ID71 = nil
level02.colliders.C_Parent_Tile_2ID72 = nil
level02.colliders.C_Parent_Tile_2ID73 = nil
level02.colliders.C_Parent_Tile_2ID74 = nil
level02.colliders.C_Parent_Tile_2ID75 = nil
level02.colliders.C_Parent_Tile_2ID76 = nil
level02.colliders.C_Parent_Tile_2ID77 = nil
level02.colliders.C_Parent_Tile_2ID78 = nil
level02.colliders.C_Parent_Tile_2ID79 = nil
level02.colliders.C_Parent_Tile_2ID80 = nil
level02.colliders.C_Parent_Tile_2ID81 = nil
level02.colliders.C_Parent_Tile_2ID82 = nil
level02.colliders.C_Parent_Tile_2ID83 = nil
level02.colliders.C_Parent_Tile_2ID84 = nil
level02.colliders.C_Parent_Tile_2ID85 = nil
level02.colliders.C_Parent_Tile_2ID86 = nil
level02.colliders.C_Parent_Tile_2ID87 = nil
level02.colliders.C_Parent_Tile_2ID88 = nil
level02.colliders.C_Parent_Tile_2ID89 = nil
level02.colliders.C_Parent_Tile_2ID90 = nil
level02.colliders.C_Parent_Tile_2ID91 = nil
level02.colliders.C_Parent_Tile_2ID92 = nil
level02.colliders.C_Parent_Tile_2ID93 = nil
level02.colliders.C_Parent_Tile_2ID94 = nil
level02.colliders.C_Parent_Tile_2ID95 = nil
level02.colliders.C_Parent_Tile_2ID96 = nil
level02.colliders.C_Parent_Tile_2ID97 = nil
level02.colliders.C_Parent_Tile_2ID98 = nil
level02.colliders.C_Parent_Tile_2ID99 = nil
level02.colliders.C_Parent_Tile_2ID100 = nil
level02.colliders.C_Parent_Tile_2ID101 = nil
level02.colliders.C_Parent_Tile_2ID102 = nil
level02.colliders.C_Parent_Tile_2ID103 = nil
level02.colliders.C_Parent_Tile_2ID104 = nil
level02.colliders.C_Parent_Tile_2ID105 = nil
level02.colliders.C_Parent_Tile_2ID106 = nil
level02.colliders.C_Parent_Tile_2ID107 = nil
level02.colliders.C_Parent_Tile_2ID108 = nil
level02.colliders.C_Parent_Tile_2ID109 = nil
level02.colliders.C_Parent_Tile_2ID110 = nil
level02.colliders.C_Parent_Tile_2ID111 = nil
level02.colliders.C_Parent_Tile_2ID112 = nil
level02.colliders.C_Parent_Tile_2ID113 = nil
level02.colliders.C_Parent_Tile_2ID114 = nil
level02.colliders.C_Parent_Tile_2ID115 = nil
level02.colliders.C_Parent_Tile_2ID116 = nil
level02.colliders.C_Parent_Tile_2ID117 = nil
level02.colliders.C_Parent_Tile_2ID118 = nil
level02.colliders.C_Parent_Tile_2ID119 = nil
level02.colliders.C_Parent_Tile_2ID120 = nil
level02.colliders.C_Parent_Tile_2ID121 = nil
level02.colliders.C_Parent_Tile_2ID122 = nil
level02.colliders.C_Parent_Tile_2ID123 = nil
level02.colliders.C_Parent_Tile_2ID124 = nil
level02.colliders.C_Parent_Tile_2ID125 = nil
level02.colliders.C_Parent_Tile_2ID126 = nil
level02.colliders.C_Parent_Tile_2ID127 = nil
level02.colliders.C_Parent_Tile_2ID128 = nil
level02.colliders.C_Parent_Tile_2ID129 = nil
level02.colliders.C_Parent_Tile_2ID130 = nil
level02.colliders.C_Parent_Tile_2ID131 = nil
level02.colliders.C_Parent_Tile_2ID132 = nil
level02.colliders.C_Parent_Tile_2ID133 = nil
level02.colliders.C_Parent_Tile_2ID134 = nil
level02.colliders.C_Parent_Tile_2ID135 = nil
level02.colliders.C_Parent_Tile_2ID136 = nil
level02.colliders.C_Parent_Tile_2ID137 = nil
level02.colliders.C_Parent_Tile_2ID138 = nil
level02.colliders.C_Parent_Tile_2ID139 = nil
level02.colliders.C_Parent_Tile_2ID140 = nil
level02.colliders.C_Parent_Tile_2ID141 = nil
level02.colliders.C_Parent_Tile_2ID142 = nil
level02.colliders.C_Parent_Tile_2ID143 = nil
level02.colliders.C_Parent_Tile_2ID144 = nil
level02.colliders.C_Parent_Tile_2ID145 = nil
level02.colliders.C_Parent_Tile_2ID146 = nil
level02.colliders.C_Parent_Tile_2ID147 = nil
level02.colliders.C_Parent_Tile_2ID148 = nil
level02.colliders.C_Parent_Tile_2ID149 = nil
level02.colliders.C_Parent_Tile_2ID150 = nil
level02.colliders.C_Parent_Tile_2ID151 = nil
level02.colliders.C_Parent_Tile_2ID152 = nil
level02.colliders.C_Parent_Tile_2ID153 = nil
level02.colliders.C_Parent_Tile_2ID154 = nil
level02.colliders.C_Parent_Tile_2ID155 = nil
level02.colliders.C_Parent_Tile_2ID156 = nil
level02.colliders.C_Parent_Tile_2ID157 = nil
level02.colliders.C_Parent_Tile_2ID158 = nil
level02.colliders.C_Parent_Tile_2ID159 = nil
level02.colliders.C_Parent_Tile_2ID160 = nil
level02.colliders.C_Parent_Tile_2ID161 = nil
level02.colliders.C_Parent_Tile_2ID162 = nil
level02.colliders.C_Parent_Tile_2ID163 = nil
level02.colliders.C_Parent_Tile_2ID164 = nil
level02.colliders.C_Parent_Tile_2ID165 = nil
level02.colliders.C_Parent_Tile_2ID166 = nil
level02.colliders.C_Parent_Tile_2ID167 = nil
level02.colliders.C_Parent_Tile_2ID168 = nil
level02.colliders.C_Parent_Tile_2ID169 = nil
level02.colliders.C_Parent_Tile_2ID170 = nil
level02.colliders.C_Parent_Tile_2ID171 = nil
level02.colliders.C_Parent_Tile_2ID172 = nil
level02.colliders.C_Parent_Tile_2ID173 = nil
level02.colliders.C_Parent_Tile_2ID174 = nil
level02.colliders.C_Parent_Tile_2ID175 = nil
level02.colliders.C_Parent_Tile_2ID176 = nil
level02.colliders.C_Parent_Tile_2ID177 = nil
level02.colliders.C_Parent_Tile_2ID178 = nil
level02.colliders.C_Parent_Tile_2ID179 = nil
level02.colliders.C_Parent_Tile_2ID180 = nil
level02.colliders.C_Parent_Tile_2ID181 = nil
level02.colliders.C_Parent_Tile_2ID182 = nil
level02.colliders.C_Parent_Tile_2ID183 = nil
level02.colliders.C_Parent_Tile_2ID184 = nil
level02.colliders.C_Parent_Tile_2ID185 = nil
level02.colliders.C_Parent_Tile_2ID186 = nil
level02.colliders.C_Parent_Tile_2ID187 = nil
level02.colliders.C_Parent_Tile_2ID188 = nil
level02.colliders.C_Parent_Tile_2ID189 = nil
level02.colliders.C_Parent_Tile_2ID190 = nil
level02.colliders.C_Parent_Tile_2ID191 = nil
level02.colliders.C_Parent_Tile_2ID192 = nil
level02.colliders.C_Parent_Tile_2ID193 = nil
level02.colliders.C_Parent_Tile_2ID194 = nil
level02.colliders.C_Parent_Tile_2ID195 = nil
level02.colliders.C_Parent_Tile_2ID196 = nil
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
level02.colliders.C_Parent_Tile_21ID = nil
level02.colliders.C_Parent_Tile_22ID = nil
level02.colliders.C_Parent_Tile_23ID = nil
level02.colliders.C_Parent_Tile_24ID = nil
level02.colliders.C_Parent_Tile_25ID = nil
level02.colliders.C_Parent_Tile_26ID = nil
level02.colliders.C_Parent_Tile_27ID = nil
level02.colliders.C_Parent_Tile_28ID = nil
level02.colliders.C_Parent_Tile_29ID = nil
level02.colliders.C_Parent_Tile_210ID = nil
level02.colliders.C_Parent_Tile_211ID = nil
level02.colliders.C_Parent_Tile_212ID = nil
level02.colliders.C_Parent_Tile_213ID = nil
level02.colliders.C_Parent_Tile_214ID = nil
level02.colliders.C_Parent_Tile_215ID = nil
level02.colliders.C_Parent_Tile_216ID = nil
level02.colliders.C_Parent_Tile_217ID = nil
level02.colliders.C_Parent_Tile_218ID = nil
level02.colliders.C_Parent_Tile_219ID = nil
level02.colliders.C_Parent_Tile_220ID = nil
level02.colliders.C_Parent_Tile_2ID = nil
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
level03.props.House2ID = {}
level03.props.House2ID.model = Assets.LoadModel('Models/House1.model')
level03.props.House2ID.transformID = Gear.BindStaticInstance(level03.props.House2ID.model)
Transform.SetPosition(level03.props.House2ID.transformID, {x=423.807, y=37.3065, z=174.638})
Transform.SetScaleNonUniform(level03.props.House2ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level03.props.House2ID.transformID, {x=-0, y=-3.19754, z=-0})
level03.props.House3ID = {}
level03.props.House3ID.model = Assets.LoadModel('Models/House1.model')
level03.props.House3ID.transformID = Gear.BindStaticInstance(level03.props.House3ID.model)
Transform.SetPosition(level03.props.House3ID.transformID, {x=494.563, y=42.3774, z=197.119})
Transform.SetScaleNonUniform(level03.props.House3ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level03.props.House3ID.transformID, {x=-0, y=-1.23294, z=-0})
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
level03.props.WoodenBarrel1ID = {}
level03.props.WoodenBarrel1ID.model = Assets.LoadModel('Models/WoodenBarrel.model')
level03.props.WoodenBarrel1ID.transformID = Gear.BindStaticInstance(level03.props.WoodenBarrel1ID.model)
Transform.SetPosition(level03.props.WoodenBarrel1ID.transformID, {x=444.5, y=38.25, z=184.875})
Transform.SetScaleNonUniform(level03.props.WoodenBarrel1ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.WoodenBarrel1ID.transformID, {x=-0, y=0, z=-0})
level03.props.PineTreeWicked281ID = {}
level03.props.PineTreeWicked281ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked281ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeWicked281ID.model)
Transform.SetPosition(level03.props.PineTreeWicked281ID.transformID, {x=532.5, y=85.6875, z=674})
Transform.SetScaleNonUniform(level03.props.PineTreeWicked281ID.transformID, 1.97745, 1.97745, 1.97745)
Transform.SetRotation(level03.props.PineTreeWicked281ID.transformID, {x=0.0125198, y=1.05273, z=0.0543823})
level03.props.PineTreeWicked282ID = {}
level03.props.PineTreeWicked282ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked282ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeWicked282ID.model)
Transform.SetPosition(level03.props.PineTreeWicked282ID.transformID, {x=557, y=85.3125, z=665})
Transform.SetScaleNonUniform(level03.props.PineTreeWicked282ID.transformID, 1.35234, 1.35234, 1.35234)
Transform.SetRotation(level03.props.PineTreeWicked282ID.transformID, {x=0.00949097, y=6.13459, z=0.0618896})
level03.props.PineTreeWicked283ID = {}
level03.props.PineTreeWicked283ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked283ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeWicked283ID.model)
Transform.SetPosition(level03.props.PineTreeWicked283ID.transformID, {x=581.5, y=85.875, z=666})
Transform.SetScaleNonUniform(level03.props.PineTreeWicked283ID.transformID, 1.50084, 1.50084, 1.50084)
Transform.SetRotation(level03.props.PineTreeWicked283ID.transformID, {x=0.0410461, y=1.26193, z=0.121643})
level03.props.PineTreeWicked284ID = {}
level03.props.PineTreeWicked284ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked284ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeWicked284ID.model)
Transform.SetPosition(level03.props.PineTreeWicked284ID.transformID, {x=576, y=85.125, z=655})
Transform.SetScaleNonUniform(level03.props.PineTreeWicked284ID.transformID, 1.69558, 1.69558, 1.69558)
Transform.SetRotation(level03.props.PineTreeWicked284ID.transformID, {x=0.00798035, y=0.754168, z=0.0257111})
level03.props.PineTreeWicked285ID = {}
level03.props.PineTreeWicked285ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked285ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeWicked285ID.model)
Transform.SetPosition(level03.props.PineTreeWicked285ID.transformID, {x=515.5, y=86.125, z=684})
Transform.SetScaleNonUniform(level03.props.PineTreeWicked285ID.transformID, 1.64049, 1.64049, 1.64049)
Transform.SetRotation(level03.props.PineTreeWicked285ID.transformID, {x=0.0526733, y=2.87823, z=0.140625})
level03.props.PineTreeWicked286ID = {}
level03.props.PineTreeWicked286ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked286ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeWicked286ID.model)
Transform.SetPosition(level03.props.PineTreeWicked286ID.transformID, {x=504, y=86, z=688})
Transform.SetScaleNonUniform(level03.props.PineTreeWicked286ID.transformID, 1.98996, 1.98996, 1.98996)
Transform.SetRotation(level03.props.PineTreeWicked286ID.transformID, {x=0.0647583, y=2.01437, z=0.115601})
level03.props.PurpleLightID = {}
level03.props.PurpleLightID.lightIndex = Light.addLight(541.869, 88.5118, 669.59, 1, 0, 1, 10,2)
level03.props.PineTreeTwisted1ID = {}
level03.props.PineTreeTwisted1ID.model = Assets.LoadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted1ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeTwisted1ID.model)
Transform.SetPosition(level03.props.PineTreeTwisted1ID.transformID, {x=477.5, y=85.6875, z=664})
Transform.SetScaleNonUniform(level03.props.PineTreeTwisted1ID.transformID, 1.68761, 1.68761, 1.68761)
Transform.SetRotation(level03.props.PineTreeTwisted1ID.transformID, {x=-0.0747681, y=0.214573, z=-0.025589})
level03.props.PineTreeTwisted2ID = {}
level03.props.PineTreeTwisted2ID.model = Assets.LoadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted2ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeTwisted2ID.model)
Transform.SetPosition(level03.props.PineTreeTwisted2ID.transformID, {x=485.25, y=86.125, z=722})
Transform.SetScaleNonUniform(level03.props.PineTreeTwisted2ID.transformID, 1.77087, 1.77087, 1.77087)
Transform.SetRotation(level03.props.PineTreeTwisted2ID.transformID, {x=0.1427, y=5.43546, z=0.22876})
level03.props.PineTreeTwisted3ID = {}
level03.props.PineTreeTwisted3ID.model = Assets.LoadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted3ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeTwisted3ID.model)
Transform.SetPosition(level03.props.PineTreeTwisted3ID.transformID, {x=461.5, y=86.3125, z=731.5})
Transform.SetScaleNonUniform(level03.props.PineTreeTwisted3ID.transformID, 1.19279, 1.19279, 1.19279)
Transform.SetRotation(level03.props.PineTreeTwisted3ID.transformID, {x=0.023941, y=3.63815, z=0.137329})
level03.props.PineTreeTwisted4ID = {}
level03.props.PineTreeTwisted4ID.model = Assets.LoadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted4ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeTwisted4ID.model)
Transform.SetPosition(level03.props.PineTreeTwisted4ID.transformID, {x=548.5, y=85.5, z=668.5})
Transform.SetScaleNonUniform(level03.props.PineTreeTwisted4ID.transformID, 1.64873, 1.64873, 1.64873)
Transform.SetRotation(level03.props.PineTreeTwisted4ID.transformID, {x=0.0102692, y=5.4042, z=0.0757446})
level03.props.PineTreeTwisted5ID = {}
level03.props.PineTreeTwisted5ID.model = Assets.LoadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted5ID.transformID = Gear.BindStaticInstance(level03.props.PineTreeTwisted5ID.model)
Transform.SetPosition(level03.props.PineTreeTwisted5ID.transformID, {x=523, y=85.8125, z=677})
Transform.SetScaleNonUniform(level03.props.PineTreeTwisted5ID.transformID, 1.4087, 1.4087, 1.4087)
Transform.SetRotation(level03.props.PineTreeTwisted5ID.transformID, {x=0.015419, y=2.84774, z=0.0550842})
level03.colliders.C_Parent_Tile_3ID = {}
level03.colliders.C_Parent_Tile_3ID.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID.collider:SetMinPos(383.7,29.1002,127.711)
level03.colliders.C_Parent_Tile_3ID.collider:SetMaxPos(585.472,99.3954,734.628)
level03.colliders.C_Parent_Tile_3ID.collider:SetPos(0,0,0)
level03.colliders.C_Parent_Tile_3ID1 = {}
level03.colliders.C_Parent_Tile_3ID1.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID1.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID1.collider:SetMinPos(383.7,30.1951,134.729)
level03.colliders.C_Parent_Tile_3ID1.collider:SetMaxPos(422.128,42.4242,172.134)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID1.collider)
level03.colliders.C_Parent_Tile_3ID2 = {}
level03.colliders.C_Parent_Tile_3ID2.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID2.collider:SetOffset(388.5,36.4629,157)
level03.colliders.C_Parent_Tile_3ID2.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level03.colliders.C_Parent_Tile_3ID2.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID2.collider)
level03.colliders.C_Parent_Tile_3ID3 = {}
level03.colliders.C_Parent_Tile_3ID3.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID3.collider:SetOffset(398,36.3044,158)
level03.colliders.C_Parent_Tile_3ID3.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level03.colliders.C_Parent_Tile_3ID3.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID3.collider)
level03.colliders.C_Parent_Tile_3ID4 = {}
level03.colliders.C_Parent_Tile_3ID4.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID4.collider:SetOffset(404,36.146,160)
level03.colliders.C_Parent_Tile_3ID4.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level03.colliders.C_Parent_Tile_3ID4.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID4.collider)
level03.colliders.C_Parent_Tile_3ID5 = {}
level03.colliders.C_Parent_Tile_3ID5.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID5.collider:SetOffset(406,36.3044,162.5)
level03.colliders.C_Parent_Tile_3ID5.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level03.colliders.C_Parent_Tile_3ID5.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID5.collider)
level03.colliders.C_Parent_Tile_3ID6 = {}
level03.colliders.C_Parent_Tile_3ID6.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID6.collider:SetOffset(409,36.4629,168)
level03.colliders.C_Parent_Tile_3ID6.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level03.colliders.C_Parent_Tile_3ID6.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID6.collider)
level03.colliders.C_Parent_Tile_3ID7 = {}
level03.colliders.C_Parent_Tile_3ID7.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID7.collider:SetOffset(412.5,35.5121,139.5)
level03.colliders.C_Parent_Tile_3ID7.collider:SetAxes(-0.428086, 0, -0.903738, -0, -1, 0, -0.903738, 0, 0.428086)
level03.colliders.C_Parent_Tile_3ID7.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID7.collider)
level03.colliders.C_Parent_Tile_3ID8 = {}
level03.colliders.C_Parent_Tile_3ID8.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID8.collider:SetOffset(401.5,35.3536,144.5)
level03.colliders.C_Parent_Tile_3ID8.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level03.colliders.C_Parent_Tile_3ID8.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID8.collider)
level03.colliders.C_Parent_Tile_3ID9 = {}
level03.colliders.C_Parent_Tile_3ID9.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID9.collider:SetOffset(392,35.3536,145)
level03.colliders.C_Parent_Tile_3ID9.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level03.colliders.C_Parent_Tile_3ID9.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID9.collider)
level03.colliders.C_Parent_Tile_3ID10 = {}
level03.colliders.C_Parent_Tile_3ID10.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID10.collider:SetOffset(384,35.1951,146)
level03.colliders.C_Parent_Tile_3ID10.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level03.colliders.C_Parent_Tile_3ID10.collider:SetHalfLengths(0.3,5,1)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID10.collider)
level03.colliders.C_Parent_Tile_3ID11 = {}
level03.colliders.C_Parent_Tile_3ID11.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID11.collider:SetOffset(412,36.3634,161.5)
level03.colliders.C_Parent_Tile_3ID11.collider:SetAxes(-0.071247, 0, 0.997459, 0, -1, 0, 0.997459, 0, 0.071247)
level03.colliders.C_Parent_Tile_3ID11.collider:SetHalfLengths(0.3,6.06086,7.01783)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID11.collider)
level03.colliders.C_Parent_Tile_3ID12 = {}
level03.colliders.C_Parent_Tile_3ID12.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID12.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID12.collider:SetMinPos(410.719,29.1002,127.711)
level03.colliders.C_Parent_Tile_3ID12.collider:SetMaxPos(457.161,53.3481,231.059)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID12.collider)
level03.colliders.C_Parent_Tile_3ID13 = {}
level03.colliders.C_Parent_Tile_3ID13.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID13.collider:SetOffset(412.5,36.7798,176)
level03.colliders.C_Parent_Tile_3ID13.collider:SetAxes(-0.936329, 0, 0.351123, 0, -1, 0, 0.351123, 0, 0.936329)
level03.colliders.C_Parent_Tile_3ID13.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID13.collider)
level03.colliders.C_Parent_Tile_3ID14 = {}
level03.colliders.C_Parent_Tile_3ID14.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID14.collider:SetOffset(415.5,37.5722,185)
level03.colliders.C_Parent_Tile_3ID14.collider:SetAxes(-0.957826, 0, 0.287348, 0, -1, 0, 0.287348, 0, 0.957826)
level03.colliders.C_Parent_Tile_3ID14.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID14.collider)
level03.colliders.C_Parent_Tile_3ID15 = {}
level03.colliders.C_Parent_Tile_3ID15.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID15.collider:SetOffset(418,38.2061,195.5)
level03.colliders.C_Parent_Tile_3ID15.collider:SetAxes(-0.98387, 0, 0.178885, 0, -1, 0, 0.178885, 0, 0.98387)
level03.colliders.C_Parent_Tile_3ID15.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID15.collider)
level03.colliders.C_Parent_Tile_3ID16 = {}
level03.colliders.C_Parent_Tile_3ID16.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID16.collider:SetOffset(419.5,40.2662,208.5)
level03.colliders.C_Parent_Tile_3ID16.collider:SetAxes(-0.997785, 0, 0.066519, 0, -1, 0, 0.066519, 0, 0.997785)
level03.colliders.C_Parent_Tile_3ID16.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID16.collider)
level03.colliders.C_Parent_Tile_3ID17 = {}
level03.colliders.C_Parent_Tile_3ID17.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID17.collider:SetOffset(418.5,44.5448,223.5)
level03.colliders.C_Parent_Tile_3ID17.collider:SetAxes(-0.980581, 0, -0.196116, -0, -1, 0, -0.196116, 0, 0.980581)
level03.colliders.C_Parent_Tile_3ID17.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID17.collider)
level03.colliders.C_Parent_Tile_3ID18 = {}
level03.colliders.C_Parent_Tile_3ID18.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID18.collider:SetOffset(443,36.7798,130.5)
level03.colliders.C_Parent_Tile_3ID18.collider:SetAxes(0.267644, 0, -0.963518, 0, -1, -0, -0.963518, 0, -0.267644)
level03.colliders.C_Parent_Tile_3ID18.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID18.collider)
level03.colliders.C_Parent_Tile_3ID19 = {}
level03.colliders.C_Parent_Tile_3ID19.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID19.collider:SetOffset(428,35.829,131.5)
level03.colliders.C_Parent_Tile_3ID19.collider:SetAxes(-0.503871, 0, -0.863779, -0, -1, 0, -0.863779, 0, 0.503871)
level03.colliders.C_Parent_Tile_3ID19.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID19.collider)
level03.colliders.C_Parent_Tile_3ID20 = {}
level03.colliders.C_Parent_Tile_3ID20.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID20.collider:SetOffset(442,35.6561,141.5)
level03.colliders.C_Parent_Tile_3ID20.collider:SetAxes(-0.535052, 0, 0.844819, 0, -1, 0, 0.844819, 0, 0.535052)
level03.colliders.C_Parent_Tile_3ID20.collider:SetHalfLengths(0.3,6.55592,17.7553)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID20.collider)
level03.colliders.C_Parent_Tile_3ID21 = {}
level03.colliders.C_Parent_Tile_3ID21.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID21.collider:SetOffset(429,35.3025,165.5)
level03.colliders.C_Parent_Tile_3ID21.collider:SetAxes(-0.33035, 0, 0.943858, 0, -1, 0, 0.943858, 0, 0.33035)
level03.colliders.C_Parent_Tile_3ID21.collider:SetHalfLengths(0.3,5.07072,10.5948)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID21.collider)
level03.colliders.C_Parent_Tile_3ID22 = {}
level03.colliders.C_Parent_Tile_3ID22.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID22.collider:SetOffset(423.807,40.3065,174.638)
level03.colliders.C_Parent_Tile_3ID22.collider:SetAxes(-0.998435, 0, -0.0559184, 0, -1, -0, 0.0559184, 0, -0.998435)
level03.colliders.C_Parent_Tile_3ID22.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID22.collider)
level03.colliders.C_Parent_Tile_3ID23 = {}
level03.colliders.C_Parent_Tile_3ID23.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID23.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID23.collider:SetMinPos(414.709,29.5246,132.739)
level03.colliders.C_Parent_Tile_3ID23.collider:SetMaxPos(487.245,57.3098,255.172)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID23.collider)
level03.colliders.C_Parent_Tile_3ID24 = {}
level03.colliders.C_Parent_Tile_3ID24.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID24.collider:SetOffset(416,48.3481,235)
level03.colliders.C_Parent_Tile_3ID24.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level03.colliders.C_Parent_Tile_3ID24.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID24.collider)
level03.colliders.C_Parent_Tile_3ID25 = {}
level03.colliders.C_Parent_Tile_3ID25.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID25.collider:SetOffset(422,50.7251,242)
level03.colliders.C_Parent_Tile_3ID25.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level03.colliders.C_Parent_Tile_3ID25.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID25.collider)
level03.colliders.C_Parent_Tile_3ID26 = {}
level03.colliders.C_Parent_Tile_3ID26.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID26.collider:SetOffset(432.5,51.5175,250)
level03.colliders.C_Parent_Tile_3ID26.collider:SetAxes(-0.819232, 0, 0.573462, 0, -1, 0, 0.573462, 0, 0.819232)
level03.colliders.C_Parent_Tile_3ID26.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID26.collider)
level03.colliders.C_Parent_Tile_3ID27 = {}
level03.colliders.C_Parent_Tile_3ID27.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID27.collider:SetOffset(481,39.7907,154.5)
level03.colliders.C_Parent_Tile_3ID27.collider:SetAxes(0.816968, 0, -0.576683, 0, -1, -0, -0.576683, 0, -0.816968)
level03.colliders.C_Parent_Tile_3ID27.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID27.collider)
level03.colliders.C_Parent_Tile_3ID28 = {}
level03.colliders.C_Parent_Tile_3ID28.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID28.collider:SetOffset(463.5,38.2061,139.5)
level03.colliders.C_Parent_Tile_3ID28.collider:SetAxes(0.492057, 0, -0.870563, 0, -1, -0, -0.870563, 0, -0.492057)
level03.colliders.C_Parent_Tile_3ID28.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID28.collider)
level03.colliders.C_Parent_Tile_3ID29 = {}
level03.colliders.C_Parent_Tile_3ID29.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID29.collider:SetOffset(466.5,37.2121,161)
level03.colliders.C_Parent_Tile_3ID29.collider:SetAxes(-0.724999, 0, 0.688749, 0, -1, 0, 0.688749, 0, 0.724999)
level03.colliders.C_Parent_Tile_3ID29.collider:SetHalfLengths(0.3,7.12171,13.7931)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID29.collider)
level03.colliders.C_Parent_Tile_3ID30 = {}
level03.colliders.C_Parent_Tile_3ID30.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID30.collider:SetOffset(443,35.3732,171.5)
level03.colliders.C_Parent_Tile_3ID30.collider:SetAxes(-0.529999, 0, 0.847998, 0, -1, 0, 0.847998, 0, 0.529999)
level03.colliders.C_Parent_Tile_3ID30.collider:SetHalfLengths(0.3,5.84868,4.71699)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID30.collider)
level03.colliders.C_Parent_Tile_3ID31 = {}
level03.colliders.C_Parent_Tile_3ID31.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID31.collider:SetOffset(450.5,36.2219,178)
level03.colliders.C_Parent_Tile_3ID31.collider:SetAxes(-0.752577, 0, 0.658505, 0, -1, 0, 0.658505, 0, 0.752577)
level03.colliders.C_Parent_Tile_3ID31.collider:SetHalfLengths(0.3,6.27303,5.31507)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID31.collider)
level03.colliders.C_Parent_Tile_3ID32 = {}
level03.colliders.C_Parent_Tile_3ID32.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID32.collider:SetOffset(437.75,37.7188,176.375)
level03.colliders.C_Parent_Tile_3ID32.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level03.colliders.C_Parent_Tile_3ID32.collider:SetHalfLengths(0.8,1,0.8)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID32.collider)
level03.colliders.C_Parent_Tile_3ID33 = {}
level03.colliders.C_Parent_Tile_3ID33.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID33.collider:SetOffset(444.5,39.25,184.875)
level03.colliders.C_Parent_Tile_3ID33.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level03.colliders.C_Parent_Tile_3ID33.collider:SetHalfLengths(0.8,1,0.8)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID33.collider)
level03.colliders.C_Parent_Tile_3ID34 = {}
level03.colliders.C_Parent_Tile_3ID34.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID34.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID34.collider:SetMinPos(473.825,34.7907,162.854)
level03.colliders.C_Parent_Tile_3ID34.collider:SetMaxPos(525.852,99.3954,692.461)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID34.collider)
level03.colliders.C_Parent_Tile_3ID35 = {}
level03.colliders.C_Parent_Tile_3ID35.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID35.collider:SetOffset(511.5,41.5339,241.5)
level03.colliders.C_Parent_Tile_3ID35.collider:SetAxes(0.999315, 0, -0.0370117, 0, -1, -0, -0.0370117, 0, -0.999315)
level03.colliders.C_Parent_Tile_3ID35.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID35.collider)
level03.colliders.C_Parent_Tile_3ID36 = {}
level03.colliders.C_Parent_Tile_3ID36.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID36.collider:SetOffset(510,41.8508,221)
level03.colliders.C_Parent_Tile_3ID36.collider:SetAxes(0.98995, 0, -0.141421, 0, -1, -0, -0.141421, 0, -0.98995)
level03.colliders.C_Parent_Tile_3ID36.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID36.collider)
level03.colliders.C_Parent_Tile_3ID37 = {}
level03.colliders.C_Parent_Tile_3ID37.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID37.collider:SetOffset(506.5,42.1678,206.5)
level03.colliders.C_Parent_Tile_3ID37.collider:SetAxes(0.948683, 0, -0.316228, 0, -1, -0, -0.316228, 0, -0.948683)
level03.colliders.C_Parent_Tile_3ID37.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID37.collider)
level03.colliders.C_Parent_Tile_3ID38 = {}
level03.colliders.C_Parent_Tile_3ID38.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID38.collider:SetOffset(500.5,41.8508,190)
level03.colliders.C_Parent_Tile_3ID38.collider:SetAxes(0.932005, 0, -0.362446, 0, -1, -0, -0.362446, 0, -0.932005)
level03.colliders.C_Parent_Tile_3ID38.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID38.collider)
level03.colliders.C_Parent_Tile_3ID39 = {}
level03.colliders.C_Parent_Tile_3ID39.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID39.collider:SetOffset(492,41.217,172)
level03.colliders.C_Parent_Tile_3ID39.collider:SetAxes(0.874157, 0, -0.485643, 0, -1, -0, -0.485643, 0, -0.874157)
level03.colliders.C_Parent_Tile_3ID39.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID39.collider)
level03.colliders.C_Parent_Tile_3ID40 = {}
level03.colliders.C_Parent_Tile_3ID40.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID40.collider:SetOffset(494.563,45.3774,197.119)
level03.colliders.C_Parent_Tile_3ID40.collider:SetAxes(0.331464, 0, 0.943468, 0, -1, 0, -0.943468, 0, 0.331464)
level03.colliders.C_Parent_Tile_3ID40.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID40.collider)
level03.colliders.C_Parent_Tile_3ID41 = {}
level03.colliders.C_Parent_Tile_3ID41.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID41.collider:SetOffset(515.5,89.125,684)
level03.colliders.C_Parent_Tile_3ID41.collider:SetAxes(-0.96418, -0.0508336, -0.260333, 0.0885674, -0.986834, -0.135329, 0.250026, 0.153539, -0.955988)
level03.colliders.C_Parent_Tile_3ID41.collider:SetHalfLengths(2.46074,8.20246,2.46074)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID41.collider)
level03.colliders.C_Parent_Tile_3ID42 = {}
level03.colliders.C_Parent_Tile_3ID42.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID42.collider:SetOffset(504,89,688)
level03.colliders.C_Parent_Tile_3ID42.collider:SetAxes(-0.428275, -0.0277732, -0.903222, 0.168243, -0.984502, -0.0495024, 0.887849, 0.173162, -0.42631)
level03.colliders.C_Parent_Tile_3ID42.collider:SetHalfLengths(2.98494,9.9498,2.98494)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID42.collider)
level03.colliders.C_Parent_Tile_3ID43 = {}
level03.colliders.C_Parent_Tile_3ID43.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID43.collider:SetOffset(477.5,88.6875,664)
level03.colliders.C_Parent_Tile_3ID43.collider:SetAxes(0.974338, -0.0729854, -0.21293, -0.0801068, -0.996473, -0.0249994, 0.210354, -0.041415, 0.976748)
level03.colliders.C_Parent_Tile_3ID43.collider:SetHalfLengths(2.53142,8.43806,2.53142)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID43.collider)
level03.colliders.C_Parent_Tile_3ID44 = {}
level03.colliders.C_Parent_Tile_3ID44.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID44.collider:SetOffset(523,88.8125,677)
level03.colliders.C_Parent_Tile_3ID44.collider:SetAxes(-0.95702, -0.0147575, -0.289645, 0.0313399, -0.998119, -0.0526963, 0.288322, 0.0595089, -0.955683)
level03.colliders.C_Parent_Tile_3ID44.collider:SetHalfLengths(2.11306,7.04352,2.11306)
level03.colliders.C_Parent_Tile_3ID34.collider:AddChild(level03.colliders.C_Parent_Tile_3ID44.collider)
level03.colliders.C_Parent_Tile_3ID45 = {}
level03.colliders.C_Parent_Tile_3ID45.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID45.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID45.collider:SetMinPos(458.83,78.6097,651.247)
level03.colliders.C_Parent_Tile_3ID45.collider:SetMaxPos(585.472,98.7653,734.628)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID45.collider)
level03.colliders.C_Parent_Tile_3ID46 = {}
level03.colliders.C_Parent_Tile_3ID46.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID46.collider:SetOffset(532.5,88.6875,674)
level03.colliders.C_Parent_Tile_3ID46.collider:SetAxes(0.495163, 0.00619969, -0.868778, 0.0597202, -0.997852, 0.026917, 0.866745, 0.0652119, 0.49447)
level03.colliders.C_Parent_Tile_3ID46.collider:SetHalfLengths(2.96617,9.88723,2.96617)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID46.collider)
level03.colliders.C_Parent_Tile_3ID47 = {}
level03.colliders.C_Parent_Tile_3ID47.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID47.collider:SetOffset(557,88.3125,665)
level03.colliders.C_Parent_Tile_3ID47.collider:SetAxes(0.988936, 0.00938624, 0.148048, 0.000316248, -0.998127, 0.0611686, -0.148345, 0.0604449, 0.987087)
level03.colliders.C_Parent_Tile_3ID47.collider:SetHalfLengths(2.0285,6.76168,2.0285)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID47.collider)
level03.colliders.C_Parent_Tile_3ID48 = {}
level03.colliders.C_Parent_Tile_3ID48.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID48.collider:SetOffset(581.5,88.875,666)
level03.colliders.C_Parent_Tile_3ID48.collider:SetAxes(0.303721, 0.0124736, -0.95268, 0.156235, -0.987031, 0.0368855, 0.939864, 0.160045, 0.30173)
level03.colliders.C_Parent_Tile_3ID48.collider:SetHalfLengths(2.25126,7.5042,2.25126)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID48.collider)
level03.colliders.C_Parent_Tile_3ID49 = {}
level03.colliders.C_Parent_Tile_3ID49.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID49.collider:SetOffset(576,88.125,655)
level03.colliders.C_Parent_Tile_3ID49.collider:SetAxes(0.728818, 0.00581635, -0.684683, 0.025579, -0.999497, 0.0187372, 0.684229, 0.0311695, 0.728601)
level03.colliders.C_Parent_Tile_3ID49.collider:SetHalfLengths(2.54337,8.47789,2.54337)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID49.collider)
level03.colliders.C_Parent_Tile_3ID50 = {}
level03.colliders.C_Parent_Tile_3ID50.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID50.collider:SetOffset(485.25,89.125,722)
level03.colliders.C_Parent_Tile_3ID50.collider:SetAxes(0.654962, 0.0941028, 0.74978, -0.0297878, -0.98823, 0.150051, -0.755075, 0.120612, 0.644449)
level03.colliders.C_Parent_Tile_3ID50.collider:SetHalfLengths(2.6563,8.85434,2.6563)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID50.collider)
level03.colliders.C_Parent_Tile_3ID51 = {}
level03.colliders.C_Parent_Tile_3ID51.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID51.collider:SetOffset(461.5,89.3125,731.5)
level03.colliders.C_Parent_Tile_3ID51.collider:SetAxes(-0.878978, -0.0210477, 0.476398, -0.0414858, -0.991862, -0.120365, -0.475055, 0.125562, -0.870952)
level03.colliders.C_Parent_Tile_3ID51.collider:SetHalfLengths(1.78918,5.96393,1.78918)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID51.collider)
level03.colliders.C_Parent_Tile_3ID52 = {}
level03.colliders.C_Parent_Tile_3ID52.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID52.collider:SetOffset(548.5,88.5,668.5)
level03.colliders.C_Parent_Tile_3ID52.collider:SetAxes(0.637899, 0.00655092, 0.770092, -0.048032, -0.997679, 0.0482738, -0.768621, 0.0677828, 0.636103)
level03.colliders.C_Parent_Tile_3ID52.collider:SetHalfLengths(2.4731,8.24366,2.4731)
level03.colliders.C_Parent_Tile_3ID45.collider:AddChild(level03.colliders.C_Parent_Tile_3ID52.collider)
CollisionHandler.AddAABB(level03.colliders.C_Parent_Tile_3ID.collider, 3)
level03.colliders.C_Parent_Tile_3ID1 = nil
level03.colliders.C_Parent_Tile_3ID2 = nil
level03.colliders.C_Parent_Tile_3ID3 = nil
level03.colliders.C_Parent_Tile_3ID4 = nil
level03.colliders.C_Parent_Tile_3ID5 = nil
level03.colliders.C_Parent_Tile_3ID6 = nil
level03.colliders.C_Parent_Tile_3ID7 = nil
level03.colliders.C_Parent_Tile_3ID8 = nil
level03.colliders.C_Parent_Tile_3ID9 = nil
level03.colliders.C_Parent_Tile_3ID10 = nil
level03.colliders.C_Parent_Tile_3ID11 = nil
level03.colliders.C_Parent_Tile_3ID12 = nil
level03.colliders.C_Parent_Tile_3ID13 = nil
level03.colliders.C_Parent_Tile_3ID14 = nil
level03.colliders.C_Parent_Tile_3ID15 = nil
level03.colliders.C_Parent_Tile_3ID16 = nil
level03.colliders.C_Parent_Tile_3ID17 = nil
level03.colliders.C_Parent_Tile_3ID18 = nil
level03.colliders.C_Parent_Tile_3ID19 = nil
level03.colliders.C_Parent_Tile_3ID20 = nil
level03.colliders.C_Parent_Tile_3ID21 = nil
level03.colliders.C_Parent_Tile_3ID22 = nil
level03.colliders.C_Parent_Tile_3ID23 = nil
level03.colliders.C_Parent_Tile_3ID24 = nil
level03.colliders.C_Parent_Tile_3ID25 = nil
level03.colliders.C_Parent_Tile_3ID26 = nil
level03.colliders.C_Parent_Tile_3ID27 = nil
level03.colliders.C_Parent_Tile_3ID28 = nil
level03.colliders.C_Parent_Tile_3ID29 = nil
level03.colliders.C_Parent_Tile_3ID30 = nil
level03.colliders.C_Parent_Tile_3ID31 = nil
level03.colliders.C_Parent_Tile_3ID32 = nil
level03.colliders.C_Parent_Tile_3ID33 = nil
level03.colliders.C_Parent_Tile_3ID34 = nil
level03.colliders.C_Parent_Tile_3ID35 = nil
level03.colliders.C_Parent_Tile_3ID36 = nil
level03.colliders.C_Parent_Tile_3ID37 = nil
level03.colliders.C_Parent_Tile_3ID38 = nil
level03.colliders.C_Parent_Tile_3ID39 = nil
level03.colliders.C_Parent_Tile_3ID40 = nil
level03.colliders.C_Parent_Tile_3ID41 = nil
level03.colliders.C_Parent_Tile_3ID42 = nil
level03.colliders.C_Parent_Tile_3ID43 = nil
level03.colliders.C_Parent_Tile_3ID44 = nil
level03.colliders.C_Parent_Tile_3ID45 = nil
level03.colliders.C_Parent_Tile_3ID46 = nil
level03.colliders.C_Parent_Tile_3ID47 = nil
level03.colliders.C_Parent_Tile_3ID48 = nil
level03.colliders.C_Parent_Tile_3ID49 = nil
level03.colliders.C_Parent_Tile_3ID50 = nil
level03.colliders.C_Parent_Tile_3ID51 = nil
level03.colliders.C_Parent_Tile_3ID52 = nil
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
Gear.UnbindInstance(level03.props.PineTreeWicked281ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked281ID = nil
Gear.UnbindInstance(level03.props.PineTreeWicked282ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked282ID = nil
Gear.UnbindInstance(level03.props.PineTreeWicked283ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked283ID = nil
Gear.UnbindInstance(level03.props.PineTreeWicked284ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked284ID = nil
Gear.UnbindInstance(level03.props.PineTreeWicked285ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked285ID = nil
Gear.UnbindInstance(level03.props.PineTreeWicked286ID.transformID)
Assets.UnloadModel('Models/Wicked_pineTree1.model')
level03.props.PineTreeWicked286ID = nil
Light.removeLight(level03.props.PurpleLightID.lightIndex)
level03.props.PurpleLightID = nil
Gear.UnbindInstance(level03.props.PineTreeTwisted1ID.transformID)
Assets.UnloadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted1ID = nil
Gear.UnbindInstance(level03.props.PineTreeTwisted2ID.transformID)
Assets.UnloadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted2ID = nil
Gear.UnbindInstance(level03.props.PineTreeTwisted3ID.transformID)
Assets.UnloadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted3ID = nil
Gear.UnbindInstance(level03.props.PineTreeTwisted4ID.transformID)
Assets.UnloadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted4ID = nil
Gear.UnbindInstance(level03.props.PineTreeTwisted5ID.transformID)
Assets.UnloadModel('Models/Twisted_pineTree1.model')
level03.props.PineTreeTwisted5ID = nil
level03.colliders.C_Parent_Tile_31ID = nil
level03.colliders.C_Parent_Tile_32ID = nil
level03.colliders.C_Parent_Tile_33ID = nil
level03.colliders.C_Parent_Tile_34ID = nil
level03.colliders.C_Parent_Tile_35ID = nil
level03.colliders.C_Parent_Tile_3ID = nil
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
level04.props.New1ID = {}
level04.props.New1ID.lightIndex = Light.addLight(495.343, 43.5625, 415.697, 0, 1, 1, 100,3)
level04.props.Tile4_FenceID = {}
level04.props.Tile4_FenceID.model = Assets.LoadModel('Models/tile4_fence.model')
level04.props.Tile4_FenceID.transformID = Gear.BindStaticInstance(level04.props.Tile4_FenceID.model)
Transform.SetPosition(level04.props.Tile4_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.Tile4_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.Tile4_FenceID.transformID, {x=-0, y=0, z=-0})
level04.colliders.C_Parent_Tile_4ID = {}
level04.colliders.C_Parent_Tile_4ID.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4ID.collider:SetMinPos(434.7,24.9016,256)
level04.colliders.C_Parent_Tile_4ID.collider:SetMaxPos(512.3,78.3839,383.3)
level04.colliders.C_Parent_Tile_4ID.collider:SetPos(0,0,0)
level04.colliders.C_Parent_Tile_4ID1 = {}
level04.colliders.C_Parent_Tile_4ID1.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID1.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4ID1.collider:SetMinPos(434.7,24.9016,256)
level04.colliders.C_Parent_Tile_4ID1.collider:SetMaxPos(477.295,66.1226,363.023)
level04.colliders.C_Parent_Tile_4ID.collider:AddChild(level04.colliders.C_Parent_Tile_4ID1.collider)
level04.colliders.C_Parent_Tile_4ID2 = {}
level04.colliders.C_Parent_Tile_4ID2.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID2.collider:SetOffset(474,40.2329,303.5)
level04.colliders.C_Parent_Tile_4ID2.collider:SetAxes(-0.98387, 0, 0.178885, 0, -1, 0, 0.178885, 0, 0.98387)
level04.colliders.C_Parent_Tile_4ID2.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID2.collider)
level04.colliders.C_Parent_Tile_4ID3 = {}
level04.colliders.C_Parent_Tile_4ID3.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID3.collider:SetOffset(467.5,40.2329,291.5)
level04.colliders.C_Parent_Tile_4ID3.collider:SetAxes(-0.789352, 0, -0.613941, -0, -1, 0, -0.613941, 0, 0.789352)
level04.colliders.C_Parent_Tile_4ID3.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID3.collider)
level04.colliders.C_Parent_Tile_4ID4 = {}
level04.colliders.C_Parent_Tile_4ID4.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID4.collider:SetOffset(435,52.8348,263)
level04.colliders.C_Parent_Tile_4ID4.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level04.colliders.C_Parent_Tile_4ID4.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID4.collider)
level04.colliders.C_Parent_Tile_4ID5 = {}
level04.colliders.C_Parent_Tile_4ID5.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID5.collider:SetOffset(436,53.9701,283.5)
level04.colliders.C_Parent_Tile_4ID5.collider:SetAxes(-0.997268, 0, 0.0738717, 0, -1, 0, 0.0738717, 0, 0.997268)
level04.colliders.C_Parent_Tile_4ID5.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID5.collider)
level04.colliders.C_Parent_Tile_4ID6 = {}
level04.colliders.C_Parent_Tile_4ID6.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID6.collider:SetOffset(439,55.7866,309.5)
level04.colliders.C_Parent_Tile_4ID6.collider:SetAxes(-0.987441, 0, 0.157991, 0, -1, 0, 0.157991, 0, 0.987441)
level04.colliders.C_Parent_Tile_4ID6.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID6.collider)
level04.colliders.C_Parent_Tile_4ID7 = {}
level04.colliders.C_Parent_Tile_4ID7.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID7.collider:SetOffset(442.5,56.1272,328.5)
level04.colliders.C_Parent_Tile_4ID7.collider:SetAxes(-0.974391, 0, 0.22486, 0, -1, 0, 0.22486, 0, 0.974391)
level04.colliders.C_Parent_Tile_4ID7.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID7.collider)
level04.colliders.C_Parent_Tile_4ID8 = {}
level04.colliders.C_Parent_Tile_4ID8.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID8.collider:SetOffset(447,57.2625,342.5)
level04.colliders.C_Parent_Tile_4ID8.collider:SetAxes(-0.928477, 0, 0.371391, 0, -1, 0, 0.371391, 0, 0.928477)
level04.colliders.C_Parent_Tile_4ID8.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID8.collider)
level04.colliders.C_Parent_Tile_4ID9 = {}
level04.colliders.C_Parent_Tile_4ID9.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID9.collider:SetOffset(450.5,60.2143,356.5)
level04.colliders.C_Parent_Tile_4ID9.collider:SetAxes(-0.997055, 0, 0.0766965, 0, -1, 0, 0.0766965, 0, 0.997055)
level04.colliders.C_Parent_Tile_4ID9.collider:SetHalfLengths(0.3,5.90825,6.5192)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID9.collider)
level04.colliders.C_Parent_Tile_4ID10 = {}
level04.colliders.C_Parent_Tile_4ID10.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID10.collider:SetOffset(462.5,50.5642,299)
level04.colliders.C_Parent_Tile_4ID10.collider:SetAxes(-0.894427, 0, -0.447214, -0, -1, 0, -0.447214, 0, 0.894427)
level04.colliders.C_Parent_Tile_4ID10.collider:SetHalfLengths(0.3,7.27061,3.3541)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID10.collider)
level04.colliders.C_Parent_Tile_4ID11 = {}
level04.colliders.C_Parent_Tile_4ID11.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID11.collider:SetOffset(463,52.8348,326)
level04.colliders.C_Parent_Tile_4ID11.collider:SetAxes(-0.996546, 0, 0.0830455, 0, -1, 0, 0.0830455, 0, 0.996546)
level04.colliders.C_Parent_Tile_4ID11.collider:SetHalfLengths(0.3,9.99535,24.0832)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID11.collider)
level04.colliders.C_Parent_Tile_4ID12 = {}
level04.colliders.C_Parent_Tile_4ID12.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID12.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4ID12.collider:SetMinPos(450.701,28.7617,256)
level04.colliders.C_Parent_Tile_4ID12.collider:SetMaxPos(512.3,78.3839,383.3)
level04.colliders.C_Parent_Tile_4ID.collider:AddChild(level04.colliders.C_Parent_Tile_4ID12.collider)
level04.colliders.C_Parent_Tile_4ID13 = {}
level04.colliders.C_Parent_Tile_4ID13.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID13.collider:SetOffset(512,41.5953,300.5)
level04.colliders.C_Parent_Tile_4ID13.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level04.colliders.C_Parent_Tile_4ID13.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID13.collider)
level04.colliders.C_Parent_Tile_4ID14 = {}
level04.colliders.C_Parent_Tile_4ID14.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID14.collider:SetOffset(508,34.7835,352.5)
level04.colliders.C_Parent_Tile_4ID14.collider:SetAxes(-0.882353, 0, -0.470588, -0, -1, 0, -0.470588, 0, 0.882353)
level04.colliders.C_Parent_Tile_4ID14.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID14.collider)
level04.colliders.C_Parent_Tile_4ID15 = {}
level04.colliders.C_Parent_Tile_4ID15.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID15.collider:SetOffset(502.5,35.8052,364.5)
level04.colliders.C_Parent_Tile_4ID15.collider:SetAxes(-0.948683, 0, -0.316228, -0, -1, 0, -0.316228, 0, 0.948683)
level04.colliders.C_Parent_Tile_4ID15.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID15.collider)
level04.colliders.C_Parent_Tile_4ID16 = {}
level04.colliders.C_Parent_Tile_4ID16.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID16.collider:SetOffset(502.5,37.0541,372.5)
level04.colliders.C_Parent_Tile_4ID16.collider:SetAxes(-0.919145, 0, 0.393919, 0, -1, 0, 0.393919, 0, 0.919145)
level04.colliders.C_Parent_Tile_4ID16.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID16.collider)
level04.colliders.C_Parent_Tile_4ID17 = {}
level04.colliders.C_Parent_Tile_4ID17.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID17.collider:SetOffset(475.5,42.39,334)
level04.colliders.C_Parent_Tile_4ID17.collider:SetAxes(-0.994309, 0, -0.106533, -0, -1, 0, -0.106533, 0, 0.994309)
level04.colliders.C_Parent_Tile_4ID17.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID17.collider)
level04.colliders.C_Parent_Tile_4ID18 = {}
level04.colliders.C_Parent_Tile_4ID18.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID18.collider:SetOffset(475.5,43.9794,365.5)
level04.colliders.C_Parent_Tile_4ID18.collider:SetAxes(-0.996347, 0, 0.0854011, 0, -1, 0, 0.0854011, 0, 0.996347)
level04.colliders.C_Parent_Tile_4ID18.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID18.collider)
level04.colliders.C_Parent_Tile_4ID19 = {}
level04.colliders.C_Parent_Tile_4ID19.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID19.collider:SetOffset(452,61.1226,373)
level04.colliders.C_Parent_Tile_4ID19.collider:SetAxes(-0.995037, 0, 0.0995037, 0, -1, 0, 0.0995037, 0, 0.995037)
level04.colliders.C_Parent_Tile_4ID19.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID19.collider)
level04.colliders.C_Parent_Tile_4ID20 = {}
level04.colliders.C_Parent_Tile_4ID20.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID20.collider:SetOffset(473.5,58.852,383)
level04.colliders.C_Parent_Tile_4ID20.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level04.colliders.C_Parent_Tile_4ID20.collider:SetHalfLengths(0.3,19.5319,3.5)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID20.collider)
level04.colliders.C_Parent_Tile_4ID21 = {}
level04.colliders.C_Parent_Tile_4ID21.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID21.collider:SetOffset(466.5,58.5114,373)
level04.colliders.C_Parent_Tile_4ID21.collider:SetAxes(-0.998752, 0, 0.0499376, 0, -1, 0, 0.0499376, 0, 0.998752)
level04.colliders.C_Parent_Tile_4ID21.collider:SetHalfLengths(0.3,6.93002,10.0125)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID21.collider)
level04.colliders.C_Parent_Tile_4ID22 = {}
level04.colliders.C_Parent_Tile_4ID22.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID22.collider:SetOffset(465.5,57.8302,356.5)
level04.colliders.C_Parent_Tile_4ID22.collider:SetAxes(-0.997055, 0, 0.0766965, 0, -1, 0, 0.0766965, 0, 0.997055)
level04.colliders.C_Parent_Tile_4ID22.collider:SetHalfLengths(0.3,5.68118,6.5192)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID22.collider)
level04.colliders.C_Parent_Tile_4ID23 = {}
level04.colliders.C_Parent_Tile_4ID23.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID23.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_4ID23.collider:SetMinPos(503.74,31.827,375.851)
level04.colliders.C_Parent_Tile_4ID23.collider:SetMaxPos(508.26,43.6435,383.149)
level04.colliders.C_Parent_Tile_4ID.collider:AddChild(level04.colliders.C_Parent_Tile_4ID23.collider)
level04.colliders.C_Parent_Tile_4ID24 = {}
level04.colliders.C_Parent_Tile_4ID24.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID24.collider:SetOffset(506,37.7352,379.5)
level04.colliders.C_Parent_Tile_4ID24.collider:SetAxes(-0.868243, 0, 0.496139, 0, -1, 0, 0.496139, 0, 0.868243)
level04.colliders.C_Parent_Tile_4ID24.collider:SetHalfLengths(0.3,5.90825,4.03113)
level04.colliders.C_Parent_Tile_4ID23.collider:AddChild(level04.colliders.C_Parent_Tile_4ID24.collider)
CollisionHandler.AddAABB(level04.colliders.C_Parent_Tile_4ID.collider, 3)
level04.colliders.C_Parent_Tile_4ID1 = nil
level04.colliders.C_Parent_Tile_4ID2 = nil
level04.colliders.C_Parent_Tile_4ID3 = nil
level04.colliders.C_Parent_Tile_4ID4 = nil
level04.colliders.C_Parent_Tile_4ID5 = nil
level04.colliders.C_Parent_Tile_4ID6 = nil
level04.colliders.C_Parent_Tile_4ID7 = nil
level04.colliders.C_Parent_Tile_4ID8 = nil
level04.colliders.C_Parent_Tile_4ID9 = nil
level04.colliders.C_Parent_Tile_4ID10 = nil
level04.colliders.C_Parent_Tile_4ID11 = nil
level04.colliders.C_Parent_Tile_4ID12 = nil
level04.colliders.C_Parent_Tile_4ID13 = nil
level04.colliders.C_Parent_Tile_4ID14 = nil
level04.colliders.C_Parent_Tile_4ID15 = nil
level04.colliders.C_Parent_Tile_4ID16 = nil
level04.colliders.C_Parent_Tile_4ID17 = nil
level04.colliders.C_Parent_Tile_4ID18 = nil
level04.colliders.C_Parent_Tile_4ID19 = nil
level04.colliders.C_Parent_Tile_4ID20 = nil
level04.colliders.C_Parent_Tile_4ID21 = nil
level04.colliders.C_Parent_Tile_4ID22 = nil
level04.colliders.C_Parent_Tile_4ID23 = nil
level04.colliders.C_Parent_Tile_4ID24 = nil
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
level04.colliders.C_Parent_Tile_41ID = nil
level04.colliders.C_Parent_Tile_42ID = nil
level04.colliders.C_Parent_Tile_43ID = nil
level04.colliders.C_Parent_Tile_4ID = nil
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
level05.props.t4s5ID = {}
level05.props.t4s5ID.model = Assets.LoadModel('Models/tile4_s5.model')
level05.props.t4s5ID.transformID = Gear.BindStaticInstance(level05.props.t4s5ID.model)
Transform.SetPosition(level05.props.t4s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t4s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t4s5ID.transformID, {x=-0, y=0, z=-0})
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
level05.props.Asset_Stone31ID = {}
level05.props.Asset_Stone31ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone31ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone31ID.model)
Transform.SetPosition(level05.props.Asset_Stone31ID.transformID, {x=421, y=44.8438, z=217.125})
Transform.SetScaleNonUniform(level05.props.Asset_Stone31ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone31ID.transformID, {x=0.0505981, y=0.967773, z=0.244385})
level05.props.Asset_Stone32ID = {}
level05.props.Asset_Stone32ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone32ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone32ID.model)
Transform.SetPosition(level05.props.Asset_Stone32ID.transformID, {x=424.25, y=46.75, z=224.625})
Transform.SetScaleNonUniform(level05.props.Asset_Stone32ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone32ID.transformID, {x=0.0278473, y=0.970215, z=0.237305})
level05.props.Asset_Stone33ID = {}
level05.props.Asset_Stone33ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone33ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone33ID.model)
Transform.SetPosition(level05.props.Asset_Stone33ID.transformID, {x=458.25, y=43.25, z=216.875})
Transform.SetScaleNonUniform(level05.props.Asset_Stone33ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone33ID.transformID, {x=-0.194946, y=0.970215, z=0.12793})
level05.props.Asset_Stone34ID = {}
level05.props.Asset_Stone34ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone34ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone34ID.model)
Transform.SetPosition(level05.props.Asset_Stone34ID.transformID, {x=454.75, y=43.625, z=213.75})
Transform.SetScaleNonUniform(level05.props.Asset_Stone34ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone34ID.transformID, {x=-0.173218, y=0.969727, z=0.170776})
level05.props.Asset_Stone35ID = {}
level05.props.Asset_Stone35ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone35ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone35ID.model)
Transform.SetPosition(level05.props.Asset_Stone35ID.transformID, {x=445.25, y=47.125, z=224.875})
Transform.SetScaleNonUniform(level05.props.Asset_Stone35ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone35ID.transformID, {x=-0.132568, y=0.980469, z=0.119568})
level05.props.Asset_Stone41ID = {}
level05.props.Asset_Stone41ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone41ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone41ID.model)
Transform.SetPosition(level05.props.Asset_Stone41ID.transformID, {x=445.75, y=41.25, z=197.625})
Transform.SetScaleNonUniform(level05.props.Asset_Stone41ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone41ID.transformID, {x=-0.050293, y=0.971191, z=0.228638})
level05.props.Asset_Stone42ID = {}
level05.props.Asset_Stone42ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone42ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone42ID.model)
Transform.SetPosition(level05.props.Asset_Stone42ID.transformID, {x=429, y=46.5938, z=222.25})
Transform.SetScaleNonUniform(level05.props.Asset_Stone42ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone42ID.transformID, {x=0.0478516, y=0.974121, z=0.216064})
level05.props.Asset_Stone43ID = {}
level05.props.Asset_Stone43ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone43ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone43ID.model)
Transform.SetPosition(level05.props.Asset_Stone43ID.transformID, {x=421.5, y=38.9688, z=192.625})
Transform.SetScaleNonUniform(level05.props.Asset_Stone43ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone43ID.transformID, {x=0.0250244, y=0.992676, z=0.112793})
level05.props.Asset_Stone21ID = {}
level05.props.Asset_Stone21ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone21ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone21ID.model)
Transform.SetPosition(level05.props.Asset_Stone21ID.transformID, {x=483.482, y=39.9063, z=173.541})
Transform.SetScaleNonUniform(level05.props.Asset_Stone21ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone21ID.transformID, {x=0.121643, y=0.990723, z=0.0562744})
level05.props.Asset_Stone22ID = {}
level05.props.Asset_Stone22ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone22ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone22ID.model)
Transform.SetPosition(level05.props.Asset_Stone22ID.transformID, {x=471.269, y=38.1305, z=154.56})
Transform.SetScaleNonUniform(level05.props.Asset_Stone22ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone22ID.transformID, {x=0.106873, y=0.992676, z=0.0537109})
level05.props.Asset_Stone23ID = {}
level05.props.Asset_Stone23ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone23ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone23ID.model)
Transform.SetPosition(level05.props.Asset_Stone23ID.transformID, {x=432.75, y=38.4375, z=184.875})
Transform.SetScaleNonUniform(level05.props.Asset_Stone23ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Asset_Stone23ID.transformID, {x=-0.00359726, y=0.984863, z=0.171143})
level05.props.Asset_Stone24ID = {}
level05.props.Asset_Stone24ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone24ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone24ID.model)
Transform.SetPosition(level05.props.Asset_Stone24ID.transformID, {x=481.25, y=85.5625, z=690.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone24ID.transformID, 1.05261, 1.05261, 1.05261)
Transform.SetRotation(level05.props.Asset_Stone24ID.transformID, {x=0.0123901, y=0.621666, z=0.0149994})
level05.props.Asset_Stone25ID = {}
level05.props.Asset_Stone25ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone25ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone25ID.model)
Transform.SetPosition(level05.props.Asset_Stone25ID.transformID, {x=490.25, y=85.875, z=705.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone25ID.transformID, 1.74358, 1.74358, 1.74358)
Transform.SetRotation(level05.props.Asset_Stone25ID.transformID, {x=0.0171356, y=0.254841, z=0.000445604})
level05.props.Asset_Stone26ID = {}
level05.props.Asset_Stone26ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone26ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone26ID.model)
Transform.SetPosition(level05.props.Asset_Stone26ID.transformID, {x=508.25, y=85.9375, z=683.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone26ID.transformID, 1.51958, 1.51958, 1.51958)
Transform.SetRotation(level05.props.Asset_Stone26ID.transformID, {x=0.0395813, y=5.59212, z=0.0975342})
level05.props.Asset_Stone27ID = {}
level05.props.Asset_Stone27ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone27ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone27ID.model)
Transform.SetPosition(level05.props.Asset_Stone27ID.transformID, {x=527, y=86.125, z=679.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone27ID.transformID, 1.62609, 1.62609, 1.62609)
Transform.SetRotation(level05.props.Asset_Stone27ID.transformID, {x=0.043396, y=6.03622, z=0.133179})
level05.props.Asset_Stone28ID = {}
level05.props.Asset_Stone28ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone28ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone28ID.model)
Transform.SetPosition(level05.props.Asset_Stone28ID.transformID, {x=546.782, y=86.0625, z=674.572})
Transform.SetScaleNonUniform(level05.props.Asset_Stone28ID.transformID, 1.72924, 1.72924, 1.72924)
Transform.SetRotation(level05.props.Asset_Stone28ID.transformID, {x=0.0236359, y=1.64889, z=0.155884})
level05.props.Asset_Stone29ID = {}
level05.props.Asset_Stone29ID.model = Assets.LoadModel('Models/Stone2.model')
level05.props.Asset_Stone29ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone29ID.model)
Transform.SetPosition(level05.props.Asset_Stone29ID.transformID, {x=567.5, y=85.125, z=657.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone29ID.transformID, 1.38636, 1.38636, 1.38636)
Transform.SetRotation(level05.props.Asset_Stone29ID.transformID, {x=0.00563049, y=2.3672, z=0.0211487})
level05.props.Asset_Stone371ID = {}
level05.props.Asset_Stone371ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone371ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone371ID.model)
Transform.SetPosition(level05.props.Asset_Stone371ID.transformID, {x=567, y=85.875, z=670.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone371ID.transformID, 1.71966, 1.71966, 1.71966)
Transform.SetRotation(level05.props.Asset_Stone371ID.transformID, {x=0.0275116, y=3.42607, z=0.126099})
level05.props.Asset_Stone372ID = {}
level05.props.Asset_Stone372ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone372ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone372ID.model)
Transform.SetPosition(level05.props.Asset_Stone372ID.transformID, {x=548.5, y=85.3125, z=665.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone372ID.transformID, 1.58562, 1.58562, 1.58562)
Transform.SetRotation(level05.props.Asset_Stone372ID.transformID, {x=0.00718689, y=2.74208, z=0.0575256})
level05.props.Asset_Stone373ID = {}
level05.props.Asset_Stone373ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone373ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone373ID.model)
Transform.SetPosition(level05.props.Asset_Stone373ID.transformID, {x=538, y=85.875, z=674.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone373ID.transformID, 1.85958, 1.85958, 1.85958)
Transform.SetRotation(level05.props.Asset_Stone373ID.transformID, {x=0.0240173, y=4.29682, z=0.0866699})
level05.props.Asset_Stone374ID = {}
level05.props.Asset_Stone374ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone374ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone374ID.model)
Transform.SetPosition(level05.props.Asset_Stone374ID.transformID, {x=525.5, y=86.3125, z=683.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone374ID.transformID, 1.47386, 1.47386, 1.47386)
Transform.SetRotation(level05.props.Asset_Stone374ID.transformID, {x=0.0666504, y=4.69874, z=0.189209})
level05.props.Asset_Stone375ID = {}
level05.props.Asset_Stone375ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone375ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone375ID.model)
Transform.SetPosition(level05.props.Asset_Stone375ID.transformID, {x=518.5, y=85.75, z=676})
Transform.SetScaleNonUniform(level05.props.Asset_Stone375ID.transformID, 1.63863, 1.63863, 1.63863)
Transform.SetRotation(level05.props.Asset_Stone375ID.transformID, {x=0.0108185, y=5.84293, z=0.040741})
level05.props.Asset_Stone376ID = {}
level05.props.Asset_Stone376ID.model = Assets.LoadModel('Models/Stone3.model')
level05.props.Asset_Stone376ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone376ID.model)
Transform.SetPosition(level05.props.Asset_Stone376ID.transformID, {x=497, y=86, z=695})
Transform.SetScaleNonUniform(level05.props.Asset_Stone376ID.transformID, 1.41917, 1.41917, 1.41917)
Transform.SetRotation(level05.props.Asset_Stone376ID.transformID, {x=0.10376, y=4.17218, z=0.136597})
level05.props.Asset_Stone461ID = {}
level05.props.Asset_Stone461ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone461ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone461ID.model)
Transform.SetPosition(level05.props.Asset_Stone461ID.transformID, {x=474.75, y=85.625, z=679.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone461ID.transformID, 1.95245, 1.95245, 1.95245)
Transform.SetRotation(level05.props.Asset_Stone461ID.transformID, {x=-0.0206909, y=1.54285, z=-0.0157166})
level05.props.Asset_Stone462ID = {}
level05.props.Asset_Stone462ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone462ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone462ID.model)
Transform.SetPosition(level05.props.Asset_Stone462ID.transformID, {x=471.5, y=85.8125, z=666.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone462ID.transformID, 1.96841, 1.96841, 1.96841)
Transform.SetRotation(level05.props.Asset_Stone462ID.transformID, {x=0.0202942, y=3.49587, z=-0.0608826})
level05.props.Asset_Stone463ID = {}
level05.props.Asset_Stone463ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone463ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone463ID.model)
Transform.SetPosition(level05.props.Asset_Stone463ID.transformID, {x=476, y=85.5, z=692})
Transform.SetScaleNonUniform(level05.props.Asset_Stone463ID.transformID, 1.49745, 1.49745, 1.49745)
Transform.SetRotation(level05.props.Asset_Stone463ID.transformID, {x=0.0113754, y=6.08857, z=0.0126114})
level05.props.Asset_Stone464ID = {}
level05.props.Asset_Stone464ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone464ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone464ID.model)
Transform.SetPosition(level05.props.Asset_Stone464ID.transformID, {x=536.5, y=85.4375, z=669})
Transform.SetScaleNonUniform(level05.props.Asset_Stone464ID.transformID, 1.38182, 1.38182, 1.38182)
Transform.SetRotation(level05.props.Asset_Stone464ID.transformID, {x=0.00645447, y=1.88072, z=0.049469})
level05.props.Asset_Stone465ID = {}
level05.props.Asset_Stone465ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone465ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone465ID.model)
Transform.SetPosition(level05.props.Asset_Stone465ID.transformID, {x=517, y=86.375, z=689.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone465ID.transformID, 1.734, 1.734, 1.734)
Transform.SetRotation(level05.props.Asset_Stone465ID.transformID, {x=0.0917969, y=1.23739, z=0.225708})
level05.props.Asset_Stone466ID = {}
level05.props.Asset_Stone466ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone466ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone466ID.model)
Transform.SetPosition(level05.props.Asset_Stone466ID.transformID, {x=539, y=86.25, z=678})
Transform.SetScaleNonUniform(level05.props.Asset_Stone466ID.transformID, 1.75079, 1.75079, 1.75079)
Transform.SetRotation(level05.props.Asset_Stone466ID.transformID, {x=0.0526733, y=5.26671, z=0.166382})
level05.props.Asset_Stone467ID = {}
level05.props.Asset_Stone467ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone467ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone467ID.model)
Transform.SetPosition(level05.props.Asset_Stone467ID.transformID, {x=569.5, y=85.4375, z=665})
Transform.SetScaleNonUniform(level05.props.Asset_Stone467ID.transformID, 1.45531, 1.45531, 1.45531)
Transform.SetRotation(level05.props.Asset_Stone467ID.transformID, {x=0.0189514, y=0.645252, z=0.0740967})
level05.props.Asset_Stone468ID = {}
level05.props.Asset_Stone468ID.model = Assets.LoadModel('Models/Stone4.model')
level05.props.Asset_Stone468ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone468ID.model)
Transform.SetPosition(level05.props.Asset_Stone468ID.transformID, {x=560, y=86.5, z=676.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone468ID.transformID, 1.38554, 1.38554, 1.38554)
Transform.SetRotation(level05.props.Asset_Stone468ID.transformID, {x=0.0448608, y=2.84429, z=0.265625})
level05.props.Asset_Stone11ID = {}
level05.props.Asset_Stone11ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone11ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone11ID.model)
Transform.SetPosition(level05.props.Asset_Stone11ID.transformID, {x=472.25, y=85.75, z=672.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone11ID.transformID, 1.13382, 1.13382, 1.13382)
Transform.SetRotation(level05.props.Asset_Stone11ID.transformID, {x=0.0293884, y=2.41092, z=-0.0279999})
level05.props.Asset_Stone12ID = {}
level05.props.Asset_Stone12ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone12ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone12ID.model)
Transform.SetPosition(level05.props.Asset_Stone12ID.transformID, {x=476.5, y=85.625, z=671})
Transform.SetScaleNonUniform(level05.props.Asset_Stone12ID.transformID, 1.26862, 1.26862, 1.26862)
Transform.SetRotation(level05.props.Asset_Stone12ID.transformID, {x=-0.0216827, y=2.89357, z=-0.0139923})
level05.props.Asset_Stone13ID = {}
level05.props.Asset_Stone13ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone13ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone13ID.model)
Transform.SetPosition(level05.props.Asset_Stone13ID.transformID, {x=472.75, y=85.5, z=684})
Transform.SetScaleNonUniform(level05.props.Asset_Stone13ID.transformID, 1.32792, 1.32792, 1.32792)
Transform.SetRotation(level05.props.Asset_Stone13ID.transformID, {x=-0.0103607, y=2.34362, z=-0.0115738})
level05.props.Asset_Stone14ID = {}
level05.props.Asset_Stone14ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone14ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone14ID.model)
Transform.SetPosition(level05.props.Asset_Stone14ID.transformID, {x=518.5, y=85.9375, z=681})
Transform.SetScaleNonUniform(level05.props.Asset_Stone14ID.transformID, 1.37248, 1.37248, 1.37248)
Transform.SetRotation(level05.props.Asset_Stone14ID.transformID, {x=0.0362854, y=5.4506, z=0.103394})
level05.props.Asset_Stone15ID = {}
level05.props.Asset_Stone15ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone15ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone15ID.model)
Transform.SetPosition(level05.props.Asset_Stone15ID.transformID, {x=506, y=86.125, z=692})
Transform.SetScaleNonUniform(level05.props.Asset_Stone15ID.transformID, 1.094, 1.094, 1.094)
Transform.SetRotation(level05.props.Asset_Stone15ID.transformID, {x=0.0964355, y=3.82664, z=0.168213})
level05.props.Asset_Stone16ID = {}
level05.props.Asset_Stone16ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone16ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone16ID.model)
Transform.SetPosition(level05.props.Asset_Stone16ID.transformID, {x=529, y=85.5, z=672})
Transform.SetScaleNonUniform(level05.props.Asset_Stone16ID.transformID, 1.47621, 1.47621, 1.47621)
Transform.SetRotation(level05.props.Asset_Stone16ID.transformID, {x=0.00696564, y=3.14304, z=0.044281})
level05.props.Asset_Stone17ID = {}
level05.props.Asset_Stone17ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone17ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone17ID.model)
Transform.SetPosition(level05.props.Asset_Stone17ID.transformID, {x=558.5, y=85.5625, z=668})
Transform.SetScaleNonUniform(level05.props.Asset_Stone17ID.transformID, 1.51393, 1.51393, 1.51393)
Transform.SetRotation(level05.props.Asset_Stone17ID.transformID, {x=0.0129852, y=5.49567, z=0.0809937})
level05.props.Asset_Stone18ID = {}
level05.props.Asset_Stone18ID.model = Assets.LoadModel('Models/stone_1.model')
level05.props.Asset_Stone18ID.transformID = Gear.BindStaticInstance(level05.props.Asset_Stone18ID.model)
Transform.SetPosition(level05.props.Asset_Stone18ID.transformID, {x=582.5, y=85.5625, z=662.5})
Transform.SetScaleNonUniform(level05.props.Asset_Stone18ID.transformID, 1.53664, 1.53664, 1.53664)
Transform.SetRotation(level05.props.Asset_Stone18ID.transformID, {x=0.0304108, y=3.19117, z=0.0822144})
level05.colliders.C_Parent_Tile_5ID = {}
level05.colliders.C_Parent_Tile_5ID.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID.collider:SetMinPos(398.7,30.4293,153.384)
level05.colliders.C_Parent_Tile_5ID.collider:SetMaxPos(640.3,92.5435,708.534)
level05.colliders.C_Parent_Tile_5ID.collider:SetPos(0,0,0)
level05.colliders.C_Parent_Tile_5ID1 = {}
level05.colliders.C_Parent_Tile_5ID1.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID1.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID1.collider:SetMinPos(398.7,30.4293,153.384)
level05.colliders.C_Parent_Tile_5ID1.collider:SetMaxPos(593.274,90.4086,613.247)
level05.colliders.C_Parent_Tile_5ID.collider:AddChild(level05.colliders.C_Parent_Tile_5ID1.collider)
level05.colliders.C_Parent_Tile_5ID2 = {}
level05.colliders.C_Parent_Tile_5ID2.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID2.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID2.collider:SetMinPos(419.749,37.8988,153.384)
level05.colliders.C_Parent_Tile_5ID2.collider:SetMaxPos(473.037,49.1876,225.993)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID2.collider)
level05.colliders.C_Parent_Tile_5ID3 = {}
level05.colliders.C_Parent_Tile_5ID3.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID3.collider:SetOffset(421,45.8438,217.125)
level05.colliders.C_Parent_Tile_5ID3.collider:SetAxes(0.566409, 0.0286837, -0.823625, 0.248103, -0.958965, 0.137224, 0.785892, 0.282068, 0.550283)
level05.colliders.C_Parent_Tile_5ID3.collider:SetHalfLengths(0.8,1,0.7)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID3.collider)
level05.colliders.C_Parent_Tile_5ID4 = {}
level05.colliders.C_Parent_Tile_5ID4.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID4.collider:SetOffset(424.25,47.75,224.625)
level05.colliders.C_Parent_Tile_5ID4.collider:SetAxes(0.564903, 0.0157351, -0.825007, 0.220934, -0.966198, 0.132851, 0.79503, 0.25732, 0.549285)
level05.colliders.C_Parent_Tile_5ID4.collider:SetHalfLengths(0.8,1,0.7)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID4.collider)
level05.colliders.C_Parent_Tile_5ID5 = {}
level05.colliders.C_Parent_Tile_5ID5.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID5.collider:SetOffset(458.25,44.25,216.875)
level05.colliders.C_Parent_Tile_5ID5.collider:SetAxes(0.554418, -0.109472, -0.825007, -0.0888693, -0.99343, 0.0720989, 0.82748, -0.0333449, 0.560504)
level05.colliders.C_Parent_Tile_5ID5.collider:SetHalfLengths(0.8,1,0.7)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID5.collider)
level05.colliders.C_Parent_Tile_5ID6 = {}
level05.colliders.C_Parent_Tile_5ID6.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID6.collider:SetOffset(454.75,44.625,213.75)
level05.colliders.C_Parent_Tile_5ID6.collider:SetAxes(0.557062, -0.0974699, -0.824731, -0.0317822, -0.994863, 0.0961096, 0.829862, 0.0273273, 0.557298)
level05.colliders.C_Parent_Tile_5ID6.collider:SetHalfLengths(0.8,1,0.7)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID6.collider)
level05.colliders.C_Parent_Tile_5ID7 = {}
level05.colliders.C_Parent_Tile_5ID7.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID7.collider:SetOffset(445.25,48.125,224.875)
level05.colliders.C_Parent_Tile_5ID7.collider:SetAxes(0.551749, -0.073576, -0.830758, -0.0330107, -0.997247, 0.066397, 0.833357, 0.00921059, 0.552659)
level05.colliders.C_Parent_Tile_5ID7.collider:SetHalfLengths(0.8,1,0.7)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID7.collider)
level05.colliders.C_Parent_Tile_5ID8 = {}
level05.colliders.C_Parent_Tile_5ID8.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID8.collider:SetOffset(445.75,42.25,197.625)
level05.colliders.C_Parent_Tile_5ID8.collider:SetAxes(0.563603, -0.0283692, -0.825559, 0.137913, -0.982151, 0.127903, 0.814452, 0.185942, 0.549631)
level05.colliders.C_Parent_Tile_5ID8.collider:SetHalfLengths(0.6,1,0.6)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID8.collider)
level05.colliders.C_Parent_Tile_5ID9 = {}
level05.colliders.C_Parent_Tile_5ID9.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID9.collider:SetOffset(429,47.5938,222.25)
level05.colliders.C_Parent_Tile_5ID9.collider:SetAxes(0.561252, 0.0268773, -0.827208, 0.223861, -0.967148, 0.120463, 0.796795, 0.25279, 0.548831)
level05.colliders.C_Parent_Tile_5ID9.collider:SetHalfLengths(0.6,1,0.6)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID9.collider)
level05.colliders.C_Parent_Tile_5ID10 = {}
level05.colliders.C_Parent_Tile_5ID10.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID10.collider:SetOffset(421.5,39.9688,192.625)
level05.colliders.C_Parent_Tile_5ID10.collider:SetAxes(0.54628, 0.0136732, -0.837491, 0.119096, -0.990976, 0.0615052, 0.829093, 0.133341, 0.542978)
level05.colliders.C_Parent_Tile_5ID10.collider:SetHalfLengths(0.6,1,0.6)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID10.collider)
level05.colliders.C_Parent_Tile_5ID11 = {}
level05.colliders.C_Parent_Tile_5ID11.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID11.collider:SetOffset(471.269,39.1305,154.96)
level05.colliders.C_Parent_Tile_5ID11.collider:SetAxes(0.543333, 0.0582895, -0.837491, 0.15122, -0.988065, 0.0293363, 0.825786, 0.142585, 0.545663)
level05.colliders.C_Parent_Tile_5ID11.collider:SetHalfLengths(1,1,1.3)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID11.collider)
level05.colliders.C_Parent_Tile_5ID12 = {}
level05.colliders.C_Parent_Tile_5ID12.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID12.collider:SetOffset(432.75,39.4375,185.275)
level05.colliders.C_Parent_Tile_5ID12.collider:SetAxes(0.552973, -0.0019892, -0.833197, 0.138355, -0.985895, 0.0941766, 0.821632, 0.167354, 0.544899)
level05.colliders.C_Parent_Tile_5ID12.collider:SetHalfLengths(1,1,1.3)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID12.collider)
level05.colliders.C_Parent_Tile_5ID13 = {}
level05.colliders.C_Parent_Tile_5ID13.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID13.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID13.collider:SetMinPos(401.71,39.6501,172.362)
level05.colliders.C_Parent_Tile_5ID13.collider:SetMaxPos(485.262,87.744,528)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID13.collider)
level05.colliders.C_Parent_Tile_5ID14 = {}
level05.colliders.C_Parent_Tile_5ID14.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID14.collider:SetOffset(454,65.395,388.5)
level05.colliders.C_Parent_Tile_5ID14.collider:SetAxes(-0.961524, 0, 0.274721, 0, -1, 0, 0.274721, 0, 0.961524)
level05.colliders.C_Parent_Tile_5ID14.collider:SetHalfLengths(0.3,5.52114,3.64005)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID14.collider)
level05.colliders.C_Parent_Tile_5ID15 = {}
level05.colliders.C_Parent_Tile_5ID15.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID15.collider:SetOffset(444,70.3458,401)
level05.colliders.C_Parent_Tile_5ID15.collider:SetAxes(-0.242536, 0, -0.970143, -0, -1, 0, -0.970143, 0, 0.242536)
level05.colliders.C_Parent_Tile_5ID15.collider:SetHalfLengths(0.3,7.08457,4.12311)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID15.collider)
level05.colliders.C_Parent_Tile_5ID16 = {}
level05.colliders.C_Parent_Tile_5ID16.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID16.collider:SetOffset(434.5,72.4304,403.5)
level05.colliders.C_Parent_Tile_5ID16.collider:SetAxes(-0.263117, 0, -0.964764, -0, -1, 0, -0.964764, 0, 0.263117)
level05.colliders.C_Parent_Tile_5ID16.collider:SetHalfLengths(0.3,7.08456,5.70088)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID16.collider)
level05.colliders.C_Parent_Tile_5ID17 = {}
level05.colliders.C_Parent_Tile_5ID17.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID17.collider:SetOffset(424,74.515,408.5)
level05.colliders.C_Parent_Tile_5ID17.collider:SetAxes(-0.573462, 0, -0.819232, -0, -1, 0, -0.819232, 0, 0.573462)
level05.colliders.C_Parent_Tile_5ID17.collider:SetHalfLengths(0.3,7.34514,6.10328)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID17.collider)
level05.colliders.C_Parent_Tile_5ID18 = {}
level05.colliders.C_Parent_Tile_5ID18.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID18.collider:SetOffset(416.5,76.8601,414)
level05.colliders.C_Parent_Tile_5ID18.collider:SetAxes(-0.624695, 0, -0.780869, -0, -1, 0, -0.780869, 0, 0.624695)
level05.colliders.C_Parent_Tile_5ID18.collider:SetHalfLengths(0.3,6.30286,3.20156)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID18.collider)
level05.colliders.C_Parent_Tile_5ID19 = {}
level05.colliders.C_Parent_Tile_5ID19.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID19.collider:SetOffset(410.5,78.163,416.5)
level05.colliders.C_Parent_Tile_5ID19.collider:SetAxes(-0.141421, 0, -0.98995, -0, -1, 0, -0.98995, 0, 0.141421)
level05.colliders.C_Parent_Tile_5ID19.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID19.collider)
level05.colliders.C_Parent_Tile_5ID20 = {}
level05.colliders.C_Parent_Tile_5ID20.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID20.collider:SetOffset(404.5,78.163,426.5)
level05.colliders.C_Parent_Tile_5ID20.collider:SetAxes(-0.967075, 0, -0.254493, -0, -1, 0, -0.254493, 0, 0.967075)
level05.colliders.C_Parent_Tile_5ID20.collider:SetHalfLengths(0.3,5,9.82344)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID20.collider)
level05.colliders.C_Parent_Tile_5ID21 = {}
level05.colliders.C_Parent_Tile_5ID21.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID21.collider:SetOffset(409,78.5251,479.5)
level05.colliders.C_Parent_Tile_5ID21.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID21.collider:SetHalfLengths(0.3,9.21893,48.5)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID21.collider)
level05.colliders.C_Parent_Tile_5ID22 = {}
level05.colliders.C_Parent_Tile_5ID22.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID22.collider:SetOffset(406.5,78.5251,429)
level05.colliders.C_Parent_Tile_5ID22.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level05.colliders.C_Parent_Tile_5ID22.collider:SetHalfLengths(0.3,5.22205,3.20156)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID22.collider)
level05.colliders.C_Parent_Tile_5ID23 = {}
level05.colliders.C_Parent_Tile_5ID23.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID23.collider:SetOffset(483.482,40.9063,173.941)
level05.colliders.C_Parent_Tile_5ID23.collider:SetAxes(0.544036, 0.0665065, -0.836422, 0.167848, -0.985331, 0.0308269, 0.822102, 0.157163, 0.547218)
level05.colliders.C_Parent_Tile_5ID23.collider:SetHalfLengths(1,1,1.3)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID23.collider)
level05.colliders.C_Parent_Tile_5ID24 = {}
level05.colliders.C_Parent_Tile_5ID24.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID24.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID24.collider:SetMinPos(417.7,52.0567,383)
level05.colliders.C_Parent_Tile_5ID24.collider:SetMaxPos(467.3,90.4086,476.013)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID24.collider)
level05.colliders.C_Parent_Tile_5ID25 = {}
level05.colliders.C_Parent_Tile_5ID25.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID25.collider:SetOffset(454.5,64.8738,395)
level05.colliders.C_Parent_Tile_5ID25.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level05.colliders.C_Parent_Tile_5ID25.collider:SetHalfLengths(0.3,7.34514,3.04138)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID25.collider)
level05.colliders.C_Parent_Tile_5ID26 = {}
level05.colliders.C_Parent_Tile_5ID26.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID26.collider:SetOffset(451,67.219,399)
level05.colliders.C_Parent_Tile_5ID26.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level05.colliders.C_Parent_Tile_5ID26.collider:SetHalfLengths(0.3,8.12685,3.16228)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID26.collider)
level05.colliders.C_Parent_Tile_5ID27 = {}
level05.colliders.C_Parent_Tile_5ID27.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID27.collider:SetOffset(426.5,60.4441,440.5)
level05.colliders.C_Parent_Tile_5ID27.collider:SetAxes(0.919145, -0, 0.393919, 0, -1, -0, 0.393919, 0, -0.919145)
level05.colliders.C_Parent_Tile_5ID27.collider:SetHalfLengths(0.3,5.26057,3.80789)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID27.collider)
level05.colliders.C_Parent_Tile_5ID28 = {}
level05.colliders.C_Parent_Tile_5ID28.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID28.collider:SetOffset(432.5,60.1836,433.5)
level05.colliders.C_Parent_Tile_5ID28.collider:SetAxes(0.613941, -0, 0.789352, 0, -1, -0, 0.789352, 0, -0.613941)
level05.colliders.C_Parent_Tile_5ID28.collider:SetHalfLengths(0.3,8.12685,5.70088)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID28.collider)
level05.colliders.C_Parent_Tile_5ID29 = {}
level05.colliders.C_Parent_Tile_5ID29.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID29.collider:SetOffset(443,63.3104,427.5)
level05.colliders.C_Parent_Tile_5ID29.collider:SetAxes(0.384615, -0, 0.923077, 0, -1, -0, 0.923077, 0, -0.384615)
level05.colliders.C_Parent_Tile_5ID29.collider:SetHalfLengths(0.3,5.26057,6.5)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID29.collider)
level05.colliders.C_Parent_Tile_5ID30 = {}
level05.colliders.C_Parent_Tile_5ID30.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID30.collider:SetOffset(419,77.8589,453.5)
level05.colliders.C_Parent_Tile_5ID30.collider:SetAxes(-0.999014, 0, -0.0444006, -0, -1, 0, -0.0444006, 0, 0.999014)
level05.colliders.C_Parent_Tile_5ID30.collider:SetHalfLengths(0.3,12.5497,22.5222)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID30.collider)
level05.colliders.C_Parent_Tile_5ID31 = {}
level05.colliders.C_Parent_Tile_5ID31.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID31.collider:SetOffset(467,60.4414,383.5)
level05.colliders.C_Parent_Tile_5ID31.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID31.collider:SetHalfLengths(0.3,5.0977,0.5)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID31.collider)
level05.colliders.C_Parent_Tile_5ID32 = {}
level05.colliders.C_Parent_Tile_5ID32.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID32.collider:SetOffset(467,60.5391,390.5)
level05.colliders.C_Parent_Tile_5ID32.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID32.collider:SetHalfLengths(0.3,5.66615,6.5)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID32.collider)
level05.colliders.C_Parent_Tile_5ID33 = {}
level05.colliders.C_Parent_Tile_5ID33.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID33.collider:SetOffset(434.5,70.5313,423)
level05.colliders.C_Parent_Tile_5ID33.collider:SetAxes(-0.301131, 0, -0.953583, -0, -1, 0, -0.953583, 0, 0.301131)
level05.colliders.C_Parent_Tile_5ID33.collider:SetHalfLengths(0.3,12.1056,9.96243)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID33.collider)
level05.colliders.C_Parent_Tile_5ID34 = {}
level05.colliders.C_Parent_Tile_5ID34.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID34.collider:SetOffset(422.5,77.6369,428.5)
level05.colliders.C_Parent_Tile_5ID34.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID34.collider:SetHalfLengths(0.3,5.22205,3.53553)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID34.collider)
level05.colliders.C_Parent_Tile_5ID35 = {}
level05.colliders.C_Parent_Tile_5ID35.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID35.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID35.collider:SetMinPos(417.7,33.8167,384.951)
level05.colliders.C_Parent_Tile_5ID35.collider:SetMaxPos(510.296,88.1881,528.006)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID35.collider)
level05.colliders.C_Parent_Tile_5ID36 = {}
level05.colliders.C_Parent_Tile_5ID36.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID36.collider:SetOffset(509.5,38.8167,388)
level05.colliders.C_Parent_Tile_5ID36.collider:SetAxes(-0.986394, 0, 0.164399, 0, -1, 0, 0.164399, 0, 0.986394)
level05.colliders.C_Parent_Tile_5ID36.collider:SetHalfLengths(0.3,5,3.04138)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID36.collider)
level05.colliders.C_Parent_Tile_5ID37 = {}
level05.colliders.C_Parent_Tile_5ID37.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID37.collider:SetOffset(478,45.5916,394.5)
level05.colliders.C_Parent_Tile_5ID37.collider:SetAxes(-0.994505, 0, 0.104685, 0, -1, 0, 0.104685, 0, 0.994505)
level05.colliders.C_Parent_Tile_5ID37.collider:SetHalfLengths(0.3,8.38743,9.55249)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID37.collider)
level05.colliders.C_Parent_Tile_5ID38 = {}
level05.colliders.C_Parent_Tile_5ID38.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID38.collider:SetOffset(474.5,59.1413,407.5)
level05.colliders.C_Parent_Tile_5ID38.collider:SetAxes(-0.633238, 0, 0.773957, 0, -1, 0, 0.773957, 0, 0.633238)
level05.colliders.C_Parent_Tile_5ID38.collider:SetHalfLengths(0.3,15.6834,7.10634)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID38.collider)
level05.colliders.C_Parent_Tile_5ID39 = {}
level05.colliders.C_Parent_Tile_5ID39.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID39.collider:SetOffset(479.5,48.4579,408)
level05.colliders.C_Parent_Tile_5ID39.collider:SetAxes(0.992278, 0, -0.124035, 0, -1, -0, -0.124035, 0, -0.992278)
level05.colliders.C_Parent_Tile_5ID39.collider:SetHalfLengths(0.3,5.52114,4.03113)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID39.collider)
level05.colliders.C_Parent_Tile_5ID40 = {}
level05.colliders.C_Parent_Tile_5ID40.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID40.collider:SetOffset(421,59.923,477.5)
level05.colliders.C_Parent_Tile_5ID40.collider:SetAxes(0.999555, 0, -0.0298375, 0, -1, -0, -0.0298375, 0, -0.999555)
level05.colliders.C_Parent_Tile_5ID40.collider:SetHalfLengths(0.3,5.26057,33.5149)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID40.collider)
level05.colliders.C_Parent_Tile_5ID41 = {}
level05.colliders.C_Parent_Tile_5ID41.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID41.collider:SetOffset(422.5,59.6624,444)
level05.colliders.C_Parent_Tile_5ID41.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.C_Parent_Tile_5ID41.collider:SetHalfLengths(0.3,5.78172,2.5)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID41.collider)
level05.colliders.C_Parent_Tile_5ID42 = {}
level05.colliders.C_Parent_Tile_5ID42.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID42.collider:SetOffset(450,63.0498,423.5)
level05.colliders.C_Parent_Tile_5ID42.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level05.colliders.C_Parent_Tile_5ID42.collider:SetHalfLengths(0.3,6.56343,1.80278)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID42.collider)
level05.colliders.C_Parent_Tile_5ID43 = {}
level05.colliders.C_Parent_Tile_5ID43.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID43.collider:SetOffset(418.5,70.3092,502)
level05.colliders.C_Parent_Tile_5ID43.collider:SetAxes(-0.999815, 0, 0.0192272, 0, -1, 0, 0.0192272, 0, 0.999815)
level05.colliders.C_Parent_Tile_5ID43.collider:SetHalfLengths(0.3,17.8789,26.0048)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID43.collider)
level05.colliders.C_Parent_Tile_5ID44 = {}
level05.colliders.C_Parent_Tile_5ID44.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID44.collider:SetOffset(468,61.2052,400)
level05.colliders.C_Parent_Tile_5ID44.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.C_Parent_Tile_5ID44.collider:SetHalfLengths(0.3,6.99844,3.16228)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID44.collider)
level05.colliders.C_Parent_Tile_5ID45 = {}
level05.colliders.C_Parent_Tile_5ID45.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID45.collider:SetOffset(447.5,63.4257,421)
level05.colliders.C_Parent_Tile_5ID45.collider:SetAxes(0.274721, 0, -0.961524, 0, -1, -0, -0.961524, 0, -0.274721)
level05.colliders.C_Parent_Tile_5ID45.collider:SetHalfLengths(0.3,12.1056,3.64005)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID45.collider)
level05.colliders.C_Parent_Tile_5ID46 = {}
level05.colliders.C_Parent_Tile_5ID46.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID46.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID46.collider:SetMinPos(449.709,30.4293,390.958)
level05.colliders.C_Parent_Tile_5ID46.collider:SetMaxPos(523.212,69.3527,483.159)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID46.collider)
level05.colliders.C_Parent_Tile_5ID47 = {}
level05.colliders.C_Parent_Tile_5ID47.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID47.collider:SetOffset(510.5,38.8167,394.5)
level05.colliders.C_Parent_Tile_5ID47.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.C_Parent_Tile_5ID47.collider:SetHalfLengths(0.3,6.04229,3.53553)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID47.collider)
level05.colliders.C_Parent_Tile_5ID48 = {}
level05.colliders.C_Parent_Tile_5ID48.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID48.collider:SetOffset(514,39.859,402)
level05.colliders.C_Parent_Tile_5ID48.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level05.colliders.C_Parent_Tile_5ID48.collider:SetHalfLengths(0.3,9.42971,5)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID48.collider)
level05.colliders.C_Parent_Tile_5ID49 = {}
level05.colliders.C_Parent_Tile_5ID49.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID49.collider:SetOffset(520,44.2887,409)
level05.colliders.C_Parent_Tile_5ID49.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID49.collider:SetHalfLengths(0.3,9.69028,4.24264)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID49.collider)
level05.colliders.C_Parent_Tile_5ID50 = {}
level05.colliders.C_Parent_Tile_5ID50.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID50.collider:SetOffset(453.5,63.8316,479)
level05.colliders.C_Parent_Tile_5ID50.collider:SetAxes(0.847998, 0, -0.529999, 0, -1, -0, -0.529999, 0, -0.847998)
level05.colliders.C_Parent_Tile_5ID50.collider:SetHalfLengths(0.3,5.52114,4.71699)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID50.collider)
level05.colliders.C_Parent_Tile_5ID51 = {}
level05.colliders.C_Parent_Tile_5ID51.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID51.collider:SetOffset(450.5,63.3104,473)
level05.colliders.C_Parent_Tile_5ID51.collider:SetAxes(0.970143, 0, -0.242536, 0, -1, -0, -0.242536, 0, -0.970143)
level05.colliders.C_Parent_Tile_5ID51.collider:SetHalfLengths(0.3,6.04228,2.06155)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID51.collider)
level05.colliders.C_Parent_Tile_5ID52 = {}
level05.colliders.C_Parent_Tile_5ID52.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID52.collider:SetOffset(450.5,62.2681,469)
level05.colliders.C_Parent_Tile_5ID52.collider:SetAxes(0.970143, -0, 0.242536, 0, -1, -0, 0.242536, 0, -0.970143)
level05.colliders.C_Parent_Tile_5ID52.collider:SetHalfLengths(0.3,5.78172,2.06155)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID52.collider)
level05.colliders.C_Parent_Tile_5ID53 = {}
level05.colliders.C_Parent_Tile_5ID53.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID53.collider:SetOffset(452.5,61.4864,465)
level05.colliders.C_Parent_Tile_5ID53.collider:SetAxes(0.8, -0, 0.6, 0, -1, -0, 0.6, 0, -0.8)
level05.colliders.C_Parent_Tile_5ID53.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID53.collider)
level05.colliders.C_Parent_Tile_5ID54 = {}
level05.colliders.C_Parent_Tile_5ID54.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID54.collider:SetOffset(456.5,59.1413,462)
level05.colliders.C_Parent_Tile_5ID54.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level05.colliders.C_Parent_Tile_5ID54.collider:SetHalfLengths(0.3,7.08457,2.69258)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID54.collider)
level05.colliders.C_Parent_Tile_5ID55 = {}
level05.colliders.C_Parent_Tile_5ID55.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID55.collider:SetOffset(461.5,57.0567,460.5)
level05.colliders.C_Parent_Tile_5ID55.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level05.colliders.C_Parent_Tile_5ID55.collider:SetHalfLengths(0.3,7.60571,2.54951)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID55.collider)
level05.colliders.C_Parent_Tile_5ID56 = {}
level05.colliders.C_Parent_Tile_5ID56.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID56.collider:SetOffset(466.5,54.451,460)
level05.colliders.C_Parent_Tile_5ID56.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.C_Parent_Tile_5ID56.collider:SetHalfLengths(0.3,7.60571,2.5)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID56.collider)
level05.colliders.C_Parent_Tile_5ID57 = {}
level05.colliders.C_Parent_Tile_5ID57.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID57.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID57.collider:SetMinPos(398.732,38.2464,411.76)
level05.colliders.C_Parent_Tile_5ID57.collider:SetMaxPos(527.18,87.0779,535.134)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID57.collider)
level05.colliders.C_Parent_Tile_5ID58 = {}
level05.colliders.C_Parent_Tile_5ID58.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID58.collider:SetOffset(525,48.979,413.5)
level05.colliders.C_Parent_Tile_5ID58.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level05.colliders.C_Parent_Tile_5ID58.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID58.collider)
level05.colliders.C_Parent_Tile_5ID59 = {}
level05.colliders.C_Parent_Tile_5ID59.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID59.collider:SetOffset(459,63.0498,486.5)
level05.colliders.C_Parent_Tile_5ID59.collider:SetAxes(0.759257, 0, -0.650791, 0, -1, -0, -0.650791, 0, -0.759257)
level05.colliders.C_Parent_Tile_5ID59.collider:SetHalfLengths(0.3,5.78171,4.60977)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID59.collider)
level05.colliders.C_Parent_Tile_5ID60 = {}
level05.colliders.C_Parent_Tile_5ID60.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID60.collider:SetOffset(471.5,51.8453,460)
level05.colliders.C_Parent_Tile_5ID60.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.C_Parent_Tile_5ID60.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID60.collider)
level05.colliders.C_Parent_Tile_5ID61 = {}
level05.colliders.C_Parent_Tile_5ID61.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID61.collider:SetOffset(476,49.5001,459.5)
level05.colliders.C_Parent_Tile_5ID61.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level05.colliders.C_Parent_Tile_5ID61.collider:SetHalfLengths(0.3,6.04229,2.06155)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID61.collider)
level05.colliders.C_Parent_Tile_5ID62 = {}
level05.colliders.C_Parent_Tile_5ID62.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID62.collider:SetOffset(480.5,48.4579,457.5)
level05.colliders.C_Parent_Tile_5ID62.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level05.colliders.C_Parent_Tile_5ID62.collider:SetHalfLengths(0.3,6.30285,2.91548)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID62.collider)
level05.colliders.C_Parent_Tile_5ID63 = {}
level05.colliders.C_Parent_Tile_5ID63.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID63.collider:SetOffset(485.5,47.155,454)
level05.colliders.C_Parent_Tile_5ID63.collider:SetAxes(0.624695, -0, 0.780869, 0, -1, -0, 0.780869, 0, -0.624695)
level05.colliders.C_Parent_Tile_5ID63.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID63.collider)
level05.colliders.C_Parent_Tile_5ID64 = {}
level05.colliders.C_Parent_Tile_5ID64.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID64.collider:SetOffset(489.5,45.5916,450.5)
level05.colliders.C_Parent_Tile_5ID64.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level05.colliders.C_Parent_Tile_5ID64.collider:SetHalfLengths(0.3,6.30285,2.12132)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID64.collider)
level05.colliders.C_Parent_Tile_5ID65 = {}
level05.colliders.C_Parent_Tile_5ID65.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID65.collider:SetOffset(493.5,44.2887,447.5)
level05.colliders.C_Parent_Tile_5ID65.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level05.colliders.C_Parent_Tile_5ID65.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID65.collider)
level05.colliders.C_Parent_Tile_5ID66 = {}
level05.colliders.C_Parent_Tile_5ID66.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID66.collider:SetOffset(428,61.747,510)
level05.colliders.C_Parent_Tile_5ID66.collider:SetAxes(-0.164399, 0, -0.986394, -0, -1, 0, -0.986394, 0, 0.164399)
level05.colliders.C_Parent_Tile_5ID66.collider:SetHalfLengths(0.3,6.824,6.08276)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID66.collider)
level05.colliders.C_Parent_Tile_5ID67 = {}
level05.colliders.C_Parent_Tile_5ID67.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID67.collider:SetOffset(400.5,82.0779,532)
level05.colliders.C_Parent_Tile_5ID67.collider:SetAxes(-0.894427, 0, -0.447214, -0, -1, 0, -0.447214, 0, 0.894427)
level05.colliders.C_Parent_Tile_5ID67.collider:SetHalfLengths(0.3,5,3.3541)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID67.collider)
level05.colliders.C_Parent_Tile_5ID68 = {}
level05.colliders.C_Parent_Tile_5ID68.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID68.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID68.collider:SetMinPos(398.7,32.7744,414.736)
level05.colliders.C_Parent_Tile_5ID68.collider:SetMaxPos(540.142,88.8543,546.25)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID68.collider)
level05.colliders.C_Parent_Tile_5ID69 = {}
level05.colliders.C_Parent_Tile_5ID69.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID69.collider:SetOffset(533.5,49.2396,418.5)
level05.colliders.C_Parent_Tile_5ID69.collider:SetAxes(-0.4741, 0, 0.880471, 0, -1, 0, 0.880471, 0, 0.4741)
level05.colliders.C_Parent_Tile_5ID69.collider:SetHalfLengths(0.3,5.52114,7.38241)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID69.collider)
level05.colliders.C_Parent_Tile_5ID70 = {}
level05.colliders.C_Parent_Tile_5ID70.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID70.collider:SetOffset(505.5,43.2464,446)
level05.colliders.C_Parent_Tile_5ID70.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.C_Parent_Tile_5ID70.collider:SetHalfLengths(0.3,10.472,9.5)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID70.collider)
level05.colliders.C_Parent_Tile_5ID71 = {}
level05.colliders.C_Parent_Tile_5ID71.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID71.collider:SetOffset(471,64.3527,495)
level05.colliders.C_Parent_Tile_5ID71.collider:SetAxes(0.485643, 0, -0.874157, 0, -1, -0, -0.874157, 0, -0.485643)
level05.colliders.C_Parent_Tile_5ID71.collider:SetHalfLengths(0.3,6.30285,10.2956)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID71.collider)
level05.colliders.C_Parent_Tile_5ID72 = {}
level05.colliders.C_Parent_Tile_5ID72.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID72.collider:SetOffset(435.5,60.9653,512)
level05.colliders.C_Parent_Tile_5ID72.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level05.colliders.C_Parent_Tile_5ID72.collider:SetHalfLengths(0.3,5.78171,3.3541)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID72.collider)
level05.colliders.C_Parent_Tile_5ID73 = {}
level05.colliders.C_Parent_Tile_5ID73.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID73.collider:SetOffset(408.5,82.744,526.5)
level05.colliders.C_Parent_Tile_5ID73.collider:SetAxes(0.948683, 0, -0.316228, 0, -1, -0, -0.316228, 0, -0.948683)
level05.colliders.C_Parent_Tile_5ID73.collider:SetHalfLengths(0.3,5.4441,1.58114)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID73.collider)
level05.colliders.C_Parent_Tile_5ID74 = {}
level05.colliders.C_Parent_Tile_5ID74.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID74.collider:SetOffset(420,83.1881,526.5)
level05.colliders.C_Parent_Tile_5ID74.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level05.colliders.C_Parent_Tile_5ID74.collider:SetHalfLengths(0.3,5.66615,1.80278)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID74.collider)
level05.colliders.C_Parent_Tile_5ID75 = {}
level05.colliders.C_Parent_Tile_5ID75.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID75.collider:SetOffset(423.5,82.522,525.5)
level05.colliders.C_Parent_Tile_5ID75.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level05.colliders.C_Parent_Tile_5ID75.collider:SetHalfLengths(0.3,5.22205,2.54951)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID75.collider)
level05.colliders.C_Parent_Tile_5ID76 = {}
level05.colliders.C_Parent_Tile_5ID76.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID76.collider:SetOffset(405,82.522,528)
level05.colliders.C_Parent_Tile_5ID76.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level05.colliders.C_Parent_Tile_5ID76.collider:SetHalfLengths(0.3,5.4441,3.16228)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID76.collider)
level05.colliders.C_Parent_Tile_5ID77 = {}
level05.colliders.C_Parent_Tile_5ID77.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID77.collider:SetOffset(399,82.0779,538.5)
level05.colliders.C_Parent_Tile_5ID77.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID77.collider:SetHalfLengths(0.3,5.22205,3.5)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID77.collider)
level05.colliders.C_Parent_Tile_5ID78 = {}
level05.colliders.C_Parent_Tile_5ID78.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID78.collider:SetOffset(402,81.8558,544)
level05.colliders.C_Parent_Tile_5ID78.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.C_Parent_Tile_5ID78.collider:SetHalfLengths(0.3,6.11024,3.60555)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID78.collider)
level05.colliders.C_Parent_Tile_5ID79 = {}
level05.colliders.C_Parent_Tile_5ID79.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID79.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID79.collider:SetMinPos(404.905,41.1127,421.723)
level05.colliders.C_Parent_Tile_5ID79.collider:SetMaxPos(552.115,88.8542,552.25)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID79.collider)
level05.colliders.C_Parent_Tile_5ID80 = {}
level05.colliders.C_Parent_Tile_5ID80.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID80.collider:SetOffset(546,48.7184,424.5)
level05.colliders.C_Parent_Tile_5ID80.collider:SetAxes(-0.384615, 0, 0.923077, 0, -1, 0, 0.923077, 0, 0.384615)
level05.colliders.C_Parent_Tile_5ID80.collider:SetHalfLengths(0.3,6.56343,6.5)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID80.collider)
level05.colliders.C_Parent_Tile_5ID81 = {}
level05.colliders.C_Parent_Tile_5ID81.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID81.collider:SetOffset(519,48.7184,446.5)
level05.colliders.C_Parent_Tile_5ID81.collider:SetAxes(-0.124035, 0, 0.992278, 0, -1, 0, 0.992278, 0, 0.124035)
level05.colliders.C_Parent_Tile_5ID81.collider:SetHalfLengths(0.3,7.08457,4.03113)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID81.collider)
level05.colliders.C_Parent_Tile_5ID82 = {}
level05.colliders.C_Parent_Tile_5ID82.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID82.collider:SetOffset(531,50.803,451.5)
level05.colliders.C_Parent_Tile_5ID82.collider:SetAxes(-0.490261, 0, 0.871576, 0, -1, 0, 0.871576, 0, 0.490261)
level05.colliders.C_Parent_Tile_5ID82.collider:SetHalfLengths(0.3,9.69028,9.17878)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID82.collider)
level05.colliders.C_Parent_Tile_5ID83 = {}
level05.colliders.C_Parent_Tile_5ID83.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID83.collider:SetOffset(446.5,60.9653,527)
level05.colliders.C_Parent_Tile_5ID83.collider:SetAxes(0.743294, 0, -0.668965, 0, -1, -0, -0.668965, 0, -0.743294)
level05.colliders.C_Parent_Tile_5ID83.collider:SetHalfLengths(0.3,6.04229,6.72681)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID83.collider)
level05.colliders.C_Parent_Tile_5ID84 = {}
level05.colliders.C_Parent_Tile_5ID84.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID84.collider:SetOffset(439.5,59.923,518.5)
level05.colliders.C_Parent_Tile_5ID84.collider:SetAxes(0.813733, 0, -0.581238, 0, -1, -0, -0.581238, 0, -0.813733)
level05.colliders.C_Parent_Tile_5ID84.collider:SetHalfLengths(0.3,6.04229,4.30116)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID84.collider)
level05.colliders.C_Parent_Tile_5ID85 = {}
level05.colliders.C_Parent_Tile_5ID85.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID85.collider:SetOffset(429.5,82.2999,527.5)
level05.colliders.C_Parent_Tile_5ID85.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level05.colliders.C_Parent_Tile_5ID85.collider:SetHalfLengths(0.3,5.44409,3.80789)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID85.collider)
level05.colliders.C_Parent_Tile_5ID86 = {}
level05.colliders.C_Parent_Tile_5ID86.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID86.collider:SetOffset(435.5,81.8558,531.5)
level05.colliders.C_Parent_Tile_5ID86.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID86.collider:SetHalfLengths(0.3,5.22205,3.53553)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID86.collider)
level05.colliders.C_Parent_Tile_5ID87 = {}
level05.colliders.C_Parent_Tile_5ID87.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID87.collider:SetOffset(439,81.6338,537)
level05.colliders.C_Parent_Tile_5ID87.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.C_Parent_Tile_5ID87.collider:SetHalfLengths(0.3,5.4441,3.16228)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID87.collider)
level05.colliders.C_Parent_Tile_5ID88 = {}
level05.colliders.C_Parent_Tile_5ID88.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID88.collider:SetOffset(408,82.9661,547)
level05.colliders.C_Parent_Tile_5ID88.collider:SetAxes(-0.316228, 0, 0.948683, 0, -1, 0, 0.948683, 0, 0.316228)
level05.colliders.C_Parent_Tile_5ID88.collider:SetHalfLengths(0.3,5.44409,3.16228)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID88.collider)
level05.colliders.C_Parent_Tile_5ID89 = {}
level05.colliders.C_Parent_Tile_5ID89.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID89.collider:SetOffset(414,83.4102,550)
level05.colliders.C_Parent_Tile_5ID89.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.C_Parent_Tile_5ID89.collider:SetHalfLengths(0.3,5.44409,3.60555)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID89.collider)
level05.colliders.C_Parent_Tile_5ID90 = {}
level05.colliders.C_Parent_Tile_5ID90.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID90.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID90.collider:SetMinPos(416.768,42.4156,426.72)
level05.colliders.C_Parent_Tile_5ID90.collider:SetMaxPos(580.154,89.2984,569.191)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID90.collider)
level05.colliders.C_Parent_Tile_5ID91 = {}
level05.colliders.C_Parent_Tile_5ID91.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID91.collider:SetOffset(558.5,50.2819,429.5)
level05.colliders.C_Parent_Tile_5ID91.collider:SetAxes(-0.358979, 0, 0.933346, 0, -1, 0, 0.933346, 0, 0.358979)
level05.colliders.C_Parent_Tile_5ID91.collider:SetHalfLengths(0.3,7.86628,6.96419)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID91.collider)
level05.colliders.C_Parent_Tile_5ID92 = {}
level05.colliders.C_Parent_Tile_5ID92.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID92.collider:SetOffset(572.5,53.1481,436.5)
level05.colliders.C_Parent_Tile_5ID92.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level05.colliders.C_Parent_Tile_5ID92.collider:SetHalfLengths(0.3,6.30286,8.74643)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID92.collider)
level05.colliders.C_Parent_Tile_5ID93 = {}
level05.colliders.C_Parent_Tile_5ID93.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID93.collider:SetOffset(546.5,55.4933,461)
level05.colliders.C_Parent_Tile_5ID93.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.C_Parent_Tile_5ID93.collider:SetHalfLengths(0.3,8.90857,9.01388)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID93.collider)
level05.colliders.C_Parent_Tile_5ID94 = {}
level05.colliders.C_Parent_Tile_5ID94.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID94.collider:SetOffset(499,64.3527,505)
level05.colliders.C_Parent_Tile_5ID94.collider:SetAxes(0.164399, 0, -0.986394, 0, -1, -0, -0.986394, 0, -0.164399)
level05.colliders.C_Parent_Tile_5ID94.collider:SetHalfLengths(0.3,5.26057,6.08276)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID94.collider)
level05.colliders.C_Parent_Tile_5ID95 = {}
level05.colliders.C_Parent_Tile_5ID95.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID95.collider:SetOffset(486.5,64.6133,502)
level05.colliders.C_Parent_Tile_5ID95.collider:SetAxes(0.294086, 0, -0.955779, 0, -1, -0, -0.955779, 0, -0.294086)
level05.colliders.C_Parent_Tile_5ID95.collider:SetHalfLengths(0.3,5.26057,6.80074)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID95.collider)
level05.colliders.C_Parent_Tile_5ID96 = {}
level05.colliders.C_Parent_Tile_5ID96.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID96.collider:SetOffset(462,64.6133,540)
level05.colliders.C_Parent_Tile_5ID96.collider:SetAxes(-0.371391, 0, -0.928477, -0, -1, 0, -0.928477, 0, 0.371391)
level05.colliders.C_Parent_Tile_5ID96.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID96.collider)
level05.colliders.C_Parent_Tile_5ID97 = {}
level05.colliders.C_Parent_Tile_5ID97.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID97.collider:SetOffset(454,65.1344,537)
level05.colliders.C_Parent_Tile_5ID97.collider:SetAxes(0.857493, 0, -0.514496, 0, -1, -0, -0.514496, 0, -0.857493)
level05.colliders.C_Parent_Tile_5ID97.collider:SetHalfLengths(0.3,9.16914,5.83095)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID97.collider)
level05.colliders.C_Parent_Tile_5ID98 = {}
level05.colliders.C_Parent_Tile_5ID98.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID98.collider:SetOffset(442,81.1897,543.5)
level05.colliders.C_Parent_Tile_5ID98.collider:SetAxes(-0.868243, 0, 0.496139, 0, -1, 0, 0.496139, 0, 0.868243)
level05.colliders.C_Parent_Tile_5ID98.collider:SetHalfLengths(0.3,5.8882,4.03113)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID98.collider)
level05.colliders.C_Parent_Tile_5ID99 = {}
level05.colliders.C_Parent_Tile_5ID99.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID99.collider:SetOffset(446.5,80.3015,550.5)
level05.colliders.C_Parent_Tile_5ID99.collider:SetAxes(-0.813733, 0, 0.581238, 0, -1, 0, 0.581238, 0, 0.813733)
level05.colliders.C_Parent_Tile_5ID99.collider:SetHalfLengths(0.3,5.44411,4.30116)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID99.collider)
level05.colliders.C_Parent_Tile_5ID100 = {}
level05.colliders.C_Parent_Tile_5ID100.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID100.collider:SetOffset(424,82.9661,560.5)
level05.colliders.C_Parent_Tile_5ID100.collider:SetAxes(-0.77193, 0, 0.635707, 0, -1, 0, 0.635707, 0, 0.77193)
level05.colliders.C_Parent_Tile_5ID100.collider:SetHalfLengths(0.3,6.33229,11.0114)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID100.collider)
level05.colliders.C_Parent_Tile_5ID101 = {}
level05.colliders.C_Parent_Tile_5ID101.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID101.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID101.collider:SetMinPos(432.829,51.7961,445.866)
level05.colliders.C_Parent_Tile_5ID101.collider:SetMaxPos(593.274,88.8955,613.247)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID101.collider)
level05.colliders.C_Parent_Tile_5ID102 = {}
level05.colliders.C_Parent_Tile_5ID102.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID102.collider:SetOffset(588,57.5778,448)
level05.colliders.C_Parent_Tile_5ID102.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.C_Parent_Tile_5ID102.collider:SetHalfLengths(0.3,5.78172,2.23607)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID102.collider)
level05.colliders.C_Parent_Tile_5ID103 = {}
level05.colliders.C_Parent_Tile_5ID103.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID103.collider:SetOffset(591,58.3596,454.5)
level05.colliders.C_Parent_Tile_5ID103.collider:SetAxes(-0.913812, 0, 0.406139, 0, -1, 0, 0.406139, 0, 0.913812)
level05.colliders.C_Parent_Tile_5ID103.collider:SetHalfLengths(0.3,6.30286,4.92443)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID103.collider)
level05.colliders.C_Parent_Tile_5ID104 = {}
level05.colliders.C_Parent_Tile_5ID104.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID104.collider:SetOffset(567,66.9584,490.5)
level05.colliders.C_Parent_Tile_5ID104.collider:SetAxes(-0.913812, 0, 0.406139, 0, -1, 0, 0.406139, 0, 0.913812)
level05.colliders.C_Parent_Tile_5ID104.collider:SetHalfLengths(0.3,8.12685,4.92443)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID104.collider)
level05.colliders.C_Parent_Tile_5ID105 = {}
level05.colliders.C_Parent_Tile_5ID105.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID105.collider:SetOffset(445,83.1138,591.5)
level05.colliders.C_Parent_Tile_5ID105.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID105.collider:SetHalfLengths(0.3,5.78171,2.5)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID105.collider)
level05.colliders.C_Parent_Tile_5ID106 = {}
level05.colliders.C_Parent_Tile_5ID106.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID106.collider:SetOffset(443,82.3321,596.5)
level05.colliders.C_Parent_Tile_5ID106.collider:SetAxes(-0.780869, 0, -0.624695, -0, -1, 0, -0.624695, 0, 0.780869)
level05.colliders.C_Parent_Tile_5ID106.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID106.collider)
level05.colliders.C_Parent_Tile_5ID107 = {}
level05.colliders.C_Parent_Tile_5ID107.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID107.collider:SetOffset(440,80.7687,600)
level05.colliders.C_Parent_Tile_5ID107.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID107.collider:SetHalfLengths(0.3,5.26057,1.41421)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID107.collider)
level05.colliders.C_Parent_Tile_5ID108 = {}
level05.colliders.C_Parent_Tile_5ID108.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID108.collider:SetOffset(436,80.5081,602.5)
level05.colliders.C_Parent_Tile_5ID108.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level05.colliders.C_Parent_Tile_5ID108.collider:SetHalfLengths(0.3,6.04228,3.3541)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID108.collider)
level05.colliders.C_Parent_Tile_5ID109 = {}
level05.colliders.C_Parent_Tile_5ID109.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID109.collider:SetOffset(439.5,79.4658,608.5)
level05.colliders.C_Parent_Tile_5ID109.collider:SetAxes(-0.56921, 0, 0.822192, 0, -1, 0, 0.822192, 0, 0.56921)
level05.colliders.C_Parent_Tile_5ID109.collider:SetHalfLengths(0.3,8.64799,7.90569)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID109.collider)
level05.colliders.C_Parent_Tile_5ID110 = {}
level05.colliders.C_Parent_Tile_5ID110.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID110.collider:SetOffset(498,78.4235,552.5)
level05.colliders.C_Parent_Tile_5ID110.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level05.colliders.C_Parent_Tile_5ID110.collider:SetHalfLengths(0.3,7.34514,3.64005)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID110.collider)
level05.colliders.C_Parent_Tile_5ID111 = {}
level05.colliders.C_Parent_Tile_5ID111.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID111.collider:SetOffset(528,70.9754,525)
level05.colliders.C_Parent_Tile_5ID111.collider:SetAxes(0.948683, 0, -0.316228, 0, -1, -0, -0.316228, 0, -0.948683)
level05.colliders.C_Parent_Tile_5ID111.collider:SetHalfLengths(0.3,9.66303,9.48683)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID111.collider)
level05.colliders.C_Parent_Tile_5ID112 = {}
level05.colliders.C_Parent_Tile_5ID112.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID112.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID112.collider:SetMinPos(430,46.8453,440.743)
level05.colliders.C_Parent_Tile_5ID112.collider:SetMaxPos(640.3,92.5435,708.534)
level05.colliders.C_Parent_Tile_5ID.collider:AddChild(level05.colliders.C_Parent_Tile_5ID112.collider)
level05.colliders.C_Parent_Tile_5ID113 = {}
level05.colliders.C_Parent_Tile_5ID113.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID113.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID113.collider:SetMinPos(430,46.8453,465.855)
level05.colliders.C_Parent_Tile_5ID113.collider:SetMaxPos(565.263,89.4167,575.212)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID113.collider)
level05.colliders.C_Parent_Tile_5ID114 = {}
level05.colliders.C_Parent_Tile_5ID114.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID114.collider:SetOffset(559.5,59.4018,476)
level05.colliders.C_Parent_Tile_5ID114.collider:SetAxes(-0.876216, 0, 0.481919, 0, -1, 0, 0.481919, 0, 0.876216)
level05.colliders.C_Parent_Tile_5ID114.collider:SetHalfLengths(0.3,12.5566,11.4127)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID114.collider)
level05.colliders.C_Parent_Tile_5ID115 = {}
level05.colliders.C_Parent_Tile_5ID115.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID115.collider:SetOffset(511,65.6555,506.5)
level05.colliders.C_Parent_Tile_5ID115.collider:SetAxes(0.0830455, 0, -0.996546, 0, -1, -0, -0.996546, 0, -0.0830455)
level05.colliders.C_Parent_Tile_5ID115.collider:SetHalfLengths(0.3,6.30286,6.0208)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID115.collider)
level05.colliders.C_Parent_Tile_5ID116 = {}
level05.colliders.C_Parent_Tile_5ID116.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID116.collider:SetOffset(431,84.1561,569)
level05.colliders.C_Parent_Tile_5ID116.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.C_Parent_Tile_5ID116.collider:SetHalfLengths(0.3,5.26057,1)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID116.collider)
level05.colliders.C_Parent_Tile_5ID117 = {}
level05.colliders.C_Parent_Tile_5ID117.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID117.collider:SetOffset(434.5,84.4167,570)
level05.colliders.C_Parent_Tile_5ID117.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level05.colliders.C_Parent_Tile_5ID117.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID117.collider)
level05.colliders.C_Parent_Tile_5ID118 = {}
level05.colliders.C_Parent_Tile_5ID118.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID118.collider:SetOffset(439,84.4167,573)
level05.colliders.C_Parent_Tile_5ID118.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID118.collider:SetHalfLengths(0.3,5,2.82843)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID118.collider)
level05.colliders.C_Parent_Tile_5ID119 = {}
level05.colliders.C_Parent_Tile_5ID119.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID119.collider:SetOffset(484.5,71.9093,537.5)
level05.colliders.C_Parent_Tile_5ID119.collider:SetAxes(0.581238, 0, -0.813733, 0, -1, -0, -0.813733, 0, -0.581238)
level05.colliders.C_Parent_Tile_5ID119.collider:SetHalfLengths(0.3,11.7748,4.30116)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID119.collider)
level05.colliders.C_Parent_Tile_5ID120 = {}
level05.colliders.C_Parent_Tile_5ID120.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID120.collider:SetOffset(477,65.1344,535.5)
level05.colliders.C_Parent_Tile_5ID120.collider:SetAxes(-0.124035, 0, -0.992278, -0, -1, 0, -0.992278, 0, 0.124035)
level05.colliders.C_Parent_Tile_5ID120.collider:SetHalfLengths(0.3,5.78172,4.03113)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID120.collider)
level05.colliders.C_Parent_Tile_5ID121 = {}
level05.colliders.C_Parent_Tile_5ID121.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID121.collider:SetOffset(470,64.3527,537)
level05.colliders.C_Parent_Tile_5ID121.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level05.colliders.C_Parent_Tile_5ID121.collider:SetHalfLengths(0.3,5.26057,3.16228)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID121.collider)
level05.colliders.C_Parent_Tile_5ID122 = {}
level05.colliders.C_Parent_Tile_5ID122.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID122.collider:SetOffset(450.5,80.7456,555.5)
level05.colliders.C_Parent_Tile_5ID122.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID122.collider:SetHalfLengths(0.3,5.22205,2.12132)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID122.collider)
level05.colliders.C_Parent_Tile_5ID123 = {}
level05.colliders.C_Parent_Tile_5ID123.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID123.collider:SetOffset(455,80.9676,559)
level05.colliders.C_Parent_Tile_5ID123.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.C_Parent_Tile_5ID123.collider:SetHalfLengths(0.3,6.11024,3.60555)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID123.collider)
level05.colliders.C_Parent_Tile_5ID124 = {}
level05.colliders.C_Parent_Tile_5ID124.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID124.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID124.collider:SetMinPos(440.732,47.627,440.743)
level05.colliders.C_Parent_Tile_5ID124.collider:SetMaxPos(587.212,90.7195,589.042)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID124.collider)
level05.colliders.C_Parent_Tile_5ID125 = {}
level05.colliders.C_Parent_Tile_5ID125.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID125.collider:SetOffset(582.5,54.451,442.5)
level05.colliders.C_Parent_Tile_5ID125.collider:SetAxes(-0.514496, 0, 0.857493, 0, -1, 0, 0.857493, 0, 0.514496)
level05.colliders.C_Parent_Tile_5ID125.collider:SetHalfLengths(0.3,6.824,2.91548)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID125.collider)
level05.colliders.C_Parent_Tile_5ID126 = {}
level05.colliders.C_Parent_Tile_5ID126.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID126.collider:SetOffset(586,56.275,445)
level05.colliders.C_Parent_Tile_5ID126.collider:SetAxes(-0.707107, 0, 0.707107, 0, -1, 0, 0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID126.collider:SetHalfLengths(0.3,6.30286,1.41421)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID126.collider)
level05.colliders.C_Parent_Tile_5ID127 = {}
level05.colliders.C_Parent_Tile_5ID127.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID127.collider:SetOffset(442,84.4167,577)
level05.colliders.C_Parent_Tile_5ID127.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.C_Parent_Tile_5ID127.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID127.collider)
level05.colliders.C_Parent_Tile_5ID128 = {}
level05.colliders.C_Parent_Tile_5ID128.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID128.collider:SetOffset(443.5,84.6772,580.5)
level05.colliders.C_Parent_Tile_5ID128.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.C_Parent_Tile_5ID128.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID128.collider)
level05.colliders.C_Parent_Tile_5ID129 = {}
level05.colliders.C_Parent_Tile_5ID129.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID129.collider:SetOffset(444.5,84.4167,585.5)
level05.colliders.C_Parent_Tile_5ID129.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.C_Parent_Tile_5ID129.collider:SetHalfLengths(0.3,6.30286,3.53553)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID129.collider)
level05.colliders.C_Parent_Tile_5ID130 = {}
level05.colliders.C_Parent_Tile_5ID130.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID130.collider:SetOffset(460,81.5504,564.5)
level05.colliders.C_Parent_Tile_5ID130.collider:SetAxes(-0.877896, 0, 0.478852, 0, -1, 0, 0.478852, 0, 0.877896)
level05.colliders.C_Parent_Tile_5ID130.collider:SetHalfLengths(0.3,6.30285,6.26498)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID130.collider)
level05.colliders.C_Parent_Tile_5ID131 = {}
level05.colliders.C_Parent_Tile_5ID131.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID131.collider:SetOffset(467.5,82.8532,576)
level05.colliders.C_Parent_Tile_5ID131.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level05.colliders.C_Parent_Tile_5ID131.collider:SetHalfLengths(0.3,7.60571,7.5)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID131.collider)
level05.colliders.C_Parent_Tile_5ID132 = {}
level05.colliders.C_Parent_Tile_5ID132.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID132.collider:SetOffset(494.5,76.0784,546.5)
level05.colliders.C_Parent_Tile_5ID132.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level05.colliders.C_Parent_Tile_5ID132.collider:SetHalfLengths(0.3,6.82401,3.53553)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID132.collider)
level05.colliders.C_Parent_Tile_5ID133 = {}
level05.colliders.C_Parent_Tile_5ID133.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID133.collider:SetOffset(490,74.2544,542)
level05.colliders.C_Parent_Tile_5ID133.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level05.colliders.C_Parent_Tile_5ID133.collider:SetHalfLengths(0.3,7.34514,2.82843)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID133.collider)
level05.colliders.C_Parent_Tile_5ID134 = {}
level05.colliders.C_Parent_Tile_5ID134.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID134.collider:SetOffset(521,66.3124,511.5)
level05.colliders.C_Parent_Tile_5ID134.collider:SetAxes(0.747409, 0, -0.664364, 0, -1, -0, -0.664364, 0, -0.747409)
level05.colliders.C_Parent_Tile_5ID134.collider:SetHalfLengths(0.3,5.8882,6.0208)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID134.collider)
level05.colliders.C_Parent_Tile_5ID135 = {}
level05.colliders.C_Parent_Tile_5ID135.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID135.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID135.collider:SetMinPos(471.82,53.099,458.866)
level05.colliders.C_Parent_Tile_5ID135.collider:SetMaxPos(601.285,91.5013,588.268)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID135.collider)
level05.colliders.C_Parent_Tile_5ID136 = {}
level05.colliders.C_Parent_Tile_5ID136.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID136.collider:SetOffset(595,59.6624,463)
level05.colliders.C_Parent_Tile_5ID136.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.C_Parent_Tile_5ID136.collider:SetHalfLengths(0.3,6.56343,4.47214)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID136.collider)
level05.colliders.C_Parent_Tile_5ID137 = {}
level05.colliders.C_Parent_Tile_5ID137.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID137.collider:SetOffset(599,61.2258,473)
level05.colliders.C_Parent_Tile_5ID137.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level05.colliders.C_Parent_Tile_5ID137.collider:SetHalfLengths(0.3,8.12685,6.32456)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID137.collider)
level05.colliders.C_Parent_Tile_5ID138 = {}
level05.colliders.C_Parent_Tile_5ID138.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID138.collider:SetOffset(572,70.0853,501)
level05.colliders.C_Parent_Tile_5ID138.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.C_Parent_Tile_5ID138.collider:SetHalfLengths(0.3,7.34515,6.7082)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID138.collider)
level05.colliders.C_Parent_Tile_5ID139 = {}
level05.colliders.C_Parent_Tile_5ID139.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID139.collider:SetOffset(474,85.459,583.5)
level05.colliders.C_Parent_Tile_5ID139.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level05.colliders.C_Parent_Tile_5ID139.collider:SetHalfLengths(0.3,5.26056,2.5)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID139.collider)
level05.colliders.C_Parent_Tile_5ID140 = {}
level05.colliders.C_Parent_Tile_5ID140.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID140.collider:SetOffset(479,85.1984,586.5)
level05.colliders.C_Parent_Tile_5ID140.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level05.colliders.C_Parent_Tile_5ID140.collider:SetHalfLengths(0.3,6.30286,3.3541)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID140.collider)
level05.colliders.C_Parent_Tile_5ID141 = {}
level05.colliders.C_Parent_Tile_5ID141.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID141.collider:SetOffset(490,83.635,582.5)
level05.colliders.C_Parent_Tile_5ID141.collider:SetAxes(0.640184, -0, 0.768221, 0, -1, -0, 0.768221, 0, -0.640184)
level05.colliders.C_Parent_Tile_5ID141.collider:SetHalfLengths(0.3,6.04229,3.90512)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID141.collider)
level05.colliders.C_Parent_Tile_5ID142 = {}
level05.colliders.C_Parent_Tile_5ID142.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID142.collider:SetOffset(496,82.3321,573.5)
level05.colliders.C_Parent_Tile_5ID142.collider:SetAxes(0.928477, -0, 0.371391, 0, -1, -0, 0.371391, 0, -0.928477)
level05.colliders.C_Parent_Tile_5ID142.collider:SetHalfLengths(0.3,5.78172,2.69258)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID142.collider)
level05.colliders.C_Parent_Tile_5ID143 = {}
level05.colliders.C_Parent_Tile_5ID143.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID143.collider:SetOffset(498,81.5504,567)
level05.colliders.C_Parent_Tile_5ID143.collider:SetAxes(0.970143, -0, 0.242536, 0, -1, -0, 0.242536, 0, -0.970143)
level05.colliders.C_Parent_Tile_5ID143.collider:SetHalfLengths(0.3,6.30286,4.12311)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID143.collider)
level05.colliders.C_Parent_Tile_5ID144 = {}
level05.colliders.C_Parent_Tile_5ID144.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID144.collider:SetOffset(499,80.2475,559.5)
level05.colliders.C_Parent_Tile_5ID144.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level05.colliders.C_Parent_Tile_5ID144.collider:SetHalfLengths(0.3,6.824,3.5)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID144.collider)
level05.colliders.C_Parent_Tile_5ID145 = {}
level05.colliders.C_Parent_Tile_5ID145.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID145.collider:SetOffset(532,74.7502,542.5)
level05.colliders.C_Parent_Tile_5ID145.collider:SetAxes(0.993151, 0, -0.116841, 0, -1, -0, -0.116841, 0, -0.993151)
level05.colliders.C_Parent_Tile_5ID145.collider:SetHalfLengths(0.3,8.77484,8.55862)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID145.collider)
level05.colliders.C_Parent_Tile_5ID146 = {}
level05.colliders.C_Parent_Tile_5ID146.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID146.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID146.collider:SetMinPos(445.806,53.099,478.897)
level05.colliders.C_Parent_Tile_5ID146.collider:SetMaxPos(609.282,91.2968,639.124)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID146.collider)
level05.colliders.C_Parent_Tile_5ID147 = {}
level05.colliders.C_Parent_Tile_5ID147.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID147.collider:SetOffset(605,64.3527,490)
level05.colliders.C_Parent_Tile_5ID147.collider:SetAxes(-0.939793, 0, 0.341743, 0, -1, 0, 0.341743, 0, 0.939793)
level05.colliders.C_Parent_Tile_5ID147.collider:SetHalfLengths(0.3,11.2537,11.7047)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID147.collider)
level05.colliders.C_Parent_Tile_5ID148 = {}
level05.colliders.C_Parent_Tile_5ID148.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID148.collider:SetOffset(577,72.4304,521)
level05.colliders.C_Parent_Tile_5ID148.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.C_Parent_Tile_5ID148.collider:SetHalfLengths(0.3,10.2114,14.1421)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID148.collider)
level05.colliders.C_Parent_Tile_5ID149 = {}
level05.colliders.C_Parent_Tile_5ID149.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID149.collider:SetOffset(452.5,83.1138,618.5)
level05.colliders.C_Parent_Tile_5ID149.collider:SetAxes(-0.645942, 0, 0.763386, 0, -1, 0, 0.763386, 0, 0.645942)
level05.colliders.C_Parent_Tile_5ID149.collider:SetHalfLengths(0.3,7.08458,8.51469)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID149.collider)
level05.colliders.C_Parent_Tile_5ID150 = {}
level05.colliders.C_Parent_Tile_5ID150.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID150.collider:SetOffset(462,85.1984,626)
level05.colliders.C_Parent_Tile_5ID150.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level05.colliders.C_Parent_Tile_5ID150.collider:SetHalfLengths(0.3,5,3.60555)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID150.collider)
level05.colliders.C_Parent_Tile_5ID151 = {}
level05.colliders.C_Parent_Tile_5ID151.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID151.collider:SetOffset(467.5,85.1984,633.5)
level05.colliders.C_Parent_Tile_5ID151.collider:SetAxes(-0.910366, 0, 0.413803, 0, -1, 0, 0.413803, 0, 0.910366)
level05.colliders.C_Parent_Tile_5ID151.collider:SetHalfLengths(0.3,5.78171,6.04152)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID151.collider)
level05.colliders.C_Parent_Tile_5ID152 = {}
level05.colliders.C_Parent_Tile_5ID152.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID152.collider:SetOffset(484.5,83.8955,586.5)
level05.colliders.C_Parent_Tile_5ID152.collider:SetAxes(0.514496, -0, 0.857493, 0, -1, -0, 0.857493, 0, -0.514496)
level05.colliders.C_Parent_Tile_5ID152.collider:SetHalfLengths(0.3,5.26057,2.91548)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID152.collider)
level05.colliders.C_Parent_Tile_5ID153 = {}
level05.colliders.C_Parent_Tile_5ID153.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID153.collider:SetOffset(494,82.5927,578)
level05.colliders.C_Parent_Tile_5ID153.collider:SetAxes(0.894427, -0, 0.447214, 0, -1, -0, 0.447214, 0, -0.894427)
level05.colliders.C_Parent_Tile_5ID153.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID153.collider)
level05.colliders.C_Parent_Tile_5ID154 = {}
level05.colliders.C_Parent_Tile_5ID154.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID154.collider:SetOffset(519,84.2984,600)
level05.colliders.C_Parent_Tile_5ID154.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level05.colliders.C_Parent_Tile_5ID154.collider:SetHalfLengths(0.3,6.99844,9.48683)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID154.collider)
level05.colliders.C_Parent_Tile_5ID155 = {}
level05.colliders.C_Parent_Tile_5ID155.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID155.collider:SetOffset(525.5,82.2999,580)
level05.colliders.C_Parent_Tile_5ID155.collider:SetAxes(0.952926, -0, 0.303204, 0, -1, -0, 0.303204, 0, -0.952926)
level05.colliders.C_Parent_Tile_5ID155.collider:SetHalfLengths(0.3,8.55279,11.5434)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID155.collider)
level05.colliders.C_Parent_Tile_5ID156 = {}
level05.colliders.C_Parent_Tile_5ID156.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID156.collider:SetOffset(531,78.7471,560)
level05.colliders.C_Parent_Tile_5ID156.collider:SetAxes(0.976187, -0, 0.21693, 0, -1, -0, 0.21693, 0, -0.976187)
level05.colliders.C_Parent_Tile_5ID156.collider:SetHalfLengths(0.3,8.99688,9.21954)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID156.collider)
level05.colliders.C_Parent_Tile_5ID157 = {}
level05.colliders.C_Parent_Tile_5ID157.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID157.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID157.collider:SetMinPos(469.904,62.7401,500.98)
level05.colliders.C_Parent_Tile_5ID157.collider:SetMaxPos(612.299,90.6307,668.128)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID157.collider)
level05.colliders.C_Parent_Tile_5ID158 = {}
level05.colliders.C_Parent_Tile_5ID158.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID158.collider:SetOffset(609.5,70.6064,508.5)
level05.colliders.C_Parent_Tile_5ID158.collider:SetAxes(-0.997785, 0, 0.066519, 0, -1, 0, 0.066519, 0, 0.997785)
level05.colliders.C_Parent_Tile_5ID158.collider:SetHalfLengths(0.3,7.86629,7.51665)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID158.collider)
level05.colliders.C_Parent_Tile_5ID159 = {}
level05.colliders.C_Parent_Tile_5ID159.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID159.collider:SetOffset(610,73.4727,525)
level05.colliders.C_Parent_Tile_5ID159.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID159.collider:SetHalfLengths(0.3,7.34514,9)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID159.collider)
level05.colliders.C_Parent_Tile_5ID160 = {}
level05.colliders.C_Parent_Tile_5ID160.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID160.collider:SetOffset(611,75.8178,546)
level05.colliders.C_Parent_Tile_5ID160.collider:SetAxes(-0.996546, 0, 0.0830455, 0, -1, 0, 0.0830455, 0, 0.996546)
level05.colliders.C_Parent_Tile_5ID160.collider:SetHalfLengths(0.3,9.69028,12.0416)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID160.collider)
level05.colliders.C_Parent_Tile_5ID161 = {}
level05.colliders.C_Parent_Tile_5ID161.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID161.collider:SetOffset(581.5,77.6418,552.5)
level05.colliders.C_Parent_Tile_5ID161.collider:SetAxes(-0.98995, 0, 0.141421, 0, -1, 0, 0.141421, 0, 0.98995)
level05.colliders.C_Parent_Tile_5ID161.collider:SetHalfLengths(0.3,10.2114,17.6777)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID161.collider)
level05.colliders.C_Parent_Tile_5ID162 = {}
level05.colliders.C_Parent_Tile_5ID162.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID162.collider:SetOffset(582.5,82.8532,573.5)
level05.colliders.C_Parent_Tile_5ID162.collider:SetAxes(-0.919145, 0, -0.393919, -0, -1, 0, -0.393919, 0, 0.919145)
level05.colliders.C_Parent_Tile_5ID162.collider:SetHalfLengths(0.3,7.08458,3.80789)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID162.collider)
level05.colliders.C_Parent_Tile_5ID163 = {}
level05.colliders.C_Parent_Tile_5ID163.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID163.collider:SetOffset(579,85.4086,584.5)
level05.colliders.C_Parent_Tile_5ID163.collider:SetAxes(-0.966235, 0, -0.257663, -0, -1, 0, -0.257663, 0, 0.966235)
level05.colliders.C_Parent_Tile_5ID163.collider:SetHalfLengths(0.3,5,7.76209)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID163.collider)
level05.colliders.C_Parent_Tile_5ID164 = {}
level05.colliders.C_Parent_Tile_5ID164.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID164.collider:SetOffset(559.5,84.2984,613)
level05.colliders.C_Parent_Tile_5ID164.collider:SetAxes(-0.644136, 0, -0.764911, -0, -1, 0, -0.764911, 0, 0.644136)
level05.colliders.C_Parent_Tile_5ID164.collider:SetHalfLengths(0.3,5.22205,12.4197)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID164.collider)
level05.colliders.C_Parent_Tile_5ID165 = {}
level05.colliders.C_Parent_Tile_5ID165.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID165.collider:SetOffset(526,84.9645,628)
level05.colliders.C_Parent_Tile_5ID165.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level05.colliders.C_Parent_Tile_5ID165.collider:SetHalfLengths(0.3,5,8)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID165.collider)
level05.colliders.C_Parent_Tile_5ID166 = {}
level05.colliders.C_Parent_Tile_5ID166.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID166.collider:SetOffset(517,84.9645,618.5)
level05.colliders.C_Parent_Tile_5ID166.collider:SetAxes(0.994505, 0, -0.104685, 0, -1, -0, -0.104685, 0, -0.994505)
level05.colliders.C_Parent_Tile_5ID166.collider:SetHalfLengths(0.3,5.66615,9.55249)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID166.collider)
level05.colliders.C_Parent_Tile_5ID167 = {}
level05.colliders.C_Parent_Tile_5ID167.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID167.collider:SetOffset(471.5,86.8125,666.5)
level05.colliders.C_Parent_Tile_5ID167.collider:SetAxes(-0.937706, -0.0190326, 0.346908, 0.0413585, -0.997513, 0.0570664, -0.34496, -0.0678591, -0.936161)
level05.colliders.C_Parent_Tile_5ID167.collider:SetHalfLengths(1.18105,1.96841,1.18105)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID167.collider)
level05.colliders.C_Parent_Tile_5ID168 = {}
level05.colliders.C_Parent_Tile_5ID168.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID168.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID168.collider:SetMinPos(471.283,71.0784,557.978)
level05.colliders.C_Parent_Tile_5ID168.collider:SetMaxPos(615.291,91.5188,693.074)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID168.collider)
level05.colliders.C_Parent_Tile_5ID169 = {}
level05.colliders.C_Parent_Tile_5ID169.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID169.collider:SetOffset(613,80.5081,571.5)
level05.colliders.C_Parent_Tile_5ID169.collider:SetAxes(-0.997268, 0, 0.0738717, 0, -1, 0, 0.0738717, 0, 0.997268)
level05.colliders.C_Parent_Tile_5ID169.collider:SetHalfLengths(0.3,9.42972,13.537)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID169.collider)
level05.colliders.C_Parent_Tile_5ID170 = {}
level05.colliders.C_Parent_Tile_5ID170.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID170.collider:SetOffset(614.5,84.9378,587)
level05.colliders.C_Parent_Tile_5ID170.collider:SetAxes(-0.970143, 0, 0.242536, 0, -1, 0, 0.242536, 0, 0.970143)
level05.colliders.C_Parent_Tile_5ID170.collider:SetHalfLengths(0.3,5.52113,2.06155)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID170.collider)
level05.colliders.C_Parent_Tile_5ID171 = {}
level05.colliders.C_Parent_Tile_5ID171.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID171.collider:SetOffset(573,85.4086,598.5)
level05.colliders.C_Parent_Tile_5ID171.collider:SetAxes(-0.851658, 0, -0.524097, -0, -1, 0, -0.524097, 0, 0.851658)
level05.colliders.C_Parent_Tile_5ID171.collider:SetHalfLengths(0.3,6.11024,7.63217)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID171.collider)
level05.colliders.C_Parent_Tile_5ID172 = {}
level05.colliders.C_Parent_Tile_5ID172.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID172.collider:SetOffset(542,84.5204,624.5)
level05.colliders.C_Parent_Tile_5ID172.collider:SetAxes(-0.400819, 0, -0.916157, -0, -1, 0, -0.916157, 0, 0.400819)
level05.colliders.C_Parent_Tile_5ID172.collider:SetHalfLengths(0.3,5.44411,8.73212)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID172.collider)
level05.colliders.C_Parent_Tile_5ID173 = {}
level05.colliders.C_Parent_Tile_5ID173.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID173.collider:SetOffset(481.25,86.5625,690.9)
level05.colliders.C_Parent_Tile_5ID173.collider:SetAxes(0.812847, 0.0100718, -0.58239, 0.0211229, -0.999703, 0.0121927, 0.582094, 0.0222126, 0.812818)
level05.colliders.C_Parent_Tile_5ID173.collider:SetHalfLengths(1.05261,1.05261,1.3684)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID173.collider)
level05.colliders.C_Parent_Tile_5ID174 = {}
level05.colliders.C_Parent_Tile_5ID174.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID174.collider:SetOffset(474.75,86.625,679.5)
level05.colliders.C_Parent_Tile_5ID174.collider:SetAxes(0.0279349, -0.000578081, -0.99961, -0.0363933, -0.999337, -0.000439116, 0.998947, -0.0363914, 0.0279374)
level05.colliders.C_Parent_Tile_5ID174.collider:SetHalfLengths(1.17147,1.95245,1.17147)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID174.collider)
level05.colliders.C_Parent_Tile_5ID175 = {}
level05.colliders.C_Parent_Tile_5ID175.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID175.collider:SetOffset(476,86.5,692)
level05.colliders.C_Parent_Tile_5ID175.collider:SetAxes(0.981059, 0.0111604, 0.193389, 0.00893559, -0.999884, 0.012373, -0.193505, 0.0104106, 0.981044)
level05.colliders.C_Parent_Tile_5ID175.collider:SetHalfLengths(0.898471,1.49745,0.898471)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID175.collider)
level05.colliders.C_Parent_Tile_5ID176 = {}
level05.colliders.C_Parent_Tile_5ID176.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID176.collider:SetOffset(472.25,86.25,672.5)
level05.colliders.C_Parent_Tile_5ID176.collider:SetAxes(-0.744405, -0.0218832, -0.667369, 0.0106969, -0.999725, 0.0208495, 0.667642, -0.0083817, -0.744435)
level05.colliders.C_Parent_Tile_5ID176.collider:SetHalfLengths(0.680294,0.566912,0.680294)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID176.collider)
level05.colliders.C_Parent_Tile_5ID177 = {}
level05.colliders.C_Parent_Tile_5ID177.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID177.collider:SetOffset(476.5,86.125,671)
level05.colliders.C_Parent_Tile_5ID177.collider:SetAxes(-0.969171, 0.0210176, -0.245491, -0.025113, -0.999593, 0.0135637, 0.245106, -0.0193105, -0.969304)
level05.colliders.C_Parent_Tile_5ID177.collider:SetHalfLengths(0.761174,0.634312,0.761174)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID177.collider)
level05.colliders.C_Parent_Tile_5ID178 = {}
level05.colliders.C_Parent_Tile_5ID178.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID178.collider:SetOffset(472.75,86,684)
level05.colliders.C_Parent_Tile_5ID178.collider:SetAxes(-0.698119, 0.00723328, -0.715945, -0.0186454, -0.999794, 0.00808014, 0.715739, -0.01899, -0.69811)
level05.colliders.C_Parent_Tile_5ID178.collider:SetHalfLengths(0.796753,0.663961,0.796753)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID178.collider)
level05.colliders.C_Parent_Tile_5ID179 = {}
level05.colliders.C_Parent_Tile_5ID179.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID179.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID179.collider:SetMinPos(495.547,79.6772,588.866)
level05.colliders.C_Parent_Tile_5ID179.collider:SetMaxPos(618.134,91.7618,696.579)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID179.collider)
level05.colliders.C_Parent_Tile_5ID180 = {}
level05.colliders.C_Parent_Tile_5ID180.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID180.collider:SetOffset(615.5,85.459,590)
level05.colliders.C_Parent_Tile_5ID180.collider:SetAxes(-0.894427, 0, 0.447214, 0, -1, 0, 0.447214, 0, 0.894427)
level05.colliders.C_Parent_Tile_5ID180.collider:SetHalfLengths(0.3,5.78172,1.11803)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID180.collider)
level05.colliders.C_Parent_Tile_5ID181 = {}
level05.colliders.C_Parent_Tile_5ID181.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID181.collider:SetOffset(617,86.2407,591.5)
level05.colliders.C_Parent_Tile_5ID181.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level05.colliders.C_Parent_Tile_5ID181.collider:SetHalfLengths(0.3,5.52114,1.11803)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID181.collider)
level05.colliders.C_Parent_Tile_5ID182 = {}
level05.colliders.C_Parent_Tile_5ID182.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID182.collider:SetOffset(588.5,84.9378,624.5)
level05.colliders.C_Parent_Tile_5ID182.collider:SetAxes(-0.393919, 0, -0.919145, -0, -1, 0, -0.919145, 0, 0.393919)
level05.colliders.C_Parent_Tile_5ID182.collider:SetHalfLengths(0.3,5,3.80789)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID182.collider)
level05.colliders.C_Parent_Tile_5ID183 = {}
level05.colliders.C_Parent_Tile_5ID183.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID183.collider:SetOffset(582.5,84.9378,628)
level05.colliders.C_Parent_Tile_5ID183.collider:SetAxes(-0.624695, 0, -0.780869, -0, -1, 0, -0.780869, 0, 0.624695)
level05.colliders.C_Parent_Tile_5ID183.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID183.collider)
level05.colliders.C_Parent_Tile_5ID184 = {}
level05.colliders.C_Parent_Tile_5ID184.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID184.collider:SetOffset(579,84.9378,632.5)
level05.colliders.C_Parent_Tile_5ID184.collider:SetAxes(-0.928477, 0, -0.371391, -0, -1, 0, -0.371391, 0, 0.928477)
level05.colliders.C_Parent_Tile_5ID184.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID184.collider)
level05.colliders.C_Parent_Tile_5ID185 = {}
level05.colliders.C_Parent_Tile_5ID185.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID185.collider:SetOffset(508.25,86.9375,683.9)
level05.colliders.C_Parent_Tile_5ID185.collider:SetAxes(0.769963, 0.0304921, 0.637359, -0.0226343, -0.996924, 0.0750375, -0.637687, 0.0722023, 0.766904)
level05.colliders.C_Parent_Tile_5ID185.collider:SetHalfLengths(1.51958,1.51958,1.97545)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID185.collider)
level05.colliders.C_Parent_Tile_5ID186 = {}
level05.colliders.C_Parent_Tile_5ID186.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID186.collider:SetOffset(518.5,86.75,676)
level05.colliders.C_Parent_Tile_5ID186.collider:SetAxes(0.904591, 0.00978668, 0.426168, -0.00654739, -0.999299, 0.0368459, -0.42623, 0.0361207, 0.903893)
level05.colliders.C_Parent_Tile_5ID186.collider:SetHalfLengths(1.3109,1.63863,1.14704)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID186.collider)
level05.colliders.C_Parent_Tile_5ID187 = {}
level05.colliders.C_Parent_Tile_5ID187.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID187.collider:SetOffset(497,87,695)
level05.colliders.C_Parent_Tile_5ID187.collider:SetAxes(-0.511548, -0.0532694, 0.857602, -0.0135446, -0.997452, -0.0700353, -0.859148, 0.0474423, -0.509524)
level05.colliders.C_Parent_Tile_5ID187.collider:SetHalfLengths(1.13534,1.41917,0.99342)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID187.collider)
level05.colliders.C_Parent_Tile_5ID188 = {}
level05.colliders.C_Parent_Tile_5ID188.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID188.collider:SetOffset(518.5,86.4375,681)
level05.colliders.C_Parent_Tile_5ID188.collider:SetAxes(0.672526, 0.0244136, 0.739671, -0.040207, -0.996774, 0.0694567, -0.73898, 0.0764514, 0.669375)
level05.colliders.C_Parent_Tile_5ID188.collider:SetHalfLengths(0.823487,0.686239,0.823487)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID188.collider)
level05.colliders.C_Parent_Tile_5ID189 = {}
level05.colliders.C_Parent_Tile_5ID189.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID189.collider:SetOffset(529,86,672)
level05.colliders.C_Parent_Tile_5ID189.collider:SetAxes(-0.999975, -0.00696557, 0.00144538, 0.00689477, -0.998996, -0.0442665, -0.00175227, 0.0442554, -0.999019)
level05.colliders.C_Parent_Tile_5ID189.collider:SetHalfLengths(0.885727,0.738105,0.885727)
level05.colliders.C_Parent_Tile_5ID179.collider:AddChild(level05.colliders.C_Parent_Tile_5ID189.collider)
level05.colliders.C_Parent_Tile_5ID190 = {}
level05.colliders.C_Parent_Tile_5ID190.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID190.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID190.collider:SetMinPos(487.962,79.9378,591.7)
level05.colliders.C_Parent_Tile_5ID190.collider:SetMaxPos(640,92.0224,708.534)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID190.collider)
level05.colliders.C_Parent_Tile_5ID191 = {}
level05.colliders.C_Parent_Tile_5ID191.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID191.collider:SetOffset(629,86.7618,592)
level05.colliders.C_Parent_Tile_5ID191.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level05.colliders.C_Parent_Tile_5ID191.collider:SetHalfLengths(0.3,5.26057,11)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID191.collider)
level05.colliders.C_Parent_Tile_5ID192 = {}
level05.colliders.C_Parent_Tile_5ID192.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID192.collider:SetOffset(596,84.9378,622.5)
level05.colliders.C_Parent_Tile_5ID192.collider:SetAxes(-0.124035, 0, -0.992278, -0, -1, 0, -0.992278, 0, 0.124035)
level05.colliders.C_Parent_Tile_5ID192.collider:SetHalfLengths(0.3,5,4.03113)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID192.collider)
level05.colliders.C_Parent_Tile_5ID193 = {}
level05.colliders.C_Parent_Tile_5ID193.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID193.collider:SetOffset(577.5,84.9378,637)
level05.colliders.C_Parent_Tile_5ID193.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level05.colliders.C_Parent_Tile_5ID193.collider:SetHalfLengths(0.3,5,2.06155)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID193.collider)
level05.colliders.C_Parent_Tile_5ID194 = {}
level05.colliders.C_Parent_Tile_5ID194.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID194.collider:SetOffset(490.25,86.875,705.9)
level05.colliders.C_Parent_Tile_5ID194.collider:SetAxes(0.967561, 0.0165814, -0.252091, 0.0172471, -0.999851, 0.000431213, 0.252047, 0.00476507, 0.967703)
level05.colliders.C_Parent_Tile_5ID194.collider:SetHalfLengths(1.74358,1.74358,2.26666)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID194.collider)
level05.colliders.C_Parent_Tile_5ID195 = {}
level05.colliders.C_Parent_Tile_5ID195.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID195.collider:SetOffset(527,87.125,679.9)
level05.colliders.C_Parent_Tile_5ID195.collider:SetAxes(0.968746, 0.0420661, 0.244461, 0.0105679, -0.99162, 0.128757, -0.247829, 0.122149, 0.961073)
level05.colliders.C_Parent_Tile_5ID195.collider:SetHalfLengths(1.62609,1.62609,2.11391)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID195.collider)
level05.colliders.C_Parent_Tile_5ID196 = {}
level05.colliders.C_Parent_Tile_5ID196.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID196.collider:SetOffset(548.5,86.3125,665.5)
level05.colliders.C_Parent_Tile_5ID196.collider:SetAxes(-0.921227, -0.00662087, -0.388969, 0.0295377, -0.998159, -0.0529663, 0.387902, 0.0602833, -0.919727)
level05.colliders.C_Parent_Tile_5ID196.collider:SetHalfLengths(1.2685,1.58562,1.10993)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID196.collider)
level05.colliders.C_Parent_Tile_5ID197 = {}
level05.colliders.C_Parent_Tile_5ID197.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID197.collider:SetOffset(538,86.875,674.5)
level05.colliders.C_Parent_Tile_5ID197.collider:SetAxes(-0.403593, -0.00969509, 0.914887, -0.0552462, -0.997861, -0.0349457, -0.913269, 0.0646479, -0.402194)
level05.colliders.C_Parent_Tile_5ID197.collider:SetHalfLengths(1.48767,1.85958,1.30171)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID197.collider)
level05.colliders.C_Parent_Tile_5ID198 = {}
level05.colliders.C_Parent_Tile_5ID198.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID198.collider:SetOffset(536.5,86.4375,669)
level05.colliders.C_Parent_Tile_5ID198.collider:SetAxes(-0.304982, -0.00196852, -0.952356, 0.0535384, -0.998452, -0.0150813, 0.950852, 0.0555872, -0.304615)
level05.colliders.C_Parent_Tile_5ID198.collider:SetHalfLengths(0.82909,1.38182,0.82909)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID198.collider)
level05.colliders.C_Parent_Tile_5ID199 = {}
level05.colliders.C_Parent_Tile_5ID199.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID199.collider:SetOffset(517,87.375,689.5)
level05.colliders.C_Parent_Tile_5ID199.collider:SetAxes(0.325888, 0.0299998, -0.944932, 0.299925, -0.951147, 0.0732409, 0.896572, 0.307277, 0.318965)
level05.colliders.C_Parent_Tile_5ID199.collider:SetHalfLengths(1.0404,1.734,1.0404)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID199.collider)
level05.colliders.C_Parent_Tile_5ID200 = {}
level05.colliders.C_Parent_Tile_5ID200.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID200.collider:SetOffset(506,86.625,692)
level05.colliders.C_Parent_Tile_5ID200.collider:SetAxes(-0.770791, -0.0745629, 0.63271, -0.0105095, -0.991504, -0.129649, -0.637002, 0.106581, -0.763458)
level05.colliders.C_Parent_Tile_5ID200.collider:SetHalfLengths(0.656398,0.546999,0.656398)
level05.colliders.C_Parent_Tile_5ID190.collider:AddChild(level05.colliders.C_Parent_Tile_5ID200.collider)
level05.colliders.C_Parent_Tile_5ID201 = {}
level05.colliders.C_Parent_Tile_5ID201.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID201.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID201.collider:SetMinPos(524.28,79.9378,592)
level05.colliders.C_Parent_Tile_5ID201.collider:SetMaxPos(640.3,91.5012,684.697)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID201.collider)
level05.colliders.C_Parent_Tile_5ID202 = {}
level05.colliders.C_Parent_Tile_5ID202.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID202.collider:SetOffset(640,86.5012,608)
level05.colliders.C_Parent_Tile_5ID202.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level05.colliders.C_Parent_Tile_5ID202.collider:SetHalfLengths(0.3,5,16)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID202.collider)
level05.colliders.C_Parent_Tile_5ID203 = {}
level05.colliders.C_Parent_Tile_5ID203.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID203.collider:SetOffset(607.5,84.9378,626)
level05.colliders.C_Parent_Tile_5ID203.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level05.colliders.C_Parent_Tile_5ID203.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID203.collider)
level05.colliders.C_Parent_Tile_5ID204 = {}
level05.colliders.C_Parent_Tile_5ID204.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID204.collider:SetOffset(602.5,84.9378,623)
level05.colliders.C_Parent_Tile_5ID204.collider:SetAxes(0.371391, 0, -0.928477, 0, -1, -0, -0.928477, 0, -0.371391)
level05.colliders.C_Parent_Tile_5ID204.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID204.collider)
level05.colliders.C_Parent_Tile_5ID205 = {}
level05.colliders.C_Parent_Tile_5ID205.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID205.collider:SetOffset(577,84.9378,639.5)
level05.colliders.C_Parent_Tile_5ID205.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level05.colliders.C_Parent_Tile_5ID205.collider:SetHalfLengths(0.3,5,0.5)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID205.collider)
level05.colliders.C_Parent_Tile_5ID206 = {}
level05.colliders.C_Parent_Tile_5ID206.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID206.collider:SetOffset(546.782,87.0625,674.972)
level05.colliders.C_Parent_Tile_5ID206.collider:SetAxes(-0.0779943, -0.00184381, -0.996952, 0.178084, -0.983941, -0.0121123, 0.980919, 0.178486, -0.0770702)
level05.colliders.C_Parent_Tile_5ID206.collider:SetHalfLengths(1.72924,1.72924,2.24801)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID206.collider)
level05.colliders.C_Parent_Tile_5ID207 = {}
level05.colliders.C_Parent_Tile_5ID207.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID207.collider:SetOffset(567.5,86.125,657.9)
level05.colliders.C_Parent_Tile_5ID207.collider:SetAxes(-0.714836, -0.00402492, -0.699281, 0.0204167, -0.999677, -0.0151169, 0.698994, 0.0250832, -0.714687)
level05.colliders.C_Parent_Tile_5ID207.collider:SetHalfLengths(1.38636,1.38636,1.80227)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID207.collider)
level05.colliders.C_Parent_Tile_5ID208 = {}
level05.colliders.C_Parent_Tile_5ID208.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID208.collider:SetOffset(525.5,87.3125,683.5)
level05.colliders.C_Parent_Tile_5ID208.collider:SetAxes(-0.0136206, -0.000909167, 0.999907, -0.122235, -0.992498, -0.0025675, -0.992408, 0.122258, -0.0134073)
level05.colliders.C_Parent_Tile_5ID208.collider:SetHalfLengths(1.17909,1.47386,1.0317)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID208.collider)
level05.colliders.C_Parent_Tile_5ID209 = {}
level05.colliders.C_Parent_Tile_5ID209.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID209.collider:SetOffset(539,87.25,678)
level05.colliders.C_Parent_Tile_5ID209.collider:SetAxes(0.525638, 0.0277127, 0.850257, -0.0886983, -0.992236, 0.0871746, -0.846072, 0.121239, 0.519099)
level05.colliders.C_Parent_Tile_5ID209.collider:SetHalfLengths(1.05047,1.75079,1.05047)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID209.collider)
level05.colliders.C_Parent_Tile_5ID210 = {}
level05.colliders.C_Parent_Tile_5ID210.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID210.collider:SetOffset(569.5,86.4375,665)
level05.colliders.C_Parent_Tile_5ID210.collider:SetAxes(0.798805, 0.0151403, -0.6014, 0.0634112, -0.996233, 0.0591453, 0.598239, 0.085381, 0.796756)
level05.colliders.C_Parent_Tile_5ID210.collider:SetHalfLengths(0.873183,1.45531,0.873183)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID210.collider)
level05.colliders.C_Parent_Tile_5ID211 = {}
level05.colliders.C_Parent_Tile_5ID211.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID211.collider:SetOffset(558.5,86.0625,668)
level05.colliders.C_Parent_Tile_5ID211.collider:SetAxes(0.705546, 0.00916219, 0.708605, -0.0443826, -0.997382, 0.0570871, -0.707273, 0.0717273, 0.703293)
level05.colliders.C_Parent_Tile_5ID211.collider:SetHalfLengths(0.908359,0.756966,0.908359)
level05.colliders.C_Parent_Tile_5ID201.collider:AddChild(level05.colliders.C_Parent_Tile_5ID211.collider)
level05.colliders.C_Parent_Tile_5ID212 = {}
level05.colliders.C_Parent_Tile_5ID212.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID212.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID212.collider:SetMinPos(558.815,79.9378,623.788)
level05.colliders.C_Parent_Tile_5ID212.collider:SetMaxPos(640.212,92.5435,677.858)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID212.collider)
level05.colliders.C_Parent_Tile_5ID213 = {}
level05.colliders.C_Parent_Tile_5ID213.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID213.collider:SetOffset(638,86.5012,626)
level05.colliders.C_Parent_Tile_5ID213.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID213.collider:SetHalfLengths(0.3,5.52114,2.82843)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID213.collider)
level05.colliders.C_Parent_Tile_5ID214 = {}
level05.colliders.C_Parent_Tile_5ID214.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID214.collider:SetOffset(634,87.0224,630)
level05.colliders.C_Parent_Tile_5ID214.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID214.collider:SetHalfLengths(0.3,5.26057,2.82843)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID214.collider)
level05.colliders.C_Parent_Tile_5ID215 = {}
level05.colliders.C_Parent_Tile_5ID215.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID215.collider:SetOffset(628.5,86.7618,635.5)
level05.colliders.C_Parent_Tile_5ID215.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level05.colliders.C_Parent_Tile_5ID215.collider:SetHalfLengths(0.3,5.26057,4.94975)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID215.collider)
level05.colliders.C_Parent_Tile_5ID216 = {}
level05.colliders.C_Parent_Tile_5ID216.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID216.collider:SetOffset(619.5,86.5012,639)
level05.colliders.C_Parent_Tile_5ID216.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level05.colliders.C_Parent_Tile_5ID216.collider:SetHalfLengths(0.3,6.04229,5.5)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID216.collider)
level05.colliders.C_Parent_Tile_5ID217 = {}
level05.colliders.C_Parent_Tile_5ID217.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID217.collider:SetOffset(613.5,85.459,636.5)
level05.colliders.C_Parent_Tile_5ID217.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level05.colliders.C_Parent_Tile_5ID217.collider:SetHalfLengths(0.3,5.26056,2.54951)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID217.collider)
level05.colliders.C_Parent_Tile_5ID218 = {}
level05.colliders.C_Parent_Tile_5ID218.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID218.collider:SetOffset(611.5,85.1984,631)
level05.colliders.C_Parent_Tile_5ID218.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level05.colliders.C_Parent_Tile_5ID218.collider:SetHalfLengths(0.3,5.26057,3.3541)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID218.collider)
level05.colliders.C_Parent_Tile_5ID219 = {}
level05.colliders.C_Parent_Tile_5ID219.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID219.collider:SetOffset(567,86.875,670.5)
level05.colliders.C_Parent_Tile_5ID219.collider:SetAxes(-0.959446, -0.0264026, 0.280653, -0.00799312, -0.992656, -0.12071, -0.281778, 0.118058, -0.952189)
level05.colliders.C_Parent_Tile_5ID219.collider:SetHalfLengths(1.37573,1.71966,1.20376)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID219.collider)
level05.colliders.C_Parent_Tile_5ID220 = {}
level05.colliders.C_Parent_Tile_5ID220.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID220.collider:SetOffset(560,87.5,676.5)
level05.colliders.C_Parent_Tile_5ID220.collider:SetAxes(-0.955167, -0.0428784, -0.292947, 0.120098, -0.960509, -0.250996, 0.270616, 0.274925, -0.922596)
level05.colliders.C_Parent_Tile_5ID220.collider:SetHalfLengths(0.831324,1.38554,0.831324)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID220.collider)
level05.colliders.C_Parent_Tile_5ID221 = {}
level05.colliders.C_Parent_Tile_5ID221.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID221.collider:SetOffset(582.5,86.0625,662.5)
level05.colliders.C_Parent_Tile_5ID221.collider:SetAxes(-0.99831, -0.0303687, 0.0495554, 0.0262357, -0.996285, -0.0820209, -0.0518621, 0.0805821, -0.995398)
level05.colliders.C_Parent_Tile_5ID221.collider:SetHalfLengths(0.921983,0.768319,0.921983)
level05.colliders.C_Parent_Tile_5ID212.collider:AddChild(level05.colliders.C_Parent_Tile_5ID221.collider)
CollisionHandler.AddAABB(level05.colliders.C_Parent_Tile_5ID.collider, 3)
level05.colliders.C_Parent_Tile_5ID1 = nil
level05.colliders.C_Parent_Tile_5ID2 = nil
level05.colliders.C_Parent_Tile_5ID3 = nil
level05.colliders.C_Parent_Tile_5ID4 = nil
level05.colliders.C_Parent_Tile_5ID5 = nil
level05.colliders.C_Parent_Tile_5ID6 = nil
level05.colliders.C_Parent_Tile_5ID7 = nil
level05.colliders.C_Parent_Tile_5ID8 = nil
level05.colliders.C_Parent_Tile_5ID9 = nil
level05.colliders.C_Parent_Tile_5ID10 = nil
level05.colliders.C_Parent_Tile_5ID11 = nil
level05.colliders.C_Parent_Tile_5ID12 = nil
level05.colliders.C_Parent_Tile_5ID13 = nil
level05.colliders.C_Parent_Tile_5ID14 = nil
level05.colliders.C_Parent_Tile_5ID15 = nil
level05.colliders.C_Parent_Tile_5ID16 = nil
level05.colliders.C_Parent_Tile_5ID17 = nil
level05.colliders.C_Parent_Tile_5ID18 = nil
level05.colliders.C_Parent_Tile_5ID19 = nil
level05.colliders.C_Parent_Tile_5ID20 = nil
level05.colliders.C_Parent_Tile_5ID21 = nil
level05.colliders.C_Parent_Tile_5ID22 = nil
level05.colliders.C_Parent_Tile_5ID23 = nil
level05.colliders.C_Parent_Tile_5ID24 = nil
level05.colliders.C_Parent_Tile_5ID25 = nil
level05.colliders.C_Parent_Tile_5ID26 = nil
level05.colliders.C_Parent_Tile_5ID27 = nil
level05.colliders.C_Parent_Tile_5ID28 = nil
level05.colliders.C_Parent_Tile_5ID29 = nil
level05.colliders.C_Parent_Tile_5ID30 = nil
level05.colliders.C_Parent_Tile_5ID31 = nil
level05.colliders.C_Parent_Tile_5ID32 = nil
level05.colliders.C_Parent_Tile_5ID33 = nil
level05.colliders.C_Parent_Tile_5ID34 = nil
level05.colliders.C_Parent_Tile_5ID35 = nil
level05.colliders.C_Parent_Tile_5ID36 = nil
level05.colliders.C_Parent_Tile_5ID37 = nil
level05.colliders.C_Parent_Tile_5ID38 = nil
level05.colliders.C_Parent_Tile_5ID39 = nil
level05.colliders.C_Parent_Tile_5ID40 = nil
level05.colliders.C_Parent_Tile_5ID41 = nil
level05.colliders.C_Parent_Tile_5ID42 = nil
level05.colliders.C_Parent_Tile_5ID43 = nil
level05.colliders.C_Parent_Tile_5ID44 = nil
level05.colliders.C_Parent_Tile_5ID45 = nil
level05.colliders.C_Parent_Tile_5ID46 = nil
level05.colliders.C_Parent_Tile_5ID47 = nil
level05.colliders.C_Parent_Tile_5ID48 = nil
level05.colliders.C_Parent_Tile_5ID49 = nil
level05.colliders.C_Parent_Tile_5ID50 = nil
level05.colliders.C_Parent_Tile_5ID51 = nil
level05.colliders.C_Parent_Tile_5ID52 = nil
level05.colliders.C_Parent_Tile_5ID53 = nil
level05.colliders.C_Parent_Tile_5ID54 = nil
level05.colliders.C_Parent_Tile_5ID55 = nil
level05.colliders.C_Parent_Tile_5ID56 = nil
level05.colliders.C_Parent_Tile_5ID57 = nil
level05.colliders.C_Parent_Tile_5ID58 = nil
level05.colliders.C_Parent_Tile_5ID59 = nil
level05.colliders.C_Parent_Tile_5ID60 = nil
level05.colliders.C_Parent_Tile_5ID61 = nil
level05.colliders.C_Parent_Tile_5ID62 = nil
level05.colliders.C_Parent_Tile_5ID63 = nil
level05.colliders.C_Parent_Tile_5ID64 = nil
level05.colliders.C_Parent_Tile_5ID65 = nil
level05.colliders.C_Parent_Tile_5ID66 = nil
level05.colliders.C_Parent_Tile_5ID67 = nil
level05.colliders.C_Parent_Tile_5ID68 = nil
level05.colliders.C_Parent_Tile_5ID69 = nil
level05.colliders.C_Parent_Tile_5ID70 = nil
level05.colliders.C_Parent_Tile_5ID71 = nil
level05.colliders.C_Parent_Tile_5ID72 = nil
level05.colliders.C_Parent_Tile_5ID73 = nil
level05.colliders.C_Parent_Tile_5ID74 = nil
level05.colliders.C_Parent_Tile_5ID75 = nil
level05.colliders.C_Parent_Tile_5ID76 = nil
level05.colliders.C_Parent_Tile_5ID77 = nil
level05.colliders.C_Parent_Tile_5ID78 = nil
level05.colliders.C_Parent_Tile_5ID79 = nil
level05.colliders.C_Parent_Tile_5ID80 = nil
level05.colliders.C_Parent_Tile_5ID81 = nil
level05.colliders.C_Parent_Tile_5ID82 = nil
level05.colliders.C_Parent_Tile_5ID83 = nil
level05.colliders.C_Parent_Tile_5ID84 = nil
level05.colliders.C_Parent_Tile_5ID85 = nil
level05.colliders.C_Parent_Tile_5ID86 = nil
level05.colliders.C_Parent_Tile_5ID87 = nil
level05.colliders.C_Parent_Tile_5ID88 = nil
level05.colliders.C_Parent_Tile_5ID89 = nil
level05.colliders.C_Parent_Tile_5ID90 = nil
level05.colliders.C_Parent_Tile_5ID91 = nil
level05.colliders.C_Parent_Tile_5ID92 = nil
level05.colliders.C_Parent_Tile_5ID93 = nil
level05.colliders.C_Parent_Tile_5ID94 = nil
level05.colliders.C_Parent_Tile_5ID95 = nil
level05.colliders.C_Parent_Tile_5ID96 = nil
level05.colliders.C_Parent_Tile_5ID97 = nil
level05.colliders.C_Parent_Tile_5ID98 = nil
level05.colliders.C_Parent_Tile_5ID99 = nil
level05.colliders.C_Parent_Tile_5ID100 = nil
level05.colliders.C_Parent_Tile_5ID101 = nil
level05.colliders.C_Parent_Tile_5ID102 = nil
level05.colliders.C_Parent_Tile_5ID103 = nil
level05.colliders.C_Parent_Tile_5ID104 = nil
level05.colliders.C_Parent_Tile_5ID105 = nil
level05.colliders.C_Parent_Tile_5ID106 = nil
level05.colliders.C_Parent_Tile_5ID107 = nil
level05.colliders.C_Parent_Tile_5ID108 = nil
level05.colliders.C_Parent_Tile_5ID109 = nil
level05.colliders.C_Parent_Tile_5ID110 = nil
level05.colliders.C_Parent_Tile_5ID111 = nil
level05.colliders.C_Parent_Tile_5ID112 = nil
level05.colliders.C_Parent_Tile_5ID113 = nil
level05.colliders.C_Parent_Tile_5ID114 = nil
level05.colliders.C_Parent_Tile_5ID115 = nil
level05.colliders.C_Parent_Tile_5ID116 = nil
level05.colliders.C_Parent_Tile_5ID117 = nil
level05.colliders.C_Parent_Tile_5ID118 = nil
level05.colliders.C_Parent_Tile_5ID119 = nil
level05.colliders.C_Parent_Tile_5ID120 = nil
level05.colliders.C_Parent_Tile_5ID121 = nil
level05.colliders.C_Parent_Tile_5ID122 = nil
level05.colliders.C_Parent_Tile_5ID123 = nil
level05.colliders.C_Parent_Tile_5ID124 = nil
level05.colliders.C_Parent_Tile_5ID125 = nil
level05.colliders.C_Parent_Tile_5ID126 = nil
level05.colliders.C_Parent_Tile_5ID127 = nil
level05.colliders.C_Parent_Tile_5ID128 = nil
level05.colliders.C_Parent_Tile_5ID129 = nil
level05.colliders.C_Parent_Tile_5ID130 = nil
level05.colliders.C_Parent_Tile_5ID131 = nil
level05.colliders.C_Parent_Tile_5ID132 = nil
level05.colliders.C_Parent_Tile_5ID133 = nil
level05.colliders.C_Parent_Tile_5ID134 = nil
level05.colliders.C_Parent_Tile_5ID135 = nil
level05.colliders.C_Parent_Tile_5ID136 = nil
level05.colliders.C_Parent_Tile_5ID137 = nil
level05.colliders.C_Parent_Tile_5ID138 = nil
level05.colliders.C_Parent_Tile_5ID139 = nil
level05.colliders.C_Parent_Tile_5ID140 = nil
level05.colliders.C_Parent_Tile_5ID141 = nil
level05.colliders.C_Parent_Tile_5ID142 = nil
level05.colliders.C_Parent_Tile_5ID143 = nil
level05.colliders.C_Parent_Tile_5ID144 = nil
level05.colliders.C_Parent_Tile_5ID145 = nil
level05.colliders.C_Parent_Tile_5ID146 = nil
level05.colliders.C_Parent_Tile_5ID147 = nil
level05.colliders.C_Parent_Tile_5ID148 = nil
level05.colliders.C_Parent_Tile_5ID149 = nil
level05.colliders.C_Parent_Tile_5ID150 = nil
level05.colliders.C_Parent_Tile_5ID151 = nil
level05.colliders.C_Parent_Tile_5ID152 = nil
level05.colliders.C_Parent_Tile_5ID153 = nil
level05.colliders.C_Parent_Tile_5ID154 = nil
level05.colliders.C_Parent_Tile_5ID155 = nil
level05.colliders.C_Parent_Tile_5ID156 = nil
level05.colliders.C_Parent_Tile_5ID157 = nil
level05.colliders.C_Parent_Tile_5ID158 = nil
level05.colliders.C_Parent_Tile_5ID159 = nil
level05.colliders.C_Parent_Tile_5ID160 = nil
level05.colliders.C_Parent_Tile_5ID161 = nil
level05.colliders.C_Parent_Tile_5ID162 = nil
level05.colliders.C_Parent_Tile_5ID163 = nil
level05.colliders.C_Parent_Tile_5ID164 = nil
level05.colliders.C_Parent_Tile_5ID165 = nil
level05.colliders.C_Parent_Tile_5ID166 = nil
level05.colliders.C_Parent_Tile_5ID167 = nil
level05.colliders.C_Parent_Tile_5ID168 = nil
level05.colliders.C_Parent_Tile_5ID169 = nil
level05.colliders.C_Parent_Tile_5ID170 = nil
level05.colliders.C_Parent_Tile_5ID171 = nil
level05.colliders.C_Parent_Tile_5ID172 = nil
level05.colliders.C_Parent_Tile_5ID173 = nil
level05.colliders.C_Parent_Tile_5ID174 = nil
level05.colliders.C_Parent_Tile_5ID175 = nil
level05.colliders.C_Parent_Tile_5ID176 = nil
level05.colliders.C_Parent_Tile_5ID177 = nil
level05.colliders.C_Parent_Tile_5ID178 = nil
level05.colliders.C_Parent_Tile_5ID179 = nil
level05.colliders.C_Parent_Tile_5ID180 = nil
level05.colliders.C_Parent_Tile_5ID181 = nil
level05.colliders.C_Parent_Tile_5ID182 = nil
level05.colliders.C_Parent_Tile_5ID183 = nil
level05.colliders.C_Parent_Tile_5ID184 = nil
level05.colliders.C_Parent_Tile_5ID185 = nil
level05.colliders.C_Parent_Tile_5ID186 = nil
level05.colliders.C_Parent_Tile_5ID187 = nil
level05.colliders.C_Parent_Tile_5ID188 = nil
level05.colliders.C_Parent_Tile_5ID189 = nil
level05.colliders.C_Parent_Tile_5ID190 = nil
level05.colliders.C_Parent_Tile_5ID191 = nil
level05.colliders.C_Parent_Tile_5ID192 = nil
level05.colliders.C_Parent_Tile_5ID193 = nil
level05.colliders.C_Parent_Tile_5ID194 = nil
level05.colliders.C_Parent_Tile_5ID195 = nil
level05.colliders.C_Parent_Tile_5ID196 = nil
level05.colliders.C_Parent_Tile_5ID197 = nil
level05.colliders.C_Parent_Tile_5ID198 = nil
level05.colliders.C_Parent_Tile_5ID199 = nil
level05.colliders.C_Parent_Tile_5ID200 = nil
level05.colliders.C_Parent_Tile_5ID201 = nil
level05.colliders.C_Parent_Tile_5ID202 = nil
level05.colliders.C_Parent_Tile_5ID203 = nil
level05.colliders.C_Parent_Tile_5ID204 = nil
level05.colliders.C_Parent_Tile_5ID205 = nil
level05.colliders.C_Parent_Tile_5ID206 = nil
level05.colliders.C_Parent_Tile_5ID207 = nil
level05.colliders.C_Parent_Tile_5ID208 = nil
level05.colliders.C_Parent_Tile_5ID209 = nil
level05.colliders.C_Parent_Tile_5ID210 = nil
level05.colliders.C_Parent_Tile_5ID211 = nil
level05.colliders.C_Parent_Tile_5ID212 = nil
level05.colliders.C_Parent_Tile_5ID213 = nil
level05.colliders.C_Parent_Tile_5ID214 = nil
level05.colliders.C_Parent_Tile_5ID215 = nil
level05.colliders.C_Parent_Tile_5ID216 = nil
level05.colliders.C_Parent_Tile_5ID217 = nil
level05.colliders.C_Parent_Tile_5ID218 = nil
level05.colliders.C_Parent_Tile_5ID219 = nil
level05.colliders.C_Parent_Tile_5ID220 = nil
level05.colliders.C_Parent_Tile_5ID221 = nil
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
level05.triggers.New3ID.lightIndex = Light.addLight(18.0324, 193.05, 97.4149, 1, 1, 1, 1,300)
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
Gear.UnbindInstance(level05.props.Asset_Stone24ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone24ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone25ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone25ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone26ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone26ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone27ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone27ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone28ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone28ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone29ID.transformID)
Assets.UnloadModel('Models/Stone2.model')
level05.props.Asset_Stone29ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone371ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone371ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone372ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone372ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone373ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone373ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone374ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone374ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone375ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone375ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone376ID.transformID)
Assets.UnloadModel('Models/Stone3.model')
level05.props.Asset_Stone376ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone461ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone461ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone462ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone462ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone463ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone463ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone464ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone464ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone465ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone465ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone466ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone466ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone467ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone467ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone468ID.transformID)
Assets.UnloadModel('Models/Stone4.model')
level05.props.Asset_Stone468ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone11ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone11ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone12ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone12ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone13ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone13ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone14ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone14ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone15ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone15ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone16ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone16ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone17ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone17ID = nil
Gear.UnbindInstance(level05.props.Asset_Stone18ID.transformID)
Assets.UnloadModel('Models/stone_1.model')
level05.props.Asset_Stone18ID = nil
level05.colliders.C_Parent_Tile_51ID = nil
level05.colliders.C_Parent_Tile_52ID = nil
level05.colliders.C_Parent_Tile_53ID = nil
level05.colliders.C_Parent_Tile_54ID = nil
level05.colliders.C_Parent_Tile_55ID = nil
level05.colliders.C_Parent_Tile_56ID = nil
level05.colliders.C_Parent_Tile_57ID = nil
level05.colliders.C_Parent_Tile_58ID = nil
level05.colliders.C_Parent_Tile_59ID = nil
level05.colliders.C_Parent_Tile_510ID = nil
level05.colliders.C_Parent_Tile_511ID = nil
level05.colliders.C_Parent_Tile_512ID = nil
level05.colliders.C_Parent_Tile_513ID = nil
level05.colliders.C_Parent_Tile_514ID = nil
level05.colliders.C_Parent_Tile_515ID = nil
level05.colliders.C_Parent_Tile_516ID = nil
level05.colliders.C_Parent_Tile_517ID = nil
level05.colliders.C_Parent_Tile_518ID = nil
level05.colliders.C_Parent_Tile_519ID = nil
level05.colliders.C_Parent_Tile_520ID = nil
level05.colliders.C_Parent_Tile_521ID = nil
level05.colliders.C_Parent_Tile_522ID = nil
level05.colliders.C_Parent_Tile_5ID = nil
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
level06.props.Tile6_FenceID = {}
level06.props.Tile6_FenceID.model = Assets.LoadModel('Models/tile6_fence.model')
level06.props.Tile6_FenceID.transformID = Gear.BindStaticInstance(level06.props.Tile6_FenceID.model)
Transform.SetPosition(level06.props.Tile6_FenceID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.Tile6_FenceID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.Tile6_FenceID.transformID, {x=-0, y=0, z=-0})
level06.props.New31ID = {}
level06.props.New31ID.lightIndex = Light.addLight(443.5, 205.428, 790.5, 1, 1, 1, 500,1)
level06.props.Asset_Torch23ID = {}
level06.props.Asset_Torch23ID.model = Assets.LoadModel('Models/Torch.model')
level06.props.Asset_Torch23ID.transformID = Gear.BindStaticInstance(level06.props.Asset_Torch23ID.model)
Transform.SetPosition(level06.props.Asset_Torch23ID.transformID, {x=407.25, y=104.188, z=727})
Transform.SetScaleNonUniform(level06.props.Asset_Torch23ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level06.props.Asset_Torch23ID.transformID, {x=-0, y=0, z=-0})
level06.props.Asset_Torch23ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level06.props.Asset_Torch23ID.particle, 407.25, 107.188, 727)
Particle.SetAlive(level06.props.Asset_Torch23ID.particle)
level06.props.Asset_Torch23ID.lightIndex = Light.addLight(407.25, 107.188, 727, 1, 0.576471, 0.160784, 6,2.5)
level06.props.Asset_Torch24ID = {}
level06.props.Asset_Torch24ID.model = Assets.LoadModel('Models/Torch.model')
level06.props.Asset_Torch24ID.transformID = Gear.BindStaticInstance(level06.props.Asset_Torch24ID.model)
Transform.SetPosition(level06.props.Asset_Torch24ID.transformID, {x=408, y=102.938, z=715})
Transform.SetScaleNonUniform(level06.props.Asset_Torch24ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level06.props.Asset_Torch24ID.transformID, {x=-0, y=0, z=-0})
level06.props.Asset_Torch24ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level06.props.Asset_Torch24ID.particle, 408, 105.938, 715)
Particle.SetAlive(level06.props.Asset_Torch24ID.particle)
level06.props.Asset_Torch24ID.lightIndex = Light.addLight(408, 105.938, 715, 1, 0.576471, 0.160784, 6,2.5)
level06.colliders.C_Parent_Tile_6ID = {}
level06.colliders.C_Parent_Tile_6ID.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID.collider:SetMinPos(382.716,62.5339,639.841)
level06.colliders.C_Parent_Tile_6ID.collider:SetMaxPos(607.234,247.997,811.674)
level06.colliders.C_Parent_Tile_6ID.collider:SetPos(0,0,0)
level06.colliders.C_Parent_Tile_6ID1 = {}
level06.colliders.C_Parent_Tile_6ID1.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID1.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID1.collider:SetMinPos(383.7,62.5339,639.841)
level06.colliders.C_Parent_Tile_6ID1.collider:SetMaxPos(475.296,111.318,728.297)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID1.collider)
level06.colliders.C_Parent_Tile_6ID2 = {}
level06.colliders.C_Parent_Tile_6ID2.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID2.collider:SetOffset(472.5,85.0848,644)
level06.colliders.C_Parent_Tile_6ID2.collider:SetAxes(-0.847998, 0, 0.529999, 0, -1, 0, 0.529999, 0, 0.847998)
level06.colliders.C_Parent_Tile_6ID2.collider:SetHalfLengths(0.3,5,4.71699)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID2.collider)
level06.colliders.C_Parent_Tile_6ID3 = {}
level06.colliders.C_Parent_Tile_6ID3.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID3.collider:SetOffset(474.5,85.0848,651)
level06.colliders.C_Parent_Tile_6ID3.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level06.colliders.C_Parent_Tile_6ID3.collider:SetHalfLengths(0.3,5,3.04138)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID3.collider)
level06.colliders.C_Parent_Tile_6ID4 = {}
level06.colliders.C_Parent_Tile_6ID4.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID4.collider:SetOffset(473,85.0848,656.5)
level06.colliders.C_Parent_Tile_6ID4.collider:SetAxes(-0.928477, 0, -0.371391, -0, -1, 0, -0.371391, 0, 0.928477)
level06.colliders.C_Parent_Tile_6ID4.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID4.collider)
level06.colliders.C_Parent_Tile_6ID5 = {}
level06.colliders.C_Parent_Tile_6ID5.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID5.collider:SetOffset(466,85.0848,663.5)
level06.colliders.C_Parent_Tile_6ID5.collider:SetAxes(-0.6, 0, -0.8, -0, -1, 0, -0.8, 0, 0.6)
level06.colliders.C_Parent_Tile_6ID5.collider:SetHalfLengths(0.3,5,7.5)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID5.collider)
level06.colliders.C_Parent_Tile_6ID6 = {}
level06.colliders.C_Parent_Tile_6ID6.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID6.collider:SetOffset(395.5,103.078,716)
level06.colliders.C_Parent_Tile_6ID6.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level06.colliders.C_Parent_Tile_6ID6.collider:SetHalfLengths(0.3,7.98466,11.5)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID6.collider)
level06.colliders.C_Parent_Tile_6ID7 = {}
level06.colliders.C_Parent_Tile_6ID7.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID7.collider:SetOffset(384,106.063,714.5)
level06.colliders.C_Parent_Tile_6ID7.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level06.colliders.C_Parent_Tile_6ID7.collider:SetHalfLengths(0.3,5.25583,1.5)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID7.collider)
level06.colliders.C_Parent_Tile_6ID8 = {}
level06.colliders.C_Parent_Tile_6ID8.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID8.collider:SetOffset(395,104.954,726.5)
level06.colliders.C_Parent_Tile_6ID8.collider:SetAxes(-0.135113, 0, 0.99083, 0, -1, 0, 0.99083, 0, 0.135113)
level06.colliders.C_Parent_Tile_6ID8.collider:SetHalfLengths(0.3,5.42638,11.1018)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID8.collider)
level06.colliders.C_Parent_Tile_6ID9 = {}
level06.colliders.C_Parent_Tile_6ID9.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID9.collider:SetOffset(464,84.5271,673)
level06.colliders.C_Parent_Tile_6ID9.collider:SetAxes(-0.780869, 0, 0.624695, 0, -1, 0, 0.624695, 0, 0.780869)
level06.colliders.C_Parent_Tile_6ID9.collider:SetHalfLengths(0.3,5.76805,6.40312)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID9.collider)
level06.colliders.C_Parent_Tile_6ID10 = {}
level06.colliders.C_Parent_Tile_6ID10.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID10.collider:SetOffset(427.5,84.9111,710)
level06.colliders.C_Parent_Tile_6ID10.collider:SetAxes(0.0643823, 0, -0.997925, 0, -1, -0, -0.997925, 0, -0.0643823)
level06.colliders.C_Parent_Tile_6ID10.collider:SetHalfLengths(0.3,22.3772,15.5322)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID10.collider)
level06.colliders.C_Parent_Tile_6ID11 = {}
level06.colliders.C_Parent_Tile_6ID11.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID11.collider:SetOffset(409.5,102.288,712.5)
level06.colliders.C_Parent_Tile_6ID11.collider:SetAxes(-0.813733, 0, -0.581238, -0, -1, 0, -0.581238, 0, 0.813733)
level06.colliders.C_Parent_Tile_6ID11.collider:SetHalfLengths(0.3,5.67205,4.30116)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID11.collider)
level06.colliders.C_Parent_Tile_6ID12 = {}
level06.colliders.C_Parent_Tile_6ID12.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID12.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID12.collider:SetMinPos(383.7,66.7582,677.933)
level06.colliders.C_Parent_Tile_6ID12.collider:SetMaxPos(505.111,110.892,737.299)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID12.collider)
level06.colliders.C_Parent_Tile_6ID13 = {}
level06.colliders.C_Parent_Tile_6ID13.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID13.collider:SetOffset(502.5,85.0848,697)
level06.colliders.C_Parent_Tile_6ID13.collider:SetAxes(-0.371391, 0, -0.928477, -0, -1, 0, -0.928477, 0, 0.371391)
level06.colliders.C_Parent_Tile_6ID13.collider:SetHalfLengths(0.3,5.93803,2.69258)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID13.collider)
level06.colliders.C_Parent_Tile_6ID14 = {}
level06.colliders.C_Parent_Tile_6ID14.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID14.collider:SetOffset(496,86.0228,709)
level06.colliders.C_Parent_Tile_6ID14.collider:SetAxes(-0.939793, 0, -0.341743, -0, -1, 0, -0.341743, 0, 0.939793)
level06.colliders.C_Parent_Tile_6ID14.collider:SetHalfLengths(0.3,5.08527,11.7047)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID14.collider)
level06.colliders.C_Parent_Tile_6ID15 = {}
level06.colliders.C_Parent_Tile_6ID15.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID15.collider:SetOffset(384,104.954,728.5)
level06.colliders.C_Parent_Tile_6ID15.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level06.colliders.C_Parent_Tile_6ID15.collider:SetHalfLengths(0.3,5.93803,3.5)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID15.collider)
level06.colliders.C_Parent_Tile_6ID16 = {}
level06.colliders.C_Parent_Tile_6ID16.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID16.collider:SetOffset(469.5,85.2951,684.5)
level06.colliders.C_Parent_Tile_6ID16.collider:SetAxes(-0.974391, 0, 0.22486, 0, -1, 0, 0.22486, 0, 0.974391)
level06.colliders.C_Parent_Tile_6ID16.collider:SetHalfLengths(0.3,5.09601,6.67083)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID16.collider)
level06.colliders.C_Parent_Tile_6ID17 = {}
level06.colliders.C_Parent_Tile_6ID17.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID17.collider:SetOffset(470.5,85.3911,694.5)
level06.colliders.C_Parent_Tile_6ID17.collider:SetAxes(-0.98995, 0, -0.141421, -0, -1, 0, -0.141421, 0, 0.98995)
level06.colliders.C_Parent_Tile_6ID17.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID17.collider)
level06.colliders.C_Parent_Tile_6ID18 = {}
level06.colliders.C_Parent_Tile_6ID18.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID18.collider:SetOffset(469.5,85.1031,701.5)
level06.colliders.C_Parent_Tile_6ID18.collider:SetAxes(-0.98995, 0, -0.141421, -0, -1, 0, -0.141421, 0, 0.98995)
level06.colliders.C_Parent_Tile_6ID18.collider:SetHalfLengths(0.3,5.38403,3.53553)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID18.collider)
level06.colliders.C_Parent_Tile_6ID19 = {}
level06.colliders.C_Parent_Tile_6ID19.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID19.collider:SetOffset(466,85.4871,707)
level06.colliders.C_Parent_Tile_6ID19.collider:SetAxes(-0.5547, 0, -0.83205, -0, -1, 0, -0.83205, 0, 0.5547)
level06.colliders.C_Parent_Tile_6ID19.collider:SetHalfLengths(0.3,5,3.60555)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID19.collider)
level06.colliders.C_Parent_Tile_6ID20 = {}
level06.colliders.C_Parent_Tile_6ID20.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID20.collider:SetOffset(453,85.4871,710)
level06.colliders.C_Parent_Tile_6ID20.collider:SetAxes(-0.0995037, 0, -0.995037, -0, -1, 0, -0.995037, 0, 0.0995037)
level06.colliders.C_Parent_Tile_6ID20.collider:SetHalfLengths(0.3,5.57604,10.0499)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID20.collider)
level06.colliders.C_Parent_Tile_6ID21 = {}
level06.colliders.C_Parent_Tile_6ID21.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID21.collider:SetOffset(427,88.2713,735.5)
level06.colliders.C_Parent_Tile_6ID21.collider:SetAxes(0.0995037, 0, -0.995037, 0, -1, -0, -0.995037, 0, -0.0995037)
level06.colliders.C_Parent_Tile_6ID21.collider:SetHalfLengths(0.3,21.5131,15.0748)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID21.collider)
level06.colliders.C_Parent_Tile_6ID22 = {}
level06.colliders.C_Parent_Tile_6ID22.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID22.collider:SetOffset(409,104.784,731)
level06.colliders.C_Parent_Tile_6ID22.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level06.colliders.C_Parent_Tile_6ID22.collider:SetHalfLengths(0.3,5,4.24264)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID22.collider)
level06.colliders.C_Parent_Tile_6ID23 = {}
level06.colliders.C_Parent_Tile_6ID23.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID23.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID23.collider:SetMinPos(441.979,79.239,640)
level06.colliders.C_Parent_Tile_6ID23.collider:SetMaxPos(579.279,93.6553,738.299)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID23.collider)
level06.colliders.C_Parent_Tile_6ID24 = {}
level06.colliders.C_Parent_Tile_6ID24.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID24.collider:SetOffset(512,85.0848,702.5)
level06.colliders.C_Parent_Tile_6ID24.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level06.colliders.C_Parent_Tile_6ID24.collider:SetHalfLengths(0.3,5,0.5)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID24.collider)
level06.colliders.C_Parent_Tile_6ID25 = {}
level06.colliders.C_Parent_Tile_6ID25.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID25.collider:SetOffset(508.5,85.0848,695.5)
level06.colliders.C_Parent_Tile_6ID25.collider:SetAxes(-0.141421, 0, -0.98995, -0, -1, 0, -0.98995, 0, 0.141421)
level06.colliders.C_Parent_Tile_6ID25.collider:SetHalfLengths(0.3,5,3.53553)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID25.collider)
level06.colliders.C_Parent_Tile_6ID26 = {}
level06.colliders.C_Parent_Tile_6ID26.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID26.collider:SetOffset(480,85.9375,727.5)
level06.colliders.C_Parent_Tile_6ID26.collider:SetAxes(-0.529999, 0, -0.847998, -0, -1, 0, -0.847998, 0, 0.529999)
level06.colliders.C_Parent_Tile_6ID26.collider:SetHalfLengths(0.3,5.3411,14.151)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID26.collider)
level06.colliders.C_Parent_Tile_6ID27 = {}
level06.colliders.C_Parent_Tile_6ID27.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID27.collider:SetOffset(462,86.2786,736.5)
level06.colliders.C_Parent_Tile_6ID27.collider:SetAxes(-0.242536, 0, -0.970142, -0, -1, 0, -0.970142, 0, 0.242536)
level06.colliders.C_Parent_Tile_6ID27.collider:SetHalfLengths(0.3,5.3411,6.18466)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID27.collider)
level06.colliders.C_Parent_Tile_6ID28 = {}
level06.colliders.C_Parent_Tile_6ID28.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID28.collider:SetOffset(577,85.1031,642)
level06.colliders.C_Parent_Tile_6ID28.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level06.colliders.C_Parent_Tile_6ID28.collider:SetHalfLengths(0.3,5,2)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID28.collider)
level06.colliders.C_Parent_Tile_6ID29 = {}
level06.colliders.C_Parent_Tile_6ID29.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID29.collider:SetOffset(578,85.1031,646.5)
level06.colliders.C_Parent_Tile_6ID29.collider:SetAxes(-0.928477, 0, 0.371391, 0, -1, 0, 0.371391, 0, 0.928477)
level06.colliders.C_Parent_Tile_6ID29.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID29.collider)
level06.colliders.C_Parent_Tile_6ID30 = {}
level06.colliders.C_Parent_Tile_6ID30.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID30.collider:SetOffset(537,86.7352,684.5)
level06.colliders.C_Parent_Tile_6ID30.collider:SetAxes(-0.287348, 0, -0.957826, -0, -1, 0, -0.957826, 0, 0.287348)
level06.colliders.C_Parent_Tile_6ID30.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID30.collider)
level06.colliders.C_Parent_Tile_6ID31 = {}
level06.colliders.C_Parent_Tile_6ID31.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID31.collider:SetOffset(526,86.6392,688.5)
level06.colliders.C_Parent_Tile_6ID31.collider:SetAxes(-0.384615, 0, -0.923077, -0, -1, 0, -0.923077, 0, 0.384615)
level06.colliders.C_Parent_Tile_6ID31.collider:SetHalfLengths(0.3,5.19201,6.5)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID31.collider)
level06.colliders.C_Parent_Tile_6ID32 = {}
level06.colliders.C_Parent_Tile_6ID32.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID32.collider:SetOffset(516,86.4472,693)
level06.colliders.C_Parent_Tile_6ID32.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level06.colliders.C_Parent_Tile_6ID32.collider:SetHalfLengths(0.3,7.20815,4.47214)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID32.collider)
level06.colliders.C_Parent_Tile_6ID33 = {}
level06.colliders.C_Parent_Tile_6ID33.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID33.collider:SetOffset(449,86.6392,737.5)
level06.colliders.C_Parent_Tile_6ID33.collider:SetAxes(0.071247, 0, -0.997459, 0, -1, -0, -0.997459, 0, -0.071247)
level06.colliders.C_Parent_Tile_6ID33.collider:SetHalfLengths(0.3,6.63211,7.01783)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID33.collider)
level06.colliders.C_Parent_Tile_6ID34 = {}
level06.colliders.C_Parent_Tile_6ID34.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID34.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID34.collider:SetMinPos(382.716,79.9111,648.82)
level06.colliders.C_Parent_Tile_6ID34.collider:SetMaxPos(603.042,247.997,811.674)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID34.collider)
level06.colliders.C_Parent_Tile_6ID35 = {}
level06.colliders.C_Parent_Tile_6ID35.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID35.collider:SetOffset(580.5,85.1031,651)
level06.colliders.C_Parent_Tile_6ID35.collider:SetAxes(-0.8, 0, 0.6, 0, -1, 0, 0.6, 0, 0.8)
level06.colliders.C_Parent_Tile_6ID35.collider:SetHalfLengths(0.3,5,2.5)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID35.collider)
level06.colliders.C_Parent_Tile_6ID36 = {}
level06.colliders.C_Parent_Tile_6ID36.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID36.collider:SetOffset(584,85.1031,654.5)
level06.colliders.C_Parent_Tile_6ID36.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level06.colliders.C_Parent_Tile_6ID36.collider:SetHalfLengths(0.3,5.096,2.5)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID36.collider)
level06.colliders.C_Parent_Tile_6ID37 = {}
level06.colliders.C_Parent_Tile_6ID37.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID37.collider:SetOffset(588.5,85.1991,657)
level06.colliders.C_Parent_Tile_6ID37.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level06.colliders.C_Parent_Tile_6ID37.collider:SetHalfLengths(0.3,5.28802,2.69258)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID37.collider)
level06.colliders.C_Parent_Tile_6ID38 = {}
level06.colliders.C_Parent_Tile_6ID38.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID38.collider:SetOffset(593.5,85.4871,658)
level06.colliders.C_Parent_Tile_6ID38.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level06.colliders.C_Parent_Tile_6ID38.collider:SetHalfLengths(0.3,5.19201,2.5)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID38.collider)
level06.colliders.C_Parent_Tile_6ID39 = {}
level06.colliders.C_Parent_Tile_6ID39.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID39.collider:SetOffset(599.5,85.6791,657.5)
level06.colliders.C_Parent_Tile_6ID39.collider:SetAxes(0.141421, -0, 0.98995, 0, -1, -0, 0.98995, 0, -0.141421)
level06.colliders.C_Parent_Tile_6ID39.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID39.collider)
level06.colliders.C_Parent_Tile_6ID40 = {}
level06.colliders.C_Parent_Tile_6ID40.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID40.collider:SetOffset(580,86.9272,675.5)
level06.colliders.C_Parent_Tile_6ID40.collider:SetAxes(-0.287348, 0, -0.957826, -0, -1, 0, -0.957826, 0, 0.287348)
level06.colliders.C_Parent_Tile_6ID40.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID40.collider)
level06.colliders.C_Parent_Tile_6ID41 = {}
level06.colliders.C_Parent_Tile_6ID41.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID41.collider:SetOffset(569.5,87.0232,678)
level06.colliders.C_Parent_Tile_6ID41.collider:SetAxes(-0.178885, 0, -0.98387, -0, -1, 0, -0.98387, 0, 0.178885)
level06.colliders.C_Parent_Tile_6ID41.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID41.collider)
level06.colliders.C_Parent_Tile_6ID42 = {}
level06.colliders.C_Parent_Tile_6ID42.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID42.collider:SetOffset(558.5,86.9272,680)
level06.colliders.C_Parent_Tile_6ID42.collider:SetAxes(-0.178885, 0, -0.98387, -0, -1, 0, -0.98387, 0, 0.178885)
level06.colliders.C_Parent_Tile_6ID42.collider:SetHalfLengths(0.3,5.096,5.59017)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID42.collider)
level06.colliders.C_Parent_Tile_6ID43 = {}
level06.colliders.C_Parent_Tile_6ID43.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID43.collider:SetOffset(547.5,86.8312,682)
level06.colliders.C_Parent_Tile_6ID43.collider:SetAxes(-0.178885, 0, -0.98387, -0, -1, 0, -0.98387, 0, 0.178885)
level06.colliders.C_Parent_Tile_6ID43.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID43.collider)
level06.colliders.C_Parent_Tile_6ID44 = {}
level06.colliders.C_Parent_Tile_6ID44.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID44.collider:SetOffset(443.5,205.428,790.5)
level06.colliders.C_Parent_Tile_6ID44.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level06.colliders.C_Parent_Tile_6ID44.collider:SetHalfLengths(60.7841,42.5685,21.1744)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID44.collider)
level06.colliders.C_Parent_Tile_6ID45 = {}
level06.colliders.C_Parent_Tile_6ID45.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID45.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID45.collider:SetMinPos(584.854,80.1031,656.813)
level06.colliders.C_Parent_Tile_6ID45.collider:SetMaxPos(607.234,91.9272,674.262)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID45.collider)
level06.colliders.C_Parent_Tile_6ID46 = {}
level06.colliders.C_Parent_Tile_6ID46.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID46.collider:SetOffset(605,85.9672,659.5)
level06.colliders.C_Parent_Tile_6ID46.collider:SetAxes(-0.780869, 0, 0.624695, 0, -1, 0, 0.624695, 0, 0.780869)
level06.colliders.C_Parent_Tile_6ID46.collider:SetHalfLengths(0.3,5.86406,3.20156)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID46.collider)
level06.colliders.C_Parent_Tile_6ID47 = {}
level06.colliders.C_Parent_Tile_6ID47.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID47.collider:SetOffset(600.5,86.8312,665.5)
level06.colliders.C_Parent_Tile_6ID47.collider:SetAxes(-0.4741, 0, -0.880471, -0, -1, 0, -0.880471, 0, 0.4741)
level06.colliders.C_Parent_Tile_6ID47.collider:SetHalfLengths(0.3,5,7.38241)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID47.collider)
level06.colliders.C_Parent_Tile_6ID48 = {}
level06.colliders.C_Parent_Tile_6ID48.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID48.collider:SetOffset(589.5,86.8312,671.5)
level06.colliders.C_Parent_Tile_6ID48.collider:SetAxes(-0.485643, 0, -0.874157, -0, -1, 0, -0.874157, 0, 0.485643)
level06.colliders.C_Parent_Tile_6ID48.collider:SetHalfLengths(0.3,5.096,5.14782)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID48.collider)
CollisionHandler.AddAABB(level06.colliders.C_Parent_Tile_6ID.collider, 3)
level06.colliders.C_Parent_Tile_6ID1 = nil
level06.colliders.C_Parent_Tile_6ID2 = nil
level06.colliders.C_Parent_Tile_6ID3 = nil
level06.colliders.C_Parent_Tile_6ID4 = nil
level06.colliders.C_Parent_Tile_6ID5 = nil
level06.colliders.C_Parent_Tile_6ID6 = nil
level06.colliders.C_Parent_Tile_6ID7 = nil
level06.colliders.C_Parent_Tile_6ID8 = nil
level06.colliders.C_Parent_Tile_6ID9 = nil
level06.colliders.C_Parent_Tile_6ID10 = nil
level06.colliders.C_Parent_Tile_6ID11 = nil
level06.colliders.C_Parent_Tile_6ID12 = nil
level06.colliders.C_Parent_Tile_6ID13 = nil
level06.colliders.C_Parent_Tile_6ID14 = nil
level06.colliders.C_Parent_Tile_6ID15 = nil
level06.colliders.C_Parent_Tile_6ID16 = nil
level06.colliders.C_Parent_Tile_6ID17 = nil
level06.colliders.C_Parent_Tile_6ID18 = nil
level06.colliders.C_Parent_Tile_6ID19 = nil
level06.colliders.C_Parent_Tile_6ID20 = nil
level06.colliders.C_Parent_Tile_6ID21 = nil
level06.colliders.C_Parent_Tile_6ID22 = nil
level06.colliders.C_Parent_Tile_6ID23 = nil
level06.colliders.C_Parent_Tile_6ID24 = nil
level06.colliders.C_Parent_Tile_6ID25 = nil
level06.colliders.C_Parent_Tile_6ID26 = nil
level06.colliders.C_Parent_Tile_6ID27 = nil
level06.colliders.C_Parent_Tile_6ID28 = nil
level06.colliders.C_Parent_Tile_6ID29 = nil
level06.colliders.C_Parent_Tile_6ID30 = nil
level06.colliders.C_Parent_Tile_6ID31 = nil
level06.colliders.C_Parent_Tile_6ID32 = nil
level06.colliders.C_Parent_Tile_6ID33 = nil
level06.colliders.C_Parent_Tile_6ID34 = nil
level06.colliders.C_Parent_Tile_6ID35 = nil
level06.colliders.C_Parent_Tile_6ID36 = nil
level06.colliders.C_Parent_Tile_6ID37 = nil
level06.colliders.C_Parent_Tile_6ID38 = nil
level06.colliders.C_Parent_Tile_6ID39 = nil
level06.colliders.C_Parent_Tile_6ID40 = nil
level06.colliders.C_Parent_Tile_6ID41 = nil
level06.colliders.C_Parent_Tile_6ID42 = nil
level06.colliders.C_Parent_Tile_6ID43 = nil
level06.colliders.C_Parent_Tile_6ID44 = nil
level06.colliders.C_Parent_Tile_6ID45 = nil
level06.colliders.C_Parent_Tile_6ID46 = nil
level06.colliders.C_Parent_Tile_6ID47 = nil
level06.colliders.C_Parent_Tile_6ID48 = nil
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
Light.removeLight(level06.props.Asset_Torch23ID.lightIndex)
Gear.UnbindInstance(level06.props.Asset_Torch23ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level06.props.Asset_Torch23ID = nil
Light.removeLight(level06.props.Asset_Torch24ID.lightIndex)
Gear.UnbindInstance(level06.props.Asset_Torch24ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level06.props.Asset_Torch24ID = nil
level06.colliders.C_Parent_Tile_61ID = nil
level06.colliders.C_Parent_Tile_62ID = nil
level06.colliders.C_Parent_Tile_63ID = nil
level06.colliders.C_Parent_Tile_64ID = nil
level06.colliders.C_Parent_Tile_65ID = nil
level06.colliders.C_Parent_Tile_6ID = nil
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
level07.props.PineTreeWickedID = {}
level07.props.PineTreeWickedID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWickedID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWickedID.model)
Transform.SetPosition(level07.props.PineTreeWickedID.transformID, {x=377.25, y=131.625, z=614})
Transform.SetScaleNonUniform(level07.props.PineTreeWickedID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWickedID.transformID, {x=-0, y=0.964525, z=-0})
level07.props.PineTreeWicked1ID = {}
level07.props.PineTreeWicked1ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked1ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked1ID.model)
Transform.SetPosition(level07.props.PineTreeWicked1ID.transformID, {x=337.5, y=125.012, z=627.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked1ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked1ID.transformID, {x=-0, y=0, z=-0.184674})
level07.props.PineTreeWicked2ID = {}
level07.props.PineTreeWicked2ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked2ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked2ID.model)
Transform.SetPosition(level07.props.PineTreeWicked2ID.transformID, {x=379.25, y=125.375, z=652})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked2ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked2ID.transformID, {x=-0, y=-0.679363, z=-0})
level07.props.PineTreeWicked3ID = {}
level07.props.PineTreeWicked3ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked3ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked3ID.model)
Transform.SetPosition(level07.props.PineTreeWicked3ID.transformID, {x=355, y=132.487, z=602.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked3ID.transformID, {x=-0.239221, y=-1.12973, z=-0})
level07.props.PineTreeWicked4ID = {}
level07.props.PineTreeWicked4ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked4ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked4ID.model)
Transform.SetPosition(level07.props.PineTreeWicked4ID.transformID, {x=198.125, y=101.688, z=770})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked4ID.transformID, {x=-0, y=-0.951199, z=-0})
level07.props.PineTreeWicked5ID = {}
level07.props.PineTreeWicked5ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked5ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked5ID.model)
Transform.SetPosition(level07.props.PineTreeWicked5ID.transformID, {x=192.375, y=102.313, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked5ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked5ID.transformID, {x=0.0631531, y=0, z=-0})
level07.props.PineTreeWicked6ID = {}
level07.props.PineTreeWicked6ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked6ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked6ID.model)
Transform.SetPosition(level07.props.PineTreeWicked6ID.transformID, {x=187, y=102.563, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked6ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked6ID.transformID, {x=-0, y=1.63621, z=-0})
level07.props.PineTreeWicked7ID = {}
level07.props.PineTreeWicked7ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked7ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked7ID.model)
Transform.SetPosition(level07.props.PineTreeWicked7ID.transformID, {x=180.375, y=102.938, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked7ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked7ID.transformID, {x=-0, y=-1.11427, z=-0})
level07.props.PineTreeWicked8ID = {}
level07.props.PineTreeWicked8ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked8ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked8ID.model)
Transform.SetPosition(level07.props.PineTreeWicked8ID.transformID, {x=175.125, y=103, z=769.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked8ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked8ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked9ID = {}
level07.props.PineTreeWicked9ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked9ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked9ID.model)
Transform.SetPosition(level07.props.PineTreeWicked9ID.transformID, {x=169.25, y=102.875, z=769})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked9ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked9ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked10ID = {}
level07.props.PineTreeWicked10ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked10ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked10ID.model)
Transform.SetPosition(level07.props.PineTreeWicked10ID.transformID, {x=161.625, y=102.938, z=769})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked10ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked10ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked11ID = {}
level07.props.PineTreeWicked11ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked11ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked11ID.model)
Transform.SetPosition(level07.props.PineTreeWicked11ID.transformID, {x=155.875, y=101.688, z=769})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked11ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked11ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone3ID = {}
level07.props.Asset_Stone3ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Asset_Stone3ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone3ID.model)
Transform.SetPosition(level07.props.Asset_Stone3ID.transformID, {x=183.375, y=102.375, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone3ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone36ID = {}
level07.props.Asset_Stone36ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Asset_Stone36ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone36ID.model)
Transform.SetPosition(level07.props.Asset_Stone36ID.transformID, {x=171.625, y=102.688, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone36ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone36ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone4ID = {}
level07.props.Asset_Stone4ID.model = Assets.LoadModel('Models/Stone4.model')
level07.props.Asset_Stone4ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone4ID.model)
Transform.SetPosition(level07.props.Asset_Stone4ID.transformID, {x=164.5, y=102.75, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone4ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone44ID = {}
level07.props.Asset_Stone44ID.model = Assets.LoadModel('Models/Stone4.model')
level07.props.Asset_Stone44ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone44ID.model)
Transform.SetPosition(level07.props.Asset_Stone44ID.transformID, {x=177.375, y=102.625, z=768.5})
Transform.SetScaleNonUniform(level07.props.Asset_Stone44ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone44ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Stone45ID = {}
level07.props.Asset_Stone45ID.model = Assets.LoadModel('Models/Stone4.model')
level07.props.Asset_Stone45ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Stone45ID.model)
Transform.SetPosition(level07.props.Asset_Stone45ID.transformID, {x=194.75, y=106.063, z=769})
Transform.SetScaleNonUniform(level07.props.Asset_Stone45ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.Asset_Stone45ID.transformID, {x=-0, y=0, z=-0})
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
level07.props.PineTreeWicked13ID = {}
level07.props.PineTreeWicked13ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked13ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked13ID.model)
Transform.SetPosition(level07.props.PineTreeWicked13ID.transformID, {x=332.25, y=103.875, z=706})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked13ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked13ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked14ID = {}
level07.props.PineTreeWicked14ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked14ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked14ID.model)
Transform.SetPosition(level07.props.PineTreeWicked14ID.transformID, {x=366.25, y=103.063, z=731.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked14ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked14ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked15ID = {}
level07.props.PineTreeWicked15ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked15ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked15ID.model)
Transform.SetPosition(level07.props.PineTreeWicked15ID.transformID, {x=321, y=101.688, z=743.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked15ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked15ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked16ID = {}
level07.props.PineTreeWicked16ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked16ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked16ID.model)
Transform.SetPosition(level07.props.PineTreeWicked16ID.transformID, {x=269.5, y=94.875, z=653})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked16ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked16ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked17ID = {}
level07.props.PineTreeWicked17ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked17ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked17ID.model)
Transform.SetPosition(level07.props.PineTreeWicked17ID.transformID, {x=228.25, y=102, z=644.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked17ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked17ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked18ID = {}
level07.props.PineTreeWicked18ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked18ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked18ID.model)
Transform.SetPosition(level07.props.PineTreeWicked18ID.transformID, {x=255.75, y=92.75, z=671})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked18ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked18ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked19ID = {}
level07.props.PineTreeWicked19ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked19ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked19ID.model)
Transform.SetPosition(level07.props.PineTreeWicked19ID.transformID, {x=250.875, y=104.813, z=620.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked19ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked19ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked20ID = {}
level07.props.PineTreeWicked20ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked20ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked20ID.model)
Transform.SetPosition(level07.props.PineTreeWicked20ID.transformID, {x=148.875, y=95.875, z=744.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked20ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked20ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked21ID = {}
level07.props.PineTreeWicked21ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked21ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked21ID.model)
Transform.SetPosition(level07.props.PineTreeWicked21ID.transformID, {x=143.75, y=89.3125, z=724})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked21ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked21ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked22ID = {}
level07.props.PineTreeWicked22ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked22ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked22ID.model)
Transform.SetPosition(level07.props.PineTreeWicked22ID.transformID, {x=191.875, y=85.75, z=716.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked22ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked22ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked23ID = {}
level07.props.PineTreeWicked23ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked23ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked23ID.model)
Transform.SetPosition(level07.props.PineTreeWicked23ID.transformID, {x=193.5, y=89.3125, z=717})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked23ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked23ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked24ID = {}
level07.props.PineTreeWicked24ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked24ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked24ID.model)
Transform.SetPosition(level07.props.PineTreeWicked24ID.transformID, {x=173.375, y=85.75, z=711.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked24ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked24ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked25ID = {}
level07.props.PineTreeWicked25ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked25ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked25ID.model)
Transform.SetPosition(level07.props.PineTreeWicked25ID.transformID, {x=193.75, y=97.625, z=758.5})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked25ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked25ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked26ID = {}
level07.props.PineTreeWicked26ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked26ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked26ID.model)
Transform.SetPosition(level07.props.PineTreeWicked26ID.transformID, {x=169.25, y=94.3125, z=742})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked26ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked26ID.transformID, {x=-0, y=0, z=-0})
level07.props.PineTreeWicked27ID = {}
level07.props.PineTreeWicked27ID.model = Assets.LoadModel('Models/Wicked_pineTree1.model')
level07.props.PineTreeWicked27ID.transformID = Gear.BindStaticInstance(level07.props.PineTreeWicked27ID.model)
Transform.SetPosition(level07.props.PineTreeWicked27ID.transformID, {x=164, y=99.3125, z=759})
Transform.SetScaleNonUniform(level07.props.PineTreeWicked27ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.PineTreeWicked27ID.transformID, {x=-0, y=0, z=-0})
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
level07.props.Asset_Torch25ID = {}
level07.props.Asset_Torch25ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch25ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch25ID.model)
Transform.SetPosition(level07.props.Asset_Torch25ID.transformID, {x=369.75, y=99.5625, z=749})
Transform.SetScaleNonUniform(level07.props.Asset_Torch25ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch25ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch25ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch25ID.particle, 369.75, 102.563, 749)
Particle.SetAlive(level07.props.Asset_Torch25ID.particle)
level07.props.Asset_Torch25ID.lightIndex = Light.addLight(369.75, 102.563, 749, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch26ID = {}
level07.props.Asset_Torch26ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch26ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch26ID.model)
Transform.SetPosition(level07.props.Asset_Torch26ID.transformID, {x=349.5, y=99.5, z=762.5})
Transform.SetScaleNonUniform(level07.props.Asset_Torch26ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch26ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch26ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch26ID.particle, 349.5, 102.5, 762.5)
Particle.SetAlive(level07.props.Asset_Torch26ID.particle)
level07.props.Asset_Torch26ID.lightIndex = Light.addLight(349.5, 102.5, 762.5, 1, 0.576471, 0.160784, 6,2.5)
level07.props.Asset_Torch27ID = {}
level07.props.Asset_Torch27ID.model = Assets.LoadModel('Models/Torch.model')
level07.props.Asset_Torch27ID.transformID = Gear.BindStaticInstance(level07.props.Asset_Torch27ID.model)
Transform.SetPosition(level07.props.Asset_Torch27ID.transformID, {x=325.5, y=99.0625, z=759})
Transform.SetScaleNonUniform(level07.props.Asset_Torch27ID.transformID, 0.7, 0.6, 0.7)
Transform.SetRotation(level07.props.Asset_Torch27ID.transformID, {x=-0, y=0, z=-0})
level07.props.Asset_Torch27ID.particle = Particle.Bind("ParticleFiles/fire.particle")
Particle.SetPosition(level07.props.Asset_Torch27ID.particle, 325.5, 102.063, 759)
Particle.SetAlive(level07.props.Asset_Torch27ID.particle)
level07.props.Asset_Torch27ID.lightIndex = Light.addLight(325.5, 102.063, 759, 1, 0.576471, 0.160784, 6,2.5)
level07.colliders.C_Parent_Tile_7ID = {}
level07.colliders.C_Parent_Tile_7ID.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID.collider:SetMinPos(127.7,35.1631,512)
level07.colliders.C_Parent_Tile_7ID.collider:SetMaxPos(384.3,165.059,772.092)
level07.colliders.C_Parent_Tile_7ID.collider:SetPos(0,0,0)
level07.colliders.C_Parent_Tile_7ID1 = {}
level07.colliders.C_Parent_Tile_7ID1.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID1.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID1.collider:SetMinPos(127.7,35.1631,512)
level07.colliders.C_Parent_Tile_7ID1.collider:SetMaxPos(384.3,165.059,744)
level07.colliders.C_Parent_Tile_7ID.collider:AddChild(level07.colliders.C_Parent_Tile_7ID1.collider)
level07.colliders.C_Parent_Tile_7ID2 = {}
level07.colliders.C_Parent_Tile_7ID2.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID2.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID2.collider:SetMinPos(133.709,118.558,518.701)
level07.colliders.C_Parent_Tile_7ID2.collider:SetMaxPos(292.044,165.059,569.124)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID2.collider)
level07.colliders.C_Parent_Tile_7ID3 = {}
level07.colliders.C_Parent_Tile_7ID3.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID3.collider:SetOffset(203.5,125.009,521)
level07.colliders.C_Parent_Tile_7ID3.collider:SetAxes(0.152057, 0, -0.988372, 0, -1, -0, -0.988372, 0, -0.152057)
level07.colliders.C_Parent_Tile_7ID3.collider:SetHalfLengths(0.3,5,6.57647)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID3.collider)
level07.colliders.C_Parent_Tile_7ID4 = {}
level07.colliders.C_Parent_Tile_7ID4.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID4.collider:SetOffset(189.5,125.009,519.5)
level07.colliders.C_Parent_Tile_7ID4.collider:SetAxes(0.066519, 0, -0.997785, 0, -1, -0, -0.997785, 0, -0.066519)
level07.colliders.C_Parent_Tile_7ID4.collider:SetHalfLengths(0.3,5,7.51665)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID4.collider)
level07.colliders.C_Parent_Tile_7ID5 = {}
level07.colliders.C_Parent_Tile_7ID5.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID5.collider:SetOffset(176,125.009,519.5)
level07.colliders.C_Parent_Tile_7ID5.collider:SetAxes(-0.0830455, 0, -0.996546, -0, -1, 0, -0.996546, 0, 0.0830455)
level07.colliders.C_Parent_Tile_7ID5.collider:SetHalfLengths(0.3,5.24172,6.0208)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID5.collider)
level07.colliders.C_Parent_Tile_7ID6 = {}
level07.colliders.C_Parent_Tile_7ID6.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID6.collider:SetOffset(163.5,125.25,521.5)
level07.colliders.C_Parent_Tile_7ID6.collider:SetAxes(-0.22486, 0, -0.974391, -0, -1, 0, -0.974391, 0, 0.22486)
level07.colliders.C_Parent_Tile_7ID6.collider:SetHalfLengths(0.3,6.69208,6.67083)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID6.collider)
level07.colliders.C_Parent_Tile_7ID7 = {}
level07.colliders.C_Parent_Tile_7ID7.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID7.collider:SetOffset(151,126.942,528)
level07.colliders.C_Parent_Tile_7ID7.collider:SetAxes(-0.640184, 0, -0.768221, -0, -1, 0, -0.768221, 0, 0.640184)
level07.colliders.C_Parent_Tile_7ID7.collider:SetHalfLengths(0.3,7.17552,7.81025)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID7.collider)
level07.colliders.C_Parent_Tile_7ID8 = {}
level07.colliders.C_Parent_Tile_7ID8.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID8.collider:SetOffset(139.5,129.118,539.5)
level07.colliders.C_Parent_Tile_7ID8.collider:SetAxes(-0.763386, 0, -0.645942, -0, -1, 0, -0.645942, 0, 0.763386)
level07.colliders.C_Parent_Tile_7ID8.collider:SetHalfLengths(0.3,5.9669,8.51469)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID8.collider)
level07.colliders.C_Parent_Tile_7ID9 = {}
level07.colliders.C_Parent_Tile_7ID9.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID9.collider:SetOffset(135.5,130.085,552)
level07.colliders.C_Parent_Tile_7ID9.collider:SetAxes(-0.970142, 0, 0.242536, 0, -1, 0, 0.242536, 0, 0.970142)
level07.colliders.C_Parent_Tile_7ID9.collider:SetHalfLengths(0.3,5.9669,6.18466)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID9.collider)
level07.colliders.C_Parent_Tile_7ID10 = {}
level07.colliders.C_Parent_Tile_7ID10.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID10.collider:SetOffset(139.5,129.118,563.5)
level07.colliders.C_Parent_Tile_7ID10.collider:SetAxes(-0.910366, 0, 0.413803, 0, -1, 0, 0.413803, 0, 0.910366)
level07.colliders.C_Parent_Tile_7ID10.collider:SetHalfLengths(0.3,6.45035,6.04152)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID10.collider)
level07.colliders.C_Parent_Tile_7ID11 = {}
level07.colliders.C_Parent_Tile_7ID11.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID11.collider:SetOffset(254.5,142.171,527.5)
level07.colliders.C_Parent_Tile_7ID11.collider:SetAxes(-0.145114, 0, -0.989415, -0, -1, 0, -0.989415, 0, 0.145114)
level07.colliders.C_Parent_Tile_7ID11.collider:SetHalfLengths(0.3,22.8876,37.9012)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID11.collider)
level07.colliders.C_Parent_Tile_7ID12 = {}
level07.colliders.C_Parent_Tile_7ID12.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID12.collider:SetOffset(213.5,124.283,527.5)
level07.colliders.C_Parent_Tile_7ID12.collider:SetAxes(0.843661, 0, -0.536875, 0, -1, -0, -0.536875, 0, -0.843661)
level07.colliders.C_Parent_Tile_7ID12.collider:SetHalfLengths(0.3,5.72517,6.5192)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID12.collider)
level07.colliders.C_Parent_Tile_7ID13 = {}
level07.colliders.C_Parent_Tile_7ID13.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID13.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID13.collider:SetMinPos(141.802,35.1631,519.7)
level07.colliders.C_Parent_Tile_7ID13.collider:SetMaxPos(319,164.092,711.028)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID13.collider)
level07.colliders.C_Parent_Tile_7ID14 = {}
level07.colliders.C_Parent_Tile_7ID14.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID14.collider:SetOffset(304.5,142.171,520)
level07.colliders.C_Parent_Tile_7ID14.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.C_Parent_Tile_7ID14.collider:SetHalfLengths(0.3,5.24173,14.5)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID14.collider)
level07.colliders.C_Parent_Tile_7ID15 = {}
level07.colliders.C_Parent_Tile_7ID15.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID15.collider:SetOffset(150,127.668,576)
level07.colliders.C_Parent_Tile_7ID15.collider:SetAxes(-0.658505, 0, 0.752577, 0, -1, 0, 0.752577, 0, 0.658505)
level07.colliders.C_Parent_Tile_7ID15.collider:SetHalfLengths(0.3,5.72517,10.6301)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID15.collider)
level07.colliders.C_Parent_Tile_7ID16 = {}
level07.colliders.C_Parent_Tile_7ID16.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID16.collider:SetOffset(233,122.833,560.5)
level07.colliders.C_Parent_Tile_7ID16.collider:SetAxes(0.961524, 0, -0.274721, 0, -1, -0, -0.274721, 0, -0.961524)
level07.colliders.C_Parent_Tile_7ID16.collider:SetHalfLengths(0.3,5.48345,10.9202)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID16.collider)
level07.colliders.C_Parent_Tile_7ID17 = {}
level07.colliders.C_Parent_Tile_7ID17.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID17.collider:SetOffset(152,83.6736,643.5)
level07.colliders.C_Parent_Tile_7ID17.collider:SetAxes(0.994338, -0, 0.106265, 0, -1, -0, 0.106265, 0, -0.994338)
level07.colliders.C_Parent_Tile_7ID17.collider:SetHalfLengths(0.3,48.5105,65.873)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID17.collider)
level07.colliders.C_Parent_Tile_7ID18 = {}
level07.colliders.C_Parent_Tile_7ID18.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID18.collider:SetOffset(157,127.184,579.5)
level07.colliders.C_Parent_Tile_7ID18.collider:SetAxes(-0.6, 0, -0.8, -0, -1, 0, -0.8, 0, 0.6)
level07.colliders.C_Parent_Tile_7ID18.collider:SetHalfLengths(0.3,5,2.5)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID18.collider)
level07.colliders.C_Parent_Tile_7ID19 = {}
level07.colliders.C_Parent_Tile_7ID19.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID19.collider:SetOffset(163,85.3657,646.5)
level07.colliders.C_Parent_Tile_7ID19.collider:SetAxes(0.995701, -0, 0.0926234, 0, -1, -0, 0.0926234, 0, -0.995701)
level07.colliders.C_Parent_Tile_7ID19.collider:SetHalfLengths(0.3,46.5767,64.7785)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID19.collider)
level07.colliders.C_Parent_Tile_7ID20 = {}
level07.colliders.C_Parent_Tile_7ID20.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID20.collider:SetOffset(169.5,126.942,585)
level07.colliders.C_Parent_Tile_7ID20.collider:SetAxes(-0.986394, 0, 0.164399, 0, -1, 0, 0.164399, 0, 0.986394)
level07.colliders.C_Parent_Tile_7ID20.collider:SetHalfLengths(0.3,5.48345,3.04138)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID20.collider)
level07.colliders.C_Parent_Tile_7ID21 = {}
level07.colliders.C_Parent_Tile_7ID21.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID21.collider:SetOffset(258.5,142.171,537)
level07.colliders.C_Parent_Tile_7ID21.collider:SetAxes(-0.176299, 0, -0.984337, -0, -1, 0, -0.984337, 0, 0.176299)
level07.colliders.C_Parent_Tile_7ID21.collider:SetHalfLengths(0.3,21.9207,34.0331)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID21.collider)
level07.colliders.C_Parent_Tile_7ID22 = {}
level07.colliders.C_Parent_Tile_7ID22.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID22.collider:SetOffset(227.5,125.25,546.5)
level07.colliders.C_Parent_Tile_7ID22.collider:SetAxes(-0.813733, 0, 0.581238, 0, -1, 0, 0.581238, 0, 0.813733)
level07.colliders.C_Parent_Tile_7ID22.collider:SetHalfLengths(0.3,6.93379,4.30116)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID22.collider)
level07.colliders.C_Parent_Tile_7ID23 = {}
level07.colliders.C_Parent_Tile_7ID23.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID23.collider:SetOffset(292,142.171,521)
level07.colliders.C_Parent_Tile_7ID23.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID23.collider:SetHalfLengths(0.3,5,1)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID23.collider)
level07.colliders.C_Parent_Tile_7ID24 = {}
level07.colliders.C_Parent_Tile_7ID24.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID24.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID24.collider:SetMinPos(168.82,86.6505,512)
level07.colliders.C_Parent_Tile_7ID24.collider:SetMaxPos(353,148.138,614.148)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID24.collider)
level07.colliders.C_Parent_Tile_7ID25 = {}
level07.colliders.C_Parent_Tile_7ID25.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID25.collider:SetOffset(339,142.171,520)
level07.colliders.C_Parent_Tile_7ID25.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.C_Parent_Tile_7ID25.collider:SetHalfLengths(0.3,5,14)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID25.collider)
level07.colliders.C_Parent_Tile_7ID26 = {}
level07.colliders.C_Parent_Tile_7ID26.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID26.collider:SetOffset(324,142.171,516)
level07.colliders.C_Parent_Tile_7ID26.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID26.collider:SetHalfLengths(0.3,5,4)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID26.collider)
level07.colliders.C_Parent_Tile_7ID27 = {}
level07.colliders.C_Parent_Tile_7ID27.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID27.collider:SetOffset(319,142.171,516)
level07.colliders.C_Parent_Tile_7ID27.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID27.collider:SetHalfLengths(0.3,5,4)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID27.collider)
level07.colliders.C_Parent_Tile_7ID28 = {}
level07.colliders.C_Parent_Tile_7ID28.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID28.collider:SetOffset(173,127.909,590)
level07.colliders.C_Parent_Tile_7ID28.collider:SetAxes(-0.6, 0, 0.8, 0, -1, 0, 0.8, 0, 0.6)
level07.colliders.C_Parent_Tile_7ID28.collider:SetHalfLengths(0.3,7.17553,5)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID28.collider)
level07.colliders.C_Parent_Tile_7ID29 = {}
level07.colliders.C_Parent_Tile_7ID29.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID29.collider:SetOffset(184,125.734,596.5)
level07.colliders.C_Parent_Tile_7ID29.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level07.colliders.C_Parent_Tile_7ID29.collider:SetHalfLengths(0.3,5.72517,7.82624)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID29.collider)
level07.colliders.C_Parent_Tile_7ID30 = {}
level07.colliders.C_Parent_Tile_7ID30.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID30.collider:SetOffset(203.5,125.25,596.5)
level07.colliders.C_Parent_Tile_7ID30.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level07.colliders.C_Parent_Tile_7ID30.collider:SetHalfLengths(0.3,5.24172,4.74342)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID30.collider)
level07.colliders.C_Parent_Tile_7ID31 = {}
level07.colliders.C_Parent_Tile_7ID31.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID31.collider:SetOffset(229.5,107.846,599)
level07.colliders.C_Parent_Tile_7ID31.collider:SetAxes(0.870022, 0, -0.493013, 0, -1, -0, -0.493013, 0, -0.870022)
level07.colliders.C_Parent_Tile_7ID31.collider:SetHalfLengths(0.3,21.1956,17.2409)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID31.collider)
level07.colliders.C_Parent_Tile_7ID32 = {}
level07.colliders.C_Parent_Tile_7ID32.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID32.collider:SetOffset(228.5,124.042,577.5)
level07.colliders.C_Parent_Tile_7ID32.collider:SetAxes(0.654931, -0, 0.755689, 0, -1, -0, 0.755689, 0, -0.654931)
level07.colliders.C_Parent_Tile_7ID32.collider:SetHalfLengths(0.3,6.20863,9.92472)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID32.collider)
level07.colliders.C_Parent_Tile_7ID33 = {}
level07.colliders.C_Parent_Tile_7ID33.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID33.collider:SetOffset(302,142.654,533)
level07.colliders.C_Parent_Tile_7ID33.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.C_Parent_Tile_7ID33.collider:SetHalfLengths(0.3,5.48346,13)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID33.collider)
level07.colliders.C_Parent_Tile_7ID34 = {}
level07.colliders.C_Parent_Tile_7ID34.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID34.collider:SetOffset(315,142.171,553)
level07.colliders.C_Parent_Tile_7ID34.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID34.collider:SetHalfLengths(0.3,5.72517,20)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID34.collider)
level07.colliders.C_Parent_Tile_7ID35 = {}
level07.colliders.C_Parent_Tile_7ID35.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID35.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID35.collider:SetMinPos(190.927,96.1434,520)
level07.colliders.C_Parent_Tile_7ID35.collider:SetMaxPos(353.3,147.171,630.073)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID35.collider)
level07.colliders.C_Parent_Tile_7ID36 = {}
level07.colliders.C_Parent_Tile_7ID36.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID36.collider:SetOffset(329,142.171,552.5)
level07.colliders.C_Parent_Tile_7ID36.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID36.collider:SetHalfLengths(0.3,5,19.5)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID36.collider)
level07.colliders.C_Parent_Tile_7ID37 = {}
level07.colliders.C_Parent_Tile_7ID37.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID37.collider:SetOffset(341,142.171,533)
level07.colliders.C_Parent_Tile_7ID37.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.C_Parent_Tile_7ID37.collider:SetHalfLengths(0.3,5,12)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID37.collider)
level07.colliders.C_Parent_Tile_7ID38 = {}
level07.colliders.C_Parent_Tile_7ID38.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID38.collider:SetOffset(353,142.171,526.5)
level07.colliders.C_Parent_Tile_7ID38.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID38.collider:SetHalfLengths(0.3,5,6.5)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID38.collider)
level07.colliders.C_Parent_Tile_7ID39 = {}
level07.colliders.C_Parent_Tile_7ID39.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID39.collider:SetOffset(195,125.009,599)
level07.colliders.C_Parent_Tile_7ID39.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level07.colliders.C_Parent_Tile_7ID39.collider:SetHalfLengths(0.3,5.24172,4.12311)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID39.collider)
level07.colliders.C_Parent_Tile_7ID40 = {}
level07.colliders.C_Parent_Tile_7ID40.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID40.collider:SetOffset(214,125.009,606)
level07.colliders.C_Parent_Tile_7ID40.collider:SetAxes(-0.877896, 0, 0.478852, 0, -1, 0, 0.478852, 0, 0.877896)
level07.colliders.C_Parent_Tile_7ID40.collider:SetHalfLengths(0.3,20.2287,12.53)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID40.collider)
level07.colliders.C_Parent_Tile_7ID41 = {}
level07.colliders.C_Parent_Tile_7ID41.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID41.collider:SetOffset(217,109.78,617.5)
level07.colliders.C_Parent_Tile_7ID41.collider:SetAxes(-0.164399, 0, -0.986394, -0, -1, 0, -0.986394, 0, 0.164399)
level07.colliders.C_Parent_Tile_7ID41.collider:SetHalfLengths(0.3,6.9338,3.04138)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID41.collider)
level07.colliders.C_Parent_Tile_7ID42 = {}
level07.colliders.C_Parent_Tile_7ID42.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID42.collider:SetOffset(212.5,107.846,624)
level07.colliders.C_Parent_Tile_7ID42.collider:SetAxes(-0.970142, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970142)
level07.colliders.C_Parent_Tile_7ID42.collider:SetHalfLengths(0.3,7.41725,6.18466)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID42.collider)
level07.colliders.C_Parent_Tile_7ID43 = {}
level07.colliders.C_Parent_Tile_7ID43.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID43.collider:SetOffset(242.5,107.363,612.5)
level07.colliders.C_Parent_Tile_7ID43.collider:SetAxes(-0.316228, 0, -0.948683, -0, -1, 0, -0.948683, 0, 0.316228)
level07.colliders.C_Parent_Tile_7ID43.collider:SetHalfLengths(0.3,5.48344,4.74342)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID43.collider)
level07.colliders.C_Parent_Tile_7ID44 = {}
level07.colliders.C_Parent_Tile_7ID44.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID44.collider:SetOffset(221.5,111.606,622)
level07.colliders.C_Parent_Tile_7ID44.collider:SetAxes(-0.819232, 0, 0.573462, 0, -1, 0, 0.573462, 0, 0.819232)
level07.colliders.C_Parent_Tile_7ID44.collider:SetHalfLengths(0.3,9.82891,6.10328)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID44.collider)
level07.colliders.C_Parent_Tile_7ID45 = {}
level07.colliders.C_Parent_Tile_7ID45.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID45.collider:SetOffset(223.5,107.314,621.5)
level07.colliders.C_Parent_Tile_7ID45.collider:SetAxes(0.789352, 0, -0.613941, 0, -1, -0, -0.613941, 0, -0.789352)
level07.colliders.C_Parent_Tile_7ID45.collider:SetHalfLengths(0.3,11.1703,5.70088)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID45.collider)
level07.colliders.C_Parent_Tile_7ID46 = {}
level07.colliders.C_Parent_Tile_7ID46.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID46.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID46.collider:SetMinPos(206.713,96.3195,565.7)
level07.colliders.C_Parent_Tile_7ID46.collider:SetMaxPos(337.257,156.598,643.088)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID46.collider)
level07.colliders.C_Parent_Tile_7ID47 = {}
level07.colliders.C_Parent_Tile_7ID47.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID47.collider:SetOffset(209,105.429,636.5)
level07.colliders.C_Parent_Tile_7ID47.collider:SetAxes(-0.955779, 0, -0.294086, -0, -1, 0, -0.294086, 0, 0.955779)
level07.colliders.C_Parent_Tile_7ID47.collider:SetHalfLengths(0.3,7.9007,6.80074)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID47.collider)
level07.colliders.C_Parent_Tile_7ID48 = {}
level07.colliders.C_Parent_Tile_7ID48.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID48.collider:SetOffset(258.5,103.737,614)
level07.colliders.C_Parent_Tile_7ID48.collider:SetAxes(0.274721, 0, -0.961524, 0, -1, -0, -0.961524, 0, -0.274721)
level07.colliders.C_Parent_Tile_7ID48.collider:SetHalfLengths(0.3,7.41724,3.64005)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID48.collider)
level07.colliders.C_Parent_Tile_7ID49 = {}
level07.colliders.C_Parent_Tile_7ID49.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID49.collider:SetOffset(251,106.154,612)
level07.colliders.C_Parent_Tile_7ID49.collider:SetAxes(0.242536, 0, -0.970143, 0, -1, -0, -0.970143, 0, -0.242536)
level07.colliders.C_Parent_Tile_7ID49.collider:SetHalfLengths(0.3,6.20863,4.12311)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID49.collider)
level07.colliders.C_Parent_Tile_7ID50 = {}
level07.colliders.C_Parent_Tile_7ID50.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID50.collider:SetOffset(327.5,142.171,566)
level07.colliders.C_Parent_Tile_7ID50.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.C_Parent_Tile_7ID50.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID50.collider)
level07.colliders.C_Parent_Tile_7ID51 = {}
level07.colliders.C_Parent_Tile_7ID51.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID51.collider:SetOffset(326,142.171,568)
level07.colliders.C_Parent_Tile_7ID51.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID51.collider:SetHalfLengths(0.3,5,2)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID51.collider)
level07.colliders.C_Parent_Tile_7ID52 = {}
level07.colliders.C_Parent_Tile_7ID52.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID52.collider:SetOffset(327.5,142.171,571)
level07.colliders.C_Parent_Tile_7ID52.collider:SetAxes(-0.5547, 0, 0.83205, 0, -1, 0, 0.83205, 0, 0.5547)
level07.colliders.C_Parent_Tile_7ID52.collider:SetHalfLengths(0.3,5,1.80278)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID52.collider)
level07.colliders.C_Parent_Tile_7ID53 = {}
level07.colliders.C_Parent_Tile_7ID53.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID53.collider:SetOffset(316.5,142.171,568)
level07.colliders.C_Parent_Tile_7ID53.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.C_Parent_Tile_7ID53.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID53.collider)
level07.colliders.C_Parent_Tile_7ID54 = {}
level07.colliders.C_Parent_Tile_7ID54.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID54.collider:SetOffset(318,142.171,569)
level07.colliders.C_Parent_Tile_7ID54.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID54.collider:SetHalfLengths(0.3,5,1)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID54.collider)
level07.colliders.C_Parent_Tile_7ID55 = {}
level07.colliders.C_Parent_Tile_7ID55.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID55.collider:SetOffset(317,142.171,571.5)
level07.colliders.C_Parent_Tile_7ID55.collider:SetAxes(-0.83205, 0, -0.5547, -0, -1, 0, -0.5547, 0, 0.83205)
level07.colliders.C_Parent_Tile_7ID55.collider:SetHalfLengths(0.3,5.72517,1.80278)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID55.collider)
level07.colliders.C_Parent_Tile_7ID56 = {}
level07.colliders.C_Parent_Tile_7ID56.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID56.collider:SetOffset(326.5,141.446,590.5)
level07.colliders.C_Parent_Tile_7ID56.collider:SetAxes(-0.857493, 0, 0.514496, 0, -1, 0, 0.514496, 0, 0.857493)
level07.colliders.C_Parent_Tile_7ID56.collider:SetHalfLengths(0.3,15.1525,20.4083)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID56.collider)
level07.colliders.C_Parent_Tile_7ID57 = {}
level07.colliders.C_Parent_Tile_7ID57.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID57.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID57.collider:SetMinPos(206.708,85.2002,571.849)
level07.colliders.C_Parent_Tile_7ID57.collider:SetMaxPos(360.067,156.357,668.07)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID57.collider)
level07.colliders.C_Parent_Tile_7ID58 = {}
level07.colliders.C_Parent_Tile_7ID58.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID58.collider:SetOffset(210,102.528,655.5)
level07.colliders.C_Parent_Tile_7ID58.collider:SetAxes(-0.972387, 0, 0.233373, 0, -1, 0, 0.233373, 0, 0.972387)
level07.colliders.C_Parent_Tile_7ID58.collider:SetHalfLengths(0.3,10.8014,12.855)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID58.collider)
level07.colliders.C_Parent_Tile_7ID59 = {}
level07.colliders.C_Parent_Tile_7ID59.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID59.collider:SetOffset(330,130.81,609.5)
level07.colliders.C_Parent_Tile_7ID59.collider:SetAxes(-0.976187, 0, -0.21693, -0, -1, 0, -0.21693, 0, 0.976187)
level07.colliders.C_Parent_Tile_7ID59.collider:SetHalfLengths(0.3,7.41725,4.60977)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID59.collider)
level07.colliders.C_Parent_Tile_7ID60 = {}
level07.colliders.C_Parent_Tile_7ID60.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID60.collider:SetOffset(279,93.826,642)
level07.colliders.C_Parent_Tile_7ID60.collider:SetAxes(0.894427, 0, -0.447214, 0, -1, -0, -0.447214, 0, -0.894427)
level07.colliders.C_Parent_Tile_7ID60.collider:SetHalfLengths(0.3,8.62588,6.7082)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID60.collider)
level07.colliders.C_Parent_Tile_7ID61 = {}
level07.colliders.C_Parent_Tile_7ID61.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID61.collider:SetOffset(269,97.4519,625.5)
level07.colliders.C_Parent_Tile_7ID61.collider:SetAxes(0.83205, 0, -0.5547, 0, -1, -0, -0.5547, 0, -0.83205)
level07.colliders.C_Parent_Tile_7ID61.collider:SetHalfLengths(0.3,11.2848,12.6194)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID61.collider)
level07.colliders.C_Parent_Tile_7ID62 = {}
level07.colliders.C_Parent_Tile_7ID62.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID62.collider:SetOffset(338,142.171,587.5)
level07.colliders.C_Parent_Tile_7ID62.collider:SetAxes(-0.864789, 0, 0.502136, 0, -1, 0, 0.502136, 0, 0.864789)
level07.colliders.C_Parent_Tile_7ID62.collider:SetHalfLengths(0.3,14.1855,17.9234)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID62.collider)
level07.colliders.C_Parent_Tile_7ID63 = {}
level07.colliders.C_Parent_Tile_7ID63.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID63.collider:SetOffset(353.5,132.26,598.5)
level07.colliders.C_Parent_Tile_7ID63.collider:SetAxes(0.22486, -0, 0.974391, 0, -1, -0, 0.974391, 0, -0.22486)
level07.colliders.C_Parent_Tile_7ID63.collider:SetHalfLengths(0.3,5.9669,6.67083)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID63.collider)
level07.colliders.C_Parent_Tile_7ID64 = {}
level07.colliders.C_Parent_Tile_7ID64.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID64.collider:SetOffset(333,130.81,607)
level07.colliders.C_Parent_Tile_7ID64.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level07.colliders.C_Parent_Tile_7ID64.collider:SetHalfLengths(0.3,5,2.82843)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID64.collider)
level07.colliders.C_Parent_Tile_7ID65 = {}
level07.colliders.C_Parent_Tile_7ID65.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID65.collider:SetOffset(226,106.777,626.5)
level07.colliders.C_Parent_Tile_7ID65.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level07.colliders.C_Parent_Tile_7ID65.collider:SetHalfLengths(0.3,5.53654,1.11803)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID65.collider)
level07.colliders.C_Parent_Tile_7ID66 = {}
level07.colliders.C_Parent_Tile_7ID66.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID66.collider:SetOffset(228.25,105,644.5)
level07.colliders.C_Parent_Tile_7ID66.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID66.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID66.collider)
level07.colliders.C_Parent_Tile_7ID67 = {}
level07.colliders.C_Parent_Tile_7ID67.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID67.collider:SetOffset(250.875,107.813,620.5)
level07.colliders.C_Parent_Tile_7ID67.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID67.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID67.collider)
level07.colliders.C_Parent_Tile_7ID68 = {}
level07.colliders.C_Parent_Tile_7ID68.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID68.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID68.collider:SetMinPos(212.828,81.5743,596.713)
level07.colliders.C_Parent_Tile_7ID68.collider:SetMaxPos(379.146,140.817,682.246)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID68.collider)
level07.colliders.C_Parent_Tile_7ID69 = {}
level07.colliders.C_Parent_Tile_7ID69.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID69.collider:SetOffset(374.5,131.535,602.5)
level07.colliders.C_Parent_Tile_7ID69.collider:SetAxes(0.485643, 0, -0.874157, 0, -1, -0, -0.874157, 0, -0.485643)
level07.colliders.C_Parent_Tile_7ID69.collider:SetHalfLengths(0.3,5.24173,5.14782)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID69.collider)
level07.colliders.C_Parent_Tile_7ID70 = {}
level07.colliders.C_Parent_Tile_7ID70.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID70.collider:SetOffset(365,131.293,598.5)
level07.colliders.C_Parent_Tile_7ID70.collider:SetAxes(0.287348, 0, -0.957826, 0, -1, -0, -0.957826, 0, -0.287348)
level07.colliders.C_Parent_Tile_7ID70.collider:SetHalfLengths(0.3,5,5.22015)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID70.collider)
level07.colliders.C_Parent_Tile_7ID71 = {}
level07.colliders.C_Parent_Tile_7ID71.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID71.collider:SetOffset(223,96.7267,675)
level07.colliders.C_Parent_Tile_7ID71.collider:SetAxes(-0.573462, 0, 0.819232, 0, -1, 0, 0.819232, 0, 0.573462)
level07.colliders.C_Parent_Tile_7ID71.collider:SetHalfLengths(0.3,12.2517,12.2066)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID71.collider)
level07.colliders.C_Parent_Tile_7ID72 = {}
level07.colliders.C_Parent_Tile_7ID72.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID72.collider:SetOffset(328.5,128.393,619.5)
level07.colliders.C_Parent_Tile_7ID72.collider:SetAxes(-0.995893, 0, -0.0905358, -0, -1, 0, -0.0905358, 0, 0.995893)
level07.colliders.C_Parent_Tile_7ID72.collider:SetHalfLengths(0.3,8.14243,5.52268)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID72.collider)
level07.colliders.C_Parent_Tile_7ID73 = {}
level07.colliders.C_Parent_Tile_7ID73.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID73.collider:SetOffset(330,125.25,631)
level07.colliders.C_Parent_Tile_7ID73.collider:SetAxes(-0.948683, 0, 0.316228, 0, -1, 0, 0.316228, 0, 0.948683)
level07.colliders.C_Parent_Tile_7ID73.collider:SetHalfLengths(0.3,6.45035,6.32456)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID73.collider)
level07.colliders.C_Parent_Tile_7ID74 = {}
level07.colliders.C_Parent_Tile_7ID74.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID74.collider:SetOffset(284.5,90.2002,654)
level07.colliders.C_Parent_Tile_7ID74.collider:SetAxes(0.923077, 0, -0.384615, 0, -1, -0, -0.384615, 0, -0.923077)
level07.colliders.C_Parent_Tile_7ID74.collider:SetHalfLengths(0.3,8.62588,6.5)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID74.collider)
level07.colliders.C_Parent_Tile_7ID75 = {}
level07.colliders.C_Parent_Tile_7ID75.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID75.collider:SetOffset(347,132.985,601.5)
level07.colliders.C_Parent_Tile_7ID75.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID75.collider:SetHalfLengths(0.3,5.72517,1.5)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID75.collider)
level07.colliders.C_Parent_Tile_7ID76 = {}
level07.colliders.C_Parent_Tile_7ID76.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID76.collider:SetOffset(336,131.293,608.5)
level07.colliders.C_Parent_Tile_7ID76.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level07.colliders.C_Parent_Tile_7ID76.collider:SetHalfLengths(0.3,5.48344,1.11803)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID76.collider)
level07.colliders.C_Parent_Tile_7ID77 = {}
level07.colliders.C_Parent_Tile_7ID77.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID77.collider:SetOffset(355,135.487,602.5)
level07.colliders.C_Parent_Tile_7ID77.collider:SetAxes(0.414747, -0.101153, 0.904297, -0.236946, -0.971523, 0, -0.878545, 0.21427, 0.426904)
level07.colliders.C_Parent_Tile_7ID77.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID77.collider)
level07.colliders.C_Parent_Tile_7ID78 = {}
level07.colliders.C_Parent_Tile_7ID78.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID78.collider:SetOffset(269.5,97.875,653)
level07.colliders.C_Parent_Tile_7ID78.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID78.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID78.collider)
level07.colliders.C_Parent_Tile_7ID79 = {}
level07.colliders.C_Parent_Tile_7ID79.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID79.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID79.collider:SetMinPos(132.81,74.0808,604.743)
level07.colliders.C_Parent_Tile_7ID79.collider:SetMaxPos(384.3,136.535,718.232)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID79.collider)
level07.colliders.C_Parent_Tile_7ID80 = {}
level07.colliders.C_Parent_Tile_7ID80.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID80.collider:SetOffset(384,122.35,639.5)
level07.colliders.C_Parent_Tile_7ID80.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID80.collider:SetHalfLengths(0.3,14.1855,31.5)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID80.collider)
level07.colliders.C_Parent_Tile_7ID81 = {}
level07.colliders.C_Parent_Tile_7ID81.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID81.collider:SetOffset(381.5,131.535,606.5)
level07.colliders.C_Parent_Tile_7ID81.collider:SetAxes(0.514496, 0, -0.857493, 0, -1, -0, -0.857493, 0, -0.514496)
level07.colliders.C_Parent_Tile_7ID81.collider:SetHalfLengths(0.3,5,2.91548)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID81.collider)
level07.colliders.C_Parent_Tile_7ID82 = {}
level07.colliders.C_Parent_Tile_7ID82.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID82.collider:SetOffset(138.5,83.6736,713.5)
level07.colliders.C_Parent_Tile_7ID82.collider:SetAxes(-0.633238, 0, -0.773957, -0, -1, 0, -0.773957, 0, 0.633238)
level07.colliders.C_Parent_Tile_7ID82.collider:SetHalfLengths(0.3,7.9007,7.10634)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID82.collider)
level07.colliders.C_Parent_Tile_7ID83 = {}
level07.colliders.C_Parent_Tile_7ID83.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID83.collider:SetOffset(170,81.9815,703.5)
level07.colliders.C_Parent_Tile_7ID83.collider:SetAxes(-0.447214, 0, -0.894427, -0, -1, 0, -0.894427, 0, 0.447214)
level07.colliders.C_Parent_Tile_7ID83.collider:SetHalfLengths(0.3,5.24172,1.11803)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID83.collider)
level07.colliders.C_Parent_Tile_7ID84 = {}
level07.colliders.C_Parent_Tile_7ID84.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID84.collider:SetOffset(164,82.2232,703.5)
level07.colliders.C_Parent_Tile_7ID84.collider:SetAxes(0.0995037, 0, -0.995037, 0, -1, -0, -0.995037, 0, -0.0995037)
level07.colliders.C_Parent_Tile_7ID84.collider:SetHalfLengths(0.3,5,5.02494)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID84.collider)
level07.colliders.C_Parent_Tile_7ID85 = {}
level07.colliders.C_Parent_Tile_7ID85.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID85.collider:SetOffset(244.5,89.475,685.5)
level07.colliders.C_Parent_Tile_7ID85.collider:SetAxes(-0.291162, 0, 0.956674, 0, -1, 0, 0.956674, 0, 0.291162)
level07.colliders.C_Parent_Tile_7ID85.collider:SetHalfLengths(0.3,6.45035,12.0208)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID85.collider)
level07.colliders.C_Parent_Tile_7ID86 = {}
level07.colliders.C_Parent_Tile_7ID86.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID86.collider:SetOffset(286.5,88.7498,665.5)
level07.colliders.C_Parent_Tile_7ID86.collider:SetAxes(0.995893, -0, 0.0905358, 0, -1, -0, 0.0905358, 0, -0.995893)
level07.colliders.C_Parent_Tile_7ID86.collider:SetHalfLengths(0.3,6.45035,5.52268)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID86.collider)
level07.colliders.C_Parent_Tile_7ID87 = {}
level07.colliders.C_Parent_Tile_7ID87.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID87.collider:SetOffset(158,82.2232,707)
level07.colliders.C_Parent_Tile_7ID87.collider:SetAxes(-0.970143, 0, -0.242536, -0, -1, 0, -0.242536, 0, 0.970143)
level07.colliders.C_Parent_Tile_7ID87.collider:SetHalfLengths(0.3,8.14243,4.12311)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID87.collider)
level07.colliders.C_Parent_Tile_7ID88 = {}
level07.colliders.C_Parent_Tile_7ID88.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID88.collider:SetOffset(337.5,128.012,627.5)
level07.colliders.C_Parent_Tile_7ID88.collider:SetAxes(1, 0, 0, 0, -0.982996, -0.183626, 0, -0.183626, 0.982996)
level07.colliders.C_Parent_Tile_7ID88.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID88.collider)
level07.colliders.C_Parent_Tile_7ID89 = {}
level07.colliders.C_Parent_Tile_7ID89.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID89.collider:SetOffset(255.75,95.75,671)
level07.colliders.C_Parent_Tile_7ID89.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID89.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID89.collider)
level07.colliders.C_Parent_Tile_7ID90 = {}
level07.colliders.C_Parent_Tile_7ID90.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID90.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID90.collider:SetMinPos(127.714,71.6636,611.913)
level07.colliders.C_Parent_Tile_7ID90.collider:SetMaxPos(379.337,139.625,734.089)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID90.collider)
level07.colliders.C_Parent_Tile_7ID91 = {}
level07.colliders.C_Parent_Tile_7ID91.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID91.collider:SetOffset(130.5,86.5743,726)
level07.colliders.C_Parent_Tile_7ID91.collider:SetAxes(-0.95448, 0, -0.298275, -0, -1, 0, -0.298275, 0, 0.95448)
level07.colliders.C_Parent_Tile_7ID91.collider:SetHalfLengths(0.3,10.0762,8.38153)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID91.collider)
level07.colliders.C_Parent_Tile_7ID92 = {}
level07.colliders.C_Parent_Tile_7ID92.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID92.collider:SetOffset(196,84.157,709)
level07.colliders.C_Parent_Tile_7ID92.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level07.colliders.C_Parent_Tile_7ID92.collider:SetHalfLengths(0.3,6.20862,4.47214)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID92.collider)
level07.colliders.C_Parent_Tile_7ID93 = {}
level07.colliders.C_Parent_Tile_7ID93.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID93.collider:SetOffset(181.5,82.9484,705)
level07.colliders.C_Parent_Tile_7ID93.collider:SetAxes(0.187112, 0, -0.982339, 0, -1, -0, -0.982339, 0, -0.187112)
level07.colliders.C_Parent_Tile_7ID93.collider:SetHalfLengths(0.3,5.9669,10.6888)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID93.collider)
level07.colliders.C_Parent_Tile_7ID94 = {}
level07.colliders.C_Parent_Tile_7ID94.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID94.collider:SetOffset(335.5,123.8,643.5)
level07.colliders.C_Parent_Tile_7ID94.collider:SetAxes(-0.880471, 0, 0.4741, 0, -1, 0, 0.4741, 0, 0.880471)
level07.colliders.C_Parent_Tile_7ID94.collider:SetHalfLengths(0.3,6.69208,7.38241)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID94.collider)
level07.colliders.C_Parent_Tile_7ID95 = {}
level07.colliders.C_Parent_Tile_7ID95.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID95.collider:SetOffset(285.5,88.7498,672.5)
level07.colliders.C_Parent_Tile_7ID95.collider:SetAxes(0.948683, -0, 0.316228, 0, -1, -0, 0.316228, 0, -0.948683)
level07.colliders.C_Parent_Tile_7ID95.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID95.collider)
level07.colliders.C_Parent_Tile_7ID96 = {}
level07.colliders.C_Parent_Tile_7ID96.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID96.collider:SetOffset(300.5,90.9253,687.5)
level07.colliders.C_Parent_Tile_7ID96.collider:SetAxes(-0.652242, 0, 0.758011, 0, -1, 0, 0.758011, 0, 0.652242)
level07.colliders.C_Parent_Tile_7ID96.collider:SetHalfLengths(0.3,17.328,28.3637)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID96.collider)
level07.colliders.C_Parent_Tile_7ID97 = {}
level07.colliders.C_Parent_Tile_7ID97.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID97.collider:SetOffset(292,90.2002,697.5)
level07.colliders.C_Parent_Tile_7ID97.collider:SetAxes(-0.640184, 0, 0.768221, 0, -1, 0, 0.768221, 0, 0.640184)
level07.colliders.C_Parent_Tile_7ID97.collider:SetHalfLengths(0.3,18.5366,27.3359)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID97.collider)
level07.colliders.C_Parent_Tile_7ID98 = {}
level07.colliders.C_Parent_Tile_7ID98.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID98.collider:SetOffset(282.5,90.9253,669)
level07.colliders.C_Parent_Tile_7ID98.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.C_Parent_Tile_7ID98.collider:SetHalfLengths(0.3,6.93379,3.5)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID98.collider)
level07.colliders.C_Parent_Tile_7ID99 = {}
level07.colliders.C_Parent_Tile_7ID99.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID99.collider:SetOffset(377.25,134.625,614)
level07.colliders.C_Parent_Tile_7ID99.collider:SetAxes(0.569807, 0, -0.821778, 0, -1, 0, 0.821778, 0, 0.569807)
level07.colliders.C_Parent_Tile_7ID99.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID99.collider)
level07.colliders.C_Parent_Tile_7ID100 = {}
level07.colliders.C_Parent_Tile_7ID100.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID100.collider:SetOffset(173.375,88.75,711.5)
level07.colliders.C_Parent_Tile_7ID100.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID100.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID100.collider)
level07.colliders.C_Parent_Tile_7ID101 = {}
level07.colliders.C_Parent_Tile_7ID101.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID101.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID101.collider:SetMinPos(127.7,79.157,649.834)
level07.colliders.C_Parent_Tile_7ID101.collider:SetMaxPos(349.25,129.283,744)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID101.collider)
level07.colliders.C_Parent_Tile_7ID102 = {}
level07.colliders.C_Parent_Tile_7ID102.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID102.collider:SetOffset(128,91.6505,739)
level07.colliders.C_Parent_Tile_7ID102.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID102.collider:SetHalfLengths(0.3,7.65897,5)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID102.collider)
level07.colliders.C_Parent_Tile_7ID103 = {}
level07.colliders.C_Parent_Tile_7ID103.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID103.collider:SetOffset(203.5,84.3988,714)
level07.colliders.C_Parent_Tile_7ID103.collider:SetAxes(0.650791, 0, -0.759257, 0, -1, -0, -0.759257, 0, -0.650791)
level07.colliders.C_Parent_Tile_7ID103.collider:SetHalfLengths(0.3,5.24173,4.60977)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID103.collider)
level07.colliders.C_Parent_Tile_7ID104 = {}
level07.colliders.C_Parent_Tile_7ID104.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID104.collider:SetOffset(261.5,88.0246,688)
level07.colliders.C_Parent_Tile_7ID104.collider:SetAxes(0.178885, -0, 0.98387, 0, -1, -0, 0.98387, 0, -0.178885)
level07.colliders.C_Parent_Tile_7ID104.collider:SetHalfLengths(0.3,6.20863,5.59017)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID104.collider)
level07.colliders.C_Parent_Tile_7ID105 = {}
level07.colliders.C_Parent_Tile_7ID105.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID105.collider:SetOffset(271,86.816,685.5)
level07.colliders.C_Parent_Tile_7ID105.collider:SetAxes(0.351123, -0, 0.936329, 0, -1, -0, 0.936329, 0, -0.351123)
level07.colliders.C_Parent_Tile_7ID105.collider:SetHalfLengths(0.3,6.69208,4.272)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID105.collider)
level07.colliders.C_Parent_Tile_7ID106 = {}
level07.colliders.C_Parent_Tile_7ID106.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID106.collider:SetOffset(344,122.108,657.5)
level07.colliders.C_Parent_Tile_7ID106.collider:SetAxes(-0.83205, 0, 0.5547, 0, -1, 0, 0.5547, 0, 0.83205)
level07.colliders.C_Parent_Tile_7ID106.collider:SetHalfLengths(0.3,7.17552,9.01388)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID106.collider)
level07.colliders.C_Parent_Tile_7ID107 = {}
level07.colliders.C_Parent_Tile_7ID107.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID107.collider:SetOffset(208,87.2995,722.5)
level07.colliders.C_Parent_Tile_7ID107.collider:SetAxes(0.98387, 0, -0.178885, 0, -1, -0, -0.178885, 0, -0.98387)
level07.colliders.C_Parent_Tile_7ID107.collider:SetHalfLengths(0.3,7.9007,5.59017)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID107.collider)
level07.colliders.C_Parent_Tile_7ID108 = {}
level07.colliders.C_Parent_Tile_7ID108.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID108.collider:SetOffset(271,90.2002,682.5)
level07.colliders.C_Parent_Tile_7ID108.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID108.collider:SetHalfLengths(0.3,6.45035,2.5)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID108.collider)
level07.colliders.C_Parent_Tile_7ID109 = {}
level07.colliders.C_Parent_Tile_7ID109.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID109.collider:SetOffset(143.75,92.3125,724)
level07.colliders.C_Parent_Tile_7ID109.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID109.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID109.collider)
level07.colliders.C_Parent_Tile_7ID110 = {}
level07.colliders.C_Parent_Tile_7ID110.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID110.collider:SetOffset(191.875,88.75,716.5)
level07.colliders.C_Parent_Tile_7ID110.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID110.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID110.collider)
level07.colliders.C_Parent_Tile_7ID111 = {}
level07.colliders.C_Parent_Tile_7ID111.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID111.collider:SetOffset(193.5,92.3125,717)
level07.colliders.C_Parent_Tile_7ID111.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID111.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID111.collider)
level07.colliders.C_Parent_Tile_7ID112 = {}
level07.colliders.C_Parent_Tile_7ID112.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID112.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID112.collider:SetMinPos(127.767,82.2995,649.891)
level07.colliders.C_Parent_Tile_7ID112.collider:SetMaxPos(384.3,133.375,772.092)
level07.colliders.C_Parent_Tile_7ID.collider:AddChild(level07.colliders.C_Parent_Tile_7ID112.collider)
level07.colliders.C_Parent_Tile_7ID113 = {}
level07.colliders.C_Parent_Tile_7ID113.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID113.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID113.collider:SetMinPos(127.767,82.2995,649.891)
level07.colliders.C_Parent_Tile_7ID113.collider:SetMaxPos(381.359,133.375,760.189)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID113.collider)
level07.colliders.C_Parent_Tile_7ID114 = {}
level07.colliders.C_Parent_Tile_7ID114.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID114.collider:SetOffset(134.5,94.3095,752)
level07.colliders.C_Parent_Tile_7ID114.collider:SetAxes(-0.776114, 0, 0.630593, 0, -1, 0, 0.630593, 0, 0.776114)
level07.colliders.C_Parent_Tile_7ID114.collider:SetHalfLengths(0.3,7.9007,10.3078)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID114.collider)
level07.colliders.C_Parent_Tile_7ID115 = {}
level07.colliders.C_Parent_Tile_7ID115.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID115.collider:SetOffset(352,104.22,681)
level07.colliders.C_Parent_Tile_7ID115.collider:SetAxes(0.992278, -0, 0.124035, 0, -1, -0, 0.124035, 0, -0.992278)
level07.colliders.C_Parent_Tile_7ID115.collider:SetHalfLengths(0.3,21.4373,16.1245)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID115.collider)
level07.colliders.C_Parent_Tile_7ID116 = {}
level07.colliders.C_Parent_Tile_7ID116.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID116.collider:SetOffset(351.5,120.658,665)
level07.colliders.C_Parent_Tile_7ID116.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.C_Parent_Tile_7ID116.collider:SetHalfLengths(0.3,5.72517,2.5)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID116.collider)
level07.colliders.C_Parent_Tile_7ID117 = {}
level07.colliders.C_Parent_Tile_7ID117.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID117.collider:SetOffset(257.5,102.528,739)
level07.colliders.C_Parent_Tile_7ID117.collider:SetAxes(-0.0774367, 0, -0.996997, -0, -1, 0, -0.996997, 0, 0.0774367)
level07.colliders.C_Parent_Tile_7ID117.collider:SetHalfLengths(0.3,14.9107,51.6551)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID117.collider)
level07.colliders.C_Parent_Tile_7ID118 = {}
level07.colliders.C_Parent_Tile_7ID118.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID118.collider:SetOffset(257,103.978,728)
level07.colliders.C_Parent_Tile_7ID118.collider:SetAxes(-0.0752577, 0, -0.997164, -0, -1, 0, -0.997164, 0, 0.0752577)
level07.colliders.C_Parent_Tile_7ID118.collider:SetHalfLengths(0.3,19.7452,53.1507)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID118.collider)
level07.colliders.C_Parent_Tile_7ID119 = {}
level07.colliders.C_Parent_Tile_7ID119.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID119.collider:SetOffset(204,89.2333,730.5)
level07.colliders.C_Parent_Tile_7ID119.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID119.collider:SetHalfLengths(0.3,5.9669,1.5)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID119.collider)
level07.colliders.C_Parent_Tile_7ID120 = {}
level07.colliders.C_Parent_Tile_7ID120.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID120.collider:SetOffset(206.5,88.2664,728.5)
level07.colliders.C_Parent_Tile_7ID120.collider:SetAxes(0.196116, -0, 0.980581, 0, -1, -0, 0.980581, 0, -0.196116)
level07.colliders.C_Parent_Tile_7ID120.collider:SetHalfLengths(0.3,5.9669,2.54951)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID120.collider)
level07.colliders.C_Parent_Tile_7ID121 = {}
level07.colliders.C_Parent_Tile_7ID121.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID121.collider:SetOffset(379.25,128.375,652)
level07.colliders.C_Parent_Tile_7ID121.collider:SetAxes(0.777973, 0, 0.628297, 0, -1, 0, -0.628297, 0, 0.777973)
level07.colliders.C_Parent_Tile_7ID121.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID121.collider)
level07.colliders.C_Parent_Tile_7ID122 = {}
level07.colliders.C_Parent_Tile_7ID122.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID122.collider:SetOffset(148.875,98.875,744.5)
level07.colliders.C_Parent_Tile_7ID122.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID122.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID122.collider)
level07.colliders.C_Parent_Tile_7ID123 = {}
level07.colliders.C_Parent_Tile_7ID123.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID123.collider:SetOffset(169.25,97.3125,742)
level07.colliders.C_Parent_Tile_7ID123.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID123.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID123.collider)
level07.colliders.C_Parent_Tile_7ID124 = {}
level07.colliders.C_Parent_Tile_7ID124.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID124.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID124.collider:SetMinPos(140.828,82.5412,670.715)
level07.colliders.C_Parent_Tile_7ID124.collider:SetMaxPos(384.095,127.833,767.246)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID124.collider)
level07.colliders.C_Parent_Tile_7ID125 = {}
level07.colliders.C_Parent_Tile_7ID125.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID125.collider:SetOffset(146,97.2102,763.5)
level07.colliders.C_Parent_Tile_7ID125.collider:SetAxes(-0.573462, 0, 0.819232, 0, -1, 0, 0.819232, 0, 0.573462)
level07.colliders.C_Parent_Tile_7ID125.collider:SetHalfLengths(0.3,6.9338,6.10328)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID125.collider)
level07.colliders.C_Parent_Tile_7ID126 = {}
level07.colliders.C_Parent_Tile_7ID126.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID126.collider:SetOffset(210,97.4519,754)
level07.colliders.C_Parent_Tile_7ID126.collider:SetAxes(0.993884, -0, 0.110432, 0, -1, -0, 0.110432, 0, -0.993884)
level07.colliders.C_Parent_Tile_7ID126.collider:SetHalfLengths(0.3,8.62588,9.05539)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID126.collider)
level07.colliders.C_Parent_Tile_7ID127 = {}
level07.colliders.C_Parent_Tile_7ID127.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID127.collider:SetOffset(379.5,120.899,672.5)
level07.colliders.C_Parent_Tile_7ID127.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level07.colliders.C_Parent_Tile_7ID127.collider:SetHalfLengths(0.3,6.45035,4.74342)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID127.collider)
level07.colliders.C_Parent_Tile_7ID128 = {}
level07.colliders.C_Parent_Tile_7ID128.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID128.collider:SetOffset(338.5,104.22,697)
level07.colliders.C_Parent_Tile_7ID128.collider:SetAxes(-0.21693, 0, -0.976187, -0, -1, 0, -0.976187, 0, 0.21693)
level07.colliders.C_Parent_Tile_7ID128.collider:SetHalfLengths(0.3,5.48345,4.60977)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID128.collider)
level07.colliders.C_Parent_Tile_7ID129 = {}
level07.colliders.C_Parent_Tile_7ID129.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID129.collider:SetOffset(326,103.737,700)
level07.colliders.C_Parent_Tile_7ID129.collider:SetAxes(-0.242536, 0, -0.970143, -0, -1, 0, -0.970143, 0, 0.242536)
level07.colliders.C_Parent_Tile_7ID129.collider:SetHalfLengths(0.3,5.48345,8.24621)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID129.collider)
level07.colliders.C_Parent_Tile_7ID130 = {}
level07.colliders.C_Parent_Tile_7ID130.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID130.collider:SetOffset(367,104.704,685.5)
level07.colliders.C_Parent_Tile_7ID130.collider:SetAxes(0.990621, -0, 0.136637, 0, -1, -0, 0.136637, 0, -0.990621)
level07.colliders.C_Parent_Tile_7ID130.collider:SetHalfLengths(0.3,22.1625,14.6373)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID130.collider)
level07.colliders.C_Parent_Tile_7ID131 = {}
level07.colliders.C_Parent_Tile_7ID131.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID131.collider:SetOffset(372,121.866,672.5)
level07.colliders.C_Parent_Tile_7ID131.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level07.colliders.C_Parent_Tile_7ID131.collider:SetHalfLengths(0.3,5.9669,3.3541)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID131.collider)
level07.colliders.C_Parent_Tile_7ID132 = {}
level07.colliders.C_Parent_Tile_7ID132.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID132.collider:SetOffset(208.5,92.6174,744)
level07.colliders.C_Parent_Tile_7ID132.collider:SetAxes(-0.371391, 0, 0.928477, 0, -1, 0, 0.928477, 0, 0.371391)
level07.colliders.C_Parent_Tile_7ID132.collider:SetHalfLengths(0.3,6.20863,2.69258)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID132.collider)
level07.colliders.C_Parent_Tile_7ID133 = {}
level07.colliders.C_Parent_Tile_7ID133.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID133.collider:SetOffset(321.5,103.253,703.5)
level07.colliders.C_Parent_Tile_7ID133.collider:SetAxes(0.980581, 0, -0.196116, 0, -1, -0, -0.196116, 0, -0.980581)
level07.colliders.C_Parent_Tile_7ID133.collider:SetHalfLengths(0.3,5,2.54951)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID133.collider)
level07.colliders.C_Parent_Tile_7ID134 = {}
level07.colliders.C_Parent_Tile_7ID134.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID134.collider:SetOffset(164,102.313,759)
level07.colliders.C_Parent_Tile_7ID134.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID134.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID134.collider)
level07.colliders.C_Parent_Tile_7ID135 = {}
level07.colliders.C_Parent_Tile_7ID135.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID135.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID135.collider:SetMinPos(151,94.144,695.715)
level07.colliders.C_Parent_Tile_7ID135.collider:SetMaxPos(350,111.875,770.5)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID135.collider)
level07.colliders.C_Parent_Tile_7ID136 = {}
level07.colliders.C_Parent_Tile_7ID136.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID136.collider:SetOffset(178.5,99.144,767)
level07.colliders.C_Parent_Tile_7ID136.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.C_Parent_Tile_7ID136.collider:SetHalfLengths(0.3,5,27.5)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID136.collider)
level07.colliders.C_Parent_Tile_7ID137 = {}
level07.colliders.C_Parent_Tile_7ID137.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID137.collider:SetOffset(308,103.495,714)
level07.colliders.C_Parent_Tile_7ID137.collider:SetAxes(-0.894427, 0, -0.447214, -0, -1, 0, -0.447214, 0, 0.894427)
level07.colliders.C_Parent_Tile_7ID137.collider:SetHalfLengths(0.3,5.24173,2.23607)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID137.collider)
level07.colliders.C_Parent_Tile_7ID138 = {}
level07.colliders.C_Parent_Tile_7ID138.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID138.collider:SetOffset(306.5,103.253,719)
level07.colliders.C_Parent_Tile_7ID138.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level07.colliders.C_Parent_Tile_7ID138.collider:SetHalfLengths(0.3,5.24172,3.04138)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID138.collider)
level07.colliders.C_Parent_Tile_7ID139 = {}
level07.colliders.C_Parent_Tile_7ID139.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID139.collider:SetOffset(344.5,104.22,696.5)
level07.colliders.C_Parent_Tile_7ID139.collider:SetAxes(0.316228, 0, -0.948683, 0, -1, -0, -0.948683, 0, -0.316228)
level07.colliders.C_Parent_Tile_7ID139.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID139.collider)
level07.colliders.C_Parent_Tile_7ID140 = {}
level07.colliders.C_Parent_Tile_7ID140.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID140.collider:SetOffset(348,104.22,697)
level07.colliders.C_Parent_Tile_7ID140.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level07.colliders.C_Parent_Tile_7ID140.collider:SetHalfLengths(0.3,5,2)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID140.collider)
level07.colliders.C_Parent_Tile_7ID141 = {}
level07.colliders.C_Parent_Tile_7ID141.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID141.collider:SetOffset(308,103.978,723)
level07.colliders.C_Parent_Tile_7ID141.collider:SetAxes(0.447214, 0, -0.894427, 0, -1, -0, -0.894427, 0, -0.447214)
level07.colliders.C_Parent_Tile_7ID141.collider:SetHalfLengths(0.3,5.9669,2.23607)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID141.collider)
level07.colliders.C_Parent_Tile_7ID142 = {}
level07.colliders.C_Parent_Tile_7ID142.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID142.collider:SetOffset(161.625,105.938,769)
level07.colliders.C_Parent_Tile_7ID142.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID142.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID142.collider)
level07.colliders.C_Parent_Tile_7ID143 = {}
level07.colliders.C_Parent_Tile_7ID143.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID143.collider:SetOffset(155.875,104.688,769)
level07.colliders.C_Parent_Tile_7ID143.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID143.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID143.collider)
level07.colliders.C_Parent_Tile_7ID144 = {}
level07.colliders.C_Parent_Tile_7ID144.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID144.collider:SetOffset(332.25,106.875,706)
level07.colliders.C_Parent_Tile_7ID144.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID144.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID144.collider)
level07.colliders.C_Parent_Tile_7ID145 = {}
level07.colliders.C_Parent_Tile_7ID145.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID145.collider:SetOffset(193.75,100.625,758.5)
level07.colliders.C_Parent_Tile_7ID145.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID145.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID135.collider:AddChild(level07.colliders.C_Parent_Tile_7ID145.collider)
level07.colliders.C_Parent_Tile_7ID146 = {}
level07.colliders.C_Parent_Tile_7ID146.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID146.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID146.collider:SetMinPos(163.9,92.4519,693.7)
level07.colliders.C_Parent_Tile_7ID146.collider:SetMaxPos(370,112.846,771.508)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID146.collider)
level07.colliders.C_Parent_Tile_7ID147 = {}
level07.colliders.C_Parent_Tile_7ID147.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID147.collider:SetOffset(207.5,99.144,765)
level07.colliders.C_Parent_Tile_7ID147.collider:SetAxes(0.8, -0, 0.6, 0, -1, -0, 0.6, 0, -0.8)
level07.colliders.C_Parent_Tile_7ID147.collider:SetHalfLengths(0.3,6.69207,2.5)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID147.collider)
level07.colliders.C_Parent_Tile_7ID148 = {}
level07.colliders.C_Parent_Tile_7ID148.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID148.collider:SetOffset(369,104.22,694)
level07.colliders.C_Parent_Tile_7ID148.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.C_Parent_Tile_7ID148.collider:SetHalfLengths(0.3,6.93379,1)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID148.collider)
level07.colliders.C_Parent_Tile_7ID149 = {}
level07.colliders.C_Parent_Tile_7ID149.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID149.collider:SetOffset(367.5,106.154,697)
level07.colliders.C_Parent_Tile_7ID149.collider:SetAxes(-0.986394, 0, -0.164399, -0, -1, 0, -0.164399, 0, 0.986394)
level07.colliders.C_Parent_Tile_7ID149.collider:SetHalfLengths(0.3,6.69207,3.04138)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID149.collider)
level07.colliders.C_Parent_Tile_7ID150 = {}
level07.colliders.C_Parent_Tile_7ID150.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID150.collider:SetOffset(366,104.462,700)
level07.colliders.C_Parent_Tile_7ID150.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level07.colliders.C_Parent_Tile_7ID150.collider:SetHalfLengths(0.3,5.24172,1)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID150.collider)
level07.colliders.C_Parent_Tile_7ID151 = {}
level07.colliders.C_Parent_Tile_7ID151.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID151.collider:SetOffset(180.375,105.938,769.5)
level07.colliders.C_Parent_Tile_7ID151.collider:SetAxes(0.440832, 0, 0.89759, 0, -1, 0, -0.89759, 0, 0.440832)
level07.colliders.C_Parent_Tile_7ID151.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID151.collider)
level07.colliders.C_Parent_Tile_7ID152 = {}
level07.colliders.C_Parent_Tile_7ID152.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID152.collider:SetOffset(175.125,106,769.5)
level07.colliders.C_Parent_Tile_7ID152.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID152.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID152.collider)
level07.colliders.C_Parent_Tile_7ID153 = {}
level07.colliders.C_Parent_Tile_7ID153.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID153.collider:SetOffset(169.25,105.875,769)
level07.colliders.C_Parent_Tile_7ID153.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID153.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID153.collider)
level07.colliders.C_Parent_Tile_7ID154 = {}
level07.colliders.C_Parent_Tile_7ID154.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID154.collider:SetOffset(171.625,103.688,768.5)
level07.colliders.C_Parent_Tile_7ID154.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID154.collider:SetHalfLengths(0.8,1,0.7)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID154.collider)
level07.colliders.C_Parent_Tile_7ID155 = {}
level07.colliders.C_Parent_Tile_7ID155.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID155.collider:SetOffset(164.5,103.75,768.5)
level07.colliders.C_Parent_Tile_7ID155.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID155.collider:SetHalfLengths(0.6,1,0.6)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID155.collider)
level07.colliders.C_Parent_Tile_7ID156 = {}
level07.colliders.C_Parent_Tile_7ID156.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID156.collider:SetOffset(177.375,103.625,768.5)
level07.colliders.C_Parent_Tile_7ID156.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID156.collider:SetHalfLengths(0.6,1,0.6)
level07.colliders.C_Parent_Tile_7ID146.collider:AddChild(level07.colliders.C_Parent_Tile_7ID156.collider)
level07.colliders.C_Parent_Tile_7ID157 = {}
level07.colliders.C_Parent_Tile_7ID157.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID157.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID157.collider:SetMinPos(182.575,93.1771,699.721)
level07.colliders.C_Parent_Tile_7ID157.collider:SetMaxPos(384.279,111.777,772.092)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID157.collider)
level07.colliders.C_Parent_Tile_7ID158 = {}
level07.colliders.C_Parent_Tile_7ID158.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID158.collider:SetOffset(304,103.012,742)
level07.colliders.C_Parent_Tile_7ID158.collider:SetAxes(-0.948683, 0, -0.316228, -0, -1, 0, -0.316228, 0, 0.948683)
level07.colliders.C_Parent_Tile_7ID158.collider:SetHalfLengths(0.3,8.62588,6.32456)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID158.collider)
level07.colliders.C_Parent_Tile_7ID159 = {}
level07.colliders.C_Parent_Tile_7ID159.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID159.collider:SetOffset(313,99.3857,755.5)
level07.colliders.C_Parent_Tile_7ID159.collider:SetAxes(-0.563337, 0, 0.826227, 0, -1, 0, 0.826227, 0, 0.563337)
level07.colliders.C_Parent_Tile_7ID159.collider:SetHalfLengths(0.3,6.20862,13.3135)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID159.collider)
level07.colliders.C_Parent_Tile_7ID160 = {}
level07.colliders.C_Parent_Tile_7ID160.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID160.collider:SetOffset(383,106.321,710.5)
level07.colliders.C_Parent_Tile_7ID160.collider:SetAxes(0.928477, 0, -0.371391, 0, -1, -0, -0.371391, 0, -0.928477)
level07.colliders.C_Parent_Tile_7ID160.collider:SetHalfLengths(0.3,5.07994,2.69258)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID160.collider)
level07.colliders.C_Parent_Tile_7ID161 = {}
level07.colliders.C_Parent_Tile_7ID161.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID161.collider:SetOffset(379.5,106.241,706)
level07.colliders.C_Parent_Tile_7ID161.collider:SetAxes(0.624695, 0, -0.780869, 0, -1, -0, -0.780869, 0, -0.624695)
level07.colliders.C_Parent_Tile_7ID161.collider:SetHalfLengths(0.3,5.53654,3.20156)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID161.collider)
level07.colliders.C_Parent_Tile_7ID162 = {}
level07.colliders.C_Parent_Tile_7ID162.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID162.collider:SetOffset(372,105.704,702)
level07.colliders.C_Parent_Tile_7ID162.collider:SetAxes(0.371391, 0, -0.928477, 0, -1, -0, -0.928477, 0, -0.371391)
level07.colliders.C_Parent_Tile_7ID162.collider:SetHalfLengths(0.3,6.0731,5.38516)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID162.collider)
level07.colliders.C_Parent_Tile_7ID163 = {}
level07.colliders.C_Parent_Tile_7ID163.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID163.collider:SetOffset(198.125,104.688,770)
level07.colliders.C_Parent_Tile_7ID163.collider:SetAxes(0.580707, 0, 0.814113, 0, -1, 0, -0.814113, 0, 0.580707)
level07.colliders.C_Parent_Tile_7ID163.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID163.collider)
level07.colliders.C_Parent_Tile_7ID164 = {}
level07.colliders.C_Parent_Tile_7ID164.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID164.collider:SetOffset(192.375,105.313,769.5)
level07.colliders.C_Parent_Tile_7ID164.collider:SetAxes(0.998007, 0.0631111, 0, 0.0631111, -0.998007, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID164.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID164.collider)
level07.colliders.C_Parent_Tile_7ID165 = {}
level07.colliders.C_Parent_Tile_7ID165.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID165.collider:SetOffset(187,105.563,769.5)
level07.colliders.C_Parent_Tile_7ID165.collider:SetAxes(-0.0653646, 0, -0.997861, 0, -1, -0, 0.997861, 0, -0.0653646)
level07.colliders.C_Parent_Tile_7ID165.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID165.collider)
level07.colliders.C_Parent_Tile_7ID166 = {}
level07.colliders.C_Parent_Tile_7ID166.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID166.collider:SetOffset(183.375,103.375,768.5)
level07.colliders.C_Parent_Tile_7ID166.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID166.collider:SetHalfLengths(0.8,1,0.7)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID166.collider)
level07.colliders.C_Parent_Tile_7ID167 = {}
level07.colliders.C_Parent_Tile_7ID167.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID167.collider:SetOffset(194.75,107.063,769)
level07.colliders.C_Parent_Tile_7ID167.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID167.collider:SetHalfLengths(0.6,1,0.6)
level07.colliders.C_Parent_Tile_7ID157.collider:AddChild(level07.colliders.C_Parent_Tile_7ID167.collider)
level07.colliders.C_Parent_Tile_7ID168 = {}
level07.colliders.C_Parent_Tile_7ID168.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID168.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID168.collider:SetMinPos(319.5,91.0016,730)
level07.colliders.C_Parent_Tile_7ID168.collider:SetMaxPos(384.3,111.063,766.298)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID168.collider)
level07.colliders.C_Parent_Tile_7ID169 = {}
level07.colliders.C_Parent_Tile_7ID169.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID169.collider:SetOffset(337,98.1771,764.5)
level07.colliders.C_Parent_Tile_7ID169.collider:SetAxes(-0.114624, 0, 0.993409, 0, -1, 0, 0.993409, 0, 0.114624)
level07.colliders.C_Parent_Tile_7ID169.collider:SetHalfLengths(0.3,5.72517,13.0863)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID169.collider)
level07.colliders.C_Parent_Tile_7ID170 = {}
level07.colliders.C_Parent_Tile_7ID170.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID170.collider:SetOffset(360.5,98.9023,759)
level07.colliders.C_Parent_Tile_7ID170.collider:SetAxes(0.5547, -0, 0.83205, 0, -1, -0, 0.83205, 0, -0.5547)
level07.colliders.C_Parent_Tile_7ID170.collider:SetHalfLengths(0.3,5.48345,12.6194)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID170.collider)
level07.colliders.C_Parent_Tile_7ID171 = {}
level07.colliders.C_Parent_Tile_7ID171.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID171.collider:SetOffset(377.5,98.4188,745.5)
level07.colliders.C_Parent_Tile_7ID171.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level07.colliders.C_Parent_Tile_7ID171.collider:SetHalfLengths(0.3,6.45035,9.19239)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID171.collider)
level07.colliders.C_Parent_Tile_7ID172 = {}
level07.colliders.C_Parent_Tile_7ID172.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID172.collider:SetOffset(384,99.8692,735.5)
level07.colliders.C_Parent_Tile_7ID172.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level07.colliders.C_Parent_Tile_7ID172.collider:SetHalfLengths(0.3,8.8676,3.5)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID172.collider)
level07.colliders.C_Parent_Tile_7ID173 = {}
level07.colliders.C_Parent_Tile_7ID173.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID173.collider:SetOffset(351,104.375,751.5)
level07.colliders.C_Parent_Tile_7ID173.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID173.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID173.collider)
level07.colliders.C_Parent_Tile_7ID174 = {}
level07.colliders.C_Parent_Tile_7ID174.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID174.collider:SetOffset(366.25,106.063,731.5)
level07.colliders.C_Parent_Tile_7ID174.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID174.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID174.collider)
level07.colliders.C_Parent_Tile_7ID175 = {}
level07.colliders.C_Parent_Tile_7ID175.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID175.collider:SetOffset(321,104.688,743.5)
level07.colliders.C_Parent_Tile_7ID175.collider:SetAxes(1, 0, 0, 0, -1, 0, 0, 0, 1)
level07.colliders.C_Parent_Tile_7ID175.collider:SetHalfLengths(1.5,5,1.5)
level07.colliders.C_Parent_Tile_7ID168.collider:AddChild(level07.colliders.C_Parent_Tile_7ID175.collider)
CollisionHandler.AddAABB(level07.colliders.C_Parent_Tile_7ID.collider, 3)
level07.colliders.C_Parent_Tile_7ID1 = nil
level07.colliders.C_Parent_Tile_7ID2 = nil
level07.colliders.C_Parent_Tile_7ID3 = nil
level07.colliders.C_Parent_Tile_7ID4 = nil
level07.colliders.C_Parent_Tile_7ID5 = nil
level07.colliders.C_Parent_Tile_7ID6 = nil
level07.colliders.C_Parent_Tile_7ID7 = nil
level07.colliders.C_Parent_Tile_7ID8 = nil
level07.colliders.C_Parent_Tile_7ID9 = nil
level07.colliders.C_Parent_Tile_7ID10 = nil
level07.colliders.C_Parent_Tile_7ID11 = nil
level07.colliders.C_Parent_Tile_7ID12 = nil
level07.colliders.C_Parent_Tile_7ID13 = nil
level07.colliders.C_Parent_Tile_7ID14 = nil
level07.colliders.C_Parent_Tile_7ID15 = nil
level07.colliders.C_Parent_Tile_7ID16 = nil
level07.colliders.C_Parent_Tile_7ID17 = nil
level07.colliders.C_Parent_Tile_7ID18 = nil
level07.colliders.C_Parent_Tile_7ID19 = nil
level07.colliders.C_Parent_Tile_7ID20 = nil
level07.colliders.C_Parent_Tile_7ID21 = nil
level07.colliders.C_Parent_Tile_7ID22 = nil
level07.colliders.C_Parent_Tile_7ID23 = nil
level07.colliders.C_Parent_Tile_7ID24 = nil
level07.colliders.C_Parent_Tile_7ID25 = nil
level07.colliders.C_Parent_Tile_7ID26 = nil
level07.colliders.C_Parent_Tile_7ID27 = nil
level07.colliders.C_Parent_Tile_7ID28 = nil
level07.colliders.C_Parent_Tile_7ID29 = nil
level07.colliders.C_Parent_Tile_7ID30 = nil
level07.colliders.C_Parent_Tile_7ID31 = nil
level07.colliders.C_Parent_Tile_7ID32 = nil
level07.colliders.C_Parent_Tile_7ID33 = nil
level07.colliders.C_Parent_Tile_7ID34 = nil
level07.colliders.C_Parent_Tile_7ID35 = nil
level07.colliders.C_Parent_Tile_7ID36 = nil
level07.colliders.C_Parent_Tile_7ID37 = nil
level07.colliders.C_Parent_Tile_7ID38 = nil
level07.colliders.C_Parent_Tile_7ID39 = nil
level07.colliders.C_Parent_Tile_7ID40 = nil
level07.colliders.C_Parent_Tile_7ID41 = nil
level07.colliders.C_Parent_Tile_7ID42 = nil
level07.colliders.C_Parent_Tile_7ID43 = nil
level07.colliders.C_Parent_Tile_7ID44 = nil
level07.colliders.C_Parent_Tile_7ID45 = nil
level07.colliders.C_Parent_Tile_7ID46 = nil
level07.colliders.C_Parent_Tile_7ID47 = nil
level07.colliders.C_Parent_Tile_7ID48 = nil
level07.colliders.C_Parent_Tile_7ID49 = nil
level07.colliders.C_Parent_Tile_7ID50 = nil
level07.colliders.C_Parent_Tile_7ID51 = nil
level07.colliders.C_Parent_Tile_7ID52 = nil
level07.colliders.C_Parent_Tile_7ID53 = nil
level07.colliders.C_Parent_Tile_7ID54 = nil
level07.colliders.C_Parent_Tile_7ID55 = nil
level07.colliders.C_Parent_Tile_7ID56 = nil
level07.colliders.C_Parent_Tile_7ID57 = nil
level07.colliders.C_Parent_Tile_7ID58 = nil
level07.colliders.C_Parent_Tile_7ID59 = nil
level07.colliders.C_Parent_Tile_7ID60 = nil
level07.colliders.C_Parent_Tile_7ID61 = nil
level07.colliders.C_Parent_Tile_7ID62 = nil
level07.colliders.C_Parent_Tile_7ID63 = nil
level07.colliders.C_Parent_Tile_7ID64 = nil
level07.colliders.C_Parent_Tile_7ID65 = nil
level07.colliders.C_Parent_Tile_7ID66 = nil
level07.colliders.C_Parent_Tile_7ID67 = nil
level07.colliders.C_Parent_Tile_7ID68 = nil
level07.colliders.C_Parent_Tile_7ID69 = nil
level07.colliders.C_Parent_Tile_7ID70 = nil
level07.colliders.C_Parent_Tile_7ID71 = nil
level07.colliders.C_Parent_Tile_7ID72 = nil
level07.colliders.C_Parent_Tile_7ID73 = nil
level07.colliders.C_Parent_Tile_7ID74 = nil
level07.colliders.C_Parent_Tile_7ID75 = nil
level07.colliders.C_Parent_Tile_7ID76 = nil
level07.colliders.C_Parent_Tile_7ID77 = nil
level07.colliders.C_Parent_Tile_7ID78 = nil
level07.colliders.C_Parent_Tile_7ID79 = nil
level07.colliders.C_Parent_Tile_7ID80 = nil
level07.colliders.C_Parent_Tile_7ID81 = nil
level07.colliders.C_Parent_Tile_7ID82 = nil
level07.colliders.C_Parent_Tile_7ID83 = nil
level07.colliders.C_Parent_Tile_7ID84 = nil
level07.colliders.C_Parent_Tile_7ID85 = nil
level07.colliders.C_Parent_Tile_7ID86 = nil
level07.colliders.C_Parent_Tile_7ID87 = nil
level07.colliders.C_Parent_Tile_7ID88 = nil
level07.colliders.C_Parent_Tile_7ID89 = nil
level07.colliders.C_Parent_Tile_7ID90 = nil
level07.colliders.C_Parent_Tile_7ID91 = nil
level07.colliders.C_Parent_Tile_7ID92 = nil
level07.colliders.C_Parent_Tile_7ID93 = nil
level07.colliders.C_Parent_Tile_7ID94 = nil
level07.colliders.C_Parent_Tile_7ID95 = nil
level07.colliders.C_Parent_Tile_7ID96 = nil
level07.colliders.C_Parent_Tile_7ID97 = nil
level07.colliders.C_Parent_Tile_7ID98 = nil
level07.colliders.C_Parent_Tile_7ID99 = nil
level07.colliders.C_Parent_Tile_7ID100 = nil
level07.colliders.C_Parent_Tile_7ID101 = nil
level07.colliders.C_Parent_Tile_7ID102 = nil
level07.colliders.C_Parent_Tile_7ID103 = nil
level07.colliders.C_Parent_Tile_7ID104 = nil
level07.colliders.C_Parent_Tile_7ID105 = nil
level07.colliders.C_Parent_Tile_7ID106 = nil
level07.colliders.C_Parent_Tile_7ID107 = nil
level07.colliders.C_Parent_Tile_7ID108 = nil
level07.colliders.C_Parent_Tile_7ID109 = nil
level07.colliders.C_Parent_Tile_7ID110 = nil
level07.colliders.C_Parent_Tile_7ID111 = nil
level07.colliders.C_Parent_Tile_7ID112 = nil
level07.colliders.C_Parent_Tile_7ID113 = nil
level07.colliders.C_Parent_Tile_7ID114 = nil
level07.colliders.C_Parent_Tile_7ID115 = nil
level07.colliders.C_Parent_Tile_7ID116 = nil
level07.colliders.C_Parent_Tile_7ID117 = nil
level07.colliders.C_Parent_Tile_7ID118 = nil
level07.colliders.C_Parent_Tile_7ID119 = nil
level07.colliders.C_Parent_Tile_7ID120 = nil
level07.colliders.C_Parent_Tile_7ID121 = nil
level07.colliders.C_Parent_Tile_7ID122 = nil
level07.colliders.C_Parent_Tile_7ID123 = nil
level07.colliders.C_Parent_Tile_7ID124 = nil
level07.colliders.C_Parent_Tile_7ID125 = nil
level07.colliders.C_Parent_Tile_7ID126 = nil
level07.colliders.C_Parent_Tile_7ID127 = nil
level07.colliders.C_Parent_Tile_7ID128 = nil
level07.colliders.C_Parent_Tile_7ID129 = nil
level07.colliders.C_Parent_Tile_7ID130 = nil
level07.colliders.C_Parent_Tile_7ID131 = nil
level07.colliders.C_Parent_Tile_7ID132 = nil
level07.colliders.C_Parent_Tile_7ID133 = nil
level07.colliders.C_Parent_Tile_7ID134 = nil
level07.colliders.C_Parent_Tile_7ID135 = nil
level07.colliders.C_Parent_Tile_7ID136 = nil
level07.colliders.C_Parent_Tile_7ID137 = nil
level07.colliders.C_Parent_Tile_7ID138 = nil
level07.colliders.C_Parent_Tile_7ID139 = nil
level07.colliders.C_Parent_Tile_7ID140 = nil
level07.colliders.C_Parent_Tile_7ID141 = nil
level07.colliders.C_Parent_Tile_7ID142 = nil
level07.colliders.C_Parent_Tile_7ID143 = nil
level07.colliders.C_Parent_Tile_7ID144 = nil
level07.colliders.C_Parent_Tile_7ID145 = nil
level07.colliders.C_Parent_Tile_7ID146 = nil
level07.colliders.C_Parent_Tile_7ID147 = nil
level07.colliders.C_Parent_Tile_7ID148 = nil
level07.colliders.C_Parent_Tile_7ID149 = nil
level07.colliders.C_Parent_Tile_7ID150 = nil
level07.colliders.C_Parent_Tile_7ID151 = nil
level07.colliders.C_Parent_Tile_7ID152 = nil
level07.colliders.C_Parent_Tile_7ID153 = nil
level07.colliders.C_Parent_Tile_7ID154 = nil
level07.colliders.C_Parent_Tile_7ID155 = nil
level07.colliders.C_Parent_Tile_7ID156 = nil
level07.colliders.C_Parent_Tile_7ID157 = nil
level07.colliders.C_Parent_Tile_7ID158 = nil
level07.colliders.C_Parent_Tile_7ID159 = nil
level07.colliders.C_Parent_Tile_7ID160 = nil
level07.colliders.C_Parent_Tile_7ID161 = nil
level07.colliders.C_Parent_Tile_7ID162 = nil
level07.colliders.C_Parent_Tile_7ID163 = nil
level07.colliders.C_Parent_Tile_7ID164 = nil
level07.colliders.C_Parent_Tile_7ID165 = nil
level07.colliders.C_Parent_Tile_7ID166 = nil
level07.colliders.C_Parent_Tile_7ID167 = nil
level07.colliders.C_Parent_Tile_7ID168 = nil
level07.colliders.C_Parent_Tile_7ID169 = nil
level07.colliders.C_Parent_Tile_7ID170 = nil
level07.colliders.C_Parent_Tile_7ID171 = nil
level07.colliders.C_Parent_Tile_7ID172 = nil
level07.colliders.C_Parent_Tile_7ID173 = nil
level07.colliders.C_Parent_Tile_7ID174 = nil
level07.colliders.C_Parent_Tile_7ID175 = nil
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
Light.removeLight(level07.props.Asset_Torch25ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch25ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch25ID = nil
Light.removeLight(level07.props.Asset_Torch26ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch26ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch26ID = nil
Light.removeLight(level07.props.Asset_Torch27ID.lightIndex)
Gear.UnbindInstance(level07.props.Asset_Torch27ID.transformID)
Assets.UnloadModel('Models/Torch.model')
level07.props.Asset_Torch27ID = nil
level07.colliders.C_Parent_Tile_71ID = nil
level07.colliders.C_Parent_Tile_72ID = nil
level07.colliders.C_Parent_Tile_73ID = nil
level07.colliders.C_Parent_Tile_74ID = nil
level07.colliders.C_Parent_Tile_75ID = nil
level07.colliders.C_Parent_Tile_76ID = nil
level07.colliders.C_Parent_Tile_77ID = nil
level07.colliders.C_Parent_Tile_78ID = nil
level07.colliders.C_Parent_Tile_79ID = nil
level07.colliders.C_Parent_Tile_710ID = nil
level07.colliders.C_Parent_Tile_711ID = nil
level07.colliders.C_Parent_Tile_712ID = nil
level07.colliders.C_Parent_Tile_713ID = nil
level07.colliders.C_Parent_Tile_714ID = nil
level07.colliders.C_Parent_Tile_715ID = nil
level07.colliders.C_Parent_Tile_716ID = nil
level07.colliders.C_Parent_Tile_717ID = nil
level07.colliders.C_Parent_Tile_718ID = nil
level07.colliders.C_Parent_Tile_7ID = nil
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
level08.colliders.C_Parent_Tile_8ID = {}
level08.colliders.C_Parent_Tile_8ID.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID.collider:SetMinPos(262.702,119.168,391.777)
level08.colliders.C_Parent_Tile_8ID.collider:SetMaxPos(380.298,150.026,511)
level08.colliders.C_Parent_Tile_8ID.collider:SetPos(0,0,0)
level08.colliders.C_Parent_Tile_8ID1 = {}
level08.colliders.C_Parent_Tile_8ID1.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID1.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID1.collider:SetMinPos(262.702,121.155,397.721)
level08.colliders.C_Parent_Tile_8ID1.collider:SetMaxPos(336.095,133.14,451.037)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID1.collider)
level08.colliders.C_Parent_Tile_8ID2 = {}
level08.colliders.C_Parent_Tile_8ID2.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID2.collider:SetOffset(331.5,126.486,402.5)
level08.colliders.C_Parent_Tile_8ID2.collider:SetAxes(0.316228, 0, -0.948683, 0, -1, -0, -0.948683, 0, -0.316228)
level08.colliders.C_Parent_Tile_8ID2.collider:SetHalfLengths(0.3,5.33107,4.74342)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID2.collider)
level08.colliders.C_Parent_Tile_8ID3 = {}
level08.colliders.C_Parent_Tile_8ID3.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID3.collider:SetOffset(321.5,126.817,401)
level08.colliders.C_Parent_Tile_8ID3.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level08.colliders.C_Parent_Tile_8ID3.collider:SetHalfLengths(0.3,5,5.5)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID3.collider)
level08.colliders.C_Parent_Tile_8ID4 = {}
level08.colliders.C_Parent_Tile_8ID4.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID4.collider:SetOffset(312.5,126.817,402)
level08.colliders.C_Parent_Tile_8ID4.collider:SetAxes(-0.274721, 0, -0.961524, -0, -1, 0, -0.961524, 0, 0.274721)
level08.colliders.C_Parent_Tile_8ID4.collider:SetHalfLengths(0.3,5.16553,3.64005)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID4.collider)
level08.colliders.C_Parent_Tile_8ID5 = {}
level08.colliders.C_Parent_Tile_8ID5.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID5.collider:SetOffset(303.5,126.651,406)
level08.colliders.C_Parent_Tile_8ID5.collider:SetAxes(-0.478852, 0, -0.877896, -0, -1, 0, -0.877896, 0, 0.478852)
level08.colliders.C_Parent_Tile_8ID5.collider:SetHalfLengths(0.3,5.16553,6.26498)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID5.collider)
level08.colliders.C_Parent_Tile_8ID6 = {}
level08.colliders.C_Parent_Tile_8ID6.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID6.collider:SetOffset(293.5,126.486,403.5)
level08.colliders.C_Parent_Tile_8ID6.collider:SetAxes(0.773957, 0, -0.633238, 0, -1, -0, -0.633238, 0, -0.773957)
level08.colliders.C_Parent_Tile_8ID6.collider:SetHalfLengths(0.3,5.33107,7.10634)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID6.collider)
level08.colliders.C_Parent_Tile_8ID7 = {}
level08.colliders.C_Parent_Tile_8ID7.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID7.collider:SetOffset(264,127.312,443)
level08.colliders.C_Parent_Tile_8ID7.collider:SetAxes(0.992278, 0, -0.124035, 0, -1, -0, -0.124035, 0, -0.992278)
level08.colliders.C_Parent_Tile_8ID7.collider:SetHalfLengths(0.3,5.33105,8.06226)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID7.collider)
level08.colliders.C_Parent_Tile_8ID8 = {}
level08.colliders.C_Parent_Tile_8ID8.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID8.collider:SetOffset(264.5,127.643,426.5)
level08.colliders.C_Parent_Tile_8ID8.collider:SetAxes(0.984784, -0, 0.173785, 0, -1, -0, 0.173785, 0, -0.984784)
level08.colliders.C_Parent_Tile_8ID8.collider:SetHalfLengths(0.3,5.16553,8.63134)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID8.collider)
level08.colliders.C_Parent_Tile_8ID9 = {}
level08.colliders.C_Parent_Tile_8ID9.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID9.collider:SetOffset(267.5,127.808,414.5)
level08.colliders.C_Parent_Tile_8ID9.collider:SetAxes(0.919145, -0, 0.393919, 0, -1, -0, 0.393919, 0, -0.919145)
level08.colliders.C_Parent_Tile_8ID9.collider:SetHalfLengths(0.3,5.16553,3.80789)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID9.collider)
level08.colliders.C_Parent_Tile_8ID10 = {}
level08.colliders.C_Parent_Tile_8ID10.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID10.collider:SetOffset(271.5,127.974,407.5)
level08.colliders.C_Parent_Tile_8ID10.collider:SetAxes(0.813733, -0, 0.581238, 0, -1, -0, 0.581238, 0, -0.813733)
level08.colliders.C_Parent_Tile_8ID10.collider:SetHalfLengths(0.3,5.16553,4.30116)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID10.collider)
level08.colliders.C_Parent_Tile_8ID11 = {}
level08.colliders.C_Parent_Tile_8ID11.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID11.collider:SetOffset(281.5,128.14,401)
level08.colliders.C_Parent_Tile_8ID11.collider:SetAxes(0.371391, -0, 0.928477, 0, -1, -0, 0.928477, 0, -0.371391)
level08.colliders.C_Parent_Tile_8ID11.collider:SetHalfLengths(0.3,5,8.07775)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID11.collider)
level08.colliders.C_Parent_Tile_8ID12 = {}
level08.colliders.C_Parent_Tile_8ID12.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID12.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID12.collider:SetMinPos(264.725,120.658,391.777)
level08.colliders.C_Parent_Tile_8ID12.collider:SetMaxPos(377.272,133.471,483.18)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID12.collider)
level08.colliders.C_Parent_Tile_8ID13 = {}
level08.colliders.C_Parent_Tile_8ID13.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID13.collider:SetOffset(351,126.155,401)
level08.colliders.C_Parent_Tile_8ID13.collider:SetAxes(-0.83205, 0, -0.5547, -0, -1, 0, -0.5547, 0, 0.83205)
level08.colliders.C_Parent_Tile_8ID13.collider:SetHalfLengths(0.3,5.4966,3.60555)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID13.collider)
level08.colliders.C_Parent_Tile_8ID14 = {}
level08.colliders.C_Parent_Tile_8ID14.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID14.collider:SetOffset(346.5,126.651,406.5)
level08.colliders.C_Parent_Tile_8ID14.collider:SetAxes(-0.707107, 0, -0.707107, -0, -1, 0, -0.707107, 0, 0.707107)
level08.colliders.C_Parent_Tile_8ID14.collider:SetHalfLengths(0.3,5.33107,3.53553)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID14.collider)
level08.colliders.C_Parent_Tile_8ID15 = {}
level08.colliders.C_Parent_Tile_8ID15.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID15.collider:SetOffset(340,126.32,406.5)
level08.colliders.C_Parent_Tile_8ID15.collider:SetAxes(0.529999, 0, -0.847998, 0, -1, -0, -0.847998, 0, -0.529999)
level08.colliders.C_Parent_Tile_8ID15.collider:SetHalfLengths(0.3,5.16553,4.71699)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID15.collider)
level08.colliders.C_Parent_Tile_8ID16 = {}
level08.colliders.C_Parent_Tile_8ID16.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID16.collider:SetOffset(284.5,126.815,481)
level08.colliders.C_Parent_Tile_8ID16.collider:SetAxes(0.8, 0, -0.6, 0, -1, -0, -0.6, 0, -0.8)
level08.colliders.C_Parent_Tile_8ID16.collider:SetHalfLengths(0.3,5,2.5)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID16.collider)
level08.colliders.C_Parent_Tile_8ID17 = {}
level08.colliders.C_Parent_Tile_8ID17.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID17.collider:SetOffset(280,126.815,476)
level08.colliders.C_Parent_Tile_8ID17.collider:SetAxes(0.707107, 0, -0.707107, 0, -1, -0, -0.707107, 0, -0.707107)
level08.colliders.C_Parent_Tile_8ID17.collider:SetHalfLengths(0.3,5,4.24264)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID17.collider)
level08.colliders.C_Parent_Tile_8ID18 = {}
level08.colliders.C_Parent_Tile_8ID18.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID18.collider:SetOffset(274.5,126.815,470)
level08.colliders.C_Parent_Tile_8ID18.collider:SetAxes(0.768221, 0, -0.640184, 0, -1, -0, -0.640184, 0, -0.768221)
level08.colliders.C_Parent_Tile_8ID18.collider:SetHalfLengths(0.3,5.16553,3.90512)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID18.collider)
level08.colliders.C_Parent_Tile_8ID19 = {}
level08.colliders.C_Parent_Tile_8ID19.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID19.collider:SetOffset(268.5,126.981,459)
level08.colliders.C_Parent_Tile_8ID19.collider:SetAxes(0.916157, 0, -0.400819, 0, -1, -0, -0.400819, 0, -0.916157)
level08.colliders.C_Parent_Tile_8ID19.collider:SetHalfLengths(0.3,5.33105,8.73212)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID19.collider)
level08.colliders.C_Parent_Tile_8ID20 = {}
level08.colliders.C_Parent_Tile_8ID20.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID20.collider:SetOffset(373.5,127.808,410.5)
level08.colliders.C_Parent_Tile_8ID20.collider:SetAxes(0.906183, 0, -0.422886, 0, -1, -0, -0.422886, 0, -0.906183)
level08.colliders.C_Parent_Tile_8ID20.collider:SetHalfLengths(0.3,5.33105,8.27647)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID20.collider)
level08.colliders.C_Parent_Tile_8ID21 = {}
level08.colliders.C_Parent_Tile_8ID21.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID21.collider:SetOffset(365.5,128.14,397.5)
level08.colliders.C_Parent_Tile_8ID21.collider:SetAxes(0.773957, 0, -0.633238, 0, -1, -0, -0.633238, 0, -0.773957)
level08.colliders.C_Parent_Tile_8ID21.collider:SetHalfLengths(0.3,5.16553,7.10634)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID21.collider)
level08.colliders.C_Parent_Tile_8ID22 = {}
level08.colliders.C_Parent_Tile_8ID22.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID22.collider:SetOffset(356,128.305,396.5)
level08.colliders.C_Parent_Tile_8ID22.collider:SetAxes(-0.668965, 0, -0.743294, -0, -1, 0, -0.743294, 0, 0.668965)
level08.colliders.C_Parent_Tile_8ID22.collider:SetHalfLengths(0.3,5.16553,6.72681)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID22.collider)
level08.colliders.C_Parent_Tile_8ID23 = {}
level08.colliders.C_Parent_Tile_8ID23.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID23.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID23.collider:SetMinPos(285.813,119.168,417.948)
level08.colliders.C_Parent_Tile_8ID23.collider:SetMaxPos(380.298,150.026,493.276)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID23.collider)
level08.colliders.C_Parent_Tile_8ID24 = {}
level08.colliders.C_Parent_Tile_8ID24.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID24.collider:SetOffset(288.5,126.817,485)
level08.colliders.C_Parent_Tile_8ID24.collider:SetAxes(-0.624695, 0, 0.780869, 0, -1, 0, 0.780869, 0, 0.624695)
level08.colliders.C_Parent_Tile_8ID24.collider:SetHalfLengths(0.3,7.64857,3.20156)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID24.collider)
level08.colliders.C_Parent_Tile_8ID25 = {}
level08.colliders.C_Parent_Tile_8ID25.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID25.collider:SetOffset(294,129.465,488.5)
level08.colliders.C_Parent_Tile_8ID25.collider:SetAxes(-0.447214, 0, 0.894427, 0, -1, 0, 0.894427, 0, 0.447214)
level08.colliders.C_Parent_Tile_8ID25.collider:SetHalfLengths(0.3,8.47624,3.3541)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID25.collider)
level08.colliders.C_Parent_Tile_8ID26 = {}
level08.colliders.C_Parent_Tile_8ID26.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID26.collider:SetOffset(300.5,132.942,491.5)
level08.colliders.C_Parent_Tile_8ID26.collider:SetAxes(-0.393919, 0, 0.919145, 0, -1, 0, 0.919145, 0, 0.393919)
level08.colliders.C_Parent_Tile_8ID26.collider:SetHalfLengths(0.3,9.13838,3.80789)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID26.collider)
level08.colliders.C_Parent_Tile_8ID27 = {}
level08.colliders.C_Parent_Tile_8ID27.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID27.collider:SetOffset(311.5,141.218,485)
level08.colliders.C_Parent_Tile_8ID27.collider:SetAxes(0.274721, 0, -0.961524, 0, -1, -0, -0.961524, 0, -0.274721)
level08.colliders.C_Parent_Tile_8ID27.collider:SetHalfLengths(0.3,8.80731,3.64005)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID27.collider)
level08.colliders.C_Parent_Tile_8ID28 = {}
level08.colliders.C_Parent_Tile_8ID28.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID28.collider:SetOffset(305.5,137.411,483)
level08.colliders.C_Parent_Tile_8ID28.collider:SetAxes(0.371391, 0, -0.928477, 0, -1, -0, -0.928477, 0, -0.371391)
level08.colliders.C_Parent_Tile_8ID28.collider:SetHalfLengths(0.3,8.47624,2.69258)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID28.collider)
level08.colliders.C_Parent_Tile_8ID29 = {}
level08.colliders.C_Parent_Tile_8ID29.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID29.collider:SetOffset(297.5,133.935,479)
level08.colliders.C_Parent_Tile_8ID29.collider:SetAxes(0.478852, 0, -0.877896, 0, -1, -0, -0.877896, 0, -0.478852)
level08.colliders.C_Parent_Tile_8ID29.collider:SetHalfLengths(0.3,12.118,6.26498)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID29.collider)
level08.colliders.C_Parent_Tile_8ID30 = {}
level08.colliders.C_Parent_Tile_8ID30.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID30.collider:SetOffset(379.5,127.312,439)
level08.colliders.C_Parent_Tile_8ID30.collider:SetAxes(0.992278, -0, 0.124035, 0, -1, -0, 0.124035, 0, -0.992278)
level08.colliders.C_Parent_Tile_8ID30.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID30.collider)
level08.colliders.C_Parent_Tile_8ID31 = {}
level08.colliders.C_Parent_Tile_8ID31.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID31.collider:SetOffset(378.5,127.477,426.5)
level08.colliders.C_Parent_Tile_8ID31.collider:SetAxes(0.984784, 0, -0.173785, 0, -1, -0, -0.173785, 0, -0.984784)
level08.colliders.C_Parent_Tile_8ID31.collider:SetHalfLengths(0.3,5.33105,8.63134)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID31.collider)
level08.colliders.C_Parent_Tile_8ID32 = {}
level08.colliders.C_Parent_Tile_8ID32.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID32.collider:SetOffset(308.5,126.65,482.5)
level08.colliders.C_Parent_Tile_8ID32.collider:SetAxes(0.316228, 0, -0.948683, 0, -1, -0, -0.948683, 0, -0.316228)
level08.colliders.C_Parent_Tile_8ID32.collider:SetHalfLengths(0.3,5.16553,7.90569)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID32.collider)
level08.colliders.C_Parent_Tile_8ID33 = {}
level08.colliders.C_Parent_Tile_8ID33.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID33.collider:SetOffset(296.5,126.815,478)
level08.colliders.C_Parent_Tile_8ID33.collider:SetAxes(0.406139, 0, -0.913812, 0, -1, -0, -0.913812, 0, -0.406139)
level08.colliders.C_Parent_Tile_8ID33.collider:SetHalfLengths(0.3,5,4.92443)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID33.collider)
level08.colliders.C_Parent_Tile_8ID34 = {}
level08.colliders.C_Parent_Tile_8ID34.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID34.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID34.collider:SetMinPos(303.927,121.65,442.963)
level08.colliders.C_Parent_Tile_8ID34.collider:SetMaxPos(379.298,147.046,496.296)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID34.collider)
level08.colliders.C_Parent_Tile_8ID35 = {}
level08.colliders.C_Parent_Tile_8ID35.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID35.collider:SetOffset(306,137.08,493.5)
level08.colliders.C_Parent_Tile_8ID35.collider:SetAxes(-0.242536, 0, 0.970143, 0, -1, 0, 0.970143, 0, 0.242536)
level08.colliders.C_Parent_Tile_8ID35.collider:SetHalfLengths(0.3,6.65535,2.06155)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID35.collider)
level08.colliders.C_Parent_Tile_8ID36 = {}
level08.colliders.C_Parent_Tile_8ID36.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID36.collider:SetOffset(310.5,138.735,494.5)
level08.colliders.C_Parent_Tile_8ID36.collider:SetAxes(-0.196116, 0, 0.980581, 0, -1, 0, 0.980581, 0, 0.196116)
level08.colliders.C_Parent_Tile_8ID36.collider:SetHalfLengths(0.3,7.31749,2.54951)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID36.collider)
level08.colliders.C_Parent_Tile_8ID37 = {}
level08.colliders.C_Parent_Tile_8ID37.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID37.collider:SetOffset(316,141.053,495.5)
level08.colliders.C_Parent_Tile_8ID37.collider:SetAxes(-0.164399, 0, 0.986394, 0, -1, 0, 0.986394, 0, 0.164399)
level08.colliders.C_Parent_Tile_8ID37.collider:SetHalfLengths(0.3,5.99321,3.04138)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID37.collider)
level08.colliders.C_Parent_Tile_8ID38 = {}
level08.colliders.C_Parent_Tile_8ID38.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID38.collider:SetOffset(322,141.384,486)
level08.colliders.C_Parent_Tile_8ID38.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level08.colliders.C_Parent_Tile_8ID38.collider:SetHalfLengths(0.3,5.16553,7)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID38.collider)
level08.colliders.C_Parent_Tile_8ID39 = {}
level08.colliders.C_Parent_Tile_8ID39.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID39.collider:SetOffset(347.5,132.942,479)
level08.colliders.C_Parent_Tile_8ID39.collider:SetAxes(0.5547, -0, 0.83205, 0, -1, -0, 0.83205, 0, -0.5547)
level08.colliders.C_Parent_Tile_8ID39.collider:SetHalfLengths(0.3,10.9593,5.40833)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID39.collider)
level08.colliders.C_Parent_Tile_8ID40 = {}
level08.colliders.C_Parent_Tile_8ID40.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID40.collider:SetOffset(374.5,126.981,459)
level08.colliders.C_Parent_Tile_8ID40.collider:SetAxes(0.916157, -0, 0.400819, 0, -1, -0, 0.400819, 0, -0.916157)
level08.colliders.C_Parent_Tile_8ID40.collider:SetHalfLengths(0.3,5.16553,8.73212)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID40.collider)
level08.colliders.C_Parent_Tile_8ID41 = {}
level08.colliders.C_Parent_Tile_8ID41.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID41.collider:SetOffset(378.5,127.146,447)
level08.colliders.C_Parent_Tile_8ID41.collider:SetAxes(0.992278, -0, 0.124035, 0, -1, -0, 0.124035, 0, -0.992278)
level08.colliders.C_Parent_Tile_8ID41.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID41.collider)
level08.colliders.C_Parent_Tile_8ID42 = {}
level08.colliders.C_Parent_Tile_8ID42.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID42.collider:SetOffset(344.5,126.815,479.5)
level08.colliders.C_Parent_Tile_8ID42.collider:SetAxes(-0.422886, 0, -0.906183, -0, -1, 0, -0.906183, 0, 0.422886)
level08.colliders.C_Parent_Tile_8ID42.collider:SetHalfLengths(0.3,5.16553,8.27647)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID42.collider)
level08.colliders.C_Parent_Tile_8ID43 = {}
level08.colliders.C_Parent_Tile_8ID43.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID43.collider:SetOffset(332.5,126.65,484)
level08.colliders.C_Parent_Tile_8ID43.collider:SetAxes(-0.21693, 0, -0.976187, -0, -1, 0, -0.976187, 0, 0.21693)
level08.colliders.C_Parent_Tile_8ID43.collider:SetHalfLengths(0.3,5,4.60977)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID43.collider)
level08.colliders.C_Parent_Tile_8ID44 = {}
level08.colliders.C_Parent_Tile_8ID44.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID44.collider:SetOffset(322,126.65,485)
level08.colliders.C_Parent_Tile_8ID44.collider:SetAxes(0, 0, -1, -0, -1, -0, -1, 0, 0)
level08.colliders.C_Parent_Tile_8ID44.collider:SetHalfLengths(0.3,5,6)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID44.collider)
level08.colliders.C_Parent_Tile_8ID45 = {}
level08.colliders.C_Parent_Tile_8ID45.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID45.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID45.collider:SetMinPos(318.7,121.484,466.808)
level08.colliders.C_Parent_Tile_8ID45.collider:SetMaxPos(371.23,149.363,511)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID45.collider)
level08.colliders.C_Parent_Tile_8ID46 = {}
level08.colliders.C_Parent_Tile_8ID46.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID46.collider:SetOffset(324,142.046,503)
level08.colliders.C_Parent_Tile_8ID46.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level08.colliders.C_Parent_Tile_8ID46.collider:SetHalfLengths(0.3,5,8)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID46.collider)
level08.colliders.C_Parent_Tile_8ID47 = {}
level08.colliders.C_Parent_Tile_8ID47.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID47.collider:SetOffset(326,142.046,495)
level08.colliders.C_Parent_Tile_8ID47.collider:SetAxes(0, 0, 1, 0, -1, 0, 1, 0, 0)
level08.colliders.C_Parent_Tile_8ID47.collider:SetHalfLengths(0.3,5.33105,2)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID47.collider)
level08.colliders.C_Parent_Tile_8ID48 = {}
level08.colliders.C_Parent_Tile_8ID48.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID48.collider:SetOffset(332,141.715,494)
level08.colliders.C_Parent_Tile_8ID48.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level08.colliders.C_Parent_Tile_8ID48.collider:SetHalfLengths(0.3,7.64857,4.12311)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID48.collider)
level08.colliders.C_Parent_Tile_8ID49 = {}
level08.colliders.C_Parent_Tile_8ID49.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID49.collider:SetOffset(340.5,139.066,492)
level08.colliders.C_Parent_Tile_8ID49.collider:SetAxes(0.21693, -0, 0.976187, 0, -1, -0, 0.976187, 0, -0.21693)
level08.colliders.C_Parent_Tile_8ID49.collider:SetHalfLengths(0.3,9.80052,4.60977)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID49.collider)
level08.colliders.C_Parent_Tile_8ID50 = {}
level08.colliders.C_Parent_Tile_8ID50.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID50.collider:SetOffset(319,142.046,503.5)
level08.colliders.C_Parent_Tile_8ID50.collider:SetAxes(-1, 0, 0, 0, -1, 0, 0, 0, 1)
level08.colliders.C_Parent_Tile_8ID50.collider:SetHalfLengths(0.3,5,7.5)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID50.collider)
level08.colliders.C_Parent_Tile_8ID51 = {}
level08.colliders.C_Parent_Tile_8ID51.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID51.collider:SetOffset(331,141.384,485.5)
level08.colliders.C_Parent_Tile_8ID51.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level08.colliders.C_Parent_Tile_8ID51.collider:SetHalfLengths(0.3,7.31749,2.06155)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID51.collider)
level08.colliders.C_Parent_Tile_8ID52 = {}
level08.colliders.C_Parent_Tile_8ID52.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID52.collider:SetOffset(336,139.066,484)
level08.colliders.C_Parent_Tile_8ID52.collider:SetAxes(0.316228, -0, 0.948683, 0, -1, -0, 0.948683, 0, -0.316228)
level08.colliders.C_Parent_Tile_8ID52.collider:SetHalfLengths(0.3,8.3107,3.16228)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID52.collider)
level08.colliders.C_Parent_Tile_8ID53 = {}
level08.colliders.C_Parent_Tile_8ID53.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID53.collider:SetOffset(341,135.756,482.5)
level08.colliders.C_Parent_Tile_8ID53.collider:SetAxes(0.242536, -0, 0.970143, 0, -1, -0, 0.970143, 0, -0.242536)
level08.colliders.C_Parent_Tile_8ID53.collider:SetHalfLengths(0.3,7.8141,2.06155)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID53.collider)
level08.colliders.C_Parent_Tile_8ID54 = {}
level08.colliders.C_Parent_Tile_8ID54.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID54.collider:SetOffset(363,126.65,476)
level08.colliders.C_Parent_Tile_8ID54.collider:SetAxes(0.707107, -0, 0.707107, 0, -1, -0, 0.707107, 0, -0.707107)
level08.colliders.C_Parent_Tile_8ID54.collider:SetHalfLengths(0.3,5.16553,4.24264)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID54.collider)
level08.colliders.C_Parent_Tile_8ID55 = {}
level08.colliders.C_Parent_Tile_8ID55.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID55.collider:SetOffset(368.5,126.815,470)
level08.colliders.C_Parent_Tile_8ID55.collider:SetAxes(0.768221, -0, 0.640184, 0, -1, -0, 0.640184, 0, -0.768221)
level08.colliders.C_Parent_Tile_8ID55.collider:SetHalfLengths(0.3,5.16553,3.90512)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID55.collider)
level08.colliders.C_Parent_Tile_8ID56 = {}
level08.colliders.C_Parent_Tile_8ID56.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID56.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID56.collider:SetMinPos(344.866,120.658,479)
level08.colliders.C_Parent_Tile_8ID56.collider:SetMaxPos(360.3,142.245,491.268)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID56.collider)
level08.colliders.C_Parent_Tile_8ID57 = {}
level08.colliders.C_Parent_Tile_8ID57.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID57.collider:SetOffset(348,134.266,489.5)
level08.colliders.C_Parent_Tile_8ID57.collider:SetAxes(0.447214, -0, 0.894427, 0, -1, -0, 0.894427, 0, -0.447214)
level08.colliders.C_Parent_Tile_8ID57.collider:SetHalfLengths(0.3,7.97963,3.3541)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID57.collider)
level08.colliders.C_Parent_Tile_8ID58 = {}
level08.colliders.C_Parent_Tile_8ID58.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID58.collider:SetOffset(354.5,131.286,485.5)
level08.colliders.C_Parent_Tile_8ID58.collider:SetAxes(0.581238, -0, 0.813733, 0, -1, -0, 0.813733, 0, -0.581238)
level08.colliders.C_Parent_Tile_8ID58.collider:SetHalfLengths(0.3,9.46946,4.30116)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID58.collider)
level08.colliders.C_Parent_Tile_8ID59 = {}
level08.colliders.C_Parent_Tile_8ID59.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID59.collider:SetOffset(359,126.817,481.5)
level08.colliders.C_Parent_Tile_8ID59.collider:SetAxes(0.83205, -0, 0.5547, 0, -1, -0, 0.5547, 0, -0.83205)
level08.colliders.C_Parent_Tile_8ID59.collider:SetHalfLengths(0.3,6.15874,1.80278)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID59.collider)
level08.colliders.C_Parent_Tile_8ID60 = {}
level08.colliders.C_Parent_Tile_8ID60.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID60.collider:SetOffset(360,126.65,479.5)
level08.colliders.C_Parent_Tile_8ID60.collider:SetAxes(1, -0, 0, 0, -1, -0, 0, 0, -1)
level08.colliders.C_Parent_Tile_8ID60.collider:SetHalfLengths(0.3,5,0.5)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID60.collider)
CollisionHandler.AddAABB(level08.colliders.C_Parent_Tile_8ID.collider, 3)
level08.colliders.C_Parent_Tile_8ID1 = nil
level08.colliders.C_Parent_Tile_8ID2 = nil
level08.colliders.C_Parent_Tile_8ID3 = nil
level08.colliders.C_Parent_Tile_8ID4 = nil
level08.colliders.C_Parent_Tile_8ID5 = nil
level08.colliders.C_Parent_Tile_8ID6 = nil
level08.colliders.C_Parent_Tile_8ID7 = nil
level08.colliders.C_Parent_Tile_8ID8 = nil
level08.colliders.C_Parent_Tile_8ID9 = nil
level08.colliders.C_Parent_Tile_8ID10 = nil
level08.colliders.C_Parent_Tile_8ID11 = nil
level08.colliders.C_Parent_Tile_8ID12 = nil
level08.colliders.C_Parent_Tile_8ID13 = nil
level08.colliders.C_Parent_Tile_8ID14 = nil
level08.colliders.C_Parent_Tile_8ID15 = nil
level08.colliders.C_Parent_Tile_8ID16 = nil
level08.colliders.C_Parent_Tile_8ID17 = nil
level08.colliders.C_Parent_Tile_8ID18 = nil
level08.colliders.C_Parent_Tile_8ID19 = nil
level08.colliders.C_Parent_Tile_8ID20 = nil
level08.colliders.C_Parent_Tile_8ID21 = nil
level08.colliders.C_Parent_Tile_8ID22 = nil
level08.colliders.C_Parent_Tile_8ID23 = nil
level08.colliders.C_Parent_Tile_8ID24 = nil
level08.colliders.C_Parent_Tile_8ID25 = nil
level08.colliders.C_Parent_Tile_8ID26 = nil
level08.colliders.C_Parent_Tile_8ID27 = nil
level08.colliders.C_Parent_Tile_8ID28 = nil
level08.colliders.C_Parent_Tile_8ID29 = nil
level08.colliders.C_Parent_Tile_8ID30 = nil
level08.colliders.C_Parent_Tile_8ID31 = nil
level08.colliders.C_Parent_Tile_8ID32 = nil
level08.colliders.C_Parent_Tile_8ID33 = nil
level08.colliders.C_Parent_Tile_8ID34 = nil
level08.colliders.C_Parent_Tile_8ID35 = nil
level08.colliders.C_Parent_Tile_8ID36 = nil
level08.colliders.C_Parent_Tile_8ID37 = nil
level08.colliders.C_Parent_Tile_8ID38 = nil
level08.colliders.C_Parent_Tile_8ID39 = nil
level08.colliders.C_Parent_Tile_8ID40 = nil
level08.colliders.C_Parent_Tile_8ID41 = nil
level08.colliders.C_Parent_Tile_8ID42 = nil
level08.colliders.C_Parent_Tile_8ID43 = nil
level08.colliders.C_Parent_Tile_8ID44 = nil
level08.colliders.C_Parent_Tile_8ID45 = nil
level08.colliders.C_Parent_Tile_8ID46 = nil
level08.colliders.C_Parent_Tile_8ID47 = nil
level08.colliders.C_Parent_Tile_8ID48 = nil
level08.colliders.C_Parent_Tile_8ID49 = nil
level08.colliders.C_Parent_Tile_8ID50 = nil
level08.colliders.C_Parent_Tile_8ID51 = nil
level08.colliders.C_Parent_Tile_8ID52 = nil
level08.colliders.C_Parent_Tile_8ID53 = nil
level08.colliders.C_Parent_Tile_8ID54 = nil
level08.colliders.C_Parent_Tile_8ID55 = nil
level08.colliders.C_Parent_Tile_8ID56 = nil
level08.colliders.C_Parent_Tile_8ID57 = nil
level08.colliders.C_Parent_Tile_8ID58 = nil
level08.colliders.C_Parent_Tile_8ID59 = nil
level08.colliders.C_Parent_Tile_8ID60 = nil
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
level08.colliders.C_Parent_Tile_81ID = nil
level08.colliders.C_Parent_Tile_82ID = nil
level08.colliders.C_Parent_Tile_83ID = nil
level08.colliders.C_Parent_Tile_84ID = nil
level08.colliders.C_Parent_Tile_85ID = nil
level08.colliders.C_Parent_Tile_86ID = nil
level08.colliders.C_Parent_Tile_8ID = nil
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
