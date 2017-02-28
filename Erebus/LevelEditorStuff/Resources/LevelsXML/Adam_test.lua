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


---------------------------------Settings-----------------------------

-------------------------------------level01-----------------------------------------------

level01 = {}
level01.surrounding = { 2 }
level01.load = function()
level01.props = {}
level01.colliders = {}
level01.triggers = {}
level01.props.tile1ID = {}
level01.props.m1ID = {}
level01.props.m1ID.model = Assets.LoadModel('Models/tile1_m1.model')
level01.props.m1ID.transformID = Gear.BindStaticInstance(level01.props.m1ID.model)
Transform.SetPosition(level01.props.m1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m1ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m1ID.transformID, {x=0, y=0, z=0})
level01.props.m2ID = {}
level01.props.m2ID.model = Assets.LoadModel('Models/tile1_m2.model')
level01.props.m2ID.transformID = Gear.BindStaticInstance(level01.props.m2ID.model)
Transform.SetPosition(level01.props.m2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m2ID.transformID, {x=0, y=0, z=0})
level01.props.m3ID = {}
level01.props.m3ID.model = Assets.LoadModel('Models/tile1_m3.model')
level01.props.m3ID.transformID = Gear.BindStaticInstance(level01.props.m3ID.model)
Transform.SetPosition(level01.props.m3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m3ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m3ID.transformID, {x=0, y=0, z=0})
level01.props.m4ID = {}
level01.props.m4ID.model = Assets.LoadModel('Models/tile1_m4.model')
level01.props.m4ID.transformID = Gear.BindStaticInstance(level01.props.m4ID.model)
Transform.SetPosition(level01.props.m4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m4ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m4ID.transformID, {x=0, y=0, z=0})
level01.props.m5ID = {}
level01.props.m5ID.model = Assets.LoadModel('Models/tile1_m5.model')
level01.props.m5ID.transformID = Gear.BindStaticInstance(level01.props.m5ID.model)
Transform.SetPosition(level01.props.m5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m5ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m5ID.transformID, {x=0, y=0, z=0})
level01.props.m6ID = {}
level01.props.m6ID.model = Assets.LoadModel('Models/tile1_m6.model')
level01.props.m6ID.transformID = Gear.BindStaticInstance(level01.props.m6ID.model)
Transform.SetPosition(level01.props.m6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m6ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m6ID.transformID, {x=0, y=0, z=0})
level01.props.m7ID = {}
level01.props.m7ID.model = Assets.LoadModel('Models/tile1_m7.model')
level01.props.m7ID.transformID = Gear.BindStaticInstance(level01.props.m7ID.model)
Transform.SetPosition(level01.props.m7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m7ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m7ID.transformID, {x=0, y=0, z=0})
level01.props.m8ID = {}
level01.props.m8ID.model = Assets.LoadModel('Models/tile1_m8.model')
level01.props.m8ID.transformID = Gear.BindStaticInstance(level01.props.m8ID.model)
Transform.SetPosition(level01.props.m8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.m8ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.m8ID.transformID, {x=0, y=0, z=0})
level01.props.s1ID = {}
level01.props.s1ID.model = Assets.LoadModel('Models/tile1_s1.model')
level01.props.s1ID.transformID = Gear.BindStaticInstance(level01.props.s1ID.model)
Transform.SetPosition(level01.props.s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s1ID.transformID, {x=0, y=0, z=0})
level01.props.s2ID = {}
level01.props.s2ID.model = Assets.LoadModel('Models/tile1_s2.model')
level01.props.s2ID.transformID = Gear.BindStaticInstance(level01.props.s2ID.model)
Transform.SetPosition(level01.props.s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s2ID.transformID, {x=0, y=0, z=0})
level01.props.s3ID = {}
level01.props.s3ID.model = Assets.LoadModel('Models/tile1_s3.model')
level01.props.s3ID.transformID = Gear.BindStaticInstance(level01.props.s3ID.model)
Transform.SetPosition(level01.props.s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s3ID.transformID, {x=0, y=0, z=0})
level01.props.s4ID = {}
level01.props.s4ID.model = Assets.LoadModel('Models/tile1_s4.model')
level01.props.s4ID.transformID = Gear.BindStaticInstance(level01.props.s4ID.model)
Transform.SetPosition(level01.props.s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s4ID.transformID, {x=0, y=0, z=0})
level01.props.s5ID = {}
level01.props.s5ID.model = Assets.LoadModel('Models/tile1_s5.model')
level01.props.s5ID.transformID = Gear.BindStaticInstance(level01.props.s5ID.model)
Transform.SetPosition(level01.props.s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s5ID.transformID, {x=0, y=0, z=0})
level01.props.s6ID = {}
level01.props.s6ID.model = Assets.LoadModel('Models/tile1_s6.model')
level01.props.s6ID.transformID = Gear.BindStaticInstance(level01.props.s6ID.model)
Transform.SetPosition(level01.props.s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s6ID.transformID, {x=0, y=0, z=0})
level01.props.s7ID = {}
level01.props.s7ID.model = Assets.LoadModel('Models/tile1_s7.model')
level01.props.s7ID.transformID = Gear.BindStaticInstance(level01.props.s7ID.model)
Transform.SetPosition(level01.props.s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.s7ID.transformID, {x=0, y=0, z=0})
level01.props.BridgeID = {}
level01.props.BridgeID.model = Assets.LoadModel('Models/bridge.model')
level01.props.BridgeID.transformID = Gear.BindStaticInstance(level01.props.BridgeID.model)
Transform.SetPosition(level01.props.BridgeID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level01.props.BridgeID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.BridgeID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider11ID = {}
level01.props.OakTree_NoCollider11ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider11ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider11ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider11ID.transformID, {x=19.4717, y=3.32006, z=233.278})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider11ID.transformID, 1.69749, 2.11547, 1.80074)
Transform.SetRotation(level01.props.OakTree_NoCollider11ID.transformID, {x=0, y=2.76508, z=0})
level01.props.OakTree_NoCollider12ID = {}
level01.props.OakTree_NoCollider12ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider12ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider12ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider12ID.transformID, {x=66.9529, y=-1.96511, z=238.091})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider12ID.transformID, 1.94691, 2.04659, 2.23553)
Transform.SetRotation(level01.props.OakTree_NoCollider12ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider13ID = {}
level01.props.OakTree_NoCollider13ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider13ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider13ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider13ID.transformID, {x=105.938, y=22.9754, z=262.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider13ID.transformID, 1.54442, 1.53096, 1.59192)
Transform.SetRotation(level01.props.OakTree_NoCollider13ID.transformID, {x=0, y=2.16382, z=0})
level01.props.OakTree_NoCollider14ID = {}
level01.props.OakTree_NoCollider14ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider14ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider14ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider14ID.transformID, {x=153.5, y=36.9871, z=240.875})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider14ID.transformID, 1.50217, 1.33957, 1.49088)
Transform.SetRotation(level01.props.OakTree_NoCollider14ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider151ID = {}
level01.props.OakTree_NoCollider151ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider151ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider151ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider151ID.transformID, {x=162.625, y=33.9723, z=261})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider151ID.transformID, 1.39186, 1.77847, 1.62592)
Transform.SetRotation(level01.props.OakTree_NoCollider151ID.transformID, {x=0, y=1.62265, z=0})
level01.props.OakTree_NoCollider16ID = {}
level01.props.OakTree_NoCollider16ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider16ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider16ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider16ID.transformID, {x=197.875, y=31.5625, z=310.5})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider16ID.transformID, 1.99399, 3.34325, 2.19531)
Transform.SetRotation(level01.props.OakTree_NoCollider16ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider17ID = {}
level01.props.OakTree_NoCollider17ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider17ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider17ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider17ID.transformID, {x=71.0482, y=-4.11021, z=312.494})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider17ID.transformID, 1.71014, 2.07889, 2.00366)
Transform.SetRotation(level01.props.OakTree_NoCollider17ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider18ID = {}
level01.props.OakTree_NoCollider18ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider18ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider18ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider18ID.transformID, {x=114.125, y=28.1863, z=243.75})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider18ID.transformID, 1.34497, 1.46833, 1.33821)
Transform.SetRotation(level01.props.OakTree_NoCollider18ID.transformID, {x=0, y=0, z=0})
level01.props.OakTree_NoCollider19ID = {}
level01.props.OakTree_NoCollider19ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_NoCollider19ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_NoCollider19ID.model)
Transform.SetPosition(level01.props.OakTree_NoCollider19ID.transformID, {x=-6.67376, y=2.61227, z=223.274})
Transform.SetScaleNonUniform(level01.props.OakTree_NoCollider19ID.transformID, 1.51035, 1.40144, 1.09424)
Transform.SetRotation(level01.props.OakTree_NoCollider19ID.transformID, {x=-0.045381, y=3.70048, z=0.0362335})
level01.props.OakTree_ColliderID = {}
level01.props.OakTree_ColliderID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_ColliderID.transformID = Gear.BindStaticInstance(level01.props.OakTree_ColliderID.model)
Transform.SetPosition(level01.props.OakTree_ColliderID.transformID, {x=39.8641, y=8.82813, z=155.087})
Transform.SetScaleNonUniform(level01.props.OakTree_ColliderID.transformID, 1.20964, 1.50687, 1.43645)
Transform.SetRotation(level01.props.OakTree_ColliderID.transformID, {x=0, y=1.7421, z=-0.00619812})
level01.props.OakTree_Collider1ID = {}
level01.props.OakTree_Collider1ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1ID.transformID, {x=0, y=0.376574, z=0})
level01.props.OakTree_Collider2ID = {}
level01.props.OakTree_Collider2ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2ID.transformID, {x=0, y=-2.0418, z=0})
level01.props.OakTree_Collider3ID = {}
level01.props.OakTree_Collider3ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3ID.transformID, {x=0, y=-1.42165, z=0})
level01.props.PineTree_NoColliderID = {}
level01.props.PineTree_NoColliderID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoColliderID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoColliderID.model)
Transform.SetPosition(level01.props.PineTree_NoColliderID.transformID, {x=73.3881, y=13.5986, z=220.52})
Transform.SetScaleNonUniform(level01.props.PineTree_NoColliderID.transformID, 1.16469, 1.23132, 1.13573)
Transform.SetRotation(level01.props.PineTree_NoColliderID.transformID, {x=0.536822, y=0.137189, z=0.401651})
level01.props.PineTree_NoCollider2ID = {}
level01.props.PineTree_NoCollider2ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider2ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider2ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider2ID.transformID, {x=125.188, y=30.0469, z=259.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider2ID.transformID, 1.65057, 1.71418, 1.57791)
Transform.SetRotation(level01.props.PineTree_NoCollider2ID.transformID, {x=0, y=2.5061, z=0})
level01.props.PineTree_NoCollider3ID = {}
level01.props.PineTree_NoCollider3ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider3ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider3ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider3ID.transformID, {x=94.125, y=20.3559, z=236.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider3ID.transformID, 1.28418, 1.33163, 1.0746)
Transform.SetRotation(level01.props.PineTree_NoCollider3ID.transformID, {x=0, y=1.9694, z=0})
level01.props.PineTree_NoCollider4ID = {}
level01.props.PineTree_NoCollider4ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider4ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider4ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider4ID.transformID, {x=76.4375, y=0.187378, z=261.5})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider4ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.PineTree_NoCollider4ID.transformID, {x=0, y=0, z=0})
level01.props.PineTree_NoCollider5ID = {}
level01.props.PineTree_NoCollider5ID.model = Assets.LoadModel('Models/pineTree1.model')
level01.props.PineTree_NoCollider5ID.transformID = Gear.BindStaticInstance(level01.props.PineTree_NoCollider5ID.model)
Transform.SetPosition(level01.props.PineTree_NoCollider5ID.transformID, {x=172.375, y=28.9531, z=314.25})
Transform.SetScaleNonUniform(level01.props.PineTree_NoCollider5ID.transformID, 1.33038, 1.51695, 1.4158)
Transform.SetRotation(level01.props.PineTree_NoCollider5ID.transformID, {x=0, y=2.83677, z=0})
level01.triggers.NewID = {}
level01.triggers.NewID.collider = SphereCollider.Create(-1)
level01.triggers.NewID.collider:SetOffset(0,0,0)
level01.triggers.NewID.collider:SetRadius(1)
level01.triggers.NewID.collider:SetPos(20.0156,6.19141,157.875)
level01.triggers.NewID.collider.OnTriggering = function() print("Derp") end
level01.triggers.NewID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.NewID.collider, 4)
level01.props.Stone2ID = {}
level01.props.Stone2ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone2ID.transformID = Gear.BindStaticInstance(level01.props.Stone2ID.model)
Transform.SetPosition(level01.props.Stone2ID.transformID, {x=4.34854, y=7.05469, z=139.31})
Transform.SetScaleNonUniform(level01.props.Stone2ID.transformID, 2.87522, 2.86321, 2.81752)
Transform.SetRotation(level01.props.Stone2ID.transformID, {x=-0.0120454, y=-1.17492, z=-0.0422012})
level01.props.Stone3ID = {}
level01.props.Stone3ID.collider = SphereCollider.Create(-1)
level01.props.Stone3ID.collider:SetOffset(0,0.2,0)
level01.props.Stone3ID.collider:SetRadius(1)
level01.props.Stone3ID.collider:SetPos(6.41381,7.04375,142.217)
CollisionHandler.AddSphere(level01.props.Stone3ID.collider, 3)
level01.props.Stone3ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone3ID.transformID = Gear.BindStaticInstance(level01.props.Stone3ID.model)
Transform.SetPosition(level01.props.Stone3ID.transformID, {x=6.41381, y=6.84375, z=142.217})
Transform.SetScaleNonUniform(level01.props.Stone3ID.transformID, 1.28523, 1.43478, 1.76532)
Transform.SetRotation(level01.props.Stone3ID.transformID, {x=0, y=0, z=0})
level01.props.Stone1ID = {}
level01.props.Stone1ID.collider = SphereCollider.Create(-1)
level01.props.Stone1ID.collider:SetOffset(-0.5,0,-0.5)
level01.props.Stone1ID.collider:SetRadius(2)
level01.props.Stone1ID.collider:SetPos(3.23525,6.76953,144.576)
CollisionHandler.AddSphere(level01.props.Stone1ID.collider, 3)
level01.props.Stone1ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone1ID.transformID = Gear.BindStaticInstance(level01.props.Stone1ID.model)
Transform.SetPosition(level01.props.Stone1ID.transformID, {x=3.73525, y=6.76953, z=145.076})
Transform.SetScaleNonUniform(level01.props.Stone1ID.transformID, 1.6774, 1.68557, 1.1635)
Transform.SetRotation(level01.props.Stone1ID.transformID, {x=0, y=-1.78111, z=0})
level01.props.Stone31ID = {}
level01.props.Stone31ID.collider = SphereCollider.Create(-1)
level01.props.Stone31ID.collider:SetOffset(0,0.2,0)
level01.props.Stone31ID.collider:SetRadius(1)
level01.props.Stone31ID.collider:SetPos(4.70592,7.04375,143.694)
CollisionHandler.AddSphere(level01.props.Stone31ID.collider, 3)
level01.props.Stone31ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone31ID.transformID = Gear.BindStaticInstance(level01.props.Stone31ID.model)
Transform.SetPosition(level01.props.Stone31ID.transformID, {x=4.70592, y=6.84375, z=143.694})
Transform.SetScaleNonUniform(level01.props.Stone31ID.transformID, 1, 2.45793, 1.84109)
Transform.SetRotation(level01.props.Stone31ID.transformID, {x=0, y=0, z=0})
level01.props.HouseID = {}
level01.props.HouseID.model = Assets.LoadModel('Models/House1.model')
level01.props.HouseID.transformID = Gear.BindStaticInstance(level01.props.HouseID.model)
Transform.SetPosition(level01.props.HouseID.transformID, {x=36.887, y=7.96094, z=130.834})
Transform.SetScaleNonUniform(level01.props.HouseID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level01.props.HouseID.transformID, {x=0, y=0, z=0})
level01.props.Stone11ID = {}
level01.props.Stone11ID.collider = SphereCollider.Create(-1)
level01.props.Stone11ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone11ID.collider:SetRadius(2)
level01.props.Stone11ID.collider:SetPos(3.52792,4.28483,189.022)
CollisionHandler.AddSphere(level01.props.Stone11ID.collider, 3)
level01.props.Stone11ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone11ID.transformID = Gear.BindStaticInstance(level01.props.Stone11ID.model)
Transform.SetPosition(level01.props.Stone11ID.transformID, {x=3.52792, y=3.78483, z=188.422})
Transform.SetScaleNonUniform(level01.props.Stone11ID.transformID, 1.51213, 1.79035, 1.59059)
Transform.SetRotation(level01.props.Stone11ID.transformID, {x=0, y=0, z=0})
level01.props.Stone21ID = {}
level01.props.Stone21ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone21ID.transformID = Gear.BindStaticInstance(level01.props.Stone21ID.model)
Transform.SetPosition(level01.props.Stone21ID.transformID, {x=4.952, y=4.125, z=191.432})
Transform.SetScaleNonUniform(level01.props.Stone21ID.transformID, 1.4564, 1.68508, 1.50235)
Transform.SetRotation(level01.props.Stone21ID.transformID, {x=0.0164697, y=0, z=0})
level01.props.Stone32ID = {}
level01.props.Stone32ID.collider = SphereCollider.Create(-1)
level01.props.Stone32ID.collider:SetOffset(0,0.2,0)
level01.props.Stone32ID.collider:SetRadius(1)
level01.props.Stone32ID.collider:SetPos(5.19985,4.18828,188.718)
CollisionHandler.AddSphere(level01.props.Stone32ID.collider, 3)
level01.props.Stone32ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone32ID.transformID = Gear.BindStaticInstance(level01.props.Stone32ID.model)
Transform.SetPosition(level01.props.Stone32ID.transformID, {x=5.19985, y=3.98828, z=188.718})
Transform.SetScaleNonUniform(level01.props.Stone32ID.transformID, 1.25457, 2.0231, 1.39897)
Transform.SetRotation(level01.props.Stone32ID.transformID, {x=0, y=0, z=0})
level01.props.Stone33ID = {}
level01.props.Stone33ID.collider = SphereCollider.Create(-1)
level01.props.Stone33ID.collider:SetOffset(0,0.2,0)
level01.props.Stone33ID.collider:SetRadius(1)
level01.props.Stone33ID.collider:SetPos(5.32939,4.08086,193.526)
CollisionHandler.AddSphere(level01.props.Stone33ID.collider, 3)
level01.props.Stone33ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone33ID.transformID = Gear.BindStaticInstance(level01.props.Stone33ID.model)
Transform.SetPosition(level01.props.Stone33ID.transformID, {x=5.32939, y=3.88086, z=193.526})
Transform.SetScaleNonUniform(level01.props.Stone33ID.transformID, 1.44906, 1.65862, 1.39719)
Transform.SetRotation(level01.props.Stone33ID.transformID, {x=0, y=0, z=0})
level01.props.Stone34ID = {}
level01.props.Stone34ID.collider = SphereCollider.Create(-1)
level01.props.Stone34ID.collider:SetOffset(0,0.2,0)
level01.props.Stone34ID.collider:SetRadius(1)
level01.props.Stone34ID.collider:SetPos(3.03896,3.89922,190.737)
CollisionHandler.AddSphere(level01.props.Stone34ID.collider, 3)
level01.props.Stone34ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone34ID.transformID = Gear.BindStaticInstance(level01.props.Stone34ID.model)
Transform.SetPosition(level01.props.Stone34ID.transformID, {x=3.03896, y=3.69922, z=190.737})
Transform.SetScaleNonUniform(level01.props.Stone34ID.transformID, 2.2204, 5.14281, 2.41628)
Transform.SetRotation(level01.props.Stone34ID.transformID, {x=0, y=0, z=0})
level01.props.Stone12ID = {}
level01.props.Stone12ID.collider = SphereCollider.Create(-1)
level01.props.Stone12ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone12ID.collider:SetRadius(2)
level01.props.Stone12ID.collider:SetPos(3.2186,4.20508,194.014)
CollisionHandler.AddSphere(level01.props.Stone12ID.collider, 3)
level01.props.Stone12ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone12ID.transformID = Gear.BindStaticInstance(level01.props.Stone12ID.model)
Transform.SetPosition(level01.props.Stone12ID.transformID, {x=3.2186, y=3.70508, z=193.414})
Transform.SetScaleNonUniform(level01.props.Stone12ID.transformID, 1.01499, 1.34828, 1.3712)
Transform.SetRotation(level01.props.Stone12ID.transformID, {x=0.0261728, y=-3.50038, z=0.00149078})
level01.props.LanternID = {}
level01.props.LanternID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.LanternID.transformID = Gear.BindStaticInstance(level01.props.LanternID.model)
Transform.SetPosition(level01.props.LanternID.transformID, {x=91.1085, y=19.6589, z=229.316})
Transform.SetScaleNonUniform(level01.props.LanternID.transformID, 1.10704, 1.46453, 1.26106)
Transform.SetRotation(level01.props.LanternID.transformID, {x=0, y=4.06324, z=0})
Light.addLight(92.4085, 24.6589, 227.716, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern1ID = {}
level01.props.Lantern1ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern1ID.transformID = Gear.BindStaticInstance(level01.props.Lantern1ID.model)
Transform.SetPosition(level01.props.Lantern1ID.transformID, {x=104.807, y=24.2813, z=235.177})
Transform.SetScaleNonUniform(level01.props.Lantern1ID.transformID, 1, 1.31997, 1.13)
Transform.SetRotation(level01.props.Lantern1ID.transformID, {x=0, y=-1.60358, z=0})
Light.addLight(104.807, 28.2813, 233.177, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern2ID = {}
level01.props.Lantern2ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern2ID.transformID = Gear.BindStaticInstance(level01.props.Lantern2ID.model)
Transform.SetPosition(level01.props.Lantern2ID.transformID, {x=120.768, y=30.5925, z=229.329})
Transform.SetScaleNonUniform(level01.props.Lantern2ID.transformID, 1.0591, 1.30088, 1.26469)
Transform.SetRotation(level01.props.Lantern2ID.transformID, {x=0, y=-1.03939, z=0})
Light.addLight(119.768, 34.5925, 227.579, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern3ID = {}
level01.props.Lantern3ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern3ID.transformID = Gear.BindStaticInstance(level01.props.Lantern3ID.model)
Transform.SetPosition(level01.props.Lantern3ID.transformID, {x=75.5229, y=16.0708, z=218.97})
Transform.SetScaleNonUniform(level01.props.Lantern3ID.transformID, 1.05539, 1.31311, 1.34544)
Transform.SetRotation(level01.props.Lantern3ID.transformID, {x=0, y=-1.90402, z=0})
Light.addLight(76.0229, 20.0708, 216.97, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern5ID = {}
level01.props.Lantern5ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern5ID.transformID = Gear.BindStaticInstance(level01.props.Lantern5ID.model)
Transform.SetPosition(level01.props.Lantern5ID.transformID, {x=31.481, y=7.76563, z=137.765})
Transform.SetScaleNonUniform(level01.props.Lantern5ID.transformID, 0.817026, 0.683302, 0.733902)
Transform.SetRotation(level01.props.Lantern5ID.transformID, {x=0, y=1.5866, z=0})
Light.addLight(31.481, 9.76563, 139.215, 1, 0.576471, 0.121569, 10,2)
level01.props.Lantern6ID = {}
level01.props.Lantern6ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern6ID.transformID = Gear.BindStaticInstance(level01.props.Lantern6ID.model)
Transform.SetPosition(level01.props.Lantern6ID.transformID, {x=19.7806, y=4.85156, z=183.644})
Transform.SetScaleNonUniform(level01.props.Lantern6ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Lantern6ID.transformID, {x=0, y=-1.1856, z=0})
Light.addLight(18.9806, 8.60156, 181.844, 1, 0.576471, 0.160784, 10,2)
level01.colliders.C_Parent_Tile_1ID = {}
level01.colliders.C_Parent_Tile_1ID.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID.collider:SetMinPos(0.853564,-3.32028,127.7)
level01.colliders.C_Parent_Tile_1ID.collider:SetMaxPos(128.073,45.7117,237.297)
level01.colliders.C_Parent_Tile_1ID.collider:SetPos(0,0,0)
level01.colliders.C_Parent_Tile_1ID1 = {}
level01.colliders.C_Parent_Tile_1ID1.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID1.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID1.collider:SetMinPos(0.853564,1.54031,127.7)
level01.colliders.C_Parent_Tile_1ID1.collider:SetMaxPos(55.2591,16.3583,147.134)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID1.collider)
level01.colliders.C_Parent_Tile_1ID2 = {}
level01.colliders.C_Parent_Tile_1ID2.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID2.collider:SetOffset(6,6.83489,143)
level01.colliders.C_Parent_Tile_1ID2.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.C_Parent_Tile_1ID2.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID2.collider)
level01.colliders.C_Parent_Tile_1ID3 = {}
level01.colliders.C_Parent_Tile_1ID3.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID3.collider:SetOffset(10.5,7.12947,140)
level01.colliders.C_Parent_Tile_1ID3.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.C_Parent_Tile_1ID3.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID3.collider)
level01.colliders.C_Parent_Tile_1ID4 = {}
level01.colliders.C_Parent_Tile_1ID4.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID4.collider:SetOffset(45,8.60238,129.5)
level01.colliders.C_Parent_Tile_1ID4.collider:SetZAxis(-0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_1ID4.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID4.collider)
level01.colliders.C_Parent_Tile_1ID5 = {}
level01.colliders.C_Parent_Tile_1ID5.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID5.collider:SetOffset(51.5,8.60238,137)
level01.colliders.C_Parent_Tile_1ID5.collider:SetZAxis(0.503871,0,0.863779)
level01.colliders.C_Parent_Tile_1ID5.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID5.collider)
level01.colliders.C_Parent_Tile_1ID6 = {}
level01.colliders.C_Parent_Tile_1ID6.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID6.collider:SetOffset(24,10.8555,139)
level01.colliders.C_Parent_Tile_1ID6.collider:SetZAxis(0.367737,0,0.92993)
level01.colliders.C_Parent_Tile_1ID6.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID6.collider)
level01.colliders.C_Parent_Tile_1ID7 = {}
level01.colliders.C_Parent_Tile_1ID7.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID7.collider:SetOffset(36.5,8.3078,128)
level01.colliders.C_Parent_Tile_1ID7.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1ID7.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID7.collider)
level01.colliders.C_Parent_Tile_1ID8 = {}
level01.colliders.C_Parent_Tile_1ID8.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID8.collider:SetOffset(28,7.86593,132)
level01.colliders.C_Parent_Tile_1ID8.collider:SetZAxis(-0.6,0,0.8)
level01.colliders.C_Parent_Tile_1ID8.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID8.collider)
level01.colliders.C_Parent_Tile_1ID9 = {}
level01.colliders.C_Parent_Tile_1ID9.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID9.collider:SetOffset(23,7.71863,138.5)
level01.colliders.C_Parent_Tile_1ID9.collider:SetZAxis(-0.624695,0,0.780869)
level01.colliders.C_Parent_Tile_1ID9.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID9.collider)
level01.colliders.C_Parent_Tile_1ID10 = {}
level01.colliders.C_Parent_Tile_1ID10.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID10.collider:SetOffset(4.64854,7.65469,139.31)
level01.colliders.C_Parent_Tile_1ID10.collider:SetZAxis(-0.921262,0.0509573,0.385591)
level01.colliders.C_Parent_Tile_1ID10.collider:SetHalfLengths(2.87522,1.71793,2.81752)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID10.collider)
level01.colliders.C_Parent_Tile_1ID11 = {}
level01.colliders.C_Parent_Tile_1ID11.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID11.collider:SetOffset(36.887,10.9609,130.834)
level01.colliders.C_Parent_Tile_1ID11.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1ID11.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level01.colliders.C_Parent_Tile_1ID1.collider:AddChild(level01.colliders.C_Parent_Tile_1ID11.collider)
level01.colliders.C_Parent_Tile_1ID12 = {}
level01.colliders.C_Parent_Tile_1ID12.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID12.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID12.collider:SetMinPos(3.70232,1.54031,140.7)
level01.colliders.C_Parent_Tile_1ID12.collider:SetMaxPos(56.2942,18.8731,163.037)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID12.collider)
level01.colliders.C_Parent_Tile_1ID13 = {}
level01.colliders.C_Parent_Tile_1ID13.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID13.collider:SetOffset(17,6.98218,141)
level01.colliders.C_Parent_Tile_1ID13.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1ID13.collider:SetHalfLengths(0.3,5,4)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID13.collider)
level01.colliders.C_Parent_Tile_1ID14 = {}
level01.colliders.C_Parent_Tile_1ID14.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID14.collider:SetOffset(55.5,9.33883,145.5)
level01.colliders.C_Parent_Tile_1ID14.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.C_Parent_Tile_1ID14.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID14.collider)
level01.colliders.C_Parent_Tile_1ID15 = {}
level01.colliders.C_Parent_Tile_1ID15.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID15.collider:SetOffset(52.5,9.33883,152)
level01.colliders.C_Parent_Tile_1ID15.collider:SetZAxis(-0.658505,0,0.752577)
level01.colliders.C_Parent_Tile_1ID15.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID15.collider)
level01.colliders.C_Parent_Tile_1ID16 = {}
level01.colliders.C_Parent_Tile_1ID16.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID16.collider:SetOffset(44,9.48612,157)
level01.colliders.C_Parent_Tile_1ID16.collider:SetZAxis(-0.980581,0,0.196116)
level01.colliders.C_Parent_Tile_1ID16.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID16.collider)
level01.colliders.C_Parent_Tile_1ID17 = {}
level01.colliders.C_Parent_Tile_1ID17.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID17.collider:SetOffset(35,7.12947,155)
level01.colliders.C_Parent_Tile_1ID17.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.C_Parent_Tile_1ID17.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID17.collider)
level01.colliders.C_Parent_Tile_1ID18 = {}
level01.colliders.C_Parent_Tile_1ID18.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID18.collider:SetOffset(37,7.27676,160)
level01.colliders.C_Parent_Tile_1ID18.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1ID18.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID18.collider)
level01.colliders.C_Parent_Tile_1ID19 = {}
level01.colliders.C_Parent_Tile_1ID19.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID19.collider:SetOffset(4.5,6.83489,147.5)
level01.colliders.C_Parent_Tile_1ID19.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_1ID19.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID19.collider)
level01.colliders.C_Parent_Tile_1ID20 = {}
level01.colliders.C_Parent_Tile_1ID20.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID20.collider:SetOffset(5,6.98218,151.5)
level01.colliders.C_Parent_Tile_1ID20.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1ID20.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID20.collider)
level01.colliders.C_Parent_Tile_1ID21 = {}
level01.colliders.C_Parent_Tile_1ID21.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID21.collider:SetOffset(4.5,7.42405,159)
level01.colliders.C_Parent_Tile_1ID21.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.C_Parent_Tile_1ID21.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID21.collider)
level01.colliders.C_Parent_Tile_1ID22 = {}
level01.colliders.C_Parent_Tile_1ID22.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID22.collider:SetOffset(39.8641,12.8281,155.087)
level01.colliders.C_Parent_Tile_1ID22.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
level01.colliders.C_Parent_Tile_1ID22.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.colliders.C_Parent_Tile_1ID12.collider:AddChild(level01.colliders.C_Parent_Tile_1ID22.collider)
level01.colliders.C_Parent_Tile_1ID23 = {}
level01.colliders.C_Parent_Tile_1ID23.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID23.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID23.collider:SetMinPos(3.76,0.656566,161.75)
level01.colliders.C_Parent_Tile_1ID23.collider:SetMaxPos(57.1664,13.0132,176)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID23.collider)
level01.colliders.C_Parent_Tile_1ID24 = {}
level01.colliders.C_Parent_Tile_1ID24.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID24.collider:SetOffset(39.5,6.98218,163)
level01.colliders.C_Parent_Tile_1ID24.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.C_Parent_Tile_1ID24.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID24.collider)
level01.colliders.C_Parent_Tile_1ID25 = {}
level01.colliders.C_Parent_Tile_1ID25.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID25.collider:SetOffset(43.5,7.12947,165)
level01.colliders.C_Parent_Tile_1ID25.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.C_Parent_Tile_1ID25.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID25.collider)
level01.colliders.C_Parent_Tile_1ID26 = {}
level01.colliders.C_Parent_Tile_1ID26.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID26.collider:SetOffset(48.5,7.57134,166)
level01.colliders.C_Parent_Tile_1ID26.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1ID26.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID26.collider)
level01.colliders.C_Parent_Tile_1ID27 = {}
level01.colliders.C_Parent_Tile_1ID27.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID27.collider:SetOffset(54,8.01322,168)
level01.colliders.C_Parent_Tile_1ID27.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.C_Parent_Tile_1ID27.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID27.collider)
level01.colliders.C_Parent_Tile_1ID28 = {}
level01.colliders.C_Parent_Tile_1ID28.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID28.collider:SetOffset(32.5,6.54031,170.5)
level01.colliders.C_Parent_Tile_1ID28.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.C_Parent_Tile_1ID28.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID28.collider)
level01.colliders.C_Parent_Tile_1ID29 = {}
level01.colliders.C_Parent_Tile_1ID29.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID29.collider:SetOffset(29.5,6.54031,168)
level01.colliders.C_Parent_Tile_1ID29.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1ID29.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID29.collider)
level01.colliders.C_Parent_Tile_1ID30 = {}
level01.colliders.C_Parent_Tile_1ID30.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID30.collider:SetOffset(25,6.09844,170.5)
level01.colliders.C_Parent_Tile_1ID30.collider:SetZAxis(-0.768221,0,0.640184)
level01.colliders.C_Parent_Tile_1ID30.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID30.collider)
level01.colliders.C_Parent_Tile_1ID31 = {}
level01.colliders.C_Parent_Tile_1ID31.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID31.collider:SetOffset(22,5.80386,174.5)
level01.colliders.C_Parent_Tile_1ID31.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1ID31.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID31.collider)
level01.colliders.C_Parent_Tile_1ID32 = {}
level01.colliders.C_Parent_Tile_1ID32.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID32.collider:SetOffset(7,6.54031,167)
level01.colliders.C_Parent_Tile_1ID32.collider:SetZAxis(0.6,0,0.8)
level01.colliders.C_Parent_Tile_1ID32.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID32.collider)
level01.colliders.C_Parent_Tile_1ID33 = {}
level01.colliders.C_Parent_Tile_1ID33.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID33.collider:SetOffset(10,6.24573,173.5)
level01.colliders.C_Parent_Tile_1ID33.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_1ID33.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.C_Parent_Tile_1ID23.collider:AddChild(level01.colliders.C_Parent_Tile_1ID33.collider)
level01.colliders.C_Parent_Tile_1ID34 = {}
level01.colliders.C_Parent_Tile_1ID34.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID34.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID34.collider:SetMinPos(1.70104,-2.14196,169.866)
level01.colliders.C_Parent_Tile_1ID34.collider:SetMaxPos(58.2977,21.9153,196.22)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID34.collider)
level01.colliders.C_Parent_Tile_1ID35 = {}
level01.colliders.C_Parent_Tile_1ID35.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID35.collider:SetOffset(57.5,8.01322,171)
level01.colliders.C_Parent_Tile_1ID35.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1ID35.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID35.collider)
level01.colliders.C_Parent_Tile_1ID36 = {}
level01.colliders.C_Parent_Tile_1ID36.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID36.collider:SetOffset(57.5,8.01322,176)
level01.colliders.C_Parent_Tile_1ID36.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.C_Parent_Tile_1ID36.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID36.collider)
level01.colliders.C_Parent_Tile_1ID37 = {}
level01.colliders.C_Parent_Tile_1ID37.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID37.collider:SetOffset(37,7.71863,182)
level01.colliders.C_Parent_Tile_1ID37.collider:SetZAxis(-0.447214,0,-0.894427)
level01.colliders.C_Parent_Tile_1ID37.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID37.collider)
level01.colliders.C_Parent_Tile_1ID38 = {}
level01.colliders.C_Parent_Tile_1ID38.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID38.collider:SetOffset(35,7.12947,176.5)
level01.colliders.C_Parent_Tile_1ID38.collider:SetZAxis(-0.274721,0,-0.961524)
level01.colliders.C_Parent_Tile_1ID38.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID38.collider)
level01.colliders.C_Parent_Tile_1ID39 = {}
level01.colliders.C_Parent_Tile_1ID39.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID39.collider:SetOffset(23.5,5.80386,179.5)
level01.colliders.C_Parent_Tile_1ID39.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.C_Parent_Tile_1ID39.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID39.collider)
level01.colliders.C_Parent_Tile_1ID40 = {}
level01.colliders.C_Parent_Tile_1ID40.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID40.collider:SetOffset(32,5.50927,189.5)
level01.colliders.C_Parent_Tile_1ID40.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.C_Parent_Tile_1ID40.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID40.collider)
level01.colliders.C_Parent_Tile_1ID41 = {}
level01.colliders.C_Parent_Tile_1ID41.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID41.collider:SetOffset(6.5,5.65657,179)
level01.colliders.C_Parent_Tile_1ID41.collider:SetZAxis(-0.759257,0,0.650791)
level01.colliders.C_Parent_Tile_1ID41.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID41.collider)
level01.colliders.C_Parent_Tile_1ID42 = {}
level01.colliders.C_Parent_Tile_1ID42.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID42.collider:SetOffset(2.5,5.36198,188)
level01.colliders.C_Parent_Tile_1ID42.collider:SetZAxis(-0.0830455,0,0.996546)
level01.colliders.C_Parent_Tile_1ID42.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID42.collider)
level01.colliders.C_Parent_Tile_1ID43 = {}
level01.colliders.C_Parent_Tile_1ID43.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID43.collider:SetOffset(6.18867,8.53125,180.735)
level01.colliders.C_Parent_Tile_1ID43.collider:SetZAxis(-0.891114,0,-0.453779)
level01.colliders.C_Parent_Tile_1ID43.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID43.collider)
level01.colliders.C_Parent_Tile_1ID44 = {}
level01.colliders.C_Parent_Tile_1ID44.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID44.collider:SetOffset(37.7154,11.4688,182.582)
level01.colliders.C_Parent_Tile_1ID44.collider:SetZAxis(-0.988898,0,0.148599)
level01.colliders.C_Parent_Tile_1ID44.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.colliders.C_Parent_Tile_1ID34.collider:AddChild(level01.colliders.C_Parent_Tile_1ID44.collider)
level01.colliders.C_Parent_Tile_1ID45 = {}
level01.colliders.C_Parent_Tile_1ID45.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID45.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID45.collider:SetMinPos(1.74275,-1.99466,179.808)
level01.colliders.C_Parent_Tile_1ID45.collider:SetMaxPos(57.2305,13.3078,201.134)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID45.collider)
level01.colliders.C_Parent_Tile_1ID46 = {}
level01.colliders.C_Parent_Tile_1ID46.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID46.collider:SetOffset(54.5,8.01322,183)
level01.colliders.C_Parent_Tile_1ID46.collider:SetZAxis(-0.640184,0,0.768221)
level01.colliders.C_Parent_Tile_1ID46.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID46.collider)
level01.colliders.C_Parent_Tile_1ID47 = {}
level01.colliders.C_Parent_Tile_1ID47.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID47.collider:SetOffset(49,8.01322,186.5)
level01.colliders.C_Parent_Tile_1ID47.collider:SetZAxis(-0.986394,0,0.164399)
level01.colliders.C_Parent_Tile_1ID47.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID47.collider)
level01.colliders.C_Parent_Tile_1ID48 = {}
level01.colliders.C_Parent_Tile_1ID48.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID48.collider:SetOffset(44,8.01322,187)
level01.colliders.C_Parent_Tile_1ID48.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1ID48.collider:SetHalfLengths(0.3,5,2)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID48.collider)
level01.colliders.C_Parent_Tile_1ID49 = {}
level01.colliders.C_Parent_Tile_1ID49.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID49.collider:SetOffset(40,8.01322,185.5)
level01.colliders.C_Parent_Tile_1ID49.collider:SetZAxis(-0.8,0,-0.6)
level01.colliders.C_Parent_Tile_1ID49.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID49.collider)
level01.colliders.C_Parent_Tile_1ID50 = {}
level01.colliders.C_Parent_Tile_1ID50.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID50.collider:SetOffset(35.5,8.16051,198)
level01.colliders.C_Parent_Tile_1ID50.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1ID50.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID50.collider)
level01.colliders.C_Parent_Tile_1ID51 = {}
level01.colliders.C_Parent_Tile_1ID51.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID51.collider:SetOffset(3.5,4.03637,196.5)
level01.colliders.C_Parent_Tile_1ID51.collider:SetZAxis(0.514496,0,0.857493)
level01.colliders.C_Parent_Tile_1ID51.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID51.collider)
level01.colliders.C_Parent_Tile_1ID52 = {}
level01.colliders.C_Parent_Tile_1ID52.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID52.collider:SetOffset(23,4.33095,190.5)
level01.colliders.C_Parent_Tile_1ID52.collider:SetZAxis(0.478852,0,0.877896)
level01.colliders.C_Parent_Tile_1ID52.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID52.collider)
level01.colliders.C_Parent_Tile_1ID53 = {}
level01.colliders.C_Parent_Tile_1ID53.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID53.collider:SetOffset(27,5.36198,196.5)
level01.colliders.C_Parent_Tile_1ID53.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.C_Parent_Tile_1ID53.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID53.collider)
level01.colliders.C_Parent_Tile_1ID54 = {}
level01.colliders.C_Parent_Tile_1ID54.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID54.collider:SetOffset(29,7.71863,197)
level01.colliders.C_Parent_Tile_1ID54.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1ID54.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID54.collider)
level01.colliders.C_Parent_Tile_1ID55 = {}
level01.colliders.C_Parent_Tile_1ID55.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID55.collider:SetOffset(5.252,4.725,191.432)
level01.colliders.C_Parent_Tile_1ID55.collider:SetZAxis(0,-0.016469,0.999864)
level01.colliders.C_Parent_Tile_1ID55.collider:SetHalfLengths(1.4564,1.01105,1.50235)
level01.colliders.C_Parent_Tile_1ID45.collider:AddChild(level01.colliders.C_Parent_Tile_1ID55.collider)
level01.colliders.C_Parent_Tile_1ID56 = {}
level01.colliders.C_Parent_Tile_1ID56.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID56.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID56.collider:SetMinPos(4.75038,-3.32028,195.715)
level01.colliders.C_Parent_Tile_1ID56.collider:SetMaxPos(53.2441,15.3699,211.174)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID56.collider)
level01.colliders.C_Parent_Tile_1ID57 = {}
level01.colliders.C_Parent_Tile_1ID57.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID57.collider:SetOffset(37.5,8.16051,196.5)
level01.colliders.C_Parent_Tile_1ID57.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.C_Parent_Tile_1ID57.collider:SetHalfLengths(0.3,5.14729,1.58114)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID57.collider)
level01.colliders.C_Parent_Tile_1ID58 = {}
level01.colliders.C_Parent_Tile_1ID58.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID58.collider:SetOffset(42.5,8.3078,200)
level01.colliders.C_Parent_Tile_1ID58.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.C_Parent_Tile_1ID58.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID58.collider)
level01.colliders.C_Parent_Tile_1ID59 = {}
level01.colliders.C_Parent_Tile_1ID59.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID59.collider:SetOffset(50.5,9.63341,202.5)
level01.colliders.C_Parent_Tile_1ID59.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.C_Parent_Tile_1ID59.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID59.collider)
level01.colliders.C_Parent_Tile_1ID60 = {}
level01.colliders.C_Parent_Tile_1ID60.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID60.collider:SetOffset(6,3.44721,200.5)
level01.colliders.C_Parent_Tile_1ID60.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_1ID60.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID60.collider)
level01.colliders.C_Parent_Tile_1ID61 = {}
level01.colliders.C_Parent_Tile_1ID61.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID61.collider:SetOffset(7.5,3.44721,203)
level01.colliders.C_Parent_Tile_1ID61.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1ID61.collider:SetHalfLengths(0.3,5.14729,1.11803)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID61.collider)
level01.colliders.C_Parent_Tile_1ID62 = {}
level01.colliders.C_Parent_Tile_1ID62.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID62.collider:SetOffset(15,3.29992,202.5)
level01.colliders.C_Parent_Tile_1ID62.collider:SetZAxis(0.977802,0,-0.209529)
level01.colliders.C_Parent_Tile_1ID62.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID62.collider)
level01.colliders.C_Parent_Tile_1ID63 = {}
level01.colliders.C_Parent_Tile_1ID63.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID63.collider:SetOffset(24.5,3.15263,199.5)
level01.colliders.C_Parent_Tile_1ID63.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.C_Parent_Tile_1ID63.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID63.collider)
level01.colliders.C_Parent_Tile_1ID64 = {}
level01.colliders.C_Parent_Tile_1ID64.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID64.collider:SetOffset(31.5,8.16051,200)
level01.colliders.C_Parent_Tile_1ID64.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1ID64.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID64.collider)
level01.colliders.C_Parent_Tile_1ID65 = {}
level01.colliders.C_Parent_Tile_1ID65.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID65.collider:SetOffset(32.5,8.89696,203.5)
level01.colliders.C_Parent_Tile_1ID65.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_1ID65.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID65.collider)
level01.colliders.C_Parent_Tile_1ID66 = {}
level01.colliders.C_Parent_Tile_1ID66.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID66.collider:SetOffset(34.5,8.45509,207.5)
level01.colliders.C_Parent_Tile_1ID66.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.C_Parent_Tile_1ID66.collider:SetHalfLengths(0.3,5.14729,4.30116)
level01.colliders.C_Parent_Tile_1ID56.collider:AddChild(level01.colliders.C_Parent_Tile_1ID66.collider)
level01.colliders.C_Parent_Tile_1ID67 = {}
level01.colliders.C_Parent_Tile_1ID67.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID67.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID67.collider:SetMinPos(36.8512,2.71863,189.723)
level01.colliders.C_Parent_Tile_1ID67.collider:SetMaxPos(109.159,37.0216,217.297)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID67.collider)
level01.colliders.C_Parent_Tile_1ID68 = {}
level01.colliders.C_Parent_Tile_1ID68.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID68.collider:SetOffset(55,10.3699,207.5)
level01.colliders.C_Parent_Tile_1ID68.collider:SetZAxis(0.8,0,0.6)
level01.colliders.C_Parent_Tile_1ID68.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID68.collider)
level01.colliders.C_Parent_Tile_1ID69 = {}
level01.colliders.C_Parent_Tile_1ID69.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID69.collider:SetOffset(62,11.4009,208)
level01.colliders.C_Parent_Tile_1ID69.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.C_Parent_Tile_1ID69.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID69.collider)
level01.colliders.C_Parent_Tile_1ID70 = {}
level01.colliders.C_Parent_Tile_1ID70.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID70.collider:SetOffset(71.5,15.0832,205.5)
level01.colliders.C_Parent_Tile_1ID70.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.C_Parent_Tile_1ID70.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID70.collider)
level01.colliders.C_Parent_Tile_1ID71 = {}
level01.colliders.C_Parent_Tile_1ID71.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID71.collider:SetOffset(79,18.3236,202.5)
level01.colliders.C_Parent_Tile_1ID71.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_1ID71.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID71.collider)
level01.colliders.C_Parent_Tile_1ID72 = {}
level01.colliders.C_Parent_Tile_1ID72.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID72.collider:SetOffset(85.5,20.091,198)
level01.colliders.C_Parent_Tile_1ID72.collider:SetZAxis(0.759257,0,-0.650791)
level01.colliders.C_Parent_Tile_1ID72.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID72.collider)
level01.colliders.C_Parent_Tile_1ID73 = {}
level01.colliders.C_Parent_Tile_1ID73.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID73.collider:SetOffset(95,23.1841,192.5)
level01.colliders.C_Parent_Tile_1ID73.collider:SetZAxis(0.923077,0,-0.384615)
level01.colliders.C_Parent_Tile_1ID73.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID73.collider)
level01.colliders.C_Parent_Tile_1ID74 = {}
level01.colliders.C_Parent_Tile_1ID74.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID74.collider:SetOffset(105,27.0137,192.5)
level01.colliders.C_Parent_Tile_1ID74.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.C_Parent_Tile_1ID74.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID74.collider)
level01.colliders.C_Parent_Tile_1ID75 = {}
level01.colliders.C_Parent_Tile_1ID75.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID75.collider:SetOffset(95,27.3083,202.5)
level01.colliders.C_Parent_Tile_1ID75.collider:SetZAxis(-0.819232,0,0.573462)
level01.colliders.C_Parent_Tile_1ID75.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID75.collider)
level01.colliders.C_Parent_Tile_1ID76 = {}
level01.colliders.C_Parent_Tile_1ID76.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID76.collider:SetOffset(40.5,8.60238,213)
level01.colliders.C_Parent_Tile_1ID76.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.C_Parent_Tile_1ID76.collider:SetHalfLengths(0.3,5.73645,4.03113)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID76.collider)
level01.colliders.C_Parent_Tile_1ID77 = {}
level01.colliders.C_Parent_Tile_1ID77.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID77.collider:SetOffset(51,9.33883,216)
level01.colliders.C_Parent_Tile_1ID77.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.C_Parent_Tile_1ID77.collider:SetHalfLengths(0.3,5.58916,7.07107)
level01.colliders.C_Parent_Tile_1ID67.collider:AddChild(level01.colliders.C_Parent_Tile_1ID77.collider)
level01.colliders.C_Parent_Tile_1ID78 = {}
level01.colliders.C_Parent_Tile_1ID78.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID78.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID78.collider:SetMinPos(58,-1.70009,194.709)
level01.colliders.C_Parent_Tile_1ID78.collider:SetMaxPos(124.268,45.7117,226.261)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID78.collider)
level01.colliders.C_Parent_Tile_1ID79 = {}
level01.colliders.C_Parent_Tile_1ID79.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID79.collider:SetOffset(111,30.696,195.5)
level01.colliders.C_Parent_Tile_1ID79.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.C_Parent_Tile_1ID79.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID79.collider)
level01.colliders.C_Parent_Tile_1ID80 = {}
level01.colliders.C_Parent_Tile_1ID80.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID80.collider:SetOffset(115.5,31.8743,198)
level01.colliders.C_Parent_Tile_1ID80.collider:SetZAxis(0.780869,0,0.624695)
level01.colliders.C_Parent_Tile_1ID80.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID80.collider)
level01.colliders.C_Parent_Tile_1ID81 = {}
level01.colliders.C_Parent_Tile_1ID81.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID81.collider:SetOffset(121,34.6728,206)
level01.colliders.C_Parent_Tile_1ID81.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_1ID81.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID81.collider)
level01.colliders.C_Parent_Tile_1ID82 = {}
level01.colliders.C_Parent_Tile_1ID82.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID82.collider:SetOffset(90,21.5639,213.5)
level01.colliders.C_Parent_Tile_1ID82.collider:SetZAxis(0.406139,0,0.913812)
level01.colliders.C_Parent_Tile_1ID82.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID82.collider)
level01.colliders.C_Parent_Tile_1ID83 = {}
level01.colliders.C_Parent_Tile_1ID83.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID83.collider:SetOffset(98,22.4477,219.5)
level01.colliders.C_Parent_Tile_1ID83.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.C_Parent_Tile_1ID83.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID83.collider)
level01.colliders.C_Parent_Tile_1ID84 = {}
level01.colliders.C_Parent_Tile_1ID84.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID84.collider:SetOffset(107,34.6728,203)
level01.colliders.C_Parent_Tile_1ID84.collider:SetZAxis(-0.780869,0,-0.624695)
level01.colliders.C_Parent_Tile_1ID84.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID84.collider)
level01.colliders.C_Parent_Tile_1ID85 = {}
level01.colliders.C_Parent_Tile_1ID85.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID85.collider:SetOffset(101,28.6339,199)
level01.colliders.C_Parent_Tile_1ID85.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_1ID85.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID85.collider)
level01.colliders.C_Parent_Tile_1ID86 = {}
level01.colliders.C_Parent_Tile_1ID86.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID86.collider:SetOffset(89,22.595,207.5)
level01.colliders.C_Parent_Tile_1ID86.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_1ID86.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID86.collider)
level01.colliders.C_Parent_Tile_1ID87 = {}
level01.colliders.C_Parent_Tile_1ID87.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID87.collider:SetOffset(63,8.74967,217)
level01.colliders.C_Parent_Tile_1ID87.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1ID87.collider:SetHalfLengths(0.3,10.4498,5)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID87.collider)
level01.colliders.C_Parent_Tile_1ID88 = {}
level01.colliders.C_Parent_Tile_1ID88.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID88.collider:SetOffset(76,14.1994,221.5)
level01.colliders.C_Parent_Tile_1ID88.collider:SetZAxis(0.871576,0,0.490261)
level01.colliders.C_Parent_Tile_1ID88.collider:SetHalfLengths(0.3,6.4729,9.17878)
level01.colliders.C_Parent_Tile_1ID78.collider:AddChild(level01.colliders.C_Parent_Tile_1ID88.collider)
level01.colliders.C_Parent_Tile_1ID89 = {}
level01.colliders.C_Parent_Tile_1ID89.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID89.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID89.collider:SetMinPos(83.8378,3.74966,206.851)
level01.colliders.C_Parent_Tile_1ID89.collider:SetMaxPos(128.073,42.6186,237.297)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID89.collider)
level01.colliders.C_Parent_Tile_1ID90 = {}
level01.colliders.C_Parent_Tile_1ID90.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID90.collider:SetOffset(126,32.9053,211.5)
level01.colliders.C_Parent_Tile_1ID90.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.C_Parent_Tile_1ID90.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID90.collider)
level01.colliders.C_Parent_Tile_1ID91 = {}
level01.colliders.C_Parent_Tile_1ID91.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID91.collider:SetOffset(105.5,26.8664,222.5)
level01.colliders.C_Parent_Tile_1ID91.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_1ID91.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID91.collider)
level01.colliders.C_Parent_Tile_1ID92 = {}
level01.colliders.C_Parent_Tile_1ID92.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID92.collider:SetOffset(111.5,28.3393,222)
level01.colliders.C_Parent_Tile_1ID92.collider:SetZAxis(0.913812,0,-0.406139)
level01.colliders.C_Parent_Tile_1ID92.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID92.collider)
level01.colliders.C_Parent_Tile_1ID93 = {}
level01.colliders.C_Parent_Tile_1ID93.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID93.collider:SetOffset(116,30.9905,217)
level01.colliders.C_Parent_Tile_1ID93.collider:SetZAxis(0,0,-1)
level01.colliders.C_Parent_Tile_1ID93.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID93.collider)
level01.colliders.C_Parent_Tile_1ID94 = {}
level01.colliders.C_Parent_Tile_1ID94.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID94.collider:SetOffset(114,36.1457,210.5)
level01.colliders.C_Parent_Tile_1ID94.collider:SetZAxis(-0.496139,0,-0.868243)
level01.colliders.C_Parent_Tile_1ID94.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID94.collider)
level01.colliders.C_Parent_Tile_1ID95 = {}
level01.colliders.C_Parent_Tile_1ID95.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID95.collider:SetOffset(91,15.6723,230.5)
level01.colliders.C_Parent_Tile_1ID95.collider:SetZAxis(0.841179,0,0.540758)
level01.colliders.C_Parent_Tile_1ID95.collider:SetHalfLengths(0.3,11.9227,8.32166)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID95.collider)
level01.colliders.C_Parent_Tile_1ID96 = {}
level01.colliders.C_Parent_Tile_1ID96.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID96.collider:SetOffset(104.5,22.595,236)
level01.colliders.C_Parent_Tile_1ID96.collider:SetZAxis(0.988372,0,0.152057)
level01.colliders.C_Parent_Tile_1ID96.collider:SetHalfLengths(0.3,10.8916,6.57647)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID96.collider)
level01.colliders.C_Parent_Tile_1ID97 = {}
level01.colliders.C_Parent_Tile_1ID97.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID97.collider:SetOffset(115,28.4866,235)
level01.colliders.C_Parent_Tile_1ID97.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_1ID97.collider:SetHalfLengths(0.3,6.91478,4.47214)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID97.collider)
level01.colliders.C_Parent_Tile_1ID98 = {}
level01.colliders.C_Parent_Tile_1ID98.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID98.collider:SetOffset(125.5,32.1689,229)
level01.colliders.C_Parent_Tile_1ID98.collider:SetZAxis(0.0995037,0,-0.995037)
level01.colliders.C_Parent_Tile_1ID98.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID98.collider)
level01.colliders.C_Parent_Tile_1ID99 = {}
level01.colliders.C_Parent_Tile_1ID99.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID99.collider:SetOffset(127,32.758,224)
level01.colliders.C_Parent_Tile_1ID99.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_1ID99.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.C_Parent_Tile_1ID89.collider:AddChild(level01.colliders.C_Parent_Tile_1ID99.collider)
level01.colliders.C_Parent_Tile_1ID100 = {}
level01.colliders.C_Parent_Tile_1ID100.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID100.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_1ID100.collider:SetMinPos(118.951,23.6339,232.704)
level01.colliders.C_Parent_Tile_1ID100.collider:SetMaxPos(125.049,37.1689,234.296)
level01.colliders.C_Parent_Tile_1ID.collider:AddChild(level01.colliders.C_Parent_Tile_1ID100.collider)
level01.colliders.C_Parent_Tile_1ID101 = {}
level01.colliders.C_Parent_Tile_1ID101.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_1ID101.collider:SetOffset(122,30.4014,233.5)
level01.colliders.C_Parent_Tile_1ID101.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.C_Parent_Tile_1ID101.collider:SetHalfLengths(0.3,6.76749,3.04138)
level01.colliders.C_Parent_Tile_1ID100.collider:AddChild(level01.colliders.C_Parent_Tile_1ID101.collider)
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
level01.colliders.OpWall28ID = nil
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
level01.colliders.OpWall62ID = nil
level01.colliders.OpWall63ID = nil
level01.colliders.OpWall64ID = nil
level01.colliders.OpWall65ID = nil
level01.colliders.OpWall66ID = nil
level01.colliders.OpWall67ID = nil
level01.colliders.OpWall68ID = nil
level01.colliders.OpWall69ID = nil
level01.colliders.OpWall70ID = nil
level01.colliders.OpWall71ID = nil
level01.colliders.OpWall72ID = nil
level01.colliders.OpWall73ID = nil
level01.colliders.OpWall74ID = nil
level01.colliders.OpWall75ID = nil
level01.colliders.OpWall76ID = nil
level01.colliders.OpWall77ID = nil
level01.colliders.OpWall78ID = nil
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
level01.triggers.NewID = nil
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
Gear.UnbindInstance(level01.props.LanternID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.LanternID = nil
Gear.UnbindInstance(level01.props.Lantern1ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern1ID = nil
Gear.UnbindInstance(level01.props.Lantern2ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern2ID = nil
Gear.UnbindInstance(level01.props.Lantern3ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern3ID = nil
Gear.UnbindInstance(level01.props.Lantern5ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern5ID = nil
Gear.UnbindInstance(level01.props.Lantern6ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level01.props.Lantern6ID = nil
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
level02.props.tile2ID = {}
level02.props.t2s1ID = {}
level02.props.t2s1ID.model = Assets.LoadModel('Models/tile2_s1.model')
level02.props.t2s1ID.transformID = Gear.BindStaticInstance(level02.props.t2s1ID.model)
Transform.SetPosition(level02.props.t2s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s1ID.transformID, {x=0, y=0, z=0})
level02.props.t2s2ID = {}
level02.props.t2s2ID.model = Assets.LoadModel('Models/tile2_s2.model')
level02.props.t2s2ID.transformID = Gear.BindStaticInstance(level02.props.t2s2ID.model)
Transform.SetPosition(level02.props.t2s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s2ID.transformID, {x=0, y=0, z=0})
level02.props.t2s3ID = {}
level02.props.t2s3ID.model = Assets.LoadModel('Models/tile2_s3.model')
level02.props.t2s3ID.transformID = Gear.BindStaticInstance(level02.props.t2s3ID.model)
Transform.SetPosition(level02.props.t2s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s3ID.transformID, {x=0, y=0, z=0})
level02.props.t2s4ID = {}
level02.props.t2s4ID.model = Assets.LoadModel('Models/tile2_s4.model')
level02.props.t2s4ID.transformID = Gear.BindStaticInstance(level02.props.t2s4ID.model)
Transform.SetPosition(level02.props.t2s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s4ID.transformID, {x=0, y=0, z=0})
level02.props.t2s5ID = {}
level02.props.t2s5ID.model = Assets.LoadModel('Models/tile2_s5.model')
level02.props.t2s5ID.transformID = Gear.BindStaticInstance(level02.props.t2s5ID.model)
Transform.SetPosition(level02.props.t2s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s5ID.transformID, {x=0, y=0, z=0})
level02.props.t2s6ID = {}
level02.props.t2s6ID.model = Assets.LoadModel('Models/tile2_s6.model')
level02.props.t2s6ID.transformID = Gear.BindStaticInstance(level02.props.t2s6ID.model)
Transform.SetPosition(level02.props.t2s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s6ID.transformID, {x=0, y=0, z=0})
level02.props.t2s7ID = {}
level02.props.t2s7ID.model = Assets.LoadModel('Models/tile2_s7.model')
level02.props.t2s7ID.transformID = Gear.BindStaticInstance(level02.props.t2s7ID.model)
Transform.SetPosition(level02.props.t2s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s7ID.transformID, {x=0, y=0, z=0})
level02.props.t2s8ID = {}
level02.props.t2s8ID.model = Assets.LoadModel('Models/tile2_s8.model')
level02.props.t2s8ID.transformID = Gear.BindStaticInstance(level02.props.t2s8ID.model)
Transform.SetPosition(level02.props.t2s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s8ID.transformID, {x=0, y=0, z=0})
level02.props.t2s9ID = {}
level02.props.t2s9ID.model = Assets.LoadModel('Models/tile2_s9.model')
level02.props.t2s9ID.transformID = Gear.BindStaticInstance(level02.props.t2s9ID.model)
Transform.SetPosition(level02.props.t2s9ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s9ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s9ID.transformID, {x=0, y=0, z=0})
level02.props.t2s12ID = {}
level02.props.t2s12ID.model = Assets.LoadModel('Models/tile2_s12.model')
level02.props.t2s12ID.transformID = Gear.BindStaticInstance(level02.props.t2s12ID.model)
Transform.SetPosition(level02.props.t2s12ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s12ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s12ID.transformID, {x=0, y=0, z=0})
level02.props.t2s13ID = {}
level02.props.t2s13ID.model = Assets.LoadModel('Models/tile2_s13.model')
level02.props.t2s13ID.transformID = Gear.BindStaticInstance(level02.props.t2s13ID.model)
Transform.SetPosition(level02.props.t2s13ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s13ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s13ID.transformID, {x=0, y=0, z=0})
level02.props.t2s14ID = {}
level02.props.t2s14ID.model = Assets.LoadModel('Models/tile2_s14.model')
level02.props.t2s14ID.transformID = Gear.BindStaticInstance(level02.props.t2s14ID.model)
Transform.SetPosition(level02.props.t2s14ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.t2s14ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.t2s14ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_ColliderID = {}
level02.props.PineTree_ColliderID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_ColliderID.transformID = Gear.BindStaticInstance(level02.props.PineTree_ColliderID.model)
Transform.SetPosition(level02.props.PineTree_ColliderID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_ColliderID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_ColliderID.transformID, {x=0.0166519, y=-0.520999, z=0})
level02.props.PineTree_Collider1ID = {}
level02.props.PineTree_Collider1ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider1ID.model)
Transform.SetPosition(level02.props.PineTree_Collider1ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider1ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_Collider1ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider2ID = {}
level02.props.PineTree_Collider2ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider1ID = {}
level02.props.PineTree_NoCollider1ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider1ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider1ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider1ID.transformID, {x=210.125, y=53.875, z=105.063})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider1ID.transformID, 1.40384, 1.37969, 1.24097)
Transform.SetRotation(level02.props.PineTree_NoCollider1ID.transformID, {x=0, y=2.74772, z=0})
level02.props.PineTree_NoCollider11ID = {}
level02.props.PineTree_NoCollider11ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider11ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider11ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider11ID.transformID, {x=172.75, y=62.0625, z=144})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider11ID.transformID, 1.37643, 1.88725, 1.38272)
Transform.SetRotation(level02.props.PineTree_NoCollider11ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider12ID = {}
level02.props.PineTree_NoCollider12ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider12ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider12ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider12ID.transformID, {x=177.125, y=62.4375, z=140.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider12ID.transformID, 1.46611, 1.52534, 1.29654)
Transform.SetRotation(level02.props.PineTree_NoCollider12ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_NoCollider13ID = {}
level02.props.PineTree_NoCollider13ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider13ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider13ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider13ID.transformID, {x=259, y=32.625, z=186.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider13ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider13ID.transformID, {x=0, y=0.550171, z=0})
level02.props.PineTree_NoCollider14ID = {}
level02.props.PineTree_NoCollider14ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider14ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider14ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider14ID.transformID, {x=254.25, y=32.7188, z=193.625})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider14ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_NoCollider14ID.transformID, {x=0, y=2.98311, z=0})
level02.props.PineTree_NoCollider15ID = {}
level02.props.PineTree_NoCollider15ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider15ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider15ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider15ID.transformID, {x=179.375, y=54.8438, z=184.25})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider15ID.transformID, 1.25204, 1.68388, 1.58725)
Transform.SetRotation(level02.props.PineTree_NoCollider15ID.transformID, {x=0, y=-7.32886, z=0})
level02.props.PineTree_NoCollider16ID = {}
level02.props.PineTree_NoCollider16ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider16ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider16ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider16ID.transformID, {x=186.25, y=53.9375, z=181.375})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider16ID.transformID, 1.40944, 1.90481, 1.50754)
Transform.SetRotation(level02.props.PineTree_NoCollider16ID.transformID, {x=0, y=-2.98524, z=0})
level02.props.PineTree_NoCollider17ID = {}
level02.props.PineTree_NoCollider17ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider17ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider17ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider17ID.transformID, {x=159.5, y=52.25, z=167.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider17ID.transformID, 1.31662, 1.83877, 0.937286)
Transform.SetRotation(level02.props.PineTree_NoCollider17ID.transformID, {x=0, y=-2.76387, z=0})
level02.props.PineTree_NoCollider18ID = {}
level02.props.PineTree_NoCollider18ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider18ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider18ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider18ID.transformID, {x=159.75, y=48.5313, z=173.75})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider18ID.transformID, 1.78203, 1.54544, 1.09758)
Transform.SetRotation(level02.props.PineTree_NoCollider18ID.transformID, {x=0, y=1.82048, z=0})
level02.props.PineTree_NoCollider19ID = {}
level02.props.PineTree_NoCollider19ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_NoCollider19ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_NoCollider19ID.model)
Transform.SetPosition(level02.props.PineTree_NoCollider19ID.transformID, {x=204.25, y=55.0625, z=164.875})
Transform.SetScaleNonUniform(level02.props.PineTree_NoCollider19ID.transformID, 1.60034, 1.53506, 1.27681)
Transform.SetRotation(level02.props.PineTree_NoCollider19ID.transformID, {x=0, y=-2.19759, z=0})
level02.props.OakTree_Collider4ID = {}
level02.props.OakTree_Collider4ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider4ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider4ID.model)
Transform.SetPosition(level02.props.OakTree_Collider4ID.transformID, {x=235, y=38.375, z=133.125})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider4ID.transformID, 1.04242, 1.34743, 1.16838)
Transform.SetRotation(level02.props.OakTree_Collider4ID.transformID, {x=0, y=3.64905, z=0})
level02.props.OakTree_Collider41ID = {}
level02.props.OakTree_Collider41ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider42ID = {}
level02.props.OakTree_Collider42ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider43ID = {}
level02.props.OakTree_Collider43ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider44ID = {}
level02.props.OakTree_Collider44ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider45ID = {}
level02.props.OakTree_Collider45ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider46ID = {}
level02.props.OakTree_Collider46ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider1ID = {}
level02.props.OakTree_NoCollider1ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider1ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider1ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider1ID.transformID, {x=280.5, y=67.0411, z=276.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider1ID.transformID, 1.16754, 1.20329, 1.0632)
Transform.SetRotation(level02.props.OakTree_NoCollider1ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider15ID = {}
level02.props.OakTree_NoCollider15ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider15ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider15ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider15ID.transformID, {x=243.5, y=72.399, z=275.5})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider15ID.transformID, 1.51549, 1.56721, 1.50595)
Transform.SetRotation(level02.props.OakTree_NoCollider15ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider111ID = {}
level02.props.OakTree_NoCollider111ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider111ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider111ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider111ID.transformID, {x=234.125, y=67.8749, z=263.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider111ID.transformID, 1.33871, 1.11507, 1.42514)
Transform.SetRotation(level02.props.OakTree_NoCollider111ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider112ID = {}
level02.props.OakTree_NoCollider112ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider112ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider112ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider112ID.transformID, {x=195.875, y=68.02, z=255.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider112ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_NoCollider112ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider113ID = {}
level02.props.OakTree_NoCollider113ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider113ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider113ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider113ID.transformID, {x=246.224, y=32.4063, z=209.059})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider113ID.transformID, 1.19151, 1.56866, 1.54706)
Transform.SetRotation(level02.props.OakTree_NoCollider113ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider114ID = {}
level02.props.OakTree_NoCollider114ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider114ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider114ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider114ID.transformID, {x=230.125, y=43.0313, z=109.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider114ID.transformID, 1.48489, 1.67566, 1.32408)
Transform.SetRotation(level02.props.OakTree_NoCollider114ID.transformID, {x=0, y=-5.86132, z=0})
level02.props.OakTree_NoCollider115ID = {}
level02.props.OakTree_NoCollider115ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider115ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider115ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider115ID.transformID, {x=243.375, y=39.5938, z=106.313})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider115ID.transformID, 1.77344, 1.33132, 1.58633)
Transform.SetRotation(level02.props.OakTree_NoCollider115ID.transformID, {x=0, y=1.59683, z=0})
level02.props.OakTree_NoCollider116ID = {}
level02.props.OakTree_NoCollider116ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider116ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider116ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider116ID.transformID, {x=258, y=37.6875, z=109.938})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider116ID.transformID, 1.14816, 1.20008, 1.36028)
Transform.SetRotation(level02.props.OakTree_NoCollider116ID.transformID, {x=0, y=-1.86515, z=0})
level02.props.OakTree_NoCollider117ID = {}
level02.props.OakTree_NoCollider117ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider117ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider117ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider117ID.transformID, {x=250.25, y=39.0313, z=88.75})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider117ID.transformID, 1.28885, 1.41743, 1.34232)
Transform.SetRotation(level02.props.OakTree_NoCollider117ID.transformID, {x=0, y=-1.52942, z=0})
level02.props.OakTree_NoCollider118ID = {}
level02.props.OakTree_NoCollider118ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider118ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider118ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider118ID.transformID, {x=270.25, y=37.8438, z=97.3125})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider118ID.transformID, 1.21521, 1.22249, 1.27261)
Transform.SetRotation(level02.props.OakTree_NoCollider118ID.transformID, {x=0, y=3.43332, z=0})
level02.props.OakTree_NoCollider119ID = {}
level02.props.OakTree_NoCollider119ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider119ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider119ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider119ID.transformID, {x=255.875, y=39.4375, z=70.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider119ID.transformID, 1.48181, 1.14198, 1.3867)
Transform.SetRotation(level02.props.OakTree_NoCollider119ID.transformID, {x=0, y=1.121, z=0})
level02.props.OakTree_NoCollider120ID = {}
level02.props.OakTree_NoCollider120ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider120ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider120ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider120ID.transformID, {x=235.25, y=46.1563, z=62.5625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider120ID.transformID, 2.11572, 1.32425, 1.16064)
Transform.SetRotation(level02.props.OakTree_NoCollider120ID.transformID, {x=0, y=1.69246, z=0})
level02.props.OakTree_NoCollider121ID = {}
level02.props.OakTree_NoCollider121ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider121ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider121ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider121ID.transformID, {x=226.25, y=47.0938, z=79})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider121ID.transformID, 1.61328, 1.39358, 1.31099)
Transform.SetRotation(level02.props.OakTree_NoCollider121ID.transformID, {x=0, y=1.70454, z=0})
level02.props.OakTree_NoCollider122ID = {}
level02.props.OakTree_NoCollider122ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider122ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider122ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider122ID.transformID, {x=216.5, y=51.25, z=60.4688})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider122ID.transformID, 1.56078, 1.67261, 1.34562)
Transform.SetRotation(level02.props.OakTree_NoCollider122ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider123ID = {}
level02.props.OakTree_NoCollider123ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider123ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider123ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider123ID.transformID, {x=204.75, y=55.2188, z=90.9375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider123ID.transformID, 1.27769, 1.55132, 1.20924)
Transform.SetRotation(level02.props.OakTree_NoCollider123ID.transformID, {x=0, y=2.28254, z=0})
level02.props.OakTree_NoCollider124ID = {}
level02.props.OakTree_NoCollider124ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider124ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider124ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider124ID.transformID, {x=201.375, y=54.8125, z=74.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider124ID.transformID, 1.14632, 1.375, 1.30396)
Transform.SetRotation(level02.props.OakTree_NoCollider124ID.transformID, {x=0, y=-7.63234, z=0})
level02.props.OakTree_NoCollider125ID = {}
level02.props.OakTree_NoCollider125ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider125ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider125ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider125ID.transformID, {x=259.5, y=46.375, z=226.625})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider125ID.transformID, 1.46332, 1.19353, 1.18271)
Transform.SetRotation(level02.props.OakTree_NoCollider125ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider126ID = {}
level02.props.OakTree_NoCollider126ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider126ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider126ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider126ID.transformID, {x=266.518, y=38.7813, z=140.234})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider126ID.transformID, 1.24643, 1.43214, 1.01866)
Transform.SetRotation(level02.props.OakTree_NoCollider126ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider127ID = {}
level02.props.OakTree_NoCollider127ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider127ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider127ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider127ID.transformID, {x=279.25, y=38.8438, z=133.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider127ID.transformID, 1.18579, 1.32684, 1.17773)
Transform.SetRotation(level02.props.OakTree_NoCollider127ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider128ID = {}
level02.props.OakTree_NoCollider128ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider128ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider128ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider128ID.transformID, {x=278.666, y=39.1569, z=144.872})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider128ID.transformID, 1.09952, 1.82356, 1.29491)
Transform.SetRotation(level02.props.OakTree_NoCollider128ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider129ID = {}
level02.props.OakTree_NoCollider129ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider129ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider129ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider129ID.transformID, {x=290.63, y=36.8102, z=143.588})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider129ID.transformID, 1.41107, 1.28853, 0.965256)
Transform.SetRotation(level02.props.OakTree_NoCollider129ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider130ID = {}
level02.props.OakTree_NoCollider130ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider130ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider130ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider130ID.transformID, {x=305.171, y=36, z=136.885})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider130ID.transformID, 1.28088, 1.44492, 1.03773)
Transform.SetRotation(level02.props.OakTree_NoCollider130ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider131ID = {}
level02.props.OakTree_NoCollider131ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider131ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider131ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider131ID.transformID, {x=314.162, y=34.8125, z=152.127})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider131ID.transformID, 1.24725, 1.41257, 0.965744)
Transform.SetRotation(level02.props.OakTree_NoCollider131ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider132ID = {}
level02.props.OakTree_NoCollider132ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider132ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider132ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider132ID.transformID, {x=328, y=34.8438, z=159.25})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider132ID.transformID, 1.44867, 1.09689, 1.24699)
Transform.SetRotation(level02.props.OakTree_NoCollider132ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider133ID = {}
level02.props.OakTree_NoCollider133ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider133ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider133ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider133ID.transformID, {x=325.581, y=34.7813, z=145.115})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider133ID.transformID, 1.25986, 1.59791, 1.12097)
Transform.SetRotation(level02.props.OakTree_NoCollider133ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider134ID = {}
level02.props.OakTree_NoCollider134ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider134ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider134ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider134ID.transformID, {x=222, y=48.3438, z=95.375})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider134ID.transformID, 1.29352, 1.57442, 1.32052)
Transform.SetRotation(level02.props.OakTree_NoCollider134ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_NoCollider135ID = {}
level02.props.OakTree_NoCollider135ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_NoCollider135ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_NoCollider135ID.model)
Transform.SetPosition(level02.props.OakTree_NoCollider135ID.transformID, {x=238.094, y=41.1563, z=93.8647})
Transform.SetScaleNonUniform(level02.props.OakTree_NoCollider135ID.transformID, 1.12421, 1.34698, 1.26532)
Transform.SetRotation(level02.props.OakTree_NoCollider135ID.transformID, {x=0, y=0, z=0})
level02.props.Bridge1ID = {}
level02.props.Bridge1ID.model = Assets.LoadModel('Models/Bridge1.model')
level02.props.Bridge1ID.transformID = Gear.BindStaticInstance(level02.props.Bridge1ID.model)
Transform.SetPosition(level02.props.Bridge1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Bridge1ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Bridge1ID.transformID, {x=0, y=0, z=0})
level02.props.WaterID = {}
level02.props.WaterID.model = Assets.LoadModel('Models/lake.model')
level02.props.WaterID.transformID = Gear.BindStaticInstance(level02.props.WaterID.model)
Transform.SetPosition(level02.props.WaterID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.WaterID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.WaterID.transformID, {x=0, y=0, z=0})
level02.props.House1ID = {}
level02.props.House1ID.model = Assets.LoadModel('Models/House1.model')
level02.props.House1ID.transformID = Gear.BindStaticInstance(level02.props.House1ID.model)
Transform.SetPosition(level02.props.House1ID.transformID, {x=225.855, y=38.7525, z=139.26})
Transform.SetScaleNonUniform(level02.props.House1ID.transformID, 1.50664, 1.67704, 1.68159)
Transform.SetRotation(level02.props.House1ID.transformID, {x=0.0540893, y=4.89373, z=-0.000975025})
level02.props.Lantern4ID = {}
level02.props.Lantern4ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern4ID.transformID = Gear.BindStaticInstance(level02.props.Lantern4ID.model)
Transform.SetPosition(level02.props.Lantern4ID.transformID, {x=226, y=39, z=133})
Transform.SetScaleNonUniform(level02.props.Lantern4ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern4ID.transformID, {x=0, y=-1.0472, z=0})
Light.addLight(225.5, 42.75, 131, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern7ID = {}
level02.props.Lantern7ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern7ID.transformID = Gear.BindStaticInstance(level02.props.Lantern7ID.model)
Transform.SetPosition(level02.props.Lantern7ID.transformID, {x=310.464, y=52.5625, z=246.125})
Transform.SetScaleNonUniform(level02.props.Lantern7ID.transformID, 1, 1.22127, 1)
Transform.SetRotation(level02.props.Lantern7ID.transformID, {x=0, y=0, z=0})
Light.addLight(307.964, 56.5625, 246.125, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern8ID = {}
level02.props.Lantern8ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern8ID.transformID = Gear.BindStaticInstance(level02.props.Lantern8ID.model)
Transform.SetPosition(level02.props.Lantern8ID.transformID, {x=336.838, y=50.9375, z=237.224})
Transform.SetScaleNonUniform(level02.props.Lantern8ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern8ID.transformID, {x=0, y=3.91918, z=0})
Light.addLight(338.838, 54.9375, 235.224, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern9ID = {}
level02.props.Lantern9ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern9ID.transformID = Gear.BindStaticInstance(level02.props.Lantern9ID.model)
Transform.SetPosition(level02.props.Lantern9ID.transformID, {x=196.044, y=40.2449, z=203.33})
Transform.SetScaleNonUniform(level02.props.Lantern9ID.transformID, 1, 1.06172, 1)
Transform.SetRotation(level02.props.Lantern9ID.transformID, {x=0, y=-1.18189, z=0})
Light.addLight(195.044, 44.2449, 201.08, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern10ID = {}
level02.props.Lantern10ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern10ID.transformID = Gear.BindStaticInstance(level02.props.Lantern10ID.model)
Transform.SetPosition(level02.props.Lantern10ID.transformID, {x=216.289, y=36.0584, z=179.585})
Transform.SetScaleNonUniform(level02.props.Lantern10ID.transformID, 1, 1.19206, 1)
Transform.SetRotation(level02.props.Lantern10ID.transformID, {x=0, y=-0.661819, z=0})
Light.addLight(214.289, 40.5584, 177.985, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern11ID = {}
level02.props.Lantern11ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern11ID.transformID = Gear.BindStaticInstance(level02.props.Lantern11ID.model)
Transform.SetPosition(level02.props.Lantern11ID.transformID, {x=235.862, y=35.5215, z=159.577})
Transform.SetScaleNonUniform(level02.props.Lantern11ID.transformID, 1, 1.0759, 1)
Transform.SetRotation(level02.props.Lantern11ID.transformID, {x=0, y=-0.977943, z=0})
Light.addLight(234.612, 39.5215, 157.577, 1, 0.576471, 0.160784, 10,2)
level02.props.PineTree_Collider3ID = {}
level02.props.PineTree_Collider3ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider3ID.model)
Transform.SetPosition(level02.props.PineTree_Collider3ID.transformID, {x=305.672, y=53.5464, z=253.254})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider3ID.transformID, 1.32645, 1.7271, 1.22295)
Transform.SetRotation(level02.props.PineTree_Collider3ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider47ID = {}
level02.props.OakTree_Collider47ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider47ID.model)
Transform.SetPosition(level02.props.OakTree_Collider47ID.transformID, {x=346.368, y=37.1634, z=203.707})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider47ID.transformID, 1.41434, 1.77458, 1.43405)
Transform.SetRotation(level02.props.OakTree_Collider47ID.transformID, {x=0, y=3.24973, z=0})
level02.props.WoodenFenceID = {}
level02.props.WoodenFenceID.collider = OBBCollider.Create(-1)
level02.props.WoodenFenceID.collider:SetOffset(0,0,0)
level02.props.WoodenFenceID.collider:SetZAxis(0,0,1)
level02.props.WoodenFenceID.collider:SetHalfLengths(0.5,1,3)
level02.props.WoodenFenceID.collider:SetPos(198,50.5625,233)
CollisionHandler.AddOBB(level02.props.WoodenFenceID.collider, 3)
level02.props.WoodenFenceID.model = Assets.LoadModel('Models/Wooden_Fence.model')
level02.props.WoodenFenceID.transformID = Gear.BindStaticInstance(level02.props.WoodenFenceID.model)
Transform.SetPosition(level02.props.WoodenFenceID.transformID, {x=198, y=50.5625, z=233})
Transform.SetScaleNonUniform(level02.props.WoodenFenceID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.WoodenFenceID.transformID, {x=0, y=0, z=0})
level02.props.WoodenFence1ID = {}
level02.props.WoodenFence1ID.model = Assets.LoadModel('Models/Wooden_Fence.model')
level02.props.WoodenFence1ID.transformID = Gear.BindStaticInstance(level02.props.WoodenFence1ID.model)
Transform.SetPosition(level02.props.WoodenFence1ID.transformID, {x=192, y=49.5, z=233.375})
Transform.SetScaleNonUniform(level02.props.WoodenFence1ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.WoodenFence1ID.transformID, {x=0, y=0, z=0})
level02.triggers.slussTriggerID = {}
level02.triggers.slussTriggerID.collider = OBBCollider.Create(-1)
level02.triggers.slussTriggerID.collider:SetOffset(0,0,0)
level02.triggers.slussTriggerID.collider:SetZAxis(0,0,1)
level02.triggers.slussTriggerID.collider:SetHalfLengths(2.30089,1.44673,3.22369)
level02.triggers.slussTriggerID.collider:SetPos(195.028,50.2982,233.324)
sluice1 = CreateSluice(level02.triggers.slussTriggerID.collider, level02.props.WoodenFence.transformID, level02.props.WoodenFence, level02.props.WoodenFence1.transformID)
CollisionHandler.AddOBB(level02.triggers.slussTriggerID.collider, 4)
level02.colliders.C_Parent_Tile_2ID = {}
level02.colliders.C_Parent_Tile_2ID.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID.collider:SetMinPos(127.854,26.2952,33.7004)
level02.colliders.C_Parent_Tile_2ID.collider:SetMaxPos(384.073,67.2657,256.312)
level02.colliders.C_Parent_Tile_2ID.collider:SetPos(0,0,0)
level02.colliders.C_Parent_Tile_2ID1 = {}
level02.colliders.C_Parent_Tile_2ID1.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID1.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID1.collider:SetMinPos(127.854,26.2952,33.7004)
level02.colliders.C_Parent_Tile_2ID1.collider:SetMaxPos(309.235,62.9209,252.296)
level02.colliders.C_Parent_Tile_2ID.collider:AddChild(level02.colliders.C_Parent_Tile_2ID1.collider)
level02.colliders.C_Parent_Tile_2ID2 = {}
level02.colliders.C_Parent_Tile_2ID2.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID2.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID2.collider:SetMinPos(137.719,42.3375,33.7395)
level02.colliders.C_Parent_Tile_2ID2.collider:SetMaxPos(206.149,62.9209,157.105)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID2.collider)
level02.colliders.C_Parent_Tile_2ID3 = {}
level02.colliders.C_Parent_Tile_2ID3.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID3.collider:SetOffset(139.5,48.7857,153)
level02.colliders.C_Parent_Tile_2ID3.collider:SetZAxis(0.351123,0,-0.936329)
level02.colliders.C_Parent_Tile_2ID3.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID3.collider)
level02.colliders.C_Parent_Tile_2ID4 = {}
level02.colliders.C_Parent_Tile_2ID4.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID4.collider:SetOffset(144.5,50.234,147.5)
level02.colliders.C_Parent_Tile_2ID4.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2ID4.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID4.collider)
level02.colliders.C_Parent_Tile_2ID5 = {}
level02.colliders.C_Parent_Tile_2ID5.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID5.collider:SetOffset(181.5,55.2472,112)
level02.colliders.C_Parent_Tile_2ID5.collider:SetZAxis(-0.287348,0,-0.957826)
level02.colliders.C_Parent_Tile_2ID5.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID5.collider)
level02.colliders.C_Parent_Tile_2ID6 = {}
level02.colliders.C_Parent_Tile_2ID6.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID6.collider:SetOffset(176.5,56.8068,92)
level02.colliders.C_Parent_Tile_2ID6.collider:SetZAxis(-0.0995037,0,-0.995037)
level02.colliders.C_Parent_Tile_2ID6.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID6.collider)
level02.colliders.C_Parent_Tile_2ID7 = {}
level02.colliders.C_Parent_Tile_2ID7.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID7.collider:SetOffset(176.5,56.584,78.5)
level02.colliders.C_Parent_Tile_2ID7.collider:SetZAxis(0.058722,0,-0.998274)
level02.colliders.C_Parent_Tile_2ID7.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID7.collider)
level02.colliders.C_Parent_Tile_2ID8 = {}
level02.colliders.C_Parent_Tile_2ID8.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID8.collider:SetOffset(179,56.2498,63.5)
level02.colliders.C_Parent_Tile_2ID8.collider:SetZAxis(0.294086,0,-0.955779)
level02.colliders.C_Parent_Tile_2ID8.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID8.collider)
level02.colliders.C_Parent_Tile_2ID9 = {}
level02.colliders.C_Parent_Tile_2ID9.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID9.collider:SetOffset(185,54.5788,51)
level02.colliders.C_Parent_Tile_2ID9.collider:SetZAxis(0.5547,0,-0.83205)
level02.colliders.C_Parent_Tile_2ID9.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID9.collider)
level02.colliders.C_Parent_Tile_2ID10 = {}
level02.colliders.C_Parent_Tile_2ID10.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID10.collider:SetOffset(194,53.5761,41.5)
level02.colliders.C_Parent_Tile_2ID10.collider:SetZAxis(0.819232,0,-0.573462)
level02.colliders.C_Parent_Tile_2ID10.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID10.collider)
level02.colliders.C_Parent_Tile_2ID11 = {}
level02.colliders.C_Parent_Tile_2ID11.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID11.collider:SetOffset(202.5,52.9077,36)
level02.colliders.C_Parent_Tile_2ID11.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.C_Parent_Tile_2ID11.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID11.collider)
level02.colliders.C_Parent_Tile_2ID12 = {}
level02.colliders.C_Parent_Tile_2ID12.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID12.collider:SetOffset(197,53.6875,59.5)
level02.colliders.C_Parent_Tile_2ID12.collider:SetZAxis(-0.5547,0,0.83205)
level02.colliders.C_Parent_Tile_2ID12.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_2ID2.collider:AddChild(level02.colliders.C_Parent_Tile_2ID12.collider)
level02.colliders.C_Parent_Tile_2ID13 = {}
level02.colliders.C_Parent_Tile_2ID13.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID13.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID13.collider:SetMinPos(137.705,31.8654,33.7004)
level02.colliders.C_Parent_Tile_2ID13.collider:SetMaxPos(225.016,62.1411,178.059)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID13.collider)
level02.colliders.C_Parent_Tile_2ID14 = {}
level02.colliders.C_Parent_Tile_2ID14.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID14.collider:SetOffset(141,40.5418,173)
level02.colliders.C_Parent_Tile_2ID14.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_2ID14.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID14.collider)
level02.colliders.C_Parent_Tile_2ID15 = {}
level02.colliders.C_Parent_Tile_2ID15.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID15.collider:SetOffset(139,44.2181,162.5)
level02.colliders.C_Parent_Tile_2ID15.collider:SetZAxis(-0.178885,0,-0.98387)
level02.colliders.C_Parent_Tile_2ID15.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID15.collider)
level02.colliders.C_Parent_Tile_2ID16 = {}
level02.colliders.C_Parent_Tile_2ID16.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID16.collider:SetOffset(152,50.4568,146.5)
level02.colliders.C_Parent_Tile_2ID16.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_2ID16.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID16.collider)
level02.colliders.C_Parent_Tile_2ID17 = {}
level02.colliders.C_Parent_Tile_2ID17.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID17.collider:SetOffset(161.5,50.234,149)
level02.colliders.C_Parent_Tile_2ID17.collider:SetZAxis(0.939793,0,0.341743)
level02.colliders.C_Parent_Tile_2ID17.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID17.collider)
level02.colliders.C_Parent_Tile_2ID18 = {}
level02.colliders.C_Parent_Tile_2ID18.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID18.collider:SetOffset(215.5,52.0165,34.5)
level02.colliders.C_Parent_Tile_2ID18.collider:SetZAxis(0.998618,0,0.0525588)
level02.colliders.C_Parent_Tile_2ID18.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID18.collider)
level02.colliders.C_Parent_Tile_2ID19 = {}
level02.colliders.C_Parent_Tile_2ID19.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID19.collider:SetOffset(213,50.4568,48.5)
level02.colliders.C_Parent_Tile_2ID19.collider:SetZAxis(-0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_2ID19.collider:SetHalfLengths(0.3,6.78247,4.03113)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID19.collider)
level02.colliders.C_Parent_Tile_2ID20 = {}
level02.colliders.C_Parent_Tile_2ID20.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID20.collider:SetOffset(204.5,52.2393,52)
level02.colliders.C_Parent_Tile_2ID20.collider:SetZAxis(-0.83205,0,0.5547)
level02.colliders.C_Parent_Tile_2ID20.collider:SetHalfLengths(0.3,6.44826,5.40833)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID20.collider)
level02.colliders.C_Parent_Tile_2ID21 = {}
level02.colliders.C_Parent_Tile_2ID21.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID21.collider:SetOffset(193.5,54.5788,70.5)
level02.colliders.C_Parent_Tile_2ID21.collider:SetZAxis(-0.0766965,0,0.997055)
level02.colliders.C_Parent_Tile_2ID21.collider:SetHalfLengths(0.3,6.00264,6.5192)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID21.collider)
level02.colliders.C_Parent_Tile_2ID22 = {}
level02.colliders.C_Parent_Tile_2ID22.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID22.collider:SetOffset(194,55.5814,84)
level02.colliders.C_Parent_Tile_2ID22.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.C_Parent_Tile_2ID22.collider:SetHalfLengths(0.3,6.00264,7.07107)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID22.collider)
level02.colliders.C_Parent_Tile_2ID23 = {}
level02.colliders.C_Parent_Tile_2ID23.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID23.collider:SetOffset(197.5,56.584,98.5)
level02.colliders.C_Parent_Tile_2ID23.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_2ID23.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_2ID13.collider:AddChild(level02.colliders.C_Parent_Tile_2ID23.collider)
level02.colliders.C_Parent_Tile_2ID24 = {}
level02.colliders.C_Parent_Tile_2ID24.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID24.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID24.collider:SetMinPos(141.703,32.1997,34.7033)
level02.colliders.C_Parent_Tile_2ID24.collider:SetMaxPos(245.044,62.6981,192.042)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID24.collider)
level02.colliders.C_Parent_Tile_2ID25 = {}
level02.colliders.C_Parent_Tile_2ID25.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID25.collider:SetOffset(143,38.8707,185)
level02.colliders.C_Parent_Tile_2ID25.collider:SetZAxis(-0.141421,0,-0.98995)
level02.colliders.C_Parent_Tile_2ID25.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID25.collider)
level02.colliders.C_Parent_Tile_2ID26 = {}
level02.colliders.C_Parent_Tile_2ID26.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID26.collider:SetOffset(170,52.1279,152)
level02.colliders.C_Parent_Tile_2ID26.collider:SetZAxis(0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2ID26.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID26.collider)
level02.colliders.C_Parent_Tile_2ID27 = {}
level02.colliders.C_Parent_Tile_2ID27.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID27.collider:SetOffset(187.5,55.2472,133)
level02.colliders.C_Parent_Tile_2ID27.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_2ID27.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID27.collider)
level02.colliders.C_Parent_Tile_2ID28 = {}
level02.colliders.C_Parent_Tile_2ID28.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID28.collider:SetOffset(186.5,55.3586,129)
level02.colliders.C_Parent_Tile_2ID28.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_2ID28.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID28.collider)
level02.colliders.C_Parent_Tile_2ID29 = {}
level02.colliders.C_Parent_Tile_2ID29.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID29.collider:SetOffset(235,48.0059,36.5)
level02.colliders.C_Parent_Tile_2ID29.collider:SetZAxis(0.988936,0,0.14834)
level02.colliders.C_Parent_Tile_2ID29.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID29.collider)
level02.colliders.C_Parent_Tile_2ID30 = {}
level02.colliders.C_Parent_Tile_2ID30.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID30.collider:SetOffset(221.5,48.4515,48.5)
level02.colliders.C_Parent_Tile_2ID30.collider:SetZAxis(-0.993884,0,-0.110432)
level02.colliders.C_Parent_Tile_2ID30.collider:SetHalfLengths(0.3,7.00528,4.52769)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID30.collider)
level02.colliders.C_Parent_Tile_2ID31 = {}
level02.colliders.C_Parent_Tile_2ID31.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID31.collider:SetOffset(202.5,56.027,116.5)
level02.colliders.C_Parent_Tile_2ID31.collider:SetZAxis(0.231621,0,0.972806)
level02.colliders.C_Parent_Tile_2ID31.collider:SetHalfLengths(0.3,5.89124,10.7935)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID31.collider)
level02.colliders.C_Parent_Tile_2ID32 = {}
level02.colliders.C_Parent_Tile_2ID32.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID32.collider:SetOffset(160.5,54.1331,160.5)
level02.colliders.C_Parent_Tile_2ID32.collider:SetZAxis(-0.910366,0,-0.413803)
level02.colliders.C_Parent_Tile_2ID32.collider:SetHalfLengths(0.3,8.56494,6.04152)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID32.collider)
level02.colliders.C_Parent_Tile_2ID33 = {}
level02.colliders.C_Parent_Tile_2ID33.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID33.collider:SetOffset(153.5,50.5682,161.5)
level02.colliders.C_Parent_Tile_2ID33.collider:SetZAxis(-0.393919,0,0.919145)
level02.colliders.C_Parent_Tile_2ID33.collider:SetHalfLengths(0.3,6.67107,3.80789)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID33.collider)
level02.colliders.C_Parent_Tile_2ID34 = {}
level02.colliders.C_Parent_Tile_2ID34.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID34.collider:SetOffset(155.5,48.8971,169)
level02.colliders.C_Parent_Tile_2ID34.collider:SetZAxis(0.658505,0,0.752577)
level02.colliders.C_Parent_Tile_2ID34.collider:SetHalfLengths(0.3,5.44561,5.31507)
level02.colliders.C_Parent_Tile_2ID24.collider:AddChild(level02.colliders.C_Parent_Tile_2ID34.collider)
level02.colliders.C_Parent_Tile_2ID35 = {}
level02.colliders.C_Parent_Tile_2ID35.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID35.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID35.collider:SetMinPos(136.756,27.5207,48.7154)
level02.colliders.C_Parent_Tile_2ID35.collider:SetMaxPos(241.095,62.0297,206.174)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID35.collider)
level02.colliders.C_Parent_Tile_2ID36 = {}
level02.colliders.C_Parent_Tile_2ID36.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID36.collider:SetOffset(139.5,34.7488,202.5)
level02.colliders.C_Parent_Tile_2ID36.collider:SetZAxis(0.581238,0,-0.813733)
level02.colliders.C_Parent_Tile_2ID36.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID36.collider)
level02.colliders.C_Parent_Tile_2ID37 = {}
level02.colliders.C_Parent_Tile_2ID37.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID37.collider:SetOffset(143,36.9769,195.5)
level02.colliders.C_Parent_Tile_2ID37.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.C_Parent_Tile_2ID37.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID37.collider)
level02.colliders.C_Parent_Tile_2ID38 = {}
level02.colliders.C_Parent_Tile_2ID38.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID38.collider:SetOffset(176.5,52.7963,152.5)
level02.colliders.C_Parent_Tile_2ID38.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.C_Parent_Tile_2ID38.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID38.collider)
level02.colliders.C_Parent_Tile_2ID39 = {}
level02.colliders.C_Parent_Tile_2ID39.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID39.collider:SetOffset(182,54.1331,150.5)
level02.colliders.C_Parent_Tile_2ID39.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2ID39.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID39.collider)
level02.colliders.C_Parent_Tile_2ID40 = {}
level02.colliders.C_Parent_Tile_2ID40.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID40.collider:SetOffset(184.5,54.8016,147.5)
level02.colliders.C_Parent_Tile_2ID40.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2ID40.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID40.collider)
level02.colliders.C_Parent_Tile_2ID41 = {}
level02.colliders.C_Parent_Tile_2ID41.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID41.collider:SetOffset(186,55.5814,143.5)
level02.colliders.C_Parent_Tile_2ID41.collider:SetZAxis(0.371391,0,-0.928477)
level02.colliders.C_Parent_Tile_2ID41.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID41.collider)
level02.colliders.C_Parent_Tile_2ID42 = {}
level02.colliders.C_Parent_Tile_2ID42.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID42.collider:SetOffset(187.5,55.2472,138)
level02.colliders.C_Parent_Tile_2ID42.collider:SetZAxis(0.164399,0,-0.986394)
level02.colliders.C_Parent_Tile_2ID42.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID42.collider)
level02.colliders.C_Parent_Tile_2ID43 = {}
level02.colliders.C_Parent_Tile_2ID43.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID43.collider:SetOffset(233.5,44.998,51.5)
level02.colliders.C_Parent_Tile_2ID43.collider:SetZAxis(-0.948683,0,-0.316228)
level02.colliders.C_Parent_Tile_2ID43.collider:SetHalfLengths(0.3,8.45354,7.90569)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID43.collider)
level02.colliders.C_Parent_Tile_2ID44 = {}
level02.colliders.C_Parent_Tile_2ID44.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID44.collider:SetOffset(170.5,55.5814,165.5)
level02.colliders.C_Parent_Tile_2ID44.collider:SetZAxis(-0.874157,0,-0.485643)
level02.colliders.C_Parent_Tile_2ID44.collider:SetHalfLengths(0.3,6.44826,5.14782)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID44.collider)
level02.colliders.C_Parent_Tile_2ID45 = {}
level02.colliders.C_Parent_Tile_2ID45.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID45.collider:SetOffset(161,48.4515,179)
level02.colliders.C_Parent_Tile_2ID45.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_2ID45.collider:SetHalfLengths(0.3,9.7904,6.32456)
level02.colliders.C_Parent_Tile_2ID35.collider:AddChild(level02.colliders.C_Parent_Tile_2ID45.collider)
level02.colliders.C_Parent_Tile_2ID46 = {}
level02.colliders.C_Parent_Tile_2ID46.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID46.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID46.collider:SetMinPos(127.854,28.4119,37.73)
level02.colliders.C_Parent_Tile_2ID46.collider:SetMaxPos(276.131,61.4726,211.262)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID46.collider)
level02.colliders.C_Parent_Tile_2ID47 = {}
level02.colliders.C_Parent_Tile_2ID47.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID47.collider:SetOffset(132.5,34.0803,208.5)
level02.colliders.C_Parent_Tile_2ID47.collider:SetZAxis(0.874157,0,-0.485643)
level02.colliders.C_Parent_Tile_2ID47.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID47.collider)
level02.colliders.C_Parent_Tile_2ID48 = {}
level02.colliders.C_Parent_Tile_2ID48.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID48.collider:SetOffset(260.5,45.2208,45.5)
level02.colliders.C_Parent_Tile_2ID48.collider:SetZAxis(0.900159,0,0.435561)
level02.colliders.C_Parent_Tile_2ID48.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID48.collider)
level02.colliders.C_Parent_Tile_2ID49 = {}
level02.colliders.C_Parent_Tile_2ID49.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID49.collider:SetOffset(248,40.9874,57)
level02.colliders.C_Parent_Tile_2ID49.collider:SetZAxis(-0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2ID49.collider:SetHalfLengths(0.3,9.01056,7.61577)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID49.collider)
level02.colliders.C_Parent_Tile_2ID50 = {}
level02.colliders.C_Parent_Tile_2ID50.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID50.collider:SetOffset(205.5,55.1358,132.5)
level02.colliders.C_Parent_Tile_2ID50.collider:SetZAxis(0.0905357,0,0.995893)
level02.colliders.C_Parent_Tile_2ID50.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID50.collider)
level02.colliders.C_Parent_Tile_2ID51 = {}
level02.colliders.C_Parent_Tile_2ID51.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID51.collider:SetOffset(206.5,55.47,143.5)
level02.colliders.C_Parent_Tile_2ID51.collider:SetZAxis(0.0905357,0,0.995893)
level02.colliders.C_Parent_Tile_2ID51.collider:SetHalfLengths(0.3,5.22281,5.52268)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID51.collider)
level02.colliders.C_Parent_Tile_2ID52 = {}
level02.colliders.C_Parent_Tile_2ID52.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID52.collider:SetOffset(180,56.027,169)
level02.colliders.C_Parent_Tile_2ID52.collider:SetZAxis(-0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2ID52.collider:SetHalfLengths(0.3,5.44562,5.09902)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID52.collider)
level02.colliders.C_Parent_Tile_2ID53 = {}
level02.colliders.C_Parent_Tile_2ID53.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID53.collider:SetOffset(163,43.6611,194.5)
level02.colliders.C_Parent_Tile_2ID53.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID53.collider:SetHalfLengths(0.3,8.34213,9.5)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID53.collider)
level02.colliders.C_Parent_Tile_2ID54 = {}
level02.colliders.C_Parent_Tile_2ID54.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID54.collider:SetOffset(218.5,38.9821,136)
level02.colliders.C_Parent_Tile_2ID54.collider:SetZAxis(-0.209529,0,-0.977802)
level02.colliders.C_Parent_Tile_2ID54.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID54.collider)
level02.colliders.C_Parent_Tile_2ID55 = {}
level02.colliders.C_Parent_Tile_2ID55.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID55.collider:SetOffset(221.5,41.3216,126)
level02.colliders.C_Parent_Tile_2ID55.collider:SetZAxis(0.83205,0,-0.5547)
level02.colliders.C_Parent_Tile_2ID55.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID55.collider)
level02.colliders.C_Parent_Tile_2ID56 = {}
level02.colliders.C_Parent_Tile_2ID56.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID56.collider:SetOffset(163.885,45.0938,193.24)
level02.colliders.C_Parent_Tile_2ID56.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID56.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.colliders.C_Parent_Tile_2ID46.collider:AddChild(level02.colliders.C_Parent_Tile_2ID56.collider)
level02.colliders.C_Parent_Tile_2ID57 = {}
level02.colliders.C_Parent_Tile_2ID57.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID57.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID57.collider:SetMinPos(127.963,27.1865,120.706)
level02.colliders.C_Parent_Tile_2ID57.collider:SetMaxPos(236.059,61.027,224.298)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID57.collider)
level02.colliders.C_Parent_Tile_2ID58 = {}
level02.colliders.C_Parent_Tile_2ID58.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID58.collider:SetOffset(132,33.8575,223.5)
level02.colliders.C_Parent_Tile_2ID58.collider:SetZAxis(0.992278,0,-0.124035)
level02.colliders.C_Parent_Tile_2ID58.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID58.collider)
level02.colliders.C_Parent_Tile_2ID59 = {}
level02.colliders.C_Parent_Tile_2ID59.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID59.collider:SetOffset(138.5,35.5286,222)
level02.colliders.C_Parent_Tile_2ID59.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.C_Parent_Tile_2ID59.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID59.collider)
level02.colliders.C_Parent_Tile_2ID60 = {}
level02.colliders.C_Parent_Tile_2ID60.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID60.collider:SetOffset(205,55.2472,154)
level02.colliders.C_Parent_Tile_2ID60.collider:SetZAxis(-0.371391,0,0.928477)
level02.colliders.C_Parent_Tile_2ID60.collider:SetHalfLengths(0.3,5.22281,5.38516)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID60.collider)
level02.colliders.C_Parent_Tile_2ID61 = {}
level02.colliders.C_Parent_Tile_2ID61.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID61.collider:SetOffset(198.5,55.0244,163.5)
level02.colliders.C_Parent_Tile_2ID61.collider:SetZAxis(-0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2ID61.collider:SetHalfLengths(0.3,5.77983,6.36396)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID61.collider)
level02.colliders.C_Parent_Tile_2ID62 = {}
level02.colliders.C_Parent_Tile_2ID62.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID62.collider:SetOffset(189.5,55.8042,169)
level02.colliders.C_Parent_Tile_2ID62.collider:SetZAxis(-0.976187,0,0.21693)
level02.colliders.C_Parent_Tile_2ID62.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID62.collider)
level02.colliders.C_Parent_Tile_2ID63 = {}
level02.colliders.C_Parent_Tile_2ID63.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID63.collider:SetOffset(170,40.319,200)
level02.colliders.C_Parent_Tile_2ID63.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.C_Parent_Tile_2ID63.collider:SetHalfLengths(0.3,7.5623,8.06226)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID63.collider)
level02.colliders.C_Parent_Tile_2ID64 = {}
level02.colliders.C_Parent_Tile_2ID64.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID64.collider:SetOffset(184,42.8813,193)
level02.colliders.C_Parent_Tile_2ID64.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2ID64.collider:SetHalfLengths(0.3,5.22281,7.61577)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID64.collider)
level02.colliders.C_Parent_Tile_2ID65 = {}
level02.colliders.C_Parent_Tile_2ID65.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID65.collider:SetOffset(201,40.319,176.5)
level02.colliders.C_Parent_Tile_2ID65.collider:SetZAxis(0.841179,0,-0.540758)
level02.colliders.C_Parent_Tile_2ID65.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID65.collider)
level02.colliders.C_Parent_Tile_2ID66 = {}
level02.colliders.C_Parent_Tile_2ID66.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID66.collider:SetOffset(231,42.2129,122)
level02.colliders.C_Parent_Tile_2ID66.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2ID66.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID66.collider)
level02.colliders.C_Parent_Tile_2ID67 = {}
level02.colliders.C_Parent_Tile_2ID67.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID67.collider:SetOffset(225.855,38.7525,139.26)
level02.colliders.C_Parent_Tile_2ID67.collider:SetZAxis(-0.982216,-0.0531053,0.180086)
level02.colliders.C_Parent_Tile_2ID67.collider:SetHalfLengths(7.53319,6.70818,7.56718)
level02.colliders.C_Parent_Tile_2ID57.collider:AddChild(level02.colliders.C_Parent_Tile_2ID67.collider)
level02.colliders.C_Parent_Tile_2ID68 = {}
level02.colliders.C_Parent_Tile_2ID68.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID68.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID68.collider:SetMinPos(140.927,29.3031,59.7622)
level02.colliders.C_Parent_Tile_2ID68.collider:SetMaxPos(268.183,49.998,223.212)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID68.collider)
level02.colliders.C_Parent_Tile_2ID69 = {}
level02.colliders.C_Parent_Tile_2ID69.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID69.collider:SetOffset(143,35.1944,220.5)
level02.colliders.C_Parent_Tile_2ID69.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_2ID69.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID69.collider)
level02.colliders.C_Parent_Tile_2ID70 = {}
level02.colliders.C_Parent_Tile_2ID70.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID70.collider:SetOffset(146.5,35.1944,221.5)
level02.colliders.C_Parent_Tile_2ID70.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2ID70.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID70.collider)
level02.colliders.C_Parent_Tile_2ID71 = {}
level02.colliders.C_Parent_Tile_2ID71.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID71.collider:SetOffset(261.5,38.7593,65)
level02.colliders.C_Parent_Tile_2ID71.collider:SetZAxis(-0.792624,0,-0.609711)
level02.colliders.C_Parent_Tile_2ID71.collider:SetHalfLengths(0.3,7.22809,8.20061)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID71.collider)
level02.colliders.C_Parent_Tile_2ID72 = {}
level02.colliders.C_Parent_Tile_2ID72.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID72.collider:SetOffset(192.5,42.6585,185.5)
level02.colliders.C_Parent_Tile_2ID72.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2ID72.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID72.collider)
level02.colliders.C_Parent_Tile_2ID73 = {}
level02.colliders.C_Parent_Tile_2ID73.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID73.collider:SetOffset(213,39.3163,166.5)
level02.colliders.C_Parent_Tile_2ID73.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.C_Parent_Tile_2ID73.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID73.collider)
level02.colliders.C_Parent_Tile_2ID74 = {}
level02.colliders.C_Parent_Tile_2ID74.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID74.collider:SetOffset(219,36.4198,158)
level02.colliders.C_Parent_Tile_2ID74.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2ID74.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID74.collider)
level02.colliders.C_Parent_Tile_2ID75 = {}
level02.colliders.C_Parent_Tile_2ID75.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID75.collider:SetOffset(222,36.5312,153.5)
level02.colliders.C_Parent_Tile_2ID75.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2ID75.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID75.collider)
level02.colliders.C_Parent_Tile_2ID76 = {}
level02.colliders.C_Parent_Tile_2ID76.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID76.collider:SetOffset(221,36.6426,148)
level02.colliders.C_Parent_Tile_2ID76.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_2ID76.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID76.collider)
level02.colliders.C_Parent_Tile_2ID77 = {}
level02.colliders.C_Parent_Tile_2ID77.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID77.collider:SetOffset(242,40.0962,124.5)
level02.colliders.C_Parent_Tile_2ID77.collider:SetZAxis(0.863779,0,0.503871)
level02.colliders.C_Parent_Tile_2ID77.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID77.collider)
level02.colliders.C_Parent_Tile_2ID78 = {}
level02.colliders.C_Parent_Tile_2ID78.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID78.collider:SetOffset(235,42.375,133.125)
level02.colliders.C_Parent_Tile_2ID78.collider:SetZAxis(-0.485958,0,-0.873982)
level02.colliders.C_Parent_Tile_2ID78.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.colliders.C_Parent_Tile_2ID68.collider:AddChild(level02.colliders.C_Parent_Tile_2ID78.collider)
level02.colliders.C_Parent_Tile_2ID79 = {}
level02.colliders.C_Parent_Tile_2ID79.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID79.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID79.collider:SetMinPos(148.703,30.1944,69.8112)
level02.colliders.C_Parent_Tile_2ID79.collider:SetMaxPos(285.233,47.5471,240.042)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID79.collider)
level02.colliders.C_Parent_Tile_2ID80 = {}
level02.colliders.C_Parent_Tile_2ID80.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID80.collider:SetOffset(149.5,37.0883,236.5)
level02.colliders.C_Parent_Tile_2ID80.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.C_Parent_Tile_2ID80.collider:SetHalfLengths(0.3,5.1114,3.53553)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID80.collider)
level02.colliders.C_Parent_Tile_2ID81 = {}
level02.colliders.C_Parent_Tile_2ID81.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID81.collider:SetOffset(176.5,41.9901,216.5)
level02.colliders.C_Parent_Tile_2ID81.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_2ID81.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID81.collider)
level02.colliders.C_Parent_Tile_2ID82 = {}
level02.colliders.C_Parent_Tile_2ID82.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID82.collider:SetOffset(190.5,41.3216,205.5)
level02.colliders.C_Parent_Tile_2ID82.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2ID82.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID82.collider)
level02.colliders.C_Parent_Tile_2ID83 = {}
level02.colliders.C_Parent_Tile_2ID83.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID83.collider:SetOffset(207.5,38.9821,191)
level02.colliders.C_Parent_Tile_2ID83.collider:SetZAxis(0.287348,0,-0.957826)
level02.colliders.C_Parent_Tile_2ID83.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID83.collider)
level02.colliders.C_Parent_Tile_2ID84 = {}
level02.colliders.C_Parent_Tile_2ID84.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID84.collider:SetOffset(211,37.7567,184.5)
level02.colliders.C_Parent_Tile_2ID84.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2ID84.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID84.collider)
level02.colliders.C_Parent_Tile_2ID85 = {}
level02.colliders.C_Parent_Tile_2ID85.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID85.collider:SetOffset(215,36.9769,181.5)
level02.colliders.C_Parent_Tile_2ID85.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_2ID85.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID85.collider)
level02.colliders.C_Parent_Tile_2ID86 = {}
level02.colliders.C_Parent_Tile_2ID86.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID86.collider:SetOffset(227.5,35.64,167.5)
level02.colliders.C_Parent_Tile_2ID86.collider:SetZAxis(0.813733,0,-0.581238)
level02.colliders.C_Parent_Tile_2ID86.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID86.collider)
level02.colliders.C_Parent_Tile_2ID87 = {}
level02.colliders.C_Parent_Tile_2ID87.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID87.collider:SetOffset(237.5,35.64,159.5)
level02.colliders.C_Parent_Tile_2ID87.collider:SetZAxis(0.763386,0,-0.645942)
level02.colliders.C_Parent_Tile_2ID87.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID87.collider)
level02.colliders.C_Parent_Tile_2ID88 = {}
level02.colliders.C_Parent_Tile_2ID88.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID88.collider:SetOffset(276.5,39.5392,80.5)
level02.colliders.C_Parent_Tile_2ID88.collider:SetZAxis(-0.629198,0,-0.777245)
level02.colliders.C_Parent_Tile_2ID88.collider:SetHalfLengths(0.3,5.77983,13.5093)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID88.collider)
level02.colliders.C_Parent_Tile_2ID89 = {}
level02.colliders.C_Parent_Tile_2ID89.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID89.collider:SetOffset(240,36.754,139)
level02.colliders.C_Parent_Tile_2ID89.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2ID89.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.C_Parent_Tile_2ID79.collider:AddChild(level02.colliders.C_Parent_Tile_2ID89.collider)
level02.colliders.C_Parent_Tile_2ID90 = {}
level02.colliders.C_Parent_Tile_2ID90.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID90.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID90.collider:SetMinPos(149.7,26.2952,52.7879)
level02.colliders.C_Parent_Tile_2ID90.collider:SetMaxPos(298.031,56.0138,250.277)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID90.collider)
level02.colliders.C_Parent_Tile_2ID91 = {}
level02.colliders.C_Parent_Tile_2ID91.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID91.collider:SetOffset(283,40.9874,60)
level02.colliders.C_Parent_Tile_2ID91.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2ID91.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID91.collider)
level02.colliders.C_Parent_Tile_2ID92 = {}
level02.colliders.C_Parent_Tile_2ID92.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID92.collider:SetOffset(150,37.1997,241.5)
level02.colliders.C_Parent_Tile_2ID92.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID92.collider:SetHalfLengths(0.3,5,1.5)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID92.collider)
level02.colliders.C_Parent_Tile_2ID93 = {}
level02.colliders.C_Parent_Tile_2ID93.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID93.collider:SetOffset(158.5,37.1997,246.5)
level02.colliders.C_Parent_Tile_2ID93.collider:SetZAxis(0.924678,0,0.38075)
level02.colliders.C_Parent_Tile_2ID93.collider:SetHalfLengths(0.3,10.9044,9.19239)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID93.collider)
level02.colliders.C_Parent_Tile_2ID94 = {}
level02.colliders.C_Parent_Tile_2ID94.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID94.collider:SetOffset(183.5,46.8918,226)
level02.colliders.C_Parent_Tile_2ID94.collider:SetZAxis(-0.913812,0,-0.406139)
level02.colliders.C_Parent_Tile_2ID94.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID94.collider)
level02.colliders.C_Parent_Tile_2ID95 = {}
level02.colliders.C_Parent_Tile_2ID95.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID95.collider:SetOffset(178,42.7699,221.5)
level02.colliders.C_Parent_Tile_2ID95.collider:SetZAxis(-0.371391,0,-0.928477)
level02.colliders.C_Parent_Tile_2ID95.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID95.collider)
level02.colliders.C_Parent_Tile_2ID96 = {}
level02.colliders.C_Parent_Tile_2ID96.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID96.collider:SetOffset(198,40.6532,203)
level02.colliders.C_Parent_Tile_2ID96.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.C_Parent_Tile_2ID96.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID96.collider)
level02.colliders.C_Parent_Tile_2ID97 = {}
level02.colliders.C_Parent_Tile_2ID97.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID97.collider:SetOffset(204.5,39.6506,198.5)
level02.colliders.C_Parent_Tile_2ID97.collider:SetZAxis(0.514496,0,-0.857493)
level02.colliders.C_Parent_Tile_2ID97.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID97.collider)
level02.colliders.C_Parent_Tile_2ID98 = {}
level02.colliders.C_Parent_Tile_2ID98.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID98.collider:SetOffset(249.5,36.0856,148.5)
level02.colliders.C_Parent_Tile_2ID98.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2ID98.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID98.collider)
level02.colliders.C_Parent_Tile_2ID99 = {}
level02.colliders.C_Parent_Tile_2ID99.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID99.collider:SetOffset(263.5,37.4225,113.5)
level02.colliders.C_Parent_Tile_2ID99.collider:SetZAxis(0.773957,0,-0.633238)
level02.colliders.C_Parent_Tile_2ID99.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID99.collider)
level02.colliders.C_Parent_Tile_2ID100 = {}
level02.colliders.C_Parent_Tile_2ID100.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID100.collider:SetOffset(283.5,36.9769,107.5)
level02.colliders.C_Parent_Tile_2ID100.collider:SetZAxis(0.994692,0,-0.102899)
level02.colliders.C_Parent_Tile_2ID100.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.C_Parent_Tile_2ID90.collider:AddChild(level02.colliders.C_Parent_Tile_2ID100.collider)
level02.colliders.C_Parent_Tile_2ID101 = {}
level02.colliders.C_Parent_Tile_2ID101.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID101.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID101.collider:SetMinPos(166.951,31.4198,66.8138)
level02.colliders.C_Parent_Tile_2ID101.collider:SetMaxPos(309.235,55.8438,252.296)
level02.colliders.C_Parent_Tile_2ID1.collider:AddChild(level02.colliders.C_Parent_Tile_2ID101.collider)
level02.colliders.C_Parent_Tile_2ID102 = {}
level02.colliders.C_Parent_Tile_2ID102.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID102.collider:SetOffset(299.5,41.3216,79)
level02.colliders.C_Parent_Tile_2ID102.collider:SetZAxis(0.620703,0,0.784046)
level02.colliders.C_Parent_Tile_2ID102.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID102.collider)
level02.colliders.C_Parent_Tile_2ID103 = {}
level02.colliders.C_Parent_Tile_2ID103.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID103.collider:SetOffset(173,43.1041,251)
level02.colliders.C_Parent_Tile_2ID103.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_2ID103.collider:SetHalfLengths(0.3,9.01056,6.08276)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID103.collider)
level02.colliders.C_Parent_Tile_2ID104 = {}
level02.colliders.C_Parent_Tile_2ID104.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID104.collider:SetOffset(198.5,49.5656,227.5)
level02.colliders.C_Parent_Tile_2ID104.collider:SetZAxis(-0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2ID104.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID104.collider)
level02.colliders.C_Parent_Tile_2ID105 = {}
level02.colliders.C_Parent_Tile_2ID105.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID105.collider:SetOffset(191.5,48.3401,228)
level02.colliders.C_Parent_Tile_2ID105.collider:SetZAxis(-1,0,0)
level02.colliders.C_Parent_Tile_2ID105.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID105.collider)
level02.colliders.C_Parent_Tile_2ID106 = {}
level02.colliders.C_Parent_Tile_2ID106.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID106.collider:SetOffset(258,36.8654,140)
level02.colliders.C_Parent_Tile_2ID106.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2ID106.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID106.collider)
level02.colliders.C_Parent_Tile_2ID107 = {}
level02.colliders.C_Parent_Tile_2ID107.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID107.collider:SetOffset(264,37.3111,134.5)
level02.colliders.C_Parent_Tile_2ID107.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.C_Parent_Tile_2ID107.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID107.collider)
level02.colliders.C_Parent_Tile_2ID108 = {}
level02.colliders.C_Parent_Tile_2ID108.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID108.collider:SetOffset(269,37.4225,131)
level02.colliders.C_Parent_Tile_2ID108.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.C_Parent_Tile_2ID108.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID108.collider)
level02.colliders.C_Parent_Tile_2ID109 = {}
level02.colliders.C_Parent_Tile_2ID109.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID109.collider:SetOffset(273.5,37.3111,129.5)
level02.colliders.C_Parent_Tile_2ID109.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2ID109.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID109.collider)
level02.colliders.C_Parent_Tile_2ID110 = {}
level02.colliders.C_Parent_Tile_2ID110.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID110.collider:SetOffset(291.5,38.2023,98.5)
level02.colliders.C_Parent_Tile_2ID110.collider:SetZAxis(-0.654931,0,-0.755689)
level02.colliders.C_Parent_Tile_2ID110.collider:SetHalfLengths(0.3,6.33685,9.92472)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID110.collider)
level02.colliders.C_Parent_Tile_2ID111 = {}
level02.colliders.C_Parent_Tile_2ID111.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID111.collider:SetOffset(183.5,51.8438,240)
level02.colliders.C_Parent_Tile_2ID111.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID111.collider:SetHalfLengths(2.5,4,2.5)
level02.colliders.C_Parent_Tile_2ID101.collider:AddChild(level02.colliders.C_Parent_Tile_2ID111.collider)
level02.colliders.C_Parent_Tile_2ID112 = {}
level02.colliders.C_Parent_Tile_2ID112.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID112.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID112.collider:SetMinPos(147.701,29.1917,90.7879)
level02.colliders.C_Parent_Tile_2ID112.collider:SetMaxPos(384.073,67.2657,256.312)
level02.colliders.C_Parent_Tile_2ID.collider:AddChild(level02.colliders.C_Parent_Tile_2ID112.collider)
level02.colliders.C_Parent_Tile_2ID113 = {}
level02.colliders.C_Parent_Tile_2ID113.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID113.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID113.collider:SetMinPos(147.701,30.083,117.788)
level02.colliders.C_Parent_Tile_2ID113.collider:SetMaxPos(258.212,51.2525,233.03)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID113.collider)
level02.colliders.C_Parent_Tile_2ID114 = {}
level02.colliders.C_Parent_Tile_2ID114.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID114.collider:SetOffset(148.5,36.0856,228)
level02.colliders.C_Parent_Tile_2ID114.collider:SetZAxis(0.0995037,0,0.995037)
level02.colliders.C_Parent_Tile_2ID114.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID114.collider)
level02.colliders.C_Parent_Tile_2ID115 = {}
level02.colliders.C_Parent_Tile_2ID115.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID115.collider:SetOffset(177,41.433,212)
level02.colliders.C_Parent_Tile_2ID115.collider:SetZAxis(0.447214,0,-0.894427)
level02.colliders.C_Parent_Tile_2ID115.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID115.collider)
level02.colliders.C_Parent_Tile_2ID116 = {}
level02.colliders.C_Parent_Tile_2ID116.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID116.collider:SetOffset(180.5,41.6558,208.5)
level02.colliders.C_Parent_Tile_2ID116.collider:SetZAxis(0.857493,0,-0.514496)
level02.colliders.C_Parent_Tile_2ID116.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID116.collider)
level02.colliders.C_Parent_Tile_2ID117 = {}
level02.colliders.C_Parent_Tile_2ID117.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID117.collider:SetOffset(185.5,41.8786,206.5)
level02.colliders.C_Parent_Tile_2ID117.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_2ID117.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID117.collider)
level02.colliders.C_Parent_Tile_2ID118 = {}
level02.colliders.C_Parent_Tile_2ID118.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID118.collider:SetOffset(220.5,36.0856,175)
level02.colliders.C_Parent_Tile_2ID118.collider:SetZAxis(0.573462,0,-0.819232)
level02.colliders.C_Parent_Tile_2ID118.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID118.collider)
level02.colliders.C_Parent_Tile_2ID119 = {}
level02.colliders.C_Parent_Tile_2ID119.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID119.collider:SetOffset(228.5,36.6426,150.5)
level02.colliders.C_Parent_Tile_2ID119.collider:SetZAxis(0.948683,0,-0.316228)
level02.colliders.C_Parent_Tile_2ID119.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID119.collider)
level02.colliders.C_Parent_Tile_2ID120 = {}
level02.colliders.C_Parent_Tile_2ID120.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID120.collider:SetOffset(236.5,36.5312,145)
level02.colliders.C_Parent_Tile_2ID120.collider:SetZAxis(0.658505,0,-0.752577)
level02.colliders.C_Parent_Tile_2ID120.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID120.collider)
level02.colliders.C_Parent_Tile_2ID121 = {}
level02.colliders.C_Parent_Tile_2ID121.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID121.collider:SetOffset(238,37.3111,135)
level02.colliders.C_Parent_Tile_2ID121.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2ID121.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID121.collider)
level02.colliders.C_Parent_Tile_2ID122 = {}
level02.colliders.C_Parent_Tile_2ID122.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID122.collider:SetOffset(253,37.9795,123)
level02.colliders.C_Parent_Tile_2ID122.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2ID122.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID122.collider)
level02.colliders.C_Parent_Tile_2ID123 = {}
level02.colliders.C_Parent_Tile_2ID123.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID123.collider:SetOffset(176.796,45.2188,214.625)
level02.colliders.C_Parent_Tile_2ID123.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
level02.colliders.C_Parent_Tile_2ID123.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.colliders.C_Parent_Tile_2ID113.collider:AddChild(level02.colliders.C_Parent_Tile_2ID123.collider)
level02.colliders.C_Parent_Tile_2ID124 = {}
level02.colliders.C_Parent_Tile_2ID124.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID124.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID124.collider:SetMinPos(178.882,31.3084,127.701)
level02.colliders.C_Parent_Tile_2ID124.collider:SetMaxPos(299.049,66.1516,252.276)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID124.collider)
level02.colliders.C_Parent_Tile_2ID125 = {}
level02.colliders.C_Parent_Tile_2ID125.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID125.collider:SetOffset(182.5,47.1147,250.5)
level02.colliders.C_Parent_Tile_2ID125.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_2ID125.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID125.collider)
level02.colliders.C_Parent_Tile_2ID126 = {}
level02.colliders.C_Parent_Tile_2ID126.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID126.collider:SetOffset(189,50.5682,246.5)
level02.colliders.C_Parent_Tile_2ID126.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.C_Parent_Tile_2ID126.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID126.collider)
level02.colliders.C_Parent_Tile_2ID127 = {}
level02.colliders.C_Parent_Tile_2ID127.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID127.collider:SetOffset(194.5,51.4594,244)
level02.colliders.C_Parent_Tile_2ID127.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2ID127.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID127.collider)
level02.colliders.C_Parent_Tile_2ID128 = {}
level02.colliders.C_Parent_Tile_2ID128.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID128.collider:SetOffset(200.5,53.2419,244.5)
level02.colliders.C_Parent_Tile_2ID128.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2ID128.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID128.collider)
level02.colliders.C_Parent_Tile_2ID129 = {}
level02.colliders.C_Parent_Tile_2ID129.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID129.collider:SetOffset(207,55.2472,245.5)
level02.colliders.C_Parent_Tile_2ID129.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_2ID129.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID129.collider)
level02.colliders.C_Parent_Tile_2ID130 = {}
level02.colliders.C_Parent_Tile_2ID130.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID130.collider:SetOffset(220.5,56.3612,226)
level02.colliders.C_Parent_Tile_2ID130.collider:SetZAxis(-0.658505,0,-0.752577)
level02.colliders.C_Parent_Tile_2ID130.collider:SetHalfLengths(0.3,9.79039,5.31507)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID130.collider)
level02.colliders.C_Parent_Tile_2ID131 = {}
level02.colliders.C_Parent_Tile_2ID131.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID131.collider:SetOffset(212.5,51.5708,223.5)
level02.colliders.C_Parent_Tile_2ID131.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2ID131.collider:SetHalfLengths(0.3,5.89124,4.74342)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID131.collider)
level02.colliders.C_Parent_Tile_2ID132 = {}
level02.colliders.C_Parent_Tile_2ID132.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID132.collider:SetOffset(205,50.6796,226)
level02.colliders.C_Parent_Tile_2ID132.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2ID132.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID132.collider)
level02.colliders.C_Parent_Tile_2ID133 = {}
level02.colliders.C_Parent_Tile_2ID133.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID133.collider:SetOffset(281.5,37.5339,128.5)
level02.colliders.C_Parent_Tile_2ID133.collider:SetZAxis(0.995893,0,-0.0905357)
level02.colliders.C_Parent_Tile_2ID133.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID133.collider)
level02.colliders.C_Parent_Tile_2ID134 = {}
level02.colliders.C_Parent_Tile_2ID134.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID134.collider:SetOffset(293,37.1997,129)
level02.colliders.C_Parent_Tile_2ID134.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_2ID134.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.C_Parent_Tile_2ID124.collider:AddChild(level02.colliders.C_Parent_Tile_2ID134.collider)
level02.colliders.C_Parent_Tile_2ID135 = {}
level02.colliders.C_Parent_Tile_2ID135.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID135.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID135.collider:SetMinPos(209.889,30.3058,90.7879)
level02.colliders.C_Parent_Tile_2ID135.collider:SetMaxPos(322.234,65.2604,254.212)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID135.collider)
level02.colliders.C_Parent_Tile_2ID136 = {}
level02.colliders.C_Parent_Tile_2ID136.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID136.collider:SetOffset(312,42.6585,94)
level02.colliders.C_Parent_Tile_2ID136.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2ID136.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID136.collider)
level02.colliders.C_Parent_Tile_2ID137 = {}
level02.colliders.C_Parent_Tile_2ID137.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID137.collider:SetOffset(318,42.1015,102)
level02.colliders.C_Parent_Tile_2ID137.collider:SetZAxis(0.624695,0,0.780869)
level02.colliders.C_Parent_Tile_2ID137.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID137.collider)
level02.colliders.C_Parent_Tile_2ID138 = {}
level02.colliders.C_Parent_Tile_2ID138.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID138.collider:SetOffset(212.5,56.6954,247)
level02.colliders.C_Parent_Tile_2ID138.collider:SetZAxis(0.928477,0,0.371391)
level02.colliders.C_Parent_Tile_2ID138.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID138.collider)
level02.colliders.C_Parent_Tile_2ID139 = {}
level02.colliders.C_Parent_Tile_2ID139.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID139.collider:SetOffset(217.5,58.9235,249.5)
level02.colliders.C_Parent_Tile_2ID139.collider:SetZAxis(0.857493,0,0.514496)
level02.colliders.C_Parent_Tile_2ID139.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID139.collider)
level02.colliders.C_Parent_Tile_2ID140 = {}
level02.colliders.C_Parent_Tile_2ID140.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID140.collider:SetOffset(221.5,59.7034,252.5)
level02.colliders.C_Parent_Tile_2ID140.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2ID140.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID140.collider)
level02.colliders.C_Parent_Tile_2ID141 = {}
level02.colliders.C_Parent_Tile_2ID141.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID141.collider:SetOffset(234.5,57.1411,234.5)
level02.colliders.C_Parent_Tile_2ID141.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2ID141.collider:SetHalfLengths(0.3,5.66843,3.53553)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID141.collider)
level02.colliders.C_Parent_Tile_2ID142 = {}
level02.colliders.C_Parent_Tile_2ID142.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID142.collider:SetOffset(241,57.8095,233.5)
level02.colliders.C_Parent_Tile_2ID142.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.C_Parent_Tile_2ID142.collider:SetHalfLengths(0.3,5.22281,3.3541)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID142.collider)
level02.colliders.C_Parent_Tile_2ID143 = {}
level02.colliders.C_Parent_Tile_2ID143.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID143.collider:SetOffset(247.5,57.5867,231.5)
level02.colliders.C_Parent_Tile_2ID143.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.C_Parent_Tile_2ID143.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID143.collider)
level02.colliders.C_Parent_Tile_2ID144 = {}
level02.colliders.C_Parent_Tile_2ID144.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID144.collider:SetOffset(306,36.3084,132)
level02.colliders.C_Parent_Tile_2ID144.collider:SetZAxis(0.961524,0,0.274721)
level02.colliders.C_Parent_Tile_2ID144.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID144.collider)
level02.colliders.C_Parent_Tile_2ID145 = {}
level02.colliders.C_Parent_Tile_2ID145.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID145.collider:SetOffset(227.5,56.3612,232)
level02.colliders.C_Parent_Tile_2ID145.collider:SetZAxis(0.868243,0,0.496139)
level02.colliders.C_Parent_Tile_2ID145.collider:SetHalfLengths(0.3,5.77983,4.03113)
level02.colliders.C_Parent_Tile_2ID135.collider:AddChild(level02.colliders.C_Parent_Tile_2ID145.collider)
level02.colliders.C_Parent_Tile_2ID146 = {}
level02.colliders.C_Parent_Tile_2ID146.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID146.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID146.collider:SetMinPos(222.967,29.1917,106.78)
level02.colliders.C_Parent_Tile_2ID146.collider:SetMaxPos(350.246,65.8174,254.298)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID146.collider)
level02.colliders.C_Parent_Tile_2ID147 = {}
level02.colliders.C_Parent_Tile_2ID147.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID147.collider:SetOffset(329,37.4225,113.5)
level02.colliders.C_Parent_Tile_2ID147.collider:SetZAxis(0.732794,0,0.680451)
level02.colliders.C_Parent_Tile_2ID147.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID147.collider)
level02.colliders.C_Parent_Tile_2ID148 = {}
level02.colliders.C_Parent_Tile_2ID148.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID148.collider:SetOffset(343,37.0883,130)
level02.colliders.C_Parent_Tile_2ID148.collider:SetZAxis(0.573462,0,0.819232)
level02.colliders.C_Parent_Tile_2ID148.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID148.collider)
level02.colliders.C_Parent_Tile_2ID149 = {}
level02.colliders.C_Parent_Tile_2ID149.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID149.collider:SetOffset(227.5,60.2604,253.5)
level02.colliders.C_Parent_Tile_2ID149.collider:SetZAxis(0.993884,0,-0.110432)
level02.colliders.C_Parent_Tile_2ID149.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID149.collider)
level02.colliders.C_Parent_Tile_2ID150 = {}
level02.colliders.C_Parent_Tile_2ID150.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID150.collider:SetOffset(236.5,60.149,252)
level02.colliders.C_Parent_Tile_2ID150.collider:SetZAxis(0.976187,0,-0.21693)
level02.colliders.C_Parent_Tile_2ID150.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID150.collider)
level02.colliders.C_Parent_Tile_2ID151 = {}
level02.colliders.C_Parent_Tile_2ID151.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID151.collider:SetOffset(246.5,60.3718,250)
level02.colliders.C_Parent_Tile_2ID151.collider:SetZAxis(0.98387,0,-0.178885)
level02.colliders.C_Parent_Tile_2ID151.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID151.collider)
level02.colliders.C_Parent_Tile_2ID152 = {}
level02.colliders.C_Parent_Tile_2ID152.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID152.collider:SetOffset(259,57.8095,232)
level02.colliders.C_Parent_Tile_2ID152.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_2ID152.collider:SetHalfLengths(0.3,6.00264,8.06226)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID152.collider)
level02.colliders.C_Parent_Tile_2ID153 = {}
level02.colliders.C_Parent_Tile_2ID153.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID153.collider:SetOffset(277,56.8068,233.5)
level02.colliders.C_Parent_Tile_2ID153.collider:SetZAxis(0.998752,0,0.0499376)
level02.colliders.C_Parent_Tile_2ID153.collider:SetHalfLengths(0.3,5.77983,10.0125)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID153.collider)
level02.colliders.C_Parent_Tile_2ID154 = {}
level02.colliders.C_Parent_Tile_2ID154.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID154.collider:SetOffset(330,35.64,149.5)
level02.colliders.C_Parent_Tile_2ID154.collider:SetZAxis(-0.524097,0,-0.851658)
level02.colliders.C_Parent_Tile_2ID154.collider:SetHalfLengths(0.3,5.89124,7.63217)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID154.collider)
level02.colliders.C_Parent_Tile_2ID155 = {}
level02.colliders.C_Parent_Tile_2ID155.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID155.collider:SetOffset(319.5,34.7488,138.5)
level02.colliders.C_Parent_Tile_2ID155.collider:SetZAxis(-0.822192,0,-0.56921)
level02.colliders.C_Parent_Tile_2ID155.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID155.collider)
level02.colliders.C_Parent_Tile_2ID156 = {}
level02.colliders.C_Parent_Tile_2ID156.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID156.collider:SetOffset(328.75,41.0313,113.313)
level02.colliders.C_Parent_Tile_2ID156.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID156.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.colliders.C_Parent_Tile_2ID146.collider:AddChild(level02.colliders.C_Parent_Tile_2ID156.collider)
level02.colliders.C_Parent_Tile_2ID157 = {}
level02.colliders.C_Parent_Tile_2ID157.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID157.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID157.collider:SetMinPos(251.98,30.64,139.746)
level02.colliders.C_Parent_Tile_2ID157.collider:SetMaxPos(358.159,67.2657,252.3)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID157.collider)
level02.colliders.C_Parent_Tile_2ID158 = {}
level02.colliders.C_Parent_Tile_2ID158.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID158.collider:SetOffset(354,38.8707,142.5)
level02.colliders.C_Parent_Tile_2ID158.collider:SetZAxis(0.847998,0,0.529999)
level02.colliders.C_Parent_Tile_2ID158.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID158.collider)
level02.colliders.C_Parent_Tile_2ID159 = {}
level02.colliders.C_Parent_Tile_2ID159.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID159.collider:SetOffset(259.5,59.9262,249.5)
level02.colliders.C_Parent_Tile_2ID159.collider:SetZAxis(0.997785,0,0.066519)
level02.colliders.C_Parent_Tile_2ID159.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID159.collider)
level02.colliders.C_Parent_Tile_2ID160 = {}
level02.colliders.C_Parent_Tile_2ID160.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID160.collider:SetOffset(274,60.0376,251)
level02.colliders.C_Parent_Tile_2ID160.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_2ID160.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID160.collider)
level02.colliders.C_Parent_Tile_2ID161 = {}
level02.colliders.C_Parent_Tile_2ID161.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID161.collider:SetOffset(287.5,59.7034,252)
level02.colliders.C_Parent_Tile_2ID161.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2ID161.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID161.collider)
level02.colliders.C_Parent_Tile_2ID162 = {}
level02.colliders.C_Parent_Tile_2ID162.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID162.collider:SetOffset(295,56.027,232)
level02.colliders.C_Parent_Tile_2ID162.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_2ID162.collider:SetHalfLengths(0.3,11.2386,8.24621)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID162.collider)
level02.colliders.C_Parent_Tile_2ID163 = {}
level02.colliders.C_Parent_Tile_2ID163.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID163.collider:SetOffset(350,37.0883,173)
level02.colliders.C_Parent_Tile_2ID163.collider:SetZAxis(-0.514496,0,-0.857493)
level02.colliders.C_Parent_Tile_2ID163.collider:SetHalfLengths(0.3,5.89124,5.83095)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID163.collider)
level02.colliders.C_Parent_Tile_2ID164 = {}
level02.colliders.C_Parent_Tile_2ID164.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID164.collider:SetOffset(340.5,36.197,162)
level02.colliders.C_Parent_Tile_2ID164.collider:SetZAxis(-0.734803,0,-0.67828)
level02.colliders.C_Parent_Tile_2ID164.collider:SetHalfLengths(0.3,5.55702,8.8459)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID164.collider)
level02.colliders.C_Parent_Tile_2ID165 = {}
level02.colliders.C_Parent_Tile_2ID165.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID165.collider:SetOffset(339.5,40.3125,156.5)
level02.colliders.C_Parent_Tile_2ID165.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID165.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID165.collider)
level02.colliders.C_Parent_Tile_2ID166 = {}
level02.colliders.C_Parent_Tile_2ID166.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID166.collider:SetOffset(320,48.7857,232)
level02.colliders.C_Parent_Tile_2ID166.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_2ID166.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID166.collider)
level02.colliders.C_Parent_Tile_2ID167 = {}
level02.colliders.C_Parent_Tile_2ID167.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID167.collider:SetOffset(305.5,51.2366,233.5)
level02.colliders.C_Parent_Tile_2ID167.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_2ID167.collider:SetHalfLengths(0.3,6.00264,3.53553)
level02.colliders.C_Parent_Tile_2ID157.collider:AddChild(level02.colliders.C_Parent_Tile_2ID167.collider)
level02.colliders.C_Parent_Tile_2ID168 = {}
level02.colliders.C_Parent_Tile_2ID168.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID168.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID168.collider:SetMinPos(293.927,32.0883,144.706)
level02.colliders.C_Parent_Tile_2ID168.collider:SetMaxPos(376,67.0429,256.312)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID168.collider)
level02.colliders.C_Parent_Tile_2ID169 = {}
level02.colliders.C_Parent_Tile_2ID169.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID169.collider:SetOffset(363,38.6479,146)
level02.colliders.C_Parent_Tile_2ID169.collider:SetZAxis(0.980581,0,0.196116)
level02.colliders.C_Parent_Tile_2ID169.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID169.collider)
level02.colliders.C_Parent_Tile_2ID170 = {}
level02.colliders.C_Parent_Tile_2ID170.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID170.collider:SetOffset(372,38.3137,147)
level02.colliders.C_Parent_Tile_2ID170.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2ID170.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID170.collider)
level02.colliders.C_Parent_Tile_2ID171 = {}
level02.colliders.C_Parent_Tile_2ID171.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID171.collider:SetOffset(296,58.5893,252.5)
level02.colliders.C_Parent_Tile_2ID171.collider:SetZAxis(0.970143,0,0.242536)
level02.colliders.C_Parent_Tile_2ID171.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID171.collider)
level02.colliders.C_Parent_Tile_2ID172 = {}
level02.colliders.C_Parent_Tile_2ID172.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID172.collider:SetOffset(299,55.1358,254)
level02.colliders.C_Parent_Tile_2ID172.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_2ID172.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID172.collider)
level02.colliders.C_Parent_Tile_2ID173 = {}
level02.colliders.C_Parent_Tile_2ID173.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID173.collider:SetOffset(307,55.2472,255)
level02.colliders.C_Parent_Tile_2ID173.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2ID173.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID173.collider)
level02.colliders.C_Parent_Tile_2ID174 = {}
level02.colliders.C_Parent_Tile_2ID174.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID174.collider:SetOffset(339,48.1173,215.5)
level02.colliders.C_Parent_Tile_2ID174.collider:SetZAxis(0.682318,0,-0.731055)
level02.colliders.C_Parent_Tile_2ID174.collider:SetHalfLengths(0.3,12.0185,10.2591)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID174.collider)
level02.colliders.C_Parent_Tile_2ID175 = {}
level02.colliders.C_Parent_Tile_2ID175.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID175.collider:SetOffset(350,39.4277,194)
level02.colliders.C_Parent_Tile_2ID175.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2ID175.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID175.collider)
level02.colliders.C_Parent_Tile_2ID176 = {}
level02.colliders.C_Parent_Tile_2ID176.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID176.collider:SetOffset(351.5,38.3137,183.5)
level02.colliders.C_Parent_Tile_2ID176.collider:SetZAxis(0.263117,0,-0.964764)
level02.colliders.C_Parent_Tile_2ID176.collider:SetHalfLengths(0.3,6.22545,5.70088)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID176.collider)
level02.colliders.C_Parent_Tile_2ID177 = {}
level02.colliders.C_Parent_Tile_2ID177.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID177.collider:SetOffset(323.5,51.6822,242)
level02.colliders.C_Parent_Tile_2ID177.collider:SetZAxis(0.944497,0,-0.328521)
level02.colliders.C_Parent_Tile_2ID177.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID177.collider)
level02.colliders.C_Parent_Tile_2ID178 = {}
level02.colliders.C_Parent_Tile_2ID178.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID178.collider:SetOffset(305.672,57.5464,253.254)
level02.colliders.C_Parent_Tile_2ID178.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID178.collider:SetHalfLengths(3.31612,6.90839,3.05737)
level02.colliders.C_Parent_Tile_2ID168.collider:AddChild(level02.colliders.C_Parent_Tile_2ID178.collider)
level02.colliders.C_Parent_Tile_2ID179 = {}
level02.colliders.C_Parent_Tile_2ID179.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID179.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID179.collider:SetMinPos(312.709,31.0856,146.7)
level02.colliders.C_Parent_Tile_2ID179.collider:SetMaxPos(384.073,58.4647,255)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID179.collider)
level02.colliders.C_Parent_Tile_2ID180 = {}
level02.colliders.C_Parent_Tile_2ID180.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID180.collider:SetOffset(380,37.1997,147)
level02.colliders.C_Parent_Tile_2ID180.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_2ID180.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID180.collider)
level02.colliders.C_Parent_Tile_2ID181 = {}
level02.colliders.C_Parent_Tile_2ID181.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID181.collider:SetOffset(314,51.2366,252.5)
level02.colliders.C_Parent_Tile_2ID181.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2ID181.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID181.collider)
level02.colliders.C_Parent_Tile_2ID182 = {}
level02.colliders.C_Parent_Tile_2ID182.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID182.collider:SetOffset(313.5,50.5682,248)
level02.colliders.C_Parent_Tile_2ID182.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_2ID182.collider:SetHalfLengths(0.3,5.44562,2.06155)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID182.collider)
level02.colliders.C_Parent_Tile_2ID183 = {}
level02.colliders.C_Parent_Tile_2ID183.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID183.collider:SetOffset(373.5,46.4462,189)
level02.colliders.C_Parent_Tile_2ID183.collider:SetZAxis(-0.0333148,0,-0.999445)
level02.colliders.C_Parent_Tile_2ID183.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID183.collider)
level02.colliders.C_Parent_Tile_2ID184 = {}
level02.colliders.C_Parent_Tile_2ID184.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID184.collider:SetOffset(374,39.4277,170.5)
level02.colliders.C_Parent_Tile_2ID184.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.C_Parent_Tile_2ID184.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID184.collider)
level02.colliders.C_Parent_Tile_2ID185 = {}
level02.colliders.C_Parent_Tile_2ID185.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID185.collider:SetOffset(377.5,39.9848,162.5)
level02.colliders.C_Parent_Tile_2ID185.collider:SetZAxis(0.485643,0,-0.874157)
level02.colliders.C_Parent_Tile_2ID185.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID185.collider)
level02.colliders.C_Parent_Tile_2ID186 = {}
level02.colliders.C_Parent_Tile_2ID186.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID186.collider:SetOffset(382,37.0883,157.5)
level02.colliders.C_Parent_Tile_2ID186.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_2ID186.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID186.collider)
level02.colliders.C_Parent_Tile_2ID187 = {}
level02.colliders.C_Parent_Tile_2ID187.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID187.collider:SetOffset(348,41.0988,203.5)
level02.colliders.C_Parent_Tile_2ID187.collider:SetZAxis(0.406139,0,-0.913812)
level02.colliders.C_Parent_Tile_2ID187.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID187.collider)
level02.colliders.C_Parent_Tile_2ID188 = {}
level02.colliders.C_Parent_Tile_2ID188.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID188.collider:SetOffset(332,48.7857,225.5)
level02.colliders.C_Parent_Tile_2ID188.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_2ID188.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID188.collider)
level02.colliders.C_Parent_Tile_2ID189 = {}
level02.colliders.C_Parent_Tile_2ID189.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID189.collider:SetOffset(346.368,41.1634,203.707)
level02.colliders.C_Parent_Tile_2ID189.collider:SetZAxis(-0.107927,0,-0.994159)
level02.colliders.C_Parent_Tile_2ID189.collider:SetHalfLengths(2.47509,7.09833,2.50959)
level02.colliders.C_Parent_Tile_2ID179.collider:AddChild(level02.colliders.C_Parent_Tile_2ID189.collider)
level02.colliders.C_Parent_Tile_2ID190 = {}
level02.colliders.C_Parent_Tile_2ID190.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID190.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_2ID190.collider:SetMinPos(334.709,37.5997,183.418)
level02.colliders.C_Parent_Tile_2ID190.collider:SetMaxPos(374.276,65.4832,255.171)
level02.colliders.C_Parent_Tile_2ID112.collider:AddChild(level02.colliders.C_Parent_Tile_2ID190.collider)
level02.colliders.C_Parent_Tile_2ID191 = {}
level02.colliders.C_Parent_Tile_2ID191.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID191.collider:SetOffset(340.5,55.47,248.5)
level02.colliders.C_Parent_Tile_2ID191.collider:SetZAxis(-0.56921,0,-0.822192)
level02.colliders.C_Parent_Tile_2ID191.collider:SetHalfLengths(0.3,9.12196,7.90569)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID191.collider)
level02.colliders.C_Parent_Tile_2ID192 = {}
level02.colliders.C_Parent_Tile_2ID192.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID192.collider:SetOffset(346.5,55.47,250.5)
level02.colliders.C_Parent_Tile_2ID192.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_2ID192.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID192.collider)
level02.colliders.C_Parent_Tile_2ID193 = {}
level02.colliders.C_Parent_Tile_2ID193.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID193.collider:SetOffset(353,57.0297,240.5)
level02.colliders.C_Parent_Tile_2ID193.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.C_Parent_Tile_2ID193.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID193.collider)
level02.colliders.C_Parent_Tile_2ID194 = {}
level02.colliders.C_Parent_Tile_2ID194.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID194.collider:SetOffset(363,53.5761,226.5)
level02.colliders.C_Parent_Tile_2ID194.collider:SetZAxis(0.50702,0,-0.861934)
level02.colliders.C_Parent_Tile_2ID194.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID194.collider)
level02.colliders.C_Parent_Tile_2ID195 = {}
level02.colliders.C_Parent_Tile_2ID195.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID195.collider:SetOffset(371,48.8971,211)
level02.colliders.C_Parent_Tile_2ID195.collider:SetZAxis(0.393919,0,-0.919145)
level02.colliders.C_Parent_Tile_2ID195.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID195.collider)
level02.colliders.C_Parent_Tile_2ID196 = {}
level02.colliders.C_Parent_Tile_2ID196.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID196.collider:SetOffset(370.079,42.4331,185.415)
level02.colliders.C_Parent_Tile_2ID196.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID196.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID196.collider)
level02.colliders.C_Parent_Tile_2ID197 = {}
level02.colliders.C_Parent_Tile_2ID197.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID197.collider:SetOffset(365.671,47.676,214.229)
level02.colliders.C_Parent_Tile_2ID197.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID197.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID197.collider)
level02.colliders.C_Parent_Tile_2ID198 = {}
level02.colliders.C_Parent_Tile_2ID198.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID198.collider:SetOffset(354.858,50.9688,226.742)
level02.colliders.C_Parent_Tile_2ID198.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID198.collider:SetHalfLengths(1.75,4,1.75)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID198.collider)
level02.colliders.C_Parent_Tile_2ID199 = {}
level02.colliders.C_Parent_Tile_2ID199.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID199.collider:SetOffset(347.526,56,240.375)
level02.colliders.C_Parent_Tile_2ID199.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_2ID199.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID199.collider)
level02.colliders.C_Parent_Tile_2ID200 = {}
level02.colliders.C_Parent_Tile_2ID200.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_2ID200.collider:SetOffset(335.5,50.791,240)
level02.colliders.C_Parent_Tile_2ID200.collider:SetZAxis(0.242536,0,0.970143)
level02.colliders.C_Parent_Tile_2ID200.collider:SetHalfLengths(0.3,5.55702,2.06155)
level02.colliders.C_Parent_Tile_2ID190.collider:AddChild(level02.colliders.C_Parent_Tile_2ID200.collider)
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
level02.colliders.C_Parent_Tile_2ID197 = nil
level02.colliders.C_Parent_Tile_2ID198 = nil
level02.colliders.C_Parent_Tile_2ID199 = nil
level02.colliders.C_Parent_Tile_2ID200 = nil
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
level02.colliders.Tile2_wallNr43ID = nil
level02.colliders.Tile2_wallNr44ID = nil
level02.colliders.Tile2_wallNr45ID = nil
level02.colliders.Tile2_wallNr46ID = nil
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
level02.colliders.Tile2_wallNr64ID = nil
level02.colliders.Tile2_wallNr65ID = nil
level02.colliders.Tile2_wallNr87ID = nil
level02.colliders.Tile2_wallNr88ID = nil
level02.colliders.Tile2_wallNr89ID = nil
level02.colliders.Tile2_wallNr90ID = nil
level02.colliders.Tile2_wallNr91ID = nil
level02.colliders.Tile2_wallNr92ID = nil
level02.colliders.Tile2_wallNr94ID = nil
level02.colliders.Tile2_wallNr95ID = nil
level02.colliders.Tile2_wallNr96ID = nil
level02.colliders.Tile2_wallNr97ID = nil
level02.colliders.Tile2_wallNr98ID = nil
level02.colliders.Tile2_wallNr99ID = nil
level02.colliders.Tile2_wallNr100ID = nil
level02.colliders.Tile2_wallNr101ID = nil
level02.colliders.Tile2_wallNr102ID = nil
level02.colliders.Tile2_wallNr66ID = nil
level02.colliders.Tile2_wallNr67ID = nil
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
level02.colliders.Tile2_wallNr110ID = nil
level02.colliders.Tile2_wallNr111ID = nil
level02.colliders.Tile2_wallNr112ID = nil
level02.colliders.Tile2_wallNr113ID = nil
level02.colliders.Tile2_wallNr114ID = nil
level02.colliders.Tile2_wallNr115ID = nil
level02.colliders.Tile2_wallNr116ID = nil
level02.colliders.Tile2_wallNr117ID = nil
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
level02.colliders.Tile2_wallNr128ID = nil
level02.colliders.Tile2_wallNr129ID = nil
level02.colliders.Tile2_wallNr130ID = nil
level02.colliders.Tile2_wallNr131ID = nil
level02.colliders.Tile2_wallNr132ID = nil
level02.colliders.Tile2_wallNr133ID = nil
level02.colliders.Tile2_wallNr134ID = nil
level02.colliders.Tile2_wallNr135ID = nil
level02.colliders.Tile2_wallNr136ID = nil
level02.colliders.Tile2_wallNr137ID = nil
level02.colliders.Tile2_wallNr138ID = nil
level02.colliders.Tile2_wallNr139ID = nil
level02.colliders.Tile2_wallNr140ID = nil
level02.colliders.Tile2_wallNr141ID = nil
level02.colliders.Tile2_wallNr142ID = nil
level02.colliders.Tile2_wallNr143ID = nil
level02.colliders.Tile2_wallNr144ID = nil
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
level02.colliders.Tile2_wallNr164ID = nil
Gear.UnbindInstance(level02.props.PineTree_ColliderID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_ColliderID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider1ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1ID = nil
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
level02.colliders.Tile2_wallNr162ID = nil
level02.colliders.Tile2_wallNr163ID = nil
level02.colliders.Tile2_wallNr165ID = nil
level02.colliders.Tile2_wallNr93ID = nil
level02.colliders.Tile2_wallNr166ID = nil
Gear.UnbindInstance(level02.props.WaterID.transformID)
Assets.UnloadModel('Models/lake.model')
level02.props.WaterID = nil
Gear.UnbindInstance(level02.props.House1ID.transformID)
Assets.UnloadModel('Models/House1.model')
level02.props.House1ID = nil
Gear.UnbindInstance(level02.props.Lantern4ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern4ID = nil
Gear.UnbindInstance(level02.props.Lantern7ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern7ID = nil
Gear.UnbindInstance(level02.props.Lantern8ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern8ID = nil
Gear.UnbindInstance(level02.props.Lantern9ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern9ID = nil
Gear.UnbindInstance(level02.props.Lantern10ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern10ID = nil
Gear.UnbindInstance(level02.props.Lantern11ID.transformID)
Assets.UnloadModel('Models/Lantern_Post.model')
level02.props.Lantern11ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider3ID.transformID)
Assets.UnloadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider47ID.transformID)
Assets.UnloadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47ID = nil
Gear.UnbindInstance(level02.props.WoodenFenceID.transformID)
Assets.UnloadModel('Models/Wooden_Fence.model')
level02.props.WoodenFenceID = nil
Gear.UnbindInstance(level02.props.WoodenFence1ID.transformID)
Assets.UnloadModel('Models/Wooden_Fence.model')
level02.props.WoodenFence1ID = nil
level02.triggers.slussTriggerID = nil
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
level03.props.t2s10ID = {}
level03.props.t2s10ID.model = Assets.LoadModel('Models/tile2_s10.model')
level03.props.t2s10ID.transformID = Gear.BindStaticInstance(level03.props.t2s10ID.model)
Transform.SetPosition(level03.props.t2s10ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t2s10ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t2s10ID.transformID, {x=0, y=0, z=0})
level03.props.t2s11aID = {}
level03.props.t2s11aID.model = Assets.LoadModel('Models/tile2_s11a.model')
level03.props.t2s11aID.transformID = Gear.BindStaticInstance(level03.props.t2s11aID.model)
Transform.SetPosition(level03.props.t2s11aID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t2s11aID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t2s11aID.transformID, {x=0, y=0, z=0})
level03.props.t3s1ID = {}
level03.props.t3s1ID.model = Assets.LoadModel('Models/tile3_s1.model')
level03.props.t3s1ID.transformID = Gear.BindStaticInstance(level03.props.t3s1ID.model)
Transform.SetPosition(level03.props.t3s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s1ID.transformID, {x=0, y=0, z=0})
level03.props.tile3ID = {}
level03.props.t3s2ID = {}
level03.props.t3s2ID.model = Assets.LoadModel('Models/tile3_s2.model')
level03.props.t3s2ID.transformID = Gear.BindStaticInstance(level03.props.t3s2ID.model)
Transform.SetPosition(level03.props.t3s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s2ID.transformID, {x=0, y=0, z=0})
level03.props.t3s3ID = {}
level03.props.t3s3ID.model = Assets.LoadModel('Models/tile3_s3.model')
level03.props.t3s3ID.transformID = Gear.BindStaticInstance(level03.props.t3s3ID.model)
Transform.SetPosition(level03.props.t3s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s3ID.transformID, {x=0, y=0, z=0})
level03.props.t3s4ID = {}
level03.props.t3s4ID.model = Assets.LoadModel('Models/tile3_s4.model')
level03.props.t3s4ID.transformID = Gear.BindStaticInstance(level03.props.t3s4ID.model)
Transform.SetPosition(level03.props.t3s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level03.props.t3s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level03.props.t3s4ID.transformID, {x=0, y=0, z=0})
level03.colliders.C_Parent_Tile_3ID = {}
level03.colliders.C_Parent_Tile_3ID.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID.collider:SetMinPos(383.7,30.1951,127.711)
level03.colliders.C_Parent_Tile_3ID.collider:SetMaxPos(512.3,57.3098,255.172)
level03.colliders.C_Parent_Tile_3ID.collider:SetPos(0,0,0)
level03.colliders.C_Parent_Tile_3ID1 = {}
level03.colliders.C_Parent_Tile_3ID1.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID1.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID1.collider:SetMinPos(383.7,30.1951,127.741)
level03.colliders.C_Parent_Tile_3ID1.collider:SetMaxPos(434.151,41.7798,172.134)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID1.collider)
level03.colliders.C_Parent_Tile_3ID2 = {}
level03.colliders.C_Parent_Tile_3ID2.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID2.collider:SetOffset(388.5,36.4629,157)
level03.colliders.C_Parent_Tile_3ID2.collider:SetZAxis(1,0,0)
level03.colliders.C_Parent_Tile_3ID2.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID2.collider)
level03.colliders.C_Parent_Tile_3ID3 = {}
level03.colliders.C_Parent_Tile_3ID3.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID3.collider:SetOffset(398,36.3044,158)
level03.colliders.C_Parent_Tile_3ID3.collider:SetZAxis(0.980581,0,0.196116)
level03.colliders.C_Parent_Tile_3ID3.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID3.collider)
level03.colliders.C_Parent_Tile_3ID4 = {}
level03.colliders.C_Parent_Tile_3ID4.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID4.collider:SetOffset(404,36.146,160)
level03.colliders.C_Parent_Tile_3ID4.collider:SetZAxis(0.707107,0,0.707107)
level03.colliders.C_Parent_Tile_3ID4.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID4.collider)
level03.colliders.C_Parent_Tile_3ID5 = {}
level03.colliders.C_Parent_Tile_3ID5.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID5.collider:SetOffset(406,36.3044,162.5)
level03.colliders.C_Parent_Tile_3ID5.collider:SetZAxis(0.5547,0,0.83205)
level03.colliders.C_Parent_Tile_3ID5.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID5.collider)
level03.colliders.C_Parent_Tile_3ID6 = {}
level03.colliders.C_Parent_Tile_3ID6.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID6.collider:SetOffset(409,36.4629,168)
level03.colliders.C_Parent_Tile_3ID6.collider:SetZAxis(0.447214,0,0.894427)
level03.colliders.C_Parent_Tile_3ID6.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID6.collider)
level03.colliders.C_Parent_Tile_3ID7 = {}
level03.colliders.C_Parent_Tile_3ID7.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID7.collider:SetOffset(428,35.829,131.5)
level03.colliders.C_Parent_Tile_3ID7.collider:SetZAxis(-0.863779,0,0.503871)
level03.colliders.C_Parent_Tile_3ID7.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID7.collider)
level03.colliders.C_Parent_Tile_3ID8 = {}
level03.colliders.C_Parent_Tile_3ID8.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID8.collider:SetOffset(412.5,35.5121,139.5)
level03.colliders.C_Parent_Tile_3ID8.collider:SetZAxis(-0.903738,0,0.428086)
level03.colliders.C_Parent_Tile_3ID8.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID8.collider)
level03.colliders.C_Parent_Tile_3ID9 = {}
level03.colliders.C_Parent_Tile_3ID9.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID9.collider:SetOffset(401.5,35.3536,144.5)
level03.colliders.C_Parent_Tile_3ID9.collider:SetZAxis(-0.948683,0,0.316228)
level03.colliders.C_Parent_Tile_3ID9.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID9.collider)
level03.colliders.C_Parent_Tile_3ID10 = {}
level03.colliders.C_Parent_Tile_3ID10.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID10.collider:SetOffset(392,35.3536,145)
level03.colliders.C_Parent_Tile_3ID10.collider:SetZAxis(-1,0,0)
level03.colliders.C_Parent_Tile_3ID10.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID10.collider)
level03.colliders.C_Parent_Tile_3ID11 = {}
level03.colliders.C_Parent_Tile_3ID11.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID11.collider:SetOffset(384,35.1951,146)
level03.colliders.C_Parent_Tile_3ID11.collider:SetZAxis(0,0,1)
level03.colliders.C_Parent_Tile_3ID11.collider:SetHalfLengths(0.3,5,1)
level03.colliders.C_Parent_Tile_3ID1.collider:AddChild(level03.colliders.C_Parent_Tile_3ID11.collider)
level03.colliders.C_Parent_Tile_3ID12 = {}
level03.colliders.C_Parent_Tile_3ID12.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID12.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID12.collider:SetMinPos(410.719,30.829,127.711)
level03.colliders.C_Parent_Tile_3ID12.collider:SetMaxPos(475.148,57.3098,255.172)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID12.collider)
level03.colliders.C_Parent_Tile_3ID13 = {}
level03.colliders.C_Parent_Tile_3ID13.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID13.collider:SetOffset(412.5,36.7798,176)
level03.colliders.C_Parent_Tile_3ID13.collider:SetZAxis(0.351123,0,0.936329)
level03.colliders.C_Parent_Tile_3ID13.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID13.collider)
level03.colliders.C_Parent_Tile_3ID14 = {}
level03.colliders.C_Parent_Tile_3ID14.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID14.collider:SetOffset(415.5,37.5722,185)
level03.colliders.C_Parent_Tile_3ID14.collider:SetZAxis(0.287348,0,0.957826)
level03.colliders.C_Parent_Tile_3ID14.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID14.collider)
level03.colliders.C_Parent_Tile_3ID15 = {}
level03.colliders.C_Parent_Tile_3ID15.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID15.collider:SetOffset(418,38.2061,195.5)
level03.colliders.C_Parent_Tile_3ID15.collider:SetZAxis(0.178885,0,0.98387)
level03.colliders.C_Parent_Tile_3ID15.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID15.collider)
level03.colliders.C_Parent_Tile_3ID16 = {}
level03.colliders.C_Parent_Tile_3ID16.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID16.collider:SetOffset(419.5,40.2662,208.5)
level03.colliders.C_Parent_Tile_3ID16.collider:SetZAxis(0.066519,0,0.997785)
level03.colliders.C_Parent_Tile_3ID16.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID16.collider)
level03.colliders.C_Parent_Tile_3ID17 = {}
level03.colliders.C_Parent_Tile_3ID17.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID17.collider:SetOffset(418.5,44.5448,223.5)
level03.colliders.C_Parent_Tile_3ID17.collider:SetZAxis(-0.196116,0,0.980581)
level03.colliders.C_Parent_Tile_3ID17.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID17.collider)
level03.colliders.C_Parent_Tile_3ID18 = {}
level03.colliders.C_Parent_Tile_3ID18.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID18.collider:SetOffset(416,48.3481,235)
level03.colliders.C_Parent_Tile_3ID18.collider:SetZAxis(-0.242536,0,0.970143)
level03.colliders.C_Parent_Tile_3ID18.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID18.collider)
level03.colliders.C_Parent_Tile_3ID19 = {}
level03.colliders.C_Parent_Tile_3ID19.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID19.collider:SetOffset(422,50.7251,242)
level03.colliders.C_Parent_Tile_3ID19.collider:SetZAxis(0.919145,0,0.393919)
level03.colliders.C_Parent_Tile_3ID19.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID19.collider)
level03.colliders.C_Parent_Tile_3ID20 = {}
level03.colliders.C_Parent_Tile_3ID20.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID20.collider:SetOffset(432.5,51.5175,250)
level03.colliders.C_Parent_Tile_3ID20.collider:SetZAxis(0.573462,0,0.819232)
level03.colliders.C_Parent_Tile_3ID20.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID20.collider)
level03.colliders.C_Parent_Tile_3ID21 = {}
level03.colliders.C_Parent_Tile_3ID21.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID21.collider:SetOffset(463.5,38.2061,139.5)
level03.colliders.C_Parent_Tile_3ID21.collider:SetZAxis(-0.870563,0,-0.492057)
level03.colliders.C_Parent_Tile_3ID21.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID21.collider)
level03.colliders.C_Parent_Tile_3ID22 = {}
level03.colliders.C_Parent_Tile_3ID22.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID22.collider:SetOffset(443,36.7798,130.5)
level03.colliders.C_Parent_Tile_3ID22.collider:SetZAxis(-0.963518,0,-0.267644)
level03.colliders.C_Parent_Tile_3ID22.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.C_Parent_Tile_3ID12.collider:AddChild(level03.colliders.C_Parent_Tile_3ID22.collider)
level03.colliders.C_Parent_Tile_3ID23 = {}
level03.colliders.C_Parent_Tile_3ID23.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID23.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_3ID23.collider:SetMinPos(474.755,33.2061,145.827)
level03.colliders.C_Parent_Tile_3ID23.collider:SetMaxPos(512.3,47.6432,255.011)
level03.colliders.C_Parent_Tile_3ID.collider:AddChild(level03.colliders.C_Parent_Tile_3ID23.collider)
level03.colliders.C_Parent_Tile_3ID24 = {}
level03.colliders.C_Parent_Tile_3ID24.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID24.collider:SetOffset(511.5,41.5339,241.5)
level03.colliders.C_Parent_Tile_3ID24.collider:SetZAxis(-0.0370117,0,-0.999315)
level03.colliders.C_Parent_Tile_3ID24.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID24.collider)
level03.colliders.C_Parent_Tile_3ID25 = {}
level03.colliders.C_Parent_Tile_3ID25.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID25.collider:SetOffset(510,41.8508,221)
level03.colliders.C_Parent_Tile_3ID25.collider:SetZAxis(-0.141421,0,-0.98995)
level03.colliders.C_Parent_Tile_3ID25.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID25.collider)
level03.colliders.C_Parent_Tile_3ID26 = {}
level03.colliders.C_Parent_Tile_3ID26.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID26.collider:SetOffset(506.5,42.1678,206.5)
level03.colliders.C_Parent_Tile_3ID26.collider:SetZAxis(-0.316228,0,-0.948683)
level03.colliders.C_Parent_Tile_3ID26.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID26.collider)
level03.colliders.C_Parent_Tile_3ID27 = {}
level03.colliders.C_Parent_Tile_3ID27.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID27.collider:SetOffset(500.5,41.8508,190)
level03.colliders.C_Parent_Tile_3ID27.collider:SetZAxis(-0.362446,0,-0.932005)
level03.colliders.C_Parent_Tile_3ID27.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID27.collider)
level03.colliders.C_Parent_Tile_3ID28 = {}
level03.colliders.C_Parent_Tile_3ID28.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID28.collider:SetOffset(492,41.217,172)
level03.colliders.C_Parent_Tile_3ID28.collider:SetZAxis(-0.485643,0,-0.874157)
level03.colliders.C_Parent_Tile_3ID28.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID28.collider)
level03.colliders.C_Parent_Tile_3ID29 = {}
level03.colliders.C_Parent_Tile_3ID29.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_3ID29.collider:SetOffset(481,39.7907,154.5)
level03.colliders.C_Parent_Tile_3ID29.collider:SetZAxis(-0.576683,0,-0.816968)
level03.colliders.C_Parent_Tile_3ID29.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.C_Parent_Tile_3ID23.collider:AddChild(level03.colliders.C_Parent_Tile_3ID29.collider)
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
level03.colliders.C_Parent_Tile_31ID = nil
level03.colliders.C_Parent_Tile_32ID = nil
level03.colliders.C_Parent_Tile_33ID = nil
level03.colliders.C_Parent_Tile_3ID = nil
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
level04.props.tile4ID = {}
level04.props.t4s1ID = {}
level04.props.t4s1ID.model = Assets.LoadModel('Models/tile4_s1.model')
level04.props.t4s1ID.transformID = Gear.BindStaticInstance(level04.props.t4s1ID.model)
Transform.SetPosition(level04.props.t4s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s1ID.transformID, {x=0, y=0, z=0})
level04.props.t4s2ID = {}
level04.props.t4s2ID.model = Assets.LoadModel('Models/tile4_s2.model')
level04.props.t4s2ID.transformID = Gear.BindStaticInstance(level04.props.t4s2ID.model)
Transform.SetPosition(level04.props.t4s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s2ID.transformID, {x=0, y=0, z=0})
level04.props.t4s3ID = {}
level04.props.t4s3ID.model = Assets.LoadModel('Models/tile4_s3.model')
level04.props.t4s3ID.transformID = Gear.BindStaticInstance(level04.props.t4s3ID.model)
Transform.SetPosition(level04.props.t4s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s3ID.transformID, {x=0, y=0, z=0})
level04.props.t4s4ID = {}
level04.props.t4s4ID.model = Assets.LoadModel('Models/tile4_s4.model')
level04.props.t4s4ID.transformID = Gear.BindStaticInstance(level04.props.t4s4ID.model)
Transform.SetPosition(level04.props.t4s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level04.props.t4s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level04.props.t4s4ID.transformID, {x=0, y=0, z=0})
level04.props.New1ID = {}
Light.addLight(495.343, 43.5625, 415.697, 0, 1, 1, 100,3)
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
level04.colliders.C_Parent_Tile_4ID2.collider:SetZAxis(0.178885,0,0.98387)
level04.colliders.C_Parent_Tile_4ID2.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID2.collider)
level04.colliders.C_Parent_Tile_4ID3 = {}
level04.colliders.C_Parent_Tile_4ID3.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID3.collider:SetOffset(467.5,40.2329,291.5)
level04.colliders.C_Parent_Tile_4ID3.collider:SetZAxis(-0.613941,0,0.789352)
level04.colliders.C_Parent_Tile_4ID3.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID3.collider)
level04.colliders.C_Parent_Tile_4ID4 = {}
level04.colliders.C_Parent_Tile_4ID4.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID4.collider:SetOffset(466,50.5642,306)
level04.colliders.C_Parent_Tile_4ID4.collider:SetZAxis(0.196116,0,0.980581)
level04.colliders.C_Parent_Tile_4ID4.collider:SetHalfLengths(0.3,5.68119,10.198)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID4.collider)
level04.colliders.C_Parent_Tile_4ID5 = {}
level04.colliders.C_Parent_Tile_4ID5.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID5.collider:SetOffset(468.5,51.2454,325.5)
level04.colliders.C_Parent_Tile_4ID5.collider:SetZAxis(0.0525588,0,0.998618)
level04.colliders.C_Parent_Tile_4ID5.collider:SetHalfLengths(0.3,8.29239,9.51315)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID5.collider)
level04.colliders.C_Parent_Tile_4ID6 = {}
level04.colliders.C_Parent_Tile_4ID6.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID6.collider:SetOffset(435,52.8348,263)
level04.colliders.C_Parent_Tile_4ID6.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_4ID6.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID6.collider)
level04.colliders.C_Parent_Tile_4ID7 = {}
level04.colliders.C_Parent_Tile_4ID7.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID7.collider:SetOffset(436,53.9701,283.5)
level04.colliders.C_Parent_Tile_4ID7.collider:SetZAxis(0.0738717,0,0.997268)
level04.colliders.C_Parent_Tile_4ID7.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID7.collider)
level04.colliders.C_Parent_Tile_4ID8 = {}
level04.colliders.C_Parent_Tile_4ID8.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID8.collider:SetOffset(439,55.7866,309.5)
level04.colliders.C_Parent_Tile_4ID8.collider:SetZAxis(0.157991,0,0.987441)
level04.colliders.C_Parent_Tile_4ID8.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID8.collider)
level04.colliders.C_Parent_Tile_4ID9 = {}
level04.colliders.C_Parent_Tile_4ID9.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID9.collider:SetOffset(442.5,56.1272,328.5)
level04.colliders.C_Parent_Tile_4ID9.collider:SetZAxis(0.22486,0,0.974391)
level04.colliders.C_Parent_Tile_4ID9.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID9.collider)
level04.colliders.C_Parent_Tile_4ID10 = {}
level04.colliders.C_Parent_Tile_4ID10.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID10.collider:SetOffset(447,57.2625,342.5)
level04.colliders.C_Parent_Tile_4ID10.collider:SetZAxis(0.371391,0,0.928477)
level04.colliders.C_Parent_Tile_4ID10.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.C_Parent_Tile_4ID1.collider:AddChild(level04.colliders.C_Parent_Tile_4ID10.collider)
level04.colliders.C_Parent_Tile_4ID11 = {}
level04.colliders.C_Parent_Tile_4ID11.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID11.collider:SetOffset(450.5,60.2143,356.5)
level04.colliders.C_Parent_Tile_4ID11.collider:SetZAxis(0.0766965,0,0.997055)
level04.colliders.C_Parent_Tile_4ID11.collider:SetHalfLengths(0.3,5.90825,6.5192)
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
level04.colliders.C_Parent_Tile_4ID13.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_4ID13.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID13.collider)
level04.colliders.C_Parent_Tile_4ID14 = {}
level04.colliders.C_Parent_Tile_4ID14.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID14.collider:SetOffset(508,34.7835,352.5)
level04.colliders.C_Parent_Tile_4ID14.collider:SetZAxis(-0.470588,0,0.882353)
level04.colliders.C_Parent_Tile_4ID14.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID14.collider)
level04.colliders.C_Parent_Tile_4ID15 = {}
level04.colliders.C_Parent_Tile_4ID15.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID15.collider:SetOffset(502.5,35.8052,364.5)
level04.colliders.C_Parent_Tile_4ID15.collider:SetZAxis(-0.316228,0,0.948683)
level04.colliders.C_Parent_Tile_4ID15.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID15.collider)
level04.colliders.C_Parent_Tile_4ID16 = {}
level04.colliders.C_Parent_Tile_4ID16.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID16.collider:SetOffset(502.5,37.0541,372.5)
level04.colliders.C_Parent_Tile_4ID16.collider:SetZAxis(0.393919,0,0.919145)
level04.colliders.C_Parent_Tile_4ID16.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID16.collider)
level04.colliders.C_Parent_Tile_4ID17 = {}
level04.colliders.C_Parent_Tile_4ID17.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID17.collider:SetOffset(475.5,42.39,334)
level04.colliders.C_Parent_Tile_4ID17.collider:SetZAxis(-0.106533,0,0.994309)
level04.colliders.C_Parent_Tile_4ID17.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID17.collider)
level04.colliders.C_Parent_Tile_4ID18 = {}
level04.colliders.C_Parent_Tile_4ID18.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID18.collider:SetOffset(475.5,43.9794,365.5)
level04.colliders.C_Parent_Tile_4ID18.collider:SetZAxis(0.0854011,0,0.996347)
level04.colliders.C_Parent_Tile_4ID18.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID18.collider)
level04.colliders.C_Parent_Tile_4ID19 = {}
level04.colliders.C_Parent_Tile_4ID19.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID19.collider:SetOffset(469.5,54.5378,347.5)
level04.colliders.C_Parent_Tile_4ID19.collider:SetZAxis(0.039968,0,0.999201)
level04.colliders.C_Parent_Tile_4ID19.collider:SetHalfLengths(0.3,6.81649,12.51)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID19.collider)
level04.colliders.C_Parent_Tile_4ID20 = {}
level04.colliders.C_Parent_Tile_4ID20.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID20.collider:SetOffset(470,56.3543,371.5)
level04.colliders.C_Parent_Tile_4ID20.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_4ID20.collider:SetHalfLengths(0.3,7.49767,11.5)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID20.collider)
level04.colliders.C_Parent_Tile_4ID21 = {}
level04.colliders.C_Parent_Tile_4ID21.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID21.collider:SetOffset(452,61.1226,373)
level04.colliders.C_Parent_Tile_4ID21.collider:SetZAxis(0.0995037,0,0.995037)
level04.colliders.C_Parent_Tile_4ID21.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.C_Parent_Tile_4ID12.collider:AddChild(level04.colliders.C_Parent_Tile_4ID21.collider)
level04.colliders.C_Parent_Tile_4ID22 = {}
level04.colliders.C_Parent_Tile_4ID22.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_4ID22.collider:SetOffset(473.5,58.852,383)
level04.colliders.C_Parent_Tile_4ID22.collider:SetZAxis(1,0,0)
level04.colliders.C_Parent_Tile_4ID22.collider:SetHalfLengths(0.3,19.5319,3.5)
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
level04.colliders.C_Parent_Tile_4ID24.collider:SetZAxis(0.496139,0,0.868243)
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
level04.colliders.Tile4_wallNr9ID = nil
level04.colliders.Tile4_wallNr10ID = nil
level04.colliders.Tile4_wallNr11ID = nil
level04.colliders.Tile4_wallNr12ID = nil
level04.colliders.Tile4_wallNr14ID = nil
level04.colliders.Tile4_wallNr15ID = nil
level04.colliders.Tile4_wallNr16ID = nil
level04.colliders.Tile4_wallNr17ID = nil
level04.colliders.Tile4_wallNr18ID = nil
level04.colliders.Tile4_wallNr19ID = nil
level04.colliders.Tile4_wallNr20ID = nil
level04.colliders.Tile4_wallNr21ID = nil
level04.props.New1ID = nil
level04.colliders.C_Parent_Tile_41ID = nil
level04.colliders.C_Parent_Tile_42ID = nil
level04.colliders.C_Parent_Tile_43ID = nil
level04.colliders.C_Parent_Tile_4ID = nil
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
level05.props.tile5ID = {}
level05.props.t5s1ID = {}
level05.props.t5s1ID.model = Assets.LoadModel('Models/tile5_s1.model')
level05.props.t5s1ID.transformID = Gear.BindStaticInstance(level05.props.t5s1ID.model)
Transform.SetPosition(level05.props.t5s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s1ID.transformID, {x=0, y=0, z=0})
level05.props.t5s2ID = {}
level05.props.t5s2ID.model = Assets.LoadModel('Models/tile5_s2.model')
level05.props.t5s2ID.transformID = Gear.BindStaticInstance(level05.props.t5s2ID.model)
Transform.SetPosition(level05.props.t5s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s2ID.transformID, {x=0, y=0, z=0})
level05.props.t5s3ID = {}
level05.props.t5s3ID.model = Assets.LoadModel('Models/tile5_s3.model')
level05.props.t5s3ID.transformID = Gear.BindStaticInstance(level05.props.t5s3ID.model)
Transform.SetPosition(level05.props.t5s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s3ID.transformID, {x=0, y=0, z=0})
level05.props.t5s4ID = {}
level05.props.t5s4ID.model = Assets.LoadModel('Models/tile5_s4.model')
level05.props.t5s4ID.transformID = Gear.BindStaticInstance(level05.props.t5s4ID.model)
Transform.SetPosition(level05.props.t5s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s4ID.transformID, {x=0, y=0, z=0})
level05.props.t5s5ID = {}
level05.props.t5s5ID.model = Assets.LoadModel('Models/tile5_s5.model')
level05.props.t5s5ID.transformID = Gear.BindStaticInstance(level05.props.t5s5ID.model)
Transform.SetPosition(level05.props.t5s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s5ID.transformID, {x=0, y=0, z=0})
level05.props.t5s6ID = {}
level05.props.t5s6ID.model = Assets.LoadModel('Models/tile5_s6.model')
level05.props.t5s6ID.transformID = Gear.BindStaticInstance(level05.props.t5s6ID.model)
Transform.SetPosition(level05.props.t5s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t5s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t5s6ID.transformID, {x=0, y=0, z=0})
level05.props.t4s5ID = {}
level05.props.t4s5ID.model = Assets.LoadModel('Models/tile4_s5.model')
level05.props.t4s5ID.transformID = Gear.BindStaticInstance(level05.props.t4s5ID.model)
Transform.SetPosition(level05.props.t4s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t4s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t4s5ID.transformID, {x=0, y=0, z=0})
level05.props.CrystalID = {}
level05.props.CrystalID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.CrystalID.transformID = Gear.BindStaticInstance(level05.props.CrystalID.model)
Transform.SetPosition(level05.props.CrystalID.transformID, {x=559.253, y=69.928, z=424.467})
Transform.SetScaleNonUniform(level05.props.CrystalID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.CrystalID.transformID, {x=2.02975, y=0, z=0.195233})
Light.addLight(553.253, 69.928, 432.467, 0, 1, 1, 30,4)
level05.props.Crystal1ID = {}
level05.props.Crystal1ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal1ID.transformID = Gear.BindStaticInstance(level05.props.Crystal1ID.model)
Transform.SetPosition(level05.props.Crystal1ID.transformID, {x=588, y=91.3975, z=457})
Transform.SetScaleNonUniform(level05.props.Crystal1ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal1ID.transformID, {x=0, y=0.963286, z=2.71347})
Light.addLight(586, 83.3975, 455, 0, 1, 1, 30,4)
level05.props.Crystal2ID = {}
level05.props.Crystal2ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal2ID.transformID = Gear.BindStaticInstance(level05.props.Crystal2ID.model)
Transform.SetPosition(level05.props.Crystal2ID.transformID, {x=565.5, y=91.4545, z=480.75})
Transform.SetScaleNonUniform(level05.props.Crystal2ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal2ID.transformID, {x=0, y=-1.08236, z=-2.43984})
Light.addLight(573.5, 87.4545, 480.75, 0, 1, 1, 30,4)
level05.props.Crystal3ID = {}
level05.props.Crystal3ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal3ID.transformID = Gear.BindStaticInstance(level05.props.Crystal3ID.model)
Transform.SetPosition(level05.props.Crystal3ID.transformID, {x=547.152, y=76.9418, z=460.579})
Transform.SetScaleNonUniform(level05.props.Crystal3ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal3ID.transformID, {x=-2.16321, y=0, z=-1.00929})
Light.addLight(555.152, 76.9418, 452.579, 0, 1, 1, 30,4)
level05.props.Crystal4ID = {}
level05.props.Crystal4ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal4ID.transformID = Gear.BindStaticInstance(level05.props.Crystal4ID.model)
Transform.SetPosition(level05.props.Crystal4ID.transformID, {x=583.5, y=103, z=512.5})
Transform.SetScaleNonUniform(level05.props.Crystal4ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal4ID.transformID, {x=0, y=0, z=-2.71513})
Light.addLight(587.5, 95, 516.5, 0, 1, 1, 30,4)
level05.props.Crystal5ID = {}
level05.props.Crystal5ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal5ID.transformID = Gear.BindStaticInstance(level05.props.Crystal5ID.model)
Transform.SetPosition(level05.props.Crystal5ID.transformID, {x=578, y=90.3125, z=538.5})
Transform.SetScaleNonUniform(level05.props.Crystal5ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal5ID.transformID, {x=0, y=0, z=-1.3005})
Light.addLight(586, 90.3125, 538.5, 0, 1, 1, 30,4)
level05.props.Crystal6ID = {}
level05.props.Crystal6ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal6ID.transformID = Gear.BindStaticInstance(level05.props.Crystal6ID.model)
Transform.SetPosition(level05.props.Crystal6ID.transformID, {x=612.239, y=100.25, z=532.578})
Transform.SetScaleNonUniform(level05.props.Crystal6ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal6ID.transformID, {x=0, y=0, z=2.22123})
Light.addLight(604.239, 98.25, 532.578, 0, 1, 1, 30,4)
level05.props.Crystal7ID = {}
level05.props.Crystal7ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal7ID.transformID = Gear.BindStaticInstance(level05.props.Crystal7ID.model)
Transform.SetPosition(level05.props.Crystal7ID.transformID, {x=601, y=111.625, z=547.27})
Transform.SetScaleNonUniform(level05.props.Crystal7ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal7ID.transformID, {x=0, y=0, z=-3.2123})
Light.addLight(601, 103.625, 547.27, 0, 1, 1, 30,4)
level05.props.Crystal8ID = {}
level05.props.Crystal8ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal8ID.transformID = Gear.BindStaticInstance(level05.props.Crystal8ID.model)
Transform.SetPosition(level05.props.Crystal8ID.transformID, {x=613.5, y=104.625, z=575.5})
Transform.SetScaleNonUniform(level05.props.Crystal8ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal8ID.transformID, {x=0, y=0, z=2.12905})
Light.addLight(609.5, 102.625, 573.5, 0, 1, 1, 30,4)
level05.props.Crystal9ID = {}
level05.props.Crystal9ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal9ID.transformID = Gear.BindStaticInstance(level05.props.Crystal9ID.model)
Transform.SetPosition(level05.props.Crystal9ID.transformID, {x=606.05, y=86.6875, z=481.468})
Transform.SetScaleNonUniform(level05.props.Crystal9ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal9ID.transformID, {x=-0.339734, y=-0.0166414, z=2.09508})
Light.addLight(598.05, 86.6875, 485.468, 0, 1, 1, 30,4)
level05.props.Crystal10ID = {}
level05.props.Crystal10ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal10ID.transformID = Gear.BindStaticInstance(level05.props.Crystal10ID.model)
Transform.SetPosition(level05.props.Crystal10ID.transformID, {x=509.706, y=60.7813, z=447.76})
Transform.SetScaleNonUniform(level05.props.Crystal10ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal10ID.transformID, {x=-1.34518, y=0, z=-0.0526855})
Light.addLight(505.706, 60.7813, 439.76, 0, 1, 1, 30,4)
level05.props.Crystal11ID = {}
level05.props.Crystal11ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal11ID.transformID = Gear.BindStaticInstance(level05.props.Crystal11ID.model)
Transform.SetPosition(level05.props.Crystal11ID.transformID, {x=514.321, y=75.75, z=405.863})
Transform.SetScaleNonUniform(level05.props.Crystal11ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal11ID.transformID, {x=0.259607, y=0.695798, z=1.30789})
Light.addLight(508.321, 75.75, 409.863, 0, 1, 1, 30,4)
level05.props.Crystal12ID = {}
level05.props.Crystal12ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal12ID.transformID = Gear.BindStaticInstance(level05.props.Crystal12ID.model)
Transform.SetPosition(level05.props.Crystal12ID.transformID, {x=519.119, y=48.9107, z=404.748})
Transform.SetScaleNonUniform(level05.props.Crystal12ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal12ID.transformID, {x=1.2884, y=0, z=0.54079})
Light.addLight(511.119, 48.9107, 412.748, 0, 1, 1, 30,4)
level05.colliders.C_Parent_Tile_5ID = {}
level05.colliders.C_Parent_Tile_5ID.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID.collider:SetMinPos(395.7,30.4293,384.918)
level05.colliders.C_Parent_Tile_5ID.collider:SetMaxPos(640.3,106.093,640)
level05.colliders.C_Parent_Tile_5ID.collider:SetPos(0,0,0)
level05.colliders.C_Parent_Tile_5ID1 = {}
level05.colliders.C_Parent_Tile_5ID1.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID1.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID1.collider:SetMinPos(395.7,30.4293,384.918)
level05.colliders.C_Parent_Tile_5ID1.collider:SetMaxPos(593.274,90.7195,613.247)
level05.colliders.C_Parent_Tile_5ID.collider:AddChild(level05.colliders.C_Parent_Tile_5ID1.collider)
level05.colliders.C_Parent_Tile_5ID2 = {}
level05.colliders.C_Parent_Tile_5ID2.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID2.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID2.collider:SetMinPos(401.71,59.0921,384.918)
level05.colliders.C_Parent_Tile_5ID2.collider:SetMaxPos(455.288,87.744,528)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID2.collider)
level05.colliders.C_Parent_Tile_5ID3 = {}
level05.colliders.C_Parent_Tile_5ID3.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID3.collider:SetOffset(454,65.395,388.5)
level05.colliders.C_Parent_Tile_5ID3.collider:SetZAxis(0.274721,0,0.961524)
level05.colliders.C_Parent_Tile_5ID3.collider:SetHalfLengths(0.3,5.52114,3.64005)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID3.collider)
level05.colliders.C_Parent_Tile_5ID4 = {}
level05.colliders.C_Parent_Tile_5ID4.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID4.collider:SetOffset(451,67.219,399)
level05.colliders.C_Parent_Tile_5ID4.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_5ID4.collider:SetHalfLengths(0.3,8.12685,3.16228)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID4.collider)
level05.colliders.C_Parent_Tile_5ID5 = {}
level05.colliders.C_Parent_Tile_5ID5.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID5.collider:SetOffset(444,70.3458,401)
level05.colliders.C_Parent_Tile_5ID5.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.C_Parent_Tile_5ID5.collider:SetHalfLengths(0.3,7.08457,4.12311)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID5.collider)
level05.colliders.C_Parent_Tile_5ID6 = {}
level05.colliders.C_Parent_Tile_5ID6.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID6.collider:SetOffset(434.5,72.4304,403.5)
level05.colliders.C_Parent_Tile_5ID6.collider:SetZAxis(-0.964764,0,0.263117)
level05.colliders.C_Parent_Tile_5ID6.collider:SetHalfLengths(0.3,7.08456,5.70088)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID6.collider)
level05.colliders.C_Parent_Tile_5ID7 = {}
level05.colliders.C_Parent_Tile_5ID7.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID7.collider:SetOffset(424,74.515,408.5)
level05.colliders.C_Parent_Tile_5ID7.collider:SetZAxis(-0.819232,0,0.573462)
level05.colliders.C_Parent_Tile_5ID7.collider:SetHalfLengths(0.3,7.34514,6.10328)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID7.collider)
level05.colliders.C_Parent_Tile_5ID8 = {}
level05.colliders.C_Parent_Tile_5ID8.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID8.collider:SetOffset(416.5,76.8601,414)
level05.colliders.C_Parent_Tile_5ID8.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.C_Parent_Tile_5ID8.collider:SetHalfLengths(0.3,6.30286,3.20156)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID8.collider)
level05.colliders.C_Parent_Tile_5ID9 = {}
level05.colliders.C_Parent_Tile_5ID9.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID9.collider:SetOffset(410.5,78.163,416.5)
level05.colliders.C_Parent_Tile_5ID9.collider:SetZAxis(-0.98995,0,0.141421)
level05.colliders.C_Parent_Tile_5ID9.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID9.collider)
level05.colliders.C_Parent_Tile_5ID10 = {}
level05.colliders.C_Parent_Tile_5ID10.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID10.collider:SetOffset(404.5,78.163,426.5)
level05.colliders.C_Parent_Tile_5ID10.collider:SetZAxis(-0.254493,0,0.967075)
level05.colliders.C_Parent_Tile_5ID10.collider:SetHalfLengths(0.3,5,9.82344)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID10.collider)
level05.colliders.C_Parent_Tile_5ID11 = {}
level05.colliders.C_Parent_Tile_5ID11.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID11.collider:SetOffset(403.5,78.163,436.5)
level05.colliders.C_Parent_Tile_5ID11.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_5ID11.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID11.collider)
level05.colliders.C_Parent_Tile_5ID12 = {}
level05.colliders.C_Parent_Tile_5ID12.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID12.collider:SetOffset(409,78.5251,479.5)
level05.colliders.C_Parent_Tile_5ID12.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_5ID12.collider:SetHalfLengths(0.3,9.21893,48.5)
level05.colliders.C_Parent_Tile_5ID2.collider:AddChild(level05.colliders.C_Parent_Tile_5ID12.collider)
level05.colliders.C_Parent_Tile_5ID13 = {}
level05.colliders.C_Parent_Tile_5ID13.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID13.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID13.collider:SetMinPos(417.7,52.0567,384.983)
level05.colliders.C_Parent_Tile_5ID13.collider:SetMaxPos(470.3,90.4086,476.013)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID13.collider)
level05.colliders.C_Parent_Tile_5ID14 = {}
level05.colliders.C_Parent_Tile_5ID14.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID14.collider:SetOffset(454.5,64.8738,395)
level05.colliders.C_Parent_Tile_5ID14.collider:SetZAxis(-0.164399,0,0.986394)
level05.colliders.C_Parent_Tile_5ID14.collider:SetHalfLengths(0.3,7.34514,3.04138)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID14.collider)
level05.colliders.C_Parent_Tile_5ID15 = {}
level05.colliders.C_Parent_Tile_5ID15.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID15.collider:SetOffset(469.5,59.4018,394)
level05.colliders.C_Parent_Tile_5ID15.collider:SetZAxis(-0.05547,0,0.99846)
level05.colliders.C_Parent_Tile_5ID15.collider:SetHalfLengths(0.3,5.26057,9.01388)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID15.collider)
level05.colliders.C_Parent_Tile_5ID16 = {}
level05.colliders.C_Parent_Tile_5ID16.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID16.collider:SetOffset(422.5,59.6624,444)
level05.colliders.C_Parent_Tile_5ID16.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_5ID16.collider:SetHalfLengths(0.3,5.78172,2.5)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID16.collider)
level05.colliders.C_Parent_Tile_5ID17 = {}
level05.colliders.C_Parent_Tile_5ID17.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID17.collider:SetOffset(426.5,60.4441,440.5)
level05.colliders.C_Parent_Tile_5ID17.collider:SetZAxis(0.393919,0,-0.919145)
level05.colliders.C_Parent_Tile_5ID17.collider:SetHalfLengths(0.3,5.26057,3.80789)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID17.collider)
level05.colliders.C_Parent_Tile_5ID18 = {}
level05.colliders.C_Parent_Tile_5ID18.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID18.collider:SetOffset(432.5,60.1836,433.5)
level05.colliders.C_Parent_Tile_5ID18.collider:SetZAxis(0.789352,0,-0.613941)
level05.colliders.C_Parent_Tile_5ID18.collider:SetHalfLengths(0.3,8.12685,5.70088)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID18.collider)
level05.colliders.C_Parent_Tile_5ID19 = {}
level05.colliders.C_Parent_Tile_5ID19.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID19.collider:SetOffset(443,63.3104,427.5)
level05.colliders.C_Parent_Tile_5ID19.collider:SetZAxis(0.923077,0,-0.384615)
level05.colliders.C_Parent_Tile_5ID19.collider:SetHalfLengths(0.3,5.26057,6.5)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID19.collider)
level05.colliders.C_Parent_Tile_5ID20 = {}
level05.colliders.C_Parent_Tile_5ID20.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID20.collider:SetOffset(440,70.3458,423.5)
level05.colliders.C_Parent_Tile_5ID20.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.C_Parent_Tile_5ID20.collider:SetHalfLengths(0.3,8.64799,3.04138)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID20.collider)
level05.colliders.C_Parent_Tile_5ID21 = {}
level05.colliders.C_Parent_Tile_5ID21.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID21.collider:SetOffset(432.5,73.9938,426.5)
level05.colliders.C_Parent_Tile_5ID21.collider:SetZAxis(-0.874157,0,0.485643)
level05.colliders.C_Parent_Tile_5ID21.collider:SetHalfLengths(0.3,7.60571,5.14782)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID21.collider)
level05.colliders.C_Parent_Tile_5ID22 = {}
level05.colliders.C_Parent_Tile_5ID22.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID22.collider:SetOffset(424,75.8605,430)
level05.colliders.C_Parent_Tile_5ID22.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.C_Parent_Tile_5ID22.collider:SetHalfLengths(0.3,6.99844,4.12311)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID22.collider)
level05.colliders.C_Parent_Tile_5ID23 = {}
level05.colliders.C_Parent_Tile_5ID23.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID23.collider:SetOffset(419,77.8589,453.5)
level05.colliders.C_Parent_Tile_5ID23.collider:SetZAxis(-0.0444006,0,0.999014)
level05.colliders.C_Parent_Tile_5ID23.collider:SetHalfLengths(0.3,12.5497,22.5222)
level05.colliders.C_Parent_Tile_5ID13.collider:AddChild(level05.colliders.C_Parent_Tile_5ID23.collider)
level05.colliders.C_Parent_Tile_5ID24 = {}
level05.colliders.C_Parent_Tile_5ID24.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID24.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID24.collider:SetMinPos(417.7,30.4293,384.951)
level05.colliders.C_Parent_Tile_5ID24.collider:SetMaxPos(517.24,88.1881,528.006)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID24.collider)
level05.colliders.C_Parent_Tile_5ID25 = {}
level05.colliders.C_Parent_Tile_5ID25.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID25.collider:SetOffset(509.5,38.8167,388)
level05.colliders.C_Parent_Tile_5ID25.collider:SetZAxis(0.164399,0,0.986394)
level05.colliders.C_Parent_Tile_5ID25.collider:SetHalfLengths(0.3,5,3.04138)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID25.collider)
level05.colliders.C_Parent_Tile_5ID26 = {}
level05.colliders.C_Parent_Tile_5ID26.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID26.collider:SetOffset(510.5,38.8167,394.5)
level05.colliders.C_Parent_Tile_5ID26.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_5ID26.collider:SetHalfLengths(0.3,6.04229,3.53553)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID26.collider)
level05.colliders.C_Parent_Tile_5ID27 = {}
level05.colliders.C_Parent_Tile_5ID27.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID27.collider:SetOffset(514,39.859,402)
level05.colliders.C_Parent_Tile_5ID27.collider:SetZAxis(0.6,0,0.8)
level05.colliders.C_Parent_Tile_5ID27.collider:SetHalfLengths(0.3,9.42971,5)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID27.collider)
level05.colliders.C_Parent_Tile_5ID28 = {}
level05.colliders.C_Parent_Tile_5ID28.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID28.collider:SetOffset(478,45.5916,394.5)
level05.colliders.C_Parent_Tile_5ID28.collider:SetZAxis(0.104685,0,0.994505)
level05.colliders.C_Parent_Tile_5ID28.collider:SetHalfLengths(0.3,8.38743,9.55249)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID28.collider)
level05.colliders.C_Parent_Tile_5ID29 = {}
level05.colliders.C_Parent_Tile_5ID29.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID29.collider:SetOffset(474.5,59.1413,407.5)
level05.colliders.C_Parent_Tile_5ID29.collider:SetZAxis(0.773957,0,0.633238)
level05.colliders.C_Parent_Tile_5ID29.collider:SetHalfLengths(0.3,15.6834,7.10634)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID29.collider)
level05.colliders.C_Parent_Tile_5ID30 = {}
level05.colliders.C_Parent_Tile_5ID30.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID30.collider:SetOffset(479.5,48.4579,408)
level05.colliders.C_Parent_Tile_5ID30.collider:SetZAxis(-0.124035,0,-0.992278)
level05.colliders.C_Parent_Tile_5ID30.collider:SetHalfLengths(0.3,5.52114,4.03113)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID30.collider)
level05.colliders.C_Parent_Tile_5ID31 = {}
level05.colliders.C_Parent_Tile_5ID31.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID31.collider:SetOffset(421,59.923,477.5)
level05.colliders.C_Parent_Tile_5ID31.collider:SetZAxis(-0.0298375,0,-0.999555)
level05.colliders.C_Parent_Tile_5ID31.collider:SetHalfLengths(0.3,5.26057,33.5149)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID31.collider)
level05.colliders.C_Parent_Tile_5ID32 = {}
level05.colliders.C_Parent_Tile_5ID32.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID32.collider:SetOffset(450,63.0498,423.5)
level05.colliders.C_Parent_Tile_5ID32.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.C_Parent_Tile_5ID32.collider:SetHalfLengths(0.3,6.56343,1.80278)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID32.collider)
level05.colliders.C_Parent_Tile_5ID33 = {}
level05.colliders.C_Parent_Tile_5ID33.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID33.collider:SetOffset(447,64.6133,422.5)
level05.colliders.C_Parent_Tile_5ID33.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_5ID33.collider:SetHalfLengths(0.3,10.7326,4.03113)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID33.collider)
level05.colliders.C_Parent_Tile_5ID34 = {}
level05.colliders.C_Parent_Tile_5ID34.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID34.collider:SetOffset(418.5,70.3092,502)
level05.colliders.C_Parent_Tile_5ID34.collider:SetZAxis(0.0192272,0,0.999815)
level05.colliders.C_Parent_Tile_5ID34.collider:SetHalfLengths(0.3,17.8789,26.0048)
level05.colliders.C_Parent_Tile_5ID24.collider:AddChild(level05.colliders.C_Parent_Tile_5ID34.collider)
level05.colliders.C_Parent_Tile_5ID35 = {}
level05.colliders.C_Parent_Tile_5ID35.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID35.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID35.collider:SetMinPos(449.709,34.5984,405.788)
level05.colliders.C_Parent_Tile_5ID35.collider:SetMaxPos(523.212,69.3527,483.159)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID35.collider)
level05.colliders.C_Parent_Tile_5ID36 = {}
level05.colliders.C_Parent_Tile_5ID36.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID36.collider:SetOffset(520,44.2887,409)
level05.colliders.C_Parent_Tile_5ID36.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID36.collider:SetHalfLengths(0.3,9.69028,4.24264)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID36.collider)
level05.colliders.C_Parent_Tile_5ID37 = {}
level05.colliders.C_Parent_Tile_5ID37.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID37.collider:SetOffset(453.5,63.8316,479)
level05.colliders.C_Parent_Tile_5ID37.collider:SetZAxis(-0.529999,0,-0.847998)
level05.colliders.C_Parent_Tile_5ID37.collider:SetHalfLengths(0.3,5.52114,4.71699)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID37.collider)
level05.colliders.C_Parent_Tile_5ID38 = {}
level05.colliders.C_Parent_Tile_5ID38.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID38.collider:SetOffset(450.5,63.3104,473)
level05.colliders.C_Parent_Tile_5ID38.collider:SetZAxis(-0.242536,0,-0.970143)
level05.colliders.C_Parent_Tile_5ID38.collider:SetHalfLengths(0.3,6.04228,2.06155)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID38.collider)
level05.colliders.C_Parent_Tile_5ID39 = {}
level05.colliders.C_Parent_Tile_5ID39.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID39.collider:SetOffset(450.5,62.2681,469)
level05.colliders.C_Parent_Tile_5ID39.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.C_Parent_Tile_5ID39.collider:SetHalfLengths(0.3,5.78172,2.06155)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID39.collider)
level05.colliders.C_Parent_Tile_5ID40 = {}
level05.colliders.C_Parent_Tile_5ID40.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID40.collider:SetOffset(452.5,61.4864,465)
level05.colliders.C_Parent_Tile_5ID40.collider:SetZAxis(0.6,0,-0.8)
level05.colliders.C_Parent_Tile_5ID40.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID40.collider)
level05.colliders.C_Parent_Tile_5ID41 = {}
level05.colliders.C_Parent_Tile_5ID41.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID41.collider:SetOffset(456.5,59.1413,462)
level05.colliders.C_Parent_Tile_5ID41.collider:SetZAxis(0.928477,0,-0.371391)
level05.colliders.C_Parent_Tile_5ID41.collider:SetHalfLengths(0.3,7.08457,2.69258)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID41.collider)
level05.colliders.C_Parent_Tile_5ID42 = {}
level05.colliders.C_Parent_Tile_5ID42.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID42.collider:SetOffset(461.5,57.0567,460.5)
level05.colliders.C_Parent_Tile_5ID42.collider:SetZAxis(0.980581,0,-0.196116)
level05.colliders.C_Parent_Tile_5ID42.collider:SetHalfLengths(0.3,7.60571,2.54951)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID42.collider)
level05.colliders.C_Parent_Tile_5ID43 = {}
level05.colliders.C_Parent_Tile_5ID43.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID43.collider:SetOffset(466.5,54.451,460)
level05.colliders.C_Parent_Tile_5ID43.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_5ID43.collider:SetHalfLengths(0.3,7.60571,2.5)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID43.collider)
level05.colliders.C_Parent_Tile_5ID44 = {}
level05.colliders.C_Parent_Tile_5ID44.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID44.collider:SetOffset(471.5,51.8453,460)
level05.colliders.C_Parent_Tile_5ID44.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_5ID44.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID44.collider)
level05.colliders.C_Parent_Tile_5ID45 = {}
level05.colliders.C_Parent_Tile_5ID45.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID45.collider:SetOffset(476,49.5001,459.5)
level05.colliders.C_Parent_Tile_5ID45.collider:SetZAxis(0.970143,0,-0.242536)
level05.colliders.C_Parent_Tile_5ID45.collider:SetHalfLengths(0.3,6.04229,2.06155)
level05.colliders.C_Parent_Tile_5ID35.collider:AddChild(level05.colliders.C_Parent_Tile_5ID45.collider)
level05.colliders.C_Parent_Tile_5ID46 = {}
level05.colliders.C_Parent_Tile_5ID46.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID46.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID46.collider:SetMinPos(395.743,38.2464,411.76)
level05.colliders.C_Parent_Tile_5ID46.collider:SetMaxPos(527.18,89.9378,532.154)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID46.collider)
level05.colliders.C_Parent_Tile_5ID47 = {}
level05.colliders.C_Parent_Tile_5ID47.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID47.collider:SetOffset(525,48.979,413.5)
level05.colliders.C_Parent_Tile_5ID47.collider:SetZAxis(0.8,0,0.6)
level05.colliders.C_Parent_Tile_5ID47.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID47.collider)
level05.colliders.C_Parent_Tile_5ID48 = {}
level05.colliders.C_Parent_Tile_5ID48.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID48.collider:SetOffset(459,63.0498,486.5)
level05.colliders.C_Parent_Tile_5ID48.collider:SetZAxis(-0.650791,0,-0.759257)
level05.colliders.C_Parent_Tile_5ID48.collider:SetHalfLengths(0.3,5.78171,4.60977)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID48.collider)
level05.colliders.C_Parent_Tile_5ID49 = {}
level05.colliders.C_Parent_Tile_5ID49.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID49.collider:SetOffset(480.5,48.4579,457.5)
level05.colliders.C_Parent_Tile_5ID49.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.C_Parent_Tile_5ID49.collider:SetHalfLengths(0.3,6.30285,2.91548)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID49.collider)
level05.colliders.C_Parent_Tile_5ID50 = {}
level05.colliders.C_Parent_Tile_5ID50.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID50.collider:SetOffset(485.5,47.155,454)
level05.colliders.C_Parent_Tile_5ID50.collider:SetZAxis(0.780869,0,-0.624695)
level05.colliders.C_Parent_Tile_5ID50.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID50.collider)
level05.colliders.C_Parent_Tile_5ID51 = {}
level05.colliders.C_Parent_Tile_5ID51.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID51.collider:SetOffset(489.5,45.5916,450.5)
level05.colliders.C_Parent_Tile_5ID51.collider:SetZAxis(0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_5ID51.collider:SetHalfLengths(0.3,6.30285,2.12132)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID51.collider)
level05.colliders.C_Parent_Tile_5ID52 = {}
level05.colliders.C_Parent_Tile_5ID52.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID52.collider:SetOffset(493.5,44.2887,447.5)
level05.colliders.C_Parent_Tile_5ID52.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.C_Parent_Tile_5ID52.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID52.collider)
level05.colliders.C_Parent_Tile_5ID53 = {}
level05.colliders.C_Parent_Tile_5ID53.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID53.collider:SetOffset(428,61.747,510)
level05.colliders.C_Parent_Tile_5ID53.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.C_Parent_Tile_5ID53.collider:SetHalfLengths(0.3,6.824,6.08276)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID53.collider)
level05.colliders.C_Parent_Tile_5ID54 = {}
level05.colliders.C_Parent_Tile_5ID54.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID54.collider:SetOffset(405,82.8532,525)
level05.colliders.C_Parent_Tile_5ID54.collider:SetZAxis(-1,0,0)
level05.colliders.C_Parent_Tile_5ID54.collider:SetHalfLengths(0.3,7.08456,3)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID54.collider)
level05.colliders.C_Parent_Tile_5ID55 = {}
level05.colliders.C_Parent_Tile_5ID55.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID55.collider:SetOffset(400.5,80.7687,526)
level05.colliders.C_Parent_Tile_5ID55.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_5ID55.collider:SetHalfLengths(0.3,5.52114,1.80278)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID55.collider)
level05.colliders.C_Parent_Tile_5ID56 = {}
level05.colliders.C_Parent_Tile_5ID56.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID56.collider:SetOffset(397.5,80.2475,529.5)
level05.colliders.C_Parent_Tile_5ID56.collider:SetZAxis(-0.514496,0,0.857493)
level05.colliders.C_Parent_Tile_5ID56.collider:SetHalfLengths(0.3,5,2.91548)
level05.colliders.C_Parent_Tile_5ID46.collider:AddChild(level05.colliders.C_Parent_Tile_5ID56.collider)
level05.colliders.C_Parent_Tile_5ID57 = {}
level05.colliders.C_Parent_Tile_5ID57.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID57.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID57.collider:SetMinPos(395.7,32.7744,414.736)
level05.colliders.C_Parent_Tile_5ID57.collider:SetMaxPos(540.142,88.8543,545.134)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID57.collider)
level05.colliders.C_Parent_Tile_5ID58 = {}
level05.colliders.C_Parent_Tile_5ID58.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID58.collider:SetOffset(533.5,49.2396,418.5)
level05.colliders.C_Parent_Tile_5ID58.collider:SetZAxis(0.880471,0,0.4741)
level05.colliders.C_Parent_Tile_5ID58.collider:SetHalfLengths(0.3,5.52114,7.38241)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID58.collider)
level05.colliders.C_Parent_Tile_5ID59 = {}
level05.colliders.C_Parent_Tile_5ID59.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID59.collider:SetOffset(505.5,43.2464,446)
level05.colliders.C_Parent_Tile_5ID59.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_5ID59.collider:SetHalfLengths(0.3,10.472,9.5)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID59.collider)
level05.colliders.C_Parent_Tile_5ID60 = {}
level05.colliders.C_Parent_Tile_5ID60.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID60.collider:SetOffset(471,64.3527,495)
level05.colliders.C_Parent_Tile_5ID60.collider:SetZAxis(-0.874157,0,-0.485643)
level05.colliders.C_Parent_Tile_5ID60.collider:SetHalfLengths(0.3,6.30285,10.2956)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID60.collider)
level05.colliders.C_Parent_Tile_5ID61 = {}
level05.colliders.C_Parent_Tile_5ID61.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID61.collider:SetOffset(396,80.2475,536.5)
level05.colliders.C_Parent_Tile_5ID61.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_5ID61.collider:SetHalfLengths(0.3,5.52114,4.5)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID61.collider)
level05.colliders.C_Parent_Tile_5ID62 = {}
level05.colliders.C_Parent_Tile_5ID62.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID62.collider:SetOffset(397,80.7687,543)
level05.colliders.C_Parent_Tile_5ID62.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_5ID62.collider:SetHalfLengths(0.3,5.52114,2.23607)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID62.collider)
level05.colliders.C_Parent_Tile_5ID63 = {}
level05.colliders.C_Parent_Tile_5ID63.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID63.collider:SetOffset(426,82.5927,527)
level05.colliders.C_Parent_Tile_5ID63.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.C_Parent_Tile_5ID63.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID63.collider)
level05.colliders.C_Parent_Tile_5ID64 = {}
level05.colliders.C_Parent_Tile_5ID64.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID64.collider:SetOffset(439.5,59.923,518.5)
level05.colliders.C_Parent_Tile_5ID64.collider:SetZAxis(-0.581238,0,-0.813733)
level05.colliders.C_Parent_Tile_5ID64.collider:SetHalfLengths(0.3,6.04229,4.30116)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID64.collider)
level05.colliders.C_Parent_Tile_5ID65 = {}
level05.colliders.C_Parent_Tile_5ID65.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID65.collider:SetOffset(435.5,60.9653,512)
level05.colliders.C_Parent_Tile_5ID65.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_5ID65.collider:SetHalfLengths(0.3,5.78171,3.3541)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID65.collider)
level05.colliders.C_Parent_Tile_5ID66 = {}
level05.colliders.C_Parent_Tile_5ID66.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID66.collider:SetOffset(408.5,82.744,526.5)
level05.colliders.C_Parent_Tile_5ID66.collider:SetZAxis(-0.316228,0,-0.948683)
level05.colliders.C_Parent_Tile_5ID66.collider:SetHalfLengths(0.3,5.4441,1.58114)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID66.collider)
level05.colliders.C_Parent_Tile_5ID67 = {}
level05.colliders.C_Parent_Tile_5ID67.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID67.collider:SetOffset(420,83.1881,526.5)
level05.colliders.C_Parent_Tile_5ID67.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.C_Parent_Tile_5ID67.collider:SetHalfLengths(0.3,5.66615,1.80278)
level05.colliders.C_Parent_Tile_5ID57.collider:AddChild(level05.colliders.C_Parent_Tile_5ID67.collider)
level05.colliders.C_Parent_Tile_5ID68 = {}
level05.colliders.C_Parent_Tile_5ID68.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID68.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID68.collider:SetMinPos(397.846,41.1127,421.723)
level05.colliders.C_Parent_Tile_5ID68.collider:SetMaxPos(552.115,89.4167,557.212)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID68.collider)
level05.colliders.C_Parent_Tile_5ID69 = {}
level05.colliders.C_Parent_Tile_5ID69.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID69.collider:SetOffset(546,48.7184,424.5)
level05.colliders.C_Parent_Tile_5ID69.collider:SetZAxis(0.923077,0,0.384615)
level05.colliders.C_Parent_Tile_5ID69.collider:SetHalfLengths(0.3,6.56343,6.5)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID69.collider)
level05.colliders.C_Parent_Tile_5ID70 = {}
level05.colliders.C_Parent_Tile_5ID70.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID70.collider:SetOffset(519,48.7184,446.5)
level05.colliders.C_Parent_Tile_5ID70.collider:SetZAxis(0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_5ID70.collider:SetHalfLengths(0.3,7.08457,4.03113)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID70.collider)
level05.colliders.C_Parent_Tile_5ID71 = {}
level05.colliders.C_Parent_Tile_5ID71.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID71.collider:SetOffset(531,50.803,451.5)
level05.colliders.C_Parent_Tile_5ID71.collider:SetZAxis(0.871576,0,0.490261)
level05.colliders.C_Parent_Tile_5ID71.collider:SetHalfLengths(0.3,9.69028,9.17878)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID71.collider)
level05.colliders.C_Parent_Tile_5ID72 = {}
level05.colliders.C_Parent_Tile_5ID72.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID72.collider:SetOffset(486.5,64.6133,502)
level05.colliders.C_Parent_Tile_5ID72.collider:SetZAxis(-0.955779,0,-0.294086)
level05.colliders.C_Parent_Tile_5ID72.collider:SetHalfLengths(0.3,5.26057,6.80074)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID72.collider)
level05.colliders.C_Parent_Tile_5ID73 = {}
level05.colliders.C_Parent_Tile_5ID73.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID73.collider:SetOffset(400.5,81.2898,546.5)
level05.colliders.C_Parent_Tile_5ID73.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.C_Parent_Tile_5ID73.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID73.collider)
level05.colliders.C_Parent_Tile_5ID74 = {}
level05.colliders.C_Parent_Tile_5ID74.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID74.collider:SetOffset(409,82.3321,550)
level05.colliders.C_Parent_Tile_5ID74.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_5ID74.collider:SetHalfLengths(0.3,5.52113,6.32456)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID74.collider)
level05.colliders.C_Parent_Tile_5ID75 = {}
level05.colliders.C_Parent_Tile_5ID75.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID75.collider:SetOffset(417.5,82.8532,554.5)
level05.colliders.C_Parent_Tile_5ID75.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID75.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID75.collider)
level05.colliders.C_Parent_Tile_5ID76 = {}
level05.colliders.C_Parent_Tile_5ID76.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID76.collider:SetOffset(435,82.0715,533.5)
level05.colliders.C_Parent_Tile_5ID76.collider:SetZAxis(0.664364,0,0.747409)
level05.colliders.C_Parent_Tile_5ID76.collider:SetHalfLengths(0.3,5.52114,6.0208)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID76.collider)
level05.colliders.C_Parent_Tile_5ID77 = {}
level05.colliders.C_Parent_Tile_5ID77.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID77.collider:SetOffset(445,81.5504,544)
level05.colliders.C_Parent_Tile_5ID77.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID77.collider:SetHalfLengths(0.3,7.86628,8.48528)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID77.collider)
level05.colliders.C_Parent_Tile_5ID78 = {}
level05.colliders.C_Parent_Tile_5ID78.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID78.collider:SetOffset(446.5,60.9653,527)
level05.colliders.C_Parent_Tile_5ID78.collider:SetZAxis(-0.668965,0,-0.743294)
level05.colliders.C_Parent_Tile_5ID78.collider:SetHalfLengths(0.3,6.04229,6.72681)
level05.colliders.C_Parent_Tile_5ID68.collider:AddChild(level05.colliders.C_Parent_Tile_5ID78.collider)
level05.colliders.C_Parent_Tile_5ID79 = {}
level05.colliders.C_Parent_Tile_5ID79.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID79.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID79.collider:SetMinPos(419.788,42.4156,426.72)
level05.colliders.C_Parent_Tile_5ID79.collider:SetMaxPos(580.154,89.1561,569.174)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID79.collider)
level05.colliders.C_Parent_Tile_5ID80 = {}
level05.colliders.C_Parent_Tile_5ID80.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID80.collider:SetOffset(558.5,50.2819,429.5)
level05.colliders.C_Parent_Tile_5ID80.collider:SetZAxis(0.933346,0,0.358979)
level05.colliders.C_Parent_Tile_5ID80.collider:SetHalfLengths(0.3,7.86628,6.96419)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID80.collider)
level05.colliders.C_Parent_Tile_5ID81 = {}
level05.colliders.C_Parent_Tile_5ID81.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID81.collider:SetOffset(572.5,53.1481,436.5)
level05.colliders.C_Parent_Tile_5ID81.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.C_Parent_Tile_5ID81.collider:SetHalfLengths(0.3,6.30286,8.74643)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID81.collider)
level05.colliders.C_Parent_Tile_5ID82 = {}
level05.colliders.C_Parent_Tile_5ID82.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID82.collider:SetOffset(546.5,55.4933,461)
level05.colliders.C_Parent_Tile_5ID82.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_5ID82.collider:SetHalfLengths(0.3,8.90857,9.01388)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID82.collider)
level05.colliders.C_Parent_Tile_5ID83 = {}
level05.colliders.C_Parent_Tile_5ID83.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID83.collider:SetOffset(499,64.3527,505)
level05.colliders.C_Parent_Tile_5ID83.collider:SetZAxis(-0.986394,0,-0.164399)
level05.colliders.C_Parent_Tile_5ID83.collider:SetHalfLengths(0.3,5.26057,6.08276)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID83.collider)
level05.colliders.C_Parent_Tile_5ID84 = {}
level05.colliders.C_Parent_Tile_5ID84.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID84.collider:SetOffset(422.5,82.8532,559.5)
level05.colliders.C_Parent_Tile_5ID84.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID84.collider:SetHalfLengths(0.3,5.78172,3.53553)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID84.collider)
level05.colliders.C_Parent_Tile_5ID85 = {}
level05.colliders.C_Parent_Tile_5ID85.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID85.collider:SetOffset(427.5,83.635,565.5)
level05.colliders.C_Parent_Tile_5ID85.collider:SetZAxis(0.581238,0,0.813733)
level05.colliders.C_Parent_Tile_5ID85.collider:SetHalfLengths(0.3,5.52113,4.30116)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID85.collider)
level05.colliders.C_Parent_Tile_5ID86 = {}
level05.colliders.C_Parent_Tile_5ID86.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID86.collider:SetOffset(454,78.6841,553)
level05.colliders.C_Parent_Tile_5ID86.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID86.collider:SetHalfLengths(0.3,7.08456,4.24264)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID86.collider)
level05.colliders.C_Parent_Tile_5ID87 = {}
level05.colliders.C_Parent_Tile_5ID87.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID87.collider:SetOffset(470,64.3527,537)
level05.colliders.C_Parent_Tile_5ID87.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_5ID87.collider:SetHalfLengths(0.3,5.26057,3.16228)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID87.collider)
level05.colliders.C_Parent_Tile_5ID88 = {}
level05.colliders.C_Parent_Tile_5ID88.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID88.collider:SetOffset(462,64.6133,540)
level05.colliders.C_Parent_Tile_5ID88.collider:SetZAxis(-0.928477,0,0.371391)
level05.colliders.C_Parent_Tile_5ID88.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID88.collider)
level05.colliders.C_Parent_Tile_5ID89 = {}
level05.colliders.C_Parent_Tile_5ID89.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID89.collider:SetOffset(454,65.1344,537)
level05.colliders.C_Parent_Tile_5ID89.collider:SetZAxis(-0.514496,0,-0.857493)
level05.colliders.C_Parent_Tile_5ID89.collider:SetHalfLengths(0.3,9.16914,5.83095)
level05.colliders.C_Parent_Tile_5ID79.collider:AddChild(level05.colliders.C_Parent_Tile_5ID89.collider)
level05.colliders.C_Parent_Tile_5ID90 = {}
level05.colliders.C_Parent_Tile_5ID90.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID90.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID90.collider:SetMinPos(440.732,47.627,440.743)
level05.colliders.C_Parent_Tile_5ID90.collider:SetMaxPos(589.268,90.7195,589.042)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID90.collider)
level05.colliders.C_Parent_Tile_5ID91 = {}
level05.colliders.C_Parent_Tile_5ID91.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID91.collider:SetOffset(582.5,54.451,442.5)
level05.colliders.C_Parent_Tile_5ID91.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.C_Parent_Tile_5ID91.collider:SetHalfLengths(0.3,6.824,2.91548)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID91.collider)
level05.colliders.C_Parent_Tile_5ID92 = {}
level05.colliders.C_Parent_Tile_5ID92.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID92.collider:SetOffset(586,56.275,445)
level05.colliders.C_Parent_Tile_5ID92.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID92.collider:SetHalfLengths(0.3,6.30286,1.41421)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID92.collider)
level05.colliders.C_Parent_Tile_5ID93 = {}
level05.colliders.C_Parent_Tile_5ID93.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID93.collider:SetOffset(588,57.5778,448)
level05.colliders.C_Parent_Tile_5ID93.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_5ID93.collider:SetHalfLengths(0.3,5.78172,2.23607)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID93.collider)
level05.colliders.C_Parent_Tile_5ID94 = {}
level05.colliders.C_Parent_Tile_5ID94.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID94.collider:SetOffset(529,67.7401,508.5)
level05.colliders.C_Parent_Tile_5ID94.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.C_Parent_Tile_5ID94.collider:SetHalfLengths(0.3,6.04229,4.03113)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID94.collider)
level05.colliders.C_Parent_Tile_5ID95 = {}
level05.colliders.C_Parent_Tile_5ID95.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID95.collider:SetOffset(442,84.4167,577)
level05.colliders.C_Parent_Tile_5ID95.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_5ID95.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID95.collider)
level05.colliders.C_Parent_Tile_5ID96 = {}
level05.colliders.C_Parent_Tile_5ID96.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID96.collider:SetOffset(443.5,84.6772,580.5)
level05.colliders.C_Parent_Tile_5ID96.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.C_Parent_Tile_5ID96.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID96.collider)
level05.colliders.C_Parent_Tile_5ID97 = {}
level05.colliders.C_Parent_Tile_5ID97.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID97.collider:SetOffset(444.5,84.4167,585.5)
level05.colliders.C_Parent_Tile_5ID97.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_5ID97.collider:SetHalfLengths(0.3,6.30286,3.53553)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID97.collider)
level05.colliders.C_Parent_Tile_5ID98 = {}
level05.colliders.C_Parent_Tile_5ID98.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID98.collider:SetOffset(467.5,82.8532,576)
level05.colliders.C_Parent_Tile_5ID98.collider:SetZAxis(0.6,0,0.8)
level05.colliders.C_Parent_Tile_5ID98.collider:SetHalfLengths(0.3,7.60571,7.5)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID98.collider)
level05.colliders.C_Parent_Tile_5ID99 = {}
level05.colliders.C_Parent_Tile_5ID99.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID99.collider:SetOffset(494.5,76.0784,546.5)
level05.colliders.C_Parent_Tile_5ID99.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_5ID99.collider:SetHalfLengths(0.3,6.82401,3.53553)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID99.collider)
level05.colliders.C_Parent_Tile_5ID100 = {}
level05.colliders.C_Parent_Tile_5ID100.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID100.collider:SetOffset(490,74.2544,542)
level05.colliders.C_Parent_Tile_5ID100.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_5ID100.collider:SetHalfLengths(0.3,7.34514,2.82843)
level05.colliders.C_Parent_Tile_5ID90.collider:AddChild(level05.colliders.C_Parent_Tile_5ID100.collider)
level05.colliders.C_Parent_Tile_5ID101 = {}
level05.colliders.C_Parent_Tile_5ID101.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID101.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID101.collider:SetMinPos(432.829,52.0567,449.878)
level05.colliders.C_Parent_Tile_5ID101.collider:SetMaxPos(593.274,88.8955,613.247)
level05.colliders.C_Parent_Tile_5ID1.collider:AddChild(level05.colliders.C_Parent_Tile_5ID101.collider)
level05.colliders.C_Parent_Tile_5ID102 = {}
level05.colliders.C_Parent_Tile_5ID102.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID102.collider:SetOffset(591,58.3596,454.5)
level05.colliders.C_Parent_Tile_5ID102.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.C_Parent_Tile_5ID102.collider:SetHalfLengths(0.3,6.30286,4.92443)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID102.collider)
level05.colliders.C_Parent_Tile_5ID103 = {}
level05.colliders.C_Parent_Tile_5ID103.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID103.collider:SetOffset(567,66.9584,490.5)
level05.colliders.C_Parent_Tile_5ID103.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.C_Parent_Tile_5ID103.collider:SetHalfLengths(0.3,8.12685,4.92443)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID103.collider)
level05.colliders.C_Parent_Tile_5ID104 = {}
level05.colliders.C_Parent_Tile_5ID104.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID104.collider:SetOffset(538.5,71.1275,514)
level05.colliders.C_Parent_Tile_5ID104.collider:SetZAxis(-0.73994,0,-0.672673)
level05.colliders.C_Parent_Tile_5ID104.collider:SetHalfLengths(0.3,8.38743,7.43303)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID104.collider)
level05.colliders.C_Parent_Tile_5ID105 = {}
level05.colliders.C_Parent_Tile_5ID105.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID105.collider:SetOffset(445,83.1138,591.5)
level05.colliders.C_Parent_Tile_5ID105.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_5ID105.collider:SetHalfLengths(0.3,5.78171,2.5)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID105.collider)
level05.colliders.C_Parent_Tile_5ID106 = {}
level05.colliders.C_Parent_Tile_5ID106.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID106.collider:SetOffset(443,82.3321,596.5)
level05.colliders.C_Parent_Tile_5ID106.collider:SetZAxis(-0.624695,0,0.780869)
level05.colliders.C_Parent_Tile_5ID106.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID106.collider)
level05.colliders.C_Parent_Tile_5ID107 = {}
level05.colliders.C_Parent_Tile_5ID107.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID107.collider:SetOffset(440,80.7687,600)
level05.colliders.C_Parent_Tile_5ID107.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID107.collider:SetHalfLengths(0.3,5.26057,1.41421)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID107.collider)
level05.colliders.C_Parent_Tile_5ID108 = {}
level05.colliders.C_Parent_Tile_5ID108.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID108.collider:SetOffset(436,80.5081,602.5)
level05.colliders.C_Parent_Tile_5ID108.collider:SetZAxis(-0.894427,0,0.447214)
level05.colliders.C_Parent_Tile_5ID108.collider:SetHalfLengths(0.3,6.04228,3.3541)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID108.collider)
level05.colliders.C_Parent_Tile_5ID109 = {}
level05.colliders.C_Parent_Tile_5ID109.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID109.collider:SetOffset(439.5,79.4658,608.5)
level05.colliders.C_Parent_Tile_5ID109.collider:SetZAxis(0.822192,0,0.56921)
level05.colliders.C_Parent_Tile_5ID109.collider:SetHalfLengths(0.3,8.64799,7.90569)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID109.collider)
level05.colliders.C_Parent_Tile_5ID110 = {}
level05.colliders.C_Parent_Tile_5ID110.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID110.collider:SetOffset(499,80.2475,559.5)
level05.colliders.C_Parent_Tile_5ID110.collider:SetZAxis(0,0,-1)
level05.colliders.C_Parent_Tile_5ID110.collider:SetHalfLengths(0.3,6.824,3.5)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID110.collider)
level05.colliders.C_Parent_Tile_5ID111 = {}
level05.colliders.C_Parent_Tile_5ID111.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID111.collider:SetOffset(498,78.4235,552.5)
level05.colliders.C_Parent_Tile_5ID111.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.C_Parent_Tile_5ID111.collider:SetHalfLengths(0.3,7.34514,3.64005)
level05.colliders.C_Parent_Tile_5ID101.collider:AddChild(level05.colliders.C_Parent_Tile_5ID111.collider)
level05.colliders.C_Parent_Tile_5ID112 = {}
level05.colliders.C_Parent_Tile_5ID112.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID112.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID112.collider:SetMinPos(430,46.8453,458.866)
level05.colliders.C_Parent_Tile_5ID112.collider:SetMaxPos(640.3,106.093,640)
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
level05.colliders.C_Parent_Tile_5ID114.collider:SetZAxis(0.481919,0,0.876216)
level05.colliders.C_Parent_Tile_5ID114.collider:SetHalfLengths(0.3,12.5566,11.4127)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID114.collider)
level05.colliders.C_Parent_Tile_5ID115 = {}
level05.colliders.C_Parent_Tile_5ID115.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID115.collider:SetOffset(521,66.6978,507.5)
level05.colliders.C_Parent_Tile_5ID115.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.C_Parent_Tile_5ID115.collider:SetHalfLengths(0.3,6.04228,4.03113)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID115.collider)
level05.colliders.C_Parent_Tile_5ID116 = {}
level05.colliders.C_Parent_Tile_5ID116.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID116.collider:SetOffset(511,65.6555,506.5)
level05.colliders.C_Parent_Tile_5ID116.collider:SetZAxis(-0.996546,0,-0.0830455)
level05.colliders.C_Parent_Tile_5ID116.collider:SetHalfLengths(0.3,6.30286,6.0208)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID116.collider)
level05.colliders.C_Parent_Tile_5ID117 = {}
level05.colliders.C_Parent_Tile_5ID117.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID117.collider:SetOffset(431,84.1561,569)
level05.colliders.C_Parent_Tile_5ID117.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_5ID117.collider:SetHalfLengths(0.3,5.26057,1)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID117.collider)
level05.colliders.C_Parent_Tile_5ID118 = {}
level05.colliders.C_Parent_Tile_5ID118.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID118.collider:SetOffset(434.5,84.4167,570)
level05.colliders.C_Parent_Tile_5ID118.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.C_Parent_Tile_5ID118.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID118.collider)
level05.colliders.C_Parent_Tile_5ID119 = {}
level05.colliders.C_Parent_Tile_5ID119.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID119.collider:SetOffset(439,84.4167,573)
level05.colliders.C_Parent_Tile_5ID119.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID119.collider:SetHalfLengths(0.3,5,2.82843)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID119.collider)
level05.colliders.C_Parent_Tile_5ID120 = {}
level05.colliders.C_Parent_Tile_5ID120.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID120.collider:SetOffset(457,80.7687,557.5)
level05.colliders.C_Parent_Tile_5ID120.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_5ID120.collider:SetHalfLengths(0.3,5.78172,1.5)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID120.collider)
level05.colliders.C_Parent_Tile_5ID121 = {}
level05.colliders.C_Parent_Tile_5ID121.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID121.collider:SetOffset(460,81.5504,564.5)
level05.colliders.C_Parent_Tile_5ID121.collider:SetZAxis(0.478852,0,0.877896)
level05.colliders.C_Parent_Tile_5ID121.collider:SetHalfLengths(0.3,6.30285,6.26498)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID121.collider)
level05.colliders.C_Parent_Tile_5ID122 = {}
level05.colliders.C_Parent_Tile_5ID122.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID122.collider:SetOffset(484.5,71.9093,537.5)
level05.colliders.C_Parent_Tile_5ID122.collider:SetZAxis(-0.813733,0,-0.581238)
level05.colliders.C_Parent_Tile_5ID122.collider:SetHalfLengths(0.3,11.7748,4.30116)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID122.collider)
level05.colliders.C_Parent_Tile_5ID123 = {}
level05.colliders.C_Parent_Tile_5ID123.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID123.collider:SetOffset(477,65.1344,535.5)
level05.colliders.C_Parent_Tile_5ID123.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_5ID123.collider:SetHalfLengths(0.3,5.78172,4.03113)
level05.colliders.C_Parent_Tile_5ID113.collider:AddChild(level05.colliders.C_Parent_Tile_5ID123.collider)
level05.colliders.C_Parent_Tile_5ID124 = {}
level05.colliders.C_Parent_Tile_5ID124.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID124.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID124.collider:SetMinPos(445.806,53.099,458.866)
level05.colliders.C_Parent_Tile_5ID124.collider:SetMaxPos(601.285,91.5013,624.229)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID124.collider)
level05.colliders.C_Parent_Tile_5ID125 = {}
level05.colliders.C_Parent_Tile_5ID125.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID125.collider:SetOffset(595,59.6624,463)
level05.colliders.C_Parent_Tile_5ID125.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_5ID125.collider:SetHalfLengths(0.3,6.56343,4.47214)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID125.collider)
level05.colliders.C_Parent_Tile_5ID126 = {}
level05.colliders.C_Parent_Tile_5ID126.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID126.collider:SetOffset(599,61.2258,473)
level05.colliders.C_Parent_Tile_5ID126.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.C_Parent_Tile_5ID126.collider:SetHalfLengths(0.3,8.12685,6.32456)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID126.collider)
level05.colliders.C_Parent_Tile_5ID127 = {}
level05.colliders.C_Parent_Tile_5ID127.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID127.collider:SetOffset(572,70.0853,501)
level05.colliders.C_Parent_Tile_5ID127.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_5ID127.collider:SetHalfLengths(0.3,7.34515,6.7082)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID127.collider)
level05.colliders.C_Parent_Tile_5ID128 = {}
level05.colliders.C_Parent_Tile_5ID128.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID128.collider:SetOffset(548,74.2544,525)
level05.colliders.C_Parent_Tile_5ID128.collider:SetZAxis(-0.5547,0,-0.83205)
level05.colliders.C_Parent_Tile_5ID128.collider:SetHalfLengths(0.3,8.12685,7.2111)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID128.collider)
level05.colliders.C_Parent_Tile_5ID129 = {}
level05.colliders.C_Parent_Tile_5ID129.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID129.collider:SetOffset(452.5,83.1138,618.5)
level05.colliders.C_Parent_Tile_5ID129.collider:SetZAxis(0.763386,0,0.645942)
level05.colliders.C_Parent_Tile_5ID129.collider:SetHalfLengths(0.3,7.08458,8.51469)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID129.collider)
level05.colliders.C_Parent_Tile_5ID130 = {}
level05.colliders.C_Parent_Tile_5ID130.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID130.collider:SetOffset(474,85.459,583.5)
level05.colliders.C_Parent_Tile_5ID130.collider:SetZAxis(0.8,0,0.6)
level05.colliders.C_Parent_Tile_5ID130.collider:SetHalfLengths(0.3,5.26056,2.5)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID130.collider)
level05.colliders.C_Parent_Tile_5ID131 = {}
level05.colliders.C_Parent_Tile_5ID131.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID131.collider:SetOffset(479,85.1984,586.5)
level05.colliders.C_Parent_Tile_5ID131.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.C_Parent_Tile_5ID131.collider:SetHalfLengths(0.3,6.30286,3.3541)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID131.collider)
level05.colliders.C_Parent_Tile_5ID132 = {}
level05.colliders.C_Parent_Tile_5ID132.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID132.collider:SetOffset(490,83.635,582.5)
level05.colliders.C_Parent_Tile_5ID132.collider:SetZAxis(0.768221,0,-0.640184)
level05.colliders.C_Parent_Tile_5ID132.collider:SetHalfLengths(0.3,6.04229,3.90512)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID132.collider)
level05.colliders.C_Parent_Tile_5ID133 = {}
level05.colliders.C_Parent_Tile_5ID133.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID133.collider:SetOffset(496,82.3321,573.5)
level05.colliders.C_Parent_Tile_5ID133.collider:SetZAxis(0.371391,0,-0.928477)
level05.colliders.C_Parent_Tile_5ID133.collider:SetHalfLengths(0.3,5.78172,2.69258)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID133.collider)
level05.colliders.C_Parent_Tile_5ID134 = {}
level05.colliders.C_Parent_Tile_5ID134.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID134.collider:SetOffset(498,81.5504,567)
level05.colliders.C_Parent_Tile_5ID134.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.C_Parent_Tile_5ID134.collider:SetHalfLengths(0.3,6.30286,4.12311)
level05.colliders.C_Parent_Tile_5ID124.collider:AddChild(level05.colliders.C_Parent_Tile_5ID134.collider)
level05.colliders.C_Parent_Tile_5ID135 = {}
level05.colliders.C_Parent_Tile_5ID135.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID135.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID135.collider:SetMinPos(458.834,53.099,478.897)
level05.colliders.C_Parent_Tile_5ID135.collider:SetMaxPos(610.299,96.7127,639.124)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID135.collider)
level05.colliders.C_Parent_Tile_5ID136 = {}
level05.colliders.C_Parent_Tile_5ID136.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID136.collider:SetOffset(605,64.3527,490)
level05.colliders.C_Parent_Tile_5ID136.collider:SetZAxis(0.341743,0,0.939793)
level05.colliders.C_Parent_Tile_5ID136.collider:SetHalfLengths(0.3,11.2537,11.7047)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID136.collider)
level05.colliders.C_Parent_Tile_5ID137 = {}
level05.colliders.C_Parent_Tile_5ID137.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID137.collider:SetOffset(609.5,70.6064,508.5)
level05.colliders.C_Parent_Tile_5ID137.collider:SetZAxis(0.066519,0,0.997785)
level05.colliders.C_Parent_Tile_5ID137.collider:SetHalfLengths(0.3,7.86629,7.51665)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID137.collider)
level05.colliders.C_Parent_Tile_5ID138 = {}
level05.colliders.C_Parent_Tile_5ID138.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID138.collider:SetOffset(577,72.4304,521)
level05.colliders.C_Parent_Tile_5ID138.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_5ID138.collider:SetHalfLengths(0.3,10.2114,14.1421)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID138.collider)
level05.colliders.C_Parent_Tile_5ID139 = {}
level05.colliders.C_Parent_Tile_5ID139.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID139.collider:SetOffset(581.5,77.6418,552.5)
level05.colliders.C_Parent_Tile_5ID139.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_5ID139.collider:SetHalfLengths(0.3,10.2114,17.6777)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID139.collider)
level05.colliders.C_Parent_Tile_5ID140 = {}
level05.colliders.C_Parent_Tile_5ID140.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID140.collider:SetOffset(560,85.459,550)
level05.colliders.C_Parent_Tile_5ID140.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.C_Parent_Tile_5ID140.collider:SetHalfLengths(0.3,11.2537,7.28011)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID140.collider)
level05.colliders.C_Parent_Tile_5ID141 = {}
level05.colliders.C_Parent_Tile_5ID141.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID141.collider:SetOffset(555,79.2053,537)
level05.colliders.C_Parent_Tile_5ID141.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_5ID141.collider:SetHalfLengths(0.3,9.95086,6.7082)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID141.collider)
level05.colliders.C_Parent_Tile_5ID142 = {}
level05.colliders.C_Parent_Tile_5ID142.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID142.collider:SetOffset(462,85.1984,626)
level05.colliders.C_Parent_Tile_5ID142.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_5ID142.collider:SetHalfLengths(0.3,5,3.60555)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID142.collider)
level05.colliders.C_Parent_Tile_5ID143 = {}
level05.colliders.C_Parent_Tile_5ID143.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID143.collider:SetOffset(467.5,85.1984,633.5)
level05.colliders.C_Parent_Tile_5ID143.collider:SetZAxis(0.413803,0,0.910366)
level05.colliders.C_Parent_Tile_5ID143.collider:SetHalfLengths(0.3,5.78171,6.04152)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID143.collider)
level05.colliders.C_Parent_Tile_5ID144 = {}
level05.colliders.C_Parent_Tile_5ID144.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID144.collider:SetOffset(484.5,83.8955,586.5)
level05.colliders.C_Parent_Tile_5ID144.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.C_Parent_Tile_5ID144.collider:SetHalfLengths(0.3,5.26057,2.91548)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID144.collider)
level05.colliders.C_Parent_Tile_5ID145 = {}
level05.colliders.C_Parent_Tile_5ID145.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID145.collider:SetOffset(494,82.5927,578)
level05.colliders.C_Parent_Tile_5ID145.collider:SetZAxis(0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_5ID145.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.C_Parent_Tile_5ID135.collider:AddChild(level05.colliders.C_Parent_Tile_5ID145.collider)
level05.colliders.C_Parent_Tile_5ID146 = {}
level05.colliders.C_Parent_Tile_5ID146.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID146.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID146.collider:SetMinPos(561.762,66.1275,516)
level05.colliders.C_Parent_Tile_5ID146.collider:SetMaxPos(615.291,106.093,589.073)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID146.collider)
level05.colliders.C_Parent_Tile_5ID147 = {}
level05.colliders.C_Parent_Tile_5ID147.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID147.collider:SetOffset(610,73.4727,525)
level05.colliders.C_Parent_Tile_5ID147.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_5ID147.collider:SetHalfLengths(0.3,7.34514,9)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID147.collider)
level05.colliders.C_Parent_Tile_5ID148 = {}
level05.colliders.C_Parent_Tile_5ID148.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID148.collider:SetOffset(611,75.8178,546)
level05.colliders.C_Parent_Tile_5ID148.collider:SetZAxis(0.0830455,0,0.996546)
level05.colliders.C_Parent_Tile_5ID148.collider:SetHalfLengths(0.3,9.69028,12.0416)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID148.collider)
level05.colliders.C_Parent_Tile_5ID149 = {}
level05.colliders.C_Parent_Tile_5ID149.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID149.collider:SetOffset(613,80.5081,571.5)
level05.colliders.C_Parent_Tile_5ID149.collider:SetZAxis(0.0738717,0,0.997268)
level05.colliders.C_Parent_Tile_5ID149.collider:SetHalfLengths(0.3,9.42972,13.537)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID149.collider)
level05.colliders.C_Parent_Tile_5ID150 = {}
level05.colliders.C_Parent_Tile_5ID150.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID150.collider:SetOffset(614.5,84.9378,587)
level05.colliders.C_Parent_Tile_5ID150.collider:SetZAxis(0.242536,0,0.970143)
level05.colliders.C_Parent_Tile_5ID150.collider:SetHalfLengths(0.3,5.52113,2.06155)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID150.collider)
level05.colliders.C_Parent_Tile_5ID151 = {}
level05.colliders.C_Parent_Tile_5ID151.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID151.collider:SetOffset(582.5,82.8532,573.5)
level05.colliders.C_Parent_Tile_5ID151.collider:SetZAxis(-0.393919,0,0.919145)
level05.colliders.C_Parent_Tile_5ID151.collider:SetHalfLengths(0.3,7.08458,3.80789)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID151.collider)
level05.colliders.C_Parent_Tile_5ID152 = {}
level05.colliders.C_Parent_Tile_5ID152.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID152.collider:SetOffset(579.5,84.9378,578)
level05.colliders.C_Parent_Tile_5ID152.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_5ID152.collider:SetHalfLengths(0.3,6.04228,1.80278)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID152.collider)
level05.colliders.C_Parent_Tile_5ID153 = {}
level05.colliders.C_Parent_Tile_5ID153.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID153.collider:SetOffset(575.5,85.9801,579)
level05.colliders.C_Parent_Tile_5ID153.collider:SetZAxis(-1,0,0)
level05.colliders.C_Parent_Tile_5ID153.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID153.collider)
level05.colliders.C_Parent_Tile_5ID154 = {}
level05.colliders.C_Parent_Tile_5ID154.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID154.collider:SetOffset(572,85.7195,578)
level05.colliders.C_Parent_Tile_5ID154.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_5ID154.collider:SetHalfLengths(0.3,7.08457,1.41421)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID154.collider)
level05.colliders.C_Parent_Tile_5ID155 = {}
level05.colliders.C_Parent_Tile_5ID155.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID155.collider:SetOffset(571.5,87.8041,573.5)
level05.colliders.C_Parent_Tile_5ID155.collider:SetZAxis(0.141421,0,-0.98995)
level05.colliders.C_Parent_Tile_5ID155.collider:SetHalfLengths(0.3,10.472,3.53553)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID155.collider)
level05.colliders.C_Parent_Tile_5ID156 = {}
level05.colliders.C_Parent_Tile_5ID156.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID156.collider:SetOffset(567,93.2761,563.5)
level05.colliders.C_Parent_Tile_5ID156.collider:SetZAxis(-0.609711,0,-0.792624)
level05.colliders.C_Parent_Tile_5ID156.collider:SetHalfLengths(0.3,12.8171,8.20061)
level05.colliders.C_Parent_Tile_5ID146.collider:AddChild(level05.colliders.C_Parent_Tile_5ID156.collider)
level05.colliders.C_Parent_Tile_5ID157 = {}
level05.colliders.C_Parent_Tile_5ID157.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID157.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID157.collider:SetMinPos(576.7,79.6772,588.866)
level05.colliders.C_Parent_Tile_5ID157.collider:SetMaxPos(640,92.0224,640)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID157.collider)
level05.colliders.C_Parent_Tile_5ID158 = {}
level05.colliders.C_Parent_Tile_5ID158.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID158.collider:SetOffset(615.5,85.459,590)
level05.colliders.C_Parent_Tile_5ID158.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_5ID158.collider:SetHalfLengths(0.3,5.78172,1.11803)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID158.collider)
level05.colliders.C_Parent_Tile_5ID159 = {}
level05.colliders.C_Parent_Tile_5ID159.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID159.collider:SetOffset(617,86.2407,591.5)
level05.colliders.C_Parent_Tile_5ID159.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.C_Parent_Tile_5ID159.collider:SetHalfLengths(0.3,5.52114,1.11803)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID159.collider)
level05.colliders.C_Parent_Tile_5ID160 = {}
level05.colliders.C_Parent_Tile_5ID160.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID160.collider:SetOffset(629,86.7618,592)
level05.colliders.C_Parent_Tile_5ID160.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_5ID160.collider:SetHalfLengths(0.3,5.26057,11)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID160.collider)
level05.colliders.C_Parent_Tile_5ID161 = {}
level05.colliders.C_Parent_Tile_5ID161.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID161.collider:SetOffset(602.5,84.9378,623)
level05.colliders.C_Parent_Tile_5ID161.collider:SetZAxis(-0.928477,0,-0.371391)
level05.colliders.C_Parent_Tile_5ID161.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID161.collider)
level05.colliders.C_Parent_Tile_5ID162 = {}
level05.colliders.C_Parent_Tile_5ID162.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID162.collider:SetOffset(596,84.9378,622.5)
level05.colliders.C_Parent_Tile_5ID162.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_5ID162.collider:SetHalfLengths(0.3,5,4.03113)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID162.collider)
level05.colliders.C_Parent_Tile_5ID163 = {}
level05.colliders.C_Parent_Tile_5ID163.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID163.collider:SetOffset(588.5,84.9378,624.5)
level05.colliders.C_Parent_Tile_5ID163.collider:SetZAxis(-0.919145,0,0.393919)
level05.colliders.C_Parent_Tile_5ID163.collider:SetHalfLengths(0.3,5,3.80789)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID163.collider)
level05.colliders.C_Parent_Tile_5ID164 = {}
level05.colliders.C_Parent_Tile_5ID164.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID164.collider:SetOffset(582.5,84.9378,628)
level05.colliders.C_Parent_Tile_5ID164.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.C_Parent_Tile_5ID164.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID164.collider)
level05.colliders.C_Parent_Tile_5ID165 = {}
level05.colliders.C_Parent_Tile_5ID165.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID165.collider:SetOffset(579,84.9378,632.5)
level05.colliders.C_Parent_Tile_5ID165.collider:SetZAxis(-0.371391,0,0.928477)
level05.colliders.C_Parent_Tile_5ID165.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID165.collider)
level05.colliders.C_Parent_Tile_5ID166 = {}
level05.colliders.C_Parent_Tile_5ID166.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID166.collider:SetOffset(577.5,84.9378,637)
level05.colliders.C_Parent_Tile_5ID166.collider:SetZAxis(-0.242536,0,0.970143)
level05.colliders.C_Parent_Tile_5ID166.collider:SetHalfLengths(0.3,5,2.06155)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID166.collider)
level05.colliders.C_Parent_Tile_5ID167 = {}
level05.colliders.C_Parent_Tile_5ID167.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID167.collider:SetOffset(577,84.9378,639.5)
level05.colliders.C_Parent_Tile_5ID167.collider:SetZAxis(0,0,-1)
level05.colliders.C_Parent_Tile_5ID167.collider:SetHalfLengths(0.3,5,0.5)
level05.colliders.C_Parent_Tile_5ID157.collider:AddChild(level05.colliders.C_Parent_Tile_5ID167.collider)
level05.colliders.C_Parent_Tile_5ID168 = {}
level05.colliders.C_Parent_Tile_5ID168.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID168.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_5ID168.collider:SetMinPos(604.813,79.9378,592)
level05.colliders.C_Parent_Tile_5ID168.collider:SetMaxPos(640.3,92.5435,639.3)
level05.colliders.C_Parent_Tile_5ID112.collider:AddChild(level05.colliders.C_Parent_Tile_5ID168.collider)
level05.colliders.C_Parent_Tile_5ID169 = {}
level05.colliders.C_Parent_Tile_5ID169.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID169.collider:SetOffset(640,86.5012,608)
level05.colliders.C_Parent_Tile_5ID169.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_5ID169.collider:SetHalfLengths(0.3,5,16)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID169.collider)
level05.colliders.C_Parent_Tile_5ID170 = {}
level05.colliders.C_Parent_Tile_5ID170.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID170.collider:SetOffset(638,86.5012,626)
level05.colliders.C_Parent_Tile_5ID170.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID170.collider:SetHalfLengths(0.3,5.52114,2.82843)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID170.collider)
level05.colliders.C_Parent_Tile_5ID171 = {}
level05.colliders.C_Parent_Tile_5ID171.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID171.collider:SetOffset(634,87.0224,630)
level05.colliders.C_Parent_Tile_5ID171.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID171.collider:SetHalfLengths(0.3,5.26057,2.82843)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID171.collider)
level05.colliders.C_Parent_Tile_5ID172 = {}
level05.colliders.C_Parent_Tile_5ID172.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID172.collider:SetOffset(628.5,86.7618,635.5)
level05.colliders.C_Parent_Tile_5ID172.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_5ID172.collider:SetHalfLengths(0.3,5.26057,4.94975)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID172.collider)
level05.colliders.C_Parent_Tile_5ID173 = {}
level05.colliders.C_Parent_Tile_5ID173.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID173.collider:SetOffset(619.5,86.5012,639)
level05.colliders.C_Parent_Tile_5ID173.collider:SetZAxis(-1,0,0)
level05.colliders.C_Parent_Tile_5ID173.collider:SetHalfLengths(0.3,6.04229,5.5)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID173.collider)
level05.colliders.C_Parent_Tile_5ID174 = {}
level05.colliders.C_Parent_Tile_5ID174.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID174.collider:SetOffset(613.5,85.459,636.5)
level05.colliders.C_Parent_Tile_5ID174.collider:SetZAxis(-0.196116,0,-0.980581)
level05.colliders.C_Parent_Tile_5ID174.collider:SetHalfLengths(0.3,5.26056,2.54951)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID174.collider)
level05.colliders.C_Parent_Tile_5ID175 = {}
level05.colliders.C_Parent_Tile_5ID175.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID175.collider:SetOffset(611.5,85.1984,631)
level05.colliders.C_Parent_Tile_5ID175.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_5ID175.collider:SetHalfLengths(0.3,5.26057,3.3541)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID175.collider)
level05.colliders.C_Parent_Tile_5ID176 = {}
level05.colliders.C_Parent_Tile_5ID176.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_5ID176.collider:SetOffset(607.5,84.9378,626)
level05.colliders.C_Parent_Tile_5ID176.collider:SetZAxis(-0.780869,0,-0.624695)
level05.colliders.C_Parent_Tile_5ID176.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.C_Parent_Tile_5ID168.collider:AddChild(level05.colliders.C_Parent_Tile_5ID176.collider)
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
level05.colliders.Tile5_wallNr86ID = nil
level05.colliders.Tile5_wallNr88ID = nil
level05.colliders.Tile5_wallNr89ID = nil
level05.colliders.Tile5_wallNr90ID = nil
level05.colliders.Tile5_wallNr91ID = nil
level05.colliders.Tile5_wallNr94ID = nil
level05.colliders.Tile5_wallNr95ID = nil
level05.colliders.Tile5_wallNr96ID = nil
level05.colliders.Tile5_wallNr97ID = nil
level05.colliders.Tile5_wallNr98ID = nil
level05.colliders.Tile5_wallNr99ID = nil
level05.colliders.Tile5_wallNr100ID = nil
level05.colliders.Tile5_wallNr101ID = nil
level05.colliders.Tile5_wallNr102ID = nil
level05.colliders.Tile5_wallNr103ID = nil
level05.colliders.Tile5_wallNr106ID = nil
level05.colliders.Tile5_wallNr107ID = nil
level05.colliders.Tile5_wallNr108ID = nil
level05.colliders.Tile5_wallNr109ID = nil
level05.colliders.Tile5_wallNr110ID = nil
level05.colliders.Tile5_wallNr111ID = nil
level05.colliders.Tile5_wallNr112ID = nil
level05.colliders.Tile5_wallNr113ID = nil
level05.colliders.Tile5_wallNr114ID = nil
level05.colliders.Tile5_wallNr115ID = nil
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
level05.colliders.Tile5_wallNr130ID = nil
level05.colliders.Tile5_wallNr131ID = nil
level05.colliders.Tile5_wallNr132ID = nil
level05.colliders.Tile5_wallNr133ID = nil
level05.colliders.Tile5_wallNr134ID = nil
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
level05.colliders.Tile5_wallNr87ID = nil
level05.colliders.Tile5_wallNr92ID = nil
level05.colliders.Tile5_wallNr104ID = nil
level05.colliders.Tile5_wallNr105ID = nil
level05.colliders.Tile5_wallNr156ID = nil
level05.colliders.Tile5_wallNr158ID = nil
Gear.UnbindInstance(level05.props.CrystalID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.CrystalID = nil
Gear.UnbindInstance(level05.props.Crystal1ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal1ID = nil
Gear.UnbindInstance(level05.props.Crystal2ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal2ID = nil
Gear.UnbindInstance(level05.props.Crystal3ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal3ID = nil
Gear.UnbindInstance(level05.props.Crystal4ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal4ID = nil
Gear.UnbindInstance(level05.props.Crystal5ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal5ID = nil
Gear.UnbindInstance(level05.props.Crystal6ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal6ID = nil
Gear.UnbindInstance(level05.props.Crystal7ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal7ID = nil
Gear.UnbindInstance(level05.props.Crystal8ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal8ID = nil
Gear.UnbindInstance(level05.props.Crystal9ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal9ID = nil
Gear.UnbindInstance(level05.props.Crystal10ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal10ID = nil
Gear.UnbindInstance(level05.props.Crystal11ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal11ID = nil
Gear.UnbindInstance(level05.props.Crystal12ID.transformID)
Assets.UnloadModel('Models/ice_crystal.model')
level05.props.Crystal12ID = nil
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
level05.colliders.C_Parent_Tile_5ID = nil
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
level06.props.tile6ID = {}
level06.props.t6s1ID = {}
level06.props.t6s1ID.model = Assets.LoadModel('Models/tile6_s1.model')
level06.props.t6s1ID.transformID = Gear.BindStaticInstance(level06.props.t6s1ID.model)
Transform.SetPosition(level06.props.t6s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s1ID.transformID, {x=0, y=0, z=0})
level06.props.t6s2ID = {}
level06.props.t6s2ID.model = Assets.LoadModel('Models/tile6_s2.model')
level06.props.t6s2ID.transformID = Gear.BindStaticInstance(level06.props.t6s2ID.model)
Transform.SetPosition(level06.props.t6s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s2ID.transformID, {x=0, y=0, z=0})
level06.props.t6s7ID = {}
level06.props.t6s7ID.model = Assets.LoadModel('Models/tile6_s7.model')
level06.props.t6s7ID.transformID = Gear.BindStaticInstance(level06.props.t6s7ID.model)
Transform.SetPosition(level06.props.t6s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s7ID.transformID, {x=0, y=0, z=0})
level06.props.t6s10ID = {}
level06.props.t6s10ID.model = Assets.LoadModel('Models/tile6_s10.model')
level06.props.t6s10ID.transformID = Gear.BindStaticInstance(level06.props.t6s10ID.model)
Transform.SetPosition(level06.props.t6s10ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s10ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s10ID.transformID, {x=0, y=0, z=0})
level06.props.t6s12ID = {}
level06.props.t6s12ID.model = Assets.LoadModel('Models/tile6_s12.model')
level06.props.t6s12ID.transformID = Gear.BindStaticInstance(level06.props.t6s12ID.model)
Transform.SetPosition(level06.props.t6s12ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s12ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s12ID.transformID, {x=0, y=0, z=0})
level06.props.t6s13ID = {}
level06.props.t6s13ID.model = Assets.LoadModel('Models/tile6_s13.model')
level06.props.t6s13ID.transformID = Gear.BindStaticInstance(level06.props.t6s13ID.model)
Transform.SetPosition(level06.props.t6s13ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s13ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s13ID.transformID, {x=0, y=0, z=0})
level06.colliders.C_Parent_Tile_6ID = {}
level06.colliders.C_Parent_Tile_6ID.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID.collider:SetMinPos(383.7,63.2002,639.841)
level06.colliders.C_Parent_Tile_6ID.collider:SetMaxPos(607.234,111.83,738.3)
level06.colliders.C_Parent_Tile_6ID.collider:SetPos(0,0,0)
level06.colliders.C_Parent_Tile_6ID1 = {}
level06.colliders.C_Parent_Tile_6ID1.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID1.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID1.collider:SetMinPos(383.7,63.2002,639.841)
level06.colliders.C_Parent_Tile_6ID1.collider:SetMaxPos(475.296,111.83,716)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID1.collider)
level06.colliders.C_Parent_Tile_6ID2 = {}
level06.colliders.C_Parent_Tile_6ID2.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID2.collider:SetOffset(386.5,106.148,703.5)
level06.colliders.C_Parent_Tile_6ID2.collider:SetZAxis(-0.857493,0,-0.514496)
level06.colliders.C_Parent_Tile_6ID2.collider:SetHalfLengths(0.3,5.3411,2.91548)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID2.collider)
level06.colliders.C_Parent_Tile_6ID3 = {}
level06.colliders.C_Parent_Tile_6ID3.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID3.collider:SetOffset(472.5,85.0848,644)
level06.colliders.C_Parent_Tile_6ID3.collider:SetZAxis(0.529999,0,0.847998)
level06.colliders.C_Parent_Tile_6ID3.collider:SetHalfLengths(0.3,5,4.71699)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID3.collider)
level06.colliders.C_Parent_Tile_6ID4 = {}
level06.colliders.C_Parent_Tile_6ID4.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID4.collider:SetOffset(474.5,85.0848,651)
level06.colliders.C_Parent_Tile_6ID4.collider:SetZAxis(-0.164399,0,0.986394)
level06.colliders.C_Parent_Tile_6ID4.collider:SetHalfLengths(0.3,5,3.04138)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID4.collider)
level06.colliders.C_Parent_Tile_6ID5 = {}
level06.colliders.C_Parent_Tile_6ID5.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID5.collider:SetOffset(473,85.0848,656.5)
level06.colliders.C_Parent_Tile_6ID5.collider:SetZAxis(-0.371391,0,0.928477)
level06.colliders.C_Parent_Tile_6ID5.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID5.collider)
level06.colliders.C_Parent_Tile_6ID6 = {}
level06.colliders.C_Parent_Tile_6ID6.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID6.collider:SetOffset(466,85.0848,663.5)
level06.colliders.C_Parent_Tile_6ID6.collider:SetZAxis(-0.8,0,0.6)
level06.colliders.C_Parent_Tile_6ID6.collider:SetHalfLengths(0.3,5,7.5)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID6.collider)
level06.colliders.C_Parent_Tile_6ID7 = {}
level06.colliders.C_Parent_Tile_6ID7.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID7.collider:SetOffset(464.5,85.0848,674.5)
level06.colliders.C_Parent_Tile_6ID7.collider:SetZAxis(0.56921,0,0.822192)
level06.colliders.C_Parent_Tile_6ID7.collider:SetHalfLengths(0.3,5,7.90569)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID7.collider)
level06.colliders.C_Parent_Tile_6ID8 = {}
level06.colliders.C_Parent_Tile_6ID8.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID8.collider:SetOffset(422.5,85.1701,708)
level06.colliders.C_Parent_Tile_6ID8.collider:SetZAxis(-0.998542,0,-0.0539753)
level06.colliders.C_Parent_Tile_6ID8.collider:SetHalfLengths(0.3,21.9699,18.527)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID8.collider)
level06.colliders.C_Parent_Tile_6ID9 = {}
level06.colliders.C_Parent_Tile_6ID9.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID9.collider:SetOffset(384,106.063,714.5)
level06.colliders.C_Parent_Tile_6ID9.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_6ID9.collider:SetHalfLengths(0.3,5.25583,1.5)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID9.collider)
level06.colliders.C_Parent_Tile_6ID10 = {}
level06.colliders.C_Parent_Tile_6ID10.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID10.collider:SetOffset(386.5,106.318,713)
level06.colliders.C_Parent_Tile_6ID10.collider:SetZAxis(1,0,0)
level06.colliders.C_Parent_Tile_6ID10.collider:SetHalfLengths(0.3,5.17055,2.5)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID10.collider)
level06.colliders.C_Parent_Tile_6ID11 = {}
level06.colliders.C_Parent_Tile_6ID11.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID11.collider:SetOffset(389,106.489,709)
level06.colliders.C_Parent_Tile_6ID11.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_6ID11.collider:SetHalfLengths(0.3,5.3411,4)
level06.colliders.C_Parent_Tile_6ID1.collider:AddChild(level06.colliders.C_Parent_Tile_6ID11.collider)
level06.colliders.C_Parent_Tile_6ID12 = {}
level06.colliders.C_Parent_Tile_6ID12.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID12.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID12.collider:SetMinPos(383.7,79.6584,680.979)
level06.colliders.C_Parent_Tile_6ID12.collider:SetMaxPos(470.299,111.063,733.3)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID12.collider)
level06.colliders.C_Parent_Tile_6ID13 = {}
level06.colliders.C_Parent_Tile_6ID13.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID13.collider:SetOffset(469.5,85.0848,688)
level06.colliders.C_Parent_Tile_6ID13.collider:SetZAxis(0.071247,0,0.997459)
level06.colliders.C_Parent_Tile_6ID13.collider:SetHalfLengths(0.3,5.42638,7.01783)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID13.collider)
level06.colliders.C_Parent_Tile_6ID14 = {}
level06.colliders.C_Parent_Tile_6ID14.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID14.collider:SetOffset(468.5,85.5112,699.5)
level06.colliders.C_Parent_Tile_6ID14.collider:SetZAxis(-0.316228,0,0.948683)
level06.colliders.C_Parent_Tile_6ID14.collider:SetHalfLengths(0.3,5.08527,4.74342)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID14.collider)
level06.colliders.C_Parent_Tile_6ID15 = {}
level06.colliders.C_Parent_Tile_6ID15.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID15.collider:SetOffset(451.5,85.4259,708)
level06.colliders.C_Parent_Tile_6ID15.collider:SetZAxis(-0.995496,0,0.0948091)
level06.colliders.C_Parent_Tile_6ID15.collider:SetHalfLengths(0.3,5.25583,10.5475)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID15.collider)
level06.colliders.C_Parent_Tile_6ID16 = {}
level06.colliders.C_Parent_Tile_6ID16.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID16.collider:SetOffset(403,102.14,708)
level06.colliders.C_Parent_Tile_6ID16.collider:SetZAxis(-0.707107,0,0.707107)
level06.colliders.C_Parent_Tile_6ID16.collider:SetHalfLengths(0.3,6.36442,1.41421)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID16.collider)
level06.colliders.C_Parent_Tile_6ID17 = {}
level06.colliders.C_Parent_Tile_6ID17.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID17.collider:SetOffset(402,103.504,712)
level06.colliders.C_Parent_Tile_6ID17.collider:SetZAxis(0,0,1)
level06.colliders.C_Parent_Tile_6ID17.collider:SetHalfLengths(0.3,5.51165,3)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID17.collider)
level06.colliders.C_Parent_Tile_6ID18 = {}
level06.colliders.C_Parent_Tile_6ID18.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID18.collider:SetOffset(395.5,103.078,716)
level06.colliders.C_Parent_Tile_6ID18.collider:SetZAxis(-1,0,0)
level06.colliders.C_Parent_Tile_6ID18.collider:SetHalfLengths(0.3,7.98466,11.5)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID18.collider)
level06.colliders.C_Parent_Tile_6ID19 = {}
level06.colliders.C_Parent_Tile_6ID19.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID19.collider:SetOffset(403,104.613,733)
level06.colliders.C_Parent_Tile_6ID19.collider:SetZAxis(-1,0,0)
level06.colliders.C_Parent_Tile_6ID19.collider:SetHalfLengths(0.3,5.17055,1)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID19.collider)
level06.colliders.C_Parent_Tile_6ID20 = {}
level06.colliders.C_Parent_Tile_6ID20.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID20.collider:SetOffset(402,104.442,730.5)
level06.colliders.C_Parent_Tile_6ID20.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_6ID20.collider:SetHalfLengths(0.3,5.42638,2.5)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID20.collider)
level06.colliders.C_Parent_Tile_6ID21 = {}
level06.colliders.C_Parent_Tile_6ID21.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID21.collider:SetOffset(395,104.954,726.5)
level06.colliders.C_Parent_Tile_6ID21.collider:SetZAxis(0.99083,0,0.135113)
level06.colliders.C_Parent_Tile_6ID21.collider:SetHalfLengths(0.3,5.42638,11.1018)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID21.collider)
level06.colliders.C_Parent_Tile_6ID22 = {}
level06.colliders.C_Parent_Tile_6ID22.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID22.collider:SetOffset(384,104.954,728.5)
level06.colliders.C_Parent_Tile_6ID22.collider:SetZAxis(0,0,1)
level06.colliders.C_Parent_Tile_6ID22.collider:SetHalfLengths(0.3,5.93803,3.5)
level06.colliders.C_Parent_Tile_6ID12.collider:AddChild(level06.colliders.C_Parent_Tile_6ID22.collider)
level06.colliders.C_Parent_Tile_6ID23 = {}
level06.colliders.C_Parent_Tile_6ID23.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID23.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID23.collider:SetMinPos(403.7,66.1848,685.723)
level06.colliders.C_Parent_Tile_6ID23.collider:SetMaxPos(532.115,110.295,738.3)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID23.collider)
level06.colliders.C_Parent_Tile_6ID24 = {}
level06.colliders.C_Parent_Tile_6ID24.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID24.collider:SetOffset(464.5,85.4259,705.5)
level06.colliders.C_Parent_Tile_6ID24.collider:SetZAxis(-0.857493,0,0.514496)
level06.colliders.C_Parent_Tile_6ID24.collider:SetHalfLengths(0.3,5,2.91548)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID24.collider)
level06.colliders.C_Parent_Tile_6ID25 = {}
level06.colliders.C_Parent_Tile_6ID25.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID25.collider:SetOffset(508.5,85.0848,695.5)
level06.colliders.C_Parent_Tile_6ID25.collider:SetZAxis(-0.98995,0,0.141421)
level06.colliders.C_Parent_Tile_6ID25.collider:SetHalfLengths(0.3,5,3.53553)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID25.collider)
level06.colliders.C_Parent_Tile_6ID26 = {}
level06.colliders.C_Parent_Tile_6ID26.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID26.collider:SetOffset(502.5,85.0848,697)
level06.colliders.C_Parent_Tile_6ID26.collider:SetZAxis(-0.928477,0,0.371391)
level06.colliders.C_Parent_Tile_6ID26.collider:SetHalfLengths(0.3,5.93803,2.69258)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID26.collider)
level06.colliders.C_Parent_Tile_6ID27 = {}
level06.colliders.C_Parent_Tile_6ID27.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID27.collider:SetOffset(496,86.0228,709)
level06.colliders.C_Parent_Tile_6ID27.collider:SetZAxis(-0.341743,0,0.939793)
level06.colliders.C_Parent_Tile_6ID27.collider:SetHalfLengths(0.3,5.08527,11.7047)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID27.collider)
level06.colliders.C_Parent_Tile_6ID28 = {}
level06.colliders.C_Parent_Tile_6ID28.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID28.collider:SetOffset(480,85.9375,727.5)
level06.colliders.C_Parent_Tile_6ID28.collider:SetZAxis(-0.847998,0,0.529999)
level06.colliders.C_Parent_Tile_6ID28.collider:SetHalfLengths(0.3,5.3411,14.151)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID28.collider)
level06.colliders.C_Parent_Tile_6ID29 = {}
level06.colliders.C_Parent_Tile_6ID29.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID29.collider:SetOffset(448,86.6197,738)
level06.colliders.C_Parent_Tile_6ID29.collider:SetZAxis(-1,0,0)
level06.colliders.C_Parent_Tile_6ID29.collider:SetHalfLengths(0.3,6.44968,8)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID29.collider)
level06.colliders.C_Parent_Tile_6ID30 = {}
level06.colliders.C_Parent_Tile_6ID30.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID30.collider:SetOffset(422,88.0694,737)
level06.colliders.C_Parent_Tile_6ID30.collider:SetZAxis(-0.99846,0,-0.05547)
level06.colliders.C_Parent_Tile_6ID30.collider:SetHalfLengths(0.3,21.8846,18.0278)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID30.collider)
level06.colliders.C_Parent_Tile_6ID31 = {}
level06.colliders.C_Parent_Tile_6ID31.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID31.collider:SetOffset(404,104.954,734.5)
level06.colliders.C_Parent_Tile_6ID31.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_6ID31.collider:SetHalfLengths(0.3,5.3411,1.5)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID31.collider)
level06.colliders.C_Parent_Tile_6ID32 = {}
level06.colliders.C_Parent_Tile_6ID32.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID32.collider:SetOffset(526,86.6392,688.5)
level06.colliders.C_Parent_Tile_6ID32.collider:SetZAxis(-0.923077,0,0.384615)
level06.colliders.C_Parent_Tile_6ID32.collider:SetHalfLengths(0.3,5.19201,6.5)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID32.collider)
level06.colliders.C_Parent_Tile_6ID33 = {}
level06.colliders.C_Parent_Tile_6ID33.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID33.collider:SetOffset(516,86.4472,693)
level06.colliders.C_Parent_Tile_6ID33.collider:SetZAxis(-0.894427,0,0.447214)
level06.colliders.C_Parent_Tile_6ID33.collider:SetHalfLengths(0.3,7.20815,4.47214)
level06.colliders.C_Parent_Tile_6ID23.collider:AddChild(level06.colliders.C_Parent_Tile_6ID33.collider)
level06.colliders.C_Parent_Tile_6ID34 = {}
level06.colliders.C_Parent_Tile_6ID34.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID34.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID34.collider:SetMinPos(455.927,79.9111,640)
level06.colliders.C_Parent_Tile_6ID34.collider:SetMaxPos(591.111,92.0232,738.291)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID34.collider)
level06.colliders.C_Parent_Tile_6ID35 = {}
level06.colliders.C_Parent_Tile_6ID35.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID35.collider:SetOffset(512,85.0848,702.5)
level06.colliders.C_Parent_Tile_6ID35.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_6ID35.collider:SetHalfLengths(0.3,5,0.5)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID35.collider)
level06.colliders.C_Parent_Tile_6ID36 = {}
level06.colliders.C_Parent_Tile_6ID36.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID36.collider:SetOffset(462,86.2786,736.5)
level06.colliders.C_Parent_Tile_6ID36.collider:SetZAxis(-0.970143,0,0.242536)
level06.colliders.C_Parent_Tile_6ID36.collider:SetHalfLengths(0.3,5.3411,6.18466)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID36.collider)
level06.colliders.C_Parent_Tile_6ID37 = {}
level06.colliders.C_Parent_Tile_6ID37.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID37.collider:SetOffset(577,85.1031,642)
level06.colliders.C_Parent_Tile_6ID37.collider:SetZAxis(0,0,1)
level06.colliders.C_Parent_Tile_6ID37.collider:SetHalfLengths(0.3,5,2)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID37.collider)
level06.colliders.C_Parent_Tile_6ID38 = {}
level06.colliders.C_Parent_Tile_6ID38.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID38.collider:SetOffset(578,85.1031,646.5)
level06.colliders.C_Parent_Tile_6ID38.collider:SetZAxis(0.371391,0,0.928477)
level06.colliders.C_Parent_Tile_6ID38.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID38.collider)
level06.colliders.C_Parent_Tile_6ID39 = {}
level06.colliders.C_Parent_Tile_6ID39.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID39.collider:SetOffset(580.5,85.1031,651)
level06.colliders.C_Parent_Tile_6ID39.collider:SetZAxis(0.6,0,0.8)
level06.colliders.C_Parent_Tile_6ID39.collider:SetHalfLengths(0.3,5,2.5)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID39.collider)
level06.colliders.C_Parent_Tile_6ID40 = {}
level06.colliders.C_Parent_Tile_6ID40.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID40.collider:SetOffset(584,85.1031,654.5)
level06.colliders.C_Parent_Tile_6ID40.collider:SetZAxis(0.8,0,0.6)
level06.colliders.C_Parent_Tile_6ID40.collider:SetHalfLengths(0.3,5.096,2.5)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID40.collider)
level06.colliders.C_Parent_Tile_6ID41 = {}
level06.colliders.C_Parent_Tile_6ID41.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID41.collider:SetOffset(588.5,85.1991,657)
level06.colliders.C_Parent_Tile_6ID41.collider:SetZAxis(0.928477,0,0.371391)
level06.colliders.C_Parent_Tile_6ID41.collider:SetHalfLengths(0.3,5.28802,2.69258)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID41.collider)
level06.colliders.C_Parent_Tile_6ID42 = {}
level06.colliders.C_Parent_Tile_6ID42.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID42.collider:SetOffset(558.5,86.9272,680)
level06.colliders.C_Parent_Tile_6ID42.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.C_Parent_Tile_6ID42.collider:SetHalfLengths(0.3,5.096,5.59017)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID42.collider)
level06.colliders.C_Parent_Tile_6ID43 = {}
level06.colliders.C_Parent_Tile_6ID43.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID43.collider:SetOffset(547.5,86.8312,682)
level06.colliders.C_Parent_Tile_6ID43.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.C_Parent_Tile_6ID43.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID43.collider)
level06.colliders.C_Parent_Tile_6ID44 = {}
level06.colliders.C_Parent_Tile_6ID44.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID44.collider:SetOffset(537,86.7352,684.5)
level06.colliders.C_Parent_Tile_6ID44.collider:SetZAxis(-0.957826,0,0.287348)
level06.colliders.C_Parent_Tile_6ID44.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.C_Parent_Tile_6ID34.collider:AddChild(level06.colliders.C_Parent_Tile_6ID44.collider)
level06.colliders.C_Parent_Tile_6ID45 = {}
level06.colliders.C_Parent_Tile_6ID45.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID45.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_6ID45.collider:SetMinPos(563.946,80.1031,656.703)
level06.colliders.C_Parent_Tile_6ID45.collider:SetMaxPos(607.234,92.1192,679.295)
level06.colliders.C_Parent_Tile_6ID.collider:AddChild(level06.colliders.C_Parent_Tile_6ID45.collider)
level06.colliders.C_Parent_Tile_6ID46 = {}
level06.colliders.C_Parent_Tile_6ID46.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID46.collider:SetOffset(593.5,85.4871,658)
level06.colliders.C_Parent_Tile_6ID46.collider:SetZAxis(1,0,0)
level06.colliders.C_Parent_Tile_6ID46.collider:SetHalfLengths(0.3,5.19201,2.5)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID46.collider)
level06.colliders.C_Parent_Tile_6ID47 = {}
level06.colliders.C_Parent_Tile_6ID47.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID47.collider:SetOffset(599.5,85.6791,657.5)
level06.colliders.C_Parent_Tile_6ID47.collider:SetZAxis(0.98995,0,-0.141421)
level06.colliders.C_Parent_Tile_6ID47.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID47.collider)
level06.colliders.C_Parent_Tile_6ID48 = {}
level06.colliders.C_Parent_Tile_6ID48.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID48.collider:SetOffset(605,85.9672,659.5)
level06.colliders.C_Parent_Tile_6ID48.collider:SetZAxis(0.624695,0,0.780869)
level06.colliders.C_Parent_Tile_6ID48.collider:SetHalfLengths(0.3,5.86406,3.20156)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID48.collider)
level06.colliders.C_Parent_Tile_6ID49 = {}
level06.colliders.C_Parent_Tile_6ID49.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID49.collider:SetOffset(600.5,86.8312,665.5)
level06.colliders.C_Parent_Tile_6ID49.collider:SetZAxis(-0.880471,0,0.4741)
level06.colliders.C_Parent_Tile_6ID49.collider:SetHalfLengths(0.3,5,7.38241)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID49.collider)
level06.colliders.C_Parent_Tile_6ID50 = {}
level06.colliders.C_Parent_Tile_6ID50.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID50.collider:SetOffset(589.5,86.8312,671.5)
level06.colliders.C_Parent_Tile_6ID50.collider:SetZAxis(-0.874157,0,0.485643)
level06.colliders.C_Parent_Tile_6ID50.collider:SetHalfLengths(0.3,5.096,5.14782)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID50.collider)
level06.colliders.C_Parent_Tile_6ID51 = {}
level06.colliders.C_Parent_Tile_6ID51.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID51.collider:SetOffset(580,86.9272,675.5)
level06.colliders.C_Parent_Tile_6ID51.collider:SetZAxis(-0.957826,0,0.287348)
level06.colliders.C_Parent_Tile_6ID51.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID51.collider)
level06.colliders.C_Parent_Tile_6ID52 = {}
level06.colliders.C_Parent_Tile_6ID52.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_6ID52.collider:SetOffset(569.5,87.0232,678)
level06.colliders.C_Parent_Tile_6ID52.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.C_Parent_Tile_6ID52.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.C_Parent_Tile_6ID45.collider:AddChild(level06.colliders.C_Parent_Tile_6ID52.collider)
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
level06.colliders.C_Parent_Tile_6ID49 = nil
level06.colliders.C_Parent_Tile_6ID50 = nil
level06.colliders.C_Parent_Tile_6ID51 = nil
level06.colliders.C_Parent_Tile_6ID52 = nil
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
level06.colliders.Tile6_wallNr1ID = nil
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
level06.colliders.Tile6_wallNr8ID = nil
level06.colliders.Tile6_wallNr9ID = nil
level06.colliders.Tile6_wallNr10ID = nil
level06.colliders.Tile6_wallNr11ID = nil
level06.colliders.Tile6_wallNr12ID = nil
level06.colliders.Tile6_wallNr13ID = nil
level06.colliders.Tile6_wallNr14ID = nil
level06.colliders.Tile6_wallNr15ID = nil
level06.colliders.Tile6_wallNr16ID = nil
level06.colliders.Tile6_wallNr17ID = nil
level06.colliders.Tile6_wallNr18ID = nil
level06.colliders.Tile6_wallNrID = nil
level06.colliders.Tile6_wallNr19ID = nil
level06.colliders.Tile6_wallNr20ID = nil
level06.colliders.Tile6_wallNr21ID = nil
level06.colliders.Tile6_wallNr22ID = nil
level06.colliders.Tile6_wallNr23ID = nil
level06.colliders.Tile6_wallNr24ID = nil
level06.colliders.Tile6_wallNr25ID = nil
level06.colliders.Tile6_wallNr26ID = nil
level06.colliders.Tile6_wallNr27ID = nil
level06.colliders.Tile6_wallNr28ID = nil
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
level06.colliders.C_Parent_Tile_61ID = nil
level06.colliders.C_Parent_Tile_62ID = nil
level06.colliders.C_Parent_Tile_63ID = nil
level06.colliders.C_Parent_Tile_64ID = nil
level06.colliders.C_Parent_Tile_65ID = nil
level06.colliders.C_Parent_Tile_6ID = nil
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
level07.props.tile7ID = {}
level07.props.t6s3ID = {}
level07.props.t6s3ID.model = Assets.LoadModel('Models/tile6_s3.model')
level07.props.t6s3ID.transformID = Gear.BindStaticInstance(level07.props.t6s3ID.model)
Transform.SetPosition(level07.props.t6s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s3ID.transformID, {x=0, y=0, z=0})
level07.props.t6s4ID = {}
level07.props.t6s4ID.model = Assets.LoadModel('Models/tile6_s4.model')
level07.props.t6s4ID.transformID = Gear.BindStaticInstance(level07.props.t6s4ID.model)
Transform.SetPosition(level07.props.t6s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s4ID.transformID, {x=0, y=0, z=0})
level07.props.t6s5ID = {}
level07.props.t6s5ID.model = Assets.LoadModel('Models/tile6_s5.model')
level07.props.t6s5ID.transformID = Gear.BindStaticInstance(level07.props.t6s5ID.model)
Transform.SetPosition(level07.props.t6s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s5ID.transformID, {x=0, y=0, z=0})
level07.props.t6s6ID = {}
level07.props.t6s6ID.model = Assets.LoadModel('Models/tile6_s6.model')
level07.props.t6s6ID.transformID = Gear.BindStaticInstance(level07.props.t6s6ID.model)
Transform.SetPosition(level07.props.t6s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s6ID.transformID, {x=0, y=0, z=0})
level07.props.t6s8ID = {}
level07.props.t6s8ID.model = Assets.LoadModel('Models/tile6_s8.model')
level07.props.t6s8ID.transformID = Gear.BindStaticInstance(level07.props.t6s8ID.model)
Transform.SetPosition(level07.props.t6s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s8ID.transformID, {x=0, y=0, z=0})
level07.props.t6s9ID = {}
level07.props.t6s9ID.model = Assets.LoadModel('Models/tile6_s9.model')
level07.props.t6s9ID.transformID = Gear.BindStaticInstance(level07.props.t6s9ID.model)
Transform.SetPosition(level07.props.t6s9ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s9ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s9ID.transformID, {x=0, y=0, z=0})
level07.props.t7s1ID = {}
level07.props.t7s1ID.model = Assets.LoadModel('Models/tile7_s1.model')
level07.props.t7s1ID.transformID = Gear.BindStaticInstance(level07.props.t7s1ID.model)
Transform.SetPosition(level07.props.t7s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s1ID.transformID, {x=0, y=0, z=0})
level07.props.t7s2ID = {}
level07.props.t7s2ID.model = Assets.LoadModel('Models/tile7_s2.model')
level07.props.t7s2ID.transformID = Gear.BindStaticInstance(level07.props.t7s2ID.model)
Transform.SetPosition(level07.props.t7s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s2ID.transformID, {x=0, y=0, z=0})
level07.props.t7s3ID = {}
level07.props.t7s3ID.model = Assets.LoadModel('Models/tile7_s3.model')
level07.props.t7s3ID.transformID = Gear.BindStaticInstance(level07.props.t7s3ID.model)
Transform.SetPosition(level07.props.t7s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s3ID.transformID, {x=0, y=0, z=0})
level07.props.t7s4ID = {}
level07.props.t7s4ID.model = Assets.LoadModel('Models/tile7_s4.model')
level07.props.t7s4ID.transformID = Gear.BindStaticInstance(level07.props.t7s4ID.model)
Transform.SetPosition(level07.props.t7s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s4ID.transformID, {x=0, y=0, z=0})
level07.props.t7s5ID = {}
level07.props.t7s5ID.model = Assets.LoadModel('Models/tile7_s5.model')
level07.props.t7s5ID.transformID = Gear.BindStaticInstance(level07.props.t7s5ID.model)
Transform.SetPosition(level07.props.t7s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s5ID.transformID, {x=0, y=0, z=0})
level07.props.t7s6ID = {}
level07.props.t7s6ID.model = Assets.LoadModel('Models/tile7_s6.model')
level07.props.t7s6ID.transformID = Gear.BindStaticInstance(level07.props.t7s6ID.model)
Transform.SetPosition(level07.props.t7s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s6ID.transformID, {x=0, y=0, z=0})
level07.props.t7s7ID = {}
level07.props.t7s7ID.model = Assets.LoadModel('Models/tile7_s7.model')
level07.props.t7s7ID.transformID = Gear.BindStaticInstance(level07.props.t7s7ID.model)
Transform.SetPosition(level07.props.t7s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s7ID.transformID, {x=0, y=0, z=0})
level07.props.t7s8ID = {}
level07.props.t7s8ID.model = Assets.LoadModel('Models/tile7_s8.model')
level07.props.t7s8ID.transformID = Gear.BindStaticInstance(level07.props.t7s8ID.model)
Transform.SetPosition(level07.props.t7s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s8ID.transformID, {x=0, y=0, z=0})
level07.props.t7s9ID = {}
level07.props.t7s9ID.model = Assets.LoadModel('Models/tile7_s9.model')
level07.props.t7s9ID.transformID = Gear.BindStaticInstance(level07.props.t7s9ID.model)
Transform.SetPosition(level07.props.t7s9ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t7s9ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t7s9ID.transformID, {x=0, y=0, z=0})
level07.props.RockID = {}
level07.props.RockID.collider = SphereCollider.Create(-1)
level07.props.RockID.collider:SetOffset(-1,5,5)
level07.props.RockID.collider:SetRadius(2)
level07.props.RockID.collider:SetPos(389.664,128.514,635.811)
CollisionHandler.AddSphere(level07.props.RockID.collider, 3)
level07.props.RockID.model = Assets.LoadModel('Models/Stone2.model')
level07.props.RockID.transformID = Gear.BindStaticInstance(level07.props.RockID.model)
Transform.SetPosition(level07.props.RockID.transformID, {x=390.664, y=123.514, z=630.811})
Transform.SetScaleNonUniform(level07.props.RockID.transformID, 8.00562, 10.6213, 14.9332)
Transform.SetRotation(level07.props.RockID.transformID, {x=0, y=0, z=0})
level07.props.Rock1ID = {}
level07.props.Rock1ID.collider = SphereCollider.Create(-1)
level07.props.Rock1ID.collider:SetOffset(1,0,0)
level07.props.Rock1ID.collider:SetRadius(1.5)
level07.props.Rock1ID.collider:SetPos(389.09,124.25,662.016)
CollisionHandler.AddSphere(level07.props.Rock1ID.collider, 3)
level07.props.Rock1ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Rock1ID.transformID = Gear.BindStaticInstance(level07.props.Rock1ID.model)
Transform.SetPosition(level07.props.Rock1ID.transformID, {x=388.09, y=124.25, z=662.016})
Transform.SetScaleNonUniform(level07.props.Rock1ID.transformID, 8.40228, 16.538, 11.3485)
Transform.SetRotation(level07.props.Rock1ID.transformID, {x=0, y=1.78624, z=0})
level07.props.t6s11ID = {}
level07.props.t6s11ID.model = Assets.LoadModel('Models/tile6_s11.model')
level07.props.t6s11ID.transformID = Gear.BindStaticInstance(level07.props.t6s11ID.model)
Transform.SetPosition(level07.props.t6s11ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s11ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s11ID.transformID, {x=0, y=0, z=0})
level07.props.t6s14ID = {}
level07.props.t6s14ID.model = Assets.LoadModel('Models/tile6_s14.model')
level07.props.t6s14ID.transformID = Gear.BindStaticInstance(level07.props.t6s14ID.model)
Transform.SetPosition(level07.props.t6s14ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s14ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s14ID.transformID, {x=0, y=0, z=0})
level07.colliders.C_Parent_Tile_7ID = {}
level07.colliders.C_Parent_Tile_7ID.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID.collider:SetMinPos(127.7,35.1631,512)
level07.colliders.C_Parent_Tile_7ID.collider:SetMaxPos(384.3,165.059,767.3)
level07.colliders.C_Parent_Tile_7ID.collider:SetPos(0,0,0)
level07.colliders.C_Parent_Tile_7ID1 = {}
level07.colliders.C_Parent_Tile_7ID1.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID1.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID1.collider:SetMinPos(127.7,35.1631,512)
level07.colliders.C_Parent_Tile_7ID1.collider:SetMaxPos(384.3,165.059,767.246)
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
level07.colliders.C_Parent_Tile_7ID3.collider:SetZAxis(-0.988372,0,-0.152057)
level07.colliders.C_Parent_Tile_7ID3.collider:SetHalfLengths(0.3,5,6.57647)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID3.collider)
level07.colliders.C_Parent_Tile_7ID4 = {}
level07.colliders.C_Parent_Tile_7ID4.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID4.collider:SetOffset(189.5,125.009,519.5)
level07.colliders.C_Parent_Tile_7ID4.collider:SetZAxis(-0.997785,0,-0.066519)
level07.colliders.C_Parent_Tile_7ID4.collider:SetHalfLengths(0.3,5,7.51665)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID4.collider)
level07.colliders.C_Parent_Tile_7ID5 = {}
level07.colliders.C_Parent_Tile_7ID5.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID5.collider:SetOffset(176,125.009,519.5)
level07.colliders.C_Parent_Tile_7ID5.collider:SetZAxis(-0.996546,0,0.0830455)
level07.colliders.C_Parent_Tile_7ID5.collider:SetHalfLengths(0.3,5.24172,6.0208)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID5.collider)
level07.colliders.C_Parent_Tile_7ID6 = {}
level07.colliders.C_Parent_Tile_7ID6.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID6.collider:SetOffset(163.5,125.25,521.5)
level07.colliders.C_Parent_Tile_7ID6.collider:SetZAxis(-0.974391,0,0.22486)
level07.colliders.C_Parent_Tile_7ID6.collider:SetHalfLengths(0.3,6.69208,6.67083)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID6.collider)
level07.colliders.C_Parent_Tile_7ID7 = {}
level07.colliders.C_Parent_Tile_7ID7.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID7.collider:SetOffset(151,126.942,528)
level07.colliders.C_Parent_Tile_7ID7.collider:SetZAxis(-0.768221,0,0.640184)
level07.colliders.C_Parent_Tile_7ID7.collider:SetHalfLengths(0.3,7.17552,7.81025)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID7.collider)
level07.colliders.C_Parent_Tile_7ID8 = {}
level07.colliders.C_Parent_Tile_7ID8.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID8.collider:SetOffset(139.5,129.118,539.5)
level07.colliders.C_Parent_Tile_7ID8.collider:SetZAxis(-0.645942,0,0.763386)
level07.colliders.C_Parent_Tile_7ID8.collider:SetHalfLengths(0.3,5.9669,8.51469)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID8.collider)
level07.colliders.C_Parent_Tile_7ID9 = {}
level07.colliders.C_Parent_Tile_7ID9.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID9.collider:SetOffset(135.5,130.085,552)
level07.colliders.C_Parent_Tile_7ID9.collider:SetZAxis(0.242536,0,0.970143)
level07.colliders.C_Parent_Tile_7ID9.collider:SetHalfLengths(0.3,5.9669,6.18466)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID9.collider)
level07.colliders.C_Parent_Tile_7ID10 = {}
level07.colliders.C_Parent_Tile_7ID10.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID10.collider:SetOffset(139.5,129.118,563.5)
level07.colliders.C_Parent_Tile_7ID10.collider:SetZAxis(0.413803,0,0.910366)
level07.colliders.C_Parent_Tile_7ID10.collider:SetHalfLengths(0.3,6.45035,6.04152)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID10.collider)
level07.colliders.C_Parent_Tile_7ID11 = {}
level07.colliders.C_Parent_Tile_7ID11.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID11.collider:SetOffset(254.5,142.171,527.5)
level07.colliders.C_Parent_Tile_7ID11.collider:SetZAxis(-0.989415,0,0.145114)
level07.colliders.C_Parent_Tile_7ID11.collider:SetHalfLengths(0.3,22.8876,37.9012)
level07.colliders.C_Parent_Tile_7ID2.collider:AddChild(level07.colliders.C_Parent_Tile_7ID11.collider)
level07.colliders.C_Parent_Tile_7ID12 = {}
level07.colliders.C_Parent_Tile_7ID12.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID12.collider:SetOffset(213.5,124.283,527.5)
level07.colliders.C_Parent_Tile_7ID12.collider:SetZAxis(-0.536875,0,-0.843661)
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
level07.colliders.C_Parent_Tile_7ID14.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_7ID14.collider:SetHalfLengths(0.3,5.24173,14.5)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID14.collider)
level07.colliders.C_Parent_Tile_7ID15 = {}
level07.colliders.C_Parent_Tile_7ID15.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID15.collider:SetOffset(150,127.668,576)
level07.colliders.C_Parent_Tile_7ID15.collider:SetZAxis(0.752577,0,0.658505)
level07.colliders.C_Parent_Tile_7ID15.collider:SetHalfLengths(0.3,5.72517,10.6301)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID15.collider)
level07.colliders.C_Parent_Tile_7ID16 = {}
level07.colliders.C_Parent_Tile_7ID16.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID16.collider:SetOffset(233,122.833,560.5)
level07.colliders.C_Parent_Tile_7ID16.collider:SetZAxis(-0.274721,0,-0.961524)
level07.colliders.C_Parent_Tile_7ID16.collider:SetHalfLengths(0.3,5.48345,10.9202)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID16.collider)
level07.colliders.C_Parent_Tile_7ID17 = {}
level07.colliders.C_Parent_Tile_7ID17.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID17.collider:SetOffset(152,83.6736,643.5)
level07.colliders.C_Parent_Tile_7ID17.collider:SetZAxis(0.106265,0,-0.994338)
level07.colliders.C_Parent_Tile_7ID17.collider:SetHalfLengths(0.3,48.5105,65.873)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID17.collider)
level07.colliders.C_Parent_Tile_7ID18 = {}
level07.colliders.C_Parent_Tile_7ID18.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID18.collider:SetOffset(157,127.184,579.5)
level07.colliders.C_Parent_Tile_7ID18.collider:SetZAxis(-0.8,0,0.6)
level07.colliders.C_Parent_Tile_7ID18.collider:SetHalfLengths(0.3,5,2.5)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID18.collider)
level07.colliders.C_Parent_Tile_7ID19 = {}
level07.colliders.C_Parent_Tile_7ID19.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID19.collider:SetOffset(163,85.3657,646.5)
level07.colliders.C_Parent_Tile_7ID19.collider:SetZAxis(0.0926234,0,-0.995701)
level07.colliders.C_Parent_Tile_7ID19.collider:SetHalfLengths(0.3,46.5767,64.7785)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID19.collider)
level07.colliders.C_Parent_Tile_7ID20 = {}
level07.colliders.C_Parent_Tile_7ID20.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID20.collider:SetOffset(169.5,126.942,585)
level07.colliders.C_Parent_Tile_7ID20.collider:SetZAxis(0.164399,0,0.986394)
level07.colliders.C_Parent_Tile_7ID20.collider:SetHalfLengths(0.3,5.48345,3.04138)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID20.collider)
level07.colliders.C_Parent_Tile_7ID21 = {}
level07.colliders.C_Parent_Tile_7ID21.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID21.collider:SetOffset(258.5,142.171,537)
level07.colliders.C_Parent_Tile_7ID21.collider:SetZAxis(-0.984337,0,0.176299)
level07.colliders.C_Parent_Tile_7ID21.collider:SetHalfLengths(0.3,21.9207,34.0331)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID21.collider)
level07.colliders.C_Parent_Tile_7ID22 = {}
level07.colliders.C_Parent_Tile_7ID22.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID22.collider:SetOffset(227.5,125.25,546.5)
level07.colliders.C_Parent_Tile_7ID22.collider:SetZAxis(0.581238,0,0.813733)
level07.colliders.C_Parent_Tile_7ID22.collider:SetHalfLengths(0.3,6.93379,4.30116)
level07.colliders.C_Parent_Tile_7ID13.collider:AddChild(level07.colliders.C_Parent_Tile_7ID22.collider)
level07.colliders.C_Parent_Tile_7ID23 = {}
level07.colliders.C_Parent_Tile_7ID23.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID23.collider:SetOffset(292,142.171,521)
level07.colliders.C_Parent_Tile_7ID23.collider:SetZAxis(0,0,-1)
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
level07.colliders.C_Parent_Tile_7ID25.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_7ID25.collider:SetHalfLengths(0.3,5,14)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID25.collider)
level07.colliders.C_Parent_Tile_7ID26 = {}
level07.colliders.C_Parent_Tile_7ID26.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID26.collider:SetOffset(324,142.171,516)
level07.colliders.C_Parent_Tile_7ID26.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID26.collider:SetHalfLengths(0.3,5,4)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID26.collider)
level07.colliders.C_Parent_Tile_7ID27 = {}
level07.colliders.C_Parent_Tile_7ID27.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID27.collider:SetOffset(319,142.171,516)
level07.colliders.C_Parent_Tile_7ID27.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_7ID27.collider:SetHalfLengths(0.3,5,4)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID27.collider)
level07.colliders.C_Parent_Tile_7ID28 = {}
level07.colliders.C_Parent_Tile_7ID28.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID28.collider:SetOffset(173,127.909,590)
level07.colliders.C_Parent_Tile_7ID28.collider:SetZAxis(0.8,0,0.6)
level07.colliders.C_Parent_Tile_7ID28.collider:SetHalfLengths(0.3,7.17553,5)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID28.collider)
level07.colliders.C_Parent_Tile_7ID29 = {}
level07.colliders.C_Parent_Tile_7ID29.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID29.collider:SetOffset(184,125.734,596.5)
level07.colliders.C_Parent_Tile_7ID29.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_7ID29.collider:SetHalfLengths(0.3,5.72517,7.82624)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID29.collider)
level07.colliders.C_Parent_Tile_7ID30 = {}
level07.colliders.C_Parent_Tile_7ID30.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID30.collider:SetOffset(203.5,125.25,596.5)
level07.colliders.C_Parent_Tile_7ID30.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.C_Parent_Tile_7ID30.collider:SetHalfLengths(0.3,5.24172,4.74342)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID30.collider)
level07.colliders.C_Parent_Tile_7ID31 = {}
level07.colliders.C_Parent_Tile_7ID31.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID31.collider:SetOffset(229.5,107.846,599)
level07.colliders.C_Parent_Tile_7ID31.collider:SetZAxis(-0.493013,0,-0.870022)
level07.colliders.C_Parent_Tile_7ID31.collider:SetHalfLengths(0.3,21.1956,17.2409)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID31.collider)
level07.colliders.C_Parent_Tile_7ID32 = {}
level07.colliders.C_Parent_Tile_7ID32.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID32.collider:SetOffset(228.5,124.042,577.5)
level07.colliders.C_Parent_Tile_7ID32.collider:SetZAxis(0.755689,0,-0.654931)
level07.colliders.C_Parent_Tile_7ID32.collider:SetHalfLengths(0.3,6.20863,9.92472)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID32.collider)
level07.colliders.C_Parent_Tile_7ID33 = {}
level07.colliders.C_Parent_Tile_7ID33.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID33.collider:SetOffset(302,142.654,533)
level07.colliders.C_Parent_Tile_7ID33.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_7ID33.collider:SetHalfLengths(0.3,5.48346,13)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID33.collider)
level07.colliders.C_Parent_Tile_7ID34 = {}
level07.colliders.C_Parent_Tile_7ID34.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID34.collider:SetOffset(315,142.171,553)
level07.colliders.C_Parent_Tile_7ID34.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_7ID34.collider:SetHalfLengths(0.3,5.72517,20)
level07.colliders.C_Parent_Tile_7ID24.collider:AddChild(level07.colliders.C_Parent_Tile_7ID34.collider)
level07.colliders.C_Parent_Tile_7ID35 = {}
level07.colliders.C_Parent_Tile_7ID35.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID35.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID35.collider:SetMinPos(190.927,100.429,520)
level07.colliders.C_Parent_Tile_7ID35.collider:SetMaxPos(353.3,147.171,630.073)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID35.collider)
level07.colliders.C_Parent_Tile_7ID36 = {}
level07.colliders.C_Parent_Tile_7ID36.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID36.collider:SetOffset(329,142.171,552.5)
level07.colliders.C_Parent_Tile_7ID36.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID36.collider:SetHalfLengths(0.3,5,19.5)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID36.collider)
level07.colliders.C_Parent_Tile_7ID37 = {}
level07.colliders.C_Parent_Tile_7ID37.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID37.collider:SetOffset(341,142.171,533)
level07.colliders.C_Parent_Tile_7ID37.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_7ID37.collider:SetHalfLengths(0.3,5,12)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID37.collider)
level07.colliders.C_Parent_Tile_7ID38 = {}
level07.colliders.C_Parent_Tile_7ID38.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID38.collider:SetOffset(353,142.171,526.5)
level07.colliders.C_Parent_Tile_7ID38.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID38.collider:SetHalfLengths(0.3,5,6.5)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID38.collider)
level07.colliders.C_Parent_Tile_7ID39 = {}
level07.colliders.C_Parent_Tile_7ID39.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID39.collider:SetOffset(195,125.009,599)
level07.colliders.C_Parent_Tile_7ID39.collider:SetZAxis(0.970143,0,-0.242536)
level07.colliders.C_Parent_Tile_7ID39.collider:SetHalfLengths(0.3,5.24172,4.12311)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID39.collider)
level07.colliders.C_Parent_Tile_7ID40 = {}
level07.colliders.C_Parent_Tile_7ID40.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID40.collider:SetOffset(214,125.009,606)
level07.colliders.C_Parent_Tile_7ID40.collider:SetZAxis(0.478852,0,0.877896)
level07.colliders.C_Parent_Tile_7ID40.collider:SetHalfLengths(0.3,20.2287,12.53)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID40.collider)
level07.colliders.C_Parent_Tile_7ID41 = {}
level07.colliders.C_Parent_Tile_7ID41.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID41.collider:SetOffset(217,109.78,617.5)
level07.colliders.C_Parent_Tile_7ID41.collider:SetZAxis(-0.986394,0,0.164399)
level07.colliders.C_Parent_Tile_7ID41.collider:SetHalfLengths(0.3,6.9338,3.04138)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID41.collider)
level07.colliders.C_Parent_Tile_7ID42 = {}
level07.colliders.C_Parent_Tile_7ID42.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID42.collider:SetOffset(212.5,107.846,624)
level07.colliders.C_Parent_Tile_7ID42.collider:SetZAxis(-0.242536,0,0.970143)
level07.colliders.C_Parent_Tile_7ID42.collider:SetHalfLengths(0.3,7.41725,6.18466)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID42.collider)
level07.colliders.C_Parent_Tile_7ID43 = {}
level07.colliders.C_Parent_Tile_7ID43.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID43.collider:SetOffset(242.5,107.363,612.5)
level07.colliders.C_Parent_Tile_7ID43.collider:SetZAxis(-0.948683,0,0.316228)
level07.colliders.C_Parent_Tile_7ID43.collider:SetHalfLengths(0.3,5.48344,4.74342)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID43.collider)
level07.colliders.C_Parent_Tile_7ID44 = {}
level07.colliders.C_Parent_Tile_7ID44.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID44.collider:SetOffset(316.5,142.171,568)
level07.colliders.C_Parent_Tile_7ID44.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_7ID44.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID44.collider)
level07.colliders.C_Parent_Tile_7ID45 = {}
level07.colliders.C_Parent_Tile_7ID45.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID45.collider:SetOffset(318,142.171,569)
level07.colliders.C_Parent_Tile_7ID45.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_7ID45.collider:SetHalfLengths(0.3,5,1)
level07.colliders.C_Parent_Tile_7ID35.collider:AddChild(level07.colliders.C_Parent_Tile_7ID45.collider)
level07.colliders.C_Parent_Tile_7ID46 = {}
level07.colliders.C_Parent_Tile_7ID46.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID46.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID46.collider:SetMinPos(206.713,86.1671,565.7)
level07.colliders.C_Parent_Tile_7ID46.collider:SetMaxPos(347.259,156.598,643.088)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID46.collider)
level07.colliders.C_Parent_Tile_7ID47 = {}
level07.colliders.C_Parent_Tile_7ID47.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID47.collider:SetOffset(209,105.429,636.5)
level07.colliders.C_Parent_Tile_7ID47.collider:SetZAxis(-0.294086,0,0.955779)
level07.colliders.C_Parent_Tile_7ID47.collider:SetHalfLengths(0.3,7.9007,6.80074)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID47.collider)
level07.colliders.C_Parent_Tile_7ID48 = {}
level07.colliders.C_Parent_Tile_7ID48.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID48.collider:SetOffset(269,97.4519,625.5)
level07.colliders.C_Parent_Tile_7ID48.collider:SetZAxis(-0.5547,0,-0.83205)
level07.colliders.C_Parent_Tile_7ID48.collider:SetHalfLengths(0.3,11.2848,12.6194)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID48.collider)
level07.colliders.C_Parent_Tile_7ID49 = {}
level07.colliders.C_Parent_Tile_7ID49.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID49.collider:SetOffset(258.5,103.737,614)
level07.colliders.C_Parent_Tile_7ID49.collider:SetZAxis(-0.961524,0,-0.274721)
level07.colliders.C_Parent_Tile_7ID49.collider:SetHalfLengths(0.3,7.41724,3.64005)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID49.collider)
level07.colliders.C_Parent_Tile_7ID50 = {}
level07.colliders.C_Parent_Tile_7ID50.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID50.collider:SetOffset(251,106.154,612)
level07.colliders.C_Parent_Tile_7ID50.collider:SetZAxis(-0.970143,0,-0.242536)
level07.colliders.C_Parent_Tile_7ID50.collider:SetHalfLengths(0.3,6.20863,4.12311)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID50.collider)
level07.colliders.C_Parent_Tile_7ID51 = {}
level07.colliders.C_Parent_Tile_7ID51.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID51.collider:SetOffset(327.5,142.171,566)
level07.colliders.C_Parent_Tile_7ID51.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_7ID51.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID51.collider)
level07.colliders.C_Parent_Tile_7ID52 = {}
level07.colliders.C_Parent_Tile_7ID52.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID52.collider:SetOffset(326,142.171,568)
level07.colliders.C_Parent_Tile_7ID52.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_7ID52.collider:SetHalfLengths(0.3,5,2)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID52.collider)
level07.colliders.C_Parent_Tile_7ID53 = {}
level07.colliders.C_Parent_Tile_7ID53.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID53.collider:SetOffset(327.5,142.171,571)
level07.colliders.C_Parent_Tile_7ID53.collider:SetZAxis(0.83205,0,0.5547)
level07.colliders.C_Parent_Tile_7ID53.collider:SetHalfLengths(0.3,5,1.80278)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID53.collider)
level07.colliders.C_Parent_Tile_7ID54 = {}
level07.colliders.C_Parent_Tile_7ID54.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID54.collider:SetOffset(338,142.171,587.5)
level07.colliders.C_Parent_Tile_7ID54.collider:SetZAxis(0.502136,0,0.864789)
level07.colliders.C_Parent_Tile_7ID54.collider:SetHalfLengths(0.3,14.1855,17.9234)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID54.collider)
level07.colliders.C_Parent_Tile_7ID55 = {}
level07.colliders.C_Parent_Tile_7ID55.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID55.collider:SetOffset(317,142.171,571.5)
level07.colliders.C_Parent_Tile_7ID55.collider:SetZAxis(-0.5547,0,0.83205)
level07.colliders.C_Parent_Tile_7ID55.collider:SetHalfLengths(0.3,5.72517,1.80278)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID55.collider)
level07.colliders.C_Parent_Tile_7ID56 = {}
level07.colliders.C_Parent_Tile_7ID56.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID56.collider:SetOffset(326.5,141.446,590.5)
level07.colliders.C_Parent_Tile_7ID56.collider:SetZAxis(0.514496,0,0.857493)
level07.colliders.C_Parent_Tile_7ID56.collider:SetHalfLengths(0.3,15.1525,20.4083)
level07.colliders.C_Parent_Tile_7ID46.collider:AddChild(level07.colliders.C_Parent_Tile_7ID56.collider)
level07.colliders.C_Parent_Tile_7ID57 = {}
level07.colliders.C_Parent_Tile_7ID57.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID57.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID57.collider:SetMinPos(206.708,84.475,596.708)
level07.colliders.C_Parent_Tile_7ID57.collider:SetMaxPos(370.086,138.711,682.246)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID57.collider)
level07.colliders.C_Parent_Tile_7ID58 = {}
level07.colliders.C_Parent_Tile_7ID58.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID58.collider:SetOffset(365,131.293,598.5)
level07.colliders.C_Parent_Tile_7ID58.collider:SetZAxis(-0.957826,0,-0.287348)
level07.colliders.C_Parent_Tile_7ID58.collider:SetHalfLengths(0.3,5,5.22015)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID58.collider)
level07.colliders.C_Parent_Tile_7ID59 = {}
level07.colliders.C_Parent_Tile_7ID59.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID59.collider:SetOffset(210,102.528,655.5)
level07.colliders.C_Parent_Tile_7ID59.collider:SetZAxis(0.233373,0,0.972387)
level07.colliders.C_Parent_Tile_7ID59.collider:SetHalfLengths(0.3,10.8014,12.855)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID59.collider)
level07.colliders.C_Parent_Tile_7ID60 = {}
level07.colliders.C_Parent_Tile_7ID60.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID60.collider:SetOffset(223,96.7267,675)
level07.colliders.C_Parent_Tile_7ID60.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.C_Parent_Tile_7ID60.collider:SetHalfLengths(0.3,12.2517,12.2066)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID60.collider)
level07.colliders.C_Parent_Tile_7ID61 = {}
level07.colliders.C_Parent_Tile_7ID61.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID61.collider:SetOffset(330,130.81,609.5)
level07.colliders.C_Parent_Tile_7ID61.collider:SetZAxis(-0.21693,0,0.976187)
level07.colliders.C_Parent_Tile_7ID61.collider:SetHalfLengths(0.3,7.41725,4.60977)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID61.collider)
level07.colliders.C_Parent_Tile_7ID62 = {}
level07.colliders.C_Parent_Tile_7ID62.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID62.collider:SetOffset(328.5,128.393,619.5)
level07.colliders.C_Parent_Tile_7ID62.collider:SetZAxis(-0.0905357,0,0.995893)
level07.colliders.C_Parent_Tile_7ID62.collider:SetHalfLengths(0.3,8.14243,5.52268)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID62.collider)
level07.colliders.C_Parent_Tile_7ID63 = {}
level07.colliders.C_Parent_Tile_7ID63.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID63.collider:SetOffset(279,93.826,642)
level07.colliders.C_Parent_Tile_7ID63.collider:SetZAxis(-0.447214,0,-0.894427)
level07.colliders.C_Parent_Tile_7ID63.collider:SetHalfLengths(0.3,8.62588,6.7082)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID63.collider)
level07.colliders.C_Parent_Tile_7ID64 = {}
level07.colliders.C_Parent_Tile_7ID64.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID64.collider:SetOffset(347,132.985,601.5)
level07.colliders.C_Parent_Tile_7ID64.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID64.collider:SetHalfLengths(0.3,5.72517,1.5)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID64.collider)
level07.colliders.C_Parent_Tile_7ID65 = {}
level07.colliders.C_Parent_Tile_7ID65.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID65.collider:SetOffset(353.5,132.26,598.5)
level07.colliders.C_Parent_Tile_7ID65.collider:SetZAxis(0.974391,0,-0.22486)
level07.colliders.C_Parent_Tile_7ID65.collider:SetHalfLengths(0.3,5.9669,6.67083)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID65.collider)
level07.colliders.C_Parent_Tile_7ID66 = {}
level07.colliders.C_Parent_Tile_7ID66.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID66.collider:SetOffset(336,131.293,608.5)
level07.colliders.C_Parent_Tile_7ID66.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_7ID66.collider:SetHalfLengths(0.3,5.48344,1.11803)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID66.collider)
level07.colliders.C_Parent_Tile_7ID67 = {}
level07.colliders.C_Parent_Tile_7ID67.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID67.collider:SetOffset(333,130.81,607)
level07.colliders.C_Parent_Tile_7ID67.collider:SetZAxis(-0.707107,0,-0.707107)
level07.colliders.C_Parent_Tile_7ID67.collider:SetHalfLengths(0.3,5,2.82843)
level07.colliders.C_Parent_Tile_7ID57.collider:AddChild(level07.colliders.C_Parent_Tile_7ID67.collider)
level07.colliders.C_Parent_Tile_7ID68 = {}
level07.colliders.C_Parent_Tile_7ID68.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID68.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID68.collider:SetMinPos(132.81,74.0808,599.738)
level07.colliders.C_Parent_Tile_7ID68.collider:SetMaxPos(384.154,136.777,718.232)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID68.collider)
level07.colliders.C_Parent_Tile_7ID69 = {}
level07.colliders.C_Parent_Tile_7ID69.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID69.collider:SetOffset(381.5,131.535,606.5)
level07.colliders.C_Parent_Tile_7ID69.collider:SetZAxis(-0.857493,0,-0.514496)
level07.colliders.C_Parent_Tile_7ID69.collider:SetHalfLengths(0.3,5,2.91548)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID69.collider)
level07.colliders.C_Parent_Tile_7ID70 = {}
level07.colliders.C_Parent_Tile_7ID70.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID70.collider:SetOffset(374.5,131.535,602.5)
level07.colliders.C_Parent_Tile_7ID70.collider:SetZAxis(-0.874157,0,-0.485643)
level07.colliders.C_Parent_Tile_7ID70.collider:SetHalfLengths(0.3,5.24173,5.14782)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID70.collider)
level07.colliders.C_Parent_Tile_7ID71 = {}
level07.colliders.C_Parent_Tile_7ID71.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID71.collider:SetOffset(138.5,83.6736,713.5)
level07.colliders.C_Parent_Tile_7ID71.collider:SetZAxis(-0.773957,0,0.633238)
level07.colliders.C_Parent_Tile_7ID71.collider:SetHalfLengths(0.3,7.9007,7.10634)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID71.collider)
level07.colliders.C_Parent_Tile_7ID72 = {}
level07.colliders.C_Parent_Tile_7ID72.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID72.collider:SetOffset(170,81.9815,703.5)
level07.colliders.C_Parent_Tile_7ID72.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_7ID72.collider:SetHalfLengths(0.3,5.24172,1.11803)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID72.collider)
level07.colliders.C_Parent_Tile_7ID73 = {}
level07.colliders.C_Parent_Tile_7ID73.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID73.collider:SetOffset(164,82.2232,703.5)
level07.colliders.C_Parent_Tile_7ID73.collider:SetZAxis(-0.995037,0,-0.0995037)
level07.colliders.C_Parent_Tile_7ID73.collider:SetHalfLengths(0.3,5,5.02494)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID73.collider)
level07.colliders.C_Parent_Tile_7ID74 = {}
level07.colliders.C_Parent_Tile_7ID74.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID74.collider:SetOffset(244.5,89.475,685.5)
level07.colliders.C_Parent_Tile_7ID74.collider:SetZAxis(0.956674,0,0.291162)
level07.colliders.C_Parent_Tile_7ID74.collider:SetHalfLengths(0.3,6.45035,12.0208)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID74.collider)
level07.colliders.C_Parent_Tile_7ID75 = {}
level07.colliders.C_Parent_Tile_7ID75.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID75.collider:SetOffset(330,125.25,631)
level07.colliders.C_Parent_Tile_7ID75.collider:SetZAxis(0.316228,0,0.948683)
level07.colliders.C_Parent_Tile_7ID75.collider:SetHalfLengths(0.3,6.45035,6.32456)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID75.collider)
level07.colliders.C_Parent_Tile_7ID76 = {}
level07.colliders.C_Parent_Tile_7ID76.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID76.collider:SetOffset(286.5,88.7498,665.5)
level07.colliders.C_Parent_Tile_7ID76.collider:SetZAxis(0.0905357,0,-0.995893)
level07.colliders.C_Parent_Tile_7ID76.collider:SetHalfLengths(0.3,6.45035,5.52268)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID76.collider)
level07.colliders.C_Parent_Tile_7ID77 = {}
level07.colliders.C_Parent_Tile_7ID77.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID77.collider:SetOffset(284.5,90.2002,654)
level07.colliders.C_Parent_Tile_7ID77.collider:SetZAxis(-0.384615,0,-0.923077)
level07.colliders.C_Parent_Tile_7ID77.collider:SetHalfLengths(0.3,8.62588,6.5)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID77.collider)
level07.colliders.C_Parent_Tile_7ID78 = {}
level07.colliders.C_Parent_Tile_7ID78.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID78.collider:SetOffset(158,82.2232,707)
level07.colliders.C_Parent_Tile_7ID78.collider:SetZAxis(-0.242536,0,0.970143)
level07.colliders.C_Parent_Tile_7ID78.collider:SetHalfLengths(0.3,8.14243,4.12311)
level07.colliders.C_Parent_Tile_7ID68.collider:AddChild(level07.colliders.C_Parent_Tile_7ID78.collider)
level07.colliders.C_Parent_Tile_7ID79 = {}
level07.colliders.C_Parent_Tile_7ID79.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID79.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID79.collider:SetMinPos(127.714,71.6636,608)
level07.colliders.C_Parent_Tile_7ID79.collider:SetMaxPos(384.3,136.535,734.089)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID79.collider)
level07.colliders.C_Parent_Tile_7ID80 = {}
level07.colliders.C_Parent_Tile_7ID80.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID80.collider:SetOffset(384,122.35,639.5)
level07.colliders.C_Parent_Tile_7ID80.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID80.collider:SetHalfLengths(0.3,14.1855,31.5)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID80.collider)
level07.colliders.C_Parent_Tile_7ID81 = {}
level07.colliders.C_Parent_Tile_7ID81.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID81.collider:SetOffset(130.5,86.5743,726)
level07.colliders.C_Parent_Tile_7ID81.collider:SetZAxis(-0.298275,0,0.95448)
level07.colliders.C_Parent_Tile_7ID81.collider:SetHalfLengths(0.3,10.0762,8.38153)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID81.collider)
level07.colliders.C_Parent_Tile_7ID82 = {}
level07.colliders.C_Parent_Tile_7ID82.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID82.collider:SetOffset(196,84.157,709)
level07.colliders.C_Parent_Tile_7ID82.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.C_Parent_Tile_7ID82.collider:SetHalfLengths(0.3,6.20862,4.47214)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID82.collider)
level07.colliders.C_Parent_Tile_7ID83 = {}
level07.colliders.C_Parent_Tile_7ID83.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID83.collider:SetOffset(181.5,82.9484,705)
level07.colliders.C_Parent_Tile_7ID83.collider:SetZAxis(-0.982339,0,-0.187112)
level07.colliders.C_Parent_Tile_7ID83.collider:SetHalfLengths(0.3,5.9669,10.6888)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID83.collider)
level07.colliders.C_Parent_Tile_7ID84 = {}
level07.colliders.C_Parent_Tile_7ID84.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID84.collider:SetOffset(335.5,123.8,643.5)
level07.colliders.C_Parent_Tile_7ID84.collider:SetZAxis(0.4741,0,0.880471)
level07.colliders.C_Parent_Tile_7ID84.collider:SetHalfLengths(0.3,6.69208,7.38241)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID84.collider)
level07.colliders.C_Parent_Tile_7ID85 = {}
level07.colliders.C_Parent_Tile_7ID85.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID85.collider:SetOffset(285.5,88.7498,672.5)
level07.colliders.C_Parent_Tile_7ID85.collider:SetZAxis(0.316228,0,-0.948683)
level07.colliders.C_Parent_Tile_7ID85.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID85.collider)
level07.colliders.C_Parent_Tile_7ID86 = {}
level07.colliders.C_Parent_Tile_7ID86.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID86.collider:SetOffset(300.5,90.9253,687.5)
level07.colliders.C_Parent_Tile_7ID86.collider:SetZAxis(0.758011,0,0.652242)
level07.colliders.C_Parent_Tile_7ID86.collider:SetHalfLengths(0.3,17.328,28.3637)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID86.collider)
level07.colliders.C_Parent_Tile_7ID87 = {}
level07.colliders.C_Parent_Tile_7ID87.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID87.collider:SetOffset(292,90.2002,697.5)
level07.colliders.C_Parent_Tile_7ID87.collider:SetZAxis(0.768221,0,0.640184)
level07.colliders.C_Parent_Tile_7ID87.collider:SetHalfLengths(0.3,18.5366,27.3359)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID87.collider)
level07.colliders.C_Parent_Tile_7ID88 = {}
level07.colliders.C_Parent_Tile_7ID88.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID88.collider:SetOffset(282.5,90.9253,669)
level07.colliders.C_Parent_Tile_7ID88.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_7ID88.collider:SetHalfLengths(0.3,6.93379,3.5)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID88.collider)
level07.colliders.C_Parent_Tile_7ID89 = {}
level07.colliders.C_Parent_Tile_7ID89.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID89.collider:SetOffset(271,90.2002,682.5)
level07.colliders.C_Parent_Tile_7ID89.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_7ID89.collider:SetHalfLengths(0.3,6.45035,2.5)
level07.colliders.C_Parent_Tile_7ID79.collider:AddChild(level07.colliders.C_Parent_Tile_7ID89.collider)
level07.colliders.C_Parent_Tile_7ID90 = {}
level07.colliders.C_Parent_Tile_7ID90.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID90.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID90.collider:SetMinPos(127.7,79.157,649.834)
level07.colliders.C_Parent_Tile_7ID90.collider:SetMaxPos(354.298,129.283,760.189)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID90.collider)
level07.colliders.C_Parent_Tile_7ID91 = {}
level07.colliders.C_Parent_Tile_7ID91.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID91.collider:SetOffset(128,91.6505,739)
level07.colliders.C_Parent_Tile_7ID91.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_7ID91.collider:SetHalfLengths(0.3,7.65897,5)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID91.collider)
level07.colliders.C_Parent_Tile_7ID92 = {}
level07.colliders.C_Parent_Tile_7ID92.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID92.collider:SetOffset(134.5,94.3095,752)
level07.colliders.C_Parent_Tile_7ID92.collider:SetZAxis(0.630593,0,0.776114)
level07.colliders.C_Parent_Tile_7ID92.collider:SetHalfLengths(0.3,7.9007,10.3078)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID92.collider)
level07.colliders.C_Parent_Tile_7ID93 = {}
level07.colliders.C_Parent_Tile_7ID93.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID93.collider:SetOffset(203.5,84.3988,714)
level07.colliders.C_Parent_Tile_7ID93.collider:SetZAxis(-0.759257,0,-0.650791)
level07.colliders.C_Parent_Tile_7ID93.collider:SetHalfLengths(0.3,5.24173,4.60977)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID93.collider)
level07.colliders.C_Parent_Tile_7ID94 = {}
level07.colliders.C_Parent_Tile_7ID94.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID94.collider:SetOffset(261.5,88.0246,688)
level07.colliders.C_Parent_Tile_7ID94.collider:SetZAxis(0.98387,0,-0.178885)
level07.colliders.C_Parent_Tile_7ID94.collider:SetHalfLengths(0.3,6.20863,5.59017)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID94.collider)
level07.colliders.C_Parent_Tile_7ID95 = {}
level07.colliders.C_Parent_Tile_7ID95.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID95.collider:SetOffset(271,86.816,685.5)
level07.colliders.C_Parent_Tile_7ID95.collider:SetZAxis(0.936329,0,-0.351123)
level07.colliders.C_Parent_Tile_7ID95.collider:SetHalfLengths(0.3,6.69208,4.272)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID95.collider)
level07.colliders.C_Parent_Tile_7ID96 = {}
level07.colliders.C_Parent_Tile_7ID96.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID96.collider:SetOffset(352,104.22,681)
level07.colliders.C_Parent_Tile_7ID96.collider:SetZAxis(0.124035,0,-0.992278)
level07.colliders.C_Parent_Tile_7ID96.collider:SetHalfLengths(0.3,21.4373,16.1245)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID96.collider)
level07.colliders.C_Parent_Tile_7ID97 = {}
level07.colliders.C_Parent_Tile_7ID97.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID97.collider:SetOffset(351.5,120.658,665)
level07.colliders.C_Parent_Tile_7ID97.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_7ID97.collider:SetHalfLengths(0.3,5.72517,2.5)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID97.collider)
level07.colliders.C_Parent_Tile_7ID98 = {}
level07.colliders.C_Parent_Tile_7ID98.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID98.collider:SetOffset(344,122.108,657.5)
level07.colliders.C_Parent_Tile_7ID98.collider:SetZAxis(0.5547,0,0.83205)
level07.colliders.C_Parent_Tile_7ID98.collider:SetHalfLengths(0.3,7.17552,9.01388)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID98.collider)
level07.colliders.C_Parent_Tile_7ID99 = {}
level07.colliders.C_Parent_Tile_7ID99.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID99.collider:SetOffset(257,103.978,728)
level07.colliders.C_Parent_Tile_7ID99.collider:SetZAxis(-0.997164,0,0.0752577)
level07.colliders.C_Parent_Tile_7ID99.collider:SetHalfLengths(0.3,19.7452,53.1507)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID99.collider)
level07.colliders.C_Parent_Tile_7ID100 = {}
level07.colliders.C_Parent_Tile_7ID100.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID100.collider:SetOffset(208,87.2995,722.5)
level07.colliders.C_Parent_Tile_7ID100.collider:SetZAxis(-0.178885,0,-0.98387)
level07.colliders.C_Parent_Tile_7ID100.collider:SetHalfLengths(0.3,7.9007,5.59017)
level07.colliders.C_Parent_Tile_7ID90.collider:AddChild(level07.colliders.C_Parent_Tile_7ID100.collider)
level07.colliders.C_Parent_Tile_7ID101 = {}
level07.colliders.C_Parent_Tile_7ID101.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID101.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID101.collider:SetMinPos(140.828,82.2995,670.715)
level07.colliders.C_Parent_Tile_7ID101.collider:SetMaxPos(384.095,127.833,767.246)
level07.colliders.C_Parent_Tile_7ID1.collider:AddChild(level07.colliders.C_Parent_Tile_7ID101.collider)
level07.colliders.C_Parent_Tile_7ID102 = {}
level07.colliders.C_Parent_Tile_7ID102.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID102.collider:SetOffset(146,97.2102,763.5)
level07.colliders.C_Parent_Tile_7ID102.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.C_Parent_Tile_7ID102.collider:SetHalfLengths(0.3,6.9338,6.10328)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID102.collider)
level07.colliders.C_Parent_Tile_7ID103 = {}
level07.colliders.C_Parent_Tile_7ID103.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID103.collider:SetOffset(379.5,120.899,672.5)
level07.colliders.C_Parent_Tile_7ID103.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.C_Parent_Tile_7ID103.collider:SetHalfLengths(0.3,6.45035,4.74342)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID103.collider)
level07.colliders.C_Parent_Tile_7ID104 = {}
level07.colliders.C_Parent_Tile_7ID104.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID104.collider:SetOffset(326,103.737,700)
level07.colliders.C_Parent_Tile_7ID104.collider:SetZAxis(-0.970143,0,0.242536)
level07.colliders.C_Parent_Tile_7ID104.collider:SetHalfLengths(0.3,5.48345,8.24621)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID104.collider)
level07.colliders.C_Parent_Tile_7ID105 = {}
level07.colliders.C_Parent_Tile_7ID105.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID105.collider:SetOffset(367,104.704,685.5)
level07.colliders.C_Parent_Tile_7ID105.collider:SetZAxis(0.136637,0,-0.990621)
level07.colliders.C_Parent_Tile_7ID105.collider:SetHalfLengths(0.3,22.1625,14.6373)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID105.collider)
level07.colliders.C_Parent_Tile_7ID106 = {}
level07.colliders.C_Parent_Tile_7ID106.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID106.collider:SetOffset(372,121.866,672.5)
level07.colliders.C_Parent_Tile_7ID106.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_7ID106.collider:SetHalfLengths(0.3,5.9669,3.3541)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID106.collider)
level07.colliders.C_Parent_Tile_7ID107 = {}
level07.colliders.C_Parent_Tile_7ID107.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID107.collider:SetOffset(257.5,102.528,739)
level07.colliders.C_Parent_Tile_7ID107.collider:SetZAxis(-0.996997,0,0.0774367)
level07.colliders.C_Parent_Tile_7ID107.collider:SetHalfLengths(0.3,14.9107,51.6551)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID107.collider)
level07.colliders.C_Parent_Tile_7ID108 = {}
level07.colliders.C_Parent_Tile_7ID108.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID108.collider:SetOffset(208.5,92.6174,744)
level07.colliders.C_Parent_Tile_7ID108.collider:SetZAxis(0.928477,0,0.371391)
level07.colliders.C_Parent_Tile_7ID108.collider:SetHalfLengths(0.3,6.20863,2.69258)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID108.collider)
level07.colliders.C_Parent_Tile_7ID109 = {}
level07.colliders.C_Parent_Tile_7ID109.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID109.collider:SetOffset(204,89.2333,730.5)
level07.colliders.C_Parent_Tile_7ID109.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID109.collider:SetHalfLengths(0.3,5.9669,1.5)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID109.collider)
level07.colliders.C_Parent_Tile_7ID110 = {}
level07.colliders.C_Parent_Tile_7ID110.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID110.collider:SetOffset(206.5,88.2664,728.5)
level07.colliders.C_Parent_Tile_7ID110.collider:SetZAxis(0.980581,0,-0.196116)
level07.colliders.C_Parent_Tile_7ID110.collider:SetHalfLengths(0.3,5.9669,2.54951)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID110.collider)
level07.colliders.C_Parent_Tile_7ID111 = {}
level07.colliders.C_Parent_Tile_7ID111.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID111.collider:SetOffset(321.5,103.253,703.5)
level07.colliders.C_Parent_Tile_7ID111.collider:SetZAxis(-0.196116,0,-0.980581)
level07.colliders.C_Parent_Tile_7ID111.collider:SetHalfLengths(0.3,5,2.54951)
level07.colliders.C_Parent_Tile_7ID101.collider:AddChild(level07.colliders.C_Parent_Tile_7ID111.collider)
level07.colliders.C_Parent_Tile_7ID112 = {}
level07.colliders.C_Parent_Tile_7ID112.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID112.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID112.collider:SetMinPos(151,88.826,693.7)
level07.colliders.C_Parent_Tile_7ID112.collider:SetMaxPos(384.3,112.846,767.3)
level07.colliders.C_Parent_Tile_7ID.collider:AddChild(level07.colliders.C_Parent_Tile_7ID112.collider)
level07.colliders.C_Parent_Tile_7ID113 = {}
level07.colliders.C_Parent_Tile_7ID113.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID113.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID113.collider:SetMinPos(151,88.826,693.7)
level07.colliders.C_Parent_Tile_7ID113.collider:SetMaxPos(370,112.846,767.3)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID113.collider)
level07.colliders.C_Parent_Tile_7ID114 = {}
level07.colliders.C_Parent_Tile_7ID114.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID114.collider:SetOffset(178.5,99.144,767)
level07.colliders.C_Parent_Tile_7ID114.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_7ID114.collider:SetHalfLengths(0.3,5,27.5)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID114.collider)
level07.colliders.C_Parent_Tile_7ID115 = {}
level07.colliders.C_Parent_Tile_7ID115.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID115.collider:SetOffset(210,97.4519,754)
level07.colliders.C_Parent_Tile_7ID115.collider:SetZAxis(0.110432,0,-0.993884)
level07.colliders.C_Parent_Tile_7ID115.collider:SetHalfLengths(0.3,8.62588,9.05539)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID115.collider)
level07.colliders.C_Parent_Tile_7ID116 = {}
level07.colliders.C_Parent_Tile_7ID116.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID116.collider:SetOffset(369,104.22,694)
level07.colliders.C_Parent_Tile_7ID116.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_7ID116.collider:SetHalfLengths(0.3,6.93379,1)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID116.collider)
level07.colliders.C_Parent_Tile_7ID117 = {}
level07.colliders.C_Parent_Tile_7ID117.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID117.collider:SetOffset(308,103.495,714)
level07.colliders.C_Parent_Tile_7ID117.collider:SetZAxis(-0.447214,0,0.894427)
level07.colliders.C_Parent_Tile_7ID117.collider:SetHalfLengths(0.3,5.24173,2.23607)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID117.collider)
level07.colliders.C_Parent_Tile_7ID118 = {}
level07.colliders.C_Parent_Tile_7ID118.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID118.collider:SetOffset(306.5,103.253,719)
level07.colliders.C_Parent_Tile_7ID118.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.C_Parent_Tile_7ID118.collider:SetHalfLengths(0.3,5.24172,3.04138)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID118.collider)
level07.colliders.C_Parent_Tile_7ID119 = {}
level07.colliders.C_Parent_Tile_7ID119.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID119.collider:SetOffset(344.5,104.22,696.5)
level07.colliders.C_Parent_Tile_7ID119.collider:SetZAxis(-0.948683,0,-0.316228)
level07.colliders.C_Parent_Tile_7ID119.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID119.collider)
level07.colliders.C_Parent_Tile_7ID120 = {}
level07.colliders.C_Parent_Tile_7ID120.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID120.collider:SetOffset(338.5,104.22,697)
level07.colliders.C_Parent_Tile_7ID120.collider:SetZAxis(-0.976187,0,0.21693)
level07.colliders.C_Parent_Tile_7ID120.collider:SetHalfLengths(0.3,5.48345,4.60977)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID120.collider)
level07.colliders.C_Parent_Tile_7ID121 = {}
level07.colliders.C_Parent_Tile_7ID121.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID121.collider:SetOffset(367.5,106.154,697)
level07.colliders.C_Parent_Tile_7ID121.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.C_Parent_Tile_7ID121.collider:SetHalfLengths(0.3,6.69207,3.04138)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID121.collider)
level07.colliders.C_Parent_Tile_7ID122 = {}
level07.colliders.C_Parent_Tile_7ID122.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID122.collider:SetOffset(348,104.22,697)
level07.colliders.C_Parent_Tile_7ID122.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_7ID122.collider:SetHalfLengths(0.3,5,2)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID122.collider)
level07.colliders.C_Parent_Tile_7ID123 = {}
level07.colliders.C_Parent_Tile_7ID123.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID123.collider:SetOffset(308,103.978,723)
level07.colliders.C_Parent_Tile_7ID123.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.C_Parent_Tile_7ID123.collider:SetHalfLengths(0.3,5.9669,2.23607)
level07.colliders.C_Parent_Tile_7ID113.collider:AddChild(level07.colliders.C_Parent_Tile_7ID123.collider)
level07.colliders.C_Parent_Tile_7ID124 = {}
level07.colliders.C_Parent_Tile_7ID124.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID124.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_7ID124.collider:SetMinPos(205.76,91.0016,693.732)
level07.colliders.C_Parent_Tile_7ID124.collider:SetMaxPos(384.3,111.637,767.18)
level07.colliders.C_Parent_Tile_7ID112.collider:AddChild(level07.colliders.C_Parent_Tile_7ID124.collider)
level07.colliders.C_Parent_Tile_7ID125 = {}
level07.colliders.C_Parent_Tile_7ID125.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID125.collider:SetOffset(207.5,99.144,765)
level07.colliders.C_Parent_Tile_7ID125.collider:SetZAxis(0.6,0,-0.8)
level07.colliders.C_Parent_Tile_7ID125.collider:SetHalfLengths(0.3,6.69207,2.5)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID125.collider)
level07.colliders.C_Parent_Tile_7ID126 = {}
level07.colliders.C_Parent_Tile_7ID126.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID126.collider:SetOffset(304,103.012,742)
level07.colliders.C_Parent_Tile_7ID126.collider:SetZAxis(-0.316228,0,0.948683)
level07.colliders.C_Parent_Tile_7ID126.collider:SetHalfLengths(0.3,8.62588,6.32456)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID126.collider)
level07.colliders.C_Parent_Tile_7ID127 = {}
level07.colliders.C_Parent_Tile_7ID127.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID127.collider:SetOffset(313,99.3857,755.5)
level07.colliders.C_Parent_Tile_7ID127.collider:SetZAxis(0.826227,0,0.563337)
level07.colliders.C_Parent_Tile_7ID127.collider:SetHalfLengths(0.3,6.20862,13.3135)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID127.collider)
level07.colliders.C_Parent_Tile_7ID128 = {}
level07.colliders.C_Parent_Tile_7ID128.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID128.collider:SetOffset(337,98.1771,764.5)
level07.colliders.C_Parent_Tile_7ID128.collider:SetZAxis(0.993409,0,0.114624)
level07.colliders.C_Parent_Tile_7ID128.collider:SetHalfLengths(0.3,5.72517,13.0863)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID128.collider)
level07.colliders.C_Parent_Tile_7ID129 = {}
level07.colliders.C_Parent_Tile_7ID129.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID129.collider:SetOffset(360.5,98.9023,759)
level07.colliders.C_Parent_Tile_7ID129.collider:SetZAxis(0.83205,0,-0.5547)
level07.colliders.C_Parent_Tile_7ID129.collider:SetHalfLengths(0.3,5.48345,12.6194)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID129.collider)
level07.colliders.C_Parent_Tile_7ID130 = {}
level07.colliders.C_Parent_Tile_7ID130.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID130.collider:SetOffset(377.5,98.4188,745.5)
level07.colliders.C_Parent_Tile_7ID130.collider:SetZAxis(0.707107,0,-0.707107)
level07.colliders.C_Parent_Tile_7ID130.collider:SetHalfLengths(0.3,6.45035,9.19239)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID130.collider)
level07.colliders.C_Parent_Tile_7ID131 = {}
level07.colliders.C_Parent_Tile_7ID131.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID131.collider:SetOffset(384,99.8692,735.5)
level07.colliders.C_Parent_Tile_7ID131.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_7ID131.collider:SetHalfLengths(0.3,8.8676,3.5)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID131.collider)
level07.colliders.C_Parent_Tile_7ID132 = {}
level07.colliders.C_Parent_Tile_7ID132.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID132.collider:SetOffset(382,105.671,700.5)
level07.colliders.C_Parent_Tile_7ID132.collider:SetZAxis(-0.8,0,-0.6)
level07.colliders.C_Parent_Tile_7ID132.collider:SetHalfLengths(0.3,5.24173,2.5)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID132.collider)
level07.colliders.C_Parent_Tile_7ID133 = {}
level07.colliders.C_Parent_Tile_7ID133.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID133.collider:SetOffset(375,105.429,696.5)
level07.colliders.C_Parent_Tile_7ID133.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.C_Parent_Tile_7ID133.collider:SetHalfLengths(0.3,6.20862,5.59017)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID133.collider)
level07.colliders.C_Parent_Tile_7ID134 = {}
level07.colliders.C_Parent_Tile_7ID134.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_7ID134.collider:SetOffset(366,104.462,700)
level07.colliders.C_Parent_Tile_7ID134.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_7ID134.collider:SetHalfLengths(0.3,5.24172,1)
level07.colliders.C_Parent_Tile_7ID124.collider:AddChild(level07.colliders.C_Parent_Tile_7ID134.collider)
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
level07.colliders.Tile7_wallNr41ID = nil
level07.colliders.Tile7_wallNr42ID = nil
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
level07.colliders.C_Parent_Tile_7ID = nil
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
level08.props.tile8ID = {}
level08.props.t8s1ID = {}
level08.props.t8s1ID.model = Assets.LoadModel('Models/tile8_s1.model')
level08.props.t8s1ID.transformID = Gear.BindStaticInstance(level08.props.t8s1ID.model)
Transform.SetPosition(level08.props.t8s1ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s1ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s1ID.transformID, {x=0, y=0, z=0})
level08.props.t8s2ID = {}
level08.props.t8s2ID.model = Assets.LoadModel('Models/tile8_s2.model')
level08.props.t8s2ID.transformID = Gear.BindStaticInstance(level08.props.t8s2ID.model)
Transform.SetPosition(level08.props.t8s2ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s2ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s2ID.transformID, {x=0, y=0, z=0})
level08.props.t8s3ID = {}
level08.props.t8s3ID.model = Assets.LoadModel('Models/tile8_s3.model')
level08.props.t8s3ID.transformID = Gear.BindStaticInstance(level08.props.t8s3ID.model)
Transform.SetPosition(level08.props.t8s3ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s3ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s3ID.transformID, {x=0, y=0, z=0})
level08.props.t8s4ID = {}
level08.props.t8s4ID.model = Assets.LoadModel('Models/tile8_s4.model')
level08.props.t8s4ID.transformID = Gear.BindStaticInstance(level08.props.t8s4ID.model)
Transform.SetPosition(level08.props.t8s4ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s4ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s4ID.transformID, {x=0, y=0, z=0})
level08.props.t8s5ID = {}
level08.props.t8s5ID.model = Assets.LoadModel('Models/tile8_s5.model')
level08.props.t8s5ID.transformID = Gear.BindStaticInstance(level08.props.t8s5ID.model)
Transform.SetPosition(level08.props.t8s5ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s5ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s5ID.transformID, {x=0, y=0, z=0})
level08.props.t8s6ID = {}
level08.props.t8s6ID.model = Assets.LoadModel('Models/tile8_s6a.model')
level08.props.t8s6ID.transformID = Gear.BindStaticInstance(level08.props.t8s6ID.model)
Transform.SetPosition(level08.props.t8s6ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s6ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s6ID.transformID, {x=0, y=0, z=0})
level08.props.t8s7ID = {}
level08.props.t8s7ID.model = Assets.LoadModel('Models/tile8_s7.model')
level08.props.t8s7ID.transformID = Gear.BindStaticInstance(level08.props.t8s7ID.model)
Transform.SetPosition(level08.props.t8s7ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s7ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s7ID.transformID, {x=0, y=0, z=0})
level08.props.t8s8ID = {}
level08.props.t8s8ID.model = Assets.LoadModel('Models/tile8_s8a.model')
level08.props.t8s8ID.transformID = Gear.BindStaticInstance(level08.props.t8s8ID.model)
Transform.SetPosition(level08.props.t8s8ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s8ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s8ID.transformID, {x=0, y=0, z=0})
level08.colliders.C_Parent_Tile_8ID = {}
level08.colliders.C_Parent_Tile_8ID.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID.collider:SetMinPos(261.702,119.168,390.774)
level08.colliders.C_Parent_Tile_8ID.collider:SetMaxPos(380.299,150.026,511)
level08.colliders.C_Parent_Tile_8ID.collider:SetPos(0,0,0)
level08.colliders.C_Parent_Tile_8ID1 = {}
level08.colliders.C_Parent_Tile_8ID1.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID1.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID1.collider:SetMinPos(262.702,119.996,397.721)
level08.colliders.C_Parent_Tile_8ID1.collider:SetMaxPos(298.232,135.293,427.037)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID1.collider)
level08.colliders.C_Parent_Tile_8ID2 = {}
level08.colliders.C_Parent_Tile_8ID2.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID2.collider:SetOffset(293.5,126.486,403.5)
level08.colliders.C_Parent_Tile_8ID2.collider:SetZAxis(-0.633238,0,-0.773957)
level08.colliders.C_Parent_Tile_8ID2.collider:SetHalfLengths(0.3,5.33107,7.10634)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID2.collider)
level08.colliders.C_Parent_Tile_8ID3 = {}
level08.colliders.C_Parent_Tile_8ID3.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID3.collider:SetOffset(281.5,126.155,401)
level08.colliders.C_Parent_Tile_8ID3.collider:SetZAxis(-0.928477,0,0.371391)
level08.colliders.C_Parent_Tile_8ID3.collider:SetHalfLengths(0.3,6.15874,8.07775)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID3.collider)
level08.colliders.C_Parent_Tile_8ID4 = {}
level08.colliders.C_Parent_Tile_8ID4.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID4.collider:SetOffset(272,127.313,404.5)
level08.colliders.C_Parent_Tile_8ID4.collider:SetZAxis(-0.970143,0,0.242536)
level08.colliders.C_Parent_Tile_8ID4.collider:SetHalfLengths(0.3,6.48981,2.06155)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID4.collider)
level08.colliders.C_Parent_Tile_8ID5 = {}
level08.colliders.C_Parent_Tile_8ID5.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID5.collider:SetOffset(267,125.824,412)
level08.colliders.C_Parent_Tile_8ID5.collider:SetZAxis(-0.393919,0,0.919145)
level08.colliders.C_Parent_Tile_8ID5.collider:SetHalfLengths(0.3,5.16553,7.61577)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID5.collider)
level08.colliders.C_Parent_Tile_8ID6 = {}
level08.colliders.C_Parent_Tile_8ID6.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID6.collider:SetOffset(263.5,125.658,423)
level08.colliders.C_Parent_Tile_8ID6.collider:SetZAxis(-0.124035,0,0.992278)
level08.colliders.C_Parent_Tile_8ID6.collider:SetHalfLengths(0.3,5,4.03113)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID6.collider)
level08.colliders.C_Parent_Tile_8ID7 = {}
level08.colliders.C_Parent_Tile_8ID7.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID7.collider:SetOffset(277.5,127.313,406)
level08.colliders.C_Parent_Tile_8ID7.collider:SetZAxis(0.868243,0,0.496139)
level08.colliders.C_Parent_Tile_8ID7.collider:SetHalfLengths(0.3,6.65535,4.03113)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID7.collider)
level08.colliders.C_Parent_Tile_8ID8 = {}
level08.colliders.C_Parent_Tile_8ID8.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID8.collider:SetOffset(284.5,128.969,410.5)
level08.colliders.C_Parent_Tile_8ID8.collider:SetZAxis(0.813733,0,0.581238)
level08.colliders.C_Parent_Tile_8ID8.collider:SetHalfLengths(0.3,6.32428,4.30116)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID8.collider)
level08.colliders.C_Parent_Tile_8ID9 = {}
level08.colliders.C_Parent_Tile_8ID9.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID9.collider:SetOffset(285,127.644,418.5)
level08.colliders.C_Parent_Tile_8ID9.collider:SetZAxis(-0.478852,0,0.877896)
level08.colliders.C_Parent_Tile_8ID9.collider:SetHalfLengths(0.3,5.4966,6.26498)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID9.collider)
level08.colliders.C_Parent_Tile_8ID10 = {}
level08.colliders.C_Parent_Tile_8ID10.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID10.collider:SetOffset(272.5,127.148,416)
level08.colliders.C_Parent_Tile_8ID10.collider:SetZAxis(0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_8ID10.collider:SetHalfLengths(0.3,6.15874,4.03113)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID10.collider)
level08.colliders.C_Parent_Tile_8ID11 = {}
level08.colliders.C_Parent_Tile_8ID11.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID11.collider:SetOffset(273.5,128.307,408)
level08.colliders.C_Parent_Tile_8ID11.collider:SetZAxis(0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_8ID11.collider:SetHalfLengths(0.3,5.99321,4.03113)
level08.colliders.C_Parent_Tile_8ID1.collider:AddChild(level08.colliders.C_Parent_Tile_8ID11.collider)
level08.colliders.C_Parent_Tile_8ID12 = {}
level08.colliders.C_Parent_Tile_8ID12.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID12.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID12.collider:SetMinPos(261.702,120.492,400.7)
level08.colliders.C_Parent_Tile_8ID12.collider:SetMaxPos(327,133.803,452.073)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID12.collider)
level08.colliders.C_Parent_Tile_8ID13 = {}
level08.colliders.C_Parent_Tile_8ID13.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID13.collider:SetOffset(321.5,126.817,401)
level08.colliders.C_Parent_Tile_8ID13.collider:SetZAxis(-1,0,0)
level08.colliders.C_Parent_Tile_8ID13.collider:SetHalfLengths(0.3,5,5.5)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID13.collider)
level08.colliders.C_Parent_Tile_8ID14 = {}
level08.colliders.C_Parent_Tile_8ID14.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID14.collider:SetOffset(312.5,126.817,402)
level08.colliders.C_Parent_Tile_8ID14.collider:SetZAxis(-0.961524,0,0.274721)
level08.colliders.C_Parent_Tile_8ID14.collider:SetHalfLengths(0.3,5.16553,3.64005)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID14.collider)
level08.colliders.C_Parent_Tile_8ID15 = {}
level08.colliders.C_Parent_Tile_8ID15.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID15.collider:SetOffset(303.5,126.651,406)
level08.colliders.C_Parent_Tile_8ID15.collider:SetZAxis(-0.877896,0,0.478852)
level08.colliders.C_Parent_Tile_8ID15.collider:SetHalfLengths(0.3,5.16553,6.26498)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID15.collider)
level08.colliders.C_Parent_Tile_8ID16 = {}
level08.colliders.C_Parent_Tile_8ID16.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID16.collider:SetOffset(262.5,125.658,431)
level08.colliders.C_Parent_Tile_8ID16.collider:SetZAxis(-0.124035,0,0.992278)
level08.colliders.C_Parent_Tile_8ID16.collider:SetHalfLengths(0.3,5,4.03113)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID16.collider)
level08.colliders.C_Parent_Tile_8ID17 = {}
level08.colliders.C_Parent_Tile_8ID17.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID17.collider:SetOffset(262.5,125.658,439.5)
level08.colliders.C_Parent_Tile_8ID17.collider:SetZAxis(0.110432,0,0.993884)
level08.colliders.C_Parent_Tile_8ID17.collider:SetHalfLengths(0.3,5.16553,4.52769)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID17.collider)
level08.colliders.C_Parent_Tile_8ID18 = {}
level08.colliders.C_Parent_Tile_8ID18.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID18.collider:SetOffset(264,125.824,448)
level08.colliders.C_Parent_Tile_8ID18.collider:SetZAxis(0.242536,0,0.970143)
level08.colliders.C_Parent_Tile_8ID18.collider:SetHalfLengths(0.3,5.16553,4.12311)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID18.collider)
level08.colliders.C_Parent_Tile_8ID19 = {}
level08.colliders.C_Parent_Tile_8ID19.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID19.collider:SetOffset(277,127.148,422)
level08.colliders.C_Parent_Tile_8ID19.collider:SetZAxis(-0.928477,0,-0.371391)
level08.colliders.C_Parent_Tile_8ID19.collider:SetHalfLengths(0.3,5,5.38516)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID19.collider)
level08.colliders.C_Parent_Tile_8ID20 = {}
level08.colliders.C_Parent_Tile_8ID20.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID20.collider:SetOffset(271.5,128.141,438)
level08.colliders.C_Parent_Tile_8ID20.collider:SetZAxis(-0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_8ID20.collider:SetHalfLengths(0.3,5.66215,4.03113)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID20.collider)
level08.colliders.C_Parent_Tile_8ID21 = {}
level08.colliders.C_Parent_Tile_8ID21.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID21.collider:SetOffset(276,127.479,434)
level08.colliders.C_Parent_Tile_8ID21.collider:SetZAxis(1,0,0)
level08.colliders.C_Parent_Tile_8ID21.collider:SetHalfLengths(0.3,5.66214,5)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID21.collider)
level08.colliders.C_Parent_Tile_8ID22 = {}
level08.colliders.C_Parent_Tile_8ID22.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID22.collider:SetOffset(282,126.817,440)
level08.colliders.C_Parent_Tile_8ID22.collider:SetZAxis(0.164399,0,0.986394)
level08.colliders.C_Parent_Tile_8ID22.collider:SetHalfLengths(0.3,5.99321,6.08276)
level08.colliders.C_Parent_Tile_8ID12.collider:AddChild(level08.colliders.C_Parent_Tile_8ID22.collider)
level08.colliders.C_Parent_Tile_8ID23 = {}
level08.colliders.C_Parent_Tile_8ID23.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID23.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID23.collider:SetMinPos(264.719,120.161,390.774)
level08.colliders.C_Parent_Tile_8ID23.collider:SetMaxPos(371.23,134.134,460.105)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID23.collider)
level08.colliders.C_Parent_Tile_8ID24 = {}
level08.colliders.C_Parent_Tile_8ID24.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID24.collider:SetOffset(366,125.824,397)
level08.colliders.C_Parent_Tile_8ID24.collider:SetZAxis(-0.640184,0,-0.768221)
level08.colliders.C_Parent_Tile_8ID24.collider:SetHalfLengths(0.3,5.16553,7.81025)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID24.collider)
level08.colliders.C_Parent_Tile_8ID25 = {}
level08.colliders.C_Parent_Tile_8ID25.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID25.collider:SetOffset(357,125.658,394.5)
level08.colliders.C_Parent_Tile_8ID25.collider:SetZAxis(-0.752577,0,0.658505)
level08.colliders.C_Parent_Tile_8ID25.collider:SetHalfLengths(0.3,5.4966,5.31507)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID25.collider)
level08.colliders.C_Parent_Tile_8ID26 = {}
level08.colliders.C_Parent_Tile_8ID26.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID26.collider:SetOffset(351,126.155,401)
level08.colliders.C_Parent_Tile_8ID26.collider:SetZAxis(-0.5547,0,0.83205)
level08.colliders.C_Parent_Tile_8ID26.collider:SetHalfLengths(0.3,5.4966,3.60555)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID26.collider)
level08.colliders.C_Parent_Tile_8ID27 = {}
level08.colliders.C_Parent_Tile_8ID27.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID27.collider:SetOffset(346.5,126.651,406.5)
level08.colliders.C_Parent_Tile_8ID27.collider:SetZAxis(-0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_8ID27.collider:SetHalfLengths(0.3,5.33107,3.53553)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID27.collider)
level08.colliders.C_Parent_Tile_8ID28 = {}
level08.colliders.C_Parent_Tile_8ID28.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID28.collider:SetOffset(340,126.32,406.5)
level08.colliders.C_Parent_Tile_8ID28.collider:SetZAxis(-0.847998,0,-0.529999)
level08.colliders.C_Parent_Tile_8ID28.collider:SetHalfLengths(0.3,5.16553,4.71699)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID28.collider)
level08.colliders.C_Parent_Tile_8ID29 = {}
level08.colliders.C_Parent_Tile_8ID29.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID29.collider:SetOffset(331.5,126.486,402.5)
level08.colliders.C_Parent_Tile_8ID29.collider:SetZAxis(-0.948683,0,-0.316228)
level08.colliders.C_Parent_Tile_8ID29.collider:SetHalfLengths(0.3,5.33107,4.74342)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID29.collider)
level08.colliders.C_Parent_Tile_8ID30 = {}
level08.colliders.C_Parent_Tile_8ID30.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID30.collider:SetOffset(266.5,125.989,456)
level08.colliders.C_Parent_Tile_8ID30.collider:SetZAxis(0.351123,0,0.936329)
level08.colliders.C_Parent_Tile_8ID30.collider:SetHalfLengths(0.3,5.16553,4.272)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID30.collider)
level08.colliders.C_Parent_Tile_8ID31 = {}
level08.colliders.C_Parent_Tile_8ID31.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID31.collider:SetOffset(280.5,127.81,447)
level08.colliders.C_Parent_Tile_8ID31.collider:SetZAxis(-0.928477,0,0.371391)
level08.colliders.C_Parent_Tile_8ID31.collider:SetHalfLengths(0.3,5.66215,2.69258)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID31.collider)
level08.colliders.C_Parent_Tile_8ID32 = {}
level08.colliders.C_Parent_Tile_8ID32.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID32.collider:SetOffset(275.5,128.472,448.5)
level08.colliders.C_Parent_Tile_8ID32.collider:SetZAxis(-0.980581,0,0.196116)
level08.colliders.C_Parent_Tile_8ID32.collider:SetHalfLengths(0.3,5.66215,2.54951)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID32.collider)
level08.colliders.C_Parent_Tile_8ID33 = {}
level08.colliders.C_Parent_Tile_8ID33.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID33.collider:SetOffset(272.5,127.81,445.5)
level08.colliders.C_Parent_Tile_8ID33.collider:SetZAxis(-0.141421,0,-0.98995)
level08.colliders.C_Parent_Tile_8ID33.collider:SetHalfLengths(0.3,5.33108,3.53553)
level08.colliders.C_Parent_Tile_8ID23.collider:AddChild(level08.colliders.C_Parent_Tile_8ID33.collider)
level08.colliders.C_Parent_Tile_8ID34 = {}
level08.colliders.C_Parent_Tile_8ID34.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID34.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID34.collider:SetMinPos(267.724,120.824,406.76)
level08.colliders.C_Parent_Tile_8ID34.collider:SetMaxPos(370.268,133.307,473.192)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID34.collider)
level08.colliders.C_Parent_Tile_8ID35 = {}
level08.colliders.C_Parent_Tile_8ID35.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID35.collider:SetOffset(269.5,125.824,463.5)
level08.colliders.C_Parent_Tile_8ID35.collider:SetZAxis(0.393919,0,0.919145)
level08.colliders.C_Parent_Tile_8ID35.collider:SetHalfLengths(0.3,5,3.80789)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID35.collider)
level08.colliders.C_Parent_Tile_8ID36 = {}
level08.colliders.C_Parent_Tile_8ID36.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID36.collider:SetOffset(273.5,125.824,470)
level08.colliders.C_Parent_Tile_8ID36.collider:SetZAxis(0.640184,0,0.768221)
level08.colliders.C_Parent_Tile_8ID36.collider:SetHalfLengths(0.3,5,3.90512)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID36.collider)
level08.colliders.C_Parent_Tile_8ID37 = {}
level08.colliders.C_Parent_Tile_8ID37.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID37.collider:SetOffset(366.5,126.982,414)
level08.colliders.C_Parent_Tile_8ID37.collider:SetZAxis(-0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_8ID37.collider:SetHalfLengths(0.3,5.16553,7.82624)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID37.collider)
level08.colliders.C_Parent_Tile_8ID38 = {}
level08.colliders.C_Parent_Tile_8ID38.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID38.collider:SetOffset(361,127.148,408.5)
level08.colliders.C_Parent_Tile_8ID38.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.C_Parent_Tile_8ID38.collider:SetHalfLengths(0.3,5.66214,2.5)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID38.collider)
level08.colliders.C_Parent_Tile_8ID39 = {}
level08.colliders.C_Parent_Tile_8ID39.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID39.collider:SetOffset(357,127.81,411.5)
level08.colliders.C_Parent_Tile_8ID39.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.C_Parent_Tile_8ID39.collider:SetHalfLengths(0.3,5.33107,2.5)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID39.collider)
level08.colliders.C_Parent_Tile_8ID40 = {}
level08.colliders.C_Parent_Tile_8ID40.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID40.collider:SetOffset(357.5,127.479,418)
level08.colliders.C_Parent_Tile_8ID40.collider:SetZAxis(0.447214,0,0.894427)
level08.colliders.C_Parent_Tile_8ID40.collider:SetHalfLengths(0.3,5.4966,5.59017)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID40.collider)
level08.colliders.C_Parent_Tile_8ID41 = {}
level08.colliders.C_Parent_Tile_8ID41.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID41.collider:SetOffset(291,127.313,460.5)
level08.colliders.C_Parent_Tile_8ID41.collider:SetZAxis(-0.664364,0,-0.747409)
level08.colliders.C_Parent_Tile_8ID41.collider:SetHalfLengths(0.3,5.33107,6.0208)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID41.collider)
level08.colliders.C_Parent_Tile_8ID42 = {}
level08.colliders.C_Parent_Tile_8ID42.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID42.collider:SetOffset(283,126.982,459)
level08.colliders.C_Parent_Tile_8ID42.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.C_Parent_Tile_8ID42.collider:SetHalfLengths(0.3,5.33107,5)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID42.collider)
level08.colliders.C_Parent_Tile_8ID43 = {}
level08.colliders.C_Parent_Tile_8ID43.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID43.collider:SetOffset(281,127.313,464.5)
level08.colliders.C_Parent_Tile_8ID43.collider:SetZAxis(0.624695,0,0.780869)
level08.colliders.C_Parent_Tile_8ID43.collider:SetHalfLengths(0.3,5.33107,3.20156)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID43.collider)
level08.colliders.C_Parent_Tile_8ID44 = {}
level08.colliders.C_Parent_Tile_8ID44.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID44.collider:SetOffset(285.5,127.644,469.5)
level08.colliders.C_Parent_Tile_8ID44.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_8ID44.collider:SetHalfLengths(0.3,5.66214,3.53553)
level08.colliders.C_Parent_Tile_8ID34.collider:AddChild(level08.colliders.C_Parent_Tile_8ID44.collider)
level08.colliders.C_Parent_Tile_8ID45 = {}
level08.colliders.C_Parent_Tile_8ID45.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID45.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID45.collider:SetMinPos(275.788,119.168,402.866)
level08.colliders.C_Parent_Tile_8ID45.collider:SetMaxPos(378.276,146.053,487.234)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID45.collider)
level08.colliders.C_Parent_Tile_8ID46 = {}
level08.colliders.C_Parent_Tile_8ID46.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID46.collider:SetOffset(376.5,125.989,414.5)
level08.colliders.C_Parent_Tile_8ID46.collider:SetZAxis(-0.393919,0,-0.919145)
level08.colliders.C_Parent_Tile_8ID46.collider:SetHalfLengths(0.3,5.16553,3.80789)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID46.collider)
level08.colliders.C_Parent_Tile_8ID47 = {}
level08.colliders.C_Parent_Tile_8ID47.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID47.collider:SetOffset(373,125.824,407)
level08.colliders.C_Parent_Tile_8ID47.collider:SetZAxis(-0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_8ID47.collider:SetHalfLengths(0.3,5,4.47214)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID47.collider)
level08.colliders.C_Parent_Tile_8ID48 = {}
level08.colliders.C_Parent_Tile_8ID48.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID48.collider:SetOffset(279.5,125.824,476.5)
level08.colliders.C_Parent_Tile_8ID48.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_8ID48.collider:SetHalfLengths(0.3,5,4.94975)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID48.collider)
level08.colliders.C_Parent_Tile_8ID49 = {}
level08.colliders.C_Parent_Tile_8ID49.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID49.collider:SetOffset(284.5,125.824,481.5)
level08.colliders.C_Parent_Tile_8ID49.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_8ID49.collider:SetHalfLengths(0.3,5.99321,2.12132)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID49.collider)
level08.colliders.C_Parent_Tile_8ID50 = {}
level08.colliders.C_Parent_Tile_8ID50.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID50.collider:SetOffset(288.5,126.817,485)
level08.colliders.C_Parent_Tile_8ID50.collider:SetZAxis(0.780869,0,0.624695)
level08.colliders.C_Parent_Tile_8ID50.collider:SetHalfLengths(0.3,7.64857,3.20156)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID50.collider)
level08.colliders.C_Parent_Tile_8ID51 = {}
level08.colliders.C_Parent_Tile_8ID51.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID51.collider:SetOffset(297.5,133.935,479)
level08.colliders.C_Parent_Tile_8ID51.collider:SetZAxis(-0.877896,0,-0.478852)
level08.colliders.C_Parent_Tile_8ID51.collider:SetHalfLengths(0.3,12.118,6.26498)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID51.collider)
level08.colliders.C_Parent_Tile_8ID52 = {}
level08.colliders.C_Parent_Tile_8ID52.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID52.collider:SetOffset(296.5,126.817,477.5)
level08.colliders.C_Parent_Tile_8ID52.collider:SetZAxis(0.948683,0,0.316228)
level08.colliders.C_Parent_Tile_8ID52.collider:SetHalfLengths(0.3,5.16553,4.74342)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID52.collider)
level08.colliders.C_Parent_Tile_8ID53 = {}
level08.colliders.C_Parent_Tile_8ID53.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID53.collider:SetOffset(303,126.982,475)
level08.colliders.C_Parent_Tile_8ID53.collider:SetZAxis(0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_8ID53.collider:SetHalfLengths(0.3,5.16553,4.47214)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID53.collider)
level08.colliders.C_Parent_Tile_8ID54 = {}
level08.colliders.C_Parent_Tile_8ID54.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID54.collider:SetOffset(365,126.982,422)
level08.colliders.C_Parent_Tile_8ID54.collider:SetZAxis(0.980581,0,-0.196116)
level08.colliders.C_Parent_Tile_8ID54.collider:SetHalfLengths(0.3,5,5.09902)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID54.collider)
level08.colliders.C_Parent_Tile_8ID55 = {}
level08.colliders.C_Parent_Tile_8ID55.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID55.collider:SetOffset(291.5,126.982,468.5)
level08.colliders.C_Parent_Tile_8ID55.collider:SetZAxis(0.707107,0,-0.707107)
level08.colliders.C_Parent_Tile_8ID55.collider:SetHalfLengths(0.3,5.33107,4.94975)
level08.colliders.C_Parent_Tile_8ID45.collider:AddChild(level08.colliders.C_Parent_Tile_8ID55.collider)
level08.colliders.C_Parent_Tile_8ID56 = {}
level08.colliders.C_Parent_Tile_8ID56.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID56.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID56.collider:SetMinPos(290.866,120.824,417.967)
level08.colliders.C_Parent_Tile_8ID56.collider:SetMaxPos(380.298,145.887,490.268)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID56.collider)
level08.colliders.C_Parent_Tile_8ID57 = {}
level08.colliders.C_Parent_Tile_8ID57.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID57.collider:SetOffset(379.5,125.989,431)
level08.colliders.C_Parent_Tile_8ID57.collider:SetZAxis(-0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_8ID57.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID57.collider)
level08.colliders.C_Parent_Tile_8ID58 = {}
level08.colliders.C_Parent_Tile_8ID58.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID58.collider:SetOffset(378.5,126.155,422.5)
level08.colliders.C_Parent_Tile_8ID58.collider:SetZAxis(-0.110432,0,-0.993884)
level08.colliders.C_Parent_Tile_8ID58.collider:SetHalfLengths(0.3,5.16553,4.52769)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID58.collider)
level08.colliders.C_Parent_Tile_8ID59 = {}
level08.colliders.C_Parent_Tile_8ID59.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID59.collider:SetOffset(294,129.465,488.5)
level08.colliders.C_Parent_Tile_8ID59.collider:SetZAxis(0.894427,0,0.447214)
level08.colliders.C_Parent_Tile_8ID59.collider:SetHalfLengths(0.3,8.47624,3.3541)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID59.collider)
level08.colliders.C_Parent_Tile_8ID60 = {}
level08.colliders.C_Parent_Tile_8ID60.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID60.collider:SetOffset(305.5,137.411,483)
level08.colliders.C_Parent_Tile_8ID60.collider:SetZAxis(-0.928477,0,-0.371391)
level08.colliders.C_Parent_Tile_8ID60.collider:SetHalfLengths(0.3,8.47624,2.69258)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID60.collider)
level08.colliders.C_Parent_Tile_8ID61 = {}
level08.colliders.C_Parent_Tile_8ID61.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID61.collider:SetOffset(310.5,126.817,473)
level08.colliders.C_Parent_Tile_8ID61.collider:SetZAxis(0.939793,0,0.341743)
level08.colliders.C_Parent_Tile_8ID61.collider:SetHalfLengths(0.3,5.16553,5.85235)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID61.collider)
level08.colliders.C_Parent_Tile_8ID62 = {}
level08.colliders.C_Parent_Tile_8ID62.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID62.collider:SetOffset(315.5,126.651,480)
level08.colliders.C_Parent_Tile_8ID62.collider:SetZAxis(-0.0995037,0,0.995037)
level08.colliders.C_Parent_Tile_8ID62.collider:SetHalfLengths(0.3,5.33107,5.02494)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID62.collider)
level08.colliders.C_Parent_Tile_8ID63 = {}
level08.colliders.C_Parent_Tile_8ID63.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID63.collider:SetOffset(365,127.313,447.5)
level08.colliders.C_Parent_Tile_8ID63.collider:SetZAxis(0.957826,0,0.287348)
level08.colliders.C_Parent_Tile_8ID63.collider:SetHalfLengths(0.3,5,5.22015)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID63.collider)
level08.colliders.C_Parent_Tile_8ID64 = {}
level08.colliders.C_Parent_Tile_8ID64.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID64.collider:SetOffset(370.5,127.313,441.5)
level08.colliders.C_Parent_Tile_8ID64.collider:SetZAxis(0.066519,0,-0.997785)
level08.colliders.C_Parent_Tile_8ID64.collider:SetHalfLengths(0.3,5.4966,7.51665)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID64.collider)
level08.colliders.C_Parent_Tile_8ID65 = {}
level08.colliders.C_Parent_Tile_8ID65.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID65.collider:SetOffset(366,127.81,434.5)
level08.colliders.C_Parent_Tile_8ID65.collider:SetZAxis(-0.995037,0,0.0995037)
level08.colliders.C_Parent_Tile_8ID65.collider:SetHalfLengths(0.3,5.33107,5.02494)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID65.collider)
level08.colliders.C_Parent_Tile_8ID66 = {}
level08.colliders.C_Parent_Tile_8ID66.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID66.collider:SetOffset(360.5,127.479,440.5)
level08.colliders.C_Parent_Tile_8ID66.collider:SetZAxis(-0.0905358,0,0.995893)
level08.colliders.C_Parent_Tile_8ID66.collider:SetHalfLengths(0.3,5.16553,5.52268)
level08.colliders.C_Parent_Tile_8ID56.collider:AddChild(level08.colliders.C_Parent_Tile_8ID66.collider)
level08.colliders.C_Parent_Tile_8ID67 = {}
level08.colliders.C_Parent_Tile_8ID67.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID67.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID67.collider:SetMinPos(296.882,120.658,434.97)
level08.colliders.C_Parent_Tile_8ID67.collider:SetMaxPos(380.299,150.026,493.276)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID67.collider)
level08.colliders.C_Parent_Tile_8ID68 = {}
level08.colliders.C_Parent_Tile_8ID68.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID68.collider:SetOffset(379.5,125.824,440)
level08.colliders.C_Parent_Tile_8ID68.collider:SetZAxis(0.0995037,0,-0.995037)
level08.colliders.C_Parent_Tile_8ID68.collider:SetHalfLengths(0.3,5.16553,5.02494)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID68.collider)
level08.colliders.C_Parent_Tile_8ID69 = {}
level08.colliders.C_Parent_Tile_8ID69.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID69.collider:SetOffset(300.5,132.942,491.5)
level08.colliders.C_Parent_Tile_8ID69.collider:SetZAxis(0.919145,0,0.393919)
level08.colliders.C_Parent_Tile_8ID69.collider:SetHalfLengths(0.3,9.13838,3.80789)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID69.collider)
level08.colliders.C_Parent_Tile_8ID70 = {}
level08.colliders.C_Parent_Tile_8ID70.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID70.collider:SetOffset(311.5,141.218,485)
level08.colliders.C_Parent_Tile_8ID70.collider:SetZAxis(-0.961524,0,-0.274721)
level08.colliders.C_Parent_Tile_8ID70.collider:SetHalfLengths(0.3,8.80731,3.64005)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID70.collider)
level08.colliders.C_Parent_Tile_8ID71 = {}
level08.colliders.C_Parent_Tile_8ID71.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID71.collider:SetOffset(322,126.982,485)
level08.colliders.C_Parent_Tile_8ID71.collider:SetZAxis(1,0,0)
level08.colliders.C_Parent_Tile_8ID71.collider:SetHalfLengths(0.3,5.4966,7)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID71.collider)
level08.colliders.C_Parent_Tile_8ID72 = {}
level08.colliders.C_Parent_Tile_8ID72.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID72.collider:SetOffset(328,127.479,479.5)
level08.colliders.C_Parent_Tile_8ID72.collider:SetZAxis(-0.178885,0,-0.98387)
level08.colliders.C_Parent_Tile_8ID72.collider:SetHalfLengths(0.3,5.16553,5.59017)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID72.collider)
level08.colliders.C_Parent_Tile_8ID73 = {}
level08.colliders.C_Parent_Tile_8ID73.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID73.collider:SetOffset(332.5,127.313,472.5)
level08.colliders.C_Parent_Tile_8ID73.collider:SetZAxis(0.964764,0,-0.263117)
level08.colliders.C_Parent_Tile_8ID73.collider:SetHalfLengths(0.3,5.33107,5.70088)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID73.collider)
level08.colliders.C_Parent_Tile_8ID74 = {}
level08.colliders.C_Parent_Tile_8ID74.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID74.collider:SetOffset(340,126.982,476)
level08.colliders.C_Parent_Tile_8ID74.collider:SetZAxis(0.371391,0,0.928477)
level08.colliders.C_Parent_Tile_8ID74.collider:SetHalfLengths(0.3,5.4966,5.38516)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID74.collider)
level08.colliders.C_Parent_Tile_8ID75 = {}
level08.colliders.C_Parent_Tile_8ID75.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID75.collider:SetOffset(359,127.479,459.5)
level08.colliders.C_Parent_Tile_8ID75.collider:SetZAxis(-0.847998,0,-0.529999)
level08.colliders.C_Parent_Tile_8ID75.collider:SetHalfLengths(0.3,5.4966,4.71699)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID75.collider)
level08.colliders.C_Parent_Tile_8ID76 = {}
level08.colliders.C_Parent_Tile_8ID76.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID76.collider:SetOffset(351,126.982,461.5)
level08.colliders.C_Parent_Tile_8ID76.collider:SetZAxis(-0.664364,0,0.747409)
level08.colliders.C_Parent_Tile_8ID76.collider:SetHalfLengths(0.3,5.16553,6.0208)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID76.collider)
level08.colliders.C_Parent_Tile_8ID77 = {}
level08.colliders.C_Parent_Tile_8ID77.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID77.collider:SetOffset(351,127.148,469.5)
level08.colliders.C_Parent_Tile_8ID77.collider:SetZAxis(0.752577,0,0.658505)
level08.colliders.C_Parent_Tile_8ID77.collider:SetHalfLengths(0.3,5.16553,5.31507)
level08.colliders.C_Parent_Tile_8ID67.collider:AddChild(level08.colliders.C_Parent_Tile_8ID77.collider)
level08.colliders.C_Parent_Tile_8ID78 = {}
level08.colliders.C_Parent_Tile_8ID78.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID78.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID78.collider:SetMinPos(303.927,120.492,444.958)
level08.colliders.C_Parent_Tile_8ID78.collider:SetMaxPos(379.297,147.377,496.296)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID78.collider)
level08.colliders.C_Parent_Tile_8ID79 = {}
level08.colliders.C_Parent_Tile_8ID79.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID79.collider:SetOffset(376.5,125.658,456)
level08.colliders.C_Parent_Tile_8ID79.collider:SetZAxis(0.351123,0,-0.936329)
level08.colliders.C_Parent_Tile_8ID79.collider:SetHalfLengths(0.3,5,4.272)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID79.collider)
level08.colliders.C_Parent_Tile_8ID80 = {}
level08.colliders.C_Parent_Tile_8ID80.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID80.collider:SetOffset(378.5,125.658,448.5)
level08.colliders.C_Parent_Tile_8ID80.collider:SetZAxis(0.141421,0,-0.98995)
level08.colliders.C_Parent_Tile_8ID80.collider:SetHalfLengths(0.3,5.16553,3.53553)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID80.collider)
level08.colliders.C_Parent_Tile_8ID81 = {}
level08.colliders.C_Parent_Tile_8ID81.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID81.collider:SetOffset(306,137.08,493.5)
level08.colliders.C_Parent_Tile_8ID81.collider:SetZAxis(0.970143,0,0.242536)
level08.colliders.C_Parent_Tile_8ID81.collider:SetHalfLengths(0.3,6.65535,2.06155)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID81.collider)
level08.colliders.C_Parent_Tile_8ID82 = {}
level08.colliders.C_Parent_Tile_8ID82.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID82.collider:SetOffset(310.5,138.735,494.5)
level08.colliders.C_Parent_Tile_8ID82.collider:SetZAxis(0.980581,0,0.196116)
level08.colliders.C_Parent_Tile_8ID82.collider:SetHalfLengths(0.3,7.31749,2.54951)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID82.collider)
level08.colliders.C_Parent_Tile_8ID83 = {}
level08.colliders.C_Parent_Tile_8ID83.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID83.collider:SetOffset(316,141.053,495.5)
level08.colliders.C_Parent_Tile_8ID83.collider:SetZAxis(0.986394,0,0.164399)
level08.colliders.C_Parent_Tile_8ID83.collider:SetHalfLengths(0.3,5.99321,3.04138)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID83.collider)
level08.colliders.C_Parent_Tile_8ID84 = {}
level08.colliders.C_Parent_Tile_8ID84.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID84.collider:SetOffset(322,141.384,486)
level08.colliders.C_Parent_Tile_8ID84.collider:SetZAxis(-1,0,0)
level08.colliders.C_Parent_Tile_8ID84.collider:SetHalfLengths(0.3,5.16553,7)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID84.collider)
level08.colliders.C_Parent_Tile_8ID85 = {}
level08.colliders.C_Parent_Tile_8ID85.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID85.collider:SetOffset(347,127.479,478.5)
level08.colliders.C_Parent_Tile_8ID85.collider:SetZAxis(0.894427,0,-0.447214)
level08.colliders.C_Parent_Tile_8ID85.collider:SetHalfLengths(0.3,5.4966,5.59017)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID85.collider)
level08.colliders.C_Parent_Tile_8ID86 = {}
level08.colliders.C_Parent_Tile_8ID86.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID86.collider:SetOffset(336,139.066,484)
level08.colliders.C_Parent_Tile_8ID86.collider:SetZAxis(0.948683,0,-0.316228)
level08.colliders.C_Parent_Tile_8ID86.collider:SetHalfLengths(0.3,8.3107,3.16228)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID86.collider)
level08.colliders.C_Parent_Tile_8ID87 = {}
level08.colliders.C_Parent_Tile_8ID87.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID87.collider:SetOffset(347.5,132.942,479)
level08.colliders.C_Parent_Tile_8ID87.collider:SetZAxis(0.83205,0,-0.5547)
level08.colliders.C_Parent_Tile_8ID87.collider:SetHalfLengths(0.3,10.9593,5.40833)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID87.collider)
level08.colliders.C_Parent_Tile_8ID88 = {}
level08.colliders.C_Parent_Tile_8ID88.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID88.collider:SetOffset(358.5,127.479,467.5)
level08.colliders.C_Parent_Tile_8ID88.collider:SetZAxis(0.633238,0,-0.773957)
level08.colliders.C_Parent_Tile_8ID88.collider:SetHalfLengths(0.3,5,7.10634)
level08.colliders.C_Parent_Tile_8ID78.collider:AddChild(level08.colliders.C_Parent_Tile_8ID88.collider)
level08.colliders.C_Parent_Tile_8ID89 = {}
level08.colliders.C_Parent_Tile_8ID89.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID89.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID89.collider:SetMinPos(318.7,120.658,459.866)
level08.colliders.C_Parent_Tile_8ID89.collider:SetMaxPos(375.268,149.363,511)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID89.collider)
level08.colliders.C_Parent_Tile_8ID90 = {}
level08.colliders.C_Parent_Tile_8ID90.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID90.collider:SetOffset(324,142.046,503)
level08.colliders.C_Parent_Tile_8ID90.collider:SetZAxis(0,0,-1)
level08.colliders.C_Parent_Tile_8ID90.collider:SetHalfLengths(0.3,5,8)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID90.collider)
level08.colliders.C_Parent_Tile_8ID91 = {}
level08.colliders.C_Parent_Tile_8ID91.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID91.collider:SetOffset(326,142.046,495)
level08.colliders.C_Parent_Tile_8ID91.collider:SetZAxis(1,0,0)
level08.colliders.C_Parent_Tile_8ID91.collider:SetHalfLengths(0.3,5.33105,2)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID91.collider)
level08.colliders.C_Parent_Tile_8ID92 = {}
level08.colliders.C_Parent_Tile_8ID92.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID92.collider:SetOffset(332,141.715,494)
level08.colliders.C_Parent_Tile_8ID92.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.C_Parent_Tile_8ID92.collider:SetHalfLengths(0.3,7.64857,4.12311)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID92.collider)
level08.colliders.C_Parent_Tile_8ID93 = {}
level08.colliders.C_Parent_Tile_8ID93.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID93.collider:SetOffset(340.5,139.066,492)
level08.colliders.C_Parent_Tile_8ID93.collider:SetZAxis(0.976187,0,-0.21693)
level08.colliders.C_Parent_Tile_8ID93.collider:SetHalfLengths(0.3,9.80052,4.60977)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID93.collider)
level08.colliders.C_Parent_Tile_8ID94 = {}
level08.colliders.C_Parent_Tile_8ID94.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID94.collider:SetOffset(362.5,125.658,477.5)
level08.colliders.C_Parent_Tile_8ID94.collider:SetZAxis(0.707107,0,-0.707107)
level08.colliders.C_Parent_Tile_8ID94.collider:SetHalfLengths(0.3,5,3.53553)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID94.collider)
level08.colliders.C_Parent_Tile_8ID95 = {}
level08.colliders.C_Parent_Tile_8ID95.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID95.collider:SetOffset(368,125.658,471.5)
level08.colliders.C_Parent_Tile_8ID95.collider:SetZAxis(0.650791,0,-0.759257)
level08.colliders.C_Parent_Tile_8ID95.collider:SetHalfLengths(0.3,5,4.60977)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID95.collider)
level08.colliders.C_Parent_Tile_8ID96 = {}
level08.colliders.C_Parent_Tile_8ID96.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID96.collider:SetOffset(373,125.658,464)
level08.colliders.C_Parent_Tile_8ID96.collider:SetZAxis(0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_8ID96.collider:SetHalfLengths(0.3,5,4.47214)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID96.collider)
level08.colliders.C_Parent_Tile_8ID97 = {}
level08.colliders.C_Parent_Tile_8ID97.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID97.collider:SetOffset(319,142.046,503.5)
level08.colliders.C_Parent_Tile_8ID97.collider:SetZAxis(0,0,1)
level08.colliders.C_Parent_Tile_8ID97.collider:SetHalfLengths(0.3,5,7.5)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID97.collider)
level08.colliders.C_Parent_Tile_8ID98 = {}
level08.colliders.C_Parent_Tile_8ID98.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID98.collider:SetOffset(331,141.384,485.5)
level08.colliders.C_Parent_Tile_8ID98.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.C_Parent_Tile_8ID98.collider:SetHalfLengths(0.3,7.31749,2.06155)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID98.collider)
level08.colliders.C_Parent_Tile_8ID99 = {}
level08.colliders.C_Parent_Tile_8ID99.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID99.collider:SetOffset(341,135.756,482.5)
level08.colliders.C_Parent_Tile_8ID99.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.C_Parent_Tile_8ID99.collider:SetHalfLengths(0.3,7.8141,2.06155)
level08.colliders.C_Parent_Tile_8ID89.collider:AddChild(level08.colliders.C_Parent_Tile_8ID99.collider)
level08.colliders.C_Parent_Tile_8ID100 = {}
level08.colliders.C_Parent_Tile_8ID100.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID100.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_8ID100.collider:SetMinPos(344.866,120.658,479.834)
level08.colliders.C_Parent_Tile_8ID100.collider:SetMaxPos(360.25,142.245,491.268)
level08.colliders.C_Parent_Tile_8ID.collider:AddChild(level08.colliders.C_Parent_Tile_8ID100.collider)
level08.colliders.C_Parent_Tile_8ID101 = {}
level08.colliders.C_Parent_Tile_8ID101.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID101.collider:SetOffset(348,134.266,489.5)
level08.colliders.C_Parent_Tile_8ID101.collider:SetZAxis(0.894427,0,-0.447214)
level08.colliders.C_Parent_Tile_8ID101.collider:SetHalfLengths(0.3,7.97963,3.3541)
level08.colliders.C_Parent_Tile_8ID100.collider:AddChild(level08.colliders.C_Parent_Tile_8ID101.collider)
level08.colliders.C_Parent_Tile_8ID102 = {}
level08.colliders.C_Parent_Tile_8ID102.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID102.collider:SetOffset(354.5,131.286,485.5)
level08.colliders.C_Parent_Tile_8ID102.collider:SetZAxis(0.813733,0,-0.581238)
level08.colliders.C_Parent_Tile_8ID102.collider:SetHalfLengths(0.3,9.46946,4.30116)
level08.colliders.C_Parent_Tile_8ID100.collider:AddChild(level08.colliders.C_Parent_Tile_8ID102.collider)
level08.colliders.C_Parent_Tile_8ID103 = {}
level08.colliders.C_Parent_Tile_8ID103.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_8ID103.collider:SetOffset(359,126.817,481.5)
level08.colliders.C_Parent_Tile_8ID103.collider:SetZAxis(0.5547,0,-0.83205)
level08.colliders.C_Parent_Tile_8ID103.collider:SetHalfLengths(0.3,6.15874,1.80278)
level08.colliders.C_Parent_Tile_8ID100.collider:AddChild(level08.colliders.C_Parent_Tile_8ID103.collider)
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
level08.colliders.C_Parent_Tile_8ID61 = nil
level08.colliders.C_Parent_Tile_8ID62 = nil
level08.colliders.C_Parent_Tile_8ID63 = nil
level08.colliders.C_Parent_Tile_8ID64 = nil
level08.colliders.C_Parent_Tile_8ID65 = nil
level08.colliders.C_Parent_Tile_8ID66 = nil
level08.colliders.C_Parent_Tile_8ID67 = nil
level08.colliders.C_Parent_Tile_8ID68 = nil
level08.colliders.C_Parent_Tile_8ID69 = nil
level08.colliders.C_Parent_Tile_8ID70 = nil
level08.colliders.C_Parent_Tile_8ID71 = nil
level08.colliders.C_Parent_Tile_8ID72 = nil
level08.colliders.C_Parent_Tile_8ID73 = nil
level08.colliders.C_Parent_Tile_8ID74 = nil
level08.colliders.C_Parent_Tile_8ID75 = nil
level08.colliders.C_Parent_Tile_8ID76 = nil
level08.colliders.C_Parent_Tile_8ID77 = nil
level08.colliders.C_Parent_Tile_8ID78 = nil
level08.colliders.C_Parent_Tile_8ID79 = nil
level08.colliders.C_Parent_Tile_8ID80 = nil
level08.colliders.C_Parent_Tile_8ID81 = nil
level08.colliders.C_Parent_Tile_8ID82 = nil
level08.colliders.C_Parent_Tile_8ID83 = nil
level08.colliders.C_Parent_Tile_8ID84 = nil
level08.colliders.C_Parent_Tile_8ID85 = nil
level08.colliders.C_Parent_Tile_8ID86 = nil
level08.colliders.C_Parent_Tile_8ID87 = nil
level08.colliders.C_Parent_Tile_8ID88 = nil
level08.colliders.C_Parent_Tile_8ID89 = nil
level08.colliders.C_Parent_Tile_8ID90 = nil
level08.colliders.C_Parent_Tile_8ID91 = nil
level08.colliders.C_Parent_Tile_8ID92 = nil
level08.colliders.C_Parent_Tile_8ID93 = nil
level08.colliders.C_Parent_Tile_8ID94 = nil
level08.colliders.C_Parent_Tile_8ID95 = nil
level08.colliders.C_Parent_Tile_8ID96 = nil
level08.colliders.C_Parent_Tile_8ID97 = nil
level08.colliders.C_Parent_Tile_8ID98 = nil
level08.colliders.C_Parent_Tile_8ID99 = nil
level08.colliders.C_Parent_Tile_8ID100 = nil
level08.colliders.C_Parent_Tile_8ID101 = nil
level08.colliders.C_Parent_Tile_8ID102 = nil
level08.colliders.C_Parent_Tile_8ID103 = nil
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
Gear.UnbindInstance(level08.props.t8s5ID.transformID)
Assets.UnloadModel('Models/tile8_s5.model')
level08.props.t8s5ID = nil
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
level08.colliders.Tile8_wallNr19ID = nil
level08.colliders.Tile8_wallNr20ID = nil
level08.colliders.Tile8_wallNr21ID = nil
level08.colliders.Tile8_wallNr22ID = nil
level08.colliders.Tile8_wallNr23ID = nil
level08.colliders.Tile8_wallNr24ID = nil
level08.colliders.Tile8_wallNr25ID = nil
level08.colliders.Tile8_wallNr26ID = nil
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
level08.colliders.Tile8_wallNr50ID = nil
level08.colliders.Tile8_wallNr51ID = nil
level08.colliders.Tile8_wallNr52ID = nil
level08.colliders.Tile8_wallNr53ID = nil
level08.colliders.Tile8_wallNr54ID = nil
level08.colliders.Tile8_wallNr55ID = nil
level08.colliders.Tile8_wallNr56ID = nil
level08.colliders.Tile8_wallNr57ID = nil
level08.colliders.Tile8_wallNr58ID = nil
level08.colliders.Tile8_wallNr59ID = nil
level08.colliders.Tile8_wallNr60ID = nil
level08.colliders.Tile8_wallNr61ID = nil
level08.colliders.Tile8_wallNr62ID = nil
level08.colliders.Tile8_wallNr63ID = nil
level08.colliders.Tile8_wallNr64ID = nil
level08.colliders.Tile8_wallNr65ID = nil
level08.colliders.Tile8_wallNr66ID = nil
level08.colliders.Tile8_wallNr67ID = nil
level08.colliders.Tile8_wallNr68ID = nil
level08.colliders.Tile8_wallNr69ID = nil
level08.colliders.Tile8_wallNr70ID = nil
level08.colliders.Tile8_wallNr71ID = nil
level08.colliders.Tile8_wallNr72ID = nil
level08.colliders.Tile8_wallNr73ID = nil
level08.colliders.Tile8_wallNr74ID = nil
level08.colliders.Tile8_wallNr75ID = nil
level08.colliders.Tile8_wallNr76ID = nil
level08.colliders.Tile8_wallNr77ID = nil
level08.colliders.Tile8_wallNr78ID = nil
level08.colliders.Tile8_wallNr79ID = nil
level08.colliders.Tile8_wallNr80ID = nil
level08.colliders.Tile8_wallNr81ID = nil
level08.colliders.Tile8_wallNr82ID = nil
level08.colliders.Tile8_wallNr83ID = nil
level08.colliders.Tile8_wallNr84ID = nil
level08.colliders.Tile8_wallNr85ID = nil
level08.colliders.Tile8_wallNr86ID = nil
level08.colliders.Tile8_wallNr87ID = nil
level08.colliders.Tile8_wallNr88ID = nil
level08.colliders.Tile8_wallNr89ID = nil
level08.colliders.Tile8_wallNr90ID = nil
level08.colliders.Tile8_wallNr91ID = nil
level08.colliders.Tile8_wallNr92ID = nil
level08.colliders.C_Parent_Tile_81ID = nil
level08.colliders.C_Parent_Tile_82ID = nil
level08.colliders.C_Parent_Tile_83ID = nil
level08.colliders.C_Parent_Tile_84ID = nil
level08.colliders.C_Parent_Tile_85ID = nil
level08.colliders.C_Parent_Tile_86ID = nil
level08.colliders.C_Parent_Tile_87ID = nil
level08.colliders.C_Parent_Tile_88ID = nil
level08.colliders.C_Parent_Tile_89ID = nil
level08.colliders.C_Parent_Tile_810ID = nil
level08.colliders.C_Parent_Tile_8ID = nil
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
