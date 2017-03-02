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
level01.props.OakTree_Collider1377ID = {}
level01.props.OakTree_Collider1377ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider1377ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider1377ID.model)
Transform.SetPosition(level01.props.OakTree_Collider1377ID.transformID, {x=24, y=6.8555, z=139})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider1377ID.transformID, 1.33015, 1.3757, 1.22905)
Transform.SetRotation(level01.props.OakTree_Collider1377ID.transformID, {x=0, y=0.376574, z=0})
level01.props.OakTree_Collider2378ID = {}
level01.props.OakTree_Collider2378ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider2378ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider2378ID.model)
Transform.SetPosition(level01.props.OakTree_Collider2378ID.transformID, {x=6.18867, y=4.53125, z=180.735})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider2378ID.transformID, 1.43303, 1.47113, 1.11894)
Transform.SetRotation(level01.props.OakTree_Collider2378ID.transformID, {x=0, y=-2.0418, z=0})
level01.props.OakTree_Collider3379ID = {}
level01.props.OakTree_Collider3379ID.model = Assets.LoadModel('Models/OakTree1.model')
level01.props.OakTree_Collider3379ID.transformID = Gear.BindStaticInstance(level01.props.OakTree_Collider3379ID.model)
Transform.SetPosition(level01.props.OakTree_Collider3379ID.transformID, {x=37.7154, y=7.46875, z=182.582})
Transform.SetScaleNonUniform(level01.props.OakTree_Collider3379ID.transformID, 2.08888, 2.61163, 1.85121)
Transform.SetRotation(level01.props.OakTree_Collider3379ID.transformID, {x=0, y=-1.42165, z=0})
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
slussen = {}
slussen.model = Assets.LoadModel('Models/Branch_blocker.model')
slussen.transformID = Gear.BindStaticInstance(slussen.model)
Transform.SetPosition(slussen.transformID, {x =20.0156, y =6.19141, z = 157.875})
level01.triggers.New435ID = {}
level01.triggers.New435ID.collider = SphereCollider.Create(-1)
level01.triggers.New435ID.collider:SetOffset(0,0,0)
level01.triggers.New435ID.collider:SetRadius(1)
level01.triggers.New435ID.collider:SetPos(20.0156,6.19141,157.875)
sluice1 = CreateSluice(level01.triggers.New435ID.collider, slussen.transformID)
level01.triggers.New435ID.collider.OnEnter= function(self) SluiceEnter(sluice1) end
level01.triggers.New435ID.collider.OnTriggering = function(self,dt) SluiceUpdate(dt, sluice1) end
level01.triggers.New435ID.collider.OnExit = function(self) SluiceExit(sluice1) end
level01.triggers.New435ID.collider.triggered = false
CollisionHandler.AddSphere(level01.triggers.New435ID.collider, 4)
level01.props.Stone2673ID = {}
level01.props.Stone2673ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone2673ID.transformID = Gear.BindStaticInstance(level01.props.Stone2673ID.model)
Transform.SetPosition(level01.props.Stone2673ID.transformID, {x=4.34854, y=7.05469, z=139.31})
Transform.SetScaleNonUniform(level01.props.Stone2673ID.transformID, 2.87522, 2.86321, 2.81752)
Transform.SetRotation(level01.props.Stone2673ID.transformID, {x=-0.0120454, y=-1.17492, z=-0.0422012})
level01.props.Stone3674ID = {}
level01.props.Stone3674ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone3674ID.transformID = Gear.BindStaticInstance(level01.props.Stone3674ID.model)
Transform.SetPosition(level01.props.Stone3674ID.transformID, {x=6.41381, y=6.84375, z=142.217})
Transform.SetScaleNonUniform(level01.props.Stone3674ID.transformID, 1.28523, 1.43478, 1.76532)
Transform.SetRotation(level01.props.Stone3674ID.transformID, {x=0, y=0, z=0})
level01.props.Stone3674ID.collider = SphereCollider.Create(-1)
level01.props.Stone3674ID.collider:SetOffset(0,0.2,0)
level01.props.Stone3674ID.collider:SetRadius(1)
level01.props.Stone3674ID.collider:SetPos(6.41381,7.04375,142.217)
CollisionHandler.AddSphere(level01.props.Stone3674ID.collider, 3)
level01.props.Stone1675ID = {}
level01.props.Stone1675ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone1675ID.transformID = Gear.BindStaticInstance(level01.props.Stone1675ID.model)
Transform.SetPosition(level01.props.Stone1675ID.transformID, {x=3.73525, y=6.76953, z=145.076})
Transform.SetScaleNonUniform(level01.props.Stone1675ID.transformID, 1.6774, 1.68557, 1.1635)
Transform.SetRotation(level01.props.Stone1675ID.transformID, {x=0, y=-1.78111, z=0})
level01.props.Stone1675ID.collider = SphereCollider.Create(-1)
level01.props.Stone1675ID.collider:SetOffset(-0.5,0,-0.5)
level01.props.Stone1675ID.collider:SetRadius(2)
level01.props.Stone1675ID.collider:SetPos(3.23525,6.76953,144.576)
CollisionHandler.AddSphere(level01.props.Stone1675ID.collider, 3)
level01.props.Stone31676ID = {}
level01.props.Stone31676ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone31676ID.transformID = Gear.BindStaticInstance(level01.props.Stone31676ID.model)
Transform.SetPosition(level01.props.Stone31676ID.transformID, {x=4.70592, y=6.84375, z=143.694})
Transform.SetScaleNonUniform(level01.props.Stone31676ID.transformID, 1, 2.45793, 1.84109)
Transform.SetRotation(level01.props.Stone31676ID.transformID, {x=0, y=0, z=0})
level01.props.Stone31676ID.collider = SphereCollider.Create(-1)
level01.props.Stone31676ID.collider:SetOffset(0,0.2,0)
level01.props.Stone31676ID.collider:SetRadius(1)
level01.props.Stone31676ID.collider:SetPos(4.70592,7.04375,143.694)
CollisionHandler.AddSphere(level01.props.Stone31676ID.collider, 3)
level01.props.House677ID = {}
level01.props.House677ID.model = Assets.LoadModel('Models/House1.model')
level01.props.House677ID.transformID = Gear.BindStaticInstance(level01.props.House677ID.model)
Transform.SetPosition(level01.props.House677ID.transformID, {x=36.887, y=7.96094, z=130.834})
Transform.SetScaleNonUniform(level01.props.House677ID.transformID, 1.62205, 1.60726, 1.37196)
Transform.SetRotation(level01.props.House677ID.transformID, {x=0, y=0, z=0})
level01.props.Stone11678ID = {}
level01.props.Stone11678ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone11678ID.transformID = Gear.BindStaticInstance(level01.props.Stone11678ID.model)
Transform.SetPosition(level01.props.Stone11678ID.transformID, {x=3.52792, y=3.78483, z=188.422})
Transform.SetScaleNonUniform(level01.props.Stone11678ID.transformID, 1.51213, 1.79035, 1.59059)
Transform.SetRotation(level01.props.Stone11678ID.transformID, {x=0, y=0, z=0})
level01.props.Stone11678ID.collider = SphereCollider.Create(-1)
level01.props.Stone11678ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone11678ID.collider:SetRadius(2)
level01.props.Stone11678ID.collider:SetPos(3.52792,4.28483,189.022)
CollisionHandler.AddSphere(level01.props.Stone11678ID.collider, 3)
level01.props.Stone21679ID = {}
level01.props.Stone21679ID.model = Assets.LoadModel('Models/Stone3.model')
level01.props.Stone21679ID.transformID = Gear.BindStaticInstance(level01.props.Stone21679ID.model)
Transform.SetPosition(level01.props.Stone21679ID.transformID, {x=4.952, y=4.125, z=191.432})
Transform.SetScaleNonUniform(level01.props.Stone21679ID.transformID, 1.4564, 1.68508, 1.50235)
Transform.SetRotation(level01.props.Stone21679ID.transformID, {x=0.0164697, y=0, z=0})
level01.props.Stone32680ID = {}
level01.props.Stone32680ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone32680ID.transformID = Gear.BindStaticInstance(level01.props.Stone32680ID.model)
Transform.SetPosition(level01.props.Stone32680ID.transformID, {x=5.19985, y=3.98828, z=188.718})
Transform.SetScaleNonUniform(level01.props.Stone32680ID.transformID, 1.25457, 2.0231, 1.39897)
Transform.SetRotation(level01.props.Stone32680ID.transformID, {x=0, y=0, z=0})
level01.props.Stone32680ID.collider = SphereCollider.Create(-1)
level01.props.Stone32680ID.collider:SetOffset(0,0.2,0)
level01.props.Stone32680ID.collider:SetRadius(1)
level01.props.Stone32680ID.collider:SetPos(5.19985,4.18828,188.718)
CollisionHandler.AddSphere(level01.props.Stone32680ID.collider, 3)
level01.props.Stone33681ID = {}
level01.props.Stone33681ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone33681ID.transformID = Gear.BindStaticInstance(level01.props.Stone33681ID.model)
Transform.SetPosition(level01.props.Stone33681ID.transformID, {x=5.32939, y=3.88086, z=193.526})
Transform.SetScaleNonUniform(level01.props.Stone33681ID.transformID, 1.44906, 1.65862, 1.39719)
Transform.SetRotation(level01.props.Stone33681ID.transformID, {x=0, y=0, z=0})
level01.props.Stone33681ID.collider = SphereCollider.Create(-1)
level01.props.Stone33681ID.collider:SetOffset(0,0.2,0)
level01.props.Stone33681ID.collider:SetRadius(1)
level01.props.Stone33681ID.collider:SetPos(5.32939,4.08086,193.526)
CollisionHandler.AddSphere(level01.props.Stone33681ID.collider, 3)
level01.props.Stone34682ID = {}
level01.props.Stone34682ID.model = Assets.LoadModel('Models/Stone4.model')
level01.props.Stone34682ID.transformID = Gear.BindStaticInstance(level01.props.Stone34682ID.model)
Transform.SetPosition(level01.props.Stone34682ID.transformID, {x=3.03896, y=3.69922, z=190.737})
Transform.SetScaleNonUniform(level01.props.Stone34682ID.transformID, 2.2204, 5.14281, 2.41628)
Transform.SetRotation(level01.props.Stone34682ID.transformID, {x=0, y=0, z=0})
level01.props.Stone34682ID.collider = SphereCollider.Create(-1)
level01.props.Stone34682ID.collider:SetOffset(0,0.2,0)
level01.props.Stone34682ID.collider:SetRadius(1)
level01.props.Stone34682ID.collider:SetPos(3.03896,3.89922,190.737)
CollisionHandler.AddSphere(level01.props.Stone34682ID.collider, 3)
level01.props.Stone12683ID = {}
level01.props.Stone12683ID.model = Assets.LoadModel('Models/Stone2.model')
level01.props.Stone12683ID.transformID = Gear.BindStaticInstance(level01.props.Stone12683ID.model)
Transform.SetPosition(level01.props.Stone12683ID.transformID, {x=3.2186, y=3.70508, z=193.414})
Transform.SetScaleNonUniform(level01.props.Stone12683ID.transformID, 1.01499, 1.34828, 1.3712)
Transform.SetRotation(level01.props.Stone12683ID.transformID, {x=0.0261728, y=-3.50038, z=0.00149078})
level01.props.Stone12683ID.collider = SphereCollider.Create(-1)
level01.props.Stone12683ID.collider:SetOffset(0,0.5,0.6)
level01.props.Stone12683ID.collider:SetRadius(2)
level01.props.Stone12683ID.collider:SetPos(3.2186,4.20508,194.014)
CollisionHandler.AddSphere(level01.props.Stone12683ID.collider, 3)
level01.props.Lantern695ID = {}
level01.props.Lantern695ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern695ID.transformID = Gear.BindStaticInstance(level01.props.Lantern695ID.model)
Transform.SetPosition(level01.props.Lantern695ID.transformID, {x=91.1085, y=19.6589, z=229.316})
Transform.SetScaleNonUniform(level01.props.Lantern695ID.transformID, 1.10704, 1.46453, 1.26106)
Transform.SetRotation(level01.props.Lantern695ID.transformID, {x=0, y=4.06324, z=0})
Light.addLight(92.4085, 24.6589, 227.716, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern1696ID = {}
level01.props.Lantern1696ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern1696ID.transformID = Gear.BindStaticInstance(level01.props.Lantern1696ID.model)
Transform.SetPosition(level01.props.Lantern1696ID.transformID, {x=104.807, y=24.2813, z=235.177})
Transform.SetScaleNonUniform(level01.props.Lantern1696ID.transformID, 1, 1.31997, 1.13)
Transform.SetRotation(level01.props.Lantern1696ID.transformID, {x=0, y=-1.60358, z=0})
Light.addLight(104.807, 28.2813, 233.177, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern2697ID = {}
level01.props.Lantern2697ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern2697ID.transformID = Gear.BindStaticInstance(level01.props.Lantern2697ID.model)
Transform.SetPosition(level01.props.Lantern2697ID.transformID, {x=120.768, y=30.5925, z=229.329})
Transform.SetScaleNonUniform(level01.props.Lantern2697ID.transformID, 1.0591, 1.30088, 1.26469)
Transform.SetRotation(level01.props.Lantern2697ID.transformID, {x=0, y=-1.03939, z=0})
Light.addLight(119.768, 34.5925, 227.579, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern3698ID = {}
level01.props.Lantern3698ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern3698ID.transformID = Gear.BindStaticInstance(level01.props.Lantern3698ID.model)
Transform.SetPosition(level01.props.Lantern3698ID.transformID, {x=75.5229, y=16.0708, z=218.97})
Transform.SetScaleNonUniform(level01.props.Lantern3698ID.transformID, 1.05539, 1.31311, 1.34544)
Transform.SetRotation(level01.props.Lantern3698ID.transformID, {x=0, y=-1.90402, z=0})
Light.addLight(76.0229, 20.0708, 216.97, 1, 0.576471, 0.160784, 10,2)
level01.props.Lantern5700ID = {}
level01.props.Lantern5700ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern5700ID.transformID = Gear.BindStaticInstance(level01.props.Lantern5700ID.model)
Transform.SetPosition(level01.props.Lantern5700ID.transformID, {x=31.481, y=7.76563, z=137.765})
Transform.SetScaleNonUniform(level01.props.Lantern5700ID.transformID, 0.817026, 0.683302, 0.733902)
Transform.SetRotation(level01.props.Lantern5700ID.transformID, {x=0, y=1.5866, z=0})
Light.addLight(31.481, 9.76563, 139.215, 1, 0.576471, 0.121569, 10,2)
level01.props.Lantern6701ID = {}
level01.props.Lantern6701ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level01.props.Lantern6701ID.transformID = Gear.BindStaticInstance(level01.props.Lantern6701ID.model)
Transform.SetPosition(level01.props.Lantern6701ID.transformID, {x=19.7806, y=4.85156, z=183.644})
Transform.SetScaleNonUniform(level01.props.Lantern6701ID.transformID, 1, 1, 1)
Transform.SetRotation(level01.props.Lantern6701ID.transformID, {x=0, y=-1.1856, z=0})
Light.addLight(18.9806, 8.60156, 181.844, 1, 0.576471, 0.160784, 10,2)
local BaseGoblin1982ID = CreateEnemy(ENEMY_MELEE, {x=100.813, y=24.3438, z=226.375})
BaseGoblin1982ID.moveSpeed = 9
BaseGoblin1982ID.health = 50
BaseGoblin1982ID.visionRange = 30

local BaseGoblin2983ID = CreateEnemy(ENEMY_MELEE, {x=102.688, y=27.6563, z=195})
BaseGoblin2983ID.moveSpeed = 9
BaseGoblin2983ID.health = 50
BaseGoblin2983ID.visionRange = 30

level01.colliders.C_Parent_Tile_11088ID = {}
level01.colliders.C_Parent_Tile_11088ID.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID.collider:SetMinPos(0.853564,-3.32028,127.7)
level01.colliders.C_Parent_Tile_11088ID.collider:SetMaxPos(128.073,45.7117,237.297)
level01.colliders.C_Parent_Tile_11088ID.collider:SetPos(0,0,0)
level01.colliders.C_Parent_Tile_11088ID1 = {}
level01.colliders.C_Parent_Tile_11088ID1.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID1.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID1.collider:SetMinPos(0.853564,1.54031,127.7)
level01.colliders.C_Parent_Tile_11088ID1.collider:SetMaxPos(55.2591,16.3583,147.134)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID1.collider)
level01.colliders.C_Parent_Tile_11088ID2 = {}
level01.colliders.C_Parent_Tile_11088ID2.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID2.collider:SetOffset(6,6.83489,143)
level01.colliders.C_Parent_Tile_11088ID2.collider:SetZAxis(0.447214,0,-0.894427)
level01.colliders.C_Parent_Tile_11088ID2.collider:SetHalfLengths(0.3,5.29458,4.47214)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID2.collider)
level01.colliders.C_Parent_Tile_11088ID3 = {}
level01.colliders.C_Parent_Tile_11088ID3.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID3.collider:SetOffset(10.5,7.12947,140)
level01.colliders.C_Parent_Tile_11088ID3.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.C_Parent_Tile_11088ID3.collider:SetHalfLengths(0.3,5.14729,2.69258)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID3.collider)
level01.colliders.C_Parent_Tile_11088ID4 = {}
level01.colliders.C_Parent_Tile_11088ID4.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID4.collider:SetOffset(45,8.60238,129.5)
level01.colliders.C_Parent_Tile_11088ID4.collider:SetZAxis(-0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_11088ID4.collider:SetHalfLengths(0.3,5.29458,3.3541)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID4.collider)
level01.colliders.C_Parent_Tile_11088ID5 = {}
level01.colliders.C_Parent_Tile_11088ID5.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID5.collider:SetOffset(51.5,8.60238,137)
level01.colliders.C_Parent_Tile_11088ID5.collider:SetZAxis(0.503871,0,0.863779)
level01.colliders.C_Parent_Tile_11088ID5.collider:SetHalfLengths(0.3,5.73645,6.94622)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID5.collider)
level01.colliders.C_Parent_Tile_11088ID6 = {}
level01.colliders.C_Parent_Tile_11088ID6.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID6.collider:SetOffset(24,10.8555,139)
level01.colliders.C_Parent_Tile_11088ID6.collider:SetZAxis(0.367737,0,0.92993)
level01.colliders.C_Parent_Tile_11088ID6.collider:SetHalfLengths(2.32777,5.5028,2.15084)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID6.collider)
level01.colliders.C_Parent_Tile_11088ID7 = {}
level01.colliders.C_Parent_Tile_11088ID7.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID7.collider:SetOffset(36.5,8.3078,128)
level01.colliders.C_Parent_Tile_11088ID7.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_11088ID7.collider:SetHalfLengths(0.3,5.44187,5.5)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID7.collider)
level01.colliders.C_Parent_Tile_11088ID8 = {}
level01.colliders.C_Parent_Tile_11088ID8.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID8.collider:SetOffset(28,7.86593,132)
level01.colliders.C_Parent_Tile_11088ID8.collider:SetZAxis(-0.6,0,0.8)
level01.colliders.C_Parent_Tile_11088ID8.collider:SetHalfLengths(0.3,5.14729,5)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID8.collider)
level01.colliders.C_Parent_Tile_11088ID9 = {}
level01.colliders.C_Parent_Tile_11088ID9.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID9.collider:SetOffset(23,7.71863,138.5)
level01.colliders.C_Parent_Tile_11088ID9.collider:SetZAxis(-0.624695,0,0.780869)
level01.colliders.C_Parent_Tile_11088ID9.collider:SetHalfLengths(0.3,5.73645,3.20156)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID9.collider)
level01.colliders.C_Parent_Tile_11088ID10 = {}
level01.colliders.C_Parent_Tile_11088ID10.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID10.collider:SetOffset(4.64854,7.65469,139.31)
level01.colliders.C_Parent_Tile_11088ID10.collider:SetZAxis(-0.921262,0.0509573,0.385591)
level01.colliders.C_Parent_Tile_11088ID10.collider:SetHalfLengths(2.87522,1.71793,2.81752)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID10.collider)
level01.colliders.C_Parent_Tile_11088ID11 = {}
level01.colliders.C_Parent_Tile_11088ID11.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID11.collider:SetOffset(36.887,10.9609,130.834)
level01.colliders.C_Parent_Tile_11088ID11.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_11088ID11.collider:SetHalfLengths(5.67717,4.82178,2.74393)
level01.colliders.C_Parent_Tile_11088ID1.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID11.collider)
level01.colliders.C_Parent_Tile_11088ID12 = {}
level01.colliders.C_Parent_Tile_11088ID12.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID12.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID12.collider:SetMinPos(3.70232,1.54031,140.7)
level01.colliders.C_Parent_Tile_11088ID12.collider:SetMaxPos(56.2942,18.8731,163.037)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID12.collider)
level01.colliders.C_Parent_Tile_11088ID13 = {}
level01.colliders.C_Parent_Tile_11088ID13.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID13.collider:SetOffset(17,6.98218,141)
level01.colliders.C_Parent_Tile_11088ID13.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_11088ID13.collider:SetHalfLengths(0.3,5,4)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID13.collider)
level01.colliders.C_Parent_Tile_11088ID14 = {}
level01.colliders.C_Parent_Tile_11088ID14.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID14.collider:SetOffset(55.5,9.33883,145.5)
level01.colliders.C_Parent_Tile_11088ID14.collider:SetZAxis(0.196116,0,0.980581)
level01.colliders.C_Parent_Tile_11088ID14.collider:SetHalfLengths(0.3,5,2.54951)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID14.collider)
level01.colliders.C_Parent_Tile_11088ID15 = {}
level01.colliders.C_Parent_Tile_11088ID15.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID15.collider:SetOffset(52.5,9.33883,152)
level01.colliders.C_Parent_Tile_11088ID15.collider:SetZAxis(-0.658505,0,0.752577)
level01.colliders.C_Parent_Tile_11088ID15.collider:SetHalfLengths(0.3,5.14729,5.31507)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID15.collider)
level01.colliders.C_Parent_Tile_11088ID16 = {}
level01.colliders.C_Parent_Tile_11088ID16.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID16.collider:SetOffset(44,9.48612,157)
level01.colliders.C_Parent_Tile_11088ID16.collider:SetZAxis(-0.980581,0,0.196116)
level01.colliders.C_Parent_Tile_11088ID16.collider:SetHalfLengths(0.3,5.14729,5.09902)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID16.collider)
level01.colliders.C_Parent_Tile_11088ID17 = {}
level01.colliders.C_Parent_Tile_11088ID17.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID17.collider:SetOffset(35,7.12947,155)
level01.colliders.C_Parent_Tile_11088ID17.collider:SetZAxis(0.316228,0,0.948683)
level01.colliders.C_Parent_Tile_11088ID17.collider:SetHalfLengths(0.3,5.14729,3.16228)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID17.collider)
level01.colliders.C_Parent_Tile_11088ID18 = {}
level01.colliders.C_Parent_Tile_11088ID18.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID18.collider:SetOffset(37,7.27676,160)
level01.colliders.C_Parent_Tile_11088ID18.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_11088ID18.collider:SetHalfLengths(0.3,5.29458,2.23607)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID18.collider)
level01.colliders.C_Parent_Tile_11088ID19 = {}
level01.colliders.C_Parent_Tile_11088ID19.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID19.collider:SetOffset(4.5,6.83489,147.5)
level01.colliders.C_Parent_Tile_11088ID19.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_11088ID19.collider:SetHalfLengths(0.3,5.14729,0.707107)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID19.collider)
level01.colliders.C_Parent_Tile_11088ID20 = {}
level01.colliders.C_Parent_Tile_11088ID20.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID20.collider:SetOffset(5,6.98218,151.5)
level01.colliders.C_Parent_Tile_11088ID20.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_11088ID20.collider:SetHalfLengths(0.3,5.44187,3.5)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID20.collider)
level01.colliders.C_Parent_Tile_11088ID21 = {}
level01.colliders.C_Parent_Tile_11088ID21.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID21.collider:SetOffset(4.5,7.42405,159)
level01.colliders.C_Parent_Tile_11088ID21.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.C_Parent_Tile_11088ID21.collider:SetHalfLengths(0.3,5.88374,4.03113)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID21.collider)
level01.colliders.C_Parent_Tile_11088ID22 = {}
level01.colliders.C_Parent_Tile_11088ID22.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID22.collider:SetOffset(39.8641,12.8281,155.087)
level01.colliders.C_Parent_Tile_11088ID22.collider:SetZAxis(0.985344,-0.00610736,-0.170469)
level01.colliders.C_Parent_Tile_11088ID22.collider:SetHalfLengths(2.11687,6.02749,2.51378)
level01.colliders.C_Parent_Tile_11088ID12.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID22.collider)
level01.colliders.C_Parent_Tile_11088ID23 = {}
level01.colliders.C_Parent_Tile_11088ID23.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID23.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID23.collider:SetMinPos(3.76,0.656566,161.75)
level01.colliders.C_Parent_Tile_11088ID23.collider:SetMaxPos(57.1664,13.0132,176)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID23.collider)
level01.colliders.C_Parent_Tile_11088ID24 = {}
level01.colliders.C_Parent_Tile_11088ID24.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID24.collider:SetOffset(39.5,6.98218,163)
level01.colliders.C_Parent_Tile_11088ID24.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.C_Parent_Tile_11088ID24.collider:SetHalfLengths(0.3,5.14729,1.80278)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID24.collider)
level01.colliders.C_Parent_Tile_11088ID25 = {}
level01.colliders.C_Parent_Tile_11088ID25.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID25.collider:SetOffset(43.5,7.12947,165)
level01.colliders.C_Parent_Tile_11088ID25.collider:SetZAxis(0.928477,0,0.371391)
level01.colliders.C_Parent_Tile_11088ID25.collider:SetHalfLengths(0.3,5.44187,2.69258)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID25.collider)
level01.colliders.C_Parent_Tile_11088ID26 = {}
level01.colliders.C_Parent_Tile_11088ID26.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID26.collider:SetOffset(48.5,7.57134,166)
level01.colliders.C_Parent_Tile_11088ID26.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_11088ID26.collider:SetHalfLengths(0.3,5.44187,2.5)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID26.collider)
level01.colliders.C_Parent_Tile_11088ID27 = {}
level01.colliders.C_Parent_Tile_11088ID27.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID27.collider:SetOffset(54,8.01322,168)
level01.colliders.C_Parent_Tile_11088ID27.collider:SetZAxis(0.83205,0,0.5547)
level01.colliders.C_Parent_Tile_11088ID27.collider:SetHalfLengths(0.3,5,3.60555)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID27.collider)
level01.colliders.C_Parent_Tile_11088ID28 = {}
level01.colliders.C_Parent_Tile_11088ID28.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID28.collider:SetOffset(32.5,6.54031,170.5)
level01.colliders.C_Parent_Tile_11088ID28.collider:SetZAxis(-0.514496,0,-0.857493)
level01.colliders.C_Parent_Tile_11088ID28.collider:SetHalfLengths(0.3,5,2.91548)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID28.collider)
level01.colliders.C_Parent_Tile_11088ID29 = {}
level01.colliders.C_Parent_Tile_11088ID29.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID29.collider:SetOffset(29.5,6.54031,168)
level01.colliders.C_Parent_Tile_11088ID29.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_11088ID29.collider:SetHalfLengths(0.3,5.44187,1.5)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID29.collider)
level01.colliders.C_Parent_Tile_11088ID30 = {}
level01.colliders.C_Parent_Tile_11088ID30.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID30.collider:SetOffset(25,6.09844,170.5)
level01.colliders.C_Parent_Tile_11088ID30.collider:SetZAxis(-0.768221,0,0.640184)
level01.colliders.C_Parent_Tile_11088ID30.collider:SetHalfLengths(0.3,5.29458,3.90512)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID30.collider)
level01.colliders.C_Parent_Tile_11088ID31 = {}
level01.colliders.C_Parent_Tile_11088ID31.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID31.collider:SetOffset(22,5.80386,174.5)
level01.colliders.C_Parent_Tile_11088ID31.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_11088ID31.collider:SetHalfLengths(0.3,5,1.5)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID31.collider)
level01.colliders.C_Parent_Tile_11088ID32 = {}
level01.colliders.C_Parent_Tile_11088ID32.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID32.collider:SetOffset(7,6.54031,167)
level01.colliders.C_Parent_Tile_11088ID32.collider:SetZAxis(0.6,0,0.8)
level01.colliders.C_Parent_Tile_11088ID32.collider:SetHalfLengths(0.3,5.29458,5)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID32.collider)
level01.colliders.C_Parent_Tile_11088ID33 = {}
level01.colliders.C_Parent_Tile_11088ID33.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID33.collider:SetOffset(10,6.24573,173.5)
level01.colliders.C_Parent_Tile_11088ID33.collider:SetZAxis(0,0,1)
level01.colliders.C_Parent_Tile_11088ID33.collider:SetHalfLengths(0.3,5.58916,2.5)
level01.colliders.C_Parent_Tile_11088ID23.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID33.collider)
level01.colliders.C_Parent_Tile_11088ID34 = {}
level01.colliders.C_Parent_Tile_11088ID34.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID34.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID34.collider:SetMinPos(1.70104,-2.14196,169.866)
level01.colliders.C_Parent_Tile_11088ID34.collider:SetMaxPos(58.2977,21.9153,196.22)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID34.collider)
level01.colliders.C_Parent_Tile_11088ID35 = {}
level01.colliders.C_Parent_Tile_11088ID35.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID35.collider:SetOffset(57.5,8.01322,171)
level01.colliders.C_Parent_Tile_11088ID35.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_11088ID35.collider:SetHalfLengths(0.3,5,1.11803)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID35.collider)
level01.colliders.C_Parent_Tile_11088ID36 = {}
level01.colliders.C_Parent_Tile_11088ID36.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID36.collider:SetOffset(57.5,8.01322,176)
level01.colliders.C_Parent_Tile_11088ID36.collider:SetZAxis(-0.124035,0,0.992278)
level01.colliders.C_Parent_Tile_11088ID36.collider:SetHalfLengths(0.3,5,4.03113)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID36.collider)
level01.colliders.C_Parent_Tile_11088ID37 = {}
level01.colliders.C_Parent_Tile_11088ID37.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID37.collider:SetOffset(37,7.71863,182)
level01.colliders.C_Parent_Tile_11088ID37.collider:SetZAxis(-0.447214,0,-0.894427)
level01.colliders.C_Parent_Tile_11088ID37.collider:SetHalfLengths(0.3,5.58916,2.23607)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID37.collider)
level01.colliders.C_Parent_Tile_11088ID38 = {}
level01.colliders.C_Parent_Tile_11088ID38.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID38.collider:SetOffset(35,7.12947,176.5)
level01.colliders.C_Parent_Tile_11088ID38.collider:SetZAxis(-0.274721,0,-0.961524)
level01.colliders.C_Parent_Tile_11088ID38.collider:SetHalfLengths(0.3,5.58916,3.64005)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID38.collider)
level01.colliders.C_Parent_Tile_11088ID39 = {}
level01.colliders.C_Parent_Tile_11088ID39.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID39.collider:SetOffset(23.5,5.80386,179.5)
level01.colliders.C_Parent_Tile_11088ID39.collider:SetZAxis(0.393919,0,0.919145)
level01.colliders.C_Parent_Tile_11088ID39.collider:SetHalfLengths(0.3,5.29458,3.80789)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID39.collider)
level01.colliders.C_Parent_Tile_11088ID40 = {}
level01.colliders.C_Parent_Tile_11088ID40.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID40.collider:SetOffset(32,5.50927,189.5)
level01.colliders.C_Parent_Tile_11088ID40.collider:SetZAxis(0.732794,0,0.680451)
level01.colliders.C_Parent_Tile_11088ID40.collider:SetHalfLengths(0.3,7.65123,9.55249)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID40.collider)
level01.colliders.C_Parent_Tile_11088ID41 = {}
level01.colliders.C_Parent_Tile_11088ID41.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID41.collider:SetOffset(6.5,5.65657,179)
level01.colliders.C_Parent_Tile_11088ID41.collider:SetZAxis(-0.759257,0,0.650791)
level01.colliders.C_Parent_Tile_11088ID41.collider:SetHalfLengths(0.3,5.29458,4.60977)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID41.collider)
level01.colliders.C_Parent_Tile_11088ID42 = {}
level01.colliders.C_Parent_Tile_11088ID42.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID42.collider:SetOffset(2.5,5.36198,188)
level01.colliders.C_Parent_Tile_11088ID42.collider:SetZAxis(-0.0830455,0,0.996546)
level01.colliders.C_Parent_Tile_11088ID42.collider:SetHalfLengths(0.3,6.32562,6.0208)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID42.collider)
level01.colliders.C_Parent_Tile_11088ID43 = {}
level01.colliders.C_Parent_Tile_11088ID43.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID43.collider:SetOffset(6.18867,8.53125,180.735)
level01.colliders.C_Parent_Tile_11088ID43.collider:SetZAxis(-0.891114,0,-0.453779)
level01.colliders.C_Parent_Tile_11088ID43.collider:SetHalfLengths(2.5078,5.88453,1.95815)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID43.collider)
level01.colliders.C_Parent_Tile_11088ID44 = {}
level01.colliders.C_Parent_Tile_11088ID44.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID44.collider:SetOffset(37.7154,11.4688,182.582)
level01.colliders.C_Parent_Tile_11088ID44.collider:SetZAxis(-0.988898,0,0.148599)
level01.colliders.C_Parent_Tile_11088ID44.collider:SetHalfLengths(3.65554,10.4465,3.23962)
level01.colliders.C_Parent_Tile_11088ID34.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID44.collider)
level01.colliders.C_Parent_Tile_11088ID45 = {}
level01.colliders.C_Parent_Tile_11088ID45.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID45.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID45.collider:SetMinPos(1.74275,-1.99466,179.808)
level01.colliders.C_Parent_Tile_11088ID45.collider:SetMaxPos(57.2305,13.3078,201.134)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID45.collider)
level01.colliders.C_Parent_Tile_11088ID46 = {}
level01.colliders.C_Parent_Tile_11088ID46.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID46.collider:SetOffset(54.5,8.01322,183)
level01.colliders.C_Parent_Tile_11088ID46.collider:SetZAxis(-0.640184,0,0.768221)
level01.colliders.C_Parent_Tile_11088ID46.collider:SetHalfLengths(0.3,5,3.90512)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID46.collider)
level01.colliders.C_Parent_Tile_11088ID47 = {}
level01.colliders.C_Parent_Tile_11088ID47.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID47.collider:SetOffset(49,8.01322,186.5)
level01.colliders.C_Parent_Tile_11088ID47.collider:SetZAxis(-0.986394,0,0.164399)
level01.colliders.C_Parent_Tile_11088ID47.collider:SetHalfLengths(0.3,5,3.04138)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID47.collider)
level01.colliders.C_Parent_Tile_11088ID48 = {}
level01.colliders.C_Parent_Tile_11088ID48.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID48.collider:SetOffset(44,8.01322,187)
level01.colliders.C_Parent_Tile_11088ID48.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_11088ID48.collider:SetHalfLengths(0.3,5,2)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID48.collider)
level01.colliders.C_Parent_Tile_11088ID49 = {}
level01.colliders.C_Parent_Tile_11088ID49.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID49.collider:SetOffset(40,8.01322,185.5)
level01.colliders.C_Parent_Tile_11088ID49.collider:SetZAxis(-0.8,0,-0.6)
level01.colliders.C_Parent_Tile_11088ID49.collider:SetHalfLengths(0.3,5.29458,2.5)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID49.collider)
level01.colliders.C_Parent_Tile_11088ID50 = {}
level01.colliders.C_Parent_Tile_11088ID50.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID50.collider:SetOffset(35.5,8.16051,198)
level01.colliders.C_Parent_Tile_11088ID50.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_11088ID50.collider:SetHalfLengths(0.3,5.14729,3.3541)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID50.collider)
level01.colliders.C_Parent_Tile_11088ID51 = {}
level01.colliders.C_Parent_Tile_11088ID51.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID51.collider:SetOffset(3.5,4.03637,196.5)
level01.colliders.C_Parent_Tile_11088ID51.collider:SetZAxis(0.514496,0,0.857493)
level01.colliders.C_Parent_Tile_11088ID51.collider:SetHalfLengths(0.3,5.58916,2.91548)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID51.collider)
level01.colliders.C_Parent_Tile_11088ID52 = {}
level01.colliders.C_Parent_Tile_11088ID52.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID52.collider:SetOffset(23,4.33095,190.5)
level01.colliders.C_Parent_Tile_11088ID52.collider:SetZAxis(0.478852,0,0.877896)
level01.colliders.C_Parent_Tile_11088ID52.collider:SetHalfLengths(0.3,6.03103,6.26498)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID52.collider)
level01.colliders.C_Parent_Tile_11088ID53 = {}
level01.colliders.C_Parent_Tile_11088ID53.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID53.collider:SetOffset(27,5.36198,196.5)
level01.colliders.C_Parent_Tile_11088ID53.collider:SetZAxis(0.894427,0,0.447214)
level01.colliders.C_Parent_Tile_11088ID53.collider:SetHalfLengths(0.3,7.35665,1.11803)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID53.collider)
level01.colliders.C_Parent_Tile_11088ID54 = {}
level01.colliders.C_Parent_Tile_11088ID54.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID54.collider:SetOffset(29,7.71863,197)
level01.colliders.C_Parent_Tile_11088ID54.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_11088ID54.collider:SetHalfLengths(0.3,5.44187,1)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID54.collider)
level01.colliders.C_Parent_Tile_11088ID55 = {}
level01.colliders.C_Parent_Tile_11088ID55.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID55.collider:SetOffset(5.252,4.725,191.432)
level01.colliders.C_Parent_Tile_11088ID55.collider:SetZAxis(0,-0.016469,0.999864)
level01.colliders.C_Parent_Tile_11088ID55.collider:SetHalfLengths(1.4564,1.01105,1.50235)
level01.colliders.C_Parent_Tile_11088ID45.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID55.collider)
level01.colliders.C_Parent_Tile_11088ID56 = {}
level01.colliders.C_Parent_Tile_11088ID56.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID56.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID56.collider:SetMinPos(4.75038,-3.32028,195.715)
level01.colliders.C_Parent_Tile_11088ID56.collider:SetMaxPos(53.2441,15.3699,211.174)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID56.collider)
level01.colliders.C_Parent_Tile_11088ID57 = {}
level01.colliders.C_Parent_Tile_11088ID57.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID57.collider:SetOffset(37.5,8.16051,196.5)
level01.colliders.C_Parent_Tile_11088ID57.collider:SetZAxis(-0.948683,0,0.316228)
level01.colliders.C_Parent_Tile_11088ID57.collider:SetHalfLengths(0.3,5.14729,1.58114)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID57.collider)
level01.colliders.C_Parent_Tile_11088ID58 = {}
level01.colliders.C_Parent_Tile_11088ID58.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID58.collider:SetOffset(42.5,8.3078,200)
level01.colliders.C_Parent_Tile_11088ID58.collider:SetZAxis(0.98387,0,-0.178885)
level01.colliders.C_Parent_Tile_11088ID58.collider:SetHalfLengths(0.3,6.32561,5.59017)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID58.collider)
level01.colliders.C_Parent_Tile_11088ID59 = {}
level01.colliders.C_Parent_Tile_11088ID59.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID59.collider:SetOffset(50.5,9.63341,202.5)
level01.colliders.C_Parent_Tile_11088ID59.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.C_Parent_Tile_11088ID59.collider:SetHalfLengths(0.3,5.73645,4.30116)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID59.collider)
level01.colliders.C_Parent_Tile_11088ID60 = {}
level01.colliders.C_Parent_Tile_11088ID60.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID60.collider:SetOffset(6,3.44721,200.5)
level01.colliders.C_Parent_Tile_11088ID60.collider:SetZAxis(0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_11088ID60.collider:SetHalfLengths(0.3,5,1.80278)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID60.collider)
level01.colliders.C_Parent_Tile_11088ID61 = {}
level01.colliders.C_Parent_Tile_11088ID61.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID61.collider:SetOffset(7.5,3.44721,203)
level01.colliders.C_Parent_Tile_11088ID61.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_11088ID61.collider:SetHalfLengths(0.3,5.14729,1.11803)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID61.collider)
level01.colliders.C_Parent_Tile_11088ID62 = {}
level01.colliders.C_Parent_Tile_11088ID62.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID62.collider:SetOffset(15,3.29992,202.5)
level01.colliders.C_Parent_Tile_11088ID62.collider:SetZAxis(0.977802,0,-0.209529)
level01.colliders.C_Parent_Tile_11088ID62.collider:SetHalfLengths(0.3,5.14729,7.15891)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID62.collider)
level01.colliders.C_Parent_Tile_11088ID63 = {}
level01.colliders.C_Parent_Tile_11088ID63.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID63.collider:SetOffset(24.5,3.15263,199.5)
level01.colliders.C_Parent_Tile_11088ID63.collider:SetZAxis(0.857493,0,-0.514496)
level01.colliders.C_Parent_Tile_11088ID63.collider:SetHalfLengths(0.3,6.47291,2.91548)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID63.collider)
level01.colliders.C_Parent_Tile_11088ID64 = {}
level01.colliders.C_Parent_Tile_11088ID64.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID64.collider:SetOffset(31.5,8.16051,200)
level01.colliders.C_Parent_Tile_11088ID64.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_11088ID64.collider:SetHalfLengths(0.3,5.73645,3.3541)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID64.collider)
level01.colliders.C_Parent_Tile_11088ID65 = {}
level01.colliders.C_Parent_Tile_11088ID65.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID65.collider:SetOffset(32.5,8.89696,203.5)
level01.colliders.C_Parent_Tile_11088ID65.collider:SetZAxis(-0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_11088ID65.collider:SetHalfLengths(0.3,5.44187,0.707107)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID65.collider)
level01.colliders.C_Parent_Tile_11088ID66 = {}
level01.colliders.C_Parent_Tile_11088ID66.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID66.collider:SetOffset(34.5,8.45509,207.5)
level01.colliders.C_Parent_Tile_11088ID66.collider:SetZAxis(0.581238,0,0.813733)
level01.colliders.C_Parent_Tile_11088ID66.collider:SetHalfLengths(0.3,5.14729,4.30116)
level01.colliders.C_Parent_Tile_11088ID56.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID66.collider)
level01.colliders.C_Parent_Tile_11088ID67 = {}
level01.colliders.C_Parent_Tile_11088ID67.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID67.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID67.collider:SetMinPos(36.8512,2.71863,189.723)
level01.colliders.C_Parent_Tile_11088ID67.collider:SetMaxPos(109.159,37.0216,217.297)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID67.collider)
level01.colliders.C_Parent_Tile_11088ID68 = {}
level01.colliders.C_Parent_Tile_11088ID68.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID68.collider:SetOffset(55,10.3699,207.5)
level01.colliders.C_Parent_Tile_11088ID68.collider:SetZAxis(0.8,0,0.6)
level01.colliders.C_Parent_Tile_11088ID68.collider:SetHalfLengths(0.3,6.03103,2.5)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID68.collider)
level01.colliders.C_Parent_Tile_11088ID69 = {}
level01.colliders.C_Parent_Tile_11088ID69.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID69.collider:SetOffset(62,11.4009,208)
level01.colliders.C_Parent_Tile_11088ID69.collider:SetZAxis(0.980581,0,-0.196116)
level01.colliders.C_Parent_Tile_11088ID69.collider:SetHalfLengths(0.3,8.68226,5.09902)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID69.collider)
level01.colliders.C_Parent_Tile_11088ID70 = {}
level01.colliders.C_Parent_Tile_11088ID70.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID70.collider:SetOffset(71.5,15.0832,205.5)
level01.colliders.C_Parent_Tile_11088ID70.collider:SetZAxis(0.948683,0,-0.316228)
level01.colliders.C_Parent_Tile_11088ID70.collider:SetHalfLengths(0.3,8.24039,4.74342)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID70.collider)
level01.colliders.C_Parent_Tile_11088ID71 = {}
level01.colliders.C_Parent_Tile_11088ID71.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID71.collider:SetOffset(79,18.3236,202.5)
level01.colliders.C_Parent_Tile_11088ID71.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_11088ID71.collider:SetHalfLengths(0.3,6.76749,3.3541)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID71.collider)
level01.colliders.C_Parent_Tile_11088ID72 = {}
level01.colliders.C_Parent_Tile_11088ID72.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID72.collider:SetOffset(85.5,20.091,198)
level01.colliders.C_Parent_Tile_11088ID72.collider:SetZAxis(0.759257,0,-0.650791)
level01.colliders.C_Parent_Tile_11088ID72.collider:SetHalfLengths(0.3,8.0931,4.60977)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID72.collider)
level01.colliders.C_Parent_Tile_11088ID73 = {}
level01.colliders.C_Parent_Tile_11088ID73.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID73.collider:SetOffset(95,23.1841,192.5)
level01.colliders.C_Parent_Tile_11088ID73.collider:SetZAxis(0.923077,0,-0.384615)
level01.colliders.C_Parent_Tile_11088ID73.collider:SetHalfLengths(0.3,8.82956,6.5)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID73.collider)
level01.colliders.C_Parent_Tile_11088ID74 = {}
level01.colliders.C_Parent_Tile_11088ID74.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID74.collider:SetOffset(105,27.0137,192.5)
level01.colliders.C_Parent_Tile_11088ID74.collider:SetZAxis(0.847998,0,0.529999)
level01.colliders.C_Parent_Tile_11088ID74.collider:SetHalfLengths(0.3,8.68227,4.71699)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID74.collider)
level01.colliders.C_Parent_Tile_11088ID75 = {}
level01.colliders.C_Parent_Tile_11088ID75.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID75.collider:SetOffset(95,27.3083,202.5)
level01.colliders.C_Parent_Tile_11088ID75.collider:SetZAxis(-0.819232,0,0.573462)
level01.colliders.C_Parent_Tile_11088ID75.collider:SetHalfLengths(0.3,9.7133,6.10328)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID75.collider)
level01.colliders.C_Parent_Tile_11088ID76 = {}
level01.colliders.C_Parent_Tile_11088ID76.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID76.collider:SetOffset(40.5,8.60238,213)
level01.colliders.C_Parent_Tile_11088ID76.collider:SetZAxis(0.868243,0,0.496139)
level01.colliders.C_Parent_Tile_11088ID76.collider:SetHalfLengths(0.3,5.73645,4.03113)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID76.collider)
level01.colliders.C_Parent_Tile_11088ID77 = {}
level01.colliders.C_Parent_Tile_11088ID77.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID77.collider:SetOffset(51,9.33883,216)
level01.colliders.C_Parent_Tile_11088ID77.collider:SetZAxis(0.98995,0,0.141421)
level01.colliders.C_Parent_Tile_11088ID77.collider:SetHalfLengths(0.3,5.58916,7.07107)
level01.colliders.C_Parent_Tile_11088ID67.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID77.collider)
level01.colliders.C_Parent_Tile_11088ID78 = {}
level01.colliders.C_Parent_Tile_11088ID78.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID78.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID78.collider:SetMinPos(58,-1.70009,194.709)
level01.colliders.C_Parent_Tile_11088ID78.collider:SetMaxPos(124.268,45.7117,226.261)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID78.collider)
level01.colliders.C_Parent_Tile_11088ID79 = {}
level01.colliders.C_Parent_Tile_11088ID79.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID79.collider:SetOffset(111,30.696,195.5)
level01.colliders.C_Parent_Tile_11088ID79.collider:SetZAxis(0.970143,0,0.242536)
level01.colliders.C_Parent_Tile_11088ID79.collider:SetHalfLengths(0.3,6.17832,2.06155)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID79.collider)
level01.colliders.C_Parent_Tile_11088ID80 = {}
level01.colliders.C_Parent_Tile_11088ID80.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID80.collider:SetOffset(115.5,31.8743,198)
level01.colliders.C_Parent_Tile_11088ID80.collider:SetZAxis(0.780869,0,0.624695)
level01.colliders.C_Parent_Tile_11088ID80.collider:SetHalfLengths(0.3,7.79852,3.20156)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID80.collider)
level01.colliders.C_Parent_Tile_11088ID81 = {}
level01.colliders.C_Parent_Tile_11088ID81.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID81.collider:SetOffset(121,34.6728,206)
level01.colliders.C_Parent_Tile_11088ID81.collider:SetZAxis(0.447214,0,0.894427)
level01.colliders.C_Parent_Tile_11088ID81.collider:SetHalfLengths(0.3,6.76749,6.7082)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID81.collider)
level01.colliders.C_Parent_Tile_11088ID82 = {}
level01.colliders.C_Parent_Tile_11088ID82.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID82.collider:SetOffset(90,21.5639,213.5)
level01.colliders.C_Parent_Tile_11088ID82.collider:SetZAxis(0.406139,0,0.913812)
level01.colliders.C_Parent_Tile_11088ID82.collider:SetHalfLengths(0.3,5.88374,4.92443)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID82.collider)
level01.colliders.C_Parent_Tile_11088ID83 = {}
level01.colliders.C_Parent_Tile_11088ID83.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID83.collider:SetOffset(98,22.4477,219.5)
level01.colliders.C_Parent_Tile_11088ID83.collider:SetZAxis(0.970142,0,0.242536)
level01.colliders.C_Parent_Tile_11088ID83.collider:SetHalfLengths(0.3,9.41872,6.18466)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID83.collider)
level01.colliders.C_Parent_Tile_11088ID84 = {}
level01.colliders.C_Parent_Tile_11088ID84.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID84.collider:SetOffset(107,34.6728,203)
level01.colliders.C_Parent_Tile_11088ID84.collider:SetZAxis(-0.780869,0,-0.624695)
level01.colliders.C_Parent_Tile_11088ID84.collider:SetHalfLengths(0.3,11.0389,6.40312)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID84.collider)
level01.colliders.C_Parent_Tile_11088ID85 = {}
level01.colliders.C_Parent_Tile_11088ID85.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID85.collider:SetOffset(101,28.6339,199)
level01.colliders.C_Parent_Tile_11088ID85.collider:SetZAxis(-1,0,0)
level01.colliders.C_Parent_Tile_11088ID85.collider:SetHalfLengths(0.3,6.32562,1)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID85.collider)
level01.colliders.C_Parent_Tile_11088ID86 = {}
level01.colliders.C_Parent_Tile_11088ID86.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID86.collider:SetOffset(89,22.595,207.5)
level01.colliders.C_Parent_Tile_11088ID86.collider:SetZAxis(-0.5547,0,0.83205)
level01.colliders.C_Parent_Tile_11088ID86.collider:SetHalfLengths(0.3,6.03103,1.80278)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID86.collider)
level01.colliders.C_Parent_Tile_11088ID87 = {}
level01.colliders.C_Parent_Tile_11088ID87.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID87.collider:SetOffset(63,8.74967,217)
level01.colliders.C_Parent_Tile_11088ID87.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_11088ID87.collider:SetHalfLengths(0.3,10.4498,5)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID87.collider)
level01.colliders.C_Parent_Tile_11088ID88 = {}
level01.colliders.C_Parent_Tile_11088ID88.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID88.collider:SetOffset(76,14.1994,221.5)
level01.colliders.C_Parent_Tile_11088ID88.collider:SetZAxis(0.871576,0,0.490261)
level01.colliders.C_Parent_Tile_11088ID88.collider:SetHalfLengths(0.3,6.4729,9.17878)
level01.colliders.C_Parent_Tile_11088ID78.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID88.collider)
level01.colliders.C_Parent_Tile_11088ID89 = {}
level01.colliders.C_Parent_Tile_11088ID89.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID89.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID89.collider:SetMinPos(83.8378,3.74966,206.851)
level01.colliders.C_Parent_Tile_11088ID89.collider:SetMaxPos(128.073,42.6186,237.297)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID89.collider)
level01.colliders.C_Parent_Tile_11088ID90 = {}
level01.colliders.C_Parent_Tile_11088ID90.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID90.collider:SetOffset(126,32.9053,211.5)
level01.colliders.C_Parent_Tile_11088ID90.collider:SetZAxis(0.970143,0,-0.242536)
level01.colliders.C_Parent_Tile_11088ID90.collider:SetHalfLengths(0.3,5.88375,2.06155)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID90.collider)
level01.colliders.C_Parent_Tile_11088ID91 = {}
level01.colliders.C_Parent_Tile_11088ID91.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID91.collider:SetOffset(105.5,26.8664,222.5)
level01.colliders.C_Parent_Tile_11088ID91.collider:SetZAxis(0.707107,0,0.707107)
level01.colliders.C_Parent_Tile_11088ID91.collider:SetHalfLengths(0.3,6.47291,2.12132)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID91.collider)
level01.colliders.C_Parent_Tile_11088ID92 = {}
level01.colliders.C_Parent_Tile_11088ID92.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID92.collider:SetOffset(111.5,28.3393,222)
level01.colliders.C_Parent_Tile_11088ID92.collider:SetZAxis(0.913812,0,-0.406139)
level01.colliders.C_Parent_Tile_11088ID92.collider:SetHalfLengths(0.3,7.65123,4.92443)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID92.collider)
level01.colliders.C_Parent_Tile_11088ID93 = {}
level01.colliders.C_Parent_Tile_11088ID93.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID93.collider:SetOffset(116,30.9905,217)
level01.colliders.C_Parent_Tile_11088ID93.collider:SetZAxis(0,0,-1)
level01.colliders.C_Parent_Tile_11088ID93.collider:SetHalfLengths(0.3,10.1552,3)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID93.collider)
level01.colliders.C_Parent_Tile_11088ID94 = {}
level01.colliders.C_Parent_Tile_11088ID94.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID94.collider:SetOffset(114,36.1457,210.5)
level01.colliders.C_Parent_Tile_11088ID94.collider:SetZAxis(-0.496139,0,-0.868243)
level01.colliders.C_Parent_Tile_11088ID94.collider:SetHalfLengths(0.3,6.4729,4.03113)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID94.collider)
level01.colliders.C_Parent_Tile_11088ID95 = {}
level01.colliders.C_Parent_Tile_11088ID95.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID95.collider:SetOffset(91,15.6723,230.5)
level01.colliders.C_Parent_Tile_11088ID95.collider:SetZAxis(0.841179,0,0.540758)
level01.colliders.C_Parent_Tile_11088ID95.collider:SetHalfLengths(0.3,11.9227,8.32166)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID95.collider)
level01.colliders.C_Parent_Tile_11088ID96 = {}
level01.colliders.C_Parent_Tile_11088ID96.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID96.collider:SetOffset(104.5,22.595,236)
level01.colliders.C_Parent_Tile_11088ID96.collider:SetZAxis(0.988372,0,0.152057)
level01.colliders.C_Parent_Tile_11088ID96.collider:SetHalfLengths(0.3,10.8916,6.57647)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID96.collider)
level01.colliders.C_Parent_Tile_11088ID97 = {}
level01.colliders.C_Parent_Tile_11088ID97.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID97.collider:SetOffset(115,28.4866,235)
level01.colliders.C_Parent_Tile_11088ID97.collider:SetZAxis(0.894427,0,-0.447214)
level01.colliders.C_Parent_Tile_11088ID97.collider:SetHalfLengths(0.3,6.91478,4.47214)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID97.collider)
level01.colliders.C_Parent_Tile_11088ID98 = {}
level01.colliders.C_Parent_Tile_11088ID98.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID98.collider:SetOffset(125.5,32.1689,229)
level01.colliders.C_Parent_Tile_11088ID98.collider:SetZAxis(0.0995037,0,-0.995037)
level01.colliders.C_Parent_Tile_11088ID98.collider:SetHalfLengths(0.3,5.58916,5.02494)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID98.collider)
level01.colliders.C_Parent_Tile_11088ID99 = {}
level01.colliders.C_Parent_Tile_11088ID99.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID99.collider:SetOffset(127,32.758,224)
level01.colliders.C_Parent_Tile_11088ID99.collider:SetZAxis(1,0,0)
level01.colliders.C_Parent_Tile_11088ID99.collider:SetHalfLengths(0.3,5.14729,1)
level01.colliders.C_Parent_Tile_11088ID89.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID99.collider)
level01.colliders.C_Parent_Tile_11088ID100 = {}
level01.colliders.C_Parent_Tile_11088ID100.collider = AABBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID100.collider:SetOffset(0,0,0)
level01.colliders.C_Parent_Tile_11088ID100.collider:SetMinPos(118.951,23.6339,232.704)
level01.colliders.C_Parent_Tile_11088ID100.collider:SetMaxPos(125.049,37.1689,234.296)
level01.colliders.C_Parent_Tile_11088ID.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID100.collider)
level01.colliders.C_Parent_Tile_11088ID101 = {}
level01.colliders.C_Parent_Tile_11088ID101.collider = OBBCollider.Create(-1)
level01.colliders.C_Parent_Tile_11088ID101.collider:SetOffset(122,30.4014,233.5)
level01.colliders.C_Parent_Tile_11088ID101.collider:SetZAxis(0.986394,0,0.164399)
level01.colliders.C_Parent_Tile_11088ID101.collider:SetHalfLengths(0.3,6.76749,3.04138)
level01.colliders.C_Parent_Tile_11088ID100.collider:AddChild(level01.colliders.C_Parent_Tile_11088ID101.collider)
CollisionHandler.AddAABB(level01.colliders.C_Parent_Tile_11088ID.collider, 3)
level01.colliders.C_Parent_Tile_11088ID1 = nil
level01.colliders.C_Parent_Tile_11088ID2 = nil
level01.colliders.C_Parent_Tile_11088ID3 = nil
level01.colliders.C_Parent_Tile_11088ID4 = nil
level01.colliders.C_Parent_Tile_11088ID5 = nil
level01.colliders.C_Parent_Tile_11088ID6 = nil
level01.colliders.C_Parent_Tile_11088ID7 = nil
level01.colliders.C_Parent_Tile_11088ID8 = nil
level01.colliders.C_Parent_Tile_11088ID9 = nil
level01.colliders.C_Parent_Tile_11088ID10 = nil
level01.colliders.C_Parent_Tile_11088ID11 = nil
level01.colliders.C_Parent_Tile_11088ID12 = nil
level01.colliders.C_Parent_Tile_11088ID13 = nil
level01.colliders.C_Parent_Tile_11088ID14 = nil
level01.colliders.C_Parent_Tile_11088ID15 = nil
level01.colliders.C_Parent_Tile_11088ID16 = nil
level01.colliders.C_Parent_Tile_11088ID17 = nil
level01.colliders.C_Parent_Tile_11088ID18 = nil
level01.colliders.C_Parent_Tile_11088ID19 = nil
level01.colliders.C_Parent_Tile_11088ID20 = nil
level01.colliders.C_Parent_Tile_11088ID21 = nil
level01.colliders.C_Parent_Tile_11088ID22 = nil
level01.colliders.C_Parent_Tile_11088ID23 = nil
level01.colliders.C_Parent_Tile_11088ID24 = nil
level01.colliders.C_Parent_Tile_11088ID25 = nil
level01.colliders.C_Parent_Tile_11088ID26 = nil
level01.colliders.C_Parent_Tile_11088ID27 = nil
level01.colliders.C_Parent_Tile_11088ID28 = nil
level01.colliders.C_Parent_Tile_11088ID29 = nil
level01.colliders.C_Parent_Tile_11088ID30 = nil
level01.colliders.C_Parent_Tile_11088ID31 = nil
level01.colliders.C_Parent_Tile_11088ID32 = nil
level01.colliders.C_Parent_Tile_11088ID33 = nil
level01.colliders.C_Parent_Tile_11088ID34 = nil
level01.colliders.C_Parent_Tile_11088ID35 = nil
level01.colliders.C_Parent_Tile_11088ID36 = nil
level01.colliders.C_Parent_Tile_11088ID37 = nil
level01.colliders.C_Parent_Tile_11088ID38 = nil
level01.colliders.C_Parent_Tile_11088ID39 = nil
level01.colliders.C_Parent_Tile_11088ID40 = nil
level01.colliders.C_Parent_Tile_11088ID41 = nil
level01.colliders.C_Parent_Tile_11088ID42 = nil
level01.colliders.C_Parent_Tile_11088ID43 = nil
level01.colliders.C_Parent_Tile_11088ID44 = nil
level01.colliders.C_Parent_Tile_11088ID45 = nil
level01.colliders.C_Parent_Tile_11088ID46 = nil
level01.colliders.C_Parent_Tile_11088ID47 = nil
level01.colliders.C_Parent_Tile_11088ID48 = nil
level01.colliders.C_Parent_Tile_11088ID49 = nil
level01.colliders.C_Parent_Tile_11088ID50 = nil
level01.colliders.C_Parent_Tile_11088ID51 = nil
level01.colliders.C_Parent_Tile_11088ID52 = nil
level01.colliders.C_Parent_Tile_11088ID53 = nil
level01.colliders.C_Parent_Tile_11088ID54 = nil
level01.colliders.C_Parent_Tile_11088ID55 = nil
level01.colliders.C_Parent_Tile_11088ID56 = nil
level01.colliders.C_Parent_Tile_11088ID57 = nil
level01.colliders.C_Parent_Tile_11088ID58 = nil
level01.colliders.C_Parent_Tile_11088ID59 = nil
level01.colliders.C_Parent_Tile_11088ID60 = nil
level01.colliders.C_Parent_Tile_11088ID61 = nil
level01.colliders.C_Parent_Tile_11088ID62 = nil
level01.colliders.C_Parent_Tile_11088ID63 = nil
level01.colliders.C_Parent_Tile_11088ID64 = nil
level01.colliders.C_Parent_Tile_11088ID65 = nil
level01.colliders.C_Parent_Tile_11088ID66 = nil
level01.colliders.C_Parent_Tile_11088ID67 = nil
level01.colliders.C_Parent_Tile_11088ID68 = nil
level01.colliders.C_Parent_Tile_11088ID69 = nil
level01.colliders.C_Parent_Tile_11088ID70 = nil
level01.colliders.C_Parent_Tile_11088ID71 = nil
level01.colliders.C_Parent_Tile_11088ID72 = nil
level01.colliders.C_Parent_Tile_11088ID73 = nil
level01.colliders.C_Parent_Tile_11088ID74 = nil
level01.colliders.C_Parent_Tile_11088ID75 = nil
level01.colliders.C_Parent_Tile_11088ID76 = nil
level01.colliders.C_Parent_Tile_11088ID77 = nil
level01.colliders.C_Parent_Tile_11088ID78 = nil
level01.colliders.C_Parent_Tile_11088ID79 = nil
level01.colliders.C_Parent_Tile_11088ID80 = nil
level01.colliders.C_Parent_Tile_11088ID81 = nil
level01.colliders.C_Parent_Tile_11088ID82 = nil
level01.colliders.C_Parent_Tile_11088ID83 = nil
level01.colliders.C_Parent_Tile_11088ID84 = nil
level01.colliders.C_Parent_Tile_11088ID85 = nil
level01.colliders.C_Parent_Tile_11088ID86 = nil
level01.colliders.C_Parent_Tile_11088ID87 = nil
level01.colliders.C_Parent_Tile_11088ID88 = nil
level01.colliders.C_Parent_Tile_11088ID89 = nil
level01.colliders.C_Parent_Tile_11088ID90 = nil
level01.colliders.C_Parent_Tile_11088ID91 = nil
level01.colliders.C_Parent_Tile_11088ID92 = nil
level01.colliders.C_Parent_Tile_11088ID93 = nil
level01.colliders.C_Parent_Tile_11088ID94 = nil
level01.colliders.C_Parent_Tile_11088ID95 = nil
level01.colliders.C_Parent_Tile_11088ID96 = nil
level01.colliders.C_Parent_Tile_11088ID97 = nil
level01.colliders.C_Parent_Tile_11088ID98 = nil
level01.colliders.C_Parent_Tile_11088ID99 = nil
level01.colliders.C_Parent_Tile_11088ID100 = nil
level01.colliders.C_Parent_Tile_11088ID101 = nil
end
level01.unload = function()
level01.props.tile12ID = nil
Gear.UnbindInstance(level01.props.m15ID.transformID)
level01.props.m15ID = nil
Gear.UnbindInstance(level01.props.m26ID.transformID)
level01.props.m26ID = nil
Gear.UnbindInstance(level01.props.m37ID.transformID)
level01.props.m37ID = nil
Gear.UnbindInstance(level01.props.m48ID.transformID)
level01.props.m48ID = nil
Gear.UnbindInstance(level01.props.m59ID.transformID)
level01.props.m59ID = nil
Gear.UnbindInstance(level01.props.m610ID.transformID)
level01.props.m610ID = nil
Gear.UnbindInstance(level01.props.m711ID.transformID)
level01.props.m711ID = nil
Gear.UnbindInstance(level01.props.m812ID.transformID)
level01.props.m812ID = nil
Gear.UnbindInstance(level01.props.s113ID.transformID)
level01.props.s113ID = nil
Gear.UnbindInstance(level01.props.s214ID.transformID)
level01.props.s214ID = nil
Gear.UnbindInstance(level01.props.s315ID.transformID)
level01.props.s315ID = nil
Gear.UnbindInstance(level01.props.s416ID.transformID)
level01.props.s416ID = nil
Gear.UnbindInstance(level01.props.s517ID.transformID)
level01.props.s517ID = nil
Gear.UnbindInstance(level01.props.s618ID.transformID)
level01.props.s618ID = nil
Gear.UnbindInstance(level01.props.s719ID.transformID)
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
level01.props.Bridge366ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider11367ID.transformID)
level01.props.OakTree_NoCollider11367ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider12368ID.transformID)
level01.props.OakTree_NoCollider12368ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider13369ID.transformID)
level01.props.OakTree_NoCollider13369ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider14370ID.transformID)
level01.props.OakTree_NoCollider14370ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider151371ID.transformID)
level01.props.OakTree_NoCollider151371ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider16372ID.transformID)
level01.props.OakTree_NoCollider16372ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider17373ID.transformID)
level01.props.OakTree_NoCollider17373ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider18374ID.transformID)
level01.props.OakTree_NoCollider18374ID = nil
Gear.UnbindInstance(level01.props.OakTree_NoCollider19375ID.transformID)
level01.props.OakTree_NoCollider19375ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider376ID.transformID)
level01.props.OakTree_Collider376ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider1377ID.transformID)
level01.props.OakTree_Collider1377ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider2378ID.transformID)
level01.props.OakTree_Collider2378ID = nil
Gear.UnbindInstance(level01.props.OakTree_Collider3379ID.transformID)
level01.props.OakTree_Collider3379ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider380ID.transformID)
level01.props.PineTree_NoCollider380ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider2418ID.transformID)
level01.props.PineTree_NoCollider2418ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider3419ID.transformID)
level01.props.PineTree_NoCollider3419ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider4420ID.transformID)
level01.props.PineTree_NoCollider4420ID = nil
Gear.UnbindInstance(level01.props.PineTree_NoCollider5421ID.transformID)
level01.props.PineTree_NoCollider5421ID = nil
level01.colliders.Tile1_wallNr432ID = nil
level01.colliders.Tile1_wallNr1433ID = nil
level01.colliders.Tile1_wallNr2434ID = nil
level01.triggers.New435ID = nil
Gear.UnbindInstance(level01.props.Stone2673ID.transformID)
level01.props.Stone2673ID = nil
Gear.UnbindInstance(level01.props.Stone3674ID.transformID)
level01.props.Stone3674ID = nil
Gear.UnbindInstance(level01.props.Stone1675ID.transformID)
level01.props.Stone1675ID = nil
Gear.UnbindInstance(level01.props.Stone31676ID.transformID)
level01.props.Stone31676ID = nil
Gear.UnbindInstance(level01.props.House677ID.transformID)
level01.props.House677ID = nil
Gear.UnbindInstance(level01.props.Stone11678ID.transformID)
level01.props.Stone11678ID = nil
Gear.UnbindInstance(level01.props.Stone21679ID.transformID)
level01.props.Stone21679ID = nil
Gear.UnbindInstance(level01.props.Stone32680ID.transformID)
level01.props.Stone32680ID = nil
Gear.UnbindInstance(level01.props.Stone33681ID.transformID)
level01.props.Stone33681ID = nil
Gear.UnbindInstance(level01.props.Stone34682ID.transformID)
level01.props.Stone34682ID = nil
Gear.UnbindInstance(level01.props.Stone12683ID.transformID)
level01.props.Stone12683ID = nil
Gear.UnbindInstance(level01.props.Lantern695ID.transformID)
level01.props.Lantern695ID = nil
Gear.UnbindInstance(level01.props.Lantern1696ID.transformID)
level01.props.Lantern1696ID = nil
Gear.UnbindInstance(level01.props.Lantern2697ID.transformID)
level01.props.Lantern2697ID = nil
Gear.UnbindInstance(level01.props.Lantern3698ID.transformID)
level01.props.Lantern3698ID = nil
Gear.UnbindInstance(level01.props.Lantern5700ID.transformID)
level01.props.Lantern5700ID = nil
Gear.UnbindInstance(level01.props.Lantern6701ID.transformID)
level01.props.Lantern6701ID = nil


level01.colliders.C_Parent_Tile_111078ID = nil
level01.colliders.C_Parent_Tile_121079ID = nil
level01.colliders.C_Parent_Tile_131080ID = nil
level01.colliders.C_Parent_Tile_141081ID = nil
level01.colliders.C_Parent_Tile_151082ID = nil
level01.colliders.C_Parent_Tile_161083ID = nil
level01.colliders.C_Parent_Tile_171084ID = nil
level01.colliders.C_Parent_Tile_181085ID = nil
level01.colliders.C_Parent_Tile_191086ID = nil
level01.colliders.C_Parent_Tile_1101087ID = nil
level01.colliders.C_Parent_Tile_11088ID = nil
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
level02.props.PineTree_Collider381ID = {}
level02.props.PineTree_Collider381ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider381ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider381ID.model)
Transform.SetPosition(level02.props.PineTree_Collider381ID.transformID, {x=176.796, y=41.2188, z=214.625})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider381ID.transformID, 1.06557, 1.49578, 1.23505)
Transform.SetRotation(level02.props.PineTree_Collider381ID.transformID, {x=0.0166519, y=-0.520999, z=0})
level02.props.PineTree_Collider1382ID = {}
level02.props.PineTree_Collider1382ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider1382ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider1382ID.model)
Transform.SetPosition(level02.props.PineTree_Collider1382ID.transformID, {x=183.5, y=47.8438, z=240})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider1382ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.PineTree_Collider1382ID.transformID, {x=0, y=0, z=0})
level02.props.PineTree_Collider2383ID = {}
level02.props.PineTree_Collider2383ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider2383ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider2383ID.model)
Transform.SetPosition(level02.props.PineTree_Collider2383ID.transformID, {x=163.885, y=41.0938, z=193.24})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider2383ID.transformID, 1.27571, 1.4359, 1.24416)
Transform.SetRotation(level02.props.PineTree_Collider2383ID.transformID, {x=0, y=0, z=0})
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
level02.props.OakTree_Collider41395ID = {}
level02.props.OakTree_Collider41395ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider41395ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider41395ID.model)
Transform.SetPosition(level02.props.OakTree_Collider41395ID.transformID, {x=328.75, y=37.0313, z=113.313})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider41395ID.transformID, 1.09525, 1.3175, 1.17284)
Transform.SetRotation(level02.props.OakTree_Collider41395ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider42396ID = {}
level02.props.OakTree_Collider42396ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider42396ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider42396ID.model)
Transform.SetPosition(level02.props.OakTree_Collider42396ID.transformID, {x=339.5, y=36.3125, z=156.5})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider42396ID.transformID, 1.16113, 1.45388, 1.12459)
Transform.SetRotation(level02.props.OakTree_Collider42396ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider43397ID = {}
level02.props.OakTree_Collider43397ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider43397ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider43397ID.model)
Transform.SetPosition(level02.props.OakTree_Collider43397ID.transformID, {x=370.079, y=38.4331, z=185.415})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider43397ID.transformID, 1.07468, 1.20834, 1.14122)
Transform.SetRotation(level02.props.OakTree_Collider43397ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider44398ID = {}
level02.props.OakTree_Collider44398ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider44398ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider44398ID.model)
Transform.SetPosition(level02.props.OakTree_Collider44398ID.transformID, {x=365.671, y=43.676, z=214.229})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider44398ID.transformID, 1.06256, 1.23009, 1.13057)
Transform.SetRotation(level02.props.OakTree_Collider44398ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider45399ID = {}
level02.props.OakTree_Collider45399ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider45399ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider45399ID.model)
Transform.SetPosition(level02.props.OakTree_Collider45399ID.transformID, {x=354.858, y=46.9688, z=226.742})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider45399ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.OakTree_Collider45399ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider46400ID = {}
level02.props.OakTree_Collider46400ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider46400ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider46400ID.model)
Transform.SetPosition(level02.props.OakTree_Collider46400ID.transformID, {x=347.526, y=52, z=240.375})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider46400ID.transformID, 1.2244, 1.35728, 1.12329)
Transform.SetRotation(level02.props.OakTree_Collider46400ID.transformID, {x=0, y=0, z=0})
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
level02.props.Water672ID = {}
level02.props.Water672ID.model = Assets.LoadModel('Models/lake.model')
level02.props.Water672ID.transformID = Gear.BindStaticInstance(level02.props.Water672ID.model)
Transform.SetPosition(level02.props.Water672ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level02.props.Water672ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Water672ID.transformID, {x=0, y=0, z=0})
level02.props.House1694ID = {}
level02.props.House1694ID.model = Assets.LoadModel('Models/House1.model')
level02.props.House1694ID.transformID = Gear.BindStaticInstance(level02.props.House1694ID.model)
Transform.SetPosition(level02.props.House1694ID.transformID, {x=225.855, y=38.7525, z=139.26})
Transform.SetScaleNonUniform(level02.props.House1694ID.transformID, 1.50664, 1.67704, 1.68159)
Transform.SetRotation(level02.props.House1694ID.transformID, {x=0.0540893, y=4.89373, z=-0.000975025})
level02.props.Lantern4699ID = {}
level02.props.Lantern4699ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern4699ID.transformID = Gear.BindStaticInstance(level02.props.Lantern4699ID.model)
Transform.SetPosition(level02.props.Lantern4699ID.transformID, {x=226, y=39, z=133})
Transform.SetScaleNonUniform(level02.props.Lantern4699ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern4699ID.transformID, {x=0, y=-1.0472, z=0})
Light.addLight(225.5, 42.75, 131, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern7703ID = {}
level02.props.Lantern7703ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern7703ID.transformID = Gear.BindStaticInstance(level02.props.Lantern7703ID.model)
Transform.SetPosition(level02.props.Lantern7703ID.transformID, {x=310.464, y=52.5625, z=246.125})
Transform.SetScaleNonUniform(level02.props.Lantern7703ID.transformID, 1, 1.22127, 1)
Transform.SetRotation(level02.props.Lantern7703ID.transformID, {x=0, y=0, z=0})
Light.addLight(307.964, 56.5625, 246.125, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern8704ID = {}
level02.props.Lantern8704ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern8704ID.transformID = Gear.BindStaticInstance(level02.props.Lantern8704ID.model)
Transform.SetPosition(level02.props.Lantern8704ID.transformID, {x=336.838, y=50.9375, z=237.224})
Transform.SetScaleNonUniform(level02.props.Lantern8704ID.transformID, 1, 1, 1)
Transform.SetRotation(level02.props.Lantern8704ID.transformID, {x=0, y=3.91918, z=0})
Light.addLight(338.838, 54.9375, 235.224, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern9705ID = {}
level02.props.Lantern9705ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern9705ID.transformID = Gear.BindStaticInstance(level02.props.Lantern9705ID.model)
Transform.SetPosition(level02.props.Lantern9705ID.transformID, {x=196.044, y=40.2449, z=203.33})
Transform.SetScaleNonUniform(level02.props.Lantern9705ID.transformID, 1, 1.06172, 1)
Transform.SetRotation(level02.props.Lantern9705ID.transformID, {x=0, y=-1.18189, z=0})
Light.addLight(195.044, 44.2449, 201.08, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern10706ID = {}
level02.props.Lantern10706ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern10706ID.transformID = Gear.BindStaticInstance(level02.props.Lantern10706ID.model)
Transform.SetPosition(level02.props.Lantern10706ID.transformID, {x=216.289, y=36.0584, z=179.585})
Transform.SetScaleNonUniform(level02.props.Lantern10706ID.transformID, 1, 1.19206, 1)
Transform.SetRotation(level02.props.Lantern10706ID.transformID, {x=0, y=-0.661819, z=0})
Light.addLight(214.289, 40.5584, 177.985, 1, 0.576471, 0.160784, 10,2)
level02.props.Lantern11707ID = {}
level02.props.Lantern11707ID.model = Assets.LoadModel('Models/Lantern_Post.model')
level02.props.Lantern11707ID.transformID = Gear.BindStaticInstance(level02.props.Lantern11707ID.model)
Transform.SetPosition(level02.props.Lantern11707ID.transformID, {x=235.862, y=35.5215, z=159.577})
Transform.SetScaleNonUniform(level02.props.Lantern11707ID.transformID, 1, 1.0759, 1)
Transform.SetRotation(level02.props.Lantern11707ID.transformID, {x=0, y=-0.977943, z=0})
Light.addLight(234.612, 39.5215, 157.577, 1, 0.576471, 0.160784, 10,2)
level02.props.PineTree_Collider3708ID = {}
level02.props.PineTree_Collider3708ID.model = Assets.LoadModel('Models/pineTree1.model')
level02.props.PineTree_Collider3708ID.transformID = Gear.BindStaticInstance(level02.props.PineTree_Collider3708ID.model)
Transform.SetPosition(level02.props.PineTree_Collider3708ID.transformID, {x=305.672, y=53.5464, z=253.254})
Transform.SetScaleNonUniform(level02.props.PineTree_Collider3708ID.transformID, 1.32645, 1.7271, 1.22295)
Transform.SetRotation(level02.props.PineTree_Collider3708ID.transformID, {x=0, y=0, z=0})
level02.props.OakTree_Collider47709ID = {}
level02.props.OakTree_Collider47709ID.model = Assets.LoadModel('Models/OakTree1.model')
level02.props.OakTree_Collider47709ID.transformID = Gear.BindStaticInstance(level02.props.OakTree_Collider47709ID.model)
Transform.SetPosition(level02.props.OakTree_Collider47709ID.transformID, {x=346.368, y=37.1634, z=203.707})
Transform.SetScaleNonUniform(level02.props.OakTree_Collider47709ID.transformID, 1.41434, 1.77458, 1.43405)
Transform.SetRotation(level02.props.OakTree_Collider47709ID.transformID, {x=0, y=3.24973, z=0})
local BaseGoblin3984ID = CreateEnemy(ENEMY_MELEE, {x=194.875, y=54.7813, z=113.688})
BaseGoblin3984ID.moveSpeed = 9
BaseGoblin3984ID.health = 50
BaseGoblin3984ID.visionRange = 30

local BaseGoblin4985ID = CreateEnemy(ENEMY_MELEE, {x=191.125, y=55.5, z=104.25})
BaseGoblin4985ID.moveSpeed = 9
BaseGoblin4985ID.health = 50
BaseGoblin4985ID.visionRange = 30

local BaseGoblin5986ID = CreateEnemy(ENEMY_MELEE, {x=190.5, y=54.7188, z=113.688})
BaseGoblin5986ID.moveSpeed = 9
BaseGoblin5986ID.health = 50
BaseGoblin5986ID.visionRange = 30

local BaseGoblin6987ID = CreateEnemy(ENEMY_MELEE, {x=186.375, y=55.1875, z=107.75})
BaseGoblin6987ID.moveSpeed = 9
BaseGoblin6987ID.health = 50
BaseGoblin6987ID.visionRange = 30

local BaseGoblin7988ID = CreateEnemy(ENEMY_MELEE, {x=191.875, y=55.125, z=109.438})
BaseGoblin7988ID.moveSpeed = 9
BaseGoblin7988ID.health = 50
BaseGoblin7988ID.visionRange = 30

local BaseGoblin8989ID = CreateEnemy(ENEMY_MELEE, {x=235.375, y=45.25, z=40.8438})
BaseGoblin8989ID.moveSpeed = 9
BaseGoblin8989ID.health = 50
BaseGoblin8989ID.visionRange = 30

local BaseGoblin9990ID = CreateEnemy(ENEMY_MELEE, {x=232.875, y=46.0625, z=45.0625})
BaseGoblin9990ID.moveSpeed = 9
BaseGoblin9990ID.health = 50
BaseGoblin9990ID.visionRange = 30

local BaseGoblin10991ID = CreateEnemy(ENEMY_MELEE, {x=227.5, y=47.1875, z=39.5625})
BaseGoblin10991ID.moveSpeed = 9
BaseGoblin10991ID.health = 50
BaseGoblin10991ID.visionRange = 30

local BaseGoblin11992ID = CreateEnemy(ENEMY_MELEE, {x=224.5, y=48.1875, z=43.4063})
BaseGoblin11992ID.moveSpeed = 9
BaseGoblin11992ID.health = 50
BaseGoblin11992ID.visionRange = 30

local BaseGoblin12993ID = CreateEnemy(ENEMY_MELEE, {x=229.625, y=46.75, z=43.1875})
BaseGoblin12993ID.moveSpeed = 9
BaseGoblin12993ID.health = 50
BaseGoblin12993ID.visionRange = 30

local BaseGoblin13994ID = CreateEnemy(ENEMY_MELEE, {x=209.125, y=37.3125, z=180.75})
BaseGoblin13994ID.moveSpeed = 9
BaseGoblin13994ID.health = 50
BaseGoblin13994ID.visionRange = 30

local BaseGoblin14995ID = CreateEnemy(ENEMY_MELEE, {x=205, y=37.9063, z=179.375})
BaseGoblin14995ID.moveSpeed = 9
BaseGoblin14995ID.health = 50
BaseGoblin14995ID.visionRange = 30

local BaseGoblin15996ID = CreateEnemy(ENEMY_MELEE, {x=213.5, y=37, z=174.625})
BaseGoblin15996ID.moveSpeed = 9
BaseGoblin15996ID.health = 50
BaseGoblin15996ID.visionRange = 30

local BaseGoblin16997ID = CreateEnemy(ENEMY_MELEE, {x=218.375, y=36.25, z=172.375})
BaseGoblin16997ID.moveSpeed = 9
BaseGoblin16997ID.health = 50
BaseGoblin16997ID.visionRange = 30

local BaseGoblin17998ID = CreateEnemy(ENEMY_MELEE, {x=213.125, y=37, z=178.375})
BaseGoblin17998ID.moveSpeed = 9
BaseGoblin17998ID.health = 50
BaseGoblin17998ID.visionRange = 30

local BaseGoblin18999ID = CreateEnemy(ENEMY_MELEE, {x=260, y=36.0938, z=126.875})
BaseGoblin18999ID.moveSpeed = 9
BaseGoblin18999ID.health = 50
BaseGoblin18999ID.visionRange = 30

local BaseGoblin191000ID = CreateEnemy(ENEMY_MELEE, {x=260.75, y=36.6563, z=131.625})
BaseGoblin191000ID.moveSpeed = 9
BaseGoblin191000ID.health = 50
BaseGoblin191000ID.visionRange = 30

local BaseGoblin201001ID = CreateEnemy(ENEMY_MELEE, {x=252.75, y=35.6875, z=134.125})
BaseGoblin201001ID.moveSpeed = 9
BaseGoblin201001ID.health = 50
BaseGoblin201001ID.visionRange = 30

local BaseGoblin211002ID = CreateEnemy(ENEMY_MELEE, {x=256, y=35.625, z=128.75})
BaseGoblin211002ID.moveSpeed = 9
BaseGoblin211002ID.health = 50
BaseGoblin211002ID.visionRange = 30

local BaseGoblin221003ID = CreateEnemy(ENEMY_MELEE, {x=256.75, y=36.5, z=136.625})
BaseGoblin221003ID.moveSpeed = 9
BaseGoblin221003ID.health = 50
BaseGoblin221003ID.visionRange = 30

local BaseGoblin231004ID = CreateEnemy(ENEMY_MELEE, {x=368.75, y=35.5625, z=161.625})
BaseGoblin231004ID.moveSpeed = 9
BaseGoblin231004ID.health = 50
BaseGoblin231004ID.visionRange = 30

local BaseGoblin241005ID = CreateEnemy(ENEMY_MELEE, {x=365.5, y=35.6563, z=155.875})
BaseGoblin241005ID.moveSpeed = 9
BaseGoblin241005ID.health = 50
BaseGoblin241005ID.visionRange = 30

local BaseGoblin251006ID = CreateEnemy(ENEMY_MELEE, {x=359.25, y=36.4375, z=157.25})
BaseGoblin251006ID.moveSpeed = 9
BaseGoblin251006ID.health = 50
BaseGoblin251006ID.visionRange = 30

local BaseGoblin261007ID = CreateEnemy(ENEMY_MELEE, {x=362, y=36.4063, z=165.5})
BaseGoblin261007ID.moveSpeed = 9
BaseGoblin261007ID.health = 50
BaseGoblin261007ID.visionRange = 30

local BaseGoblin271008ID = CreateEnemy(ENEMY_MELEE, {x=361.75, y=36.25, z=160.5})
BaseGoblin271008ID.moveSpeed = 9
BaseGoblin271008ID.health = 50
BaseGoblin271008ID.visionRange = 30

local BaseGoblin281009ID = CreateEnemy(ENEMY_MELEE, {x=338.75, y=48.5938, z=228.75})
BaseGoblin281009ID.moveSpeed = 9
BaseGoblin281009ID.health = 50
BaseGoblin281009ID.visionRange = 30

local BaseGoblin291010ID = CreateEnemy(ENEMY_MELEE, {x=341.25, y=49.8438, z=233.25})
BaseGoblin291010ID.moveSpeed = 9
BaseGoblin291010ID.health = 50
BaseGoblin291010ID.visionRange = 30

local BaseGoblin301011ID = CreateEnemy(ENEMY_MELEE, {x=341.75, y=47.5938, z=225.375})
BaseGoblin301011ID.moveSpeed = 9
BaseGoblin301011ID.health = 50
BaseGoblin301011ID.visionRange = 30

local BaseGoblin311012ID = CreateEnemy(ENEMY_MELEE, {x=344.75, y=48.75, z=230.375})
BaseGoblin311012ID.moveSpeed = 9
BaseGoblin311012ID.health = 50
BaseGoblin311012ID.visionRange = 30

local BaseGoblin321013ID = CreateEnemy(ENEMY_MELEE, {x=346.25, y=46.5938, z=223.875})
BaseGoblin321013ID.moveSpeed = 9
BaseGoblin321013ID.health = 50
BaseGoblin321013ID.visionRange = 30

local BaseGoblin331014ID = CreateEnemy(ENEMY_MELEE, {x=254, y=59, z=244.75})
BaseGoblin331014ID.moveSpeed = 9
BaseGoblin331014ID.health = 50
BaseGoblin331014ID.visionRange = 30

local BaseGoblin341015ID = CreateEnemy(ENEMY_MELEE, {x=254.75, y=59.5938, z=240.625})
BaseGoblin341015ID.moveSpeed = 9
BaseGoblin341015ID.health = 50
BaseGoblin341015ID.visionRange = 30

local BaseGoblin351016ID = CreateEnemy(ENEMY_MELEE, {x=259.25, y=59.3438, z=240.75})
BaseGoblin351016ID.moveSpeed = 9
BaseGoblin351016ID.health = 50
BaseGoblin351016ID.visionRange = 30

local BaseGoblin361017ID = CreateEnemy(ENEMY_MELEE, {x=260.5, y=58.9375, z=244.125})
BaseGoblin361017ID.moveSpeed = 9
BaseGoblin361017ID.health = 50
BaseGoblin361017ID.visionRange = 30

local BaseGoblin371018ID = CreateEnemy(ENEMY_MELEE, {x=264.75, y=59.1563, z=240.5})
BaseGoblin371018ID.moveSpeed = 9
BaseGoblin371018ID.health = 50
BaseGoblin371018ID.visionRange = 30

level02.colliders.C_Parent_Tile_21109ID = {}
level02.colliders.C_Parent_Tile_21109ID.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID.collider:SetMinPos(127.854,26.2952,33.7004)
level02.colliders.C_Parent_Tile_21109ID.collider:SetMaxPos(384.073,67.2657,256.312)
level02.colliders.C_Parent_Tile_21109ID.collider:SetPos(0,0,0)
level02.colliders.C_Parent_Tile_21109ID1 = {}
level02.colliders.C_Parent_Tile_21109ID1.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID1.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID1.collider:SetMinPos(127.854,26.2952,33.7004)
level02.colliders.C_Parent_Tile_21109ID1.collider:SetMaxPos(309.235,62.9209,252.296)
level02.colliders.C_Parent_Tile_21109ID.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID1.collider)
level02.colliders.C_Parent_Tile_21109ID2 = {}
level02.colliders.C_Parent_Tile_21109ID2.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID2.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID2.collider:SetMinPos(137.719,42.3375,33.7395)
level02.colliders.C_Parent_Tile_21109ID2.collider:SetMaxPos(206.149,62.9209,157.105)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID2.collider)
level02.colliders.C_Parent_Tile_21109ID3 = {}
level02.colliders.C_Parent_Tile_21109ID3.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID3.collider:SetOffset(139.5,48.7857,153)
level02.colliders.C_Parent_Tile_21109ID3.collider:SetZAxis(0.351123,0,-0.936329)
level02.colliders.C_Parent_Tile_21109ID3.collider:SetHalfLengths(0.3,6.44826,4.272)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID3.collider)
level02.colliders.C_Parent_Tile_21109ID4 = {}
level02.colliders.C_Parent_Tile_21109ID4.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID4.collider:SetOffset(144.5,50.234,147.5)
level02.colliders.C_Parent_Tile_21109ID4.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_21109ID4.collider:SetHalfLengths(0.3,5.22281,3.80789)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID4.collider)
level02.colliders.C_Parent_Tile_21109ID5 = {}
level02.colliders.C_Parent_Tile_21109ID5.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID5.collider:SetOffset(181.5,55.2472,112)
level02.colliders.C_Parent_Tile_21109ID5.collider:SetZAxis(-0.287348,0,-0.957826)
level02.colliders.C_Parent_Tile_21109ID5.collider:SetHalfLengths(0.3,6.55966,15.6605)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID5.collider)
level02.colliders.C_Parent_Tile_21109ID6 = {}
level02.colliders.C_Parent_Tile_21109ID6.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID6.collider:SetOffset(176.5,56.8068,92)
level02.colliders.C_Parent_Tile_21109ID6.collider:SetZAxis(-0.0995037,0,-0.995037)
level02.colliders.C_Parent_Tile_21109ID6.collider:SetHalfLengths(0.3,5.22281,5.02494)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID6.collider)
level02.colliders.C_Parent_Tile_21109ID7 = {}
level02.colliders.C_Parent_Tile_21109ID7.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID7.collider:SetOffset(176.5,56.584,78.5)
level02.colliders.C_Parent_Tile_21109ID7.collider:SetZAxis(0.058722,0,-0.998274)
level02.colliders.C_Parent_Tile_21109ID7.collider:SetHalfLengths(0.3,5.33421,8.51469)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID7.collider)
level02.colliders.C_Parent_Tile_21109ID8 = {}
level02.colliders.C_Parent_Tile_21109ID8.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID8.collider:SetOffset(179,56.2498,63.5)
level02.colliders.C_Parent_Tile_21109ID8.collider:SetZAxis(0.294086,0,-0.955779)
level02.colliders.C_Parent_Tile_21109ID8.collider:SetHalfLengths(0.3,6.67107,6.80074)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID8.collider)
level02.colliders.C_Parent_Tile_21109ID9 = {}
level02.colliders.C_Parent_Tile_21109ID9.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID9.collider:SetOffset(185,54.5788,51)
level02.colliders.C_Parent_Tile_21109ID9.collider:SetZAxis(0.5547,0,-0.83205)
level02.colliders.C_Parent_Tile_21109ID9.collider:SetHalfLengths(0.3,6.00264,7.2111)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID9.collider)
level02.colliders.C_Parent_Tile_21109ID10 = {}
level02.colliders.C_Parent_Tile_21109ID10.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID10.collider:SetOffset(194,53.5761,41.5)
level02.colliders.C_Parent_Tile_21109ID10.collider:SetZAxis(0.819232,0,-0.573462)
level02.colliders.C_Parent_Tile_21109ID10.collider:SetHalfLengths(0.3,5.66843,6.10328)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID10.collider)
level02.colliders.C_Parent_Tile_21109ID11 = {}
level02.colliders.C_Parent_Tile_21109ID11.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID11.collider:SetOffset(202.5,52.9077,36)
level02.colliders.C_Parent_Tile_21109ID11.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.C_Parent_Tile_21109ID11.collider:SetHalfLengths(0.3,5.89124,4.03113)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID11.collider)
level02.colliders.C_Parent_Tile_21109ID12 = {}
level02.colliders.C_Parent_Tile_21109ID12.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID12.collider:SetOffset(197,53.6875,59.5)
level02.colliders.C_Parent_Tile_21109ID12.collider:SetZAxis(-0.5547,0,0.83205)
level02.colliders.C_Parent_Tile_21109ID12.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_21109ID2.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID12.collider)
level02.colliders.C_Parent_Tile_21109ID13 = {}
level02.colliders.C_Parent_Tile_21109ID13.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID13.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID13.collider:SetMinPos(137.705,31.8654,33.7004)
level02.colliders.C_Parent_Tile_21109ID13.collider:SetMaxPos(225.016,62.1411,178.059)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID13.collider)
level02.colliders.C_Parent_Tile_21109ID14 = {}
level02.colliders.C_Parent_Tile_21109ID14.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID14.collider:SetOffset(141,40.5418,173)
level02.colliders.C_Parent_Tile_21109ID14.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_21109ID14.collider:SetHalfLengths(0.3,8.67635,5.09902)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID14.collider)
level02.colliders.C_Parent_Tile_21109ID15 = {}
level02.colliders.C_Parent_Tile_21109ID15.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID15.collider:SetOffset(139,44.2181,162.5)
level02.colliders.C_Parent_Tile_21109ID15.collider:SetZAxis(-0.178885,0,-0.98387)
level02.colliders.C_Parent_Tile_21109ID15.collider:SetHalfLengths(0.3,9.56758,5.59017)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID15.collider)
level02.colliders.C_Parent_Tile_21109ID16 = {}
level02.colliders.C_Parent_Tile_21109ID16.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID16.collider:SetOffset(152,50.4568,146.5)
level02.colliders.C_Parent_Tile_21109ID16.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_21109ID16.collider:SetHalfLengths(0.3,5.22281,4.03113)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID16.collider)
level02.colliders.C_Parent_Tile_21109ID17 = {}
level02.colliders.C_Parent_Tile_21109ID17.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID17.collider:SetOffset(161.5,50.234,149)
level02.colliders.C_Parent_Tile_21109ID17.collider:SetZAxis(0.939793,0,0.341743)
level02.colliders.C_Parent_Tile_21109ID17.collider:SetHalfLengths(0.3,6.89388,5.85235)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID17.collider)
level02.colliders.C_Parent_Tile_21109ID18 = {}
level02.colliders.C_Parent_Tile_21109ID18.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID18.collider:SetOffset(215.5,52.0165,34.5)
level02.colliders.C_Parent_Tile_21109ID18.collider:SetZAxis(0.998618,0,0.0525588)
level02.colliders.C_Parent_Tile_21109ID18.collider:SetHalfLengths(0.3,9.01056,9.51315)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID18.collider)
level02.colliders.C_Parent_Tile_21109ID19 = {}
level02.colliders.C_Parent_Tile_21109ID19.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID19.collider:SetOffset(213,50.4568,48.5)
level02.colliders.C_Parent_Tile_21109ID19.collider:SetZAxis(-0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_21109ID19.collider:SetHalfLengths(0.3,6.78247,4.03113)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID19.collider)
level02.colliders.C_Parent_Tile_21109ID20 = {}
level02.colliders.C_Parent_Tile_21109ID20.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID20.collider:SetOffset(204.5,52.2393,52)
level02.colliders.C_Parent_Tile_21109ID20.collider:SetZAxis(-0.83205,0,0.5547)
level02.colliders.C_Parent_Tile_21109ID20.collider:SetHalfLengths(0.3,6.44826,5.40833)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID20.collider)
level02.colliders.C_Parent_Tile_21109ID21 = {}
level02.colliders.C_Parent_Tile_21109ID21.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID21.collider:SetOffset(193.5,54.5788,70.5)
level02.colliders.C_Parent_Tile_21109ID21.collider:SetZAxis(-0.0766965,0,0.997055)
level02.colliders.C_Parent_Tile_21109ID21.collider:SetHalfLengths(0.3,6.00264,6.5192)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID21.collider)
level02.colliders.C_Parent_Tile_21109ID22 = {}
level02.colliders.C_Parent_Tile_21109ID22.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID22.collider:SetOffset(194,55.5814,84)
level02.colliders.C_Parent_Tile_21109ID22.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.C_Parent_Tile_21109ID22.collider:SetHalfLengths(0.3,6.00264,7.07107)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID22.collider)
level02.colliders.C_Parent_Tile_21109ID23 = {}
level02.colliders.C_Parent_Tile_21109ID23.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID23.collider:SetOffset(197.5,56.584,98.5)
level02.colliders.C_Parent_Tile_21109ID23.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_21109ID23.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_21109ID13.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID23.collider)
level02.colliders.C_Parent_Tile_21109ID24 = {}
level02.colliders.C_Parent_Tile_21109ID24.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID24.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID24.collider:SetMinPos(141.703,32.1997,34.7033)
level02.colliders.C_Parent_Tile_21109ID24.collider:SetMaxPos(245.044,62.6981,192.042)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID24.collider)
level02.colliders.C_Parent_Tile_21109ID25 = {}
level02.colliders.C_Parent_Tile_21109ID25.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID25.collider:SetOffset(143,38.8707,185)
level02.colliders.C_Parent_Tile_21109ID25.collider:SetZAxis(-0.141421,0,-0.98995)
level02.colliders.C_Parent_Tile_21109ID25.collider:SetHalfLengths(0.3,6.67107,7.07107)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID25.collider)
level02.colliders.C_Parent_Tile_21109ID26 = {}
level02.colliders.C_Parent_Tile_21109ID26.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID26.collider:SetOffset(170,52.1279,152)
level02.colliders.C_Parent_Tile_21109ID26.collider:SetZAxis(0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_21109ID26.collider:SetHalfLengths(0.3,5.66843,3.16228)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID26.collider)
level02.colliders.C_Parent_Tile_21109ID27 = {}
level02.colliders.C_Parent_Tile_21109ID27.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID27.collider:SetOffset(187.5,55.2472,133)
level02.colliders.C_Parent_Tile_21109ID27.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_21109ID27.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID27.collider)
level02.colliders.C_Parent_Tile_21109ID28 = {}
level02.colliders.C_Parent_Tile_21109ID28.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID28.collider:SetOffset(186.5,55.3586,129)
level02.colliders.C_Parent_Tile_21109ID28.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_21109ID28.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID28.collider)
level02.colliders.C_Parent_Tile_21109ID29 = {}
level02.colliders.C_Parent_Tile_21109ID29.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID29.collider:SetOffset(235,48.0059,36.5)
level02.colliders.C_Parent_Tile_21109ID29.collider:SetZAxis(0.988936,0,0.14834)
level02.colliders.C_Parent_Tile_21109ID29.collider:SetHalfLengths(0.3,7.78511,10.1119)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID29.collider)
level02.colliders.C_Parent_Tile_21109ID30 = {}
level02.colliders.C_Parent_Tile_21109ID30.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID30.collider:SetOffset(221.5,48.4515,48.5)
level02.colliders.C_Parent_Tile_21109ID30.collider:SetZAxis(-0.993884,0,-0.110432)
level02.colliders.C_Parent_Tile_21109ID30.collider:SetHalfLengths(0.3,7.00528,4.52769)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID30.collider)
level02.colliders.C_Parent_Tile_21109ID31 = {}
level02.colliders.C_Parent_Tile_21109ID31.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID31.collider:SetOffset(202.5,56.027,116.5)
level02.colliders.C_Parent_Tile_21109ID31.collider:SetZAxis(0.231621,0,0.972806)
level02.colliders.C_Parent_Tile_21109ID31.collider:SetHalfLengths(0.3,5.89124,10.7935)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID31.collider)
level02.colliders.C_Parent_Tile_21109ID32 = {}
level02.colliders.C_Parent_Tile_21109ID32.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID32.collider:SetOffset(160.5,54.1331,160.5)
level02.colliders.C_Parent_Tile_21109ID32.collider:SetZAxis(-0.910366,0,-0.413803)
level02.colliders.C_Parent_Tile_21109ID32.collider:SetHalfLengths(0.3,8.56494,6.04152)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID32.collider)
level02.colliders.C_Parent_Tile_21109ID33 = {}
level02.colliders.C_Parent_Tile_21109ID33.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID33.collider:SetOffset(153.5,50.5682,161.5)
level02.colliders.C_Parent_Tile_21109ID33.collider:SetZAxis(-0.393919,0,0.919145)
level02.colliders.C_Parent_Tile_21109ID33.collider:SetHalfLengths(0.3,6.67107,3.80789)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID33.collider)
level02.colliders.C_Parent_Tile_21109ID34 = {}
level02.colliders.C_Parent_Tile_21109ID34.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID34.collider:SetOffset(155.5,48.8971,169)
level02.colliders.C_Parent_Tile_21109ID34.collider:SetZAxis(0.658505,0,0.752577)
level02.colliders.C_Parent_Tile_21109ID34.collider:SetHalfLengths(0.3,5.44561,5.31507)
level02.colliders.C_Parent_Tile_21109ID24.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID34.collider)
level02.colliders.C_Parent_Tile_21109ID35 = {}
level02.colliders.C_Parent_Tile_21109ID35.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID35.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID35.collider:SetMinPos(136.756,27.5207,48.7154)
level02.colliders.C_Parent_Tile_21109ID35.collider:SetMaxPos(241.095,62.0297,206.174)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID35.collider)
level02.colliders.C_Parent_Tile_21109ID36 = {}
level02.colliders.C_Parent_Tile_21109ID36.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID36.collider:SetOffset(139.5,34.7488,202.5)
level02.colliders.C_Parent_Tile_21109ID36.collider:SetZAxis(0.581238,0,-0.813733)
level02.colliders.C_Parent_Tile_21109ID36.collider:SetHalfLengths(0.3,7.22809,4.30116)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID36.collider)
level02.colliders.C_Parent_Tile_21109ID37 = {}
level02.colliders.C_Parent_Tile_21109ID37.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID37.collider:SetOffset(143,36.9769,195.5)
level02.colliders.C_Parent_Tile_21109ID37.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.C_Parent_Tile_21109ID37.collider:SetHalfLengths(0.3,6.89388,3.64005)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID37.collider)
level02.colliders.C_Parent_Tile_21109ID38 = {}
level02.colliders.C_Parent_Tile_21109ID38.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID38.collider:SetOffset(176.5,52.7963,152.5)
level02.colliders.C_Parent_Tile_21109ID38.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.C_Parent_Tile_21109ID38.collider:SetHalfLengths(0.3,6.33685,3.53553)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID38.collider)
level02.colliders.C_Parent_Tile_21109ID39 = {}
level02.colliders.C_Parent_Tile_21109ID39.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID39.collider:SetOffset(182,54.1331,150.5)
level02.colliders.C_Parent_Tile_21109ID39.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_21109ID39.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID39.collider)
level02.colliders.C_Parent_Tile_21109ID40 = {}
level02.colliders.C_Parent_Tile_21109ID40.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID40.collider:SetOffset(184.5,54.8016,147.5)
level02.colliders.C_Parent_Tile_21109ID40.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_21109ID40.collider:SetHalfLengths(0.3,5.77983,1.58114)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID40.collider)
level02.colliders.C_Parent_Tile_21109ID41 = {}
level02.colliders.C_Parent_Tile_21109ID41.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID41.collider:SetOffset(186,55.5814,143.5)
level02.colliders.C_Parent_Tile_21109ID41.collider:SetZAxis(0.371391,0,-0.928477)
level02.colliders.C_Parent_Tile_21109ID41.collider:SetHalfLengths(0.3,5.33421,2.69258)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID41.collider)
level02.colliders.C_Parent_Tile_21109ID42 = {}
level02.colliders.C_Parent_Tile_21109ID42.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID42.collider:SetOffset(187.5,55.2472,138)
level02.colliders.C_Parent_Tile_21109ID42.collider:SetZAxis(0.164399,0,-0.986394)
level02.colliders.C_Parent_Tile_21109ID42.collider:SetHalfLengths(0.3,5,3.04138)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID42.collider)
level02.colliders.C_Parent_Tile_21109ID43 = {}
level02.colliders.C_Parent_Tile_21109ID43.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID43.collider:SetOffset(233.5,44.998,51.5)
level02.colliders.C_Parent_Tile_21109ID43.collider:SetZAxis(-0.948683,0,-0.316228)
level02.colliders.C_Parent_Tile_21109ID43.collider:SetHalfLengths(0.3,8.45354,7.90569)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID43.collider)
level02.colliders.C_Parent_Tile_21109ID44 = {}
level02.colliders.C_Parent_Tile_21109ID44.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID44.collider:SetOffset(170.5,55.5814,165.5)
level02.colliders.C_Parent_Tile_21109ID44.collider:SetZAxis(-0.874157,0,-0.485643)
level02.colliders.C_Parent_Tile_21109ID44.collider:SetHalfLengths(0.3,6.44826,5.14782)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID44.collider)
level02.colliders.C_Parent_Tile_21109ID45 = {}
level02.colliders.C_Parent_Tile_21109ID45.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID45.collider:SetOffset(161,48.4515,179)
level02.colliders.C_Parent_Tile_21109ID45.collider:SetZAxis(0.316228,0,0.948683)
level02.colliders.C_Parent_Tile_21109ID45.collider:SetHalfLengths(0.3,9.7904,6.32456)
level02.colliders.C_Parent_Tile_21109ID35.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID45.collider)
level02.colliders.C_Parent_Tile_21109ID46 = {}
level02.colliders.C_Parent_Tile_21109ID46.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID46.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID46.collider:SetMinPos(127.854,28.4119,37.73)
level02.colliders.C_Parent_Tile_21109ID46.collider:SetMaxPos(276.131,61.4726,211.262)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID46.collider)
level02.colliders.C_Parent_Tile_21109ID47 = {}
level02.colliders.C_Parent_Tile_21109ID47.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID47.collider:SetOffset(132.5,34.0803,208.5)
level02.colliders.C_Parent_Tile_21109ID47.collider:SetZAxis(0.874157,0,-0.485643)
level02.colliders.C_Parent_Tile_21109ID47.collider:SetHalfLengths(0.3,5.66843,5.14782)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID47.collider)
level02.colliders.C_Parent_Tile_21109ID48 = {}
level02.colliders.C_Parent_Tile_21109ID48.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID48.collider:SetOffset(260.5,45.2208,45.5)
level02.colliders.C_Parent_Tile_21109ID48.collider:SetZAxis(0.900159,0,0.435561)
level02.colliders.C_Parent_Tile_21109ID48.collider:SetHalfLengths(0.3,9.23337,17.2192)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID48.collider)
level02.colliders.C_Parent_Tile_21109ID49 = {}
level02.colliders.C_Parent_Tile_21109ID49.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID49.collider:SetOffset(248,40.9874,57)
level02.colliders.C_Parent_Tile_21109ID49.collider:SetZAxis(-0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_21109ID49.collider:SetHalfLengths(0.3,9.01056,7.61577)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID49.collider)
level02.colliders.C_Parent_Tile_21109ID50 = {}
level02.colliders.C_Parent_Tile_21109ID50.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID50.collider:SetOffset(205.5,55.1358,132.5)
level02.colliders.C_Parent_Tile_21109ID50.collider:SetZAxis(0.0905358,0,0.995893)
level02.colliders.C_Parent_Tile_21109ID50.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID50.collider)
level02.colliders.C_Parent_Tile_21109ID51 = {}
level02.colliders.C_Parent_Tile_21109ID51.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID51.collider:SetOffset(206.5,55.47,143.5)
level02.colliders.C_Parent_Tile_21109ID51.collider:SetZAxis(0.0905358,0,0.995893)
level02.colliders.C_Parent_Tile_21109ID51.collider:SetHalfLengths(0.3,5.22281,5.52268)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID51.collider)
level02.colliders.C_Parent_Tile_21109ID52 = {}
level02.colliders.C_Parent_Tile_21109ID52.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID52.collider:SetOffset(180,56.027,169)
level02.colliders.C_Parent_Tile_21109ID52.collider:SetZAxis(-0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_21109ID52.collider:SetHalfLengths(0.3,5.44562,5.09902)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID52.collider)
level02.colliders.C_Parent_Tile_21109ID53 = {}
level02.colliders.C_Parent_Tile_21109ID53.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID53.collider:SetOffset(163,43.6611,194.5)
level02.colliders.C_Parent_Tile_21109ID53.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID53.collider:SetHalfLengths(0.3,8.34213,9.5)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID53.collider)
level02.colliders.C_Parent_Tile_21109ID54 = {}
level02.colliders.C_Parent_Tile_21109ID54.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID54.collider:SetOffset(218.5,38.9821,136)
level02.colliders.C_Parent_Tile_21109ID54.collider:SetZAxis(-0.209529,0,-0.977802)
level02.colliders.C_Parent_Tile_21109ID54.collider:SetHalfLengths(0.3,7.33949,7.15891)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID54.collider)
level02.colliders.C_Parent_Tile_21109ID55 = {}
level02.colliders.C_Parent_Tile_21109ID55.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID55.collider:SetOffset(221.5,41.3216,126)
level02.colliders.C_Parent_Tile_21109ID55.collider:SetZAxis(0.83205,0,-0.5547)
level02.colliders.C_Parent_Tile_21109ID55.collider:SetHalfLengths(0.3,5.89124,5.40833)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID55.collider)
level02.colliders.C_Parent_Tile_21109ID56 = {}
level02.colliders.C_Parent_Tile_21109ID56.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID56.collider:SetOffset(163.885,45.0938,193.24)
level02.colliders.C_Parent_Tile_21109ID56.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID56.collider:SetHalfLengths(3.18928,5.74361,3.11039)
level02.colliders.C_Parent_Tile_21109ID46.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID56.collider)
level02.colliders.C_Parent_Tile_21109ID57 = {}
level02.colliders.C_Parent_Tile_21109ID57.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID57.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID57.collider:SetMinPos(127.963,27.1865,120.706)
level02.colliders.C_Parent_Tile_21109ID57.collider:SetMaxPos(236.059,61.027,224.298)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID57.collider)
level02.colliders.C_Parent_Tile_21109ID58 = {}
level02.colliders.C_Parent_Tile_21109ID58.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID58.collider:SetOffset(132,33.8575,223.5)
level02.colliders.C_Parent_Tile_21109ID58.collider:SetZAxis(0.992278,0,-0.124035)
level02.colliders.C_Parent_Tile_21109ID58.collider:SetHalfLengths(0.3,6.67107,4.03113)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID58.collider)
level02.colliders.C_Parent_Tile_21109ID59 = {}
level02.colliders.C_Parent_Tile_21109ID59.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID59.collider:SetOffset(138.5,35.5286,222)
level02.colliders.C_Parent_Tile_21109ID59.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.C_Parent_Tile_21109ID59.collider:SetHalfLengths(0.3,5.33422,2.69258)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID59.collider)
level02.colliders.C_Parent_Tile_21109ID60 = {}
level02.colliders.C_Parent_Tile_21109ID60.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID60.collider:SetOffset(205,55.2472,154)
level02.colliders.C_Parent_Tile_21109ID60.collider:SetZAxis(-0.371391,0,0.928477)
level02.colliders.C_Parent_Tile_21109ID60.collider:SetHalfLengths(0.3,5.22281,5.38516)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID60.collider)
level02.colliders.C_Parent_Tile_21109ID61 = {}
level02.colliders.C_Parent_Tile_21109ID61.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID61.collider:SetOffset(198.5,55.0244,163.5)
level02.colliders.C_Parent_Tile_21109ID61.collider:SetZAxis(-0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_21109ID61.collider:SetHalfLengths(0.3,5.77983,6.36396)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID61.collider)
level02.colliders.C_Parent_Tile_21109ID62 = {}
level02.colliders.C_Parent_Tile_21109ID62.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID62.collider:SetOffset(189.5,55.8042,169)
level02.colliders.C_Parent_Tile_21109ID62.collider:SetZAxis(-0.976187,0,0.21693)
level02.colliders.C_Parent_Tile_21109ID62.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID62.collider)
level02.colliders.C_Parent_Tile_21109ID63 = {}
level02.colliders.C_Parent_Tile_21109ID63.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID63.collider:SetOffset(170,40.319,200)
level02.colliders.C_Parent_Tile_21109ID63.collider:SetZAxis(0.868243,0,-0.496139)
level02.colliders.C_Parent_Tile_21109ID63.collider:SetHalfLengths(0.3,7.5623,8.06226)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID63.collider)
level02.colliders.C_Parent_Tile_21109ID64 = {}
level02.colliders.C_Parent_Tile_21109ID64.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID64.collider:SetOffset(184,42.8813,193)
level02.colliders.C_Parent_Tile_21109ID64.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_21109ID64.collider:SetHalfLengths(0.3,5.22281,7.61577)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID64.collider)
level02.colliders.C_Parent_Tile_21109ID65 = {}
level02.colliders.C_Parent_Tile_21109ID65.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID65.collider:SetOffset(201,40.319,176.5)
level02.colliders.C_Parent_Tile_21109ID65.collider:SetZAxis(0.841179,0,-0.540758)
level02.colliders.C_Parent_Tile_21109ID65.collider:SetHalfLengths(0.3,6.00264,8.32166)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID65.collider)
level02.colliders.C_Parent_Tile_21109ID66 = {}
level02.colliders.C_Parent_Tile_21109ID66.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID66.collider:SetOffset(231,42.2129,122)
level02.colliders.C_Parent_Tile_21109ID66.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_21109ID66.collider:SetHalfLengths(0.3,7.11668,5.09902)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID66.collider)
level02.colliders.C_Parent_Tile_21109ID67 = {}
level02.colliders.C_Parent_Tile_21109ID67.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID67.collider:SetOffset(225.855,38.7525,139.26)
level02.colliders.C_Parent_Tile_21109ID67.collider:SetZAxis(-0.982216,-0.0531053,0.180086)
level02.colliders.C_Parent_Tile_21109ID67.collider:SetHalfLengths(7.53319,6.70818,7.56718)
level02.colliders.C_Parent_Tile_21109ID57.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID67.collider)
level02.colliders.C_Parent_Tile_21109ID68 = {}
level02.colliders.C_Parent_Tile_21109ID68.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID68.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID68.collider:SetMinPos(140.927,29.3031,59.7622)
level02.colliders.C_Parent_Tile_21109ID68.collider:SetMaxPos(268.183,49.998,223.212)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID68.collider)
level02.colliders.C_Parent_Tile_21109ID69 = {}
level02.colliders.C_Parent_Tile_21109ID69.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID69.collider:SetOffset(143,35.1944,220.5)
level02.colliders.C_Parent_Tile_21109ID69.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_21109ID69.collider:SetHalfLengths(0.3,5,2.06155)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID69.collider)
level02.colliders.C_Parent_Tile_21109ID70 = {}
level02.colliders.C_Parent_Tile_21109ID70.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID70.collider:SetOffset(146.5,35.1944,221.5)
level02.colliders.C_Parent_Tile_21109ID70.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_21109ID70.collider:SetHalfLengths(0.3,5.89124,2.12132)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID70.collider)
level02.colliders.C_Parent_Tile_21109ID71 = {}
level02.colliders.C_Parent_Tile_21109ID71.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID71.collider:SetOffset(261.5,38.7593,65)
level02.colliders.C_Parent_Tile_21109ID71.collider:SetZAxis(-0.792624,0,-0.609711)
level02.colliders.C_Parent_Tile_21109ID71.collider:SetHalfLengths(0.3,7.22809,8.20061)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID71.collider)
level02.colliders.C_Parent_Tile_21109ID72 = {}
level02.colliders.C_Parent_Tile_21109ID72.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID72.collider:SetOffset(192.5,42.6585,185.5)
level02.colliders.C_Parent_Tile_21109ID72.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_21109ID72.collider:SetHalfLengths(0.3,7.33949,4.74342)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID72.collider)
level02.colliders.C_Parent_Tile_21109ID73 = {}
level02.colliders.C_Parent_Tile_21109ID73.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID73.collider:SetOffset(213,39.3163,166.5)
level02.colliders.C_Parent_Tile_21109ID73.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.C_Parent_Tile_21109ID73.collider:SetHalfLengths(0.3,7.89651,7.43303)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID73.collider)
level02.colliders.C_Parent_Tile_21109ID74 = {}
level02.colliders.C_Parent_Tile_21109ID74.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID74.collider:SetOffset(219,36.4198,158)
level02.colliders.C_Parent_Tile_21109ID74.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_21109ID74.collider:SetHalfLengths(0.3,5.1114,3.16228)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID74.collider)
level02.colliders.C_Parent_Tile_21109ID75 = {}
level02.colliders.C_Parent_Tile_21109ID75.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID75.collider:SetOffset(222,36.5312,153.5)
level02.colliders.C_Parent_Tile_21109ID75.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_21109ID75.collider:SetHalfLengths(0.3,5.1114,2.5)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID75.collider)
level02.colliders.C_Parent_Tile_21109ID76 = {}
level02.colliders.C_Parent_Tile_21109ID76.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID76.collider:SetOffset(221,36.6426,148)
level02.colliders.C_Parent_Tile_21109ID76.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_21109ID76.collider:SetHalfLengths(0.3,7.33949,5.09902)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID76.collider)
level02.colliders.C_Parent_Tile_21109ID77 = {}
level02.colliders.C_Parent_Tile_21109ID77.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID77.collider:SetOffset(242,40.0962,124.5)
level02.colliders.C_Parent_Tile_21109ID77.collider:SetZAxis(0.863779,0,0.503871)
level02.colliders.C_Parent_Tile_21109ID77.collider:SetHalfLengths(0.3,7.11668,6.94622)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID77.collider)
level02.colliders.C_Parent_Tile_21109ID78 = {}
level02.colliders.C_Parent_Tile_21109ID78.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID78.collider:SetOffset(235,42.375,133.125)
level02.colliders.C_Parent_Tile_21109ID78.collider:SetZAxis(-0.485958,0,-0.873982)
level02.colliders.C_Parent_Tile_21109ID78.collider:SetHalfLengths(1.82423,5.38972,2.04467)
level02.colliders.C_Parent_Tile_21109ID68.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID78.collider)
level02.colliders.C_Parent_Tile_21109ID79 = {}
level02.colliders.C_Parent_Tile_21109ID79.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID79.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID79.collider:SetMinPos(148.703,30.1944,69.8112)
level02.colliders.C_Parent_Tile_21109ID79.collider:SetMaxPos(285.233,47.5471,240.042)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID79.collider)
level02.colliders.C_Parent_Tile_21109ID80 = {}
level02.colliders.C_Parent_Tile_21109ID80.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID80.collider:SetOffset(149.5,37.0883,236.5)
level02.colliders.C_Parent_Tile_21109ID80.collider:SetZAxis(0.141421,0,0.98995)
level02.colliders.C_Parent_Tile_21109ID80.collider:SetHalfLengths(0.3,5.1114,3.53553)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID80.collider)
level02.colliders.C_Parent_Tile_21109ID81 = {}
level02.colliders.C_Parent_Tile_21109ID81.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID81.collider:SetOffset(176.5,41.9901,216.5)
level02.colliders.C_Parent_Tile_21109ID81.collider:SetZAxis(-0.196116,0,-0.980581)
level02.colliders.C_Parent_Tile_21109ID81.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID81.collider)
level02.colliders.C_Parent_Tile_21109ID82 = {}
level02.colliders.C_Parent_Tile_21109ID82.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID82.collider:SetOffset(190.5,41.3216,205.5)
level02.colliders.C_Parent_Tile_21109ID82.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_21109ID82.collider:SetHalfLengths(0.3,5.66843,2.54951)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID82.collider)
level02.colliders.C_Parent_Tile_21109ID83 = {}
level02.colliders.C_Parent_Tile_21109ID83.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID83.collider:SetOffset(207.5,38.9821,191)
level02.colliders.C_Parent_Tile_21109ID83.collider:SetZAxis(0.287348,0,-0.957826)
level02.colliders.C_Parent_Tile_21109ID83.collider:SetHalfLengths(0.3,6.22545,5.22015)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID83.collider)
level02.colliders.C_Parent_Tile_21109ID84 = {}
level02.colliders.C_Parent_Tile_21109ID84.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID84.collider:SetOffset(211,37.7567,184.5)
level02.colliders.C_Parent_Tile_21109ID84.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_21109ID84.collider:SetHalfLengths(0.3,5.77983,2.5)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID84.collider)
level02.colliders.C_Parent_Tile_21109ID85 = {}
level02.colliders.C_Parent_Tile_21109ID85.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID85.collider:SetOffset(215,36.9769,181.5)
level02.colliders.C_Parent_Tile_21109ID85.collider:SetZAxis(0.8,0,-0.6)
level02.colliders.C_Parent_Tile_21109ID85.collider:SetHalfLengths(0.3,5.89124,2.5)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID85.collider)
level02.colliders.C_Parent_Tile_21109ID86 = {}
level02.colliders.C_Parent_Tile_21109ID86.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID86.collider:SetOffset(227.5,35.64,167.5)
level02.colliders.C_Parent_Tile_21109ID86.collider:SetZAxis(0.813733,0,-0.581238)
level02.colliders.C_Parent_Tile_21109ID86.collider:SetHalfLengths(0.3,5,4.30116)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID86.collider)
level02.colliders.C_Parent_Tile_21109ID87 = {}
level02.colliders.C_Parent_Tile_21109ID87.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID87.collider:SetOffset(237.5,35.64,159.5)
level02.colliders.C_Parent_Tile_21109ID87.collider:SetZAxis(0.763386,0,-0.645942)
level02.colliders.C_Parent_Tile_21109ID87.collider:SetHalfLengths(0.3,5.44562,8.51469)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID87.collider)
level02.colliders.C_Parent_Tile_21109ID88 = {}
level02.colliders.C_Parent_Tile_21109ID88.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID88.collider:SetOffset(276.5,39.5392,80.5)
level02.colliders.C_Parent_Tile_21109ID88.collider:SetZAxis(-0.629198,0,-0.777245)
level02.colliders.C_Parent_Tile_21109ID88.collider:SetHalfLengths(0.3,5.77983,13.5093)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID88.collider)
level02.colliders.C_Parent_Tile_21109ID89 = {}
level02.colliders.C_Parent_Tile_21109ID89.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID89.collider:SetOffset(240,36.754,139)
level02.colliders.C_Parent_Tile_21109ID89.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_21109ID89.collider:SetHalfLengths(0.3,5.55702,2)
level02.colliders.C_Parent_Tile_21109ID79.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID89.collider)
level02.colliders.C_Parent_Tile_21109ID90 = {}
level02.colliders.C_Parent_Tile_21109ID90.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID90.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID90.collider:SetMinPos(149.7,26.2952,52.7879)
level02.colliders.C_Parent_Tile_21109ID90.collider:SetMaxPos(298.031,56.0138,250.277)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID90.collider)
level02.colliders.C_Parent_Tile_21109ID91 = {}
level02.colliders.C_Parent_Tile_21109ID91.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID91.collider:SetOffset(283,40.9874,60)
level02.colliders.C_Parent_Tile_21109ID91.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_21109ID91.collider:SetHalfLengths(0.3,5.33421,9.8995)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID91.collider)
level02.colliders.C_Parent_Tile_21109ID92 = {}
level02.colliders.C_Parent_Tile_21109ID92.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID92.collider:SetOffset(150,37.1997,241.5)
level02.colliders.C_Parent_Tile_21109ID92.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID92.collider:SetHalfLengths(0.3,5,1.5)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID92.collider)
level02.colliders.C_Parent_Tile_21109ID93 = {}
level02.colliders.C_Parent_Tile_21109ID93.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID93.collider:SetOffset(158.5,37.1997,246.5)
level02.colliders.C_Parent_Tile_21109ID93.collider:SetZAxis(0.924678,0,0.38075)
level02.colliders.C_Parent_Tile_21109ID93.collider:SetHalfLengths(0.3,10.9044,9.19239)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID93.collider)
level02.colliders.C_Parent_Tile_21109ID94 = {}
level02.colliders.C_Parent_Tile_21109ID94.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID94.collider:SetOffset(183.5,46.8918,226)
level02.colliders.C_Parent_Tile_21109ID94.collider:SetZAxis(-0.913812,0,-0.406139)
level02.colliders.C_Parent_Tile_21109ID94.collider:SetHalfLengths(0.3,9.12197,4.92443)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID94.collider)
level02.colliders.C_Parent_Tile_21109ID95 = {}
level02.colliders.C_Parent_Tile_21109ID95.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID95.collider:SetOffset(178,42.7699,221.5)
level02.colliders.C_Parent_Tile_21109ID95.collider:SetZAxis(-0.371391,0,-0.928477)
level02.colliders.C_Parent_Tile_21109ID95.collider:SetHalfLengths(0.3,5.77983,2.69258)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID95.collider)
level02.colliders.C_Parent_Tile_21109ID96 = {}
level02.colliders.C_Parent_Tile_21109ID96.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID96.collider:SetOffset(198,40.6532,203)
level02.colliders.C_Parent_Tile_21109ID96.collider:SetZAxis(0.928477,0,-0.371391)
level02.colliders.C_Parent_Tile_21109ID96.collider:SetHalfLengths(0.3,6.00264,5.38516)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID96.collider)
level02.colliders.C_Parent_Tile_21109ID97 = {}
level02.colliders.C_Parent_Tile_21109ID97.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID97.collider:SetOffset(204.5,39.6506,198.5)
level02.colliders.C_Parent_Tile_21109ID97.collider:SetZAxis(0.514496,0,-0.857493)
level02.colliders.C_Parent_Tile_21109ID97.collider:SetHalfLengths(0.3,5.66843,2.91548)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID97.collider)
level02.colliders.C_Parent_Tile_21109ID98 = {}
level02.colliders.C_Parent_Tile_21109ID98.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID98.collider:SetOffset(249.5,36.0856,148.5)
level02.colliders.C_Parent_Tile_21109ID98.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_21109ID98.collider:SetHalfLengths(0.3,5.77983,7.77817)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID98.collider)
level02.colliders.C_Parent_Tile_21109ID99 = {}
level02.colliders.C_Parent_Tile_21109ID99.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID99.collider:SetOffset(263.5,37.4225,113.5)
level02.colliders.C_Parent_Tile_21109ID99.collider:SetZAxis(0.773957,0,-0.633238)
level02.colliders.C_Parent_Tile_21109ID99.collider:SetHalfLengths(0.3,5.44562,7.10634)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID99.collider)
level02.colliders.C_Parent_Tile_21109ID100 = {}
level02.colliders.C_Parent_Tile_21109ID100.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID100.collider:SetOffset(283.5,36.9769,107.5)
level02.colliders.C_Parent_Tile_21109ID100.collider:SetZAxis(0.994692,0,-0.102899)
level02.colliders.C_Parent_Tile_21109ID100.collider:SetHalfLengths(0.3,6.22545,14.5774)
level02.colliders.C_Parent_Tile_21109ID90.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID100.collider)
level02.colliders.C_Parent_Tile_21109ID101 = {}
level02.colliders.C_Parent_Tile_21109ID101.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID101.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID101.collider:SetMinPos(166.951,31.4198,66.8138)
level02.colliders.C_Parent_Tile_21109ID101.collider:SetMaxPos(309.235,55.8438,252.296)
level02.colliders.C_Parent_Tile_21109ID1.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID101.collider)
level02.colliders.C_Parent_Tile_21109ID102 = {}
level02.colliders.C_Parent_Tile_21109ID102.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID102.collider:SetOffset(299.5,41.3216,79)
level02.colliders.C_Parent_Tile_21109ID102.collider:SetZAxis(0.620703,0,0.784046)
level02.colliders.C_Parent_Tile_21109ID102.collider:SetHalfLengths(0.3,6.33685,15.3052)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID102.collider)
level02.colliders.C_Parent_Tile_21109ID103 = {}
level02.colliders.C_Parent_Tile_21109ID103.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID103.collider:SetOffset(173,43.1041,251)
level02.colliders.C_Parent_Tile_21109ID103.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_21109ID103.collider:SetHalfLengths(0.3,9.01056,6.08276)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID103.collider)
level02.colliders.C_Parent_Tile_21109ID104 = {}
level02.colliders.C_Parent_Tile_21109ID104.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID104.collider:SetOffset(198.5,49.5656,227.5)
level02.colliders.C_Parent_Tile_21109ID104.collider:SetZAxis(-0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_21109ID104.collider:SetHalfLengths(0.3,6.22544,3.53553)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID104.collider)
level02.colliders.C_Parent_Tile_21109ID105 = {}
level02.colliders.C_Parent_Tile_21109ID105.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID105.collider:SetOffset(191.5,48.3401,228)
level02.colliders.C_Parent_Tile_21109ID105.collider:SetZAxis(-1,0,0)
level02.colliders.C_Parent_Tile_21109ID105.collider:SetHalfLengths(0.3,6.44826,3.5)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID105.collider)
level02.colliders.C_Parent_Tile_21109ID106 = {}
level02.colliders.C_Parent_Tile_21109ID106.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID106.collider:SetOffset(258,36.8654,140)
level02.colliders.C_Parent_Tile_21109ID106.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_21109ID106.collider:SetHalfLengths(0.3,5.44562,4.24264)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID106.collider)
level02.colliders.C_Parent_Tile_21109ID107 = {}
level02.colliders.C_Parent_Tile_21109ID107.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID107.collider:SetOffset(264,37.3111,134.5)
level02.colliders.C_Parent_Tile_21109ID107.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.C_Parent_Tile_21109ID107.collider:SetHalfLengths(0.3,5.1114,3.90512)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID107.collider)
level02.colliders.C_Parent_Tile_21109ID108 = {}
level02.colliders.C_Parent_Tile_21109ID108.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID108.collider:SetOffset(269,37.4225,131)
level02.colliders.C_Parent_Tile_21109ID108.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.C_Parent_Tile_21109ID108.collider:SetHalfLengths(0.3,5.1114,2.23607)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID108.collider)
level02.colliders.C_Parent_Tile_21109ID109 = {}
level02.colliders.C_Parent_Tile_21109ID109.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID109.collider:SetOffset(273.5,37.3111,129.5)
level02.colliders.C_Parent_Tile_21109ID109.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_21109ID109.collider:SetHalfLengths(0.3,5.22281,2.54951)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID109.collider)
level02.colliders.C_Parent_Tile_21109ID110 = {}
level02.colliders.C_Parent_Tile_21109ID110.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID110.collider:SetOffset(291.5,38.2023,98.5)
level02.colliders.C_Parent_Tile_21109ID110.collider:SetZAxis(-0.654931,0,-0.755689)
level02.colliders.C_Parent_Tile_21109ID110.collider:SetHalfLengths(0.3,6.33685,9.92472)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID110.collider)
level02.colliders.C_Parent_Tile_21109ID111 = {}
level02.colliders.C_Parent_Tile_21109ID111.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID111.collider:SetOffset(183.5,51.8438,240)
level02.colliders.C_Parent_Tile_21109ID111.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID111.collider:SetHalfLengths(2.5,4,2.5)
level02.colliders.C_Parent_Tile_21109ID101.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID111.collider)
level02.colliders.C_Parent_Tile_21109ID112 = {}
level02.colliders.C_Parent_Tile_21109ID112.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID112.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID112.collider:SetMinPos(147.701,29.1917,90.7879)
level02.colliders.C_Parent_Tile_21109ID112.collider:SetMaxPos(384.073,67.2657,256.312)
level02.colliders.C_Parent_Tile_21109ID.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID112.collider)
level02.colliders.C_Parent_Tile_21109ID113 = {}
level02.colliders.C_Parent_Tile_21109ID113.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID113.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID113.collider:SetMinPos(147.701,30.083,117.788)
level02.colliders.C_Parent_Tile_21109ID113.collider:SetMaxPos(258.212,51.2525,233.03)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID113.collider)
level02.colliders.C_Parent_Tile_21109ID114 = {}
level02.colliders.C_Parent_Tile_21109ID114.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID114.collider:SetOffset(148.5,36.0856,228)
level02.colliders.C_Parent_Tile_21109ID114.collider:SetZAxis(0.0995037,0,0.995037)
level02.colliders.C_Parent_Tile_21109ID114.collider:SetHalfLengths(0.3,6.00264,5.02494)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID114.collider)
level02.colliders.C_Parent_Tile_21109ID115 = {}
level02.colliders.C_Parent_Tile_21109ID115.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID115.collider:SetOffset(177,41.433,212)
level02.colliders.C_Parent_Tile_21109ID115.collider:SetZAxis(0.447214,0,-0.894427)
level02.colliders.C_Parent_Tile_21109ID115.collider:SetHalfLengths(0.3,5.22281,2.23607)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID115.collider)
level02.colliders.C_Parent_Tile_21109ID116 = {}
level02.colliders.C_Parent_Tile_21109ID116.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID116.collider:SetOffset(180.5,41.6558,208.5)
level02.colliders.C_Parent_Tile_21109ID116.collider:SetZAxis(0.857493,0,-0.514496)
level02.colliders.C_Parent_Tile_21109ID116.collider:SetHalfLengths(0.3,5.22281,2.91548)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID116.collider)
level02.colliders.C_Parent_Tile_21109ID117 = {}
level02.colliders.C_Parent_Tile_21109ID117.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID117.collider:SetOffset(185.5,41.8786,206.5)
level02.colliders.C_Parent_Tile_21109ID117.collider:SetZAxis(0.980581,0,-0.196116)
level02.colliders.C_Parent_Tile_21109ID117.collider:SetHalfLengths(0.3,5.55702,2.54951)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID117.collider)
level02.colliders.C_Parent_Tile_21109ID118 = {}
level02.colliders.C_Parent_Tile_21109ID118.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID118.collider:SetOffset(220.5,36.0856,175)
level02.colliders.C_Parent_Tile_21109ID118.collider:SetZAxis(0.573462,0,-0.819232)
level02.colliders.C_Parent_Tile_21109ID118.collider:SetHalfLengths(0.3,5.44562,6.10328)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID118.collider)
level02.colliders.C_Parent_Tile_21109ID119 = {}
level02.colliders.C_Parent_Tile_21109ID119.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID119.collider:SetOffset(228.5,36.6426,150.5)
level02.colliders.C_Parent_Tile_21109ID119.collider:SetZAxis(0.948683,0,-0.316228)
level02.colliders.C_Parent_Tile_21109ID119.collider:SetHalfLengths(0.3,5.1114,4.74342)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID119.collider)
level02.colliders.C_Parent_Tile_21109ID120 = {}
level02.colliders.C_Parent_Tile_21109ID120.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID120.collider:SetOffset(236.5,36.5312,145)
level02.colliders.C_Parent_Tile_21109ID120.collider:SetZAxis(0.658505,0,-0.752577)
level02.colliders.C_Parent_Tile_21109ID120.collider:SetHalfLengths(0.3,5.22281,5.31507)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID120.collider)
level02.colliders.C_Parent_Tile_21109ID121 = {}
level02.colliders.C_Parent_Tile_21109ID121.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID121.collider:SetOffset(238,37.3111,135)
level02.colliders.C_Parent_Tile_21109ID121.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_21109ID121.collider:SetHalfLengths(0.3,6.00264,2.82843)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID121.collider)
level02.colliders.C_Parent_Tile_21109ID122 = {}
level02.colliders.C_Parent_Tile_21109ID122.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID122.collider:SetOffset(253,37.9795,123)
level02.colliders.C_Parent_Tile_21109ID122.collider:SetZAxis(0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_21109ID122.collider:SetHalfLengths(0.3,5.55702,7.07107)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID122.collider)
level02.colliders.C_Parent_Tile_21109ID123 = {}
level02.colliders.C_Parent_Tile_21109ID123.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID123.collider:SetOffset(176.796,45.2188,214.625)
level02.colliders.C_Parent_Tile_21109ID123.collider:SetZAxis(-0.497678,-0.0166511,0.867202)
level02.colliders.C_Parent_Tile_21109ID123.collider:SetHalfLengths(2.66392,5.98314,3.08762)
level02.colliders.C_Parent_Tile_21109ID113.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID123.collider)
level02.colliders.C_Parent_Tile_21109ID124 = {}
level02.colliders.C_Parent_Tile_21109ID124.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID124.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID124.collider:SetMinPos(178.882,31.3084,127.701)
level02.colliders.C_Parent_Tile_21109ID124.collider:SetMaxPos(299.049,66.1516,252.276)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID124.collider)
level02.colliders.C_Parent_Tile_21109ID125 = {}
level02.colliders.C_Parent_Tile_21109ID125.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID125.collider:SetOffset(182.5,47.1147,250.5)
level02.colliders.C_Parent_Tile_21109ID125.collider:SetZAxis(0.919145,0,-0.393919)
level02.colliders.C_Parent_Tile_21109ID125.collider:SetHalfLengths(0.3,8.45354,3.80789)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID125.collider)
level02.colliders.C_Parent_Tile_21109ID126 = {}
level02.colliders.C_Parent_Tile_21109ID126.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID126.collider:SetOffset(189,50.5682,246.5)
level02.colliders.C_Parent_Tile_21109ID126.collider:SetZAxis(0.768221,0,-0.640184)
level02.colliders.C_Parent_Tile_21109ID126.collider:SetHalfLengths(0.3,5.89124,3.90512)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID126.collider)
level02.colliders.C_Parent_Tile_21109ID127 = {}
level02.colliders.C_Parent_Tile_21109ID127.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID127.collider:SetOffset(194.5,51.4594,244)
level02.colliders.C_Parent_Tile_21109ID127.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_21109ID127.collider:SetHalfLengths(0.3,6.78247,2.5)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID127.collider)
level02.colliders.C_Parent_Tile_21109ID128 = {}
level02.colliders.C_Parent_Tile_21109ID128.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID128.collider:SetOffset(200.5,53.2419,244.5)
level02.colliders.C_Parent_Tile_21109ID128.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_21109ID128.collider:SetHalfLengths(0.3,7.00528,3.53553)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID128.collider)
level02.colliders.C_Parent_Tile_21109ID129 = {}
level02.colliders.C_Parent_Tile_21109ID129.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID129.collider:SetOffset(207,55.2472,245.5)
level02.colliders.C_Parent_Tile_21109ID129.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_21109ID129.collider:SetHalfLengths(0.3,6.44826,3.04138)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID129.collider)
level02.colliders.C_Parent_Tile_21109ID130 = {}
level02.colliders.C_Parent_Tile_21109ID130.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID130.collider:SetOffset(220.5,56.3612,226)
level02.colliders.C_Parent_Tile_21109ID130.collider:SetZAxis(-0.658505,0,-0.752577)
level02.colliders.C_Parent_Tile_21109ID130.collider:SetHalfLengths(0.3,9.79039,5.31507)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID130.collider)
level02.colliders.C_Parent_Tile_21109ID131 = {}
level02.colliders.C_Parent_Tile_21109ID131.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID131.collider:SetOffset(212.5,51.5708,223.5)
level02.colliders.C_Parent_Tile_21109ID131.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_21109ID131.collider:SetHalfLengths(0.3,5.89124,4.74342)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID131.collider)
level02.colliders.C_Parent_Tile_21109ID132 = {}
level02.colliders.C_Parent_Tile_21109ID132.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID132.collider:SetOffset(205,50.6796,226)
level02.colliders.C_Parent_Tile_21109ID132.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_21109ID132.collider:SetHalfLengths(0.3,6.11405,3.16228)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID132.collider)
level02.colliders.C_Parent_Tile_21109ID133 = {}
level02.colliders.C_Parent_Tile_21109ID133.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID133.collider:SetOffset(281.5,37.5339,128.5)
level02.colliders.C_Parent_Tile_21109ID133.collider:SetZAxis(0.995893,0,-0.0905358)
level02.colliders.C_Parent_Tile_21109ID133.collider:SetHalfLengths(0.3,5.33421,5.52268)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID133.collider)
level02.colliders.C_Parent_Tile_21109ID134 = {}
level02.colliders.C_Parent_Tile_21109ID134.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID134.collider:SetOffset(293,37.1997,129)
level02.colliders.C_Parent_Tile_21109ID134.collider:SetZAxis(0.986394,0,0.164399)
level02.colliders.C_Parent_Tile_21109ID134.collider:SetHalfLengths(0.3,5.89124,6.08276)
level02.colliders.C_Parent_Tile_21109ID124.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID134.collider)
level02.colliders.C_Parent_Tile_21109ID135 = {}
level02.colliders.C_Parent_Tile_21109ID135.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID135.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID135.collider:SetMinPos(209.889,30.3058,90.7879)
level02.colliders.C_Parent_Tile_21109ID135.collider:SetMaxPos(322.234,65.2604,254.212)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID135.collider)
level02.colliders.C_Parent_Tile_21109ID136 = {}
level02.colliders.C_Parent_Tile_21109ID136.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID136.collider:SetOffset(312,42.6585,94)
level02.colliders.C_Parent_Tile_21109ID136.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_21109ID136.collider:SetHalfLengths(0.3,6.33685,4.24264)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID136.collider)
level02.colliders.C_Parent_Tile_21109ID137 = {}
level02.colliders.C_Parent_Tile_21109ID137.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID137.collider:SetOffset(318,42.1015,102)
level02.colliders.C_Parent_Tile_21109ID137.collider:SetZAxis(0.624695,0,0.780869)
level02.colliders.C_Parent_Tile_21109ID137.collider:SetHalfLengths(0.3,9.67899,6.40312)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID137.collider)
level02.colliders.C_Parent_Tile_21109ID138 = {}
level02.colliders.C_Parent_Tile_21109ID138.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID138.collider:SetOffset(212.5,56.6954,247)
level02.colliders.C_Parent_Tile_21109ID138.collider:SetZAxis(0.928477,0,0.371391)
level02.colliders.C_Parent_Tile_21109ID138.collider:SetHalfLengths(0.3,7.22809,2.69258)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID138.collider)
level02.colliders.C_Parent_Tile_21109ID139 = {}
level02.colliders.C_Parent_Tile_21109ID139.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID139.collider:SetOffset(217.5,58.9235,249.5)
level02.colliders.C_Parent_Tile_21109ID139.collider:SetZAxis(0.857493,0,0.514496)
level02.colliders.C_Parent_Tile_21109ID139.collider:SetHalfLengths(0.3,5.77983,2.91548)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID139.collider)
level02.colliders.C_Parent_Tile_21109ID140 = {}
level02.colliders.C_Parent_Tile_21109ID140.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID140.collider:SetOffset(221.5,59.7034,252.5)
level02.colliders.C_Parent_Tile_21109ID140.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_21109ID140.collider:SetHalfLengths(0.3,5.55702,2.12132)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID140.collider)
level02.colliders.C_Parent_Tile_21109ID141 = {}
level02.colliders.C_Parent_Tile_21109ID141.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID141.collider:SetOffset(234.5,57.1411,234.5)
level02.colliders.C_Parent_Tile_21109ID141.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_21109ID141.collider:SetHalfLengths(0.3,5.66843,3.53553)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID141.collider)
level02.colliders.C_Parent_Tile_21109ID142 = {}
level02.colliders.C_Parent_Tile_21109ID142.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID142.collider:SetOffset(241,57.8095,233.5)
level02.colliders.C_Parent_Tile_21109ID142.collider:SetZAxis(0.894427,0,-0.447214)
level02.colliders.C_Parent_Tile_21109ID142.collider:SetHalfLengths(0.3,5.22281,3.3541)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID142.collider)
level02.colliders.C_Parent_Tile_21109ID143 = {}
level02.colliders.C_Parent_Tile_21109ID143.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID143.collider:SetOffset(247.5,57.5867,231.5)
level02.colliders.C_Parent_Tile_21109ID143.collider:SetZAxis(0.98995,0,-0.141421)
level02.colliders.C_Parent_Tile_21109ID143.collider:SetHalfLengths(0.3,5.22281,3.53553)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID143.collider)
level02.colliders.C_Parent_Tile_21109ID144 = {}
level02.colliders.C_Parent_Tile_21109ID144.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID144.collider:SetOffset(306,36.3084,132)
level02.colliders.C_Parent_Tile_21109ID144.collider:SetZAxis(0.961524,0,0.274721)
level02.colliders.C_Parent_Tile_21109ID144.collider:SetHalfLengths(0.3,6.00264,7.28011)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID144.collider)
level02.colliders.C_Parent_Tile_21109ID145 = {}
level02.colliders.C_Parent_Tile_21109ID145.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID145.collider:SetOffset(227.5,56.3612,232)
level02.colliders.C_Parent_Tile_21109ID145.collider:SetZAxis(0.868243,0,0.496139)
level02.colliders.C_Parent_Tile_21109ID145.collider:SetHalfLengths(0.3,5.77983,4.03113)
level02.colliders.C_Parent_Tile_21109ID135.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID145.collider)
level02.colliders.C_Parent_Tile_21109ID146 = {}
level02.colliders.C_Parent_Tile_21109ID146.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID146.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID146.collider:SetMinPos(222.967,29.1917,106.78)
level02.colliders.C_Parent_Tile_21109ID146.collider:SetMaxPos(350.246,65.8174,254.298)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID146.collider)
level02.colliders.C_Parent_Tile_21109ID147 = {}
level02.colliders.C_Parent_Tile_21109ID147.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID147.collider:SetOffset(329,37.4225,113.5)
level02.colliders.C_Parent_Tile_21109ID147.collider:SetZAxis(0.732794,0,0.680451)
level02.colliders.C_Parent_Tile_21109ID147.collider:SetHalfLengths(0.3,5.33421,9.55249)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID147.collider)
level02.colliders.C_Parent_Tile_21109ID148 = {}
level02.colliders.C_Parent_Tile_21109ID148.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID148.collider:SetOffset(343,37.0883,130)
level02.colliders.C_Parent_Tile_21109ID148.collider:SetZAxis(0.573462,0,0.819232)
level02.colliders.C_Parent_Tile_21109ID148.collider:SetHalfLengths(0.3,6.78247,12.2066)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID148.collider)
level02.colliders.C_Parent_Tile_21109ID149 = {}
level02.colliders.C_Parent_Tile_21109ID149.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID149.collider:SetOffset(227.5,60.2604,253.5)
level02.colliders.C_Parent_Tile_21109ID149.collider:SetZAxis(0.993884,0,-0.110432)
level02.colliders.C_Parent_Tile_21109ID149.collider:SetHalfLengths(0.3,5.1114,4.52769)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID149.collider)
level02.colliders.C_Parent_Tile_21109ID150 = {}
level02.colliders.C_Parent_Tile_21109ID150.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID150.collider:SetOffset(236.5,60.149,252)
level02.colliders.C_Parent_Tile_21109ID150.collider:SetZAxis(0.976187,0,-0.21693)
level02.colliders.C_Parent_Tile_21109ID150.collider:SetHalfLengths(0.3,5.22281,4.60977)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID150.collider)
level02.colliders.C_Parent_Tile_21109ID151 = {}
level02.colliders.C_Parent_Tile_21109ID151.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID151.collider:SetOffset(246.5,60.3718,250)
level02.colliders.C_Parent_Tile_21109ID151.collider:SetZAxis(0.98387,0,-0.178885)
level02.colliders.C_Parent_Tile_21109ID151.collider:SetHalfLengths(0.3,5.44562,5.59017)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID151.collider)
level02.colliders.C_Parent_Tile_21109ID152 = {}
level02.colliders.C_Parent_Tile_21109ID152.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID152.collider:SetOffset(259,57.8095,232)
level02.colliders.C_Parent_Tile_21109ID152.collider:SetZAxis(0.992278,0,0.124035)
level02.colliders.C_Parent_Tile_21109ID152.collider:SetHalfLengths(0.3,6.00264,8.06226)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID152.collider)
level02.colliders.C_Parent_Tile_21109ID153 = {}
level02.colliders.C_Parent_Tile_21109ID153.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID153.collider:SetOffset(277,56.8068,233.5)
level02.colliders.C_Parent_Tile_21109ID153.collider:SetZAxis(0.998752,0,0.0499376)
level02.colliders.C_Parent_Tile_21109ID153.collider:SetHalfLengths(0.3,5.77983,10.0125)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID153.collider)
level02.colliders.C_Parent_Tile_21109ID154 = {}
level02.colliders.C_Parent_Tile_21109ID154.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID154.collider:SetOffset(330,35.64,149.5)
level02.colliders.C_Parent_Tile_21109ID154.collider:SetZAxis(-0.524097,0,-0.851658)
level02.colliders.C_Parent_Tile_21109ID154.collider:SetHalfLengths(0.3,5.89124,7.63217)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID154.collider)
level02.colliders.C_Parent_Tile_21109ID155 = {}
level02.colliders.C_Parent_Tile_21109ID155.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID155.collider:SetOffset(319.5,34.7488,138.5)
level02.colliders.C_Parent_Tile_21109ID155.collider:SetZAxis(-0.822192,0,-0.56921)
level02.colliders.C_Parent_Tile_21109ID155.collider:SetHalfLengths(0.3,5.55702,7.90569)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID155.collider)
level02.colliders.C_Parent_Tile_21109ID156 = {}
level02.colliders.C_Parent_Tile_21109ID156.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID156.collider:SetOffset(328.75,41.0313,113.313)
level02.colliders.C_Parent_Tile_21109ID156.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID156.collider:SetHalfLengths(1.91668,5.26999,2.05246)
level02.colliders.C_Parent_Tile_21109ID146.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID156.collider)
level02.colliders.C_Parent_Tile_21109ID157 = {}
level02.colliders.C_Parent_Tile_21109ID157.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID157.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID157.collider:SetMinPos(251.98,30.64,139.746)
level02.colliders.C_Parent_Tile_21109ID157.collider:SetMaxPos(358.159,67.2657,252.3)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID157.collider)
level02.colliders.C_Parent_Tile_21109ID158 = {}
level02.colliders.C_Parent_Tile_21109ID158.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID158.collider:SetOffset(354,38.8707,142.5)
level02.colliders.C_Parent_Tile_21109ID158.collider:SetZAxis(0.847998,0,0.529999)
level02.colliders.C_Parent_Tile_21109ID158.collider:SetHalfLengths(0.3,5.22281,4.71699)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID158.collider)
level02.colliders.C_Parent_Tile_21109ID159 = {}
level02.colliders.C_Parent_Tile_21109ID159.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID159.collider:SetOffset(259.5,59.9262,249.5)
level02.colliders.C_Parent_Tile_21109ID159.collider:SetZAxis(0.997785,0,0.066519)
level02.colliders.C_Parent_Tile_21109ID159.collider:SetHalfLengths(0.3,5.1114,7.51665)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID159.collider)
level02.colliders.C_Parent_Tile_21109ID160 = {}
level02.colliders.C_Parent_Tile_21109ID160.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID160.collider:SetOffset(274,60.0376,251)
level02.colliders.C_Parent_Tile_21109ID160.collider:SetZAxis(0.98995,0,0.141421)
level02.colliders.C_Parent_Tile_21109ID160.collider:SetHalfLengths(0.3,5.33421,7.07107)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID160.collider)
level02.colliders.C_Parent_Tile_21109ID161 = {}
level02.colliders.C_Parent_Tile_21109ID161.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID161.collider:SetOffset(287.5,59.7034,252)
level02.colliders.C_Parent_Tile_21109ID161.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_21109ID161.collider:SetHalfLengths(0.3,6.11405,6.5)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID161.collider)
level02.colliders.C_Parent_Tile_21109ID162 = {}
level02.colliders.C_Parent_Tile_21109ID162.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID162.collider:SetOffset(295,56.027,232)
level02.colliders.C_Parent_Tile_21109ID162.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_21109ID162.collider:SetHalfLengths(0.3,11.2386,8.24621)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID162.collider)
level02.colliders.C_Parent_Tile_21109ID163 = {}
level02.colliders.C_Parent_Tile_21109ID163.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID163.collider:SetOffset(350,37.0883,173)
level02.colliders.C_Parent_Tile_21109ID163.collider:SetZAxis(-0.514496,0,-0.857493)
level02.colliders.C_Parent_Tile_21109ID163.collider:SetHalfLengths(0.3,5.89124,5.83095)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID163.collider)
level02.colliders.C_Parent_Tile_21109ID164 = {}
level02.colliders.C_Parent_Tile_21109ID164.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID164.collider:SetOffset(340.5,36.197,162)
level02.colliders.C_Parent_Tile_21109ID164.collider:SetZAxis(-0.734803,0,-0.67828)
level02.colliders.C_Parent_Tile_21109ID164.collider:SetHalfLengths(0.3,5.55702,8.8459)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID164.collider)
level02.colliders.C_Parent_Tile_21109ID165 = {}
level02.colliders.C_Parent_Tile_21109ID165.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID165.collider:SetOffset(339.5,40.3125,156.5)
level02.colliders.C_Parent_Tile_21109ID165.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID165.collider:SetHalfLengths(2.03198,5.81552,1.96803)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID165.collider)
level02.colliders.C_Parent_Tile_21109ID166 = {}
level02.colliders.C_Parent_Tile_21109ID166.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID166.collider:SetOffset(320,48.7857,232)
level02.colliders.C_Parent_Tile_21109ID166.collider:SetZAxis(-0.948683,0,0.316228)
level02.colliders.C_Parent_Tile_21109ID166.collider:SetHalfLengths(0.3,7.4509,12.6491)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID166.collider)
level02.colliders.C_Parent_Tile_21109ID167 = {}
level02.colliders.C_Parent_Tile_21109ID167.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID167.collider:SetOffset(305.5,51.2366,233.5)
level02.colliders.C_Parent_Tile_21109ID167.collider:SetZAxis(-0.707107,0,-0.707107)
level02.colliders.C_Parent_Tile_21109ID167.collider:SetHalfLengths(0.3,6.00264,3.53553)
level02.colliders.C_Parent_Tile_21109ID157.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID167.collider)
level02.colliders.C_Parent_Tile_21109ID168 = {}
level02.colliders.C_Parent_Tile_21109ID168.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID168.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID168.collider:SetMinPos(293.927,32.0883,144.706)
level02.colliders.C_Parent_Tile_21109ID168.collider:SetMaxPos(376,67.0429,256.312)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID168.collider)
level02.colliders.C_Parent_Tile_21109ID169 = {}
level02.colliders.C_Parent_Tile_21109ID169.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID169.collider:SetOffset(363,38.6479,146)
level02.colliders.C_Parent_Tile_21109ID169.collider:SetZAxis(0.980581,0,0.196116)
level02.colliders.C_Parent_Tile_21109ID169.collider:SetHalfLengths(0.3,5.33421,5.09902)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID169.collider)
level02.colliders.C_Parent_Tile_21109ID170 = {}
level02.colliders.C_Parent_Tile_21109ID170.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID170.collider:SetOffset(372,38.3137,147)
level02.colliders.C_Parent_Tile_21109ID170.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_21109ID170.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID170.collider)
level02.colliders.C_Parent_Tile_21109ID171 = {}
level02.colliders.C_Parent_Tile_21109ID171.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID171.collider:SetOffset(296,58.5893,252.5)
level02.colliders.C_Parent_Tile_21109ID171.collider:SetZAxis(0.970143,0,0.242536)
level02.colliders.C_Parent_Tile_21109ID171.collider:SetHalfLengths(0.3,8.45354,2.06155)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID171.collider)
level02.colliders.C_Parent_Tile_21109ID172 = {}
level02.colliders.C_Parent_Tile_21109ID172.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID172.collider:SetOffset(299,55.1358,254)
level02.colliders.C_Parent_Tile_21109ID172.collider:SetZAxis(0.707107,0,0.707107)
level02.colliders.C_Parent_Tile_21109ID172.collider:SetHalfLengths(0.3,5.1114,1.41421)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID172.collider)
level02.colliders.C_Parent_Tile_21109ID173 = {}
level02.colliders.C_Parent_Tile_21109ID173.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID173.collider:SetOffset(307,55.2472,255)
level02.colliders.C_Parent_Tile_21109ID173.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_21109ID173.collider:SetHalfLengths(0.3,9.01056,7)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID173.collider)
level02.colliders.C_Parent_Tile_21109ID174 = {}
level02.colliders.C_Parent_Tile_21109ID174.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID174.collider:SetOffset(339,48.1173,215.5)
level02.colliders.C_Parent_Tile_21109ID174.collider:SetZAxis(0.682318,0,-0.731055)
level02.colliders.C_Parent_Tile_21109ID174.collider:SetHalfLengths(0.3,12.0185,10.2591)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID174.collider)
level02.colliders.C_Parent_Tile_21109ID175 = {}
level02.colliders.C_Parent_Tile_21109ID175.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID175.collider:SetOffset(350,39.4277,194)
level02.colliders.C_Parent_Tile_21109ID175.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_21109ID175.collider:SetHalfLengths(0.3,6.11404,5)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID175.collider)
level02.colliders.C_Parent_Tile_21109ID176 = {}
level02.colliders.C_Parent_Tile_21109ID176.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID176.collider:SetOffset(351.5,38.3137,183.5)
level02.colliders.C_Parent_Tile_21109ID176.collider:SetZAxis(0.263117,0,-0.964764)
level02.colliders.C_Parent_Tile_21109ID176.collider:SetHalfLengths(0.3,6.22545,5.70088)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID176.collider)
level02.colliders.C_Parent_Tile_21109ID177 = {}
level02.colliders.C_Parent_Tile_21109ID177.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID177.collider:SetOffset(323.5,51.6822,242)
level02.colliders.C_Parent_Tile_21109ID177.collider:SetZAxis(0.944497,0,-0.328521)
level02.colliders.C_Parent_Tile_21109ID177.collider:SetHalfLengths(0.3,5.89124,12.1758)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID177.collider)
level02.colliders.C_Parent_Tile_21109ID178 = {}
level02.colliders.C_Parent_Tile_21109ID178.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID178.collider:SetOffset(305.672,57.5464,253.254)
level02.colliders.C_Parent_Tile_21109ID178.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID178.collider:SetHalfLengths(3.31612,6.90839,3.05737)
level02.colliders.C_Parent_Tile_21109ID168.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID178.collider)
level02.colliders.C_Parent_Tile_21109ID179 = {}
level02.colliders.C_Parent_Tile_21109ID179.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID179.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID179.collider:SetMinPos(312.709,31.0856,146.7)
level02.colliders.C_Parent_Tile_21109ID179.collider:SetMaxPos(384.073,58.4647,255)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID179.collider)
level02.colliders.C_Parent_Tile_21109ID180 = {}
level02.colliders.C_Parent_Tile_21109ID180.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID180.collider:SetOffset(380,37.1997,147)
level02.colliders.C_Parent_Tile_21109ID180.collider:SetZAxis(1,0,0)
level02.colliders.C_Parent_Tile_21109ID180.collider:SetHalfLengths(0.3,6.11404,4)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID180.collider)
level02.colliders.C_Parent_Tile_21109ID181 = {}
level02.colliders.C_Parent_Tile_21109ID181.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID181.collider:SetOffset(314,51.2366,252.5)
level02.colliders.C_Parent_Tile_21109ID181.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_21109ID181.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID181.collider)
level02.colliders.C_Parent_Tile_21109ID182 = {}
level02.colliders.C_Parent_Tile_21109ID182.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID182.collider:SetOffset(313.5,50.5682,248)
level02.colliders.C_Parent_Tile_21109ID182.collider:SetZAxis(-0.242536,0,-0.970143)
level02.colliders.C_Parent_Tile_21109ID182.collider:SetHalfLengths(0.3,5.44562,2.06155)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID182.collider)
level02.colliders.C_Parent_Tile_21109ID183 = {}
level02.colliders.C_Parent_Tile_21109ID183.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID183.collider:SetOffset(373.5,46.4462,189)
level02.colliders.C_Parent_Tile_21109ID183.collider:SetZAxis(-0.0333148,0,-0.999445)
level02.colliders.C_Parent_Tile_21109ID183.collider:SetHalfLengths(0.3,12.0185,15.0083)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID183.collider)
level02.colliders.C_Parent_Tile_21109ID184 = {}
level02.colliders.C_Parent_Tile_21109ID184.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID184.collider:SetOffset(374,39.4277,170.5)
level02.colliders.C_Parent_Tile_21109ID184.collider:SetZAxis(0.274721,0,-0.961524)
level02.colliders.C_Parent_Tile_21109ID184.collider:SetHalfLengths(0.3,5.55702,3.64005)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID184.collider)
level02.colliders.C_Parent_Tile_21109ID185 = {}
level02.colliders.C_Parent_Tile_21109ID185.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID185.collider:SetOffset(377.5,39.9848,162.5)
level02.colliders.C_Parent_Tile_21109ID185.collider:SetZAxis(0.485643,0,-0.874157)
level02.colliders.C_Parent_Tile_21109ID185.collider:SetHalfLengths(0.3,7.89651,5.14782)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID185.collider)
level02.colliders.C_Parent_Tile_21109ID186 = {}
level02.colliders.C_Parent_Tile_21109ID186.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID186.collider:SetOffset(382,37.0883,157.5)
level02.colliders.C_Parent_Tile_21109ID186.collider:SetZAxis(0.970143,0,-0.242536)
level02.colliders.C_Parent_Tile_21109ID186.collider:SetHalfLengths(0.3,5.1114,2.06155)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID186.collider)
level02.colliders.C_Parent_Tile_21109ID187 = {}
level02.colliders.C_Parent_Tile_21109ID187.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID187.collider:SetOffset(348,41.0988,203.5)
level02.colliders.C_Parent_Tile_21109ID187.collider:SetZAxis(0.406139,0,-0.913812)
level02.colliders.C_Parent_Tile_21109ID187.collider:SetHalfLengths(0.3,6.67107,4.92443)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID187.collider)
level02.colliders.C_Parent_Tile_21109ID188 = {}
level02.colliders.C_Parent_Tile_21109ID188.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID188.collider:SetOffset(332,48.7857,225.5)
level02.colliders.C_Parent_Tile_21109ID188.collider:SetZAxis(0,0,-1)
level02.colliders.C_Parent_Tile_21109ID188.collider:SetHalfLengths(0.3,5.66843,2.5)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID188.collider)
level02.colliders.C_Parent_Tile_21109ID189 = {}
level02.colliders.C_Parent_Tile_21109ID189.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID189.collider:SetOffset(346.368,41.1634,203.707)
level02.colliders.C_Parent_Tile_21109ID189.collider:SetZAxis(-0.107927,0,-0.994159)
level02.colliders.C_Parent_Tile_21109ID189.collider:SetHalfLengths(2.47509,7.09833,2.50959)
level02.colliders.C_Parent_Tile_21109ID179.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID189.collider)
level02.colliders.C_Parent_Tile_21109ID190 = {}
level02.colliders.C_Parent_Tile_21109ID190.collider = AABBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID190.collider:SetOffset(0,0,0)
level02.colliders.C_Parent_Tile_21109ID190.collider:SetMinPos(334.709,37.5997,183.418)
level02.colliders.C_Parent_Tile_21109ID190.collider:SetMaxPos(374.276,65.4832,255.171)
level02.colliders.C_Parent_Tile_21109ID112.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID190.collider)
level02.colliders.C_Parent_Tile_21109ID191 = {}
level02.colliders.C_Parent_Tile_21109ID191.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID191.collider:SetOffset(340.5,55.47,248.5)
level02.colliders.C_Parent_Tile_21109ID191.collider:SetZAxis(-0.56921,0,-0.822192)
level02.colliders.C_Parent_Tile_21109ID191.collider:SetHalfLengths(0.3,9.12196,7.90569)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID191.collider)
level02.colliders.C_Parent_Tile_21109ID192 = {}
level02.colliders.C_Parent_Tile_21109ID192.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID192.collider:SetOffset(346.5,55.47,250.5)
level02.colliders.C_Parent_Tile_21109ID192.collider:SetZAxis(0.316228,0,-0.948683)
level02.colliders.C_Parent_Tile_21109ID192.collider:SetHalfLengths(0.3,6.55966,4.74342)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID192.collider)
level02.colliders.C_Parent_Tile_21109ID193 = {}
level02.colliders.C_Parent_Tile_21109ID193.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID193.collider:SetOffset(353,57.0297,240.5)
level02.colliders.C_Parent_Tile_21109ID193.collider:SetZAxis(0.672673,0,-0.73994)
level02.colliders.C_Parent_Tile_21109ID193.collider:SetHalfLengths(0.3,8.45354,7.43303)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID193.collider)
level02.colliders.C_Parent_Tile_21109ID194 = {}
level02.colliders.C_Parent_Tile_21109ID194.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID194.collider:SetOffset(363,53.5761,226.5)
level02.colliders.C_Parent_Tile_21109ID194.collider:SetZAxis(0.50702,0,-0.861934)
level02.colliders.C_Parent_Tile_21109ID194.collider:SetHalfLengths(0.3,9.67899,9.86154)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID194.collider)
level02.colliders.C_Parent_Tile_21109ID195 = {}
level02.colliders.C_Parent_Tile_21109ID195.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID195.collider:SetOffset(371,48.8971,211)
level02.colliders.C_Parent_Tile_21109ID195.collider:SetZAxis(0.393919,0,-0.919145)
level02.colliders.C_Parent_Tile_21109ID195.collider:SetHalfLengths(0.3,7.4509,7.61577)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID195.collider)
level02.colliders.C_Parent_Tile_21109ID196 = {}
level02.colliders.C_Parent_Tile_21109ID196.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID196.collider:SetOffset(370.079,42.4331,185.415)
level02.colliders.C_Parent_Tile_21109ID196.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID196.collider:SetHalfLengths(1.88068,4.83337,1.99714)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID196.collider)
level02.colliders.C_Parent_Tile_21109ID197 = {}
level02.colliders.C_Parent_Tile_21109ID197.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID197.collider:SetOffset(365.671,47.676,214.229)
level02.colliders.C_Parent_Tile_21109ID197.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID197.collider:SetHalfLengths(1.85948,4.92038,1.9785)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID197.collider)
level02.colliders.C_Parent_Tile_21109ID198 = {}
level02.colliders.C_Parent_Tile_21109ID198.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID198.collider:SetOffset(354.858,50.9688,226.742)
level02.colliders.C_Parent_Tile_21109ID198.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID198.collider:SetHalfLengths(1.75,4,1.75)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID198.collider)
level02.colliders.C_Parent_Tile_21109ID199 = {}
level02.colliders.C_Parent_Tile_21109ID199.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID199.collider:SetOffset(347.526,56,240.375)
level02.colliders.C_Parent_Tile_21109ID199.collider:SetZAxis(0,0,1)
level02.colliders.C_Parent_Tile_21109ID199.collider:SetHalfLengths(2.14269,5.42911,1.96576)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID199.collider)
level02.colliders.C_Parent_Tile_21109ID200 = {}
level02.colliders.C_Parent_Tile_21109ID200.collider = OBBCollider.Create(-1)
level02.colliders.C_Parent_Tile_21109ID200.collider:SetOffset(335.5,50.791,240)
level02.colliders.C_Parent_Tile_21109ID200.collider:SetZAxis(0.242536,0,0.970143)
level02.colliders.C_Parent_Tile_21109ID200.collider:SetHalfLengths(0.3,5.55702,2.06155)
level02.colliders.C_Parent_Tile_21109ID190.collider:AddChild(level02.colliders.C_Parent_Tile_21109ID200.collider)
CollisionHandler.AddAABB(level02.colliders.C_Parent_Tile_21109ID.collider, 3)
level02.colliders.C_Parent_Tile_21109ID1 = nil
level02.colliders.C_Parent_Tile_21109ID2 = nil
level02.colliders.C_Parent_Tile_21109ID3 = nil
level02.colliders.C_Parent_Tile_21109ID4 = nil
level02.colliders.C_Parent_Tile_21109ID5 = nil
level02.colliders.C_Parent_Tile_21109ID6 = nil
level02.colliders.C_Parent_Tile_21109ID7 = nil
level02.colliders.C_Parent_Tile_21109ID8 = nil
level02.colliders.C_Parent_Tile_21109ID9 = nil
level02.colliders.C_Parent_Tile_21109ID10 = nil
level02.colliders.C_Parent_Tile_21109ID11 = nil
level02.colliders.C_Parent_Tile_21109ID12 = nil
level02.colliders.C_Parent_Tile_21109ID13 = nil
level02.colliders.C_Parent_Tile_21109ID14 = nil
level02.colliders.C_Parent_Tile_21109ID15 = nil
level02.colliders.C_Parent_Tile_21109ID16 = nil
level02.colliders.C_Parent_Tile_21109ID17 = nil
level02.colliders.C_Parent_Tile_21109ID18 = nil
level02.colliders.C_Parent_Tile_21109ID19 = nil
level02.colliders.C_Parent_Tile_21109ID20 = nil
level02.colliders.C_Parent_Tile_21109ID21 = nil
level02.colliders.C_Parent_Tile_21109ID22 = nil
level02.colliders.C_Parent_Tile_21109ID23 = nil
level02.colliders.C_Parent_Tile_21109ID24 = nil
level02.colliders.C_Parent_Tile_21109ID25 = nil
level02.colliders.C_Parent_Tile_21109ID26 = nil
level02.colliders.C_Parent_Tile_21109ID27 = nil
level02.colliders.C_Parent_Tile_21109ID28 = nil
level02.colliders.C_Parent_Tile_21109ID29 = nil
level02.colliders.C_Parent_Tile_21109ID30 = nil
level02.colliders.C_Parent_Tile_21109ID31 = nil
level02.colliders.C_Parent_Tile_21109ID32 = nil
level02.colliders.C_Parent_Tile_21109ID33 = nil
level02.colliders.C_Parent_Tile_21109ID34 = nil
level02.colliders.C_Parent_Tile_21109ID35 = nil
level02.colliders.C_Parent_Tile_21109ID36 = nil
level02.colliders.C_Parent_Tile_21109ID37 = nil
level02.colliders.C_Parent_Tile_21109ID38 = nil
level02.colliders.C_Parent_Tile_21109ID39 = nil
level02.colliders.C_Parent_Tile_21109ID40 = nil
level02.colliders.C_Parent_Tile_21109ID41 = nil
level02.colliders.C_Parent_Tile_21109ID42 = nil
level02.colliders.C_Parent_Tile_21109ID43 = nil
level02.colliders.C_Parent_Tile_21109ID44 = nil
level02.colliders.C_Parent_Tile_21109ID45 = nil
level02.colliders.C_Parent_Tile_21109ID46 = nil
level02.colliders.C_Parent_Tile_21109ID47 = nil
level02.colliders.C_Parent_Tile_21109ID48 = nil
level02.colliders.C_Parent_Tile_21109ID49 = nil
level02.colliders.C_Parent_Tile_21109ID50 = nil
level02.colliders.C_Parent_Tile_21109ID51 = nil
level02.colliders.C_Parent_Tile_21109ID52 = nil
level02.colliders.C_Parent_Tile_21109ID53 = nil
level02.colliders.C_Parent_Tile_21109ID54 = nil
level02.colliders.C_Parent_Tile_21109ID55 = nil
level02.colliders.C_Parent_Tile_21109ID56 = nil
level02.colliders.C_Parent_Tile_21109ID57 = nil
level02.colliders.C_Parent_Tile_21109ID58 = nil
level02.colliders.C_Parent_Tile_21109ID59 = nil
level02.colliders.C_Parent_Tile_21109ID60 = nil
level02.colliders.C_Parent_Tile_21109ID61 = nil
level02.colliders.C_Parent_Tile_21109ID62 = nil
level02.colliders.C_Parent_Tile_21109ID63 = nil
level02.colliders.C_Parent_Tile_21109ID64 = nil
level02.colliders.C_Parent_Tile_21109ID65 = nil
level02.colliders.C_Parent_Tile_21109ID66 = nil
level02.colliders.C_Parent_Tile_21109ID67 = nil
level02.colliders.C_Parent_Tile_21109ID68 = nil
level02.colliders.C_Parent_Tile_21109ID69 = nil
level02.colliders.C_Parent_Tile_21109ID70 = nil
level02.colliders.C_Parent_Tile_21109ID71 = nil
level02.colliders.C_Parent_Tile_21109ID72 = nil
level02.colliders.C_Parent_Tile_21109ID73 = nil
level02.colliders.C_Parent_Tile_21109ID74 = nil
level02.colliders.C_Parent_Tile_21109ID75 = nil
level02.colliders.C_Parent_Tile_21109ID76 = nil
level02.colliders.C_Parent_Tile_21109ID77 = nil
level02.colliders.C_Parent_Tile_21109ID78 = nil
level02.colliders.C_Parent_Tile_21109ID79 = nil
level02.colliders.C_Parent_Tile_21109ID80 = nil
level02.colliders.C_Parent_Tile_21109ID81 = nil
level02.colliders.C_Parent_Tile_21109ID82 = nil
level02.colliders.C_Parent_Tile_21109ID83 = nil
level02.colliders.C_Parent_Tile_21109ID84 = nil
level02.colliders.C_Parent_Tile_21109ID85 = nil
level02.colliders.C_Parent_Tile_21109ID86 = nil
level02.colliders.C_Parent_Tile_21109ID87 = nil
level02.colliders.C_Parent_Tile_21109ID88 = nil
level02.colliders.C_Parent_Tile_21109ID89 = nil
level02.colliders.C_Parent_Tile_21109ID90 = nil
level02.colliders.C_Parent_Tile_21109ID91 = nil
level02.colliders.C_Parent_Tile_21109ID92 = nil
level02.colliders.C_Parent_Tile_21109ID93 = nil
level02.colliders.C_Parent_Tile_21109ID94 = nil
level02.colliders.C_Parent_Tile_21109ID95 = nil
level02.colliders.C_Parent_Tile_21109ID96 = nil
level02.colliders.C_Parent_Tile_21109ID97 = nil
level02.colliders.C_Parent_Tile_21109ID98 = nil
level02.colliders.C_Parent_Tile_21109ID99 = nil
level02.colliders.C_Parent_Tile_21109ID100 = nil
level02.colliders.C_Parent_Tile_21109ID101 = nil
level02.colliders.C_Parent_Tile_21109ID102 = nil
level02.colliders.C_Parent_Tile_21109ID103 = nil
level02.colliders.C_Parent_Tile_21109ID104 = nil
level02.colliders.C_Parent_Tile_21109ID105 = nil
level02.colliders.C_Parent_Tile_21109ID106 = nil
level02.colliders.C_Parent_Tile_21109ID107 = nil
level02.colliders.C_Parent_Tile_21109ID108 = nil
level02.colliders.C_Parent_Tile_21109ID109 = nil
level02.colliders.C_Parent_Tile_21109ID110 = nil
level02.colliders.C_Parent_Tile_21109ID111 = nil
level02.colliders.C_Parent_Tile_21109ID112 = nil
level02.colliders.C_Parent_Tile_21109ID113 = nil
level02.colliders.C_Parent_Tile_21109ID114 = nil
level02.colliders.C_Parent_Tile_21109ID115 = nil
level02.colliders.C_Parent_Tile_21109ID116 = nil
level02.colliders.C_Parent_Tile_21109ID117 = nil
level02.colliders.C_Parent_Tile_21109ID118 = nil
level02.colliders.C_Parent_Tile_21109ID119 = nil
level02.colliders.C_Parent_Tile_21109ID120 = nil
level02.colliders.C_Parent_Tile_21109ID121 = nil
level02.colliders.C_Parent_Tile_21109ID122 = nil
level02.colliders.C_Parent_Tile_21109ID123 = nil
level02.colliders.C_Parent_Tile_21109ID124 = nil
level02.colliders.C_Parent_Tile_21109ID125 = nil
level02.colliders.C_Parent_Tile_21109ID126 = nil
level02.colliders.C_Parent_Tile_21109ID127 = nil
level02.colliders.C_Parent_Tile_21109ID128 = nil
level02.colliders.C_Parent_Tile_21109ID129 = nil
level02.colliders.C_Parent_Tile_21109ID130 = nil
level02.colliders.C_Parent_Tile_21109ID131 = nil
level02.colliders.C_Parent_Tile_21109ID132 = nil
level02.colliders.C_Parent_Tile_21109ID133 = nil
level02.colliders.C_Parent_Tile_21109ID134 = nil
level02.colliders.C_Parent_Tile_21109ID135 = nil
level02.colliders.C_Parent_Tile_21109ID136 = nil
level02.colliders.C_Parent_Tile_21109ID137 = nil
level02.colliders.C_Parent_Tile_21109ID138 = nil
level02.colliders.C_Parent_Tile_21109ID139 = nil
level02.colliders.C_Parent_Tile_21109ID140 = nil
level02.colliders.C_Parent_Tile_21109ID141 = nil
level02.colliders.C_Parent_Tile_21109ID142 = nil
level02.colliders.C_Parent_Tile_21109ID143 = nil
level02.colliders.C_Parent_Tile_21109ID144 = nil
level02.colliders.C_Parent_Tile_21109ID145 = nil
level02.colliders.C_Parent_Tile_21109ID146 = nil
level02.colliders.C_Parent_Tile_21109ID147 = nil
level02.colliders.C_Parent_Tile_21109ID148 = nil
level02.colliders.C_Parent_Tile_21109ID149 = nil
level02.colliders.C_Parent_Tile_21109ID150 = nil
level02.colliders.C_Parent_Tile_21109ID151 = nil
level02.colliders.C_Parent_Tile_21109ID152 = nil
level02.colliders.C_Parent_Tile_21109ID153 = nil
level02.colliders.C_Parent_Tile_21109ID154 = nil
level02.colliders.C_Parent_Tile_21109ID155 = nil
level02.colliders.C_Parent_Tile_21109ID156 = nil
level02.colliders.C_Parent_Tile_21109ID157 = nil
level02.colliders.C_Parent_Tile_21109ID158 = nil
level02.colliders.C_Parent_Tile_21109ID159 = nil
level02.colliders.C_Parent_Tile_21109ID160 = nil
level02.colliders.C_Parent_Tile_21109ID161 = nil
level02.colliders.C_Parent_Tile_21109ID162 = nil
level02.colliders.C_Parent_Tile_21109ID163 = nil
level02.colliders.C_Parent_Tile_21109ID164 = nil
level02.colliders.C_Parent_Tile_21109ID165 = nil
level02.colliders.C_Parent_Tile_21109ID166 = nil
level02.colliders.C_Parent_Tile_21109ID167 = nil
level02.colliders.C_Parent_Tile_21109ID168 = nil
level02.colliders.C_Parent_Tile_21109ID169 = nil
level02.colliders.C_Parent_Tile_21109ID170 = nil
level02.colliders.C_Parent_Tile_21109ID171 = nil
level02.colliders.C_Parent_Tile_21109ID172 = nil
level02.colliders.C_Parent_Tile_21109ID173 = nil
level02.colliders.C_Parent_Tile_21109ID174 = nil
level02.colliders.C_Parent_Tile_21109ID175 = nil
level02.colliders.C_Parent_Tile_21109ID176 = nil
level02.colliders.C_Parent_Tile_21109ID177 = nil
level02.colliders.C_Parent_Tile_21109ID178 = nil
level02.colliders.C_Parent_Tile_21109ID179 = nil
level02.colliders.C_Parent_Tile_21109ID180 = nil
level02.colliders.C_Parent_Tile_21109ID181 = nil
level02.colliders.C_Parent_Tile_21109ID182 = nil
level02.colliders.C_Parent_Tile_21109ID183 = nil
level02.colliders.C_Parent_Tile_21109ID184 = nil
level02.colliders.C_Parent_Tile_21109ID185 = nil
level02.colliders.C_Parent_Tile_21109ID186 = nil
level02.colliders.C_Parent_Tile_21109ID187 = nil
level02.colliders.C_Parent_Tile_21109ID188 = nil
level02.colliders.C_Parent_Tile_21109ID189 = nil
level02.colliders.C_Parent_Tile_21109ID190 = nil
level02.colliders.C_Parent_Tile_21109ID191 = nil
level02.colliders.C_Parent_Tile_21109ID192 = nil
level02.colliders.C_Parent_Tile_21109ID193 = nil
level02.colliders.C_Parent_Tile_21109ID194 = nil
level02.colliders.C_Parent_Tile_21109ID195 = nil
level02.colliders.C_Parent_Tile_21109ID196 = nil
level02.colliders.C_Parent_Tile_21109ID197 = nil
level02.colliders.C_Parent_Tile_21109ID198 = nil
level02.colliders.C_Parent_Tile_21109ID199 = nil
level02.colliders.C_Parent_Tile_21109ID200 = nil
end
level02.unload = function()
level02.props.tile24ID = nil
Gear.UnbindInstance(level02.props.t2s120ID.transformID)
level02.props.t2s120ID = nil
Gear.UnbindInstance(level02.props.t2s221ID.transformID)
level02.props.t2s221ID = nil
Gear.UnbindInstance(level02.props.t2s322ID.transformID)
level02.props.t2s322ID = nil
Gear.UnbindInstance(level02.props.t2s423ID.transformID)
level02.props.t2s423ID = nil
Gear.UnbindInstance(level02.props.t2s524ID.transformID)
level02.props.t2s524ID = nil
Gear.UnbindInstance(level02.props.t2s625ID.transformID)
level02.props.t2s625ID = nil
Gear.UnbindInstance(level02.props.t2s726ID.transformID)
level02.props.t2s726ID = nil
Gear.UnbindInstance(level02.props.t2s827ID.transformID)
level02.props.t2s827ID = nil
Gear.UnbindInstance(level02.props.t2s928ID.transformID)
level02.props.t2s928ID = nil
Gear.UnbindInstance(level02.props.t2s1231ID.transformID)
level02.props.t2s1231ID = nil
Gear.UnbindInstance(level02.props.t2s1332ID.transformID)
level02.props.t2s1332ID = nil
Gear.UnbindInstance(level02.props.t2s1433ID.transformID)
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
level02.props.PineTree_Collider381ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider1382ID.transformID)
level02.props.PineTree_Collider1382ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider2383ID.transformID)
level02.props.PineTree_Collider2383ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider1384ID.transformID)
level02.props.PineTree_NoCollider1384ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider11385ID.transformID)
level02.props.PineTree_NoCollider11385ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider12386ID.transformID)
level02.props.PineTree_NoCollider12386ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider13387ID.transformID)
level02.props.PineTree_NoCollider13387ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider14388ID.transformID)
level02.props.PineTree_NoCollider14388ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider15389ID.transformID)
level02.props.PineTree_NoCollider15389ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider16390ID.transformID)
level02.props.PineTree_NoCollider16390ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider17391ID.transformID)
level02.props.PineTree_NoCollider17391ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider18392ID.transformID)
level02.props.PineTree_NoCollider18392ID = nil
Gear.UnbindInstance(level02.props.PineTree_NoCollider19393ID.transformID)
level02.props.PineTree_NoCollider19393ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider4394ID.transformID)
level02.props.OakTree_Collider4394ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider41395ID.transformID)
level02.props.OakTree_Collider41395ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider42396ID.transformID)
level02.props.OakTree_Collider42396ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider43397ID.transformID)
level02.props.OakTree_Collider43397ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider44398ID.transformID)
level02.props.OakTree_Collider44398ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider45399ID.transformID)
level02.props.OakTree_Collider45399ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider46400ID.transformID)
level02.props.OakTree_Collider46400ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider1401ID.transformID)
level02.props.OakTree_NoCollider1401ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider15402ID.transformID)
level02.props.OakTree_NoCollider15402ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider111403ID.transformID)
level02.props.OakTree_NoCollider111403ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider112404ID.transformID)
level02.props.OakTree_NoCollider112404ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider113405ID.transformID)
level02.props.OakTree_NoCollider113405ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider114406ID.transformID)
level02.props.OakTree_NoCollider114406ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider115407ID.transformID)
level02.props.OakTree_NoCollider115407ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider116408ID.transformID)
level02.props.OakTree_NoCollider116408ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider117409ID.transformID)
level02.props.OakTree_NoCollider117409ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider118410ID.transformID)
level02.props.OakTree_NoCollider118410ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider119411ID.transformID)
level02.props.OakTree_NoCollider119411ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider120412ID.transformID)
level02.props.OakTree_NoCollider120412ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider121413ID.transformID)
level02.props.OakTree_NoCollider121413ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider122414ID.transformID)
level02.props.OakTree_NoCollider122414ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider123415ID.transformID)
level02.props.OakTree_NoCollider123415ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider124416ID.transformID)
level02.props.OakTree_NoCollider124416ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider125417ID.transformID)
level02.props.OakTree_NoCollider125417ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider126422ID.transformID)
level02.props.OakTree_NoCollider126422ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider127423ID.transformID)
level02.props.OakTree_NoCollider127423ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider128424ID.transformID)
level02.props.OakTree_NoCollider128424ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider129425ID.transformID)
level02.props.OakTree_NoCollider129425ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider130426ID.transformID)
level02.props.OakTree_NoCollider130426ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider131427ID.transformID)
level02.props.OakTree_NoCollider131427ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider132428ID.transformID)
level02.props.OakTree_NoCollider132428ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider133429ID.transformID)
level02.props.OakTree_NoCollider133429ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider134430ID.transformID)
level02.props.OakTree_NoCollider134430ID = nil
Gear.UnbindInstance(level02.props.OakTree_NoCollider135431ID.transformID)
level02.props.OakTree_NoCollider135431ID = nil
Gear.UnbindInstance(level02.props.Bridge1436ID.transformID)
level02.props.Bridge1436ID = nil
level02.colliders.Tile2_wallNr162437ID = nil
level02.colliders.Tile2_wallNr163438ID = nil
level02.colliders.Tile2_wallNr165439ID = nil
level02.colliders.Tile2_wallNr93440ID = nil
level02.colliders.Tile2_wallNr166441ID = nil
Gear.UnbindInstance(level02.props.Water672ID.transformID)
level02.props.Water672ID = nil
Gear.UnbindInstance(level02.props.House1694ID.transformID)
level02.props.House1694ID = nil
Gear.UnbindInstance(level02.props.Lantern4699ID.transformID)
level02.props.Lantern4699ID = nil
Gear.UnbindInstance(level02.props.Lantern7703ID.transformID)
level02.props.Lantern7703ID = nil
Gear.UnbindInstance(level02.props.Lantern8704ID.transformID)
level02.props.Lantern8704ID = nil
Gear.UnbindInstance(level02.props.Lantern9705ID.transformID)
level02.props.Lantern9705ID = nil
Gear.UnbindInstance(level02.props.Lantern10706ID.transformID)
level02.props.Lantern10706ID = nil
Gear.UnbindInstance(level02.props.Lantern11707ID.transformID)
level02.props.Lantern11707ID = nil
Gear.UnbindInstance(level02.props.PineTree_Collider3708ID.transformID)
level02.props.PineTree_Collider3708ID = nil
Gear.UnbindInstance(level02.props.OakTree_Collider47709ID.transformID)
level02.props.OakTree_Collider47709ID = nil



































level02.colliders.C_Parent_Tile_211089ID = nil
level02.colliders.C_Parent_Tile_221090ID = nil
level02.colliders.C_Parent_Tile_231091ID = nil
level02.colliders.C_Parent_Tile_241092ID = nil
level02.colliders.C_Parent_Tile_251093ID = nil
level02.colliders.C_Parent_Tile_261094ID = nil
level02.colliders.C_Parent_Tile_271095ID = nil
level02.colliders.C_Parent_Tile_281096ID = nil
level02.colliders.C_Parent_Tile_291097ID = nil
level02.colliders.C_Parent_Tile_2101098ID = nil
level02.colliders.C_Parent_Tile_2111099ID = nil
level02.colliders.C_Parent_Tile_2121100ID = nil
level02.colliders.C_Parent_Tile_2131101ID = nil
level02.colliders.C_Parent_Tile_2141102ID = nil
level02.colliders.C_Parent_Tile_2151103ID = nil
level02.colliders.C_Parent_Tile_2161104ID = nil
level02.colliders.C_Parent_Tile_2171105ID = nil
level02.colliders.C_Parent_Tile_2181106ID = nil
level02.colliders.C_Parent_Tile_2191107ID = nil
level02.colliders.C_Parent_Tile_2201108ID = nil
level02.colliders.C_Parent_Tile_21109ID = nil
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
level03.props.PineTree_NoCollider1101912ID = {}
level03.props.PineTree_NoCollider1101912ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1101912ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1101912ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1101912ID.transformID, {x=561.5, y=39.7188, z=305})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1101912ID.transformID, 2.4552, 2.4552, 2.4552)
Transform.SetRotation(level03.props.PineTree_NoCollider1101912ID.transformID, {x=-0.0161133, y=0.998047, z=0.0299377})
level03.props.PineTree_NoCollider1102913ID = {}
level03.props.PineTree_NoCollider1102913ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1102913ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1102913ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1102913ID.transformID, {x=555, y=39.6875, z=285.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1102913ID.transformID, 2.62787, 2.62787, 2.62787)
Transform.SetRotation(level03.props.PineTree_NoCollider1102913ID.transformID, {x=0.114624, y=0.959473, z=-0.164795})
level03.props.PineTree_NoCollider1103914ID = {}
level03.props.PineTree_NoCollider1103914ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1103914ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1103914ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1103914ID.transformID, {x=536, y=39.0625, z=303})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1103914ID.transformID, 2.38241, 2.38241, 2.38241)
Transform.SetRotation(level03.props.PineTree_NoCollider1103914ID.transformID, {x=-0.0400085, y=0.995605, z=0.0801392})
level03.props.PineTree_NoCollider1104915ID = {}
level03.props.PineTree_NoCollider1104915ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1104915ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1104915ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1104915ID.transformID, {x=564.5, y=39.0313, z=321})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1104915ID.transformID, 1.78561, 1.78561, 1.78561)
Transform.SetRotation(level03.props.PineTree_NoCollider1104915ID.transformID, {x=-0.0614319, y=0.992188, z=0.103333})
level03.props.PineTree_NoCollider1105916ID = {}
level03.props.PineTree_NoCollider1105916ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1105916ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1105916ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1105916ID.transformID, {x=589.5, y=39.7188, z=330.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1105916ID.transformID, 2.83877, 2.83877, 2.83877)
Transform.SetRotation(level03.props.PineTree_NoCollider1105916ID.transformID, {x=-0.0463562, y=0.995605, z=0.0717773})
level03.props.PineTree_NoCollider1106917ID = {}
level03.props.PineTree_NoCollider1106917ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1106917ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1106917ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1106917ID.transformID, {x=612, y=28.7656, z=323})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1106917ID.transformID, 2.35224, 2.35224, 2.35224)
Transform.SetRotation(level03.props.PineTree_NoCollider1106917ID.transformID, {x=0.213501, y=0.943848, z=-0.19812})
level03.props.PineTree_NoCollider1107918ID = {}
level03.props.PineTree_NoCollider1107918ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1107918ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1107918ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1107918ID.transformID, {x=620.5, y=39.1563, z=354})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1107918ID.transformID, 1.62438, 1.62438, 1.62438)
Transform.SetRotation(level03.props.PineTree_NoCollider1107918ID.transformID, {x=0.0587769, y=0.979492, z=-0.0120392})
level03.props.PineTree_NoCollider1108919ID = {}
level03.props.PineTree_NoCollider1108919ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1108919ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1108919ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1108919ID.transformID, {x=649, y=38.8438, z=378.5})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1108919ID.transformID, 2.83905, 2.83905, 2.83905)
Transform.SetRotation(level03.props.PineTree_NoCollider1108919ID.transformID, {x=0.175171, y=0.975098, z=-0.107361})
level03.props.PineTree_NoCollider1109920ID = {}
level03.props.PineTree_NoCollider1109920ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider1109920ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider1109920ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider1109920ID.transformID, {x=630.5, y=37.9375, z=375.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider1109920ID.transformID, 2.33036, 2.33036, 2.33036)
Transform.SetRotation(level03.props.PineTree_NoCollider1109920ID.transformID, {x=-0.0372314, y=0.987305, z=0.0706177})
level03.props.PineTree_NoCollider11010921ID = {}
level03.props.PineTree_NoCollider11010921ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11010921ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11010921ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11010921ID.transformID, {x=686.5, y=19.2969, z=383})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11010921ID.transformID, 1.58318, 1.58318, 1.58318)
Transform.SetRotation(level03.props.PineTree_NoCollider11010921ID.transformID, {x=0.0541687, y=0.995117, z=-0.0187225})
level03.props.PineTree_NoCollider11011922ID = {}
level03.props.PineTree_NoCollider11011922ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11011922ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11011922ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11011922ID.transformID, {x=674, y=26.7656, z=389.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11011922ID.transformID, 2.5528, 2.5528, 2.5528)
Transform.SetRotation(level03.props.PineTree_NoCollider11011922ID.transformID, {x=0.372803, y=0.870117, z=-0.25415})
level03.props.PineTree_NoCollider11012923ID = {}
level03.props.PineTree_NoCollider11012923ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11012923ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11012923ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11012923ID.transformID, {x=714, y=19.0313, z=385.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11012923ID.transformID, 1.9169, 1.9169, 1.9169)
Transform.SetRotation(level03.props.PineTree_NoCollider11012923ID.transformID, {x=0.465576, y=0.770508, z=-0.29248})
level03.props.PineTree_NoCollider11013924ID = {}
level03.props.PineTree_NoCollider11013924ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11013924ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11013924ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11013924ID.transformID, {x=698.5, y=18.8438, z=401.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11013924ID.transformID, 2.80462, 2.80462, 2.80462)
Transform.SetRotation(level03.props.PineTree_NoCollider11013924ID.transformID, {x=0.0467834, y=0.996094, z=-0.0125961})
level03.props.PineTree_NoCollider11014925ID = {}
level03.props.PineTree_NoCollider11014925ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11014925ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11014925ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11014925ID.transformID, {x=661.5, y=20.3594, z=336.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11014925ID.transformID, 2.3825, 2.3825, 2.3825)
Transform.SetRotation(level03.props.PineTree_NoCollider11014925ID.transformID, {x=0.0140839, y=0.998535, z=-0.00127983})
level03.props.PineTree_NoCollider11015926ID = {}
level03.props.PineTree_NoCollider11015926ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11015926ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11015926ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11015926ID.transformID, {x=629.5, y=20.1094, z=310.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11015926ID.transformID, 1.55324, 1.55324, 1.55324)
Transform.SetRotation(level03.props.PineTree_NoCollider11015926ID.transformID, {x=-0.000568867, y=0.981445, z=-0.0960083})
level03.props.PineTree_NoCollider11016927ID = {}
level03.props.PineTree_NoCollider11016927ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11016927ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11016927ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11016927ID.transformID, {x=642, y=20.4063, z=308.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11016927ID.transformID, 2.9864, 2.9864, 2.9864)
Transform.SetRotation(level03.props.PineTree_NoCollider11016927ID.transformID, {x=0.116699, y=0.921875, z=-0.150513})
level03.props.PineTree_NoCollider11017928ID = {}
level03.props.PineTree_NoCollider11017928ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11017928ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11017928ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11017928ID.transformID, {x=631.5, y=19.375, z=289.5})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11017928ID.transformID, 1.86251, 1.86251, 1.86251)
Transform.SetRotation(level03.props.PineTree_NoCollider11017928ID.transformID, {x=0.164063, y=0.79834, z=-0.455322})
level03.props.PineTree_NoCollider11018929ID = {}
level03.props.PineTree_NoCollider11018929ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11018929ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11018929ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11018929ID.transformID, {x=616, y=19.4531, z=297.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11018929ID.transformID, 2.28939, 2.28939, 2.28939)
Transform.SetRotation(level03.props.PineTree_NoCollider11018929ID.transformID, {x=-0.0905151, y=0.92627, z=-0.298828})
level03.props.PineTree_NoCollider11019930ID = {}
level03.props.PineTree_NoCollider11019930ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11019930ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11019930ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11019930ID.transformID, {x=558, y=22.4375, z=252.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11019930ID.transformID, 2.18415, 2.18415, 2.18415)
Transform.SetRotation(level03.props.PineTree_NoCollider11019930ID.transformID, {x=0.268311, y=0.888672, z=-0.0327759})
level03.props.PineTree_NoCollider11020931ID = {}
level03.props.PineTree_NoCollider11020931ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11020931ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11020931ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11020931ID.transformID, {x=542, y=22.375, z=238.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11020931ID.transformID, 2.38118, 2.38118, 2.38118)
Transform.SetRotation(level03.props.PineTree_NoCollider11020931ID.transformID, {x=0.0464478, y=0.99707, z=-0.0134659})
level03.props.PineTree_NoCollider11021932ID = {}
level03.props.PineTree_NoCollider11021932ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11021932ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11021932ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11021932ID.transformID, {x=556.5, y=21.9375, z=227.375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11021932ID.transformID, 2.10953, 2.10953, 2.10953)
Transform.SetRotation(level03.props.PineTree_NoCollider11021932ID.transformID, {x=0.368652, y=0.762695, z=-0.280029})
level03.props.PineTree_NoCollider11022933ID = {}
level03.props.PineTree_NoCollider11022933ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11022933ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11022933ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11022933ID.transformID, {x=537.5, y=20.9219, z=187.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11022933ID.transformID, 2.12061, 2.12061, 2.12061)
Transform.SetRotation(level03.props.PineTree_NoCollider11022933ID.transformID, {x=0.188354, y=0.975098, z=-0.0778198})
level03.props.PineTree_NoCollider11023934ID = {}
level03.props.PineTree_NoCollider11023934ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11023934ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11023934ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11023934ID.transformID, {x=520.5, y=21.375, z=203.375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11023934ID.transformID, 1.86192, 1.86192, 1.86192)
Transform.SetRotation(level03.props.PineTree_NoCollider11023934ID.transformID, {x=0.116943, y=0.983887, z=-0.0777588})
level03.props.PineTree_NoCollider11024935ID = {}
level03.props.PineTree_NoCollider11024935ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11024935ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11024935ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11024935ID.transformID, {x=522.5, y=27.25, z=163.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11024935ID.transformID, 1.61481, 1.61481, 1.61481)
Transform.SetRotation(level03.props.PineTree_NoCollider11024935ID.transformID, {x=-0.00536346, y=0.998047, z=-0.0510864})
level03.props.PineTree_NoCollider11025936ID = {}
level03.props.PineTree_NoCollider11025936ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11025936ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11025936ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11025936ID.transformID, {x=588, y=15.3672, z=128.375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11025936ID.transformID, 2.18419, 2.18419, 2.18419)
Transform.SetRotation(level03.props.PineTree_NoCollider11025936ID.transformID, {x=0.0150146, y=0.999512, z=-0.0226593})
level03.props.PineTree_NoCollider11026937ID = {}
level03.props.PineTree_NoCollider11026937ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11026937ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11026937ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11026937ID.transformID, {x=599.5, y=14.8906, z=114.313})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11026937ID.transformID, 1.74409, 1.74409, 1.74409)
Transform.SetRotation(level03.props.PineTree_NoCollider11026937ID.transformID, {x=0.0142059, y=0.999512, z=-0.0226746})
level03.props.PineTree_NoCollider11027938ID = {}
level03.props.PineTree_NoCollider11027938ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11027938ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11027938ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11027938ID.transformID, {x=572.5, y=14.8672, z=97.5})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11027938ID.transformID, 1.96899, 1.96899, 1.96899)
Transform.SetRotation(level03.props.PineTree_NoCollider11027938ID.transformID, {x=0.0145493, y=0.999512, z=-0.0236511})
level03.props.PineTree_NoCollider11028939ID = {}
level03.props.PineTree_NoCollider11028939ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11028939ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11028939ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11028939ID.transformID, {x=584.5, y=14.3594, z=82.375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11028939ID.transformID, 2.41601, 2.41601, 2.41601)
Transform.SetRotation(level03.props.PineTree_NoCollider11028939ID.transformID, {x=0.0138626, y=0.999512, z=-0.0232544})
level03.props.PineTree_NoCollider11029940ID = {}
level03.props.PineTree_NoCollider11029940ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11029940ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11029940ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11029940ID.transformID, {x=569.5, y=14.5469, z=81.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11029940ID.transformID, 2.63318, 2.63318, 2.63318)
Transform.SetRotation(level03.props.PineTree_NoCollider11029940ID.transformID, {x=0.0141678, y=0.999512, z=-0.0240021})
level03.props.PineTree_NoCollider11030941ID = {}
level03.props.PineTree_NoCollider11030941ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11030941ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11030941ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11030941ID.transformID, {x=545, y=15.2969, z=95.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11030941ID.transformID, 2.99776, 2.99776, 2.99776)
Transform.SetRotation(level03.props.PineTree_NoCollider11030941ID.transformID, {x=0.0597229, y=0.995117, z=-0.0492859})
level03.props.PineTree_NoCollider11031942ID = {}
level03.props.PineTree_NoCollider11031942ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11031942ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11031942ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11031942ID.transformID, {x=559, y=15.2813, z=105.125})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11031942ID.transformID, 2.33499, 2.33499, 2.33499)
Transform.SetRotation(level03.props.PineTree_NoCollider11031942ID.transformID, {x=0.0389404, y=0.99707, z=-0.0372009})
level03.props.PineTree_NoCollider11032943ID = {}
level03.props.PineTree_NoCollider11032943ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11032943ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11032943ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11032943ID.transformID, {x=540, y=15.7734, z=109.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11032943ID.transformID, 1.77737, 1.77737, 1.77737)
Transform.SetRotation(level03.props.PineTree_NoCollider11032943ID.transformID, {x=0.0926514, y=0.991699, z=-0.0666504})
level03.props.PineTree_NoCollider11033944ID = {}
level03.props.PineTree_NoCollider11033944ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11033944ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11033944ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11033944ID.transformID, {x=574.5, y=15.4297, z=123.375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11033944ID.transformID, 2.2719, 2.2719, 2.2719)
Transform.SetRotation(level03.props.PineTree_NoCollider11033944ID.transformID, {x=0.0252075, y=0.998535, z=-0.0281372})
level03.props.PineTree_NoCollider11034945ID = {}
level03.props.PineTree_NoCollider11034945ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11034945ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11034945ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11034945ID.transformID, {x=574.5, y=16, z=148.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11034945ID.transformID, 2.86839, 2.86839, 2.86839)
Transform.SetRotation(level03.props.PineTree_NoCollider11034945ID.transformID, {x=0.059967, y=0.995117, z=-0.044281})
level03.props.PineTree_NoCollider11035946ID = {}
level03.props.PineTree_NoCollider11035946ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11035946ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11035946ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11035946ID.transformID, {x=565, y=9.5625, z=162.625})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11035946ID.transformID, 2.67287, 2.67287, 2.67287)
Transform.SetRotation(level03.props.PineTree_NoCollider11035946ID.transformID, {x=0.0853271, y=0.994629, z=-0.0513611})
level03.props.PineTree_NoCollider11036947ID = {}
level03.props.PineTree_NoCollider11036947ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11036947ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11036947ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11036947ID.transformID, {x=592.5, y=7.39453, z=165.625})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11036947ID.transformID, 2.88052, 2.88052, 2.88052)
Transform.SetRotation(level03.props.PineTree_NoCollider11036947ID.transformID, {x=0.0844116, y=0.995117, z=-0.0496521})
level03.props.PineTree_NoCollider11037948ID = {}
level03.props.PineTree_NoCollider11037948ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11037948ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11037948ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11037948ID.transformID, {x=580, y=9.39063, z=184.75})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11037948ID.transformID, 1.62149, 1.62149, 1.62149)
Transform.SetRotation(level03.props.PineTree_NoCollider11037948ID.transformID, {x=0.0853271, y=0.994629, z=-0.0496826})
level03.props.PineTree_NoCollider11038949ID = {}
level03.props.PineTree_NoCollider11038949ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11038949ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11038949ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11038949ID.transformID, {x=560.5, y=11.2344, z=186.875})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11038949ID.transformID, 2.69608, 2.69608, 2.69608)
Transform.SetRotation(level03.props.PineTree_NoCollider11038949ID.transformID, {x=0.137939, y=0.98584, z=-0.0687256})
level03.props.PineTree_NoCollider11039950ID = {}
level03.props.PineTree_NoCollider11039950ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11039950ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11039950ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11039950ID.transformID, {x=587.5, y=9.71094, z=204.125})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11039950ID.transformID, 2.88578, 2.88578, 2.88578)
Transform.SetRotation(level03.props.PineTree_NoCollider11039950ID.transformID, {x=0.0852661, y=0.995117, z=-0.0488892})
level03.props.PineTree_NoCollider11040951ID = {}
level03.props.PineTree_NoCollider11040951ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11040951ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11040951ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11040951ID.transformID, {x=512.5, y=25.5625, z=126.063})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11040951ID.transformID, 2.26055, 2.26055, 2.26055)
Transform.SetRotation(level03.props.PineTree_NoCollider11040951ID.transformID, {x=0.0714111, y=0.992188, z=-0.0283356})
level03.props.PineTree_NoCollider11041952ID = {}
level03.props.PineTree_NoCollider11041952ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11041952ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11041952ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11041952ID.transformID, {x=503.25, y=25.5938, z=139.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11041952ID.transformID, 2.34597, 2.34597, 2.34597)
Transform.SetRotation(level03.props.PineTree_NoCollider11041952ID.transformID, {x=0.0263977, y=0.996582, z=-0.0206909})
level03.props.PineTree_NoCollider11042953ID = {}
level03.props.PineTree_NoCollider11042953ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11042953ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11042953ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11042953ID.transformID, {x=475, y=30.9063, z=109.25})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11042953ID.transformID, 1.79124, 1.79124, 1.79124)
Transform.SetRotation(level03.props.PineTree_NoCollider11042953ID.transformID, {x=-0.0109253, y=0.997559, z=-0.0198212})
level03.props.PineTree_NoCollider11043954ID = {}
level03.props.PineTree_NoCollider11043954ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11043954ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11043954ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11043954ID.transformID, {x=474.25, y=30.3125, z=92.4375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11043954ID.transformID, 2.1793, 2.1793, 2.1793)
Transform.SetRotation(level03.props.PineTree_NoCollider11043954ID.transformID, {x=-0.0188904, y=0.995605, z=-0.0748901})
level03.props.PineTree_NoCollider11044955ID = {}
level03.props.PineTree_NoCollider11044955ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11044955ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11044955ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11044955ID.transformID, {x=495.75, y=31, z=89.375})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11044955ID.transformID, 2.83749, 2.83749, 2.83749)
Transform.SetRotation(level03.props.PineTree_NoCollider11044955ID.transformID, {x=0.0700073, y=0.990723, z=-0.0751343})
level03.props.PineTree_NoCollider11045956ID = {}
level03.props.PineTree_NoCollider11045956ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11045956ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11045956ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11045956ID.transformID, {x=477.75, y=31.3594, z=119.688})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11045956ID.transformID, 2.97903, 2.97903, 2.97903)
Transform.SetRotation(level03.props.PineTree_NoCollider11045956ID.transformID, {x=0.0553589, y=0.991211, z=-0.0415955})
level03.props.PineTree_NoCollider11046957ID = {}
level03.props.PineTree_NoCollider11046957ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11046957ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11046957ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11046957ID.transformID, {x=425, y=70.4375, z=88.125})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11046957ID.transformID, 1.54367, 1.54367, 1.54367)
Transform.SetRotation(level03.props.PineTree_NoCollider11046957ID.transformID, {x=0.168335, y=0.984863, z=0.0351257})
level03.props.PineTree_NoCollider11047958ID = {}
level03.props.PineTree_NoCollider11047958ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11047958ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11047958ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11047958ID.transformID, {x=433, y=68.4375, z=72.3125})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11047958ID.transformID, 2.31896, 2.31896, 2.31896)
Transform.SetRotation(level03.props.PineTree_NoCollider11047958ID.transformID, {x=0.29248, y=0.956055, z=0.0107956})
level03.props.PineTree_NoCollider11048959ID = {}
level03.props.PineTree_NoCollider11048959ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11048959ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11048959ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11048959ID.transformID, {x=421.75, y=69.4375, z=56.0938})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11048959ID.transformID, 1.90701, 1.90701, 1.90701)
Transform.SetRotation(level03.props.PineTree_NoCollider11048959ID.transformID, {x=0.0835571, y=0.996094, z=-0.0218658})
level03.props.PineTree_NoCollider11049960ID = {}
level03.props.PineTree_NoCollider11049960ID.model = Assets.LoadModel('Models/pineTree1.model')
level03.props.PineTree_NoCollider11049960ID.transformID = Gear.BindStaticInstance(level03.props.PineTree_NoCollider11049960ID.model)
Transform.SetPosition(level03.props.PineTree_NoCollider11049960ID.transformID, {x=407, y=68.8125, z=183.125})
Transform.SetScaleNonUniform(level03.props.PineTree_NoCollider11049960ID.transformID, 2.07753, 2.07753, 2.07753)
Transform.SetRotation(level03.props.PineTree_NoCollider11049960ID.transformID, {x=0.433838, y=0.839844, z=-0.325439})
level03.props.House2979ID = {}
level03.props.House2979ID.model = Assets.LoadModel('Models/House1.model')
level03.props.House2979ID.transformID = Gear.BindStaticInstance(level03.props.House2979ID.model)
Transform.SetPosition(level03.props.House2979ID.transformID, {x=465.768, y=41.3288, z=228.867})
Transform.SetScaleNonUniform(level03.props.House2979ID.transformID, 1.58646, 1.51055, 1.33957)
Transform.SetRotation(level03.props.House2979ID.transformID, {x=0, y=-3.34904, z=0})
level03.colliders.C_Parent_Tile_31113ID = {}
level03.colliders.C_Parent_Tile_31113ID.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_31113ID.collider:SetMinPos(383.7,30.1951,127.711)
level03.colliders.C_Parent_Tile_31113ID.collider:SetMaxPos(512.3,57.3098,255.172)
level03.colliders.C_Parent_Tile_31113ID.collider:SetPos(0,0,0)
level03.colliders.C_Parent_Tile_31113ID1 = {}
level03.colliders.C_Parent_Tile_31113ID1.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID1.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_31113ID1.collider:SetMinPos(383.7,30.1951,127.741)
level03.colliders.C_Parent_Tile_31113ID1.collider:SetMaxPos(434.151,41.7798,172.134)
level03.colliders.C_Parent_Tile_31113ID.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID1.collider)
level03.colliders.C_Parent_Tile_31113ID2 = {}
level03.colliders.C_Parent_Tile_31113ID2.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID2.collider:SetOffset(388.5,36.4629,157)
level03.colliders.C_Parent_Tile_31113ID2.collider:SetZAxis(1,0,0)
level03.colliders.C_Parent_Tile_31113ID2.collider:SetHalfLengths(0.3,5.15847,4.5)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID2.collider)
level03.colliders.C_Parent_Tile_31113ID3 = {}
level03.colliders.C_Parent_Tile_31113ID3.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID3.collider:SetOffset(398,36.3044,158)
level03.colliders.C_Parent_Tile_31113ID3.collider:SetZAxis(0.980581,0,0.196116)
level03.colliders.C_Parent_Tile_31113ID3.collider:SetHalfLengths(0.3,5.15847,5.09902)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID3.collider)
level03.colliders.C_Parent_Tile_31113ID4 = {}
level03.colliders.C_Parent_Tile_31113ID4.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID4.collider:SetOffset(404,36.146,160)
level03.colliders.C_Parent_Tile_31113ID4.collider:SetZAxis(0.707107,0,0.707107)
level03.colliders.C_Parent_Tile_31113ID4.collider:SetHalfLengths(0.3,5.15847,1.41421)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID4.collider)
level03.colliders.C_Parent_Tile_31113ID5 = {}
level03.colliders.C_Parent_Tile_31113ID5.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID5.collider:SetOffset(406,36.3044,162.5)
level03.colliders.C_Parent_Tile_31113ID5.collider:SetZAxis(0.5547,0,0.83205)
level03.colliders.C_Parent_Tile_31113ID5.collider:SetHalfLengths(0.3,5.15847,1.80278)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID5.collider)
level03.colliders.C_Parent_Tile_31113ID6 = {}
level03.colliders.C_Parent_Tile_31113ID6.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID6.collider:SetOffset(409,36.4629,168)
level03.colliders.C_Parent_Tile_31113ID6.collider:SetZAxis(0.447214,0,0.894427)
level03.colliders.C_Parent_Tile_31113ID6.collider:SetHalfLengths(0.3,5.31694,4.47214)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID6.collider)
level03.colliders.C_Parent_Tile_31113ID7 = {}
level03.colliders.C_Parent_Tile_31113ID7.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID7.collider:SetOffset(428,35.829,131.5)
level03.colliders.C_Parent_Tile_31113ID7.collider:SetZAxis(-0.863779,0,0.503871)
level03.colliders.C_Parent_Tile_31113ID7.collider:SetHalfLengths(0.3,5.31694,6.94622)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID7.collider)
level03.colliders.C_Parent_Tile_31113ID8 = {}
level03.colliders.C_Parent_Tile_31113ID8.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID8.collider:SetOffset(412.5,35.5121,139.5)
level03.colliders.C_Parent_Tile_31113ID8.collider:SetZAxis(-0.903738,0,0.428086)
level03.colliders.C_Parent_Tile_31113ID8.collider:SetHalfLengths(0.3,5.15847,10.5119)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID8.collider)
level03.colliders.C_Parent_Tile_31113ID9 = {}
level03.colliders.C_Parent_Tile_31113ID9.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID9.collider:SetOffset(401.5,35.3536,144.5)
level03.colliders.C_Parent_Tile_31113ID9.collider:SetZAxis(-0.948683,0,0.316228)
level03.colliders.C_Parent_Tile_31113ID9.collider:SetHalfLengths(0.3,5,1.58114)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID9.collider)
level03.colliders.C_Parent_Tile_31113ID10 = {}
level03.colliders.C_Parent_Tile_31113ID10.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID10.collider:SetOffset(392,35.3536,145)
level03.colliders.C_Parent_Tile_31113ID10.collider:SetZAxis(-1,0,0)
level03.colliders.C_Parent_Tile_31113ID10.collider:SetHalfLengths(0.3,5.15847,8)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID10.collider)
level03.colliders.C_Parent_Tile_31113ID11 = {}
level03.colliders.C_Parent_Tile_31113ID11.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID11.collider:SetOffset(384,35.1951,146)
level03.colliders.C_Parent_Tile_31113ID11.collider:SetZAxis(0,0,1)
level03.colliders.C_Parent_Tile_31113ID11.collider:SetHalfLengths(0.3,5,1)
level03.colliders.C_Parent_Tile_31113ID1.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID11.collider)
level03.colliders.C_Parent_Tile_31113ID12 = {}
level03.colliders.C_Parent_Tile_31113ID12.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID12.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_31113ID12.collider:SetMinPos(410.719,30.829,127.711)
level03.colliders.C_Parent_Tile_31113ID12.collider:SetMaxPos(475.148,57.3098,255.172)
level03.colliders.C_Parent_Tile_31113ID.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID12.collider)
level03.colliders.C_Parent_Tile_31113ID13 = {}
level03.colliders.C_Parent_Tile_31113ID13.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID13.collider:SetOffset(412.5,36.7798,176)
level03.colliders.C_Parent_Tile_31113ID13.collider:SetZAxis(0.351123,0,0.936329)
level03.colliders.C_Parent_Tile_31113ID13.collider:SetHalfLengths(0.3,5.79235,4.272)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID13.collider)
level03.colliders.C_Parent_Tile_31113ID14 = {}
level03.colliders.C_Parent_Tile_31113ID14.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID14.collider:SetOffset(415.5,37.5722,185)
level03.colliders.C_Parent_Tile_31113ID14.collider:SetZAxis(0.287348,0,0.957826)
level03.colliders.C_Parent_Tile_31113ID14.collider:SetHalfLengths(0.3,5.63388,5.22015)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID14.collider)
level03.colliders.C_Parent_Tile_31113ID15 = {}
level03.colliders.C_Parent_Tile_31113ID15.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID15.collider:SetOffset(418,38.2061,195.5)
level03.colliders.C_Parent_Tile_31113ID15.collider:SetZAxis(0.178885,0,0.98387)
level03.colliders.C_Parent_Tile_31113ID15.collider:SetHalfLengths(0.3,7.0601,5.59017)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID15.collider)
level03.colliders.C_Parent_Tile_31113ID16 = {}
level03.colliders.C_Parent_Tile_31113ID16.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID16.collider:SetOffset(419.5,40.2662,208.5)
level03.colliders.C_Parent_Tile_31113ID16.collider:SetZAxis(0.066519,0,0.997785)
level03.colliders.C_Parent_Tile_31113ID16.collider:SetHalfLengths(0.3,9.27867,7.51665)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID16.collider)
level03.colliders.C_Parent_Tile_31113ID17 = {}
level03.colliders.C_Parent_Tile_31113ID17.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID17.collider:SetOffset(418.5,44.5448,223.5)
level03.colliders.C_Parent_Tile_31113ID17.collider:SetZAxis(-0.196116,0,0.980581)
level03.colliders.C_Parent_Tile_31113ID17.collider:SetHalfLengths(0.3,8.80326,7.64853)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID17.collider)
level03.colliders.C_Parent_Tile_31113ID18 = {}
level03.colliders.C_Parent_Tile_31113ID18.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID18.collider:SetOffset(416,48.3481,235)
level03.colliders.C_Parent_Tile_31113ID18.collider:SetZAxis(-0.242536,0,0.970143)
level03.colliders.C_Parent_Tile_31113ID18.collider:SetHalfLengths(0.3,7.37704,4.12311)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID18.collider)
level03.colliders.C_Parent_Tile_31113ID19 = {}
level03.colliders.C_Parent_Tile_31113ID19.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID19.collider:SetOffset(422,50.7251,242)
level03.colliders.C_Parent_Tile_31113ID19.collider:SetZAxis(0.919145,0,0.393919)
level03.colliders.C_Parent_Tile_31113ID19.collider:SetHalfLengths(0.3,5.79234,7.61577)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID19.collider)
level03.colliders.C_Parent_Tile_31113ID20 = {}
level03.colliders.C_Parent_Tile_31113ID20.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID20.collider:SetOffset(432.5,51.5175,250)
level03.colliders.C_Parent_Tile_31113ID20.collider:SetZAxis(0.573462,0,0.819232)
level03.colliders.C_Parent_Tile_31113ID20.collider:SetHalfLengths(0.3,5.79235,6.10328)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID20.collider)
level03.colliders.C_Parent_Tile_31113ID21 = {}
level03.colliders.C_Parent_Tile_31113ID21.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID21.collider:SetOffset(463.5,38.2061,139.5)
level03.colliders.C_Parent_Tile_31113ID21.collider:SetZAxis(-0.870563,0,-0.492057)
level03.colliders.C_Parent_Tile_31113ID21.collider:SetHalfLengths(0.3,6.42622,13.2098)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID21.collider)
level03.colliders.C_Parent_Tile_31113ID22 = {}
level03.colliders.C_Parent_Tile_31113ID22.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID22.collider:SetOffset(443,36.7798,130.5)
level03.colliders.C_Parent_Tile_31113ID22.collider:SetZAxis(-0.963518,0,-0.267644)
level03.colliders.C_Parent_Tile_31113ID22.collider:SetHalfLengths(0.3,5.95082,9.34077)
level03.colliders.C_Parent_Tile_31113ID12.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID22.collider)
level03.colliders.C_Parent_Tile_31113ID23 = {}
level03.colliders.C_Parent_Tile_31113ID23.collider = AABBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID23.collider:SetOffset(0,0,0)
level03.colliders.C_Parent_Tile_31113ID23.collider:SetMinPos(458.178,33.2061,145.827)
level03.colliders.C_Parent_Tile_31113ID23.collider:SetMaxPos(512.3,47.8604,255.011)
level03.colliders.C_Parent_Tile_31113ID.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID23.collider)
level03.colliders.C_Parent_Tile_31113ID24 = {}
level03.colliders.C_Parent_Tile_31113ID24.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID24.collider:SetOffset(511.5,41.5339,241.5)
level03.colliders.C_Parent_Tile_31113ID24.collider:SetZAxis(-0.0370117,0,-0.999315)
level03.colliders.C_Parent_Tile_31113ID24.collider:SetHalfLengths(0.3,5.31694,13.5093)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID24.collider)
level03.colliders.C_Parent_Tile_31113ID25 = {}
level03.colliders.C_Parent_Tile_31113ID25.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID25.collider:SetOffset(510,41.8508,221)
level03.colliders.C_Parent_Tile_31113ID25.collider:SetZAxis(-0.141421,0,-0.98995)
level03.colliders.C_Parent_Tile_31113ID25.collider:SetHalfLengths(0.3,5.31694,7.07107)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID25.collider)
level03.colliders.C_Parent_Tile_31113ID26 = {}
level03.colliders.C_Parent_Tile_31113ID26.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID26.collider:SetOffset(506.5,42.1678,206.5)
level03.colliders.C_Parent_Tile_31113ID26.collider:SetZAxis(-0.316228,0,-0.948683)
level03.colliders.C_Parent_Tile_31113ID26.collider:SetHalfLengths(0.3,5.31694,7.90569)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID26.collider)
level03.colliders.C_Parent_Tile_31113ID27 = {}
level03.colliders.C_Parent_Tile_31113ID27.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID27.collider:SetOffset(500.5,41.8508,190)
level03.colliders.C_Parent_Tile_31113ID27.collider:SetZAxis(-0.362446,0,-0.932005)
level03.colliders.C_Parent_Tile_31113ID27.collider:SetHalfLengths(0.3,5.63388,9.6566)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID27.collider)
level03.colliders.C_Parent_Tile_31113ID28 = {}
level03.colliders.C_Parent_Tile_31113ID28.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID28.collider:SetOffset(492,41.217,172)
level03.colliders.C_Parent_Tile_31113ID28.collider:SetZAxis(-0.485643,0,-0.874157)
level03.colliders.C_Parent_Tile_31113ID28.collider:SetHalfLengths(0.3,6.42622,10.2956)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID28.collider)
level03.colliders.C_Parent_Tile_31113ID29 = {}
level03.colliders.C_Parent_Tile_31113ID29.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID29.collider:SetOffset(481,39.7907,154.5)
level03.colliders.C_Parent_Tile_31113ID29.collider:SetZAxis(-0.576683,0,-0.816968)
level03.colliders.C_Parent_Tile_31113ID29.collider:SetHalfLengths(0.3,6.58469,10.4043)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID29.collider)
level03.colliders.C_Parent_Tile_31113ID30 = {}
level03.colliders.C_Parent_Tile_31113ID30.collider = OBBCollider.Create(-1)
level03.colliders.C_Parent_Tile_31113ID30.collider:SetOffset(465.768,43.3288,228.867)
level03.colliders.C_Parent_Tile_31113ID30.collider:SetZAxis(0.205962,0,-0.97856)
level03.colliders.C_Parent_Tile_31113ID30.collider:SetHalfLengths(6.34583,4.53165,6.69785)
level03.colliders.C_Parent_Tile_31113ID23.collider:AddChild(level03.colliders.C_Parent_Tile_31113ID30.collider)
CollisionHandler.AddAABB(level03.colliders.C_Parent_Tile_31113ID.collider, 3)
level03.colliders.C_Parent_Tile_31113ID1 = nil
level03.colliders.C_Parent_Tile_31113ID2 = nil
level03.colliders.C_Parent_Tile_31113ID3 = nil
level03.colliders.C_Parent_Tile_31113ID4 = nil
level03.colliders.C_Parent_Tile_31113ID5 = nil
level03.colliders.C_Parent_Tile_31113ID6 = nil
level03.colliders.C_Parent_Tile_31113ID7 = nil
level03.colliders.C_Parent_Tile_31113ID8 = nil
level03.colliders.C_Parent_Tile_31113ID9 = nil
level03.colliders.C_Parent_Tile_31113ID10 = nil
level03.colliders.C_Parent_Tile_31113ID11 = nil
level03.colliders.C_Parent_Tile_31113ID12 = nil
level03.colliders.C_Parent_Tile_31113ID13 = nil
level03.colliders.C_Parent_Tile_31113ID14 = nil
level03.colliders.C_Parent_Tile_31113ID15 = nil
level03.colliders.C_Parent_Tile_31113ID16 = nil
level03.colliders.C_Parent_Tile_31113ID17 = nil
level03.colliders.C_Parent_Tile_31113ID18 = nil
level03.colliders.C_Parent_Tile_31113ID19 = nil
level03.colliders.C_Parent_Tile_31113ID20 = nil
level03.colliders.C_Parent_Tile_31113ID21 = nil
level03.colliders.C_Parent_Tile_31113ID22 = nil
level03.colliders.C_Parent_Tile_31113ID23 = nil
level03.colliders.C_Parent_Tile_31113ID24 = nil
level03.colliders.C_Parent_Tile_31113ID25 = nil
level03.colliders.C_Parent_Tile_31113ID26 = nil
level03.colliders.C_Parent_Tile_31113ID27 = nil
level03.colliders.C_Parent_Tile_31113ID28 = nil
level03.colliders.C_Parent_Tile_31113ID29 = nil
level03.colliders.C_Parent_Tile_31113ID30 = nil
end
level03.unload = function()
Gear.UnbindInstance(level03.props.t2s1029ID.transformID)
level03.props.t2s1029ID = nil
Gear.UnbindInstance(level03.props.t2s11a30ID.transformID)
level03.props.t2s11a30ID = nil
Gear.UnbindInstance(level03.props.t3s134ID.transformID)
level03.props.t3s134ID = nil
level03.props.tile335ID = nil
Gear.UnbindInstance(level03.props.t3s241ID.transformID)
level03.props.t3s241ID = nil
Gear.UnbindInstance(level03.props.t3s342ID.transformID)
level03.props.t3s342ID = nil
Gear.UnbindInstance(level03.props.t3s443ID.transformID)
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
Gear.UnbindInstance(level03.props.PineTree_NoCollider1101912ID.transformID)
level03.props.PineTree_NoCollider1101912ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1102913ID.transformID)
level03.props.PineTree_NoCollider1102913ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1103914ID.transformID)
level03.props.PineTree_NoCollider1103914ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1104915ID.transformID)
level03.props.PineTree_NoCollider1104915ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1105916ID.transformID)
level03.props.PineTree_NoCollider1105916ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1106917ID.transformID)
level03.props.PineTree_NoCollider1106917ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1107918ID.transformID)
level03.props.PineTree_NoCollider1107918ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1108919ID.transformID)
level03.props.PineTree_NoCollider1108919ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider1109920ID.transformID)
level03.props.PineTree_NoCollider1109920ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11010921ID.transformID)
level03.props.PineTree_NoCollider11010921ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11011922ID.transformID)
level03.props.PineTree_NoCollider11011922ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11012923ID.transformID)
level03.props.PineTree_NoCollider11012923ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11013924ID.transformID)
level03.props.PineTree_NoCollider11013924ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11014925ID.transformID)
level03.props.PineTree_NoCollider11014925ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11015926ID.transformID)
level03.props.PineTree_NoCollider11015926ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11016927ID.transformID)
level03.props.PineTree_NoCollider11016927ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11017928ID.transformID)
level03.props.PineTree_NoCollider11017928ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11018929ID.transformID)
level03.props.PineTree_NoCollider11018929ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11019930ID.transformID)
level03.props.PineTree_NoCollider11019930ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11020931ID.transformID)
level03.props.PineTree_NoCollider11020931ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11021932ID.transformID)
level03.props.PineTree_NoCollider11021932ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11022933ID.transformID)
level03.props.PineTree_NoCollider11022933ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11023934ID.transformID)
level03.props.PineTree_NoCollider11023934ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11024935ID.transformID)
level03.props.PineTree_NoCollider11024935ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11025936ID.transformID)
level03.props.PineTree_NoCollider11025936ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11026937ID.transformID)
level03.props.PineTree_NoCollider11026937ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11027938ID.transformID)
level03.props.PineTree_NoCollider11027938ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11028939ID.transformID)
level03.props.PineTree_NoCollider11028939ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11029940ID.transformID)
level03.props.PineTree_NoCollider11029940ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11030941ID.transformID)
level03.props.PineTree_NoCollider11030941ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11031942ID.transformID)
level03.props.PineTree_NoCollider11031942ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11032943ID.transformID)
level03.props.PineTree_NoCollider11032943ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11033944ID.transformID)
level03.props.PineTree_NoCollider11033944ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11034945ID.transformID)
level03.props.PineTree_NoCollider11034945ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11035946ID.transformID)
level03.props.PineTree_NoCollider11035946ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11036947ID.transformID)
level03.props.PineTree_NoCollider11036947ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11037948ID.transformID)
level03.props.PineTree_NoCollider11037948ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11038949ID.transformID)
level03.props.PineTree_NoCollider11038949ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11039950ID.transformID)
level03.props.PineTree_NoCollider11039950ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11040951ID.transformID)
level03.props.PineTree_NoCollider11040951ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11041952ID.transformID)
level03.props.PineTree_NoCollider11041952ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11042953ID.transformID)
level03.props.PineTree_NoCollider11042953ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11043954ID.transformID)
level03.props.PineTree_NoCollider11043954ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11044955ID.transformID)
level03.props.PineTree_NoCollider11044955ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11045956ID.transformID)
level03.props.PineTree_NoCollider11045956ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11046957ID.transformID)
level03.props.PineTree_NoCollider11046957ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11047958ID.transformID)
level03.props.PineTree_NoCollider11047958ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11048959ID.transformID)
level03.props.PineTree_NoCollider11048959ID = nil
Gear.UnbindInstance(level03.props.PineTree_NoCollider11049960ID.transformID)
level03.props.PineTree_NoCollider11049960ID = nil
Gear.UnbindInstance(level03.props.House2979ID.transformID)
level03.props.House2979ID = nil
level03.colliders.C_Parent_Tile_311110ID = nil
level03.colliders.C_Parent_Tile_321111ID = nil
level03.colliders.C_Parent_Tile_331112ID = nil
level03.colliders.C_Parent_Tile_31113ID = nil
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
level04.props.PineTree_NoCollider11050961ID = {}
level04.props.PineTree_NoCollider11050961ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11050961ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11050961ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11050961ID.transformID, {x=429, y=83.5625, z=319.25})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11050961ID.transformID, 2.69402, 2.69402, 2.69402)
Transform.SetRotation(level04.props.PineTree_NoCollider11050961ID.transformID, {x=0.447754, y=0.888672, z=-0.0877075})
level04.props.PineTree_NoCollider11051962ID = {}
level04.props.PineTree_NoCollider11051962ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11051962ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11051962ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11051962ID.transformID, {x=386.5, y=88.4375, z=355})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11051962ID.transformID, 1.71049, 1.71049, 1.71049)
Transform.SetRotation(level04.props.PineTree_NoCollider11051962ID.transformID, {x=-0.0196075, y=0.999512, z=0.0173492})
level04.props.PineTree_NoCollider11052963ID = {}
level04.props.PineTree_NoCollider11052963ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11052963ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11052963ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11052963ID.transformID, {x=389.25, y=88.0625, z=324.75})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11052963ID.transformID, 1.70994, 1.70994, 1.70994)
Transform.SetRotation(level04.props.PineTree_NoCollider11052963ID.transformID, {x=0.00885773, y=0.999512, z=-0.0207977})
level04.props.PineTree_NoCollider11053964ID = {}
level04.props.PineTree_NoCollider11053964ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11053964ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11053964ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11053964ID.transformID, {x=418, y=86.3125, z=304.25})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11053964ID.transformID, 1.92729, 1.92729, 1.92729)
Transform.SetRotation(level04.props.PineTree_NoCollider11053964ID.transformID, {x=-0.00233841, y=0.991699, z=-0.10553})
level04.props.PineTree_NoCollider11054965ID = {}
level04.props.PineTree_NoCollider11054965ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11054965ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11054965ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11054965ID.transformID, {x=430, y=76.3125, z=262})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11054965ID.transformID, 2.06888, 2.06888, 2.06888)
Transform.SetRotation(level04.props.PineTree_NoCollider11054965ID.transformID, {x=0.357422, y=0.902344, z=-0.161499})
level04.props.PineTree_NoCollider11055966ID = {}
level04.props.PineTree_NoCollider11055966ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11055966ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11055966ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11055966ID.transformID, {x=396.75, y=88.5625, z=356})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11055966ID.transformID, 1.86068, 1.86068, 1.86068)
Transform.SetRotation(level04.props.PineTree_NoCollider11055966ID.transformID, {x=-0.0151062, y=0.999512, z=0.0217133})
level04.props.PineTree_NoCollider11056967ID = {}
level04.props.PineTree_NoCollider11056967ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11056967ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11056967ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11056967ID.transformID, {x=404, y=87.625, z=333.75})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11056967ID.transformID, 1.56322, 1.56322, 1.56322)
Transform.SetRotation(level04.props.PineTree_NoCollider11056967ID.transformID, {x=0.0247192, y=0.998535, z=-0.0311737})
level04.props.PineTree_NoCollider11058969ID = {}
level04.props.PineTree_NoCollider11058969ID.model = Assets.LoadModel('Models/pineTree1.model')
level04.props.PineTree_NoCollider11058969ID.transformID = Gear.BindStaticInstance(level04.props.PineTree_NoCollider11058969ID.model)
Transform.SetPosition(level04.props.PineTree_NoCollider11058969ID.transformID, {x=177.75, y=65.125, z=631.5})
Transform.SetScaleNonUniform(level04.props.PineTree_NoCollider11058969ID.transformID, 2.35009, 2.35009, 2.35009)
Transform.SetRotation(level04.props.PineTree_NoCollider11058969ID.transformID, {x=-0.107361, y=0.973145, z=-0.194214})
level04.props.House211980ID = {}
level04.props.House211980ID.model = Assets.LoadModel('Models/House1.model')
level04.props.House211980ID.transformID = Gear.BindStaticInstance(level04.props.House211980ID.model)
Transform.SetPosition(level04.props.House211980ID.transformID, {x=512.398, y=40.0313, z=276.597})
Transform.SetScaleNonUniform(level04.props.House211980ID.transformID, 1.32776, 1.40189, 1.29013)
Transform.SetRotation(level04.props.House211980ID.transformID, {x=0.0336609, y=2.94687, z=0.0218048})
level04.props.House213981ID = {}
level04.props.House213981ID.model = Assets.LoadModel('Models/House1.model')
level04.props.House213981ID.transformID = Gear.BindStaticInstance(level04.props.House213981ID.model)
Transform.SetPosition(level04.props.House213981ID.transformID, {x=511.646, y=40.5646, z=304.248})
Transform.SetScaleNonUniform(level04.props.House213981ID.transformID, 1.22949, 1.29484, 1.16287)
Transform.SetRotation(level04.props.House213981ID.transformID, {x=0.0253967, y=-0.404086, z=-0.0168518})
level04.colliders.C_Parent_Tile_41117ID = {}
level04.colliders.C_Parent_Tile_41117ID.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_41117ID.collider:SetMinPos(434.7,24.9016,256)
level04.colliders.C_Parent_Tile_41117ID.collider:SetMaxPos(518.923,78.3839,383.3)
level04.colliders.C_Parent_Tile_41117ID.collider:SetPos(0,0,0)
level04.colliders.C_Parent_Tile_41117ID1 = {}
level04.colliders.C_Parent_Tile_41117ID1.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID1.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_41117ID1.collider:SetMinPos(434.7,24.9016,256)
level04.colliders.C_Parent_Tile_41117ID1.collider:SetMaxPos(477.295,66.1226,363.023)
level04.colliders.C_Parent_Tile_41117ID.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID1.collider)
level04.colliders.C_Parent_Tile_41117ID2 = {}
level04.colliders.C_Parent_Tile_41117ID2.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID2.collider:SetOffset(474,40.2329,303.5)
level04.colliders.C_Parent_Tile_41117ID2.collider:SetZAxis(0.178885,0,0.98387)
level04.colliders.C_Parent_Tile_41117ID2.collider:SetHalfLengths(0.3,7.15708,16.7705)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID2.collider)
level04.colliders.C_Parent_Tile_41117ID3 = {}
level04.colliders.C_Parent_Tile_41117ID3.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID3.collider:SetOffset(467.5,40.2329,291.5)
level04.colliders.C_Parent_Tile_41117ID3.collider:SetZAxis(-0.613941,0,0.789352)
level04.colliders.C_Parent_Tile_41117ID3.collider:SetHalfLengths(0.3,15.3313,5.70088)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID3.collider)
level04.colliders.C_Parent_Tile_41117ID4 = {}
level04.colliders.C_Parent_Tile_41117ID4.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID4.collider:SetOffset(466,50.5642,306)
level04.colliders.C_Parent_Tile_41117ID4.collider:SetZAxis(0.196116,0,0.980581)
level04.colliders.C_Parent_Tile_41117ID4.collider:SetHalfLengths(0.3,5.68119,10.198)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID4.collider)
level04.colliders.C_Parent_Tile_41117ID5 = {}
level04.colliders.C_Parent_Tile_41117ID5.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID5.collider:SetOffset(468.5,51.2454,325.5)
level04.colliders.C_Parent_Tile_41117ID5.collider:SetZAxis(0.0525588,0,0.998618)
level04.colliders.C_Parent_Tile_41117ID5.collider:SetHalfLengths(0.3,8.29239,9.51315)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID5.collider)
level04.colliders.C_Parent_Tile_41117ID6 = {}
level04.colliders.C_Parent_Tile_41117ID6.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID6.collider:SetOffset(435,52.8348,263)
level04.colliders.C_Parent_Tile_41117ID6.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_41117ID6.collider:SetHalfLengths(0.3,6.1353,7)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID6.collider)
level04.colliders.C_Parent_Tile_41117ID7 = {}
level04.colliders.C_Parent_Tile_41117ID7.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID7.collider:SetOffset(436,53.9701,283.5)
level04.colliders.C_Parent_Tile_41117ID7.collider:SetZAxis(0.0738717,0,0.997268)
level04.colliders.C_Parent_Tile_41117ID7.collider:SetHalfLengths(0.3,6.81649,13.537)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID7.collider)
level04.colliders.C_Parent_Tile_41117ID8 = {}
level04.colliders.C_Parent_Tile_41117ID8.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID8.collider:SetOffset(439,55.7866,309.5)
level04.colliders.C_Parent_Tile_41117ID8.collider:SetZAxis(0.157991,0,0.987441)
level04.colliders.C_Parent_Tile_41117ID8.collider:SetHalfLengths(0.3,5.3406,12.659)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID8.collider)
level04.colliders.C_Parent_Tile_41117ID9 = {}
level04.colliders.C_Parent_Tile_41117ID9.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID9.collider:SetOffset(442.5,56.1272,328.5)
level04.colliders.C_Parent_Tile_41117ID9.collider:SetZAxis(0.22486,0,0.974391)
level04.colliders.C_Parent_Tile_41117ID9.collider:SetHalfLengths(0.3,6.13531,6.67083)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID9.collider)
level04.colliders.C_Parent_Tile_41117ID10 = {}
level04.colliders.C_Parent_Tile_41117ID10.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID10.collider:SetOffset(447,57.2625,342.5)
level04.colliders.C_Parent_Tile_41117ID10.collider:SetZAxis(0.371391,0,0.928477)
level04.colliders.C_Parent_Tile_41117ID10.collider:SetHalfLengths(0.3,7.95179,8.07775)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID10.collider)
level04.colliders.C_Parent_Tile_41117ID11 = {}
level04.colliders.C_Parent_Tile_41117ID11.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID11.collider:SetOffset(450.5,60.2143,356.5)
level04.colliders.C_Parent_Tile_41117ID11.collider:SetZAxis(0.0766965,0,0.997055)
level04.colliders.C_Parent_Tile_41117ID11.collider:SetHalfLengths(0.3,5.90825,6.5192)
level04.colliders.C_Parent_Tile_41117ID1.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID11.collider)
level04.colliders.C_Parent_Tile_41117ID12 = {}
level04.colliders.C_Parent_Tile_41117ID12.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID12.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_41117ID12.collider:SetMinPos(450.701,28.7617,256)
level04.colliders.C_Parent_Tile_41117ID12.collider:SetMaxPos(518.923,78.3839,383.3)
level04.colliders.C_Parent_Tile_41117ID.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID12.collider)
level04.colliders.C_Parent_Tile_41117ID13 = {}
level04.colliders.C_Parent_Tile_41117ID13.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID13.collider:SetOffset(512,41.5953,300.5)
level04.colliders.C_Parent_Tile_41117ID13.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_41117ID13.collider:SetHalfLengths(0.3,11.8118,44.5)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID13.collider)
level04.colliders.C_Parent_Tile_41117ID14 = {}
level04.colliders.C_Parent_Tile_41117ID14.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID14.collider:SetOffset(508,34.7835,352.5)
level04.colliders.C_Parent_Tile_41117ID14.collider:SetZAxis(-0.470588,0,0.882353)
level04.colliders.C_Parent_Tile_41117ID14.collider:SetHalfLengths(0.3,6.02178,8.5)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID14.collider)
level04.colliders.C_Parent_Tile_41117ID15 = {}
level04.colliders.C_Parent_Tile_41117ID15.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID15.collider:SetOffset(475.5,42.39,334)
level04.colliders.C_Parent_Tile_41117ID15.collider:SetZAxis(-0.106533,0,0.994309)
level04.colliders.C_Parent_Tile_41117ID15.collider:SetHalfLengths(0.3,6.58943,14.0801)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID15.collider)
level04.colliders.C_Parent_Tile_41117ID16 = {}
level04.colliders.C_Parent_Tile_41117ID16.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID16.collider:SetOffset(475.5,43.9794,365.5)
level04.colliders.C_Parent_Tile_41117ID16.collider:SetZAxis(0.0854011,0,0.996347)
level04.colliders.C_Parent_Tile_41117ID16.collider:SetHalfLengths(0.3,5.34059,17.5642)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID16.collider)
level04.colliders.C_Parent_Tile_41117ID17 = {}
level04.colliders.C_Parent_Tile_41117ID17.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID17.collider:SetOffset(469.5,54.5378,347.5)
level04.colliders.C_Parent_Tile_41117ID17.collider:SetZAxis(0.039968,0,0.999201)
level04.colliders.C_Parent_Tile_41117ID17.collider:SetHalfLengths(0.3,6.81649,12.51)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID17.collider)
level04.colliders.C_Parent_Tile_41117ID18 = {}
level04.colliders.C_Parent_Tile_41117ID18.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID18.collider:SetOffset(470,56.3543,371.5)
level04.colliders.C_Parent_Tile_41117ID18.collider:SetZAxis(0,0,1)
level04.colliders.C_Parent_Tile_41117ID18.collider:SetHalfLengths(0.3,7.49767,11.5)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID18.collider)
level04.colliders.C_Parent_Tile_41117ID19 = {}
level04.colliders.C_Parent_Tile_41117ID19.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID19.collider:SetOffset(452,61.1226,373)
level04.colliders.C_Parent_Tile_41117ID19.collider:SetZAxis(0.0995037,0,0.995037)
level04.colliders.C_Parent_Tile_41117ID19.collider:SetHalfLengths(0.3,7.38414,10.0499)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID19.collider)
level04.colliders.C_Parent_Tile_41117ID20 = {}
level04.colliders.C_Parent_Tile_41117ID20.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID20.collider:SetOffset(473.5,58.852,383)
level04.colliders.C_Parent_Tile_41117ID20.collider:SetZAxis(1,0,0)
level04.colliders.C_Parent_Tile_41117ID20.collider:SetHalfLengths(0.3,19.5319,3.5)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID20.collider)
level04.colliders.C_Parent_Tile_41117ID21 = {}
level04.colliders.C_Parent_Tile_41117ID21.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID21.collider:SetOffset(512.398,42.0313,276.597)
level04.colliders.C_Parent_Tile_41117ID21.collider:SetZAxis(0.194075,-0.0294301,-0.980545)
level04.colliders.C_Parent_Tile_41117ID21.collider:SetHalfLengths(5.31104,4.20568,6.45065)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID21.collider)
level04.colliders.C_Parent_Tile_41117ID22 = {}
level04.colliders.C_Parent_Tile_41117ID22.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID22.collider:SetOffset(511.646,42.5646,304.248)
level04.colliders.C_Parent_Tile_41117ID22.collider:SetZAxis(-0.393424,-0.0187671,0.919166)
level04.colliders.C_Parent_Tile_41117ID22.collider:SetHalfLengths(4.91797,3.88453,5.81436)
level04.colliders.C_Parent_Tile_41117ID12.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID22.collider)
level04.colliders.C_Parent_Tile_41117ID23 = {}
level04.colliders.C_Parent_Tile_41117ID23.collider = AABBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID23.collider:SetOffset(0,0,0)
level04.colliders.C_Parent_Tile_41117ID23.collider:SetMinPos(500.715,29.5564,359.905)
level04.colliders.C_Parent_Tile_41117ID23.collider:SetMaxPos(508.26,43.6435,383.149)
level04.colliders.C_Parent_Tile_41117ID.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID23.collider)
level04.colliders.C_Parent_Tile_41117ID24 = {}
level04.colliders.C_Parent_Tile_41117ID24.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID24.collider:SetOffset(502.5,35.8052,364.5)
level04.colliders.C_Parent_Tile_41117ID24.collider:SetZAxis(-0.316228,0,0.948683)
level04.colliders.C_Parent_Tile_41117ID24.collider:SetHalfLengths(0.3,6.24884,4.74342)
level04.colliders.C_Parent_Tile_41117ID23.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID24.collider)
level04.colliders.C_Parent_Tile_41117ID25 = {}
level04.colliders.C_Parent_Tile_41117ID25.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID25.collider:SetOffset(502.5,37.0541,372.5)
level04.colliders.C_Parent_Tile_41117ID25.collider:SetZAxis(0.393919,0,0.919145)
level04.colliders.C_Parent_Tile_41117ID25.collider:SetHalfLengths(0.3,5.68118,3.80789)
level04.colliders.C_Parent_Tile_41117ID23.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID25.collider)
level04.colliders.C_Parent_Tile_41117ID26 = {}
level04.colliders.C_Parent_Tile_41117ID26.collider = OBBCollider.Create(-1)
level04.colliders.C_Parent_Tile_41117ID26.collider:SetOffset(506,37.7352,379.5)
level04.colliders.C_Parent_Tile_41117ID26.collider:SetZAxis(0.496139,0,0.868243)
level04.colliders.C_Parent_Tile_41117ID26.collider:SetHalfLengths(0.3,5.90825,4.03113)
level04.colliders.C_Parent_Tile_41117ID23.collider:AddChild(level04.colliders.C_Parent_Tile_41117ID26.collider)
CollisionHandler.AddAABB(level04.colliders.C_Parent_Tile_41117ID.collider, 3)
level04.colliders.C_Parent_Tile_41117ID1 = nil
level04.colliders.C_Parent_Tile_41117ID2 = nil
level04.colliders.C_Parent_Tile_41117ID3 = nil
level04.colliders.C_Parent_Tile_41117ID4 = nil
level04.colliders.C_Parent_Tile_41117ID5 = nil
level04.colliders.C_Parent_Tile_41117ID6 = nil
level04.colliders.C_Parent_Tile_41117ID7 = nil
level04.colliders.C_Parent_Tile_41117ID8 = nil
level04.colliders.C_Parent_Tile_41117ID9 = nil
level04.colliders.C_Parent_Tile_41117ID10 = nil
level04.colliders.C_Parent_Tile_41117ID11 = nil
level04.colliders.C_Parent_Tile_41117ID12 = nil
level04.colliders.C_Parent_Tile_41117ID13 = nil
level04.colliders.C_Parent_Tile_41117ID14 = nil
level04.colliders.C_Parent_Tile_41117ID15 = nil
level04.colliders.C_Parent_Tile_41117ID16 = nil
level04.colliders.C_Parent_Tile_41117ID17 = nil
level04.colliders.C_Parent_Tile_41117ID18 = nil
level04.colliders.C_Parent_Tile_41117ID19 = nil
level04.colliders.C_Parent_Tile_41117ID20 = nil
level04.colliders.C_Parent_Tile_41117ID21 = nil
level04.colliders.C_Parent_Tile_41117ID22 = nil
level04.colliders.C_Parent_Tile_41117ID23 = nil
level04.colliders.C_Parent_Tile_41117ID24 = nil
level04.colliders.C_Parent_Tile_41117ID25 = nil
level04.colliders.C_Parent_Tile_41117ID26 = nil
end
level04.unload = function()
level04.props.tile436ID = nil
Gear.UnbindInstance(level04.props.t4s144ID.transformID)
level04.props.t4s144ID = nil
Gear.UnbindInstance(level04.props.t4s245ID.transformID)
level04.props.t4s245ID = nil
Gear.UnbindInstance(level04.props.t4s346ID.transformID)
level04.props.t4s346ID = nil
Gear.UnbindInstance(level04.props.t4s447ID.transformID)
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
Gear.UnbindInstance(level04.props.PineTree_NoCollider11050961ID.transformID)
level04.props.PineTree_NoCollider11050961ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11051962ID.transformID)
level04.props.PineTree_NoCollider11051962ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11052963ID.transformID)
level04.props.PineTree_NoCollider11052963ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11053964ID.transformID)
level04.props.PineTree_NoCollider11053964ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11054965ID.transformID)
level04.props.PineTree_NoCollider11054965ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11055966ID.transformID)
level04.props.PineTree_NoCollider11055966ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11056967ID.transformID)
level04.props.PineTree_NoCollider11056967ID = nil
Gear.UnbindInstance(level04.props.PineTree_NoCollider11058969ID.transformID)
level04.props.PineTree_NoCollider11058969ID = nil
Gear.UnbindInstance(level04.props.House211980ID.transformID)
level04.props.House211980ID = nil
Gear.UnbindInstance(level04.props.House213981ID.transformID)
level04.props.House213981ID = nil
level04.colliders.C_Parent_Tile_411114ID = nil
level04.colliders.C_Parent_Tile_421115ID = nil
level04.colliders.C_Parent_Tile_431116ID = nil
level04.colliders.C_Parent_Tile_41117ID = nil
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
level05.props.t4s5892ID = {}
level05.props.t4s5892ID.model = Assets.LoadModel('Models/tile4_s5.model')
level05.props.t4s5892ID.transformID = Gear.BindStaticInstance(level05.props.t4s5892ID.model)
Transform.SetPosition(level05.props.t4s5892ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level05.props.t4s5892ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.t4s5892ID.transformID, {x=0, y=0, z=0})
level05.props.Crystal899ID = {}
level05.props.Crystal899ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal899ID.transformID = Gear.BindStaticInstance(level05.props.Crystal899ID.model)
Transform.SetPosition(level05.props.Crystal899ID.transformID, {x=559.253, y=69.928, z=424.467})
Transform.SetScaleNonUniform(level05.props.Crystal899ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal899ID.transformID, {x=2.02975, y=0, z=0.195233})
Light.addLight(553.253, 69.928, 432.467, 0, 1, 1, 30,4)
level05.props.Crystal1900ID = {}
level05.props.Crystal1900ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal1900ID.transformID = Gear.BindStaticInstance(level05.props.Crystal1900ID.model)
Transform.SetPosition(level05.props.Crystal1900ID.transformID, {x=588, y=91.3975, z=457})
Transform.SetScaleNonUniform(level05.props.Crystal1900ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal1900ID.transformID, {x=0, y=0.963286, z=2.71347})
Light.addLight(586, 83.3975, 455, 0, 1, 1, 30,4)
level05.props.Crystal2901ID = {}
level05.props.Crystal2901ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal2901ID.transformID = Gear.BindStaticInstance(level05.props.Crystal2901ID.model)
Transform.SetPosition(level05.props.Crystal2901ID.transformID, {x=565.5, y=91.4545, z=480.75})
Transform.SetScaleNonUniform(level05.props.Crystal2901ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal2901ID.transformID, {x=0, y=-1.08236, z=-2.43984})
Light.addLight(573.5, 87.4545, 480.75, 0, 1, 1, 30,4)
level05.props.Crystal3902ID = {}
level05.props.Crystal3902ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal3902ID.transformID = Gear.BindStaticInstance(level05.props.Crystal3902ID.model)
Transform.SetPosition(level05.props.Crystal3902ID.transformID, {x=547.152, y=76.9418, z=460.579})
Transform.SetScaleNonUniform(level05.props.Crystal3902ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal3902ID.transformID, {x=-2.16321, y=0, z=-1.00929})
Light.addLight(555.152, 76.9418, 452.579, 0, 1, 1, 30,4)
level05.props.Crystal4903ID = {}
level05.props.Crystal4903ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal4903ID.transformID = Gear.BindStaticInstance(level05.props.Crystal4903ID.model)
Transform.SetPosition(level05.props.Crystal4903ID.transformID, {x=583.5, y=103, z=512.5})
Transform.SetScaleNonUniform(level05.props.Crystal4903ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal4903ID.transformID, {x=0, y=0, z=-2.71513})
Light.addLight(587.5, 95, 516.5, 0, 1, 1, 30,4)
level05.props.Crystal5904ID = {}
level05.props.Crystal5904ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal5904ID.transformID = Gear.BindStaticInstance(level05.props.Crystal5904ID.model)
Transform.SetPosition(level05.props.Crystal5904ID.transformID, {x=578, y=90.3125, z=538.5})
Transform.SetScaleNonUniform(level05.props.Crystal5904ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal5904ID.transformID, {x=0, y=0, z=-1.3005})
Light.addLight(586, 90.3125, 538.5, 0, 1, 1, 30,4)
level05.props.Crystal6905ID = {}
level05.props.Crystal6905ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal6905ID.transformID = Gear.BindStaticInstance(level05.props.Crystal6905ID.model)
Transform.SetPosition(level05.props.Crystal6905ID.transformID, {x=612.239, y=100.25, z=532.578})
Transform.SetScaleNonUniform(level05.props.Crystal6905ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal6905ID.transformID, {x=0, y=0, z=2.22123})
Light.addLight(604.239, 98.25, 532.578, 0, 1, 1, 30,4)
level05.props.Crystal7906ID = {}
level05.props.Crystal7906ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal7906ID.transformID = Gear.BindStaticInstance(level05.props.Crystal7906ID.model)
Transform.SetPosition(level05.props.Crystal7906ID.transformID, {x=601, y=111.625, z=547.27})
Transform.SetScaleNonUniform(level05.props.Crystal7906ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal7906ID.transformID, {x=0, y=0, z=-3.2123})
Light.addLight(601, 103.625, 547.27, 0, 1, 1, 30,4)
level05.props.Crystal8907ID = {}
level05.props.Crystal8907ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal8907ID.transformID = Gear.BindStaticInstance(level05.props.Crystal8907ID.model)
Transform.SetPosition(level05.props.Crystal8907ID.transformID, {x=613.5, y=104.625, z=575.5})
Transform.SetScaleNonUniform(level05.props.Crystal8907ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal8907ID.transformID, {x=0, y=0, z=2.12905})
Light.addLight(609.5, 102.625, 573.5, 0, 1, 1, 30,4)
level05.props.Crystal9908ID = {}
level05.props.Crystal9908ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal9908ID.transformID = Gear.BindStaticInstance(level05.props.Crystal9908ID.model)
Transform.SetPosition(level05.props.Crystal9908ID.transformID, {x=606.05, y=86.6875, z=481.468})
Transform.SetScaleNonUniform(level05.props.Crystal9908ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal9908ID.transformID, {x=-0.339734, y=-0.0166414, z=2.09508})
Light.addLight(598.05, 86.6875, 485.468, 0, 1, 1, 30,4)
level05.props.Crystal10909ID = {}
level05.props.Crystal10909ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal10909ID.transformID = Gear.BindStaticInstance(level05.props.Crystal10909ID.model)
Transform.SetPosition(level05.props.Crystal10909ID.transformID, {x=509.706, y=60.7813, z=447.76})
Transform.SetScaleNonUniform(level05.props.Crystal10909ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal10909ID.transformID, {x=-1.34518, y=0, z=-0.0526855})
Light.addLight(505.706, 60.7813, 439.76, 0, 1, 1, 30,4)
level05.props.Crystal11910ID = {}
level05.props.Crystal11910ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal11910ID.transformID = Gear.BindStaticInstance(level05.props.Crystal11910ID.model)
Transform.SetPosition(level05.props.Crystal11910ID.transformID, {x=514.321, y=75.75, z=405.863})
Transform.SetScaleNonUniform(level05.props.Crystal11910ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal11910ID.transformID, {x=0.259607, y=0.695798, z=1.30789})
Light.addLight(508.321, 75.75, 409.863, 0, 1, 1, 30,4)
level05.props.Crystal12911ID = {}
level05.props.Crystal12911ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal12911ID.transformID = Gear.BindStaticInstance(level05.props.Crystal12911ID.model)
Transform.SetPosition(level05.props.Crystal12911ID.transformID, {x=519.119, y=48.9107, z=404.748})
Transform.SetScaleNonUniform(level05.props.Crystal12911ID.transformID, 1, 1, 1)
Transform.SetRotation(level05.props.Crystal12911ID.transformID, {x=1.2884, y=0, z=0.54079})
Light.addLight(511.119, 48.9107, 412.748, 0, 1, 1, 30,4)
level05.props.Crystal131971ID = {}
level05.props.Crystal131971ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal131971ID.transformID = Gear.BindStaticInstance(level05.props.Crystal131971ID.model)
Transform.SetPosition(level05.props.Crystal131971ID.transformID, {x=378.5, y=97.125, z=568.5})
Transform.SetScaleNonUniform(level05.props.Crystal131971ID.transformID, 2.51755, 2.51755, 2.51755)
Transform.SetRotation(level05.props.Crystal131971ID.transformID, {x=0.169434, y=0.943848, z=-0.234497})
Light.addLight(378.5, 105.125, 568.5, 0, 1, 1, 30,4)
level05.props.Crystal132972ID = {}
level05.props.Crystal132972ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal132972ID.transformID = Gear.BindStaticInstance(level05.props.Crystal132972ID.model)
Transform.SetPosition(level05.props.Crystal132972ID.transformID, {x=432.75, y=106.5, z=654})
Transform.SetScaleNonUniform(level05.props.Crystal132972ID.transformID, 2.78713, 2.78713, 2.78713)
Transform.SetRotation(level05.props.Crystal132972ID.transformID, {x=-0.105774, y=0.899902, z=0.40332})
Light.addLight(432.75, 114.5, 654, 0, 1, 1, 30,4)
level05.props.Crystal133973ID = {}
level05.props.Crystal133973ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal133973ID.transformID = Gear.BindStaticInstance(level05.props.Crystal133973ID.model)
Transform.SetPosition(level05.props.Crystal133973ID.transformID, {x=515.007, y=72.6179, z=390.03})
Transform.SetScaleNonUniform(level05.props.Crystal133973ID.transformID, 1.58895, 1.58895, 1.58895)
Transform.SetRotation(level05.props.Crystal133973ID.transformID, {x=-0.62207, y=0.738281, z=0.92485})
Light.addLight(515.007, 80.6179, 390.03, 0, 1, 1, 30,4)
level05.props.Crystal134974ID = {}
level05.props.Crystal134974ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal134974ID.transformID = Gear.BindStaticInstance(level05.props.Crystal134974ID.model)
Transform.SetPosition(level05.props.Crystal134974ID.transformID, {x=543, y=84.25, z=500.25})
Transform.SetScaleNonUniform(level05.props.Crystal134974ID.transformID, 1.90472, 1.90472, 1.90472)
Transform.SetRotation(level05.props.Crystal134974ID.transformID, {x=0.624567, y=0.864237, z=0.574057})
Light.addLight(537, 86.25, 504.25, 0, 1, 1, 30,4)
level05.props.Crystal135975ID = {}
level05.props.Crystal135975ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal135975ID.transformID = Gear.BindStaticInstance(level05.props.Crystal135975ID.model)
Transform.SetPosition(level05.props.Crystal135975ID.transformID, {x=609, y=121.875, z=560.5})
Transform.SetScaleNonUniform(level05.props.Crystal135975ID.transformID, 2.54776, 2.54776, 2.54776)
Transform.SetRotation(level05.props.Crystal135975ID.transformID, {x=0.0409851, y=0.991211, z=-0.0862427})
Light.addLight(609, 129.875, 560.5, 0, 1, 1, 30,4)
level05.props.Crystal136976ID = {}
level05.props.Crystal136976ID.model = Assets.LoadModel('Models/ice_crystal.model')
level05.props.Crystal136976ID.transformID = Gear.BindStaticInstance(level05.props.Crystal136976ID.model)
Transform.SetPosition(level05.props.Crystal136976ID.transformID, {x=482.561, y=99.5138, z=552.706})
Transform.SetScaleNonUniform(level05.props.Crystal136976ID.transformID, 2.8076, 2.8076, 2.8076)
Transform.SetRotation(level05.props.Crystal136976ID.transformID, {x=-1.48201, y=0.611816, z=-0.234375})
Light.addLight(482.561, 99.5138, 540.706, 0, 1, 1, 30,4)
local BaseGoblin381019ID = CreateEnemy(ENEMY_MELEE, {x=467.25, y=60.4688, z=498.75})
BaseGoblin381019ID.moveSpeed = 9
BaseGoblin381019ID.health = 50
BaseGoblin381019ID.visionRange = 30

local BaseGoblin391020ID = CreateEnemy(ENEMY_MELEE, {x=463, y=61.0938, z=504})
BaseGoblin391020ID.moveSpeed = 9
BaseGoblin391020ID.health = 50
BaseGoblin391020ID.visionRange = 30

local BaseGoblin401021ID = CreateEnemy(ENEMY_MELEE, {x=471, y=60.7188, z=508.5})
BaseGoblin401021ID.moveSpeed = 9
BaseGoblin401021ID.health = 50
BaseGoblin401021ID.visionRange = 30

local BaseGoblin411022ID = CreateEnemy(ENEMY_MELEE, {x=472.5, y=60.3125, z=503.25})
BaseGoblin411022ID.moveSpeed = 9
BaseGoblin411022ID.health = 50
BaseGoblin411022ID.visionRange = 30

local BaseGoblin421023ID = CreateEnemy(ENEMY_MELEE, {x=469.25, y=60.4688, z=503})
BaseGoblin421023ID.moveSpeed = 9
BaseGoblin421023ID.health = 50
BaseGoblin421023ID.visionRange = 30

local BaseGoblin431024ID = CreateEnemy(ENEMY_MELEE, {x=517, y=78.5, z=569.5})
BaseGoblin431024ID.moveSpeed = 9
BaseGoblin431024ID.health = 50
BaseGoblin431024ID.visionRange = 30

local BaseGoblin441025ID = CreateEnemy(ENEMY_MELEE, {x=507.75, y=78, z=565})
BaseGoblin441025ID.moveSpeed = 9
BaseGoblin441025ID.health = 50
BaseGoblin441025ID.visionRange = 30

local BaseGoblin451026ID = CreateEnemy(ENEMY_MELEE, {x=514.5, y=77.125, z=561.5})
BaseGoblin451026ID.moveSpeed = 9
BaseGoblin451026ID.health = 50
BaseGoblin451026ID.visionRange = 30

local BaseGoblin461027ID = CreateEnemy(ENEMY_MELEE, {x=518, y=76.25, z=558.5})
BaseGoblin461027ID.moveSpeed = 9
BaseGoblin461027ID.health = 50
BaseGoblin461027ID.visionRange = 30

local BaseGoblin471028ID = CreateEnemy(ENEMY_MELEE, {x=510.25, y=75.5625, z=556.5})
BaseGoblin471028ID.moveSpeed = 9
BaseGoblin471028ID.health = 50
BaseGoblin471028ID.visionRange = 30

local BaseGoblin481029ID = CreateEnemy(ENEMY_MELEE, {x=414.75, y=84, z=541})
BaseGoblin481029ID.moveSpeed = 9
BaseGoblin481029ID.health = 50
BaseGoblin481029ID.visionRange = 30

local BaseGoblin491030ID = CreateEnemy(ENEMY_MELEE, {x=421.25, y=83.875, z=546})
BaseGoblin491030ID.moveSpeed = 9
BaseGoblin491030ID.health = 50
BaseGoblin491030ID.visionRange = 30

local BaseGoblin501031ID = CreateEnemy(ENEMY_MELEE, {x=419.75, y=83.9375, z=540})
BaseGoblin501031ID.moveSpeed = 9
BaseGoblin501031ID.health = 50
BaseGoblin501031ID.visionRange = 30

local BaseGoblin511032ID = CreateEnemy(ENEMY_MELEE, {x=423.25, y=83.4375, z=535})
BaseGoblin511032ID.moveSpeed = 9
BaseGoblin511032ID.health = 50
BaseGoblin511032ID.visionRange = 30

local BaseGoblin521033ID = CreateEnemy(ENEMY_MELEE, {x=427.25, y=83.25, z=540.5})
BaseGoblin521033ID.moveSpeed = 9
BaseGoblin521033ID.health = 50
BaseGoblin521033ID.visionRange = 30

local BaseGoblin531034ID = CreateEnemy(ENEMY_MELEE, {x=450, y=84.5, z=583})
BaseGoblin531034ID.moveSpeed = 9
BaseGoblin531034ID.health = 50
BaseGoblin531034ID.visionRange = 30

local BaseGoblin541035ID = CreateEnemy(ENEMY_MELEE, {x=452.25, y=84.5, z=587.5})
BaseGoblin541035ID.moveSpeed = 9
BaseGoblin541035ID.health = 50
BaseGoblin541035ID.visionRange = 30

local BaseGoblin551036ID = CreateEnemy(ENEMY_MELEE, {x=453, y=84, z=580})
BaseGoblin551036ID.moveSpeed = 9
BaseGoblin551036ID.health = 50
BaseGoblin551036ID.visionRange = 30

local BaseGoblin561037ID = CreateEnemy(ENEMY_MELEE, {x=459, y=84.5, z=584.5})
BaseGoblin561037ID.moveSpeed = 9
BaseGoblin561037ID.health = 50
BaseGoblin561037ID.visionRange = 30

local BaseGoblin571038ID = CreateEnemy(ENEMY_MELEE, {x=456.5, y=84.75, z=589.5})
BaseGoblin571038ID.moveSpeed = 9
BaseGoblin571038ID.health = 50
BaseGoblin571038ID.visionRange = 30

local BaseGoblin581039ID = CreateEnemy(ENEMY_MELEE, {x=580.5, y=55.9063, z=460.75})
BaseGoblin581039ID.moveSpeed = 9
BaseGoblin581039ID.health = 50
BaseGoblin581039ID.visionRange = 30

local BaseGoblin591040ID = CreateEnemy(ENEMY_MELEE, {x=575, y=55.25, z=462.25})
BaseGoblin591040ID.moveSpeed = 9
BaseGoblin591040ID.health = 50
BaseGoblin591040ID.visionRange = 30

local BaseGoblin601041ID = CreateEnemy(ENEMY_MELEE, {x=575, y=53.9688, z=455.75})
BaseGoblin601041ID.moveSpeed = 9
BaseGoblin601041ID.health = 50
BaseGoblin601041ID.visionRange = 30

local BaseGoblin611042ID = CreateEnemy(ENEMY_MELEE, {x=567.5, y=53.4375, z=457.5})
BaseGoblin611042ID.moveSpeed = 9
BaseGoblin611042ID.health = 50
BaseGoblin611042ID.visionRange = 30

local BaseGoblin621043ID = CreateEnemy(ENEMY_MELEE, {x=568.5, y=52.75, z=454})
BaseGoblin621043ID.moveSpeed = 9
BaseGoblin621043ID.health = 50
BaseGoblin621043ID.visionRange = 30

local BaseGoblin631044ID = CreateEnemy(ENEMY_MELEE, {x=603.5, y=75.4375, z=541})
BaseGoblin631044ID.moveSpeed = 9
BaseGoblin631044ID.health = 50
BaseGoblin631044ID.visionRange = 30

local BaseGoblin641045ID = CreateEnemy(ENEMY_MELEE, {x=594, y=74.625, z=541.5})
BaseGoblin641045ID.moveSpeed = 9
BaseGoblin641045ID.health = 50
BaseGoblin641045ID.visionRange = 30

local BaseGoblin651046ID = CreateEnemy(ENEMY_MELEE, {x=600, y=73.4375, z=533.5})
BaseGoblin651046ID.moveSpeed = 9
BaseGoblin651046ID.health = 50
BaseGoblin651046ID.visionRange = 30

local BaseGoblin661047ID = CreateEnemy(ENEMY_MELEE, {x=597, y=73.375, z=534.5})
BaseGoblin661047ID.moveSpeed = 9
BaseGoblin661047ID.health = 50
BaseGoblin661047ID.visionRange = 30

local BaseGoblin671048ID = CreateEnemy(ENEMY_MELEE, {x=599, y=74.625, z=540})
BaseGoblin671048ID.moveSpeed = 9
BaseGoblin671048ID.health = 50
BaseGoblin671048ID.visionRange = 30

local BaseGoblin681049ID = CreateEnemy(ENEMY_MELEE, {x=342.25, y=102.688, z=733.5})
BaseGoblin681049ID.moveSpeed = 9
BaseGoblin681049ID.health = 50
BaseGoblin681049ID.visionRange = 30

local BaseGoblin691050ID = CreateEnemy(ENEMY_MELEE, {x=342.5, y=103.063, z=726})
BaseGoblin691050ID.moveSpeed = 9
BaseGoblin691050ID.health = 50
BaseGoblin691050ID.visionRange = 30

local BaseGoblin701051ID = CreateEnemy(ENEMY_MELEE, {x=349.25, y=102.813, z=734})
BaseGoblin701051ID.moveSpeed = 9
BaseGoblin701051ID.health = 50
BaseGoblin701051ID.visionRange = 30

local BaseGoblin711052ID = CreateEnemy(ENEMY_MELEE, {x=351, y=103.313, z=725})
BaseGoblin711052ID.moveSpeed = 9
BaseGoblin711052ID.health = 50
BaseGoblin711052ID.visionRange = 30

local BaseGoblin721053ID = CreateEnemy(ENEMY_MELEE, {x=345.25, y=103, z=730})
BaseGoblin721053ID.moveSpeed = 9
BaseGoblin721053ID.health = 50
BaseGoblin721053ID.visionRange = 30

local BaseGoblin731054ID = CreateEnemy(ENEMY_MELEE, {x=242.125, y=99.6875, z=647.5})
BaseGoblin731054ID.moveSpeed = 9
BaseGoblin731054ID.health = 50
BaseGoblin731054ID.visionRange = 30

local BaseGoblin741055ID = CreateEnemy(ENEMY_MELEE, {x=247.875, y=99.8125, z=643})
BaseGoblin741055ID.moveSpeed = 9
BaseGoblin741055ID.health = 50
BaseGoblin741055ID.visionRange = 30

local BaseGoblin751056ID = CreateEnemy(ENEMY_MELEE, {x=253.875, y=98.0625, z=648.5})
BaseGoblin751056ID.moveSpeed = 9
BaseGoblin751056ID.health = 50
BaseGoblin751056ID.visionRange = 30

local BaseGoblin761057ID = CreateEnemy(ENEMY_MELEE, {x=246, y=97.625, z=655})
BaseGoblin761057ID.moveSpeed = 9
BaseGoblin761057ID.health = 50
BaseGoblin761057ID.visionRange = 30

local BaseGoblin771058ID = CreateEnemy(ENEMY_MELEE, {x=248.75, y=98.625, z=648.5})
BaseGoblin771058ID.moveSpeed = 9
BaseGoblin771058ID.health = 50
BaseGoblin771058ID.visionRange = 30

local BaseGoblin781059ID = CreateEnemy(ENEMY_MELEE, {x=178.25, y=127.25, z=552.5})
BaseGoblin781059ID.moveSpeed = 9
BaseGoblin781059ID.health = 50
BaseGoblin781059ID.visionRange = 30

local BaseGoblin791060ID = CreateEnemy(ENEMY_MELEE, {x=189.125, y=126.875, z=551.5})
BaseGoblin791060ID.moveSpeed = 9
BaseGoblin791060ID.health = 50
BaseGoblin791060ID.visionRange = 30

local BaseGoblin801061ID = CreateEnemy(ENEMY_MELEE, {x=183.25, y=126.625, z=567.5})
BaseGoblin801061ID.moveSpeed = 9
BaseGoblin801061ID.health = 50
BaseGoblin801061ID.visionRange = 30

local BaseGoblin811062ID = CreateEnemy(ENEMY_MELEE, {x=194.875, y=126.125, z=563})
BaseGoblin811062ID.moveSpeed = 9
BaseGoblin811062ID.health = 50
BaseGoblin811062ID.visionRange = 30

local BaseGoblin821063ID = CreateEnemy(ENEMY_MELEE, {x=185.125, y=126.813, z=559})
BaseGoblin821063ID.moveSpeed = 9
BaseGoblin821063ID.health = 50
BaseGoblin821063ID.visionRange = 30

local BaseGoblin831064ID = CreateEnemy(ENEMY_MELEE, {x=163.875, y=93.8125, z=739.5})
BaseGoblin831064ID.moveSpeed = 9
BaseGoblin831064ID.health = 50
BaseGoblin831064ID.visionRange = 30

local BaseGoblin841065ID = CreateEnemy(ENEMY_MELEE, {x=167.125, y=89.625, z=727})
BaseGoblin841065ID.moveSpeed = 9
BaseGoblin841065ID.health = 50
BaseGoblin841065ID.visionRange = 30

local BaseGoblin851066ID = CreateEnemy(ENEMY_MELEE, {x=174, y=92.5, z=737})
BaseGoblin851066ID.moveSpeed = 9
BaseGoblin851066ID.health = 50
BaseGoblin851066ID.visionRange = 30

local BaseGoblin861067ID = CreateEnemy(ENEMY_MELEE, {x=179.125, y=89.875, z=729.5})
BaseGoblin861067ID.moveSpeed = 9
BaseGoblin861067ID.health = 50
BaseGoblin861067ID.visionRange = 30

local BaseGoblin871068ID = CreateEnemy(ENEMY_MELEE, {x=169.25, y=91.4375, z=733})
BaseGoblin871068ID.moveSpeed = 9
BaseGoblin871068ID.health = 50
BaseGoblin871068ID.visionRange = 30

local BaseGoblin881069ID = CreateEnemy(ENEMY_MELEE, {x=368.25, y=129, z=628})
BaseGoblin881069ID.moveSpeed = 9
BaseGoblin881069ID.health = 50
BaseGoblin881069ID.visionRange = 30

local BaseGoblin891070ID = CreateEnemy(ENEMY_MELEE, {x=360, y=128.875, z=625})
BaseGoblin891070ID.moveSpeed = 9
BaseGoblin891070ID.health = 50
BaseGoblin891070ID.visionRange = 30

local BaseGoblin901071ID = CreateEnemy(ENEMY_MELEE, {x=365, y=126.938, z=638})
BaseGoblin901071ID.moveSpeed = 9
BaseGoblin901071ID.health = 50
BaseGoblin901071ID.visionRange = 30

local BaseGoblin911072ID = CreateEnemy(ENEMY_MELEE, {x=360.25, y=126.938, z=635.5})
BaseGoblin911072ID.moveSpeed = 9
BaseGoblin911072ID.health = 50
BaseGoblin911072ID.visionRange = 30

local BaseGoblin921073ID = CreateEnemy(ENEMY_MELEE, {x=370, y=128.375, z=633})
BaseGoblin921073ID.moveSpeed = 9
BaseGoblin921073ID.health = 50
BaseGoblin921073ID.visionRange = 30

local BaseGoblin931074ID = CreateEnemy(ENEMY_MELEE, {x=331.75, y=142.125, z=522.5})
BaseGoblin931074ID.moveSpeed = 9
BaseGoblin931074ID.health = 50
BaseGoblin931074ID.visionRange = 30

local BaseGoblin941075ID = CreateEnemy(ENEMY_MELEE, {x=345, y=142.125, z=523.5})
BaseGoblin941075ID.moveSpeed = 9
BaseGoblin941075ID.health = 50
BaseGoblin941075ID.visionRange = 30

local BaseGoblin951076ID = CreateEnemy(ENEMY_MELEE, {x=297.75, y=142.125, z=522.5})
BaseGoblin951076ID.moveSpeed = 9
BaseGoblin951076ID.health = 50
BaseGoblin951076ID.visionRange = 30

local BaseGoblin961077ID = CreateEnemy(ENEMY_MELEE, {x=304.75, y=142.125, z=523})
BaseGoblin961077ID.moveSpeed = 9
BaseGoblin961077ID.health = 50
BaseGoblin961077ID.visionRange = 30

level05.colliders.C_Parent_Tile_51136ID = {}
level05.colliders.C_Parent_Tile_51136ID.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID.collider:SetMinPos(395.7,30.4293,384.918)
level05.colliders.C_Parent_Tile_51136ID.collider:SetMaxPos(640.3,106.093,640)
level05.colliders.C_Parent_Tile_51136ID.collider:SetPos(0,0,0)
level05.colliders.C_Parent_Tile_51136ID1 = {}
level05.colliders.C_Parent_Tile_51136ID1.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID1.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID1.collider:SetMinPos(395.7,30.4293,384.918)
level05.colliders.C_Parent_Tile_51136ID1.collider:SetMaxPos(593.274,90.7195,613.247)
level05.colliders.C_Parent_Tile_51136ID.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID1.collider)
level05.colliders.C_Parent_Tile_51136ID2 = {}
level05.colliders.C_Parent_Tile_51136ID2.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID2.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID2.collider:SetMinPos(401.71,59.0921,384.918)
level05.colliders.C_Parent_Tile_51136ID2.collider:SetMaxPos(455.288,87.744,528)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID2.collider)
level05.colliders.C_Parent_Tile_51136ID3 = {}
level05.colliders.C_Parent_Tile_51136ID3.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID3.collider:SetOffset(454,65.395,388.5)
level05.colliders.C_Parent_Tile_51136ID3.collider:SetZAxis(0.274721,0,0.961524)
level05.colliders.C_Parent_Tile_51136ID3.collider:SetHalfLengths(0.3,5.52114,3.64005)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID3.collider)
level05.colliders.C_Parent_Tile_51136ID4 = {}
level05.colliders.C_Parent_Tile_51136ID4.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID4.collider:SetOffset(451,67.219,399)
level05.colliders.C_Parent_Tile_51136ID4.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_51136ID4.collider:SetHalfLengths(0.3,8.12685,3.16228)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID4.collider)
level05.colliders.C_Parent_Tile_51136ID5 = {}
level05.colliders.C_Parent_Tile_51136ID5.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID5.collider:SetOffset(444,70.3458,401)
level05.colliders.C_Parent_Tile_51136ID5.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.C_Parent_Tile_51136ID5.collider:SetHalfLengths(0.3,7.08457,4.12311)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID5.collider)
level05.colliders.C_Parent_Tile_51136ID6 = {}
level05.colliders.C_Parent_Tile_51136ID6.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID6.collider:SetOffset(434.5,72.4304,403.5)
level05.colliders.C_Parent_Tile_51136ID6.collider:SetZAxis(-0.964764,0,0.263117)
level05.colliders.C_Parent_Tile_51136ID6.collider:SetHalfLengths(0.3,7.08456,5.70088)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID6.collider)
level05.colliders.C_Parent_Tile_51136ID7 = {}
level05.colliders.C_Parent_Tile_51136ID7.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID7.collider:SetOffset(424,74.515,408.5)
level05.colliders.C_Parent_Tile_51136ID7.collider:SetZAxis(-0.819232,0,0.573462)
level05.colliders.C_Parent_Tile_51136ID7.collider:SetHalfLengths(0.3,7.34514,6.10328)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID7.collider)
level05.colliders.C_Parent_Tile_51136ID8 = {}
level05.colliders.C_Parent_Tile_51136ID8.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID8.collider:SetOffset(416.5,76.8601,414)
level05.colliders.C_Parent_Tile_51136ID8.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.C_Parent_Tile_51136ID8.collider:SetHalfLengths(0.3,6.30286,3.20156)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID8.collider)
level05.colliders.C_Parent_Tile_51136ID9 = {}
level05.colliders.C_Parent_Tile_51136ID9.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID9.collider:SetOffset(410.5,78.163,416.5)
level05.colliders.C_Parent_Tile_51136ID9.collider:SetZAxis(-0.98995,0,0.141421)
level05.colliders.C_Parent_Tile_51136ID9.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID9.collider)
level05.colliders.C_Parent_Tile_51136ID10 = {}
level05.colliders.C_Parent_Tile_51136ID10.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID10.collider:SetOffset(404.5,78.163,426.5)
level05.colliders.C_Parent_Tile_51136ID10.collider:SetZAxis(-0.254493,0,0.967075)
level05.colliders.C_Parent_Tile_51136ID10.collider:SetHalfLengths(0.3,5,9.82344)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID10.collider)
level05.colliders.C_Parent_Tile_51136ID11 = {}
level05.colliders.C_Parent_Tile_51136ID11.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID11.collider:SetOffset(403.5,78.163,436.5)
level05.colliders.C_Parent_Tile_51136ID11.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_51136ID11.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID11.collider)
level05.colliders.C_Parent_Tile_51136ID12 = {}
level05.colliders.C_Parent_Tile_51136ID12.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID12.collider:SetOffset(409,78.5251,479.5)
level05.colliders.C_Parent_Tile_51136ID12.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_51136ID12.collider:SetHalfLengths(0.3,9.21893,48.5)
level05.colliders.C_Parent_Tile_51136ID2.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID12.collider)
level05.colliders.C_Parent_Tile_51136ID13 = {}
level05.colliders.C_Parent_Tile_51136ID13.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID13.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID13.collider:SetMinPos(417.7,52.0567,384.983)
level05.colliders.C_Parent_Tile_51136ID13.collider:SetMaxPos(470.3,90.4086,476.013)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID13.collider)
level05.colliders.C_Parent_Tile_51136ID14 = {}
level05.colliders.C_Parent_Tile_51136ID14.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID14.collider:SetOffset(454.5,64.8738,395)
level05.colliders.C_Parent_Tile_51136ID14.collider:SetZAxis(-0.164399,0,0.986394)
level05.colliders.C_Parent_Tile_51136ID14.collider:SetHalfLengths(0.3,7.34514,3.04138)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID14.collider)
level05.colliders.C_Parent_Tile_51136ID15 = {}
level05.colliders.C_Parent_Tile_51136ID15.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID15.collider:SetOffset(469.5,59.4018,394)
level05.colliders.C_Parent_Tile_51136ID15.collider:SetZAxis(-0.05547,0,0.99846)
level05.colliders.C_Parent_Tile_51136ID15.collider:SetHalfLengths(0.3,5.26057,9.01388)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID15.collider)
level05.colliders.C_Parent_Tile_51136ID16 = {}
level05.colliders.C_Parent_Tile_51136ID16.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID16.collider:SetOffset(422.5,59.6624,444)
level05.colliders.C_Parent_Tile_51136ID16.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_51136ID16.collider:SetHalfLengths(0.3,5.78172,2.5)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID16.collider)
level05.colliders.C_Parent_Tile_51136ID17 = {}
level05.colliders.C_Parent_Tile_51136ID17.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID17.collider:SetOffset(426.5,60.4441,440.5)
level05.colliders.C_Parent_Tile_51136ID17.collider:SetZAxis(0.393919,0,-0.919145)
level05.colliders.C_Parent_Tile_51136ID17.collider:SetHalfLengths(0.3,5.26057,3.80789)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID17.collider)
level05.colliders.C_Parent_Tile_51136ID18 = {}
level05.colliders.C_Parent_Tile_51136ID18.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID18.collider:SetOffset(432.5,60.1836,433.5)
level05.colliders.C_Parent_Tile_51136ID18.collider:SetZAxis(0.789352,0,-0.613941)
level05.colliders.C_Parent_Tile_51136ID18.collider:SetHalfLengths(0.3,8.12685,5.70088)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID18.collider)
level05.colliders.C_Parent_Tile_51136ID19 = {}
level05.colliders.C_Parent_Tile_51136ID19.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID19.collider:SetOffset(443,63.3104,427.5)
level05.colliders.C_Parent_Tile_51136ID19.collider:SetZAxis(0.923077,0,-0.384615)
level05.colliders.C_Parent_Tile_51136ID19.collider:SetHalfLengths(0.3,5.26057,6.5)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID19.collider)
level05.colliders.C_Parent_Tile_51136ID20 = {}
level05.colliders.C_Parent_Tile_51136ID20.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID20.collider:SetOffset(440,70.3458,423.5)
level05.colliders.C_Parent_Tile_51136ID20.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.C_Parent_Tile_51136ID20.collider:SetHalfLengths(0.3,8.64799,3.04138)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID20.collider)
level05.colliders.C_Parent_Tile_51136ID21 = {}
level05.colliders.C_Parent_Tile_51136ID21.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID21.collider:SetOffset(432.5,73.9938,426.5)
level05.colliders.C_Parent_Tile_51136ID21.collider:SetZAxis(-0.874157,0,0.485643)
level05.colliders.C_Parent_Tile_51136ID21.collider:SetHalfLengths(0.3,7.60571,5.14782)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID21.collider)
level05.colliders.C_Parent_Tile_51136ID22 = {}
level05.colliders.C_Parent_Tile_51136ID22.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID22.collider:SetOffset(424,75.8605,430)
level05.colliders.C_Parent_Tile_51136ID22.collider:SetZAxis(-0.970143,0,0.242536)
level05.colliders.C_Parent_Tile_51136ID22.collider:SetHalfLengths(0.3,6.99844,4.12311)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID22.collider)
level05.colliders.C_Parent_Tile_51136ID23 = {}
level05.colliders.C_Parent_Tile_51136ID23.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID23.collider:SetOffset(419,77.8589,453.5)
level05.colliders.C_Parent_Tile_51136ID23.collider:SetZAxis(-0.0444006,0,0.999014)
level05.colliders.C_Parent_Tile_51136ID23.collider:SetHalfLengths(0.3,12.5497,22.5222)
level05.colliders.C_Parent_Tile_51136ID13.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID23.collider)
level05.colliders.C_Parent_Tile_51136ID24 = {}
level05.colliders.C_Parent_Tile_51136ID24.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID24.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID24.collider:SetMinPos(417.7,30.4293,384.951)
level05.colliders.C_Parent_Tile_51136ID24.collider:SetMaxPos(517.24,88.1881,528.006)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID24.collider)
level05.colliders.C_Parent_Tile_51136ID25 = {}
level05.colliders.C_Parent_Tile_51136ID25.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID25.collider:SetOffset(509.5,38.8167,388)
level05.colliders.C_Parent_Tile_51136ID25.collider:SetZAxis(0.164399,0,0.986394)
level05.colliders.C_Parent_Tile_51136ID25.collider:SetHalfLengths(0.3,5,3.04138)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID25.collider)
level05.colliders.C_Parent_Tile_51136ID26 = {}
level05.colliders.C_Parent_Tile_51136ID26.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID26.collider:SetOffset(510.5,38.8167,394.5)
level05.colliders.C_Parent_Tile_51136ID26.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_51136ID26.collider:SetHalfLengths(0.3,6.04229,3.53553)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID26.collider)
level05.colliders.C_Parent_Tile_51136ID27 = {}
level05.colliders.C_Parent_Tile_51136ID27.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID27.collider:SetOffset(514,39.859,402)
level05.colliders.C_Parent_Tile_51136ID27.collider:SetZAxis(0.6,0,0.8)
level05.colliders.C_Parent_Tile_51136ID27.collider:SetHalfLengths(0.3,9.42971,5)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID27.collider)
level05.colliders.C_Parent_Tile_51136ID28 = {}
level05.colliders.C_Parent_Tile_51136ID28.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID28.collider:SetOffset(478,45.5916,394.5)
level05.colliders.C_Parent_Tile_51136ID28.collider:SetZAxis(0.104685,0,0.994505)
level05.colliders.C_Parent_Tile_51136ID28.collider:SetHalfLengths(0.3,8.38743,9.55249)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID28.collider)
level05.colliders.C_Parent_Tile_51136ID29 = {}
level05.colliders.C_Parent_Tile_51136ID29.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID29.collider:SetOffset(474.5,59.1413,407.5)
level05.colliders.C_Parent_Tile_51136ID29.collider:SetZAxis(0.773957,0,0.633238)
level05.colliders.C_Parent_Tile_51136ID29.collider:SetHalfLengths(0.3,15.6834,7.10634)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID29.collider)
level05.colliders.C_Parent_Tile_51136ID30 = {}
level05.colliders.C_Parent_Tile_51136ID30.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID30.collider:SetOffset(479.5,48.4579,408)
level05.colliders.C_Parent_Tile_51136ID30.collider:SetZAxis(-0.124035,0,-0.992278)
level05.colliders.C_Parent_Tile_51136ID30.collider:SetHalfLengths(0.3,5.52114,4.03113)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID30.collider)
level05.colliders.C_Parent_Tile_51136ID31 = {}
level05.colliders.C_Parent_Tile_51136ID31.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID31.collider:SetOffset(421,59.923,477.5)
level05.colliders.C_Parent_Tile_51136ID31.collider:SetZAxis(-0.0298375,0,-0.999555)
level05.colliders.C_Parent_Tile_51136ID31.collider:SetHalfLengths(0.3,5.26057,33.5149)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID31.collider)
level05.colliders.C_Parent_Tile_51136ID32 = {}
level05.colliders.C_Parent_Tile_51136ID32.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID32.collider:SetOffset(450,63.0498,423.5)
level05.colliders.C_Parent_Tile_51136ID32.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.C_Parent_Tile_51136ID32.collider:SetHalfLengths(0.3,6.56343,1.80278)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID32.collider)
level05.colliders.C_Parent_Tile_51136ID33 = {}
level05.colliders.C_Parent_Tile_51136ID33.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID33.collider:SetOffset(447,64.6133,422.5)
level05.colliders.C_Parent_Tile_51136ID33.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_51136ID33.collider:SetHalfLengths(0.3,10.7326,4.03113)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID33.collider)
level05.colliders.C_Parent_Tile_51136ID34 = {}
level05.colliders.C_Parent_Tile_51136ID34.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID34.collider:SetOffset(418.5,70.3092,502)
level05.colliders.C_Parent_Tile_51136ID34.collider:SetZAxis(0.0192272,0,0.999815)
level05.colliders.C_Parent_Tile_51136ID34.collider:SetHalfLengths(0.3,17.8789,26.0048)
level05.colliders.C_Parent_Tile_51136ID24.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID34.collider)
level05.colliders.C_Parent_Tile_51136ID35 = {}
level05.colliders.C_Parent_Tile_51136ID35.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID35.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID35.collider:SetMinPos(449.709,34.5984,405.788)
level05.colliders.C_Parent_Tile_51136ID35.collider:SetMaxPos(523.212,69.3527,483.159)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID35.collider)
level05.colliders.C_Parent_Tile_51136ID36 = {}
level05.colliders.C_Parent_Tile_51136ID36.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID36.collider:SetOffset(520,44.2887,409)
level05.colliders.C_Parent_Tile_51136ID36.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID36.collider:SetHalfLengths(0.3,9.69028,4.24264)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID36.collider)
level05.colliders.C_Parent_Tile_51136ID37 = {}
level05.colliders.C_Parent_Tile_51136ID37.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID37.collider:SetOffset(453.5,63.8316,479)
level05.colliders.C_Parent_Tile_51136ID37.collider:SetZAxis(-0.529999,0,-0.847998)
level05.colliders.C_Parent_Tile_51136ID37.collider:SetHalfLengths(0.3,5.52114,4.71699)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID37.collider)
level05.colliders.C_Parent_Tile_51136ID38 = {}
level05.colliders.C_Parent_Tile_51136ID38.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID38.collider:SetOffset(450.5,63.3104,473)
level05.colliders.C_Parent_Tile_51136ID38.collider:SetZAxis(-0.242536,0,-0.970143)
level05.colliders.C_Parent_Tile_51136ID38.collider:SetHalfLengths(0.3,6.04228,2.06155)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID38.collider)
level05.colliders.C_Parent_Tile_51136ID39 = {}
level05.colliders.C_Parent_Tile_51136ID39.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID39.collider:SetOffset(450.5,62.2681,469)
level05.colliders.C_Parent_Tile_51136ID39.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.C_Parent_Tile_51136ID39.collider:SetHalfLengths(0.3,5.78172,2.06155)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID39.collider)
level05.colliders.C_Parent_Tile_51136ID40 = {}
level05.colliders.C_Parent_Tile_51136ID40.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID40.collider:SetOffset(452.5,61.4864,465)
level05.colliders.C_Parent_Tile_51136ID40.collider:SetZAxis(0.6,0,-0.8)
level05.colliders.C_Parent_Tile_51136ID40.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID40.collider)
level05.colliders.C_Parent_Tile_51136ID41 = {}
level05.colliders.C_Parent_Tile_51136ID41.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID41.collider:SetOffset(456.5,59.1413,462)
level05.colliders.C_Parent_Tile_51136ID41.collider:SetZAxis(0.928477,0,-0.371391)
level05.colliders.C_Parent_Tile_51136ID41.collider:SetHalfLengths(0.3,7.08457,2.69258)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID41.collider)
level05.colliders.C_Parent_Tile_51136ID42 = {}
level05.colliders.C_Parent_Tile_51136ID42.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID42.collider:SetOffset(461.5,57.0567,460.5)
level05.colliders.C_Parent_Tile_51136ID42.collider:SetZAxis(0.980581,0,-0.196116)
level05.colliders.C_Parent_Tile_51136ID42.collider:SetHalfLengths(0.3,7.60571,2.54951)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID42.collider)
level05.colliders.C_Parent_Tile_51136ID43 = {}
level05.colliders.C_Parent_Tile_51136ID43.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID43.collider:SetOffset(466.5,54.451,460)
level05.colliders.C_Parent_Tile_51136ID43.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_51136ID43.collider:SetHalfLengths(0.3,7.60571,2.5)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID43.collider)
level05.colliders.C_Parent_Tile_51136ID44 = {}
level05.colliders.C_Parent_Tile_51136ID44.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID44.collider:SetOffset(471.5,51.8453,460)
level05.colliders.C_Parent_Tile_51136ID44.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_51136ID44.collider:SetHalfLengths(0.3,7.34514,2.5)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID44.collider)
level05.colliders.C_Parent_Tile_51136ID45 = {}
level05.colliders.C_Parent_Tile_51136ID45.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID45.collider:SetOffset(476,49.5001,459.5)
level05.colliders.C_Parent_Tile_51136ID45.collider:SetZAxis(0.970143,0,-0.242536)
level05.colliders.C_Parent_Tile_51136ID45.collider:SetHalfLengths(0.3,6.04229,2.06155)
level05.colliders.C_Parent_Tile_51136ID35.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID45.collider)
level05.colliders.C_Parent_Tile_51136ID46 = {}
level05.colliders.C_Parent_Tile_51136ID46.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID46.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID46.collider:SetMinPos(395.743,38.2464,411.76)
level05.colliders.C_Parent_Tile_51136ID46.collider:SetMaxPos(527.18,89.9378,532.154)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID46.collider)
level05.colliders.C_Parent_Tile_51136ID47 = {}
level05.colliders.C_Parent_Tile_51136ID47.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID47.collider:SetOffset(525,48.979,413.5)
level05.colliders.C_Parent_Tile_51136ID47.collider:SetZAxis(0.8,0,0.6)
level05.colliders.C_Parent_Tile_51136ID47.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID47.collider)
level05.colliders.C_Parent_Tile_51136ID48 = {}
level05.colliders.C_Parent_Tile_51136ID48.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID48.collider:SetOffset(459,63.0498,486.5)
level05.colliders.C_Parent_Tile_51136ID48.collider:SetZAxis(-0.650791,0,-0.759257)
level05.colliders.C_Parent_Tile_51136ID48.collider:SetHalfLengths(0.3,5.78171,4.60977)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID48.collider)
level05.colliders.C_Parent_Tile_51136ID49 = {}
level05.colliders.C_Parent_Tile_51136ID49.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID49.collider:SetOffset(480.5,48.4579,457.5)
level05.colliders.C_Parent_Tile_51136ID49.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.C_Parent_Tile_51136ID49.collider:SetHalfLengths(0.3,6.30285,2.91548)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID49.collider)
level05.colliders.C_Parent_Tile_51136ID50 = {}
level05.colliders.C_Parent_Tile_51136ID50.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID50.collider:SetOffset(485.5,47.155,454)
level05.colliders.C_Parent_Tile_51136ID50.collider:SetZAxis(0.780869,0,-0.624695)
level05.colliders.C_Parent_Tile_51136ID50.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID50.collider)
level05.colliders.C_Parent_Tile_51136ID51 = {}
level05.colliders.C_Parent_Tile_51136ID51.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID51.collider:SetOffset(489.5,45.5916,450.5)
level05.colliders.C_Parent_Tile_51136ID51.collider:SetZAxis(0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_51136ID51.collider:SetHalfLengths(0.3,6.30285,2.12132)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID51.collider)
level05.colliders.C_Parent_Tile_51136ID52 = {}
level05.colliders.C_Parent_Tile_51136ID52.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID52.collider:SetOffset(493.5,44.2887,447.5)
level05.colliders.C_Parent_Tile_51136ID52.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.C_Parent_Tile_51136ID52.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID52.collider)
level05.colliders.C_Parent_Tile_51136ID53 = {}
level05.colliders.C_Parent_Tile_51136ID53.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID53.collider:SetOffset(428,61.747,510)
level05.colliders.C_Parent_Tile_51136ID53.collider:SetZAxis(-0.986394,0,0.164399)
level05.colliders.C_Parent_Tile_51136ID53.collider:SetHalfLengths(0.3,6.824,6.08276)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID53.collider)
level05.colliders.C_Parent_Tile_51136ID54 = {}
level05.colliders.C_Parent_Tile_51136ID54.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID54.collider:SetOffset(405,82.8532,525)
level05.colliders.C_Parent_Tile_51136ID54.collider:SetZAxis(-1,0,0)
level05.colliders.C_Parent_Tile_51136ID54.collider:SetHalfLengths(0.3,7.08456,3)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID54.collider)
level05.colliders.C_Parent_Tile_51136ID55 = {}
level05.colliders.C_Parent_Tile_51136ID55.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID55.collider:SetOffset(400.5,80.7687,526)
level05.colliders.C_Parent_Tile_51136ID55.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_51136ID55.collider:SetHalfLengths(0.3,5.52114,1.80278)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID55.collider)
level05.colliders.C_Parent_Tile_51136ID56 = {}
level05.colliders.C_Parent_Tile_51136ID56.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID56.collider:SetOffset(397.5,80.2475,529.5)
level05.colliders.C_Parent_Tile_51136ID56.collider:SetZAxis(-0.514496,0,0.857493)
level05.colliders.C_Parent_Tile_51136ID56.collider:SetHalfLengths(0.3,5,2.91548)
level05.colliders.C_Parent_Tile_51136ID46.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID56.collider)
level05.colliders.C_Parent_Tile_51136ID57 = {}
level05.colliders.C_Parent_Tile_51136ID57.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID57.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID57.collider:SetMinPos(395.7,32.7744,414.736)
level05.colliders.C_Parent_Tile_51136ID57.collider:SetMaxPos(540.142,88.8543,545.134)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID57.collider)
level05.colliders.C_Parent_Tile_51136ID58 = {}
level05.colliders.C_Parent_Tile_51136ID58.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID58.collider:SetOffset(533.5,49.2396,418.5)
level05.colliders.C_Parent_Tile_51136ID58.collider:SetZAxis(0.880471,0,0.4741)
level05.colliders.C_Parent_Tile_51136ID58.collider:SetHalfLengths(0.3,5.52114,7.38241)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID58.collider)
level05.colliders.C_Parent_Tile_51136ID59 = {}
level05.colliders.C_Parent_Tile_51136ID59.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID59.collider:SetOffset(505.5,43.2464,446)
level05.colliders.C_Parent_Tile_51136ID59.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_51136ID59.collider:SetHalfLengths(0.3,10.472,9.5)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID59.collider)
level05.colliders.C_Parent_Tile_51136ID60 = {}
level05.colliders.C_Parent_Tile_51136ID60.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID60.collider:SetOffset(471,64.3527,495)
level05.colliders.C_Parent_Tile_51136ID60.collider:SetZAxis(-0.874157,0,-0.485643)
level05.colliders.C_Parent_Tile_51136ID60.collider:SetHalfLengths(0.3,6.30285,10.2956)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID60.collider)
level05.colliders.C_Parent_Tile_51136ID61 = {}
level05.colliders.C_Parent_Tile_51136ID61.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID61.collider:SetOffset(396,80.2475,536.5)
level05.colliders.C_Parent_Tile_51136ID61.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_51136ID61.collider:SetHalfLengths(0.3,5.52114,4.5)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID61.collider)
level05.colliders.C_Parent_Tile_51136ID62 = {}
level05.colliders.C_Parent_Tile_51136ID62.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID62.collider:SetOffset(397,80.7687,543)
level05.colliders.C_Parent_Tile_51136ID62.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_51136ID62.collider:SetHalfLengths(0.3,5.52114,2.23607)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID62.collider)
level05.colliders.C_Parent_Tile_51136ID63 = {}
level05.colliders.C_Parent_Tile_51136ID63.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID63.collider:SetOffset(426,82.5927,527)
level05.colliders.C_Parent_Tile_51136ID63.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.C_Parent_Tile_51136ID63.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID63.collider)
level05.colliders.C_Parent_Tile_51136ID64 = {}
level05.colliders.C_Parent_Tile_51136ID64.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID64.collider:SetOffset(439.5,59.923,518.5)
level05.colliders.C_Parent_Tile_51136ID64.collider:SetZAxis(-0.581238,0,-0.813733)
level05.colliders.C_Parent_Tile_51136ID64.collider:SetHalfLengths(0.3,6.04229,4.30116)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID64.collider)
level05.colliders.C_Parent_Tile_51136ID65 = {}
level05.colliders.C_Parent_Tile_51136ID65.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID65.collider:SetOffset(435.5,60.9653,512)
level05.colliders.C_Parent_Tile_51136ID65.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_51136ID65.collider:SetHalfLengths(0.3,5.78171,3.3541)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID65.collider)
level05.colliders.C_Parent_Tile_51136ID66 = {}
level05.colliders.C_Parent_Tile_51136ID66.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID66.collider:SetOffset(408.5,82.744,526.5)
level05.colliders.C_Parent_Tile_51136ID66.collider:SetZAxis(-0.316228,0,-0.948683)
level05.colliders.C_Parent_Tile_51136ID66.collider:SetHalfLengths(0.3,5.4441,1.58114)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID66.collider)
level05.colliders.C_Parent_Tile_51136ID67 = {}
level05.colliders.C_Parent_Tile_51136ID67.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID67.collider:SetOffset(420,83.1881,526.5)
level05.colliders.C_Parent_Tile_51136ID67.collider:SetZAxis(0.5547,0,-0.83205)
level05.colliders.C_Parent_Tile_51136ID67.collider:SetHalfLengths(0.3,5.66615,1.80278)
level05.colliders.C_Parent_Tile_51136ID57.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID67.collider)
level05.colliders.C_Parent_Tile_51136ID68 = {}
level05.colliders.C_Parent_Tile_51136ID68.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID68.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID68.collider:SetMinPos(397.846,41.1127,421.723)
level05.colliders.C_Parent_Tile_51136ID68.collider:SetMaxPos(552.115,89.4167,557.212)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID68.collider)
level05.colliders.C_Parent_Tile_51136ID69 = {}
level05.colliders.C_Parent_Tile_51136ID69.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID69.collider:SetOffset(546,48.7184,424.5)
level05.colliders.C_Parent_Tile_51136ID69.collider:SetZAxis(0.923077,0,0.384615)
level05.colliders.C_Parent_Tile_51136ID69.collider:SetHalfLengths(0.3,6.56343,6.5)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID69.collider)
level05.colliders.C_Parent_Tile_51136ID70 = {}
level05.colliders.C_Parent_Tile_51136ID70.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID70.collider:SetOffset(519,48.7184,446.5)
level05.colliders.C_Parent_Tile_51136ID70.collider:SetZAxis(0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_51136ID70.collider:SetHalfLengths(0.3,7.08457,4.03113)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID70.collider)
level05.colliders.C_Parent_Tile_51136ID71 = {}
level05.colliders.C_Parent_Tile_51136ID71.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID71.collider:SetOffset(531,50.803,451.5)
level05.colliders.C_Parent_Tile_51136ID71.collider:SetZAxis(0.871576,0,0.490261)
level05.colliders.C_Parent_Tile_51136ID71.collider:SetHalfLengths(0.3,9.69028,9.17878)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID71.collider)
level05.colliders.C_Parent_Tile_51136ID72 = {}
level05.colliders.C_Parent_Tile_51136ID72.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID72.collider:SetOffset(486.5,64.6133,502)
level05.colliders.C_Parent_Tile_51136ID72.collider:SetZAxis(-0.955779,0,-0.294086)
level05.colliders.C_Parent_Tile_51136ID72.collider:SetHalfLengths(0.3,5.26057,6.80074)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID72.collider)
level05.colliders.C_Parent_Tile_51136ID73 = {}
level05.colliders.C_Parent_Tile_51136ID73.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID73.collider:SetOffset(400.5,81.2898,546.5)
level05.colliders.C_Parent_Tile_51136ID73.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.C_Parent_Tile_51136ID73.collider:SetHalfLengths(0.3,6.04229,2.91548)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID73.collider)
level05.colliders.C_Parent_Tile_51136ID74 = {}
level05.colliders.C_Parent_Tile_51136ID74.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID74.collider:SetOffset(409,82.3321,550)
level05.colliders.C_Parent_Tile_51136ID74.collider:SetZAxis(0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_51136ID74.collider:SetHalfLengths(0.3,5.52113,6.32456)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID74.collider)
level05.colliders.C_Parent_Tile_51136ID75 = {}
level05.colliders.C_Parent_Tile_51136ID75.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID75.collider:SetOffset(417.5,82.8532,554.5)
level05.colliders.C_Parent_Tile_51136ID75.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID75.collider:SetHalfLengths(0.3,5,3.53553)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID75.collider)
level05.colliders.C_Parent_Tile_51136ID76 = {}
level05.colliders.C_Parent_Tile_51136ID76.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID76.collider:SetOffset(435,82.0715,533.5)
level05.colliders.C_Parent_Tile_51136ID76.collider:SetZAxis(0.664364,0,0.747409)
level05.colliders.C_Parent_Tile_51136ID76.collider:SetHalfLengths(0.3,5.52114,6.0208)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID76.collider)
level05.colliders.C_Parent_Tile_51136ID77 = {}
level05.colliders.C_Parent_Tile_51136ID77.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID77.collider:SetOffset(445,81.5504,544)
level05.colliders.C_Parent_Tile_51136ID77.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID77.collider:SetHalfLengths(0.3,7.86628,8.48528)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID77.collider)
level05.colliders.C_Parent_Tile_51136ID78 = {}
level05.colliders.C_Parent_Tile_51136ID78.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID78.collider:SetOffset(446.5,60.9653,527)
level05.colliders.C_Parent_Tile_51136ID78.collider:SetZAxis(-0.668965,0,-0.743294)
level05.colliders.C_Parent_Tile_51136ID78.collider:SetHalfLengths(0.3,6.04229,6.72681)
level05.colliders.C_Parent_Tile_51136ID68.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID78.collider)
level05.colliders.C_Parent_Tile_51136ID79 = {}
level05.colliders.C_Parent_Tile_51136ID79.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID79.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID79.collider:SetMinPos(419.788,42.4156,426.72)
level05.colliders.C_Parent_Tile_51136ID79.collider:SetMaxPos(580.154,89.1561,569.174)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID79.collider)
level05.colliders.C_Parent_Tile_51136ID80 = {}
level05.colliders.C_Parent_Tile_51136ID80.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID80.collider:SetOffset(558.5,50.2819,429.5)
level05.colliders.C_Parent_Tile_51136ID80.collider:SetZAxis(0.933346,0,0.358979)
level05.colliders.C_Parent_Tile_51136ID80.collider:SetHalfLengths(0.3,7.86628,6.96419)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID80.collider)
level05.colliders.C_Parent_Tile_51136ID81 = {}
level05.colliders.C_Parent_Tile_51136ID81.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID81.collider:SetOffset(572.5,53.1481,436.5)
level05.colliders.C_Parent_Tile_51136ID81.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.C_Parent_Tile_51136ID81.collider:SetHalfLengths(0.3,6.30286,8.74643)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID81.collider)
level05.colliders.C_Parent_Tile_51136ID82 = {}
level05.colliders.C_Parent_Tile_51136ID82.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID82.collider:SetOffset(546.5,55.4933,461)
level05.colliders.C_Parent_Tile_51136ID82.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_51136ID82.collider:SetHalfLengths(0.3,8.90857,9.01388)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID82.collider)
level05.colliders.C_Parent_Tile_51136ID83 = {}
level05.colliders.C_Parent_Tile_51136ID83.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID83.collider:SetOffset(499,64.3527,505)
level05.colliders.C_Parent_Tile_51136ID83.collider:SetZAxis(-0.986394,0,-0.164399)
level05.colliders.C_Parent_Tile_51136ID83.collider:SetHalfLengths(0.3,5.26057,6.08276)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID83.collider)
level05.colliders.C_Parent_Tile_51136ID84 = {}
level05.colliders.C_Parent_Tile_51136ID84.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID84.collider:SetOffset(422.5,82.8532,559.5)
level05.colliders.C_Parent_Tile_51136ID84.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID84.collider:SetHalfLengths(0.3,5.78172,3.53553)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID84.collider)
level05.colliders.C_Parent_Tile_51136ID85 = {}
level05.colliders.C_Parent_Tile_51136ID85.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID85.collider:SetOffset(427.5,83.635,565.5)
level05.colliders.C_Parent_Tile_51136ID85.collider:SetZAxis(0.581238,0,0.813733)
level05.colliders.C_Parent_Tile_51136ID85.collider:SetHalfLengths(0.3,5.52113,4.30116)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID85.collider)
level05.colliders.C_Parent_Tile_51136ID86 = {}
level05.colliders.C_Parent_Tile_51136ID86.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID86.collider:SetOffset(454,78.6841,553)
level05.colliders.C_Parent_Tile_51136ID86.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID86.collider:SetHalfLengths(0.3,7.08456,4.24264)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID86.collider)
level05.colliders.C_Parent_Tile_51136ID87 = {}
level05.colliders.C_Parent_Tile_51136ID87.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID87.collider:SetOffset(470,64.3527,537)
level05.colliders.C_Parent_Tile_51136ID87.collider:SetZAxis(-0.948683,0,0.316228)
level05.colliders.C_Parent_Tile_51136ID87.collider:SetHalfLengths(0.3,5.26057,3.16228)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID87.collider)
level05.colliders.C_Parent_Tile_51136ID88 = {}
level05.colliders.C_Parent_Tile_51136ID88.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID88.collider:SetOffset(462,64.6133,540)
level05.colliders.C_Parent_Tile_51136ID88.collider:SetZAxis(-0.928477,0,0.371391)
level05.colliders.C_Parent_Tile_51136ID88.collider:SetHalfLengths(0.3,5.52114,5.38516)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID88.collider)
level05.colliders.C_Parent_Tile_51136ID89 = {}
level05.colliders.C_Parent_Tile_51136ID89.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID89.collider:SetOffset(454,65.1344,537)
level05.colliders.C_Parent_Tile_51136ID89.collider:SetZAxis(-0.514496,0,-0.857493)
level05.colliders.C_Parent_Tile_51136ID89.collider:SetHalfLengths(0.3,9.16914,5.83095)
level05.colliders.C_Parent_Tile_51136ID79.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID89.collider)
level05.colliders.C_Parent_Tile_51136ID90 = {}
level05.colliders.C_Parent_Tile_51136ID90.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID90.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID90.collider:SetMinPos(440.732,47.627,440.743)
level05.colliders.C_Parent_Tile_51136ID90.collider:SetMaxPos(589.268,90.7195,589.042)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID90.collider)
level05.colliders.C_Parent_Tile_51136ID91 = {}
level05.colliders.C_Parent_Tile_51136ID91.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID91.collider:SetOffset(582.5,54.451,442.5)
level05.colliders.C_Parent_Tile_51136ID91.collider:SetZAxis(0.857493,0,0.514496)
level05.colliders.C_Parent_Tile_51136ID91.collider:SetHalfLengths(0.3,6.824,2.91548)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID91.collider)
level05.colliders.C_Parent_Tile_51136ID92 = {}
level05.colliders.C_Parent_Tile_51136ID92.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID92.collider:SetOffset(586,56.275,445)
level05.colliders.C_Parent_Tile_51136ID92.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID92.collider:SetHalfLengths(0.3,6.30286,1.41421)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID92.collider)
level05.colliders.C_Parent_Tile_51136ID93 = {}
level05.colliders.C_Parent_Tile_51136ID93.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID93.collider:SetOffset(588,57.5778,448)
level05.colliders.C_Parent_Tile_51136ID93.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_51136ID93.collider:SetHalfLengths(0.3,5.78172,2.23607)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID93.collider)
level05.colliders.C_Parent_Tile_51136ID94 = {}
level05.colliders.C_Parent_Tile_51136ID94.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID94.collider:SetOffset(529,67.7401,508.5)
level05.colliders.C_Parent_Tile_51136ID94.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.C_Parent_Tile_51136ID94.collider:SetHalfLengths(0.3,6.04229,4.03113)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID94.collider)
level05.colliders.C_Parent_Tile_51136ID95 = {}
level05.colliders.C_Parent_Tile_51136ID95.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID95.collider:SetOffset(442,84.4167,577)
level05.colliders.C_Parent_Tile_51136ID95.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_51136ID95.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID95.collider)
level05.colliders.C_Parent_Tile_51136ID96 = {}
level05.colliders.C_Parent_Tile_51136ID96.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID96.collider:SetOffset(443.5,84.6772,580.5)
level05.colliders.C_Parent_Tile_51136ID96.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.C_Parent_Tile_51136ID96.collider:SetHalfLengths(0.3,5.26057,1.58114)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID96.collider)
level05.colliders.C_Parent_Tile_51136ID97 = {}
level05.colliders.C_Parent_Tile_51136ID97.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID97.collider:SetOffset(444.5,84.4167,585.5)
level05.colliders.C_Parent_Tile_51136ID97.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_51136ID97.collider:SetHalfLengths(0.3,6.30286,3.53553)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID97.collider)
level05.colliders.C_Parent_Tile_51136ID98 = {}
level05.colliders.C_Parent_Tile_51136ID98.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID98.collider:SetOffset(467.5,82.8532,576)
level05.colliders.C_Parent_Tile_51136ID98.collider:SetZAxis(0.6,0,0.8)
level05.colliders.C_Parent_Tile_51136ID98.collider:SetHalfLengths(0.3,7.60571,7.5)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID98.collider)
level05.colliders.C_Parent_Tile_51136ID99 = {}
level05.colliders.C_Parent_Tile_51136ID99.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID99.collider:SetOffset(494.5,76.0784,546.5)
level05.colliders.C_Parent_Tile_51136ID99.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_51136ID99.collider:SetHalfLengths(0.3,6.82401,3.53553)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID99.collider)
level05.colliders.C_Parent_Tile_51136ID100 = {}
level05.colliders.C_Parent_Tile_51136ID100.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID100.collider:SetOffset(490,74.2544,542)
level05.colliders.C_Parent_Tile_51136ID100.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_51136ID100.collider:SetHalfLengths(0.3,7.34514,2.82843)
level05.colliders.C_Parent_Tile_51136ID90.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID100.collider)
level05.colliders.C_Parent_Tile_51136ID101 = {}
level05.colliders.C_Parent_Tile_51136ID101.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID101.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID101.collider:SetMinPos(432.829,52.0567,449.878)
level05.colliders.C_Parent_Tile_51136ID101.collider:SetMaxPos(593.274,88.8955,613.247)
level05.colliders.C_Parent_Tile_51136ID1.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID101.collider)
level05.colliders.C_Parent_Tile_51136ID102 = {}
level05.colliders.C_Parent_Tile_51136ID102.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID102.collider:SetOffset(591,58.3596,454.5)
level05.colliders.C_Parent_Tile_51136ID102.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.C_Parent_Tile_51136ID102.collider:SetHalfLengths(0.3,6.30286,4.92443)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID102.collider)
level05.colliders.C_Parent_Tile_51136ID103 = {}
level05.colliders.C_Parent_Tile_51136ID103.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID103.collider:SetOffset(567,66.9584,490.5)
level05.colliders.C_Parent_Tile_51136ID103.collider:SetZAxis(0.406139,0,0.913812)
level05.colliders.C_Parent_Tile_51136ID103.collider:SetHalfLengths(0.3,8.12685,4.92443)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID103.collider)
level05.colliders.C_Parent_Tile_51136ID104 = {}
level05.colliders.C_Parent_Tile_51136ID104.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID104.collider:SetOffset(538.5,71.1275,514)
level05.colliders.C_Parent_Tile_51136ID104.collider:SetZAxis(-0.73994,0,-0.672673)
level05.colliders.C_Parent_Tile_51136ID104.collider:SetHalfLengths(0.3,8.38743,7.43303)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID104.collider)
level05.colliders.C_Parent_Tile_51136ID105 = {}
level05.colliders.C_Parent_Tile_51136ID105.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID105.collider:SetOffset(445,83.1138,591.5)
level05.colliders.C_Parent_Tile_51136ID105.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_51136ID105.collider:SetHalfLengths(0.3,5.78171,2.5)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID105.collider)
level05.colliders.C_Parent_Tile_51136ID106 = {}
level05.colliders.C_Parent_Tile_51136ID106.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID106.collider:SetOffset(443,82.3321,596.5)
level05.colliders.C_Parent_Tile_51136ID106.collider:SetZAxis(-0.624695,0,0.780869)
level05.colliders.C_Parent_Tile_51136ID106.collider:SetHalfLengths(0.3,6.56343,3.20156)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID106.collider)
level05.colliders.C_Parent_Tile_51136ID107 = {}
level05.colliders.C_Parent_Tile_51136ID107.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID107.collider:SetOffset(440,80.7687,600)
level05.colliders.C_Parent_Tile_51136ID107.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID107.collider:SetHalfLengths(0.3,5.26057,1.41421)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID107.collider)
level05.colliders.C_Parent_Tile_51136ID108 = {}
level05.colliders.C_Parent_Tile_51136ID108.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID108.collider:SetOffset(436,80.5081,602.5)
level05.colliders.C_Parent_Tile_51136ID108.collider:SetZAxis(-0.894427,0,0.447214)
level05.colliders.C_Parent_Tile_51136ID108.collider:SetHalfLengths(0.3,6.04228,3.3541)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID108.collider)
level05.colliders.C_Parent_Tile_51136ID109 = {}
level05.colliders.C_Parent_Tile_51136ID109.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID109.collider:SetOffset(439.5,79.4658,608.5)
level05.colliders.C_Parent_Tile_51136ID109.collider:SetZAxis(0.822192,0,0.56921)
level05.colliders.C_Parent_Tile_51136ID109.collider:SetHalfLengths(0.3,8.64799,7.90569)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID109.collider)
level05.colliders.C_Parent_Tile_51136ID110 = {}
level05.colliders.C_Parent_Tile_51136ID110.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID110.collider:SetOffset(499,80.2475,559.5)
level05.colliders.C_Parent_Tile_51136ID110.collider:SetZAxis(0,0,-1)
level05.colliders.C_Parent_Tile_51136ID110.collider:SetHalfLengths(0.3,6.824,3.5)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID110.collider)
level05.colliders.C_Parent_Tile_51136ID111 = {}
level05.colliders.C_Parent_Tile_51136ID111.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID111.collider:SetOffset(498,78.4235,552.5)
level05.colliders.C_Parent_Tile_51136ID111.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.C_Parent_Tile_51136ID111.collider:SetHalfLengths(0.3,7.34514,3.64005)
level05.colliders.C_Parent_Tile_51136ID101.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID111.collider)
level05.colliders.C_Parent_Tile_51136ID112 = {}
level05.colliders.C_Parent_Tile_51136ID112.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID112.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID112.collider:SetMinPos(430,46.8453,458.866)
level05.colliders.C_Parent_Tile_51136ID112.collider:SetMaxPos(640.3,106.093,640)
level05.colliders.C_Parent_Tile_51136ID.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID112.collider)
level05.colliders.C_Parent_Tile_51136ID113 = {}
level05.colliders.C_Parent_Tile_51136ID113.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID113.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID113.collider:SetMinPos(430,46.8453,465.855)
level05.colliders.C_Parent_Tile_51136ID113.collider:SetMaxPos(565.263,89.4167,575.212)
level05.colliders.C_Parent_Tile_51136ID112.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID113.collider)
level05.colliders.C_Parent_Tile_51136ID114 = {}
level05.colliders.C_Parent_Tile_51136ID114.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID114.collider:SetOffset(559.5,59.4018,476)
level05.colliders.C_Parent_Tile_51136ID114.collider:SetZAxis(0.481919,0,0.876216)
level05.colliders.C_Parent_Tile_51136ID114.collider:SetHalfLengths(0.3,12.5566,11.4127)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID114.collider)
level05.colliders.C_Parent_Tile_51136ID115 = {}
level05.colliders.C_Parent_Tile_51136ID115.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID115.collider:SetOffset(521,66.6978,507.5)
level05.colliders.C_Parent_Tile_51136ID115.collider:SetZAxis(-0.992278,0,-0.124035)
level05.colliders.C_Parent_Tile_51136ID115.collider:SetHalfLengths(0.3,6.04228,4.03113)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID115.collider)
level05.colliders.C_Parent_Tile_51136ID116 = {}
level05.colliders.C_Parent_Tile_51136ID116.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID116.collider:SetOffset(511,65.6555,506.5)
level05.colliders.C_Parent_Tile_51136ID116.collider:SetZAxis(-0.996546,0,-0.0830455)
level05.colliders.C_Parent_Tile_51136ID116.collider:SetHalfLengths(0.3,6.30286,6.0208)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID116.collider)
level05.colliders.C_Parent_Tile_51136ID117 = {}
level05.colliders.C_Parent_Tile_51136ID117.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID117.collider:SetOffset(431,84.1561,569)
level05.colliders.C_Parent_Tile_51136ID117.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_51136ID117.collider:SetHalfLengths(0.3,5.26057,1)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID117.collider)
level05.colliders.C_Parent_Tile_51136ID118 = {}
level05.colliders.C_Parent_Tile_51136ID118.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID118.collider:SetOffset(434.5,84.4167,570)
level05.colliders.C_Parent_Tile_51136ID118.collider:SetZAxis(0.928477,0,0.371391)
level05.colliders.C_Parent_Tile_51136ID118.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID118.collider)
level05.colliders.C_Parent_Tile_51136ID119 = {}
level05.colliders.C_Parent_Tile_51136ID119.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID119.collider:SetOffset(439,84.4167,573)
level05.colliders.C_Parent_Tile_51136ID119.collider:SetZAxis(0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID119.collider:SetHalfLengths(0.3,5,2.82843)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID119.collider)
level05.colliders.C_Parent_Tile_51136ID120 = {}
level05.colliders.C_Parent_Tile_51136ID120.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID120.collider:SetOffset(457,80.7687,557.5)
level05.colliders.C_Parent_Tile_51136ID120.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_51136ID120.collider:SetHalfLengths(0.3,5.78172,1.5)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID120.collider)
level05.colliders.C_Parent_Tile_51136ID121 = {}
level05.colliders.C_Parent_Tile_51136ID121.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID121.collider:SetOffset(460,81.5504,564.5)
level05.colliders.C_Parent_Tile_51136ID121.collider:SetZAxis(0.478852,0,0.877896)
level05.colliders.C_Parent_Tile_51136ID121.collider:SetHalfLengths(0.3,6.30285,6.26498)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID121.collider)
level05.colliders.C_Parent_Tile_51136ID122 = {}
level05.colliders.C_Parent_Tile_51136ID122.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID122.collider:SetOffset(484.5,71.9093,537.5)
level05.colliders.C_Parent_Tile_51136ID122.collider:SetZAxis(-0.813733,0,-0.581238)
level05.colliders.C_Parent_Tile_51136ID122.collider:SetHalfLengths(0.3,11.7748,4.30116)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID122.collider)
level05.colliders.C_Parent_Tile_51136ID123 = {}
level05.colliders.C_Parent_Tile_51136ID123.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID123.collider:SetOffset(477,65.1344,535.5)
level05.colliders.C_Parent_Tile_51136ID123.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_51136ID123.collider:SetHalfLengths(0.3,5.78172,4.03113)
level05.colliders.C_Parent_Tile_51136ID113.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID123.collider)
level05.colliders.C_Parent_Tile_51136ID124 = {}
level05.colliders.C_Parent_Tile_51136ID124.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID124.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID124.collider:SetMinPos(445.806,53.099,458.866)
level05.colliders.C_Parent_Tile_51136ID124.collider:SetMaxPos(601.285,91.5013,624.229)
level05.colliders.C_Parent_Tile_51136ID112.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID124.collider)
level05.colliders.C_Parent_Tile_51136ID125 = {}
level05.colliders.C_Parent_Tile_51136ID125.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID125.collider:SetOffset(595,59.6624,463)
level05.colliders.C_Parent_Tile_51136ID125.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_51136ID125.collider:SetHalfLengths(0.3,6.56343,4.47214)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID125.collider)
level05.colliders.C_Parent_Tile_51136ID126 = {}
level05.colliders.C_Parent_Tile_51136ID126.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID126.collider:SetOffset(599,61.2258,473)
level05.colliders.C_Parent_Tile_51136ID126.collider:SetZAxis(0.316228,0,0.948683)
level05.colliders.C_Parent_Tile_51136ID126.collider:SetHalfLengths(0.3,8.12685,6.32456)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID126.collider)
level05.colliders.C_Parent_Tile_51136ID127 = {}
level05.colliders.C_Parent_Tile_51136ID127.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID127.collider:SetOffset(572,70.0853,501)
level05.colliders.C_Parent_Tile_51136ID127.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_51136ID127.collider:SetHalfLengths(0.3,7.34515,6.7082)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID127.collider)
level05.colliders.C_Parent_Tile_51136ID128 = {}
level05.colliders.C_Parent_Tile_51136ID128.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID128.collider:SetOffset(548,74.2544,525)
level05.colliders.C_Parent_Tile_51136ID128.collider:SetZAxis(-0.5547,0,-0.83205)
level05.colliders.C_Parent_Tile_51136ID128.collider:SetHalfLengths(0.3,8.12685,7.2111)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID128.collider)
level05.colliders.C_Parent_Tile_51136ID129 = {}
level05.colliders.C_Parent_Tile_51136ID129.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID129.collider:SetOffset(452.5,83.1138,618.5)
level05.colliders.C_Parent_Tile_51136ID129.collider:SetZAxis(0.763386,0,0.645942)
level05.colliders.C_Parent_Tile_51136ID129.collider:SetHalfLengths(0.3,7.08458,8.51469)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID129.collider)
level05.colliders.C_Parent_Tile_51136ID130 = {}
level05.colliders.C_Parent_Tile_51136ID130.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID130.collider:SetOffset(474,85.459,583.5)
level05.colliders.C_Parent_Tile_51136ID130.collider:SetZAxis(0.8,0,0.6)
level05.colliders.C_Parent_Tile_51136ID130.collider:SetHalfLengths(0.3,5.26056,2.5)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID130.collider)
level05.colliders.C_Parent_Tile_51136ID131 = {}
level05.colliders.C_Parent_Tile_51136ID131.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID131.collider:SetOffset(479,85.1984,586.5)
level05.colliders.C_Parent_Tile_51136ID131.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.C_Parent_Tile_51136ID131.collider:SetHalfLengths(0.3,6.30286,3.3541)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID131.collider)
level05.colliders.C_Parent_Tile_51136ID132 = {}
level05.colliders.C_Parent_Tile_51136ID132.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID132.collider:SetOffset(490,83.635,582.5)
level05.colliders.C_Parent_Tile_51136ID132.collider:SetZAxis(0.768221,0,-0.640184)
level05.colliders.C_Parent_Tile_51136ID132.collider:SetHalfLengths(0.3,6.04229,3.90512)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID132.collider)
level05.colliders.C_Parent_Tile_51136ID133 = {}
level05.colliders.C_Parent_Tile_51136ID133.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID133.collider:SetOffset(496,82.3321,573.5)
level05.colliders.C_Parent_Tile_51136ID133.collider:SetZAxis(0.371391,0,-0.928477)
level05.colliders.C_Parent_Tile_51136ID133.collider:SetHalfLengths(0.3,5.78172,2.69258)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID133.collider)
level05.colliders.C_Parent_Tile_51136ID134 = {}
level05.colliders.C_Parent_Tile_51136ID134.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID134.collider:SetOffset(498,81.5504,567)
level05.colliders.C_Parent_Tile_51136ID134.collider:SetZAxis(0.242536,0,-0.970143)
level05.colliders.C_Parent_Tile_51136ID134.collider:SetHalfLengths(0.3,6.30286,4.12311)
level05.colliders.C_Parent_Tile_51136ID124.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID134.collider)
level05.colliders.C_Parent_Tile_51136ID135 = {}
level05.colliders.C_Parent_Tile_51136ID135.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID135.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID135.collider:SetMinPos(458.834,53.099,478.897)
level05.colliders.C_Parent_Tile_51136ID135.collider:SetMaxPos(610.299,96.7127,639.124)
level05.colliders.C_Parent_Tile_51136ID112.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID135.collider)
level05.colliders.C_Parent_Tile_51136ID136 = {}
level05.colliders.C_Parent_Tile_51136ID136.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID136.collider:SetOffset(605,64.3527,490)
level05.colliders.C_Parent_Tile_51136ID136.collider:SetZAxis(0.341743,0,0.939793)
level05.colliders.C_Parent_Tile_51136ID136.collider:SetHalfLengths(0.3,11.2537,11.7047)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID136.collider)
level05.colliders.C_Parent_Tile_51136ID137 = {}
level05.colliders.C_Parent_Tile_51136ID137.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID137.collider:SetOffset(609.5,70.6064,508.5)
level05.colliders.C_Parent_Tile_51136ID137.collider:SetZAxis(0.066519,0,0.997785)
level05.colliders.C_Parent_Tile_51136ID137.collider:SetHalfLengths(0.3,7.86629,7.51665)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID137.collider)
level05.colliders.C_Parent_Tile_51136ID138 = {}
level05.colliders.C_Parent_Tile_51136ID138.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID138.collider:SetOffset(577,72.4304,521)
level05.colliders.C_Parent_Tile_51136ID138.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_51136ID138.collider:SetHalfLengths(0.3,10.2114,14.1421)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID138.collider)
level05.colliders.C_Parent_Tile_51136ID139 = {}
level05.colliders.C_Parent_Tile_51136ID139.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID139.collider:SetOffset(581.5,77.6418,552.5)
level05.colliders.C_Parent_Tile_51136ID139.collider:SetZAxis(0.141421,0,0.98995)
level05.colliders.C_Parent_Tile_51136ID139.collider:SetHalfLengths(0.3,10.2114,17.6777)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID139.collider)
level05.colliders.C_Parent_Tile_51136ID140 = {}
level05.colliders.C_Parent_Tile_51136ID140.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID140.collider:SetOffset(560,85.459,550)
level05.colliders.C_Parent_Tile_51136ID140.collider:SetZAxis(-0.274721,0,-0.961524)
level05.colliders.C_Parent_Tile_51136ID140.collider:SetHalfLengths(0.3,11.2537,7.28011)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID140.collider)
level05.colliders.C_Parent_Tile_51136ID141 = {}
level05.colliders.C_Parent_Tile_51136ID141.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID141.collider:SetOffset(555,79.2053,537)
level05.colliders.C_Parent_Tile_51136ID141.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_51136ID141.collider:SetHalfLengths(0.3,9.95086,6.7082)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID141.collider)
level05.colliders.C_Parent_Tile_51136ID142 = {}
level05.colliders.C_Parent_Tile_51136ID142.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID142.collider:SetOffset(462,85.1984,626)
level05.colliders.C_Parent_Tile_51136ID142.collider:SetZAxis(0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_51136ID142.collider:SetHalfLengths(0.3,5,3.60555)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID142.collider)
level05.colliders.C_Parent_Tile_51136ID143 = {}
level05.colliders.C_Parent_Tile_51136ID143.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID143.collider:SetOffset(467.5,85.1984,633.5)
level05.colliders.C_Parent_Tile_51136ID143.collider:SetZAxis(0.413803,0,0.910366)
level05.colliders.C_Parent_Tile_51136ID143.collider:SetHalfLengths(0.3,5.78171,6.04152)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID143.collider)
level05.colliders.C_Parent_Tile_51136ID144 = {}
level05.colliders.C_Parent_Tile_51136ID144.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID144.collider:SetOffset(484.5,83.8955,586.5)
level05.colliders.C_Parent_Tile_51136ID144.collider:SetZAxis(0.857493,0,-0.514496)
level05.colliders.C_Parent_Tile_51136ID144.collider:SetHalfLengths(0.3,5.26057,2.91548)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID144.collider)
level05.colliders.C_Parent_Tile_51136ID145 = {}
level05.colliders.C_Parent_Tile_51136ID145.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID145.collider:SetOffset(494,82.5927,578)
level05.colliders.C_Parent_Tile_51136ID145.collider:SetZAxis(0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_51136ID145.collider:SetHalfLengths(0.3,5.26057,2.23607)
level05.colliders.C_Parent_Tile_51136ID135.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID145.collider)
level05.colliders.C_Parent_Tile_51136ID146 = {}
level05.colliders.C_Parent_Tile_51136ID146.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID146.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID146.collider:SetMinPos(561.762,66.1275,516)
level05.colliders.C_Parent_Tile_51136ID146.collider:SetMaxPos(615.291,106.093,589.073)
level05.colliders.C_Parent_Tile_51136ID112.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID146.collider)
level05.colliders.C_Parent_Tile_51136ID147 = {}
level05.colliders.C_Parent_Tile_51136ID147.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID147.collider:SetOffset(610,73.4727,525)
level05.colliders.C_Parent_Tile_51136ID147.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_51136ID147.collider:SetHalfLengths(0.3,7.34514,9)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID147.collider)
level05.colliders.C_Parent_Tile_51136ID148 = {}
level05.colliders.C_Parent_Tile_51136ID148.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID148.collider:SetOffset(611,75.8178,546)
level05.colliders.C_Parent_Tile_51136ID148.collider:SetZAxis(0.0830455,0,0.996546)
level05.colliders.C_Parent_Tile_51136ID148.collider:SetHalfLengths(0.3,9.69028,12.0416)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID148.collider)
level05.colliders.C_Parent_Tile_51136ID149 = {}
level05.colliders.C_Parent_Tile_51136ID149.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID149.collider:SetOffset(613,80.5081,571.5)
level05.colliders.C_Parent_Tile_51136ID149.collider:SetZAxis(0.0738717,0,0.997268)
level05.colliders.C_Parent_Tile_51136ID149.collider:SetHalfLengths(0.3,9.42972,13.537)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID149.collider)
level05.colliders.C_Parent_Tile_51136ID150 = {}
level05.colliders.C_Parent_Tile_51136ID150.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID150.collider:SetOffset(614.5,84.9378,587)
level05.colliders.C_Parent_Tile_51136ID150.collider:SetZAxis(0.242536,0,0.970143)
level05.colliders.C_Parent_Tile_51136ID150.collider:SetHalfLengths(0.3,5.52113,2.06155)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID150.collider)
level05.colliders.C_Parent_Tile_51136ID151 = {}
level05.colliders.C_Parent_Tile_51136ID151.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID151.collider:SetOffset(582.5,82.8532,573.5)
level05.colliders.C_Parent_Tile_51136ID151.collider:SetZAxis(-0.393919,0,0.919145)
level05.colliders.C_Parent_Tile_51136ID151.collider:SetHalfLengths(0.3,7.08458,3.80789)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID151.collider)
level05.colliders.C_Parent_Tile_51136ID152 = {}
level05.colliders.C_Parent_Tile_51136ID152.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID152.collider:SetOffset(579.5,84.9378,578)
level05.colliders.C_Parent_Tile_51136ID152.collider:SetZAxis(-0.83205,0,0.5547)
level05.colliders.C_Parent_Tile_51136ID152.collider:SetHalfLengths(0.3,6.04228,1.80278)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID152.collider)
level05.colliders.C_Parent_Tile_51136ID153 = {}
level05.colliders.C_Parent_Tile_51136ID153.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID153.collider:SetOffset(575.5,85.9801,579)
level05.colliders.C_Parent_Tile_51136ID153.collider:SetZAxis(-1,0,0)
level05.colliders.C_Parent_Tile_51136ID153.collider:SetHalfLengths(0.3,5.26057,2.5)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID153.collider)
level05.colliders.C_Parent_Tile_51136ID154 = {}
level05.colliders.C_Parent_Tile_51136ID154.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID154.collider:SetOffset(572,85.7195,578)
level05.colliders.C_Parent_Tile_51136ID154.collider:SetZAxis(-0.707107,0,-0.707107)
level05.colliders.C_Parent_Tile_51136ID154.collider:SetHalfLengths(0.3,7.08457,1.41421)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID154.collider)
level05.colliders.C_Parent_Tile_51136ID155 = {}
level05.colliders.C_Parent_Tile_51136ID155.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID155.collider:SetOffset(571.5,87.8041,573.5)
level05.colliders.C_Parent_Tile_51136ID155.collider:SetZAxis(0.141421,0,-0.98995)
level05.colliders.C_Parent_Tile_51136ID155.collider:SetHalfLengths(0.3,10.472,3.53553)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID155.collider)
level05.colliders.C_Parent_Tile_51136ID156 = {}
level05.colliders.C_Parent_Tile_51136ID156.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID156.collider:SetOffset(567,93.2761,563.5)
level05.colliders.C_Parent_Tile_51136ID156.collider:SetZAxis(-0.609711,0,-0.792624)
level05.colliders.C_Parent_Tile_51136ID156.collider:SetHalfLengths(0.3,12.8171,8.20061)
level05.colliders.C_Parent_Tile_51136ID146.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID156.collider)
level05.colliders.C_Parent_Tile_51136ID157 = {}
level05.colliders.C_Parent_Tile_51136ID157.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID157.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID157.collider:SetMinPos(576.7,79.6772,588.866)
level05.colliders.C_Parent_Tile_51136ID157.collider:SetMaxPos(640,92.0224,640)
level05.colliders.C_Parent_Tile_51136ID112.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID157.collider)
level05.colliders.C_Parent_Tile_51136ID158 = {}
level05.colliders.C_Parent_Tile_51136ID158.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID158.collider:SetOffset(615.5,85.459,590)
level05.colliders.C_Parent_Tile_51136ID158.collider:SetZAxis(0.447214,0,0.894427)
level05.colliders.C_Parent_Tile_51136ID158.collider:SetHalfLengths(0.3,5.78172,1.11803)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID158.collider)
level05.colliders.C_Parent_Tile_51136ID159 = {}
level05.colliders.C_Parent_Tile_51136ID159.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID159.collider:SetOffset(617,86.2407,591.5)
level05.colliders.C_Parent_Tile_51136ID159.collider:SetZAxis(0.894427,0,0.447214)
level05.colliders.C_Parent_Tile_51136ID159.collider:SetHalfLengths(0.3,5.52114,1.11803)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID159.collider)
level05.colliders.C_Parent_Tile_51136ID160 = {}
level05.colliders.C_Parent_Tile_51136ID160.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID160.collider:SetOffset(629,86.7618,592)
level05.colliders.C_Parent_Tile_51136ID160.collider:SetZAxis(1,0,0)
level05.colliders.C_Parent_Tile_51136ID160.collider:SetHalfLengths(0.3,5.26057,11)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID160.collider)
level05.colliders.C_Parent_Tile_51136ID161 = {}
level05.colliders.C_Parent_Tile_51136ID161.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID161.collider:SetOffset(602.5,84.9378,623)
level05.colliders.C_Parent_Tile_51136ID161.collider:SetZAxis(-0.928477,0,-0.371391)
level05.colliders.C_Parent_Tile_51136ID161.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID161.collider)
level05.colliders.C_Parent_Tile_51136ID162 = {}
level05.colliders.C_Parent_Tile_51136ID162.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID162.collider:SetOffset(596,84.9378,622.5)
level05.colliders.C_Parent_Tile_51136ID162.collider:SetZAxis(-0.992278,0,0.124035)
level05.colliders.C_Parent_Tile_51136ID162.collider:SetHalfLengths(0.3,5,4.03113)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID162.collider)
level05.colliders.C_Parent_Tile_51136ID163 = {}
level05.colliders.C_Parent_Tile_51136ID163.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID163.collider:SetOffset(588.5,84.9378,624.5)
level05.colliders.C_Parent_Tile_51136ID163.collider:SetZAxis(-0.919145,0,0.393919)
level05.colliders.C_Parent_Tile_51136ID163.collider:SetHalfLengths(0.3,5,3.80789)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID163.collider)
level05.colliders.C_Parent_Tile_51136ID164 = {}
level05.colliders.C_Parent_Tile_51136ID164.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID164.collider:SetOffset(582.5,84.9378,628)
level05.colliders.C_Parent_Tile_51136ID164.collider:SetZAxis(-0.780869,0,0.624695)
level05.colliders.C_Parent_Tile_51136ID164.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID164.collider)
level05.colliders.C_Parent_Tile_51136ID165 = {}
level05.colliders.C_Parent_Tile_51136ID165.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID165.collider:SetOffset(579,84.9378,632.5)
level05.colliders.C_Parent_Tile_51136ID165.collider:SetZAxis(-0.371391,0,0.928477)
level05.colliders.C_Parent_Tile_51136ID165.collider:SetHalfLengths(0.3,5,2.69258)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID165.collider)
level05.colliders.C_Parent_Tile_51136ID166 = {}
level05.colliders.C_Parent_Tile_51136ID166.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID166.collider:SetOffset(577.5,84.9378,637)
level05.colliders.C_Parent_Tile_51136ID166.collider:SetZAxis(-0.242536,0,0.970143)
level05.colliders.C_Parent_Tile_51136ID166.collider:SetHalfLengths(0.3,5,2.06155)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID166.collider)
level05.colliders.C_Parent_Tile_51136ID167 = {}
level05.colliders.C_Parent_Tile_51136ID167.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID167.collider:SetOffset(577,84.9378,639.5)
level05.colliders.C_Parent_Tile_51136ID167.collider:SetZAxis(0,0,-1)
level05.colliders.C_Parent_Tile_51136ID167.collider:SetHalfLengths(0.3,5,0.5)
level05.colliders.C_Parent_Tile_51136ID157.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID167.collider)
level05.colliders.C_Parent_Tile_51136ID168 = {}
level05.colliders.C_Parent_Tile_51136ID168.collider = AABBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID168.collider:SetOffset(0,0,0)
level05.colliders.C_Parent_Tile_51136ID168.collider:SetMinPos(604.813,79.9378,592)
level05.colliders.C_Parent_Tile_51136ID168.collider:SetMaxPos(640.3,92.5435,639.3)
level05.colliders.C_Parent_Tile_51136ID112.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID168.collider)
level05.colliders.C_Parent_Tile_51136ID169 = {}
level05.colliders.C_Parent_Tile_51136ID169.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID169.collider:SetOffset(640,86.5012,608)
level05.colliders.C_Parent_Tile_51136ID169.collider:SetZAxis(0,0,1)
level05.colliders.C_Parent_Tile_51136ID169.collider:SetHalfLengths(0.3,5,16)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID169.collider)
level05.colliders.C_Parent_Tile_51136ID170 = {}
level05.colliders.C_Parent_Tile_51136ID170.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID170.collider:SetOffset(638,86.5012,626)
level05.colliders.C_Parent_Tile_51136ID170.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID170.collider:SetHalfLengths(0.3,5.52114,2.82843)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID170.collider)
level05.colliders.C_Parent_Tile_51136ID171 = {}
level05.colliders.C_Parent_Tile_51136ID171.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID171.collider:SetOffset(634,87.0224,630)
level05.colliders.C_Parent_Tile_51136ID171.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID171.collider:SetHalfLengths(0.3,5.26057,2.82843)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID171.collider)
level05.colliders.C_Parent_Tile_51136ID172 = {}
level05.colliders.C_Parent_Tile_51136ID172.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID172.collider:SetOffset(628.5,86.7618,635.5)
level05.colliders.C_Parent_Tile_51136ID172.collider:SetZAxis(-0.707107,0,0.707107)
level05.colliders.C_Parent_Tile_51136ID172.collider:SetHalfLengths(0.3,5.26057,4.94975)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID172.collider)
level05.colliders.C_Parent_Tile_51136ID173 = {}
level05.colliders.C_Parent_Tile_51136ID173.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID173.collider:SetOffset(619.5,86.5012,639)
level05.colliders.C_Parent_Tile_51136ID173.collider:SetZAxis(-1,0,0)
level05.colliders.C_Parent_Tile_51136ID173.collider:SetHalfLengths(0.3,6.04229,5.5)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID173.collider)
level05.colliders.C_Parent_Tile_51136ID174 = {}
level05.colliders.C_Parent_Tile_51136ID174.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID174.collider:SetOffset(613.5,85.459,636.5)
level05.colliders.C_Parent_Tile_51136ID174.collider:SetZAxis(-0.196116,0,-0.980581)
level05.colliders.C_Parent_Tile_51136ID174.collider:SetHalfLengths(0.3,5.26056,2.54951)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID174.collider)
level05.colliders.C_Parent_Tile_51136ID175 = {}
level05.colliders.C_Parent_Tile_51136ID175.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID175.collider:SetOffset(611.5,85.1984,631)
level05.colliders.C_Parent_Tile_51136ID175.collider:SetZAxis(-0.447214,0,-0.894427)
level05.colliders.C_Parent_Tile_51136ID175.collider:SetHalfLengths(0.3,5.26057,3.3541)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID175.collider)
level05.colliders.C_Parent_Tile_51136ID176 = {}
level05.colliders.C_Parent_Tile_51136ID176.collider = OBBCollider.Create(-1)
level05.colliders.C_Parent_Tile_51136ID176.collider:SetOffset(607.5,84.9378,626)
level05.colliders.C_Parent_Tile_51136ID176.collider:SetZAxis(-0.780869,0,-0.624695)
level05.colliders.C_Parent_Tile_51136ID176.collider:SetHalfLengths(0.3,5,3.20156)
level05.colliders.C_Parent_Tile_51136ID168.collider:AddChild(level05.colliders.C_Parent_Tile_51136ID176.collider)
CollisionHandler.AddAABB(level05.colliders.C_Parent_Tile_51136ID.collider, 3)
level05.colliders.C_Parent_Tile_51136ID1 = nil
level05.colliders.C_Parent_Tile_51136ID2 = nil
level05.colliders.C_Parent_Tile_51136ID3 = nil
level05.colliders.C_Parent_Tile_51136ID4 = nil
level05.colliders.C_Parent_Tile_51136ID5 = nil
level05.colliders.C_Parent_Tile_51136ID6 = nil
level05.colliders.C_Parent_Tile_51136ID7 = nil
level05.colliders.C_Parent_Tile_51136ID8 = nil
level05.colliders.C_Parent_Tile_51136ID9 = nil
level05.colliders.C_Parent_Tile_51136ID10 = nil
level05.colliders.C_Parent_Tile_51136ID11 = nil
level05.colliders.C_Parent_Tile_51136ID12 = nil
level05.colliders.C_Parent_Tile_51136ID13 = nil
level05.colliders.C_Parent_Tile_51136ID14 = nil
level05.colliders.C_Parent_Tile_51136ID15 = nil
level05.colliders.C_Parent_Tile_51136ID16 = nil
level05.colliders.C_Parent_Tile_51136ID17 = nil
level05.colliders.C_Parent_Tile_51136ID18 = nil
level05.colliders.C_Parent_Tile_51136ID19 = nil
level05.colliders.C_Parent_Tile_51136ID20 = nil
level05.colliders.C_Parent_Tile_51136ID21 = nil
level05.colliders.C_Parent_Tile_51136ID22 = nil
level05.colliders.C_Parent_Tile_51136ID23 = nil
level05.colliders.C_Parent_Tile_51136ID24 = nil
level05.colliders.C_Parent_Tile_51136ID25 = nil
level05.colliders.C_Parent_Tile_51136ID26 = nil
level05.colliders.C_Parent_Tile_51136ID27 = nil
level05.colliders.C_Parent_Tile_51136ID28 = nil
level05.colliders.C_Parent_Tile_51136ID29 = nil
level05.colliders.C_Parent_Tile_51136ID30 = nil
level05.colliders.C_Parent_Tile_51136ID31 = nil
level05.colliders.C_Parent_Tile_51136ID32 = nil
level05.colliders.C_Parent_Tile_51136ID33 = nil
level05.colliders.C_Parent_Tile_51136ID34 = nil
level05.colliders.C_Parent_Tile_51136ID35 = nil
level05.colliders.C_Parent_Tile_51136ID36 = nil
level05.colliders.C_Parent_Tile_51136ID37 = nil
level05.colliders.C_Parent_Tile_51136ID38 = nil
level05.colliders.C_Parent_Tile_51136ID39 = nil
level05.colliders.C_Parent_Tile_51136ID40 = nil
level05.colliders.C_Parent_Tile_51136ID41 = nil
level05.colliders.C_Parent_Tile_51136ID42 = nil
level05.colliders.C_Parent_Tile_51136ID43 = nil
level05.colliders.C_Parent_Tile_51136ID44 = nil
level05.colliders.C_Parent_Tile_51136ID45 = nil
level05.colliders.C_Parent_Tile_51136ID46 = nil
level05.colliders.C_Parent_Tile_51136ID47 = nil
level05.colliders.C_Parent_Tile_51136ID48 = nil
level05.colliders.C_Parent_Tile_51136ID49 = nil
level05.colliders.C_Parent_Tile_51136ID50 = nil
level05.colliders.C_Parent_Tile_51136ID51 = nil
level05.colliders.C_Parent_Tile_51136ID52 = nil
level05.colliders.C_Parent_Tile_51136ID53 = nil
level05.colliders.C_Parent_Tile_51136ID54 = nil
level05.colliders.C_Parent_Tile_51136ID55 = nil
level05.colliders.C_Parent_Tile_51136ID56 = nil
level05.colliders.C_Parent_Tile_51136ID57 = nil
level05.colliders.C_Parent_Tile_51136ID58 = nil
level05.colliders.C_Parent_Tile_51136ID59 = nil
level05.colliders.C_Parent_Tile_51136ID60 = nil
level05.colliders.C_Parent_Tile_51136ID61 = nil
level05.colliders.C_Parent_Tile_51136ID62 = nil
level05.colliders.C_Parent_Tile_51136ID63 = nil
level05.colliders.C_Parent_Tile_51136ID64 = nil
level05.colliders.C_Parent_Tile_51136ID65 = nil
level05.colliders.C_Parent_Tile_51136ID66 = nil
level05.colliders.C_Parent_Tile_51136ID67 = nil
level05.colliders.C_Parent_Tile_51136ID68 = nil
level05.colliders.C_Parent_Tile_51136ID69 = nil
level05.colliders.C_Parent_Tile_51136ID70 = nil
level05.colliders.C_Parent_Tile_51136ID71 = nil
level05.colliders.C_Parent_Tile_51136ID72 = nil
level05.colliders.C_Parent_Tile_51136ID73 = nil
level05.colliders.C_Parent_Tile_51136ID74 = nil
level05.colliders.C_Parent_Tile_51136ID75 = nil
level05.colliders.C_Parent_Tile_51136ID76 = nil
level05.colliders.C_Parent_Tile_51136ID77 = nil
level05.colliders.C_Parent_Tile_51136ID78 = nil
level05.colliders.C_Parent_Tile_51136ID79 = nil
level05.colliders.C_Parent_Tile_51136ID80 = nil
level05.colliders.C_Parent_Tile_51136ID81 = nil
level05.colliders.C_Parent_Tile_51136ID82 = nil
level05.colliders.C_Parent_Tile_51136ID83 = nil
level05.colliders.C_Parent_Tile_51136ID84 = nil
level05.colliders.C_Parent_Tile_51136ID85 = nil
level05.colliders.C_Parent_Tile_51136ID86 = nil
level05.colliders.C_Parent_Tile_51136ID87 = nil
level05.colliders.C_Parent_Tile_51136ID88 = nil
level05.colliders.C_Parent_Tile_51136ID89 = nil
level05.colliders.C_Parent_Tile_51136ID90 = nil
level05.colliders.C_Parent_Tile_51136ID91 = nil
level05.colliders.C_Parent_Tile_51136ID92 = nil
level05.colliders.C_Parent_Tile_51136ID93 = nil
level05.colliders.C_Parent_Tile_51136ID94 = nil
level05.colliders.C_Parent_Tile_51136ID95 = nil
level05.colliders.C_Parent_Tile_51136ID96 = nil
level05.colliders.C_Parent_Tile_51136ID97 = nil
level05.colliders.C_Parent_Tile_51136ID98 = nil
level05.colliders.C_Parent_Tile_51136ID99 = nil
level05.colliders.C_Parent_Tile_51136ID100 = nil
level05.colliders.C_Parent_Tile_51136ID101 = nil
level05.colliders.C_Parent_Tile_51136ID102 = nil
level05.colliders.C_Parent_Tile_51136ID103 = nil
level05.colliders.C_Parent_Tile_51136ID104 = nil
level05.colliders.C_Parent_Tile_51136ID105 = nil
level05.colliders.C_Parent_Tile_51136ID106 = nil
level05.colliders.C_Parent_Tile_51136ID107 = nil
level05.colliders.C_Parent_Tile_51136ID108 = nil
level05.colliders.C_Parent_Tile_51136ID109 = nil
level05.colliders.C_Parent_Tile_51136ID110 = nil
level05.colliders.C_Parent_Tile_51136ID111 = nil
level05.colliders.C_Parent_Tile_51136ID112 = nil
level05.colliders.C_Parent_Tile_51136ID113 = nil
level05.colliders.C_Parent_Tile_51136ID114 = nil
level05.colliders.C_Parent_Tile_51136ID115 = nil
level05.colliders.C_Parent_Tile_51136ID116 = nil
level05.colliders.C_Parent_Tile_51136ID117 = nil
level05.colliders.C_Parent_Tile_51136ID118 = nil
level05.colliders.C_Parent_Tile_51136ID119 = nil
level05.colliders.C_Parent_Tile_51136ID120 = nil
level05.colliders.C_Parent_Tile_51136ID121 = nil
level05.colliders.C_Parent_Tile_51136ID122 = nil
level05.colliders.C_Parent_Tile_51136ID123 = nil
level05.colliders.C_Parent_Tile_51136ID124 = nil
level05.colliders.C_Parent_Tile_51136ID125 = nil
level05.colliders.C_Parent_Tile_51136ID126 = nil
level05.colliders.C_Parent_Tile_51136ID127 = nil
level05.colliders.C_Parent_Tile_51136ID128 = nil
level05.colliders.C_Parent_Tile_51136ID129 = nil
level05.colliders.C_Parent_Tile_51136ID130 = nil
level05.colliders.C_Parent_Tile_51136ID131 = nil
level05.colliders.C_Parent_Tile_51136ID132 = nil
level05.colliders.C_Parent_Tile_51136ID133 = nil
level05.colliders.C_Parent_Tile_51136ID134 = nil
level05.colliders.C_Parent_Tile_51136ID135 = nil
level05.colliders.C_Parent_Tile_51136ID136 = nil
level05.colliders.C_Parent_Tile_51136ID137 = nil
level05.colliders.C_Parent_Tile_51136ID138 = nil
level05.colliders.C_Parent_Tile_51136ID139 = nil
level05.colliders.C_Parent_Tile_51136ID140 = nil
level05.colliders.C_Parent_Tile_51136ID141 = nil
level05.colliders.C_Parent_Tile_51136ID142 = nil
level05.colliders.C_Parent_Tile_51136ID143 = nil
level05.colliders.C_Parent_Tile_51136ID144 = nil
level05.colliders.C_Parent_Tile_51136ID145 = nil
level05.colliders.C_Parent_Tile_51136ID146 = nil
level05.colliders.C_Parent_Tile_51136ID147 = nil
level05.colliders.C_Parent_Tile_51136ID148 = nil
level05.colliders.C_Parent_Tile_51136ID149 = nil
level05.colliders.C_Parent_Tile_51136ID150 = nil
level05.colliders.C_Parent_Tile_51136ID151 = nil
level05.colliders.C_Parent_Tile_51136ID152 = nil
level05.colliders.C_Parent_Tile_51136ID153 = nil
level05.colliders.C_Parent_Tile_51136ID154 = nil
level05.colliders.C_Parent_Tile_51136ID155 = nil
level05.colliders.C_Parent_Tile_51136ID156 = nil
level05.colliders.C_Parent_Tile_51136ID157 = nil
level05.colliders.C_Parent_Tile_51136ID158 = nil
level05.colliders.C_Parent_Tile_51136ID159 = nil
level05.colliders.C_Parent_Tile_51136ID160 = nil
level05.colliders.C_Parent_Tile_51136ID161 = nil
level05.colliders.C_Parent_Tile_51136ID162 = nil
level05.colliders.C_Parent_Tile_51136ID163 = nil
level05.colliders.C_Parent_Tile_51136ID164 = nil
level05.colliders.C_Parent_Tile_51136ID165 = nil
level05.colliders.C_Parent_Tile_51136ID166 = nil
level05.colliders.C_Parent_Tile_51136ID167 = nil
level05.colliders.C_Parent_Tile_51136ID168 = nil
level05.colliders.C_Parent_Tile_51136ID169 = nil
level05.colliders.C_Parent_Tile_51136ID170 = nil
level05.colliders.C_Parent_Tile_51136ID171 = nil
level05.colliders.C_Parent_Tile_51136ID172 = nil
level05.colliders.C_Parent_Tile_51136ID173 = nil
level05.colliders.C_Parent_Tile_51136ID174 = nil
level05.colliders.C_Parent_Tile_51136ID175 = nil
level05.colliders.C_Parent_Tile_51136ID176 = nil
end
level05.unload = function()
level05.props.tile537ID = nil
Gear.UnbindInstance(level05.props.t5s148ID.transformID)
level05.props.t5s148ID = nil
Gear.UnbindInstance(level05.props.t5s249ID.transformID)
level05.props.t5s249ID = nil
Gear.UnbindInstance(level05.props.t5s350ID.transformID)
level05.props.t5s350ID = nil
Gear.UnbindInstance(level05.props.t5s451ID.transformID)
level05.props.t5s451ID = nil
Gear.UnbindInstance(level05.props.t5s552ID.transformID)
level05.props.t5s552ID = nil
Gear.UnbindInstance(level05.props.t5s653ID.transformID)
level05.props.t5s653ID = nil
level05.colliders.Tile5_wallNr442ID = nil
level05.colliders.Tile5_wallNr1443ID = nil
level05.colliders.Tile5_wallNr2444ID = nil
level05.colliders.Tile5_wallNr3445ID = nil
level05.colliders.Tile5_wallNr4446ID = nil
level05.colliders.Tile5_wallNr5447ID = nil
level05.colliders.Tile5_wallNr6448ID = nil
level05.colliders.Tile5_wallNr7449ID = nil
level05.colliders.Tile5_wallNr8450ID = nil
level05.colliders.Tile5_wallNr9451ID = nil
level05.colliders.Tile5_wallNr10452ID = nil
level05.colliders.Tile5_wallNr11453ID = nil
level05.colliders.Tile5_wallNr12454ID = nil
level05.colliders.Tile5_wallNr13455ID = nil
level05.colliders.Tile5_wallNr14456ID = nil
level05.colliders.Tile5_wallNr15457ID = nil
level05.colliders.Tile5_wallNr16458ID = nil
level05.colliders.Tile5_wallNr17459ID = nil
level05.colliders.Tile5_wallNr18460ID = nil
level05.colliders.Tile5_wallNr19461ID = nil
level05.colliders.Tile5_wallNr20462ID = nil
level05.colliders.Tile5_wallNr21463ID = nil
level05.colliders.Tile5_wallNr22464ID = nil
level05.colliders.Tile5_wallNr23465ID = nil
level05.colliders.Tile5_wallNr24466ID = nil
level05.colliders.Tile5_wallNr25467ID = nil
level05.colliders.Tile5_wallNr26468ID = nil
level05.colliders.Tile5_wallNr27469ID = nil
level05.colliders.Tile5_wallNr28470ID = nil
level05.colliders.Tile5_wallNr29471ID = nil
level05.colliders.Tile5_wallNr30472ID = nil
level05.colliders.Tile5_wallNr31473ID = nil
level05.colliders.Tile5_wallNr32474ID = nil
level05.colliders.Tile5_wallNr33475ID = nil
level05.colliders.Tile5_wallNr34476ID = nil
level05.colliders.Tile5_wallNr35477ID = nil
level05.colliders.Tile5_wallNr36478ID = nil
level05.colliders.Tile5_wallNr37479ID = nil
level05.colliders.Tile5_wallNr38480ID = nil
level05.colliders.Tile5_wallNr39481ID = nil
level05.colliders.Tile5_wallNr40482ID = nil
level05.colliders.Tile5_wallNr41483ID = nil
level05.colliders.Tile5_wallNr42484ID = nil
level05.colliders.Tile5_wallNr43485ID = nil
level05.colliders.Tile5_wallNr44486ID = nil
level05.colliders.Tile5_wallNr45487ID = nil
level05.colliders.Tile5_wallNr46488ID = nil
level05.colliders.Tile5_wallNr47489ID = nil
level05.colliders.Tile5_wallNr48490ID = nil
level05.colliders.Tile5_wallNr49491ID = nil
level05.colliders.Tile5_wallNr50492ID = nil
level05.colliders.Tile5_wallNr51493ID = nil
level05.colliders.Tile5_wallNr52494ID = nil
level05.colliders.Tile5_wallNr53495ID = nil
level05.colliders.Tile5_wallNr54496ID = nil
level05.colliders.Tile5_wallNr55497ID = nil
level05.colliders.Tile5_wallNr56498ID = nil
level05.colliders.Tile5_wallNr57499ID = nil
level05.colliders.Tile5_wallNr58500ID = nil
level05.colliders.Tile5_wallNr59501ID = nil
level05.colliders.Tile5_wallNr60502ID = nil
level05.colliders.Tile5_wallNr61503ID = nil
level05.colliders.Tile5_wallNr62504ID = nil
level05.colliders.Tile5_wallNr63505ID = nil
level05.colliders.Tile5_wallNr64506ID = nil
level05.colliders.Tile5_wallNr65507ID = nil
level05.colliders.Tile5_wallNr66508ID = nil
level05.colliders.Tile5_wallNr67509ID = nil
level05.colliders.Tile5_wallNr68510ID = nil
level05.colliders.Tile5_wallNr69511ID = nil
level05.colliders.Tile5_wallNr70512ID = nil
level05.colliders.Tile5_wallNr71513ID = nil
level05.colliders.Tile5_wallNr72514ID = nil
level05.colliders.Tile5_wallNr73515ID = nil
level05.colliders.Tile5_wallNr74516ID = nil
level05.colliders.Tile5_wallNr75517ID = nil
level05.colliders.Tile5_wallNr76518ID = nil
level05.colliders.Tile5_wallNr77519ID = nil
level05.colliders.Tile5_wallNr78520ID = nil
level05.colliders.Tile5_wallNr79521ID = nil
level05.colliders.Tile5_wallNr80522ID = nil
level05.colliders.Tile5_wallNr81523ID = nil
level05.colliders.Tile5_wallNr82524ID = nil
level05.colliders.Tile5_wallNr83525ID = nil
level05.colliders.Tile5_wallNr84526ID = nil
level05.colliders.Tile5_wallNr85527ID = nil
level05.colliders.Tile5_wallNr86528ID = nil
level05.colliders.Tile5_wallNr88529ID = nil
level05.colliders.Tile5_wallNr89530ID = nil
level05.colliders.Tile5_wallNr90531ID = nil
level05.colliders.Tile5_wallNr91532ID = nil
level05.colliders.Tile5_wallNr94533ID = nil
level05.colliders.Tile5_wallNr95534ID = nil
level05.colliders.Tile5_wallNr96535ID = nil
level05.colliders.Tile5_wallNr97536ID = nil
level05.colliders.Tile5_wallNr98537ID = nil
level05.colliders.Tile5_wallNr99538ID = nil
level05.colliders.Tile5_wallNr100539ID = nil
level05.colliders.Tile5_wallNr101540ID = nil
level05.colliders.Tile5_wallNr102541ID = nil
level05.colliders.Tile5_wallNr103542ID = nil
level05.colliders.Tile5_wallNr106543ID = nil
level05.colliders.Tile5_wallNr107544ID = nil
level05.colliders.Tile5_wallNr108545ID = nil
level05.colliders.Tile5_wallNr109546ID = nil
level05.colliders.Tile5_wallNr110547ID = nil
level05.colliders.Tile5_wallNr111548ID = nil
level05.colliders.Tile5_wallNr112549ID = nil
level05.colliders.Tile5_wallNr113550ID = nil
level05.colliders.Tile5_wallNr114551ID = nil
level05.colliders.Tile5_wallNr115552ID = nil
level05.colliders.Tile5_wallNr116553ID = nil
level05.colliders.Tile5_wallNr117554ID = nil
level05.colliders.Tile5_wallNr118555ID = nil
level05.colliders.Tile5_wallNr119556ID = nil
level05.colliders.Tile5_wallNr120557ID = nil
level05.colliders.Tile5_wallNr121558ID = nil
level05.colliders.Tile5_wallNr122559ID = nil
level05.colliders.Tile5_wallNr123560ID = nil
level05.colliders.Tile5_wallNr124561ID = nil
level05.colliders.Tile5_wallNr125562ID = nil
level05.colliders.Tile5_wallNr126563ID = nil
level05.colliders.Tile5_wallNr127564ID = nil
level05.colliders.Tile5_wallNr128565ID = nil
level05.colliders.Tile5_wallNr129566ID = nil
level05.colliders.Tile5_wallNr130567ID = nil
level05.colliders.Tile5_wallNr131568ID = nil
level05.colliders.Tile5_wallNr132569ID = nil
level05.colliders.Tile5_wallNr133570ID = nil
level05.colliders.Tile5_wallNr134571ID = nil
level05.colliders.Tile5_wallNr135572ID = nil
level05.colliders.Tile5_wallNr136573ID = nil
level05.colliders.Tile5_wallNr137574ID = nil
level05.colliders.Tile5_wallNr138575ID = nil
level05.colliders.Tile5_wallNr139576ID = nil
level05.colliders.Tile5_wallNr140577ID = nil
level05.colliders.Tile5_wallNr141578ID = nil
level05.colliders.Tile5_wallNr142579ID = nil
level05.colliders.Tile5_wallNr143580ID = nil
level05.colliders.Tile5_wallNr144581ID = nil
level05.colliders.Tile5_wallNr145582ID = nil
level05.colliders.Tile5_wallNr146583ID = nil
level05.colliders.Tile5_wallNr147584ID = nil
level05.colliders.Tile5_wallNr148585ID = nil
level05.colliders.Tile5_wallNr149586ID = nil
level05.colliders.Tile5_wallNr150587ID = nil
level05.colliders.Tile5_wallNr151588ID = nil
level05.colliders.Tile5_wallNr152589ID = nil
level05.colliders.Tile5_wallNr153590ID = nil
level05.colliders.Tile5_wallNr154591ID = nil
level05.colliders.Tile5_wallNr155592ID = nil
level05.colliders.Tile5_wallNr157739ID = nil
Gear.UnbindInstance(level05.props.t4s5892ID.transformID)
level05.props.t4s5892ID = nil
level05.colliders.Tile5_wallNr87893ID = nil
level05.colliders.Tile5_wallNr92894ID = nil
level05.colliders.Tile5_wallNr104895ID = nil
level05.colliders.Tile5_wallNr105896ID = nil
level05.colliders.Tile5_wallNr156897ID = nil
level05.colliders.Tile5_wallNr158898ID = nil
Gear.UnbindInstance(level05.props.Crystal899ID.transformID)
level05.props.Crystal899ID = nil
Gear.UnbindInstance(level05.props.Crystal1900ID.transformID)
level05.props.Crystal1900ID = nil
Gear.UnbindInstance(level05.props.Crystal2901ID.transformID)
level05.props.Crystal2901ID = nil
Gear.UnbindInstance(level05.props.Crystal3902ID.transformID)
level05.props.Crystal3902ID = nil
Gear.UnbindInstance(level05.props.Crystal4903ID.transformID)
level05.props.Crystal4903ID = nil
Gear.UnbindInstance(level05.props.Crystal5904ID.transformID)
level05.props.Crystal5904ID = nil
Gear.UnbindInstance(level05.props.Crystal6905ID.transformID)
level05.props.Crystal6905ID = nil
Gear.UnbindInstance(level05.props.Crystal7906ID.transformID)
level05.props.Crystal7906ID = nil
Gear.UnbindInstance(level05.props.Crystal8907ID.transformID)
level05.props.Crystal8907ID = nil
Gear.UnbindInstance(level05.props.Crystal9908ID.transformID)
level05.props.Crystal9908ID = nil
Gear.UnbindInstance(level05.props.Crystal10909ID.transformID)
level05.props.Crystal10909ID = nil
Gear.UnbindInstance(level05.props.Crystal11910ID.transformID)
level05.props.Crystal11910ID = nil
Gear.UnbindInstance(level05.props.Crystal12911ID.transformID)
level05.props.Crystal12911ID = nil
Gear.UnbindInstance(level05.props.Crystal131971ID.transformID)
level05.props.Crystal131971ID = nil
Gear.UnbindInstance(level05.props.Crystal132972ID.transformID)
level05.props.Crystal132972ID = nil
Gear.UnbindInstance(level05.props.Crystal133973ID.transformID)
level05.props.Crystal133973ID = nil
Gear.UnbindInstance(level05.props.Crystal134974ID.transformID)
level05.props.Crystal134974ID = nil
Gear.UnbindInstance(level05.props.Crystal135975ID.transformID)
level05.props.Crystal135975ID = nil
Gear.UnbindInstance(level05.props.Crystal136976ID.transformID)
level05.props.Crystal136976ID = nil



























































level05.colliders.C_Parent_Tile_511118ID = nil
level05.colliders.C_Parent_Tile_521119ID = nil
level05.colliders.C_Parent_Tile_531120ID = nil
level05.colliders.C_Parent_Tile_541121ID = nil
level05.colliders.C_Parent_Tile_551122ID = nil
level05.colliders.C_Parent_Tile_561123ID = nil
level05.colliders.C_Parent_Tile_571124ID = nil
level05.colliders.C_Parent_Tile_581125ID = nil
level05.colliders.C_Parent_Tile_591126ID = nil
level05.colliders.C_Parent_Tile_5101127ID = nil
level05.colliders.C_Parent_Tile_5111128ID = nil
level05.colliders.C_Parent_Tile_5121129ID = nil
level05.colliders.C_Parent_Tile_5131130ID = nil
level05.colliders.C_Parent_Tile_5141131ID = nil
level05.colliders.C_Parent_Tile_5151132ID = nil
level05.colliders.C_Parent_Tile_5161133ID = nil
level05.colliders.C_Parent_Tile_5171134ID = nil
level05.colliders.C_Parent_Tile_5181135ID = nil
level05.colliders.C_Parent_Tile_51136ID = nil
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
level06.props.t6s12687ID = {}
level06.props.t6s12687ID.model = Assets.LoadModel('Models/tile6_s12.model')
level06.props.t6s12687ID.transformID = Gear.BindStaticInstance(level06.props.t6s12687ID.model)
Transform.SetPosition(level06.props.t6s12687ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s12687ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s12687ID.transformID, {x=0, y=0, z=0})
level06.props.t6s13688ID = {}
level06.props.t6s13688ID.model = Assets.LoadModel('Models/tile6_s13.model')
level06.props.t6s13688ID.transformID = Gear.BindStaticInstance(level06.props.t6s13688ID.model)
Transform.SetPosition(level06.props.t6s13688ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level06.props.t6s13688ID.transformID, 1, 1, 1)
Transform.SetRotation(level06.props.t6s13688ID.transformID, {x=0, y=0, z=0})
level06.colliders.C_Parent_Tile_61142ID = {}
level06.colliders.C_Parent_Tile_61142ID.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_61142ID.collider:SetMinPos(383.7,63.2002,639.841)
level06.colliders.C_Parent_Tile_61142ID.collider:SetMaxPos(607.234,111.83,738.3)
level06.colliders.C_Parent_Tile_61142ID.collider:SetPos(0,0,0)
level06.colliders.C_Parent_Tile_61142ID1 = {}
level06.colliders.C_Parent_Tile_61142ID1.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID1.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_61142ID1.collider:SetMinPos(383.7,63.2002,639.841)
level06.colliders.C_Parent_Tile_61142ID1.collider:SetMaxPos(475.296,111.83,716)
level06.colliders.C_Parent_Tile_61142ID.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID1.collider)
level06.colliders.C_Parent_Tile_61142ID2 = {}
level06.colliders.C_Parent_Tile_61142ID2.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID2.collider:SetOffset(386.5,106.148,703.5)
level06.colliders.C_Parent_Tile_61142ID2.collider:SetZAxis(-0.857493,0,-0.514496)
level06.colliders.C_Parent_Tile_61142ID2.collider:SetHalfLengths(0.3,5.3411,2.91548)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID2.collider)
level06.colliders.C_Parent_Tile_61142ID3 = {}
level06.colliders.C_Parent_Tile_61142ID3.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID3.collider:SetOffset(472.5,85.0848,644)
level06.colliders.C_Parent_Tile_61142ID3.collider:SetZAxis(0.529999,0,0.847998)
level06.colliders.C_Parent_Tile_61142ID3.collider:SetHalfLengths(0.3,5,4.71699)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID3.collider)
level06.colliders.C_Parent_Tile_61142ID4 = {}
level06.colliders.C_Parent_Tile_61142ID4.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID4.collider:SetOffset(474.5,85.0848,651)
level06.colliders.C_Parent_Tile_61142ID4.collider:SetZAxis(-0.164399,0,0.986394)
level06.colliders.C_Parent_Tile_61142ID4.collider:SetHalfLengths(0.3,5,3.04138)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID4.collider)
level06.colliders.C_Parent_Tile_61142ID5 = {}
level06.colliders.C_Parent_Tile_61142ID5.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID5.collider:SetOffset(473,85.0848,656.5)
level06.colliders.C_Parent_Tile_61142ID5.collider:SetZAxis(-0.371391,0,0.928477)
level06.colliders.C_Parent_Tile_61142ID5.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID5.collider)
level06.colliders.C_Parent_Tile_61142ID6 = {}
level06.colliders.C_Parent_Tile_61142ID6.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID6.collider:SetOffset(466,85.0848,663.5)
level06.colliders.C_Parent_Tile_61142ID6.collider:SetZAxis(-0.8,0,0.6)
level06.colliders.C_Parent_Tile_61142ID6.collider:SetHalfLengths(0.3,5,7.5)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID6.collider)
level06.colliders.C_Parent_Tile_61142ID7 = {}
level06.colliders.C_Parent_Tile_61142ID7.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID7.collider:SetOffset(464.5,85.0848,674.5)
level06.colliders.C_Parent_Tile_61142ID7.collider:SetZAxis(0.56921,0,0.822192)
level06.colliders.C_Parent_Tile_61142ID7.collider:SetHalfLengths(0.3,5,7.90569)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID7.collider)
level06.colliders.C_Parent_Tile_61142ID8 = {}
level06.colliders.C_Parent_Tile_61142ID8.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID8.collider:SetOffset(422.5,85.1701,708)
level06.colliders.C_Parent_Tile_61142ID8.collider:SetZAxis(-0.998542,0,-0.0539753)
level06.colliders.C_Parent_Tile_61142ID8.collider:SetHalfLengths(0.3,21.9699,18.527)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID8.collider)
level06.colliders.C_Parent_Tile_61142ID9 = {}
level06.colliders.C_Parent_Tile_61142ID9.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID9.collider:SetOffset(384,106.063,714.5)
level06.colliders.C_Parent_Tile_61142ID9.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_61142ID9.collider:SetHalfLengths(0.3,5.25583,1.5)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID9.collider)
level06.colliders.C_Parent_Tile_61142ID10 = {}
level06.colliders.C_Parent_Tile_61142ID10.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID10.collider:SetOffset(386.5,106.318,713)
level06.colliders.C_Parent_Tile_61142ID10.collider:SetZAxis(1,0,0)
level06.colliders.C_Parent_Tile_61142ID10.collider:SetHalfLengths(0.3,5.17055,2.5)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID10.collider)
level06.colliders.C_Parent_Tile_61142ID11 = {}
level06.colliders.C_Parent_Tile_61142ID11.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID11.collider:SetOffset(389,106.489,709)
level06.colliders.C_Parent_Tile_61142ID11.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_61142ID11.collider:SetHalfLengths(0.3,5.3411,4)
level06.colliders.C_Parent_Tile_61142ID1.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID11.collider)
level06.colliders.C_Parent_Tile_61142ID12 = {}
level06.colliders.C_Parent_Tile_61142ID12.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID12.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_61142ID12.collider:SetMinPos(383.7,79.6584,680.979)
level06.colliders.C_Parent_Tile_61142ID12.collider:SetMaxPos(470.299,111.063,733.3)
level06.colliders.C_Parent_Tile_61142ID.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID12.collider)
level06.colliders.C_Parent_Tile_61142ID13 = {}
level06.colliders.C_Parent_Tile_61142ID13.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID13.collider:SetOffset(469.5,85.0848,688)
level06.colliders.C_Parent_Tile_61142ID13.collider:SetZAxis(0.071247,0,0.997459)
level06.colliders.C_Parent_Tile_61142ID13.collider:SetHalfLengths(0.3,5.42638,7.01783)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID13.collider)
level06.colliders.C_Parent_Tile_61142ID14 = {}
level06.colliders.C_Parent_Tile_61142ID14.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID14.collider:SetOffset(468.5,85.5112,699.5)
level06.colliders.C_Parent_Tile_61142ID14.collider:SetZAxis(-0.316228,0,0.948683)
level06.colliders.C_Parent_Tile_61142ID14.collider:SetHalfLengths(0.3,5.08527,4.74342)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID14.collider)
level06.colliders.C_Parent_Tile_61142ID15 = {}
level06.colliders.C_Parent_Tile_61142ID15.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID15.collider:SetOffset(451.5,85.4259,708)
level06.colliders.C_Parent_Tile_61142ID15.collider:SetZAxis(-0.995496,0,0.0948091)
level06.colliders.C_Parent_Tile_61142ID15.collider:SetHalfLengths(0.3,5.25583,10.5475)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID15.collider)
level06.colliders.C_Parent_Tile_61142ID16 = {}
level06.colliders.C_Parent_Tile_61142ID16.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID16.collider:SetOffset(403,102.14,708)
level06.colliders.C_Parent_Tile_61142ID16.collider:SetZAxis(-0.707107,0,0.707107)
level06.colliders.C_Parent_Tile_61142ID16.collider:SetHalfLengths(0.3,6.36442,1.41421)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID16.collider)
level06.colliders.C_Parent_Tile_61142ID17 = {}
level06.colliders.C_Parent_Tile_61142ID17.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID17.collider:SetOffset(402,103.504,712)
level06.colliders.C_Parent_Tile_61142ID17.collider:SetZAxis(0,0,1)
level06.colliders.C_Parent_Tile_61142ID17.collider:SetHalfLengths(0.3,5.51165,3)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID17.collider)
level06.colliders.C_Parent_Tile_61142ID18 = {}
level06.colliders.C_Parent_Tile_61142ID18.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID18.collider:SetOffset(395.5,103.078,716)
level06.colliders.C_Parent_Tile_61142ID18.collider:SetZAxis(-1,0,0)
level06.colliders.C_Parent_Tile_61142ID18.collider:SetHalfLengths(0.3,7.98466,11.5)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID18.collider)
level06.colliders.C_Parent_Tile_61142ID19 = {}
level06.colliders.C_Parent_Tile_61142ID19.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID19.collider:SetOffset(403,104.613,733)
level06.colliders.C_Parent_Tile_61142ID19.collider:SetZAxis(-1,0,0)
level06.colliders.C_Parent_Tile_61142ID19.collider:SetHalfLengths(0.3,5.17055,1)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID19.collider)
level06.colliders.C_Parent_Tile_61142ID20 = {}
level06.colliders.C_Parent_Tile_61142ID20.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID20.collider:SetOffset(402,104.442,730.5)
level06.colliders.C_Parent_Tile_61142ID20.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_61142ID20.collider:SetHalfLengths(0.3,5.42638,2.5)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID20.collider)
level06.colliders.C_Parent_Tile_61142ID21 = {}
level06.colliders.C_Parent_Tile_61142ID21.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID21.collider:SetOffset(395,104.954,726.5)
level06.colliders.C_Parent_Tile_61142ID21.collider:SetZAxis(0.99083,0,0.135113)
level06.colliders.C_Parent_Tile_61142ID21.collider:SetHalfLengths(0.3,5.42638,11.1018)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID21.collider)
level06.colliders.C_Parent_Tile_61142ID22 = {}
level06.colliders.C_Parent_Tile_61142ID22.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID22.collider:SetOffset(384,104.954,728.5)
level06.colliders.C_Parent_Tile_61142ID22.collider:SetZAxis(0,0,1)
level06.colliders.C_Parent_Tile_61142ID22.collider:SetHalfLengths(0.3,5.93803,3.5)
level06.colliders.C_Parent_Tile_61142ID12.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID22.collider)
level06.colliders.C_Parent_Tile_61142ID23 = {}
level06.colliders.C_Parent_Tile_61142ID23.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID23.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_61142ID23.collider:SetMinPos(403.7,66.1848,685.723)
level06.colliders.C_Parent_Tile_61142ID23.collider:SetMaxPos(532.115,110.295,738.3)
level06.colliders.C_Parent_Tile_61142ID.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID23.collider)
level06.colliders.C_Parent_Tile_61142ID24 = {}
level06.colliders.C_Parent_Tile_61142ID24.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID24.collider:SetOffset(464.5,85.4259,705.5)
level06.colliders.C_Parent_Tile_61142ID24.collider:SetZAxis(-0.857493,0,0.514496)
level06.colliders.C_Parent_Tile_61142ID24.collider:SetHalfLengths(0.3,5,2.91548)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID24.collider)
level06.colliders.C_Parent_Tile_61142ID25 = {}
level06.colliders.C_Parent_Tile_61142ID25.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID25.collider:SetOffset(508.5,85.0848,695.5)
level06.colliders.C_Parent_Tile_61142ID25.collider:SetZAxis(-0.98995,0,0.141421)
level06.colliders.C_Parent_Tile_61142ID25.collider:SetHalfLengths(0.3,5,3.53553)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID25.collider)
level06.colliders.C_Parent_Tile_61142ID26 = {}
level06.colliders.C_Parent_Tile_61142ID26.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID26.collider:SetOffset(502.5,85.0848,697)
level06.colliders.C_Parent_Tile_61142ID26.collider:SetZAxis(-0.928477,0,0.371391)
level06.colliders.C_Parent_Tile_61142ID26.collider:SetHalfLengths(0.3,5.93803,2.69258)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID26.collider)
level06.colliders.C_Parent_Tile_61142ID27 = {}
level06.colliders.C_Parent_Tile_61142ID27.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID27.collider:SetOffset(496,86.0228,709)
level06.colliders.C_Parent_Tile_61142ID27.collider:SetZAxis(-0.341743,0,0.939793)
level06.colliders.C_Parent_Tile_61142ID27.collider:SetHalfLengths(0.3,5.08527,11.7047)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID27.collider)
level06.colliders.C_Parent_Tile_61142ID28 = {}
level06.colliders.C_Parent_Tile_61142ID28.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID28.collider:SetOffset(480,85.9375,727.5)
level06.colliders.C_Parent_Tile_61142ID28.collider:SetZAxis(-0.847998,0,0.529999)
level06.colliders.C_Parent_Tile_61142ID28.collider:SetHalfLengths(0.3,5.3411,14.151)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID28.collider)
level06.colliders.C_Parent_Tile_61142ID29 = {}
level06.colliders.C_Parent_Tile_61142ID29.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID29.collider:SetOffset(448,86.6197,738)
level06.colliders.C_Parent_Tile_61142ID29.collider:SetZAxis(-1,0,0)
level06.colliders.C_Parent_Tile_61142ID29.collider:SetHalfLengths(0.3,6.44968,8)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID29.collider)
level06.colliders.C_Parent_Tile_61142ID30 = {}
level06.colliders.C_Parent_Tile_61142ID30.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID30.collider:SetOffset(422,88.0694,737)
level06.colliders.C_Parent_Tile_61142ID30.collider:SetZAxis(-0.99846,0,-0.05547)
level06.colliders.C_Parent_Tile_61142ID30.collider:SetHalfLengths(0.3,21.8846,18.0278)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID30.collider)
level06.colliders.C_Parent_Tile_61142ID31 = {}
level06.colliders.C_Parent_Tile_61142ID31.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID31.collider:SetOffset(404,104.954,734.5)
level06.colliders.C_Parent_Tile_61142ID31.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_61142ID31.collider:SetHalfLengths(0.3,5.3411,1.5)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID31.collider)
level06.colliders.C_Parent_Tile_61142ID32 = {}
level06.colliders.C_Parent_Tile_61142ID32.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID32.collider:SetOffset(526,86.6392,688.5)
level06.colliders.C_Parent_Tile_61142ID32.collider:SetZAxis(-0.923077,0,0.384615)
level06.colliders.C_Parent_Tile_61142ID32.collider:SetHalfLengths(0.3,5.19201,6.5)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID32.collider)
level06.colliders.C_Parent_Tile_61142ID33 = {}
level06.colliders.C_Parent_Tile_61142ID33.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID33.collider:SetOffset(516,86.4472,693)
level06.colliders.C_Parent_Tile_61142ID33.collider:SetZAxis(-0.894427,0,0.447214)
level06.colliders.C_Parent_Tile_61142ID33.collider:SetHalfLengths(0.3,7.20815,4.47214)
level06.colliders.C_Parent_Tile_61142ID23.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID33.collider)
level06.colliders.C_Parent_Tile_61142ID34 = {}
level06.colliders.C_Parent_Tile_61142ID34.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID34.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_61142ID34.collider:SetMinPos(455.927,79.9111,640)
level06.colliders.C_Parent_Tile_61142ID34.collider:SetMaxPos(591.111,92.0232,738.291)
level06.colliders.C_Parent_Tile_61142ID.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID34.collider)
level06.colliders.C_Parent_Tile_61142ID35 = {}
level06.colliders.C_Parent_Tile_61142ID35.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID35.collider:SetOffset(512,85.0848,702.5)
level06.colliders.C_Parent_Tile_61142ID35.collider:SetZAxis(0,0,-1)
level06.colliders.C_Parent_Tile_61142ID35.collider:SetHalfLengths(0.3,5,0.5)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID35.collider)
level06.colliders.C_Parent_Tile_61142ID36 = {}
level06.colliders.C_Parent_Tile_61142ID36.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID36.collider:SetOffset(462,86.2786,736.5)
level06.colliders.C_Parent_Tile_61142ID36.collider:SetZAxis(-0.970142,0,0.242536)
level06.colliders.C_Parent_Tile_61142ID36.collider:SetHalfLengths(0.3,5.3411,6.18466)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID36.collider)
level06.colliders.C_Parent_Tile_61142ID37 = {}
level06.colliders.C_Parent_Tile_61142ID37.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID37.collider:SetOffset(577,85.1031,642)
level06.colliders.C_Parent_Tile_61142ID37.collider:SetZAxis(0,0,1)
level06.colliders.C_Parent_Tile_61142ID37.collider:SetHalfLengths(0.3,5,2)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID37.collider)
level06.colliders.C_Parent_Tile_61142ID38 = {}
level06.colliders.C_Parent_Tile_61142ID38.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID38.collider:SetOffset(578,85.1031,646.5)
level06.colliders.C_Parent_Tile_61142ID38.collider:SetZAxis(0.371391,0,0.928477)
level06.colliders.C_Parent_Tile_61142ID38.collider:SetHalfLengths(0.3,5,2.69258)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID38.collider)
level06.colliders.C_Parent_Tile_61142ID39 = {}
level06.colliders.C_Parent_Tile_61142ID39.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID39.collider:SetOffset(580.5,85.1031,651)
level06.colliders.C_Parent_Tile_61142ID39.collider:SetZAxis(0.6,0,0.8)
level06.colliders.C_Parent_Tile_61142ID39.collider:SetHalfLengths(0.3,5,2.5)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID39.collider)
level06.colliders.C_Parent_Tile_61142ID40 = {}
level06.colliders.C_Parent_Tile_61142ID40.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID40.collider:SetOffset(584,85.1031,654.5)
level06.colliders.C_Parent_Tile_61142ID40.collider:SetZAxis(0.8,0,0.6)
level06.colliders.C_Parent_Tile_61142ID40.collider:SetHalfLengths(0.3,5.096,2.5)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID40.collider)
level06.colliders.C_Parent_Tile_61142ID41 = {}
level06.colliders.C_Parent_Tile_61142ID41.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID41.collider:SetOffset(588.5,85.1991,657)
level06.colliders.C_Parent_Tile_61142ID41.collider:SetZAxis(0.928477,0,0.371391)
level06.colliders.C_Parent_Tile_61142ID41.collider:SetHalfLengths(0.3,5.28802,2.69258)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID41.collider)
level06.colliders.C_Parent_Tile_61142ID42 = {}
level06.colliders.C_Parent_Tile_61142ID42.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID42.collider:SetOffset(558.5,86.9272,680)
level06.colliders.C_Parent_Tile_61142ID42.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.C_Parent_Tile_61142ID42.collider:SetHalfLengths(0.3,5.096,5.59017)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID42.collider)
level06.colliders.C_Parent_Tile_61142ID43 = {}
level06.colliders.C_Parent_Tile_61142ID43.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID43.collider:SetOffset(547.5,86.8312,682)
level06.colliders.C_Parent_Tile_61142ID43.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.C_Parent_Tile_61142ID43.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID43.collider)
level06.colliders.C_Parent_Tile_61142ID44 = {}
level06.colliders.C_Parent_Tile_61142ID44.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID44.collider:SetOffset(537,86.7352,684.5)
level06.colliders.C_Parent_Tile_61142ID44.collider:SetZAxis(-0.957826,0,0.287348)
level06.colliders.C_Parent_Tile_61142ID44.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.C_Parent_Tile_61142ID34.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID44.collider)
level06.colliders.C_Parent_Tile_61142ID45 = {}
level06.colliders.C_Parent_Tile_61142ID45.collider = AABBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID45.collider:SetOffset(0,0,0)
level06.colliders.C_Parent_Tile_61142ID45.collider:SetMinPos(563.946,80.1031,656.703)
level06.colliders.C_Parent_Tile_61142ID45.collider:SetMaxPos(607.234,92.1192,679.295)
level06.colliders.C_Parent_Tile_61142ID.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID45.collider)
level06.colliders.C_Parent_Tile_61142ID46 = {}
level06.colliders.C_Parent_Tile_61142ID46.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID46.collider:SetOffset(593.5,85.4871,658)
level06.colliders.C_Parent_Tile_61142ID46.collider:SetZAxis(1,0,0)
level06.colliders.C_Parent_Tile_61142ID46.collider:SetHalfLengths(0.3,5.19201,2.5)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID46.collider)
level06.colliders.C_Parent_Tile_61142ID47 = {}
level06.colliders.C_Parent_Tile_61142ID47.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID47.collider:SetOffset(599.5,85.6791,657.5)
level06.colliders.C_Parent_Tile_61142ID47.collider:SetZAxis(0.98995,0,-0.141421)
level06.colliders.C_Parent_Tile_61142ID47.collider:SetHalfLengths(0.3,5.28802,3.53553)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID47.collider)
level06.colliders.C_Parent_Tile_61142ID48 = {}
level06.colliders.C_Parent_Tile_61142ID48.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID48.collider:SetOffset(605,85.9672,659.5)
level06.colliders.C_Parent_Tile_61142ID48.collider:SetZAxis(0.624695,0,0.780869)
level06.colliders.C_Parent_Tile_61142ID48.collider:SetHalfLengths(0.3,5.86406,3.20156)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID48.collider)
level06.colliders.C_Parent_Tile_61142ID49 = {}
level06.colliders.C_Parent_Tile_61142ID49.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID49.collider:SetOffset(600.5,86.8312,665.5)
level06.colliders.C_Parent_Tile_61142ID49.collider:SetZAxis(-0.880471,0,0.4741)
level06.colliders.C_Parent_Tile_61142ID49.collider:SetHalfLengths(0.3,5,7.38241)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID49.collider)
level06.colliders.C_Parent_Tile_61142ID50 = {}
level06.colliders.C_Parent_Tile_61142ID50.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID50.collider:SetOffset(589.5,86.8312,671.5)
level06.colliders.C_Parent_Tile_61142ID50.collider:SetZAxis(-0.874157,0,0.485643)
level06.colliders.C_Parent_Tile_61142ID50.collider:SetHalfLengths(0.3,5.096,5.14782)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID50.collider)
level06.colliders.C_Parent_Tile_61142ID51 = {}
level06.colliders.C_Parent_Tile_61142ID51.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID51.collider:SetOffset(580,86.9272,675.5)
level06.colliders.C_Parent_Tile_61142ID51.collider:SetZAxis(-0.957826,0,0.287348)
level06.colliders.C_Parent_Tile_61142ID51.collider:SetHalfLengths(0.3,5.09601,5.22015)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID51.collider)
level06.colliders.C_Parent_Tile_61142ID52 = {}
level06.colliders.C_Parent_Tile_61142ID52.collider = OBBCollider.Create(-1)
level06.colliders.C_Parent_Tile_61142ID52.collider:SetOffset(569.5,87.0232,678)
level06.colliders.C_Parent_Tile_61142ID52.collider:SetZAxis(-0.98387,0,0.178885)
level06.colliders.C_Parent_Tile_61142ID52.collider:SetHalfLengths(0.3,5.09601,5.59017)
level06.colliders.C_Parent_Tile_61142ID45.collider:AddChild(level06.colliders.C_Parent_Tile_61142ID52.collider)
CollisionHandler.AddAABB(level06.colliders.C_Parent_Tile_61142ID.collider, 3)
level06.colliders.C_Parent_Tile_61142ID1 = nil
level06.colliders.C_Parent_Tile_61142ID2 = nil
level06.colliders.C_Parent_Tile_61142ID3 = nil
level06.colliders.C_Parent_Tile_61142ID4 = nil
level06.colliders.C_Parent_Tile_61142ID5 = nil
level06.colliders.C_Parent_Tile_61142ID6 = nil
level06.colliders.C_Parent_Tile_61142ID7 = nil
level06.colliders.C_Parent_Tile_61142ID8 = nil
level06.colliders.C_Parent_Tile_61142ID9 = nil
level06.colliders.C_Parent_Tile_61142ID10 = nil
level06.colliders.C_Parent_Tile_61142ID11 = nil
level06.colliders.C_Parent_Tile_61142ID12 = nil
level06.colliders.C_Parent_Tile_61142ID13 = nil
level06.colliders.C_Parent_Tile_61142ID14 = nil
level06.colliders.C_Parent_Tile_61142ID15 = nil
level06.colliders.C_Parent_Tile_61142ID16 = nil
level06.colliders.C_Parent_Tile_61142ID17 = nil
level06.colliders.C_Parent_Tile_61142ID18 = nil
level06.colliders.C_Parent_Tile_61142ID19 = nil
level06.colliders.C_Parent_Tile_61142ID20 = nil
level06.colliders.C_Parent_Tile_61142ID21 = nil
level06.colliders.C_Parent_Tile_61142ID22 = nil
level06.colliders.C_Parent_Tile_61142ID23 = nil
level06.colliders.C_Parent_Tile_61142ID24 = nil
level06.colliders.C_Parent_Tile_61142ID25 = nil
level06.colliders.C_Parent_Tile_61142ID26 = nil
level06.colliders.C_Parent_Tile_61142ID27 = nil
level06.colliders.C_Parent_Tile_61142ID28 = nil
level06.colliders.C_Parent_Tile_61142ID29 = nil
level06.colliders.C_Parent_Tile_61142ID30 = nil
level06.colliders.C_Parent_Tile_61142ID31 = nil
level06.colliders.C_Parent_Tile_61142ID32 = nil
level06.colliders.C_Parent_Tile_61142ID33 = nil
level06.colliders.C_Parent_Tile_61142ID34 = nil
level06.colliders.C_Parent_Tile_61142ID35 = nil
level06.colliders.C_Parent_Tile_61142ID36 = nil
level06.colliders.C_Parent_Tile_61142ID37 = nil
level06.colliders.C_Parent_Tile_61142ID38 = nil
level06.colliders.C_Parent_Tile_61142ID39 = nil
level06.colliders.C_Parent_Tile_61142ID40 = nil
level06.colliders.C_Parent_Tile_61142ID41 = nil
level06.colliders.C_Parent_Tile_61142ID42 = nil
level06.colliders.C_Parent_Tile_61142ID43 = nil
level06.colliders.C_Parent_Tile_61142ID44 = nil
level06.colliders.C_Parent_Tile_61142ID45 = nil
level06.colliders.C_Parent_Tile_61142ID46 = nil
level06.colliders.C_Parent_Tile_61142ID47 = nil
level06.colliders.C_Parent_Tile_61142ID48 = nil
level06.colliders.C_Parent_Tile_61142ID49 = nil
level06.colliders.C_Parent_Tile_61142ID50 = nil
level06.colliders.C_Parent_Tile_61142ID51 = nil
level06.colliders.C_Parent_Tile_61142ID52 = nil
end
level06.unload = function()
level06.props.tile638ID = nil
Gear.UnbindInstance(level06.props.t6s154ID.transformID)
level06.props.t6s154ID = nil
Gear.UnbindInstance(level06.props.t6s255ID.transformID)
level06.props.t6s255ID = nil
Gear.UnbindInstance(level06.props.t6s760ID.transformID)
level06.props.t6s760ID = nil
Gear.UnbindInstance(level06.props.t6s1063ID.transformID)
level06.props.t6s1063ID = nil
level06.colliders.Tile6_wallNr1627ID = nil
Gear.UnbindInstance(level06.props.t6s12687ID.transformID)
level06.props.t6s12687ID = nil
Gear.UnbindInstance(level06.props.t6s13688ID.transformID)
level06.props.t6s13688ID = nil
level06.colliders.Tile6_wallNr3710ID = nil
level06.colliders.Tile6_wallNr4711ID = nil
level06.colliders.Tile6_wallNr5712ID = nil
level06.colliders.Tile6_wallNr6713ID = nil
level06.colliders.Tile6_wallNr7714ID = nil
level06.colliders.Tile6_wallNr8715ID = nil
level06.colliders.Tile6_wallNr9716ID = nil
level06.colliders.Tile6_wallNr10717ID = nil
level06.colliders.Tile6_wallNr11718ID = nil
level06.colliders.Tile6_wallNr12719ID = nil
level06.colliders.Tile6_wallNr13720ID = nil
level06.colliders.Tile6_wallNr14721ID = nil
level06.colliders.Tile6_wallNr15722ID = nil
level06.colliders.Tile6_wallNr16723ID = nil
level06.colliders.Tile6_wallNr17724ID = nil
level06.colliders.Tile6_wallNr18725ID = nil
level06.colliders.Tile6_wallNr726ID = nil
level06.colliders.Tile6_wallNr19727ID = nil
level06.colliders.Tile6_wallNr20728ID = nil
level06.colliders.Tile6_wallNr21729ID = nil
level06.colliders.Tile6_wallNr22730ID = nil
level06.colliders.Tile6_wallNr23731ID = nil
level06.colliders.Tile6_wallNr24732ID = nil
level06.colliders.Tile6_wallNr25733ID = nil
level06.colliders.Tile6_wallNr26734ID = nil
level06.colliders.Tile6_wallNr27735ID = nil
level06.colliders.Tile6_wallNr28736ID = nil
level06.colliders.Tile6_wallNr29737ID = nil
level06.colliders.Tile6_wallNr30738ID = nil
level06.colliders.Tile6_wallNr2875ID = nil
level06.colliders.Tile6_wallNr31876ID = nil
level06.colliders.Tile6_wallNr32877ID = nil
level06.colliders.Tile6_wallNr33878ID = nil
level06.colliders.Tile6_wallNr34879ID = nil
level06.colliders.Tile6_wallNr35880ID = nil
level06.colliders.Tile6_wallNr36881ID = nil
level06.colliders.Tile6_wallNr37882ID = nil
level06.colliders.Tile6_wallNr38883ID = nil
level06.colliders.Tile6_wallNr39884ID = nil
level06.colliders.Tile6_wallNr40885ID = nil
level06.colliders.Tile6_wallNr41886ID = nil
level06.colliders.Tile6_wallNr42887ID = nil
level06.colliders.Tile6_wallNr43888ID = nil
level06.colliders.Tile6_wallNr44889ID = nil
level06.colliders.Tile6_wallNr45890ID = nil
level06.colliders.Tile6_wallNr46891ID = nil
level06.colliders.C_Parent_Tile_611137ID = nil
level06.colliders.C_Parent_Tile_621138ID = nil
level06.colliders.C_Parent_Tile_631139ID = nil
level06.colliders.C_Parent_Tile_641140ID = nil
level06.colliders.C_Parent_Tile_651141ID = nil
level06.colliders.C_Parent_Tile_61142ID = nil
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
level07.props.Rock684ID = {}
level07.props.Rock684ID.model = Assets.LoadModel('Models/Stone2.model')
level07.props.Rock684ID.transformID = Gear.BindStaticInstance(level07.props.Rock684ID.model)
Transform.SetPosition(level07.props.Rock684ID.transformID, {x=394.615, y=123, z=629.466})
Transform.SetScaleNonUniform(level07.props.Rock684ID.transformID, 8, 10.5, 14.5)
Transform.SetRotation(level07.props.Rock684ID.transformID, {x=0, y=0, z=0})
level07.props.Rock684ID.collider = SphereCollider.Create(-1)
level07.props.Rock684ID.collider:SetOffset(-1,5,5)
level07.props.Rock684ID.collider:SetRadius(2)
level07.props.Rock684ID.collider:SetPos(393.615,128,634.466)
CollisionHandler.AddSphere(level07.props.Rock684ID.collider, 3)
level07.props.Rock1685ID = {}
level07.props.Rock1685ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Rock1685ID.transformID = Gear.BindStaticInstance(level07.props.Rock1685ID.model)
Transform.SetPosition(level07.props.Rock1685ID.transformID, {x=391.895, y=124.25, z=659.344})
Transform.SetScaleNonUniform(level07.props.Rock1685ID.transformID, 8.40228, 16.538, 11.3485)
Transform.SetRotation(level07.props.Rock1685ID.transformID, {x=0, y=1.78624, z=0})
level07.props.Rock1685ID.collider = SphereCollider.Create(-1)
level07.props.Rock1685ID.collider:SetOffset(1,0,0)
level07.props.Rock1685ID.collider:SetRadius(1.5)
level07.props.Rock1685ID.collider:SetPos(392.895,124.25,659.344)
CollisionHandler.AddSphere(level07.props.Rock1685ID.collider, 3)
level07.props.t6s11686ID = {}
level07.props.t6s11686ID.model = Assets.LoadModel('Models/tile6_s11.model')
level07.props.t6s11686ID.transformID = Gear.BindStaticInstance(level07.props.t6s11686ID.model)
Transform.SetPosition(level07.props.t6s11686ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s11686ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s11686ID.transformID, {x=0, y=0, z=0})
level07.props.t6s14689ID = {}
level07.props.t6s14689ID.model = Assets.LoadModel('Models/tile6_s14.model')
level07.props.t6s14689ID.transformID = Gear.BindStaticInstance(level07.props.t6s14689ID.model)
Transform.SetPosition(level07.props.t6s14689ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level07.props.t6s14689ID.transformID, 1, 1, 1)
Transform.SetRotation(level07.props.t6s14689ID.transformID, {x=0, y=0, z=0})
level07.props.PineTree_NoCollider11057968ID = {}
level07.props.PineTree_NoCollider11057968ID.model = Assets.LoadModel('Models/pineTree1.model')
level07.props.PineTree_NoCollider11057968ID.transformID = Gear.BindStaticInstance(level07.props.PineTree_NoCollider11057968ID.model)
Transform.SetPosition(level07.props.PineTree_NoCollider11057968ID.transformID, {x=175.3, y=102.75, z=772.507})
Transform.SetScaleNonUniform(level07.props.PineTree_NoCollider11057968ID.transformID, 2.57747, 2.57747, 2.57747)
Transform.SetRotation(level07.props.PineTree_NoCollider11057968ID.transformID, {x=-0.0267639, y=0.949219, z=-0.312012})
level07.props.PineTree_NoCollider11059970ID = {}
level07.props.PineTree_NoCollider11059970ID.model = Assets.LoadModel('Models/pineTree1.model')
level07.props.PineTree_NoCollider11059970ID.transformID = Gear.BindStaticInstance(level07.props.PineTree_NoCollider11059970ID.model)
Transform.SetPosition(level07.props.PineTree_NoCollider11059970ID.transformID, {x=361.25, y=142, z=562.5})
Transform.SetScaleNonUniform(level07.props.PineTree_NoCollider11059970ID.transformID, 2.298, 2.298, 2.298)
Transform.SetRotation(level07.props.PineTree_NoCollider11059970ID.transformID, {x=0.00785828, y=0.989746, z=0.141479})
level07.props.Stone22977ID = {}
level07.props.Stone22977ID.model = Assets.LoadModel('Models/Stone3.model')
level07.props.Stone22977ID.transformID = Gear.BindStaticInstance(level07.props.Stone22977ID.model)
Transform.SetPosition(level07.props.Stone22977ID.transformID, {x=169.275, y=101.553, z=770.765})
Transform.SetScaleNonUniform(level07.props.Stone22977ID.transformID, 7.41251, 6.58743, 3.92535)
Transform.SetRotation(level07.props.Stone22977ID.transformID, {x=-0.149971, y=3.17897, z=0})
level07.props.Stone13978ID = {}
level07.props.Stone13978ID.model = Assets.LoadModel('Models/Stone2.model')
level07.props.Stone13978ID.transformID = Gear.BindStaticInstance(level07.props.Stone13978ID.model)
Transform.SetPosition(level07.props.Stone13978ID.transformID, {x=186.725, y=101.583, z=771.169})
Transform.SetScaleNonUniform(level07.props.Stone13978ID.transformID, 7.91557, 5.46514, 3.67993)
Transform.SetRotation(level07.props.Stone13978ID.transformID, {x=-0.0435669, y=0, z=-0.0232361})
level07.props.Stone13978ID.collider = SphereCollider.Create(-1)
level07.props.Stone13978ID.collider:SetOffset(0,0.5,0.6)
level07.props.Stone13978ID.collider:SetRadius(2)
level07.props.Stone13978ID.collider:SetPos(186.725,102.083,771.769)
CollisionHandler.AddSphere(level07.props.Stone13978ID.collider, 3)
level07.colliders.C_Parent_Tile_71158ID = {}
level07.colliders.C_Parent_Tile_71158ID.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID.collider:SetMinPos(127.7,35.1631,512)
level07.colliders.C_Parent_Tile_71158ID.collider:SetMaxPos(384.3,165.059,775.51)
level07.colliders.C_Parent_Tile_71158ID.collider:SetPos(0,0,0)
level07.colliders.C_Parent_Tile_71158ID1 = {}
level07.colliders.C_Parent_Tile_71158ID1.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID1.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID1.collider:SetMinPos(127.7,35.1631,512)
level07.colliders.C_Parent_Tile_71158ID1.collider:SetMaxPos(384.3,165.059,767.246)
level07.colliders.C_Parent_Tile_71158ID.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID1.collider)
level07.colliders.C_Parent_Tile_71158ID2 = {}
level07.colliders.C_Parent_Tile_71158ID2.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID2.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID2.collider:SetMinPos(133.709,118.558,518.701)
level07.colliders.C_Parent_Tile_71158ID2.collider:SetMaxPos(292.044,165.059,569.124)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID2.collider)
level07.colliders.C_Parent_Tile_71158ID3 = {}
level07.colliders.C_Parent_Tile_71158ID3.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID3.collider:SetOffset(203.5,125.009,521)
level07.colliders.C_Parent_Tile_71158ID3.collider:SetZAxis(-0.988372,0,-0.152057)
level07.colliders.C_Parent_Tile_71158ID3.collider:SetHalfLengths(0.3,5,6.57647)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID3.collider)
level07.colliders.C_Parent_Tile_71158ID4 = {}
level07.colliders.C_Parent_Tile_71158ID4.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID4.collider:SetOffset(189.5,125.009,519.5)
level07.colliders.C_Parent_Tile_71158ID4.collider:SetZAxis(-0.997785,0,-0.066519)
level07.colliders.C_Parent_Tile_71158ID4.collider:SetHalfLengths(0.3,5,7.51665)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID4.collider)
level07.colliders.C_Parent_Tile_71158ID5 = {}
level07.colliders.C_Parent_Tile_71158ID5.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID5.collider:SetOffset(176,125.009,519.5)
level07.colliders.C_Parent_Tile_71158ID5.collider:SetZAxis(-0.996546,0,0.0830455)
level07.colliders.C_Parent_Tile_71158ID5.collider:SetHalfLengths(0.3,5.24172,6.0208)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID5.collider)
level07.colliders.C_Parent_Tile_71158ID6 = {}
level07.colliders.C_Parent_Tile_71158ID6.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID6.collider:SetOffset(163.5,125.25,521.5)
level07.colliders.C_Parent_Tile_71158ID6.collider:SetZAxis(-0.974391,0,0.22486)
level07.colliders.C_Parent_Tile_71158ID6.collider:SetHalfLengths(0.3,6.69208,6.67083)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID6.collider)
level07.colliders.C_Parent_Tile_71158ID7 = {}
level07.colliders.C_Parent_Tile_71158ID7.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID7.collider:SetOffset(151,126.942,528)
level07.colliders.C_Parent_Tile_71158ID7.collider:SetZAxis(-0.768221,0,0.640184)
level07.colliders.C_Parent_Tile_71158ID7.collider:SetHalfLengths(0.3,7.17552,7.81025)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID7.collider)
level07.colliders.C_Parent_Tile_71158ID8 = {}
level07.colliders.C_Parent_Tile_71158ID8.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID8.collider:SetOffset(139.5,129.118,539.5)
level07.colliders.C_Parent_Tile_71158ID8.collider:SetZAxis(-0.645942,0,0.763386)
level07.colliders.C_Parent_Tile_71158ID8.collider:SetHalfLengths(0.3,5.9669,8.51469)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID8.collider)
level07.colliders.C_Parent_Tile_71158ID9 = {}
level07.colliders.C_Parent_Tile_71158ID9.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID9.collider:SetOffset(135.5,130.085,552)
level07.colliders.C_Parent_Tile_71158ID9.collider:SetZAxis(0.242536,0,0.970142)
level07.colliders.C_Parent_Tile_71158ID9.collider:SetHalfLengths(0.3,5.9669,6.18466)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID9.collider)
level07.colliders.C_Parent_Tile_71158ID10 = {}
level07.colliders.C_Parent_Tile_71158ID10.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID10.collider:SetOffset(139.5,129.118,563.5)
level07.colliders.C_Parent_Tile_71158ID10.collider:SetZAxis(0.413803,0,0.910366)
level07.colliders.C_Parent_Tile_71158ID10.collider:SetHalfLengths(0.3,6.45035,6.04152)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID10.collider)
level07.colliders.C_Parent_Tile_71158ID11 = {}
level07.colliders.C_Parent_Tile_71158ID11.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID11.collider:SetOffset(254.5,142.171,527.5)
level07.colliders.C_Parent_Tile_71158ID11.collider:SetZAxis(-0.989415,0,0.145114)
level07.colliders.C_Parent_Tile_71158ID11.collider:SetHalfLengths(0.3,22.8876,37.9012)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID11.collider)
level07.colliders.C_Parent_Tile_71158ID12 = {}
level07.colliders.C_Parent_Tile_71158ID12.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID12.collider:SetOffset(213.5,124.283,527.5)
level07.colliders.C_Parent_Tile_71158ID12.collider:SetZAxis(-0.536875,0,-0.843661)
level07.colliders.C_Parent_Tile_71158ID12.collider:SetHalfLengths(0.3,5.72517,6.5192)
level07.colliders.C_Parent_Tile_71158ID2.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID12.collider)
level07.colliders.C_Parent_Tile_71158ID13 = {}
level07.colliders.C_Parent_Tile_71158ID13.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID13.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID13.collider:SetMinPos(141.802,35.1631,519.7)
level07.colliders.C_Parent_Tile_71158ID13.collider:SetMaxPos(319,164.092,711.028)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID13.collider)
level07.colliders.C_Parent_Tile_71158ID14 = {}
level07.colliders.C_Parent_Tile_71158ID14.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID14.collider:SetOffset(304.5,142.171,520)
level07.colliders.C_Parent_Tile_71158ID14.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_71158ID14.collider:SetHalfLengths(0.3,5.24173,14.5)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID14.collider)
level07.colliders.C_Parent_Tile_71158ID15 = {}
level07.colliders.C_Parent_Tile_71158ID15.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID15.collider:SetOffset(150,127.668,576)
level07.colliders.C_Parent_Tile_71158ID15.collider:SetZAxis(0.752577,0,0.658505)
level07.colliders.C_Parent_Tile_71158ID15.collider:SetHalfLengths(0.3,5.72517,10.6301)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID15.collider)
level07.colliders.C_Parent_Tile_71158ID16 = {}
level07.colliders.C_Parent_Tile_71158ID16.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID16.collider:SetOffset(233,122.833,560.5)
level07.colliders.C_Parent_Tile_71158ID16.collider:SetZAxis(-0.274721,0,-0.961524)
level07.colliders.C_Parent_Tile_71158ID16.collider:SetHalfLengths(0.3,5.48345,10.9202)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID16.collider)
level07.colliders.C_Parent_Tile_71158ID17 = {}
level07.colliders.C_Parent_Tile_71158ID17.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID17.collider:SetOffset(152,83.6736,643.5)
level07.colliders.C_Parent_Tile_71158ID17.collider:SetZAxis(0.106265,0,-0.994338)
level07.colliders.C_Parent_Tile_71158ID17.collider:SetHalfLengths(0.3,48.5105,65.873)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID17.collider)
level07.colliders.C_Parent_Tile_71158ID18 = {}
level07.colliders.C_Parent_Tile_71158ID18.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID18.collider:SetOffset(157,127.184,579.5)
level07.colliders.C_Parent_Tile_71158ID18.collider:SetZAxis(-0.8,0,0.6)
level07.colliders.C_Parent_Tile_71158ID18.collider:SetHalfLengths(0.3,5,2.5)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID18.collider)
level07.colliders.C_Parent_Tile_71158ID19 = {}
level07.colliders.C_Parent_Tile_71158ID19.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID19.collider:SetOffset(163,85.3657,646.5)
level07.colliders.C_Parent_Tile_71158ID19.collider:SetZAxis(0.0926234,0,-0.995701)
level07.colliders.C_Parent_Tile_71158ID19.collider:SetHalfLengths(0.3,46.5767,64.7785)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID19.collider)
level07.colliders.C_Parent_Tile_71158ID20 = {}
level07.colliders.C_Parent_Tile_71158ID20.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID20.collider:SetOffset(169.5,126.942,585)
level07.colliders.C_Parent_Tile_71158ID20.collider:SetZAxis(0.164399,0,0.986394)
level07.colliders.C_Parent_Tile_71158ID20.collider:SetHalfLengths(0.3,5.48345,3.04138)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID20.collider)
level07.colliders.C_Parent_Tile_71158ID21 = {}
level07.colliders.C_Parent_Tile_71158ID21.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID21.collider:SetOffset(258.5,142.171,537)
level07.colliders.C_Parent_Tile_71158ID21.collider:SetZAxis(-0.984337,0,0.176299)
level07.colliders.C_Parent_Tile_71158ID21.collider:SetHalfLengths(0.3,21.9207,34.0331)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID21.collider)
level07.colliders.C_Parent_Tile_71158ID22 = {}
level07.colliders.C_Parent_Tile_71158ID22.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID22.collider:SetOffset(227.5,125.25,546.5)
level07.colliders.C_Parent_Tile_71158ID22.collider:SetZAxis(0.581238,0,0.813733)
level07.colliders.C_Parent_Tile_71158ID22.collider:SetHalfLengths(0.3,6.93379,4.30116)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID22.collider)
level07.colliders.C_Parent_Tile_71158ID23 = {}
level07.colliders.C_Parent_Tile_71158ID23.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID23.collider:SetOffset(292,142.171,521)
level07.colliders.C_Parent_Tile_71158ID23.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID23.collider:SetHalfLengths(0.3,5,1)
level07.colliders.C_Parent_Tile_71158ID13.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID23.collider)
level07.colliders.C_Parent_Tile_71158ID24 = {}
level07.colliders.C_Parent_Tile_71158ID24.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID24.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID24.collider:SetMinPos(168.82,86.6505,512)
level07.colliders.C_Parent_Tile_71158ID24.collider:SetMaxPos(353,148.138,614.148)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID24.collider)
level07.colliders.C_Parent_Tile_71158ID25 = {}
level07.colliders.C_Parent_Tile_71158ID25.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID25.collider:SetOffset(339,142.171,520)
level07.colliders.C_Parent_Tile_71158ID25.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_71158ID25.collider:SetHalfLengths(0.3,5,14)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID25.collider)
level07.colliders.C_Parent_Tile_71158ID26 = {}
level07.colliders.C_Parent_Tile_71158ID26.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID26.collider:SetOffset(324,142.171,516)
level07.colliders.C_Parent_Tile_71158ID26.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID26.collider:SetHalfLengths(0.3,5,4)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID26.collider)
level07.colliders.C_Parent_Tile_71158ID27 = {}
level07.colliders.C_Parent_Tile_71158ID27.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID27.collider:SetOffset(319,142.171,516)
level07.colliders.C_Parent_Tile_71158ID27.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_71158ID27.collider:SetHalfLengths(0.3,5,4)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID27.collider)
level07.colliders.C_Parent_Tile_71158ID28 = {}
level07.colliders.C_Parent_Tile_71158ID28.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID28.collider:SetOffset(173,127.909,590)
level07.colliders.C_Parent_Tile_71158ID28.collider:SetZAxis(0.8,0,0.6)
level07.colliders.C_Parent_Tile_71158ID28.collider:SetHalfLengths(0.3,7.17553,5)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID28.collider)
level07.colliders.C_Parent_Tile_71158ID29 = {}
level07.colliders.C_Parent_Tile_71158ID29.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID29.collider:SetOffset(184,125.734,596.5)
level07.colliders.C_Parent_Tile_71158ID29.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_71158ID29.collider:SetHalfLengths(0.3,5.72517,7.82624)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID29.collider)
level07.colliders.C_Parent_Tile_71158ID30 = {}
level07.colliders.C_Parent_Tile_71158ID30.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID30.collider:SetOffset(203.5,125.25,596.5)
level07.colliders.C_Parent_Tile_71158ID30.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.C_Parent_Tile_71158ID30.collider:SetHalfLengths(0.3,5.24172,4.74342)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID30.collider)
level07.colliders.C_Parent_Tile_71158ID31 = {}
level07.colliders.C_Parent_Tile_71158ID31.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID31.collider:SetOffset(229.5,107.846,599)
level07.colliders.C_Parent_Tile_71158ID31.collider:SetZAxis(-0.493013,0,-0.870022)
level07.colliders.C_Parent_Tile_71158ID31.collider:SetHalfLengths(0.3,21.1956,17.2409)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID31.collider)
level07.colliders.C_Parent_Tile_71158ID32 = {}
level07.colliders.C_Parent_Tile_71158ID32.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID32.collider:SetOffset(228.5,124.042,577.5)
level07.colliders.C_Parent_Tile_71158ID32.collider:SetZAxis(0.755689,0,-0.654931)
level07.colliders.C_Parent_Tile_71158ID32.collider:SetHalfLengths(0.3,6.20863,9.92472)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID32.collider)
level07.colliders.C_Parent_Tile_71158ID33 = {}
level07.colliders.C_Parent_Tile_71158ID33.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID33.collider:SetOffset(302,142.654,533)
level07.colliders.C_Parent_Tile_71158ID33.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_71158ID33.collider:SetHalfLengths(0.3,5.48346,13)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID33.collider)
level07.colliders.C_Parent_Tile_71158ID34 = {}
level07.colliders.C_Parent_Tile_71158ID34.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID34.collider:SetOffset(315,142.171,553)
level07.colliders.C_Parent_Tile_71158ID34.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_71158ID34.collider:SetHalfLengths(0.3,5.72517,20)
level07.colliders.C_Parent_Tile_71158ID24.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID34.collider)
level07.colliders.C_Parent_Tile_71158ID35 = {}
level07.colliders.C_Parent_Tile_71158ID35.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID35.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID35.collider:SetMinPos(190.927,100.429,520)
level07.colliders.C_Parent_Tile_71158ID35.collider:SetMaxPos(353.3,147.171,630.073)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID35.collider)
level07.colliders.C_Parent_Tile_71158ID36 = {}
level07.colliders.C_Parent_Tile_71158ID36.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID36.collider:SetOffset(329,142.171,552.5)
level07.colliders.C_Parent_Tile_71158ID36.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID36.collider:SetHalfLengths(0.3,5,19.5)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID36.collider)
level07.colliders.C_Parent_Tile_71158ID37 = {}
level07.colliders.C_Parent_Tile_71158ID37.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID37.collider:SetOffset(341,142.171,533)
level07.colliders.C_Parent_Tile_71158ID37.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_71158ID37.collider:SetHalfLengths(0.3,5,12)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID37.collider)
level07.colliders.C_Parent_Tile_71158ID38 = {}
level07.colliders.C_Parent_Tile_71158ID38.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID38.collider:SetOffset(353,142.171,526.5)
level07.colliders.C_Parent_Tile_71158ID38.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID38.collider:SetHalfLengths(0.3,5,6.5)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID38.collider)
level07.colliders.C_Parent_Tile_71158ID39 = {}
level07.colliders.C_Parent_Tile_71158ID39.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID39.collider:SetOffset(195,125.009,599)
level07.colliders.C_Parent_Tile_71158ID39.collider:SetZAxis(0.970143,0,-0.242536)
level07.colliders.C_Parent_Tile_71158ID39.collider:SetHalfLengths(0.3,5.24172,4.12311)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID39.collider)
level07.colliders.C_Parent_Tile_71158ID40 = {}
level07.colliders.C_Parent_Tile_71158ID40.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID40.collider:SetOffset(214,125.009,606)
level07.colliders.C_Parent_Tile_71158ID40.collider:SetZAxis(0.478852,0,0.877896)
level07.colliders.C_Parent_Tile_71158ID40.collider:SetHalfLengths(0.3,20.2287,12.53)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID40.collider)
level07.colliders.C_Parent_Tile_71158ID41 = {}
level07.colliders.C_Parent_Tile_71158ID41.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID41.collider:SetOffset(217,109.78,617.5)
level07.colliders.C_Parent_Tile_71158ID41.collider:SetZAxis(-0.986394,0,0.164399)
level07.colliders.C_Parent_Tile_71158ID41.collider:SetHalfLengths(0.3,6.9338,3.04138)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID41.collider)
level07.colliders.C_Parent_Tile_71158ID42 = {}
level07.colliders.C_Parent_Tile_71158ID42.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID42.collider:SetOffset(212.5,107.846,624)
level07.colliders.C_Parent_Tile_71158ID42.collider:SetZAxis(-0.242536,0,0.970142)
level07.colliders.C_Parent_Tile_71158ID42.collider:SetHalfLengths(0.3,7.41725,6.18466)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID42.collider)
level07.colliders.C_Parent_Tile_71158ID43 = {}
level07.colliders.C_Parent_Tile_71158ID43.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID43.collider:SetOffset(242.5,107.363,612.5)
level07.colliders.C_Parent_Tile_71158ID43.collider:SetZAxis(-0.948683,0,0.316228)
level07.colliders.C_Parent_Tile_71158ID43.collider:SetHalfLengths(0.3,5.48344,4.74342)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID43.collider)
level07.colliders.C_Parent_Tile_71158ID44 = {}
level07.colliders.C_Parent_Tile_71158ID44.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID44.collider:SetOffset(316.5,142.171,568)
level07.colliders.C_Parent_Tile_71158ID44.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_71158ID44.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID44.collider)
level07.colliders.C_Parent_Tile_71158ID45 = {}
level07.colliders.C_Parent_Tile_71158ID45.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID45.collider:SetOffset(318,142.171,569)
level07.colliders.C_Parent_Tile_71158ID45.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_71158ID45.collider:SetHalfLengths(0.3,5,1)
level07.colliders.C_Parent_Tile_71158ID35.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID45.collider)
level07.colliders.C_Parent_Tile_71158ID46 = {}
level07.colliders.C_Parent_Tile_71158ID46.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID46.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID46.collider:SetMinPos(206.713,86.1671,565.7)
level07.colliders.C_Parent_Tile_71158ID46.collider:SetMaxPos(347.259,156.598,643.088)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID46.collider)
level07.colliders.C_Parent_Tile_71158ID47 = {}
level07.colliders.C_Parent_Tile_71158ID47.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID47.collider:SetOffset(209,105.429,636.5)
level07.colliders.C_Parent_Tile_71158ID47.collider:SetZAxis(-0.294086,0,0.955779)
level07.colliders.C_Parent_Tile_71158ID47.collider:SetHalfLengths(0.3,7.9007,6.80074)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID47.collider)
level07.colliders.C_Parent_Tile_71158ID48 = {}
level07.colliders.C_Parent_Tile_71158ID48.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID48.collider:SetOffset(269,97.4519,625.5)
level07.colliders.C_Parent_Tile_71158ID48.collider:SetZAxis(-0.5547,0,-0.83205)
level07.colliders.C_Parent_Tile_71158ID48.collider:SetHalfLengths(0.3,11.2848,12.6194)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID48.collider)
level07.colliders.C_Parent_Tile_71158ID49 = {}
level07.colliders.C_Parent_Tile_71158ID49.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID49.collider:SetOffset(258.5,103.737,614)
level07.colliders.C_Parent_Tile_71158ID49.collider:SetZAxis(-0.961524,0,-0.274721)
level07.colliders.C_Parent_Tile_71158ID49.collider:SetHalfLengths(0.3,7.41724,3.64005)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID49.collider)
level07.colliders.C_Parent_Tile_71158ID50 = {}
level07.colliders.C_Parent_Tile_71158ID50.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID50.collider:SetOffset(251,106.154,612)
level07.colliders.C_Parent_Tile_71158ID50.collider:SetZAxis(-0.970143,0,-0.242536)
level07.colliders.C_Parent_Tile_71158ID50.collider:SetHalfLengths(0.3,6.20863,4.12311)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID50.collider)
level07.colliders.C_Parent_Tile_71158ID51 = {}
level07.colliders.C_Parent_Tile_71158ID51.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID51.collider:SetOffset(327.5,142.171,566)
level07.colliders.C_Parent_Tile_71158ID51.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_71158ID51.collider:SetHalfLengths(0.3,5,1.5)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID51.collider)
level07.colliders.C_Parent_Tile_71158ID52 = {}
level07.colliders.C_Parent_Tile_71158ID52.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID52.collider:SetOffset(326,142.171,568)
level07.colliders.C_Parent_Tile_71158ID52.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_71158ID52.collider:SetHalfLengths(0.3,5,2)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID52.collider)
level07.colliders.C_Parent_Tile_71158ID53 = {}
level07.colliders.C_Parent_Tile_71158ID53.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID53.collider:SetOffset(327.5,142.171,571)
level07.colliders.C_Parent_Tile_71158ID53.collider:SetZAxis(0.83205,0,0.5547)
level07.colliders.C_Parent_Tile_71158ID53.collider:SetHalfLengths(0.3,5,1.80278)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID53.collider)
level07.colliders.C_Parent_Tile_71158ID54 = {}
level07.colliders.C_Parent_Tile_71158ID54.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID54.collider:SetOffset(338,142.171,587.5)
level07.colliders.C_Parent_Tile_71158ID54.collider:SetZAxis(0.502136,0,0.864789)
level07.colliders.C_Parent_Tile_71158ID54.collider:SetHalfLengths(0.3,14.1855,17.9234)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID54.collider)
level07.colliders.C_Parent_Tile_71158ID55 = {}
level07.colliders.C_Parent_Tile_71158ID55.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID55.collider:SetOffset(317,142.171,571.5)
level07.colliders.C_Parent_Tile_71158ID55.collider:SetZAxis(-0.5547,0,0.83205)
level07.colliders.C_Parent_Tile_71158ID55.collider:SetHalfLengths(0.3,5.72517,1.80278)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID55.collider)
level07.colliders.C_Parent_Tile_71158ID56 = {}
level07.colliders.C_Parent_Tile_71158ID56.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID56.collider:SetOffset(326.5,141.446,590.5)
level07.colliders.C_Parent_Tile_71158ID56.collider:SetZAxis(0.514496,0,0.857493)
level07.colliders.C_Parent_Tile_71158ID56.collider:SetHalfLengths(0.3,15.1525,20.4083)
level07.colliders.C_Parent_Tile_71158ID46.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID56.collider)
level07.colliders.C_Parent_Tile_71158ID57 = {}
level07.colliders.C_Parent_Tile_71158ID57.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID57.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID57.collider:SetMinPos(206.708,84.475,596.708)
level07.colliders.C_Parent_Tile_71158ID57.collider:SetMaxPos(370.086,138.711,682.246)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID57.collider)
level07.colliders.C_Parent_Tile_71158ID58 = {}
level07.colliders.C_Parent_Tile_71158ID58.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID58.collider:SetOffset(365,131.293,598.5)
level07.colliders.C_Parent_Tile_71158ID58.collider:SetZAxis(-0.957826,0,-0.287348)
level07.colliders.C_Parent_Tile_71158ID58.collider:SetHalfLengths(0.3,5,5.22015)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID58.collider)
level07.colliders.C_Parent_Tile_71158ID59 = {}
level07.colliders.C_Parent_Tile_71158ID59.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID59.collider:SetOffset(210,102.528,655.5)
level07.colliders.C_Parent_Tile_71158ID59.collider:SetZAxis(0.233373,0,0.972387)
level07.colliders.C_Parent_Tile_71158ID59.collider:SetHalfLengths(0.3,10.8014,12.855)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID59.collider)
level07.colliders.C_Parent_Tile_71158ID60 = {}
level07.colliders.C_Parent_Tile_71158ID60.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID60.collider:SetOffset(223,96.7267,675)
level07.colliders.C_Parent_Tile_71158ID60.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.C_Parent_Tile_71158ID60.collider:SetHalfLengths(0.3,12.2517,12.2066)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID60.collider)
level07.colliders.C_Parent_Tile_71158ID61 = {}
level07.colliders.C_Parent_Tile_71158ID61.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID61.collider:SetOffset(330,130.81,609.5)
level07.colliders.C_Parent_Tile_71158ID61.collider:SetZAxis(-0.21693,0,0.976187)
level07.colliders.C_Parent_Tile_71158ID61.collider:SetHalfLengths(0.3,7.41725,4.60977)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID61.collider)
level07.colliders.C_Parent_Tile_71158ID62 = {}
level07.colliders.C_Parent_Tile_71158ID62.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID62.collider:SetOffset(328.5,128.393,619.5)
level07.colliders.C_Parent_Tile_71158ID62.collider:SetZAxis(-0.0905358,0,0.995893)
level07.colliders.C_Parent_Tile_71158ID62.collider:SetHalfLengths(0.3,8.14243,5.52268)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID62.collider)
level07.colliders.C_Parent_Tile_71158ID63 = {}
level07.colliders.C_Parent_Tile_71158ID63.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID63.collider:SetOffset(279,93.826,642)
level07.colliders.C_Parent_Tile_71158ID63.collider:SetZAxis(-0.447214,0,-0.894427)
level07.colliders.C_Parent_Tile_71158ID63.collider:SetHalfLengths(0.3,8.62588,6.7082)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID63.collider)
level07.colliders.C_Parent_Tile_71158ID64 = {}
level07.colliders.C_Parent_Tile_71158ID64.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID64.collider:SetOffset(347,132.985,601.5)
level07.colliders.C_Parent_Tile_71158ID64.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID64.collider:SetHalfLengths(0.3,5.72517,1.5)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID64.collider)
level07.colliders.C_Parent_Tile_71158ID65 = {}
level07.colliders.C_Parent_Tile_71158ID65.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID65.collider:SetOffset(353.5,132.26,598.5)
level07.colliders.C_Parent_Tile_71158ID65.collider:SetZAxis(0.974391,0,-0.22486)
level07.colliders.C_Parent_Tile_71158ID65.collider:SetHalfLengths(0.3,5.9669,6.67083)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID65.collider)
level07.colliders.C_Parent_Tile_71158ID66 = {}
level07.colliders.C_Parent_Tile_71158ID66.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID66.collider:SetOffset(336,131.293,608.5)
level07.colliders.C_Parent_Tile_71158ID66.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_71158ID66.collider:SetHalfLengths(0.3,5.48344,1.11803)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID66.collider)
level07.colliders.C_Parent_Tile_71158ID67 = {}
level07.colliders.C_Parent_Tile_71158ID67.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID67.collider:SetOffset(333,130.81,607)
level07.colliders.C_Parent_Tile_71158ID67.collider:SetZAxis(-0.707107,0,-0.707107)
level07.colliders.C_Parent_Tile_71158ID67.collider:SetHalfLengths(0.3,5,2.82843)
level07.colliders.C_Parent_Tile_71158ID57.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID67.collider)
level07.colliders.C_Parent_Tile_71158ID68 = {}
level07.colliders.C_Parent_Tile_71158ID68.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID68.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID68.collider:SetMinPos(132.81,74.0808,599.738)
level07.colliders.C_Parent_Tile_71158ID68.collider:SetMaxPos(384.154,136.777,718.232)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID68.collider)
level07.colliders.C_Parent_Tile_71158ID69 = {}
level07.colliders.C_Parent_Tile_71158ID69.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID69.collider:SetOffset(381.5,131.535,606.5)
level07.colliders.C_Parent_Tile_71158ID69.collider:SetZAxis(-0.857493,0,-0.514496)
level07.colliders.C_Parent_Tile_71158ID69.collider:SetHalfLengths(0.3,5,2.91548)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID69.collider)
level07.colliders.C_Parent_Tile_71158ID70 = {}
level07.colliders.C_Parent_Tile_71158ID70.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID70.collider:SetOffset(374.5,131.535,602.5)
level07.colliders.C_Parent_Tile_71158ID70.collider:SetZAxis(-0.874157,0,-0.485643)
level07.colliders.C_Parent_Tile_71158ID70.collider:SetHalfLengths(0.3,5.24173,5.14782)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID70.collider)
level07.colliders.C_Parent_Tile_71158ID71 = {}
level07.colliders.C_Parent_Tile_71158ID71.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID71.collider:SetOffset(138.5,83.6736,713.5)
level07.colliders.C_Parent_Tile_71158ID71.collider:SetZAxis(-0.773957,0,0.633238)
level07.colliders.C_Parent_Tile_71158ID71.collider:SetHalfLengths(0.3,7.9007,7.10634)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID71.collider)
level07.colliders.C_Parent_Tile_71158ID72 = {}
level07.colliders.C_Parent_Tile_71158ID72.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID72.collider:SetOffset(170,81.9815,703.5)
level07.colliders.C_Parent_Tile_71158ID72.collider:SetZAxis(-0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_71158ID72.collider:SetHalfLengths(0.3,5.24172,1.11803)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID72.collider)
level07.colliders.C_Parent_Tile_71158ID73 = {}
level07.colliders.C_Parent_Tile_71158ID73.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID73.collider:SetOffset(164,82.2232,703.5)
level07.colliders.C_Parent_Tile_71158ID73.collider:SetZAxis(-0.995037,0,-0.0995037)
level07.colliders.C_Parent_Tile_71158ID73.collider:SetHalfLengths(0.3,5,5.02494)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID73.collider)
level07.colliders.C_Parent_Tile_71158ID74 = {}
level07.colliders.C_Parent_Tile_71158ID74.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID74.collider:SetOffset(244.5,89.475,685.5)
level07.colliders.C_Parent_Tile_71158ID74.collider:SetZAxis(0.956674,0,0.291162)
level07.colliders.C_Parent_Tile_71158ID74.collider:SetHalfLengths(0.3,6.45035,12.0208)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID74.collider)
level07.colliders.C_Parent_Tile_71158ID75 = {}
level07.colliders.C_Parent_Tile_71158ID75.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID75.collider:SetOffset(330,125.25,631)
level07.colliders.C_Parent_Tile_71158ID75.collider:SetZAxis(0.316228,0,0.948683)
level07.colliders.C_Parent_Tile_71158ID75.collider:SetHalfLengths(0.3,6.45035,6.32456)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID75.collider)
level07.colliders.C_Parent_Tile_71158ID76 = {}
level07.colliders.C_Parent_Tile_71158ID76.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID76.collider:SetOffset(286.5,88.7498,665.5)
level07.colliders.C_Parent_Tile_71158ID76.collider:SetZAxis(0.0905358,0,-0.995893)
level07.colliders.C_Parent_Tile_71158ID76.collider:SetHalfLengths(0.3,6.45035,5.52268)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID76.collider)
level07.colliders.C_Parent_Tile_71158ID77 = {}
level07.colliders.C_Parent_Tile_71158ID77.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID77.collider:SetOffset(284.5,90.2002,654)
level07.colliders.C_Parent_Tile_71158ID77.collider:SetZAxis(-0.384615,0,-0.923077)
level07.colliders.C_Parent_Tile_71158ID77.collider:SetHalfLengths(0.3,8.62588,6.5)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID77.collider)
level07.colliders.C_Parent_Tile_71158ID78 = {}
level07.colliders.C_Parent_Tile_71158ID78.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID78.collider:SetOffset(158,82.2232,707)
level07.colliders.C_Parent_Tile_71158ID78.collider:SetZAxis(-0.242536,0,0.970143)
level07.colliders.C_Parent_Tile_71158ID78.collider:SetHalfLengths(0.3,8.14243,4.12311)
level07.colliders.C_Parent_Tile_71158ID68.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID78.collider)
level07.colliders.C_Parent_Tile_71158ID79 = {}
level07.colliders.C_Parent_Tile_71158ID79.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID79.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID79.collider:SetMinPos(127.714,71.6636,608)
level07.colliders.C_Parent_Tile_71158ID79.collider:SetMaxPos(384.3,136.535,734.089)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID79.collider)
level07.colliders.C_Parent_Tile_71158ID80 = {}
level07.colliders.C_Parent_Tile_71158ID80.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID80.collider:SetOffset(384,122.35,639.5)
level07.colliders.C_Parent_Tile_71158ID80.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID80.collider:SetHalfLengths(0.3,14.1855,31.5)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID80.collider)
level07.colliders.C_Parent_Tile_71158ID81 = {}
level07.colliders.C_Parent_Tile_71158ID81.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID81.collider:SetOffset(130.5,86.5743,726)
level07.colliders.C_Parent_Tile_71158ID81.collider:SetZAxis(-0.298275,0,0.95448)
level07.colliders.C_Parent_Tile_71158ID81.collider:SetHalfLengths(0.3,10.0762,8.38153)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID81.collider)
level07.colliders.C_Parent_Tile_71158ID82 = {}
level07.colliders.C_Parent_Tile_71158ID82.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID82.collider:SetOffset(196,84.157,709)
level07.colliders.C_Parent_Tile_71158ID82.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.C_Parent_Tile_71158ID82.collider:SetHalfLengths(0.3,6.20862,4.47214)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID82.collider)
level07.colliders.C_Parent_Tile_71158ID83 = {}
level07.colliders.C_Parent_Tile_71158ID83.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID83.collider:SetOffset(181.5,82.9484,705)
level07.colliders.C_Parent_Tile_71158ID83.collider:SetZAxis(-0.982339,0,-0.187112)
level07.colliders.C_Parent_Tile_71158ID83.collider:SetHalfLengths(0.3,5.9669,10.6888)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID83.collider)
level07.colliders.C_Parent_Tile_71158ID84 = {}
level07.colliders.C_Parent_Tile_71158ID84.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID84.collider:SetOffset(335.5,123.8,643.5)
level07.colliders.C_Parent_Tile_71158ID84.collider:SetZAxis(0.4741,0,0.880471)
level07.colliders.C_Parent_Tile_71158ID84.collider:SetHalfLengths(0.3,6.69208,7.38241)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID84.collider)
level07.colliders.C_Parent_Tile_71158ID85 = {}
level07.colliders.C_Parent_Tile_71158ID85.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID85.collider:SetOffset(285.5,88.7498,672.5)
level07.colliders.C_Parent_Tile_71158ID85.collider:SetZAxis(0.316228,0,-0.948683)
level07.colliders.C_Parent_Tile_71158ID85.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID85.collider)
level07.colliders.C_Parent_Tile_71158ID86 = {}
level07.colliders.C_Parent_Tile_71158ID86.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID86.collider:SetOffset(300.5,90.9253,687.5)
level07.colliders.C_Parent_Tile_71158ID86.collider:SetZAxis(0.758011,0,0.652242)
level07.colliders.C_Parent_Tile_71158ID86.collider:SetHalfLengths(0.3,17.328,28.3637)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID86.collider)
level07.colliders.C_Parent_Tile_71158ID87 = {}
level07.colliders.C_Parent_Tile_71158ID87.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID87.collider:SetOffset(292,90.2002,697.5)
level07.colliders.C_Parent_Tile_71158ID87.collider:SetZAxis(0.768221,0,0.640184)
level07.colliders.C_Parent_Tile_71158ID87.collider:SetHalfLengths(0.3,18.5366,27.3359)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID87.collider)
level07.colliders.C_Parent_Tile_71158ID88 = {}
level07.colliders.C_Parent_Tile_71158ID88.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID88.collider:SetOffset(282.5,90.9253,669)
level07.colliders.C_Parent_Tile_71158ID88.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_71158ID88.collider:SetHalfLengths(0.3,6.93379,3.5)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID88.collider)
level07.colliders.C_Parent_Tile_71158ID89 = {}
level07.colliders.C_Parent_Tile_71158ID89.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID89.collider:SetOffset(271,90.2002,682.5)
level07.colliders.C_Parent_Tile_71158ID89.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_71158ID89.collider:SetHalfLengths(0.3,6.45035,2.5)
level07.colliders.C_Parent_Tile_71158ID79.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID89.collider)
level07.colliders.C_Parent_Tile_71158ID90 = {}
level07.colliders.C_Parent_Tile_71158ID90.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID90.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID90.collider:SetMinPos(127.7,79.157,649.834)
level07.colliders.C_Parent_Tile_71158ID90.collider:SetMaxPos(354.298,129.283,760.189)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID90.collider)
level07.colliders.C_Parent_Tile_71158ID91 = {}
level07.colliders.C_Parent_Tile_71158ID91.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID91.collider:SetOffset(128,91.6505,739)
level07.colliders.C_Parent_Tile_71158ID91.collider:SetZAxis(0,0,1)
level07.colliders.C_Parent_Tile_71158ID91.collider:SetHalfLengths(0.3,7.65897,5)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID91.collider)
level07.colliders.C_Parent_Tile_71158ID92 = {}
level07.colliders.C_Parent_Tile_71158ID92.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID92.collider:SetOffset(134.5,94.3095,752)
level07.colliders.C_Parent_Tile_71158ID92.collider:SetZAxis(0.630593,0,0.776114)
level07.colliders.C_Parent_Tile_71158ID92.collider:SetHalfLengths(0.3,7.9007,10.3078)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID92.collider)
level07.colliders.C_Parent_Tile_71158ID93 = {}
level07.colliders.C_Parent_Tile_71158ID93.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID93.collider:SetOffset(203.5,84.3988,714)
level07.colliders.C_Parent_Tile_71158ID93.collider:SetZAxis(-0.759257,0,-0.650791)
level07.colliders.C_Parent_Tile_71158ID93.collider:SetHalfLengths(0.3,5.24173,4.60977)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID93.collider)
level07.colliders.C_Parent_Tile_71158ID94 = {}
level07.colliders.C_Parent_Tile_71158ID94.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID94.collider:SetOffset(261.5,88.0246,688)
level07.colliders.C_Parent_Tile_71158ID94.collider:SetZAxis(0.98387,0,-0.178885)
level07.colliders.C_Parent_Tile_71158ID94.collider:SetHalfLengths(0.3,6.20863,5.59017)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID94.collider)
level07.colliders.C_Parent_Tile_71158ID95 = {}
level07.colliders.C_Parent_Tile_71158ID95.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID95.collider:SetOffset(271,86.816,685.5)
level07.colliders.C_Parent_Tile_71158ID95.collider:SetZAxis(0.936329,0,-0.351123)
level07.colliders.C_Parent_Tile_71158ID95.collider:SetHalfLengths(0.3,6.69208,4.272)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID95.collider)
level07.colliders.C_Parent_Tile_71158ID96 = {}
level07.colliders.C_Parent_Tile_71158ID96.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID96.collider:SetOffset(352,104.22,681)
level07.colliders.C_Parent_Tile_71158ID96.collider:SetZAxis(0.124035,0,-0.992278)
level07.colliders.C_Parent_Tile_71158ID96.collider:SetHalfLengths(0.3,21.4373,16.1245)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID96.collider)
level07.colliders.C_Parent_Tile_71158ID97 = {}
level07.colliders.C_Parent_Tile_71158ID97.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID97.collider:SetOffset(351.5,120.658,665)
level07.colliders.C_Parent_Tile_71158ID97.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_71158ID97.collider:SetHalfLengths(0.3,5.72517,2.5)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID97.collider)
level07.colliders.C_Parent_Tile_71158ID98 = {}
level07.colliders.C_Parent_Tile_71158ID98.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID98.collider:SetOffset(344,122.108,657.5)
level07.colliders.C_Parent_Tile_71158ID98.collider:SetZAxis(0.5547,0,0.83205)
level07.colliders.C_Parent_Tile_71158ID98.collider:SetHalfLengths(0.3,7.17552,9.01388)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID98.collider)
level07.colliders.C_Parent_Tile_71158ID99 = {}
level07.colliders.C_Parent_Tile_71158ID99.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID99.collider:SetOffset(257,103.978,728)
level07.colliders.C_Parent_Tile_71158ID99.collider:SetZAxis(-0.997164,0,0.0752577)
level07.colliders.C_Parent_Tile_71158ID99.collider:SetHalfLengths(0.3,19.7452,53.1507)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID99.collider)
level07.colliders.C_Parent_Tile_71158ID100 = {}
level07.colliders.C_Parent_Tile_71158ID100.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID100.collider:SetOffset(208,87.2995,722.5)
level07.colliders.C_Parent_Tile_71158ID100.collider:SetZAxis(-0.178885,0,-0.98387)
level07.colliders.C_Parent_Tile_71158ID100.collider:SetHalfLengths(0.3,7.9007,5.59017)
level07.colliders.C_Parent_Tile_71158ID90.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID100.collider)
level07.colliders.C_Parent_Tile_71158ID101 = {}
level07.colliders.C_Parent_Tile_71158ID101.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID101.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID101.collider:SetMinPos(140.828,82.2995,670.715)
level07.colliders.C_Parent_Tile_71158ID101.collider:SetMaxPos(384.095,127.833,767.246)
level07.colliders.C_Parent_Tile_71158ID1.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID101.collider)
level07.colliders.C_Parent_Tile_71158ID102 = {}
level07.colliders.C_Parent_Tile_71158ID102.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID102.collider:SetOffset(146,97.2102,763.5)
level07.colliders.C_Parent_Tile_71158ID102.collider:SetZAxis(0.819232,0,0.573462)
level07.colliders.C_Parent_Tile_71158ID102.collider:SetHalfLengths(0.3,6.9338,6.10328)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID102.collider)
level07.colliders.C_Parent_Tile_71158ID103 = {}
level07.colliders.C_Parent_Tile_71158ID103.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID103.collider:SetOffset(379.5,120.899,672.5)
level07.colliders.C_Parent_Tile_71158ID103.collider:SetZAxis(0.948683,0,-0.316228)
level07.colliders.C_Parent_Tile_71158ID103.collider:SetHalfLengths(0.3,6.45035,4.74342)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID103.collider)
level07.colliders.C_Parent_Tile_71158ID104 = {}
level07.colliders.C_Parent_Tile_71158ID104.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID104.collider:SetOffset(326,103.737,700)
level07.colliders.C_Parent_Tile_71158ID104.collider:SetZAxis(-0.970143,0,0.242536)
level07.colliders.C_Parent_Tile_71158ID104.collider:SetHalfLengths(0.3,5.48345,8.24621)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID104.collider)
level07.colliders.C_Parent_Tile_71158ID105 = {}
level07.colliders.C_Parent_Tile_71158ID105.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID105.collider:SetOffset(367,104.704,685.5)
level07.colliders.C_Parent_Tile_71158ID105.collider:SetZAxis(0.136637,0,-0.990621)
level07.colliders.C_Parent_Tile_71158ID105.collider:SetHalfLengths(0.3,22.1625,14.6373)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID105.collider)
level07.colliders.C_Parent_Tile_71158ID106 = {}
level07.colliders.C_Parent_Tile_71158ID106.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID106.collider:SetOffset(372,121.866,672.5)
level07.colliders.C_Parent_Tile_71158ID106.collider:SetZAxis(0.894427,0,0.447214)
level07.colliders.C_Parent_Tile_71158ID106.collider:SetHalfLengths(0.3,5.9669,3.3541)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID106.collider)
level07.colliders.C_Parent_Tile_71158ID107 = {}
level07.colliders.C_Parent_Tile_71158ID107.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID107.collider:SetOffset(257.5,102.528,739)
level07.colliders.C_Parent_Tile_71158ID107.collider:SetZAxis(-0.996997,0,0.0774367)
level07.colliders.C_Parent_Tile_71158ID107.collider:SetHalfLengths(0.3,14.9107,51.6551)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID107.collider)
level07.colliders.C_Parent_Tile_71158ID108 = {}
level07.colliders.C_Parent_Tile_71158ID108.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID108.collider:SetOffset(208.5,92.6174,744)
level07.colliders.C_Parent_Tile_71158ID108.collider:SetZAxis(0.928477,0,0.371391)
level07.colliders.C_Parent_Tile_71158ID108.collider:SetHalfLengths(0.3,6.20863,2.69258)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID108.collider)
level07.colliders.C_Parent_Tile_71158ID109 = {}
level07.colliders.C_Parent_Tile_71158ID109.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID109.collider:SetOffset(204,89.2333,730.5)
level07.colliders.C_Parent_Tile_71158ID109.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID109.collider:SetHalfLengths(0.3,5.9669,1.5)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID109.collider)
level07.colliders.C_Parent_Tile_71158ID110 = {}
level07.colliders.C_Parent_Tile_71158ID110.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID110.collider:SetOffset(206.5,88.2664,728.5)
level07.colliders.C_Parent_Tile_71158ID110.collider:SetZAxis(0.980581,0,-0.196116)
level07.colliders.C_Parent_Tile_71158ID110.collider:SetHalfLengths(0.3,5.9669,2.54951)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID110.collider)
level07.colliders.C_Parent_Tile_71158ID111 = {}
level07.colliders.C_Parent_Tile_71158ID111.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID111.collider:SetOffset(321.5,103.253,703.5)
level07.colliders.C_Parent_Tile_71158ID111.collider:SetZAxis(-0.196116,0,-0.980581)
level07.colliders.C_Parent_Tile_71158ID111.collider:SetHalfLengths(0.3,5,2.54951)
level07.colliders.C_Parent_Tile_71158ID101.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID111.collider)
level07.colliders.C_Parent_Tile_71158ID112 = {}
level07.colliders.C_Parent_Tile_71158ID112.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID112.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID112.collider:SetMinPos(151,88.826,693.7)
level07.colliders.C_Parent_Tile_71158ID112.collider:SetMaxPos(384.3,112.846,775.51)
level07.colliders.C_Parent_Tile_71158ID.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID112.collider)
level07.colliders.C_Parent_Tile_71158ID113 = {}
level07.colliders.C_Parent_Tile_71158ID113.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID113.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID113.collider:SetMinPos(151,88.826,693.951)
level07.colliders.C_Parent_Tile_71158ID113.collider:SetMaxPos(368.296,112.846,775.51)
level07.colliders.C_Parent_Tile_71158ID112.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID113.collider)
level07.colliders.C_Parent_Tile_71158ID114 = {}
level07.colliders.C_Parent_Tile_71158ID114.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID114.collider:SetOffset(178.5,99.144,767)
level07.colliders.C_Parent_Tile_71158ID114.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_71158ID114.collider:SetHalfLengths(0.3,5,27.5)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID114.collider)
level07.colliders.C_Parent_Tile_71158ID115 = {}
level07.colliders.C_Parent_Tile_71158ID115.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID115.collider:SetOffset(210,97.4519,754)
level07.colliders.C_Parent_Tile_71158ID115.collider:SetZAxis(0.110432,0,-0.993884)
level07.colliders.C_Parent_Tile_71158ID115.collider:SetHalfLengths(0.3,8.62588,9.05539)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID115.collider)
level07.colliders.C_Parent_Tile_71158ID116 = {}
level07.colliders.C_Parent_Tile_71158ID116.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID116.collider:SetOffset(308,103.495,714)
level07.colliders.C_Parent_Tile_71158ID116.collider:SetZAxis(-0.447214,0,0.894427)
level07.colliders.C_Parent_Tile_71158ID116.collider:SetHalfLengths(0.3,5.24173,2.23607)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID116.collider)
level07.colliders.C_Parent_Tile_71158ID117 = {}
level07.colliders.C_Parent_Tile_71158ID117.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID117.collider:SetOffset(306.5,103.253,719)
level07.colliders.C_Parent_Tile_71158ID117.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.C_Parent_Tile_71158ID117.collider:SetHalfLengths(0.3,5.24172,3.04138)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID117.collider)
level07.colliders.C_Parent_Tile_71158ID118 = {}
level07.colliders.C_Parent_Tile_71158ID118.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID118.collider:SetOffset(344.5,104.22,696.5)
level07.colliders.C_Parent_Tile_71158ID118.collider:SetZAxis(-0.948683,0,-0.316228)
level07.colliders.C_Parent_Tile_71158ID118.collider:SetHalfLengths(0.3,5,1.58114)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID118.collider)
level07.colliders.C_Parent_Tile_71158ID119 = {}
level07.colliders.C_Parent_Tile_71158ID119.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID119.collider:SetOffset(338.5,104.22,697)
level07.colliders.C_Parent_Tile_71158ID119.collider:SetZAxis(-0.976187,0,0.21693)
level07.colliders.C_Parent_Tile_71158ID119.collider:SetHalfLengths(0.3,5.48345,4.60977)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID119.collider)
level07.colliders.C_Parent_Tile_71158ID120 = {}
level07.colliders.C_Parent_Tile_71158ID120.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID120.collider:SetOffset(367.5,106.154,697)
level07.colliders.C_Parent_Tile_71158ID120.collider:SetZAxis(-0.164399,0,0.986394)
level07.colliders.C_Parent_Tile_71158ID120.collider:SetHalfLengths(0.3,6.69207,3.04138)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID120.collider)
level07.colliders.C_Parent_Tile_71158ID121 = {}
level07.colliders.C_Parent_Tile_71158ID121.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID121.collider:SetOffset(348,104.22,697)
level07.colliders.C_Parent_Tile_71158ID121.collider:SetZAxis(1,0,0)
level07.colliders.C_Parent_Tile_71158ID121.collider:SetHalfLengths(0.3,5,2)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID121.collider)
level07.colliders.C_Parent_Tile_71158ID122 = {}
level07.colliders.C_Parent_Tile_71158ID122.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID122.collider:SetOffset(308,103.978,723)
level07.colliders.C_Parent_Tile_71158ID122.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.C_Parent_Tile_71158ID122.collider:SetHalfLengths(0.3,5.9669,2.23607)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID122.collider)
level07.colliders.C_Parent_Tile_71158ID123 = {}
level07.colliders.C_Parent_Tile_71158ID123.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID123.collider:SetOffset(169.575,102.153,770.765)
level07.colliders.C_Parent_Tile_71158ID123.collider:SetZAxis(-0.0369528,0.149409,-0.988085)
level07.colliders.C_Parent_Tile_71158ID123.collider:SetHalfLengths(7.41251,3.95246,3.92535)
level07.colliders.C_Parent_Tile_71158ID113.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID123.collider)
level07.colliders.C_Parent_Tile_71158ID124 = {}
level07.colliders.C_Parent_Tile_71158ID124.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID124.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID124.collider:SetMinPos(205.76,91.0016,693.7)
level07.colliders.C_Parent_Tile_71158ID124.collider:SetMaxPos(384.3,111.637,767.18)
level07.colliders.C_Parent_Tile_71158ID112.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID124.collider)
level07.colliders.C_Parent_Tile_71158ID125 = {}
level07.colliders.C_Parent_Tile_71158ID125.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID125.collider:SetOffset(207.5,99.144,765)
level07.colliders.C_Parent_Tile_71158ID125.collider:SetZAxis(0.6,0,-0.8)
level07.colliders.C_Parent_Tile_71158ID125.collider:SetHalfLengths(0.3,6.69207,2.5)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID125.collider)
level07.colliders.C_Parent_Tile_71158ID126 = {}
level07.colliders.C_Parent_Tile_71158ID126.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID126.collider:SetOffset(304,103.012,742)
level07.colliders.C_Parent_Tile_71158ID126.collider:SetZAxis(-0.316228,0,0.948683)
level07.colliders.C_Parent_Tile_71158ID126.collider:SetHalfLengths(0.3,8.62588,6.32456)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID126.collider)
level07.colliders.C_Parent_Tile_71158ID127 = {}
level07.colliders.C_Parent_Tile_71158ID127.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID127.collider:SetOffset(313,99.3857,755.5)
level07.colliders.C_Parent_Tile_71158ID127.collider:SetZAxis(0.826227,0,0.563337)
level07.colliders.C_Parent_Tile_71158ID127.collider:SetHalfLengths(0.3,6.20862,13.3135)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID127.collider)
level07.colliders.C_Parent_Tile_71158ID128 = {}
level07.colliders.C_Parent_Tile_71158ID128.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID128.collider:SetOffset(337,98.1771,764.5)
level07.colliders.C_Parent_Tile_71158ID128.collider:SetZAxis(0.993409,0,0.114624)
level07.colliders.C_Parent_Tile_71158ID128.collider:SetHalfLengths(0.3,5.72517,13.0863)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID128.collider)
level07.colliders.C_Parent_Tile_71158ID129 = {}
level07.colliders.C_Parent_Tile_71158ID129.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID129.collider:SetOffset(377.5,98.4188,745.5)
level07.colliders.C_Parent_Tile_71158ID129.collider:SetZAxis(0.707107,0,-0.707107)
level07.colliders.C_Parent_Tile_71158ID129.collider:SetHalfLengths(0.3,6.45035,9.19239)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID129.collider)
level07.colliders.C_Parent_Tile_71158ID130 = {}
level07.colliders.C_Parent_Tile_71158ID130.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID130.collider:SetOffset(384,99.8692,735.5)
level07.colliders.C_Parent_Tile_71158ID130.collider:SetZAxis(0,0,-1)
level07.colliders.C_Parent_Tile_71158ID130.collider:SetHalfLengths(0.3,8.8676,3.5)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID130.collider)
level07.colliders.C_Parent_Tile_71158ID131 = {}
level07.colliders.C_Parent_Tile_71158ID131.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID131.collider:SetOffset(382,105.671,700.5)
level07.colliders.C_Parent_Tile_71158ID131.collider:SetZAxis(-0.8,0,-0.6)
level07.colliders.C_Parent_Tile_71158ID131.collider:SetHalfLengths(0.3,5.24173,2.5)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID131.collider)
level07.colliders.C_Parent_Tile_71158ID132 = {}
level07.colliders.C_Parent_Tile_71158ID132.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID132.collider:SetOffset(375,105.429,696.5)
level07.colliders.C_Parent_Tile_71158ID132.collider:SetZAxis(-0.894427,0,-0.447214)
level07.colliders.C_Parent_Tile_71158ID132.collider:SetHalfLengths(0.3,6.20862,5.59017)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID132.collider)
level07.colliders.C_Parent_Tile_71158ID133 = {}
level07.colliders.C_Parent_Tile_71158ID133.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID133.collider:SetOffset(369,104.22,694)
level07.colliders.C_Parent_Tile_71158ID133.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_71158ID133.collider:SetHalfLengths(0.3,6.93379,1)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID133.collider)
level07.colliders.C_Parent_Tile_71158ID134 = {}
level07.colliders.C_Parent_Tile_71158ID134.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID134.collider:SetOffset(366,104.462,700)
level07.colliders.C_Parent_Tile_71158ID134.collider:SetZAxis(-1,0,0)
level07.colliders.C_Parent_Tile_71158ID134.collider:SetHalfLengths(0.3,5.24172,1)
level07.colliders.C_Parent_Tile_71158ID124.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID134.collider)
level07.colliders.C_Parent_Tile_71158ID135 = {}
level07.colliders.C_Parent_Tile_71158ID135.collider = AABBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID135.collider:SetOffset(0,0,0)
level07.colliders.C_Parent_Tile_71158ID135.collider:SetMinPos(349.834,93.4188,751.75)
level07.colliders.C_Parent_Tile_71158ID135.collider:SetMaxPos(371.166,104.386,766.25)
level07.colliders.C_Parent_Tile_71158ID112.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID135.collider)
level07.colliders.C_Parent_Tile_71158ID136 = {}
level07.colliders.C_Parent_Tile_71158ID136.collider = OBBCollider.Create(-1)
level07.colliders.C_Parent_Tile_71158ID136.collider:SetOffset(360.5,98.9023,759)
level07.colliders.C_Parent_Tile_71158ID136.collider:SetZAxis(0.83205,0,-0.5547)
level07.colliders.C_Parent_Tile_71158ID136.collider:SetHalfLengths(0.3,5.48345,12.6194)
level07.colliders.C_Parent_Tile_71158ID135.collider:AddChild(level07.colliders.C_Parent_Tile_71158ID136.collider)
CollisionHandler.AddAABB(level07.colliders.C_Parent_Tile_71158ID.collider, 3)
level07.colliders.C_Parent_Tile_71158ID1 = nil
level07.colliders.C_Parent_Tile_71158ID2 = nil
level07.colliders.C_Parent_Tile_71158ID3 = nil
level07.colliders.C_Parent_Tile_71158ID4 = nil
level07.colliders.C_Parent_Tile_71158ID5 = nil
level07.colliders.C_Parent_Tile_71158ID6 = nil
level07.colliders.C_Parent_Tile_71158ID7 = nil
level07.colliders.C_Parent_Tile_71158ID8 = nil
level07.colliders.C_Parent_Tile_71158ID9 = nil
level07.colliders.C_Parent_Tile_71158ID10 = nil
level07.colliders.C_Parent_Tile_71158ID11 = nil
level07.colliders.C_Parent_Tile_71158ID12 = nil
level07.colliders.C_Parent_Tile_71158ID13 = nil
level07.colliders.C_Parent_Tile_71158ID14 = nil
level07.colliders.C_Parent_Tile_71158ID15 = nil
level07.colliders.C_Parent_Tile_71158ID16 = nil
level07.colliders.C_Parent_Tile_71158ID17 = nil
level07.colliders.C_Parent_Tile_71158ID18 = nil
level07.colliders.C_Parent_Tile_71158ID19 = nil
level07.colliders.C_Parent_Tile_71158ID20 = nil
level07.colliders.C_Parent_Tile_71158ID21 = nil
level07.colliders.C_Parent_Tile_71158ID22 = nil
level07.colliders.C_Parent_Tile_71158ID23 = nil
level07.colliders.C_Parent_Tile_71158ID24 = nil
level07.colliders.C_Parent_Tile_71158ID25 = nil
level07.colliders.C_Parent_Tile_71158ID26 = nil
level07.colliders.C_Parent_Tile_71158ID27 = nil
level07.colliders.C_Parent_Tile_71158ID28 = nil
level07.colliders.C_Parent_Tile_71158ID29 = nil
level07.colliders.C_Parent_Tile_71158ID30 = nil
level07.colliders.C_Parent_Tile_71158ID31 = nil
level07.colliders.C_Parent_Tile_71158ID32 = nil
level07.colliders.C_Parent_Tile_71158ID33 = nil
level07.colliders.C_Parent_Tile_71158ID34 = nil
level07.colliders.C_Parent_Tile_71158ID35 = nil
level07.colliders.C_Parent_Tile_71158ID36 = nil
level07.colliders.C_Parent_Tile_71158ID37 = nil
level07.colliders.C_Parent_Tile_71158ID38 = nil
level07.colliders.C_Parent_Tile_71158ID39 = nil
level07.colliders.C_Parent_Tile_71158ID40 = nil
level07.colliders.C_Parent_Tile_71158ID41 = nil
level07.colliders.C_Parent_Tile_71158ID42 = nil
level07.colliders.C_Parent_Tile_71158ID43 = nil
level07.colliders.C_Parent_Tile_71158ID44 = nil
level07.colliders.C_Parent_Tile_71158ID45 = nil
level07.colliders.C_Parent_Tile_71158ID46 = nil
level07.colliders.C_Parent_Tile_71158ID47 = nil
level07.colliders.C_Parent_Tile_71158ID48 = nil
level07.colliders.C_Parent_Tile_71158ID49 = nil
level07.colliders.C_Parent_Tile_71158ID50 = nil
level07.colliders.C_Parent_Tile_71158ID51 = nil
level07.colliders.C_Parent_Tile_71158ID52 = nil
level07.colliders.C_Parent_Tile_71158ID53 = nil
level07.colliders.C_Parent_Tile_71158ID54 = nil
level07.colliders.C_Parent_Tile_71158ID55 = nil
level07.colliders.C_Parent_Tile_71158ID56 = nil
level07.colliders.C_Parent_Tile_71158ID57 = nil
level07.colliders.C_Parent_Tile_71158ID58 = nil
level07.colliders.C_Parent_Tile_71158ID59 = nil
level07.colliders.C_Parent_Tile_71158ID60 = nil
level07.colliders.C_Parent_Tile_71158ID61 = nil
level07.colliders.C_Parent_Tile_71158ID62 = nil
level07.colliders.C_Parent_Tile_71158ID63 = nil
level07.colliders.C_Parent_Tile_71158ID64 = nil
level07.colliders.C_Parent_Tile_71158ID65 = nil
level07.colliders.C_Parent_Tile_71158ID66 = nil
level07.colliders.C_Parent_Tile_71158ID67 = nil
level07.colliders.C_Parent_Tile_71158ID68 = nil
level07.colliders.C_Parent_Tile_71158ID69 = nil
level07.colliders.C_Parent_Tile_71158ID70 = nil
level07.colliders.C_Parent_Tile_71158ID71 = nil
level07.colliders.C_Parent_Tile_71158ID72 = nil
level07.colliders.C_Parent_Tile_71158ID73 = nil
level07.colliders.C_Parent_Tile_71158ID74 = nil
level07.colliders.C_Parent_Tile_71158ID75 = nil
level07.colliders.C_Parent_Tile_71158ID76 = nil
level07.colliders.C_Parent_Tile_71158ID77 = nil
level07.colliders.C_Parent_Tile_71158ID78 = nil
level07.colliders.C_Parent_Tile_71158ID79 = nil
level07.colliders.C_Parent_Tile_71158ID80 = nil
level07.colliders.C_Parent_Tile_71158ID81 = nil
level07.colliders.C_Parent_Tile_71158ID82 = nil
level07.colliders.C_Parent_Tile_71158ID83 = nil
level07.colliders.C_Parent_Tile_71158ID84 = nil
level07.colliders.C_Parent_Tile_71158ID85 = nil
level07.colliders.C_Parent_Tile_71158ID86 = nil
level07.colliders.C_Parent_Tile_71158ID87 = nil
level07.colliders.C_Parent_Tile_71158ID88 = nil
level07.colliders.C_Parent_Tile_71158ID89 = nil
level07.colliders.C_Parent_Tile_71158ID90 = nil
level07.colliders.C_Parent_Tile_71158ID91 = nil
level07.colliders.C_Parent_Tile_71158ID92 = nil
level07.colliders.C_Parent_Tile_71158ID93 = nil
level07.colliders.C_Parent_Tile_71158ID94 = nil
level07.colliders.C_Parent_Tile_71158ID95 = nil
level07.colliders.C_Parent_Tile_71158ID96 = nil
level07.colliders.C_Parent_Tile_71158ID97 = nil
level07.colliders.C_Parent_Tile_71158ID98 = nil
level07.colliders.C_Parent_Tile_71158ID99 = nil
level07.colliders.C_Parent_Tile_71158ID100 = nil
level07.colliders.C_Parent_Tile_71158ID101 = nil
level07.colliders.C_Parent_Tile_71158ID102 = nil
level07.colliders.C_Parent_Tile_71158ID103 = nil
level07.colliders.C_Parent_Tile_71158ID104 = nil
level07.colliders.C_Parent_Tile_71158ID105 = nil
level07.colliders.C_Parent_Tile_71158ID106 = nil
level07.colliders.C_Parent_Tile_71158ID107 = nil
level07.colliders.C_Parent_Tile_71158ID108 = nil
level07.colliders.C_Parent_Tile_71158ID109 = nil
level07.colliders.C_Parent_Tile_71158ID110 = nil
level07.colliders.C_Parent_Tile_71158ID111 = nil
level07.colliders.C_Parent_Tile_71158ID112 = nil
level07.colliders.C_Parent_Tile_71158ID113 = nil
level07.colliders.C_Parent_Tile_71158ID114 = nil
level07.colliders.C_Parent_Tile_71158ID115 = nil
level07.colliders.C_Parent_Tile_71158ID116 = nil
level07.colliders.C_Parent_Tile_71158ID117 = nil
level07.colliders.C_Parent_Tile_71158ID118 = nil
level07.colliders.C_Parent_Tile_71158ID119 = nil
level07.colliders.C_Parent_Tile_71158ID120 = nil
level07.colliders.C_Parent_Tile_71158ID121 = nil
level07.colliders.C_Parent_Tile_71158ID122 = nil
level07.colliders.C_Parent_Tile_71158ID123 = nil
level07.colliders.C_Parent_Tile_71158ID124 = nil
level07.colliders.C_Parent_Tile_71158ID125 = nil
level07.colliders.C_Parent_Tile_71158ID126 = nil
level07.colliders.C_Parent_Tile_71158ID127 = nil
level07.colliders.C_Parent_Tile_71158ID128 = nil
level07.colliders.C_Parent_Tile_71158ID129 = nil
level07.colliders.C_Parent_Tile_71158ID130 = nil
level07.colliders.C_Parent_Tile_71158ID131 = nil
level07.colliders.C_Parent_Tile_71158ID132 = nil
level07.colliders.C_Parent_Tile_71158ID133 = nil
level07.colliders.C_Parent_Tile_71158ID134 = nil
level07.colliders.C_Parent_Tile_71158ID135 = nil
level07.colliders.C_Parent_Tile_71158ID136 = nil
end
level07.unload = function()
level07.props.tile739ID = nil
Gear.UnbindInstance(level07.props.t6s356ID.transformID)
level07.props.t6s356ID = nil
Gear.UnbindInstance(level07.props.t6s457ID.transformID)
level07.props.t6s457ID = nil
Gear.UnbindInstance(level07.props.t6s558ID.transformID)
level07.props.t6s558ID = nil
Gear.UnbindInstance(level07.props.t6s659ID.transformID)
level07.props.t6s659ID = nil
Gear.UnbindInstance(level07.props.t6s861ID.transformID)
level07.props.t6s861ID = nil
Gear.UnbindInstance(level07.props.t6s962ID.transformID)
level07.props.t6s962ID = nil
Gear.UnbindInstance(level07.props.t7s164ID.transformID)
level07.props.t7s164ID = nil
Gear.UnbindInstance(level07.props.t7s265ID.transformID)
level07.props.t7s265ID = nil
Gear.UnbindInstance(level07.props.t7s366ID.transformID)
level07.props.t7s366ID = nil
Gear.UnbindInstance(level07.props.t7s467ID.transformID)
level07.props.t7s467ID = nil
Gear.UnbindInstance(level07.props.t7s568ID.transformID)
level07.props.t7s568ID = nil
Gear.UnbindInstance(level07.props.t7s669ID.transformID)
level07.props.t7s669ID = nil
Gear.UnbindInstance(level07.props.t7s770ID.transformID)
level07.props.t7s770ID = nil
Gear.UnbindInstance(level07.props.t7s871ID.transformID)
level07.props.t7s871ID = nil
Gear.UnbindInstance(level07.props.t7s972ID.transformID)
level07.props.t7s972ID = nil
level07.colliders.Tile7_wallNr593ID = nil
level07.colliders.Tile7_wallNr1594ID = nil
level07.colliders.Tile7_wallNr2595ID = nil
level07.colliders.Tile7_wallNr3596ID = nil
level07.colliders.Tile7_wallNr5597ID = nil
level07.colliders.Tile7_wallNr6598ID = nil
level07.colliders.Tile7_wallNr7599ID = nil
level07.colliders.Tile7_wallNr8600ID = nil
level07.colliders.Tile7_wallNr9601ID = nil
level07.colliders.Tile7_wallNr10602ID = nil
level07.colliders.Tile7_wallNr11603ID = nil
level07.colliders.Tile7_wallNr16604ID = nil
level07.colliders.Tile7_wallNr17605ID = nil
level07.colliders.Tile7_wallNr18606ID = nil
level07.colliders.Tile7_wallNr19607ID = nil
level07.colliders.Tile7_wallNr20608ID = nil
level07.colliders.Tile7_wallNr21609ID = nil
level07.colliders.Tile7_wallNr22610ID = nil
level07.colliders.Tile7_wallNr23611ID = nil
level07.colliders.Tile7_wallNr24612ID = nil
level07.colliders.Tile7_wallNr26613ID = nil
level07.colliders.Tile7_wallNr27614ID = nil
level07.colliders.Tile7_wallNr28615ID = nil
level07.colliders.Tile7_wallNr29616ID = nil
level07.colliders.Tile7_wallNr30617ID = nil
level07.colliders.Tile7_wallNr31618ID = nil
level07.colliders.Tile7_wallNr32619ID = nil
level07.colliders.Tile7_wallNr33620ID = nil
level07.colliders.Tile7_wallNr35621ID = nil
level07.colliders.Tile7_wallNr36622ID = nil
level07.colliders.Tile7_wallNr37623ID = nil
level07.colliders.Tile7_wallNr38624ID = nil
level07.colliders.Tile7_wallNr39625ID = nil
level07.colliders.Tile7_wallNr40626ID = nil
level07.colliders.Tile7_wallNr41628ID = nil
level07.colliders.Tile7_wallNr42629ID = nil
level07.colliders.Tile7_wallNr43630ID = nil
level07.colliders.Tile7_wallNr45631ID = nil
level07.colliders.Tile7_wallNr48632ID = nil
level07.colliders.Tile7_wallNr49633ID = nil
level07.colliders.Tile7_wallNr50634ID = nil
level07.colliders.Tile7_wallNr51635ID = nil
level07.colliders.Tile7_wallNr52636ID = nil
level07.colliders.Tile7_wallNr55637ID = nil
level07.colliders.Tile7_wallNr56638ID = nil
level07.colliders.Tile7_wallNr57639ID = nil
level07.colliders.Tile7_wallNr58640ID = nil
level07.colliders.Tile7_wallNr59641ID = nil
level07.colliders.Tile7_wallNr60642ID = nil
level07.colliders.Tile7_wallNr61643ID = nil
level07.colliders.Tile7_wallNr62644ID = nil
level07.colliders.Tile7_wallNr63645ID = nil
level07.colliders.Tile7_wallNr64646ID = nil
level07.colliders.Tile7_wallNr65647ID = nil
level07.colliders.Tile7_wallNr66648ID = nil
level07.colliders.Tile7_wallNr67649ID = nil
level07.colliders.Tile7_wallNr69650ID = nil
level07.colliders.Tile7_wallNr70651ID = nil
level07.colliders.Tile7_wallNr72652ID = nil
level07.colliders.Tile7_wallNr73653ID = nil
level07.colliders.Tile7_wallNr74654ID = nil
level07.colliders.Tile7_wallNr75655ID = nil
level07.colliders.Tile7_wallNr79656ID = nil
level07.colliders.Tile7_wallNr80657ID = nil
level07.colliders.Tile7_wallNr81658ID = nil
level07.colliders.Tile7_wallNr83659ID = nil
level07.colliders.Tile7_wallNr84660ID = nil
level07.colliders.Tile7_wallNr85661ID = nil
level07.colliders.Tile7_wallNr86662ID = nil
level07.colliders.Tile7_wallNr87663ID = nil
level07.colliders.Tile7_wallNr88664ID = nil
level07.colliders.Tile7_wallNr89665ID = nil
level07.colliders.Tile7_wallNr90666ID = nil
level07.colliders.Tile7_wallNr91667ID = nil
level07.colliders.Tile7_wallNr92668ID = nil
level07.colliders.Tile7_wallNr93669ID = nil
level07.colliders.Tile7_wallNr96670ID = nil
level07.colliders.Tile7_wallNr97671ID = nil
Gear.UnbindInstance(level07.props.Rock684ID.transformID)
level07.props.Rock684ID = nil
Gear.UnbindInstance(level07.props.Rock1685ID.transformID)
level07.props.Rock1685ID = nil
Gear.UnbindInstance(level07.props.t6s11686ID.transformID)
level07.props.t6s11686ID = nil
Gear.UnbindInstance(level07.props.t6s14689ID.transformID)
level07.props.t6s14689ID = nil
level07.colliders.Tile7_wallNr44740ID = nil
level07.colliders.Tile7_wallNr99741ID = nil
level07.colliders.Tile7_wallNr100742ID = nil
level07.colliders.Tile7_wallNr101743ID = nil
level07.colliders.Tile7_wallNr78744ID = nil
level07.colliders.Tile7_wallNr102745ID = nil
level07.colliders.Tile7_wallNr103746ID = nil
level07.colliders.Tile7_wallNr76747ID = nil
level07.colliders.Tile7_wallNr4748ID = nil
level07.colliders.Tile7_wallNr71749ID = nil
level07.colliders.Tile7_wallNr77750ID = nil
level07.colliders.Tile7_wallNr98751ID = nil
level07.colliders.Tile7_wallNr104752ID = nil
level07.colliders.Tile7_wallNr105753ID = nil
level07.colliders.Tile7_wallNr106754ID = nil
level07.colliders.Tile7_wallNr107755ID = nil
level07.colliders.Tile7_wallNr108756ID = nil
level07.colliders.Tile7_wallNr109757ID = nil
level07.colliders.Tile7_wallNr110758ID = nil
level07.colliders.Tile7_wallNr111759ID = nil
level07.colliders.Tile7_wallNr25760ID = nil
level07.colliders.Tile7_wallNr54761ID = nil
level07.colliders.Tile7_wallNr53762ID = nil
level07.colliders.Tile7_wallNr112763ID = nil
level07.colliders.Tile7_wallNr113764ID = nil
level07.colliders.Tile7_wallNr34765ID = nil
level07.colliders.Tile7_wallNr46766ID = nil
level07.colliders.Tile7_wallNr114767ID = nil
level07.colliders.Tile7_wallNr115768ID = nil
level07.colliders.Tile7_wallNr116769ID = nil
level07.colliders.Tile7_wallNr47770ID = nil
level07.colliders.Tile7_wallNr117771ID = nil
level07.colliders.Tile7_wallNr68772ID = nil
level07.colliders.Tile7_wallNr82773ID = nil
level07.colliders.Tile7_wallNr118774ID = nil
level07.colliders.Tile7_wallNr119775ID = nil
level07.colliders.Tile7_wallNr120776ID = nil
level07.colliders.Tile7_wallNr13777ID = nil
level07.colliders.Tile7_wallNr95778ID = nil
level07.colliders.Tile7_wallNr94779ID = nil
level07.colliders.Tile7_wallNr14780ID = nil
level07.colliders.Tile7_wallNr15781ID = nil
Gear.UnbindInstance(level07.props.PineTree_NoCollider11057968ID.transformID)
level07.props.PineTree_NoCollider11057968ID = nil
Gear.UnbindInstance(level07.props.PineTree_NoCollider11059970ID.transformID)
level07.props.PineTree_NoCollider11059970ID = nil
Gear.UnbindInstance(level07.props.Stone22977ID.transformID)
level07.props.Stone22977ID = nil
Gear.UnbindInstance(level07.props.Stone13978ID.transformID)
level07.props.Stone13978ID = nil
level07.colliders.C_Parent_Tile_711143ID = nil
level07.colliders.C_Parent_Tile_721144ID = nil
level07.colliders.C_Parent_Tile_731145ID = nil
level07.colliders.C_Parent_Tile_741146ID = nil
level07.colliders.C_Parent_Tile_751147ID = nil
level07.colliders.C_Parent_Tile_761148ID = nil
level07.colliders.C_Parent_Tile_771149ID = nil
level07.colliders.C_Parent_Tile_781150ID = nil
level07.colliders.C_Parent_Tile_791151ID = nil
level07.colliders.C_Parent_Tile_7101152ID = nil
level07.colliders.C_Parent_Tile_7111153ID = nil
level07.colliders.C_Parent_Tile_7121154ID = nil
level07.colliders.C_Parent_Tile_7131155ID = nil
level07.colliders.C_Parent_Tile_7141156ID = nil
level07.colliders.C_Parent_Tile_7151157ID = nil
level07.colliders.C_Parent_Tile_71158ID = nil
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
level08.props.t8s4690ID = {}
level08.props.t8s4690ID.model = Assets.LoadModel('Models/tile8_s4.model')
level08.props.t8s4690ID.transformID = Gear.BindStaticInstance(level08.props.t8s4690ID.model)
Transform.SetPosition(level08.props.t8s4690ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s4690ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s4690ID.transformID, {x=0, y=0, z=0})
level08.props.t8s5691ID = {}
level08.props.t8s5691ID.model = Assets.LoadModel('Models/tile8_s5.model')
level08.props.t8s5691ID.transformID = Gear.BindStaticInstance(level08.props.t8s5691ID.model)
Transform.SetPosition(level08.props.t8s5691ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s5691ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s5691ID.transformID, {x=0, y=0, z=0})
level08.props.t8s6692ID = {}
level08.props.t8s6692ID.model = Assets.LoadModel('Models/tile8_s6a.model')
level08.props.t8s6692ID.transformID = Gear.BindStaticInstance(level08.props.t8s6692ID.model)
Transform.SetPosition(level08.props.t8s6692ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s6692ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s6692ID.transformID, {x=0, y=0, z=0})
level08.props.t8s7693ID = {}
level08.props.t8s7693ID.model = Assets.LoadModel('Models/tile8_s7.model')
level08.props.t8s7693ID.transformID = Gear.BindStaticInstance(level08.props.t8s7693ID.model)
Transform.SetPosition(level08.props.t8s7693ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s7693ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s7693ID.transformID, {x=0, y=0, z=0})
level08.props.t8s8702ID = {}
level08.props.t8s8702ID.model = Assets.LoadModel('Models/tile8_s8a.model')
level08.props.t8s8702ID.transformID = Gear.BindStaticInstance(level08.props.t8s8702ID.model)
Transform.SetPosition(level08.props.t8s8702ID.transformID, {x=0, y=0, z=0})
Transform.SetScaleNonUniform(level08.props.t8s8702ID.transformID, 1, 1, 1)
Transform.SetRotation(level08.props.t8s8702ID.transformID, {x=0, y=0, z=0})
level08.colliders.C_Parent_Tile_81169ID = {}
level08.colliders.C_Parent_Tile_81169ID.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID.collider:SetMinPos(261.702,119.168,390.774)
level08.colliders.C_Parent_Tile_81169ID.collider:SetMaxPos(380.299,150.026,511)
level08.colliders.C_Parent_Tile_81169ID.collider:SetPos(0,0,0)
level08.colliders.C_Parent_Tile_81169ID1 = {}
level08.colliders.C_Parent_Tile_81169ID1.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID1.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID1.collider:SetMinPos(262.702,119.996,397.721)
level08.colliders.C_Parent_Tile_81169ID1.collider:SetMaxPos(298.232,135.293,427.037)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID1.collider)
level08.colliders.C_Parent_Tile_81169ID2 = {}
level08.colliders.C_Parent_Tile_81169ID2.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID2.collider:SetOffset(293.5,126.486,403.5)
level08.colliders.C_Parent_Tile_81169ID2.collider:SetZAxis(-0.633238,0,-0.773957)
level08.colliders.C_Parent_Tile_81169ID2.collider:SetHalfLengths(0.3,5.33107,7.10634)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID2.collider)
level08.colliders.C_Parent_Tile_81169ID3 = {}
level08.colliders.C_Parent_Tile_81169ID3.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID3.collider:SetOffset(281.5,126.155,401)
level08.colliders.C_Parent_Tile_81169ID3.collider:SetZAxis(-0.928477,0,0.371391)
level08.colliders.C_Parent_Tile_81169ID3.collider:SetHalfLengths(0.3,6.15874,8.07775)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID3.collider)
level08.colliders.C_Parent_Tile_81169ID4 = {}
level08.colliders.C_Parent_Tile_81169ID4.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID4.collider:SetOffset(272,127.313,404.5)
level08.colliders.C_Parent_Tile_81169ID4.collider:SetZAxis(-0.970143,0,0.242536)
level08.colliders.C_Parent_Tile_81169ID4.collider:SetHalfLengths(0.3,6.48981,2.06155)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID4.collider)
level08.colliders.C_Parent_Tile_81169ID5 = {}
level08.colliders.C_Parent_Tile_81169ID5.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID5.collider:SetOffset(267,125.824,412)
level08.colliders.C_Parent_Tile_81169ID5.collider:SetZAxis(-0.393919,0,0.919145)
level08.colliders.C_Parent_Tile_81169ID5.collider:SetHalfLengths(0.3,5.16553,7.61577)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID5.collider)
level08.colliders.C_Parent_Tile_81169ID6 = {}
level08.colliders.C_Parent_Tile_81169ID6.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID6.collider:SetOffset(263.5,125.658,423)
level08.colliders.C_Parent_Tile_81169ID6.collider:SetZAxis(-0.124035,0,0.992278)
level08.colliders.C_Parent_Tile_81169ID6.collider:SetHalfLengths(0.3,5,4.03113)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID6.collider)
level08.colliders.C_Parent_Tile_81169ID7 = {}
level08.colliders.C_Parent_Tile_81169ID7.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID7.collider:SetOffset(277.5,127.313,406)
level08.colliders.C_Parent_Tile_81169ID7.collider:SetZAxis(0.868243,0,0.496139)
level08.colliders.C_Parent_Tile_81169ID7.collider:SetHalfLengths(0.3,6.65535,4.03113)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID7.collider)
level08.colliders.C_Parent_Tile_81169ID8 = {}
level08.colliders.C_Parent_Tile_81169ID8.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID8.collider:SetOffset(284.5,128.969,410.5)
level08.colliders.C_Parent_Tile_81169ID8.collider:SetZAxis(0.813733,0,0.581238)
level08.colliders.C_Parent_Tile_81169ID8.collider:SetHalfLengths(0.3,6.32428,4.30116)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID8.collider)
level08.colliders.C_Parent_Tile_81169ID9 = {}
level08.colliders.C_Parent_Tile_81169ID9.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID9.collider:SetOffset(285,127.644,418.5)
level08.colliders.C_Parent_Tile_81169ID9.collider:SetZAxis(-0.478852,0,0.877896)
level08.colliders.C_Parent_Tile_81169ID9.collider:SetHalfLengths(0.3,5.4966,6.26498)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID9.collider)
level08.colliders.C_Parent_Tile_81169ID10 = {}
level08.colliders.C_Parent_Tile_81169ID10.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID10.collider:SetOffset(272.5,127.148,416)
level08.colliders.C_Parent_Tile_81169ID10.collider:SetZAxis(0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_81169ID10.collider:SetHalfLengths(0.3,6.15874,4.03113)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID10.collider)
level08.colliders.C_Parent_Tile_81169ID11 = {}
level08.colliders.C_Parent_Tile_81169ID11.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID11.collider:SetOffset(273.5,128.307,408)
level08.colliders.C_Parent_Tile_81169ID11.collider:SetZAxis(0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_81169ID11.collider:SetHalfLengths(0.3,5.99321,4.03113)
level08.colliders.C_Parent_Tile_81169ID1.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID11.collider)
level08.colliders.C_Parent_Tile_81169ID12 = {}
level08.colliders.C_Parent_Tile_81169ID12.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID12.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID12.collider:SetMinPos(261.702,120.492,400.7)
level08.colliders.C_Parent_Tile_81169ID12.collider:SetMaxPos(327,133.803,452.073)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID12.collider)
level08.colliders.C_Parent_Tile_81169ID13 = {}
level08.colliders.C_Parent_Tile_81169ID13.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID13.collider:SetOffset(321.5,126.817,401)
level08.colliders.C_Parent_Tile_81169ID13.collider:SetZAxis(-1,0,0)
level08.colliders.C_Parent_Tile_81169ID13.collider:SetHalfLengths(0.3,5,5.5)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID13.collider)
level08.colliders.C_Parent_Tile_81169ID14 = {}
level08.colliders.C_Parent_Tile_81169ID14.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID14.collider:SetOffset(312.5,126.817,402)
level08.colliders.C_Parent_Tile_81169ID14.collider:SetZAxis(-0.961524,0,0.274721)
level08.colliders.C_Parent_Tile_81169ID14.collider:SetHalfLengths(0.3,5.16553,3.64005)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID14.collider)
level08.colliders.C_Parent_Tile_81169ID15 = {}
level08.colliders.C_Parent_Tile_81169ID15.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID15.collider:SetOffset(303.5,126.651,406)
level08.colliders.C_Parent_Tile_81169ID15.collider:SetZAxis(-0.877896,0,0.478852)
level08.colliders.C_Parent_Tile_81169ID15.collider:SetHalfLengths(0.3,5.16553,6.26498)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID15.collider)
level08.colliders.C_Parent_Tile_81169ID16 = {}
level08.colliders.C_Parent_Tile_81169ID16.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID16.collider:SetOffset(262.5,125.658,431)
level08.colliders.C_Parent_Tile_81169ID16.collider:SetZAxis(-0.124035,0,0.992278)
level08.colliders.C_Parent_Tile_81169ID16.collider:SetHalfLengths(0.3,5,4.03113)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID16.collider)
level08.colliders.C_Parent_Tile_81169ID17 = {}
level08.colliders.C_Parent_Tile_81169ID17.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID17.collider:SetOffset(262.5,125.658,439.5)
level08.colliders.C_Parent_Tile_81169ID17.collider:SetZAxis(0.110432,0,0.993884)
level08.colliders.C_Parent_Tile_81169ID17.collider:SetHalfLengths(0.3,5.16553,4.52769)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID17.collider)
level08.colliders.C_Parent_Tile_81169ID18 = {}
level08.colliders.C_Parent_Tile_81169ID18.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID18.collider:SetOffset(264,125.824,448)
level08.colliders.C_Parent_Tile_81169ID18.collider:SetZAxis(0.242536,0,0.970143)
level08.colliders.C_Parent_Tile_81169ID18.collider:SetHalfLengths(0.3,5.16553,4.12311)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID18.collider)
level08.colliders.C_Parent_Tile_81169ID19 = {}
level08.colliders.C_Parent_Tile_81169ID19.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID19.collider:SetOffset(277,127.148,422)
level08.colliders.C_Parent_Tile_81169ID19.collider:SetZAxis(-0.928477,0,-0.371391)
level08.colliders.C_Parent_Tile_81169ID19.collider:SetHalfLengths(0.3,5,5.38516)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID19.collider)
level08.colliders.C_Parent_Tile_81169ID20 = {}
level08.colliders.C_Parent_Tile_81169ID20.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID20.collider:SetOffset(271.5,128.141,438)
level08.colliders.C_Parent_Tile_81169ID20.collider:SetZAxis(-0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_81169ID20.collider:SetHalfLengths(0.3,5.66215,4.03113)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID20.collider)
level08.colliders.C_Parent_Tile_81169ID21 = {}
level08.colliders.C_Parent_Tile_81169ID21.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID21.collider:SetOffset(276,127.479,434)
level08.colliders.C_Parent_Tile_81169ID21.collider:SetZAxis(1,0,0)
level08.colliders.C_Parent_Tile_81169ID21.collider:SetHalfLengths(0.3,5.66214,5)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID21.collider)
level08.colliders.C_Parent_Tile_81169ID22 = {}
level08.colliders.C_Parent_Tile_81169ID22.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID22.collider:SetOffset(282,126.817,440)
level08.colliders.C_Parent_Tile_81169ID22.collider:SetZAxis(0.164399,0,0.986394)
level08.colliders.C_Parent_Tile_81169ID22.collider:SetHalfLengths(0.3,5.99321,6.08276)
level08.colliders.C_Parent_Tile_81169ID12.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID22.collider)
level08.colliders.C_Parent_Tile_81169ID23 = {}
level08.colliders.C_Parent_Tile_81169ID23.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID23.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID23.collider:SetMinPos(264.719,120.161,390.774)
level08.colliders.C_Parent_Tile_81169ID23.collider:SetMaxPos(371.23,134.134,460.105)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID23.collider)
level08.colliders.C_Parent_Tile_81169ID24 = {}
level08.colliders.C_Parent_Tile_81169ID24.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID24.collider:SetOffset(366,125.824,397)
level08.colliders.C_Parent_Tile_81169ID24.collider:SetZAxis(-0.640184,0,-0.768221)
level08.colliders.C_Parent_Tile_81169ID24.collider:SetHalfLengths(0.3,5.16553,7.81025)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID24.collider)
level08.colliders.C_Parent_Tile_81169ID25 = {}
level08.colliders.C_Parent_Tile_81169ID25.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID25.collider:SetOffset(357,125.658,394.5)
level08.colliders.C_Parent_Tile_81169ID25.collider:SetZAxis(-0.752577,0,0.658505)
level08.colliders.C_Parent_Tile_81169ID25.collider:SetHalfLengths(0.3,5.4966,5.31507)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID25.collider)
level08.colliders.C_Parent_Tile_81169ID26 = {}
level08.colliders.C_Parent_Tile_81169ID26.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID26.collider:SetOffset(351,126.155,401)
level08.colliders.C_Parent_Tile_81169ID26.collider:SetZAxis(-0.5547,0,0.83205)
level08.colliders.C_Parent_Tile_81169ID26.collider:SetHalfLengths(0.3,5.4966,3.60555)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID26.collider)
level08.colliders.C_Parent_Tile_81169ID27 = {}
level08.colliders.C_Parent_Tile_81169ID27.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID27.collider:SetOffset(346.5,126.651,406.5)
level08.colliders.C_Parent_Tile_81169ID27.collider:SetZAxis(-0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_81169ID27.collider:SetHalfLengths(0.3,5.33107,3.53553)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID27.collider)
level08.colliders.C_Parent_Tile_81169ID28 = {}
level08.colliders.C_Parent_Tile_81169ID28.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID28.collider:SetOffset(340,126.32,406.5)
level08.colliders.C_Parent_Tile_81169ID28.collider:SetZAxis(-0.847998,0,-0.529999)
level08.colliders.C_Parent_Tile_81169ID28.collider:SetHalfLengths(0.3,5.16553,4.71699)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID28.collider)
level08.colliders.C_Parent_Tile_81169ID29 = {}
level08.colliders.C_Parent_Tile_81169ID29.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID29.collider:SetOffset(331.5,126.486,402.5)
level08.colliders.C_Parent_Tile_81169ID29.collider:SetZAxis(-0.948683,0,-0.316228)
level08.colliders.C_Parent_Tile_81169ID29.collider:SetHalfLengths(0.3,5.33107,4.74342)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID29.collider)
level08.colliders.C_Parent_Tile_81169ID30 = {}
level08.colliders.C_Parent_Tile_81169ID30.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID30.collider:SetOffset(266.5,125.989,456)
level08.colliders.C_Parent_Tile_81169ID30.collider:SetZAxis(0.351123,0,0.936329)
level08.colliders.C_Parent_Tile_81169ID30.collider:SetHalfLengths(0.3,5.16553,4.272)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID30.collider)
level08.colliders.C_Parent_Tile_81169ID31 = {}
level08.colliders.C_Parent_Tile_81169ID31.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID31.collider:SetOffset(280.5,127.81,447)
level08.colliders.C_Parent_Tile_81169ID31.collider:SetZAxis(-0.928477,0,0.371391)
level08.colliders.C_Parent_Tile_81169ID31.collider:SetHalfLengths(0.3,5.66215,2.69258)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID31.collider)
level08.colliders.C_Parent_Tile_81169ID32 = {}
level08.colliders.C_Parent_Tile_81169ID32.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID32.collider:SetOffset(275.5,128.472,448.5)
level08.colliders.C_Parent_Tile_81169ID32.collider:SetZAxis(-0.980581,0,0.196116)
level08.colliders.C_Parent_Tile_81169ID32.collider:SetHalfLengths(0.3,5.66215,2.54951)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID32.collider)
level08.colliders.C_Parent_Tile_81169ID33 = {}
level08.colliders.C_Parent_Tile_81169ID33.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID33.collider:SetOffset(272.5,127.81,445.5)
level08.colliders.C_Parent_Tile_81169ID33.collider:SetZAxis(-0.141421,0,-0.98995)
level08.colliders.C_Parent_Tile_81169ID33.collider:SetHalfLengths(0.3,5.33108,3.53553)
level08.colliders.C_Parent_Tile_81169ID23.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID33.collider)
level08.colliders.C_Parent_Tile_81169ID34 = {}
level08.colliders.C_Parent_Tile_81169ID34.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID34.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID34.collider:SetMinPos(267.724,120.824,406.76)
level08.colliders.C_Parent_Tile_81169ID34.collider:SetMaxPos(370.268,133.307,473.192)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID34.collider)
level08.colliders.C_Parent_Tile_81169ID35 = {}
level08.colliders.C_Parent_Tile_81169ID35.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID35.collider:SetOffset(269.5,125.824,463.5)
level08.colliders.C_Parent_Tile_81169ID35.collider:SetZAxis(0.393919,0,0.919145)
level08.colliders.C_Parent_Tile_81169ID35.collider:SetHalfLengths(0.3,5,3.80789)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID35.collider)
level08.colliders.C_Parent_Tile_81169ID36 = {}
level08.colliders.C_Parent_Tile_81169ID36.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID36.collider:SetOffset(273.5,125.824,470)
level08.colliders.C_Parent_Tile_81169ID36.collider:SetZAxis(0.640184,0,0.768221)
level08.colliders.C_Parent_Tile_81169ID36.collider:SetHalfLengths(0.3,5,3.90512)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID36.collider)
level08.colliders.C_Parent_Tile_81169ID37 = {}
level08.colliders.C_Parent_Tile_81169ID37.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID37.collider:SetOffset(366.5,126.982,414)
level08.colliders.C_Parent_Tile_81169ID37.collider:SetZAxis(-0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_81169ID37.collider:SetHalfLengths(0.3,5.16553,7.82624)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID37.collider)
level08.colliders.C_Parent_Tile_81169ID38 = {}
level08.colliders.C_Parent_Tile_81169ID38.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID38.collider:SetOffset(361,127.148,408.5)
level08.colliders.C_Parent_Tile_81169ID38.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.C_Parent_Tile_81169ID38.collider:SetHalfLengths(0.3,5.66214,2.5)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID38.collider)
level08.colliders.C_Parent_Tile_81169ID39 = {}
level08.colliders.C_Parent_Tile_81169ID39.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID39.collider:SetOffset(357,127.81,411.5)
level08.colliders.C_Parent_Tile_81169ID39.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.C_Parent_Tile_81169ID39.collider:SetHalfLengths(0.3,5.33107,2.5)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID39.collider)
level08.colliders.C_Parent_Tile_81169ID40 = {}
level08.colliders.C_Parent_Tile_81169ID40.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID40.collider:SetOffset(357.5,127.479,418)
level08.colliders.C_Parent_Tile_81169ID40.collider:SetZAxis(0.447214,0,0.894427)
level08.colliders.C_Parent_Tile_81169ID40.collider:SetHalfLengths(0.3,5.4966,5.59017)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID40.collider)
level08.colliders.C_Parent_Tile_81169ID41 = {}
level08.colliders.C_Parent_Tile_81169ID41.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID41.collider:SetOffset(291,127.313,460.5)
level08.colliders.C_Parent_Tile_81169ID41.collider:SetZAxis(-0.664364,0,-0.747409)
level08.colliders.C_Parent_Tile_81169ID41.collider:SetHalfLengths(0.3,5.33107,6.0208)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID41.collider)
level08.colliders.C_Parent_Tile_81169ID42 = {}
level08.colliders.C_Parent_Tile_81169ID42.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID42.collider:SetOffset(283,126.982,459)
level08.colliders.C_Parent_Tile_81169ID42.collider:SetZAxis(-0.8,0,0.6)
level08.colliders.C_Parent_Tile_81169ID42.collider:SetHalfLengths(0.3,5.33107,5)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID42.collider)
level08.colliders.C_Parent_Tile_81169ID43 = {}
level08.colliders.C_Parent_Tile_81169ID43.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID43.collider:SetOffset(281,127.313,464.5)
level08.colliders.C_Parent_Tile_81169ID43.collider:SetZAxis(0.624695,0,0.780869)
level08.colliders.C_Parent_Tile_81169ID43.collider:SetHalfLengths(0.3,5.33107,3.20156)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID43.collider)
level08.colliders.C_Parent_Tile_81169ID44 = {}
level08.colliders.C_Parent_Tile_81169ID44.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID44.collider:SetOffset(285.5,127.644,469.5)
level08.colliders.C_Parent_Tile_81169ID44.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_81169ID44.collider:SetHalfLengths(0.3,5.66214,3.53553)
level08.colliders.C_Parent_Tile_81169ID34.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID44.collider)
level08.colliders.C_Parent_Tile_81169ID45 = {}
level08.colliders.C_Parent_Tile_81169ID45.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID45.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID45.collider:SetMinPos(275.788,119.168,402.866)
level08.colliders.C_Parent_Tile_81169ID45.collider:SetMaxPos(378.276,146.053,487.234)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID45.collider)
level08.colliders.C_Parent_Tile_81169ID46 = {}
level08.colliders.C_Parent_Tile_81169ID46.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID46.collider:SetOffset(376.5,125.989,414.5)
level08.colliders.C_Parent_Tile_81169ID46.collider:SetZAxis(-0.393919,0,-0.919145)
level08.colliders.C_Parent_Tile_81169ID46.collider:SetHalfLengths(0.3,5.16553,3.80789)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID46.collider)
level08.colliders.C_Parent_Tile_81169ID47 = {}
level08.colliders.C_Parent_Tile_81169ID47.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID47.collider:SetOffset(373,125.824,407)
level08.colliders.C_Parent_Tile_81169ID47.collider:SetZAxis(-0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_81169ID47.collider:SetHalfLengths(0.3,5,4.47214)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID47.collider)
level08.colliders.C_Parent_Tile_81169ID48 = {}
level08.colliders.C_Parent_Tile_81169ID48.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID48.collider:SetOffset(279.5,125.824,476.5)
level08.colliders.C_Parent_Tile_81169ID48.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_81169ID48.collider:SetHalfLengths(0.3,5,4.94975)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID48.collider)
level08.colliders.C_Parent_Tile_81169ID49 = {}
level08.colliders.C_Parent_Tile_81169ID49.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID49.collider:SetOffset(284.5,125.824,481.5)
level08.colliders.C_Parent_Tile_81169ID49.collider:SetZAxis(0.707107,0,0.707107)
level08.colliders.C_Parent_Tile_81169ID49.collider:SetHalfLengths(0.3,5.99321,2.12132)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID49.collider)
level08.colliders.C_Parent_Tile_81169ID50 = {}
level08.colliders.C_Parent_Tile_81169ID50.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID50.collider:SetOffset(288.5,126.817,485)
level08.colliders.C_Parent_Tile_81169ID50.collider:SetZAxis(0.780869,0,0.624695)
level08.colliders.C_Parent_Tile_81169ID50.collider:SetHalfLengths(0.3,7.64857,3.20156)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID50.collider)
level08.colliders.C_Parent_Tile_81169ID51 = {}
level08.colliders.C_Parent_Tile_81169ID51.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID51.collider:SetOffset(297.5,133.935,479)
level08.colliders.C_Parent_Tile_81169ID51.collider:SetZAxis(-0.877896,0,-0.478852)
level08.colliders.C_Parent_Tile_81169ID51.collider:SetHalfLengths(0.3,12.118,6.26498)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID51.collider)
level08.colliders.C_Parent_Tile_81169ID52 = {}
level08.colliders.C_Parent_Tile_81169ID52.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID52.collider:SetOffset(296.5,126.817,477.5)
level08.colliders.C_Parent_Tile_81169ID52.collider:SetZAxis(0.948683,0,0.316228)
level08.colliders.C_Parent_Tile_81169ID52.collider:SetHalfLengths(0.3,5.16553,4.74342)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID52.collider)
level08.colliders.C_Parent_Tile_81169ID53 = {}
level08.colliders.C_Parent_Tile_81169ID53.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID53.collider:SetOffset(303,126.982,475)
level08.colliders.C_Parent_Tile_81169ID53.collider:SetZAxis(0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_81169ID53.collider:SetHalfLengths(0.3,5.16553,4.47214)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID53.collider)
level08.colliders.C_Parent_Tile_81169ID54 = {}
level08.colliders.C_Parent_Tile_81169ID54.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID54.collider:SetOffset(365,126.982,422)
level08.colliders.C_Parent_Tile_81169ID54.collider:SetZAxis(0.980581,0,-0.196116)
level08.colliders.C_Parent_Tile_81169ID54.collider:SetHalfLengths(0.3,5,5.09902)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID54.collider)
level08.colliders.C_Parent_Tile_81169ID55 = {}
level08.colliders.C_Parent_Tile_81169ID55.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID55.collider:SetOffset(291.5,126.982,468.5)
level08.colliders.C_Parent_Tile_81169ID55.collider:SetZAxis(0.707107,0,-0.707107)
level08.colliders.C_Parent_Tile_81169ID55.collider:SetHalfLengths(0.3,5.33107,4.94975)
level08.colliders.C_Parent_Tile_81169ID45.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID55.collider)
level08.colliders.C_Parent_Tile_81169ID56 = {}
level08.colliders.C_Parent_Tile_81169ID56.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID56.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID56.collider:SetMinPos(290.866,120.824,417.967)
level08.colliders.C_Parent_Tile_81169ID56.collider:SetMaxPos(380.298,145.887,490.268)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID56.collider)
level08.colliders.C_Parent_Tile_81169ID57 = {}
level08.colliders.C_Parent_Tile_81169ID57.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID57.collider:SetOffset(379.5,125.989,431)
level08.colliders.C_Parent_Tile_81169ID57.collider:SetZAxis(-0.124035,0,-0.992278)
level08.colliders.C_Parent_Tile_81169ID57.collider:SetHalfLengths(0.3,5.16553,4.03113)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID57.collider)
level08.colliders.C_Parent_Tile_81169ID58 = {}
level08.colliders.C_Parent_Tile_81169ID58.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID58.collider:SetOffset(378.5,126.155,422.5)
level08.colliders.C_Parent_Tile_81169ID58.collider:SetZAxis(-0.110432,0,-0.993884)
level08.colliders.C_Parent_Tile_81169ID58.collider:SetHalfLengths(0.3,5.16553,4.52769)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID58.collider)
level08.colliders.C_Parent_Tile_81169ID59 = {}
level08.colliders.C_Parent_Tile_81169ID59.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID59.collider:SetOffset(294,129.465,488.5)
level08.colliders.C_Parent_Tile_81169ID59.collider:SetZAxis(0.894427,0,0.447214)
level08.colliders.C_Parent_Tile_81169ID59.collider:SetHalfLengths(0.3,8.47624,3.3541)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID59.collider)
level08.colliders.C_Parent_Tile_81169ID60 = {}
level08.colliders.C_Parent_Tile_81169ID60.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID60.collider:SetOffset(305.5,137.411,483)
level08.colliders.C_Parent_Tile_81169ID60.collider:SetZAxis(-0.928477,0,-0.371391)
level08.colliders.C_Parent_Tile_81169ID60.collider:SetHalfLengths(0.3,8.47624,2.69258)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID60.collider)
level08.colliders.C_Parent_Tile_81169ID61 = {}
level08.colliders.C_Parent_Tile_81169ID61.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID61.collider:SetOffset(310.5,126.817,473)
level08.colliders.C_Parent_Tile_81169ID61.collider:SetZAxis(0.939793,0,0.341743)
level08.colliders.C_Parent_Tile_81169ID61.collider:SetHalfLengths(0.3,5.16553,5.85235)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID61.collider)
level08.colliders.C_Parent_Tile_81169ID62 = {}
level08.colliders.C_Parent_Tile_81169ID62.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID62.collider:SetOffset(315.5,126.651,480)
level08.colliders.C_Parent_Tile_81169ID62.collider:SetZAxis(-0.0995037,0,0.995037)
level08.colliders.C_Parent_Tile_81169ID62.collider:SetHalfLengths(0.3,5.33107,5.02494)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID62.collider)
level08.colliders.C_Parent_Tile_81169ID63 = {}
level08.colliders.C_Parent_Tile_81169ID63.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID63.collider:SetOffset(365,127.313,447.5)
level08.colliders.C_Parent_Tile_81169ID63.collider:SetZAxis(0.957826,0,0.287348)
level08.colliders.C_Parent_Tile_81169ID63.collider:SetHalfLengths(0.3,5,5.22015)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID63.collider)
level08.colliders.C_Parent_Tile_81169ID64 = {}
level08.colliders.C_Parent_Tile_81169ID64.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID64.collider:SetOffset(370.5,127.313,441.5)
level08.colliders.C_Parent_Tile_81169ID64.collider:SetZAxis(0.066519,0,-0.997785)
level08.colliders.C_Parent_Tile_81169ID64.collider:SetHalfLengths(0.3,5.4966,7.51665)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID64.collider)
level08.colliders.C_Parent_Tile_81169ID65 = {}
level08.colliders.C_Parent_Tile_81169ID65.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID65.collider:SetOffset(366,127.81,434.5)
level08.colliders.C_Parent_Tile_81169ID65.collider:SetZAxis(-0.995037,0,0.0995037)
level08.colliders.C_Parent_Tile_81169ID65.collider:SetHalfLengths(0.3,5.33107,5.02494)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID65.collider)
level08.colliders.C_Parent_Tile_81169ID66 = {}
level08.colliders.C_Parent_Tile_81169ID66.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID66.collider:SetOffset(360.5,127.479,440.5)
level08.colliders.C_Parent_Tile_81169ID66.collider:SetZAxis(-0.0905357,0,0.995893)
level08.colliders.C_Parent_Tile_81169ID66.collider:SetHalfLengths(0.3,5.16553,5.52268)
level08.colliders.C_Parent_Tile_81169ID56.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID66.collider)
level08.colliders.C_Parent_Tile_81169ID67 = {}
level08.colliders.C_Parent_Tile_81169ID67.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID67.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID67.collider:SetMinPos(296.882,120.658,434.97)
level08.colliders.C_Parent_Tile_81169ID67.collider:SetMaxPos(380.299,150.026,493.276)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID67.collider)
level08.colliders.C_Parent_Tile_81169ID68 = {}
level08.colliders.C_Parent_Tile_81169ID68.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID68.collider:SetOffset(379.5,125.824,440)
level08.colliders.C_Parent_Tile_81169ID68.collider:SetZAxis(0.0995037,0,-0.995037)
level08.colliders.C_Parent_Tile_81169ID68.collider:SetHalfLengths(0.3,5.16553,5.02494)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID68.collider)
level08.colliders.C_Parent_Tile_81169ID69 = {}
level08.colliders.C_Parent_Tile_81169ID69.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID69.collider:SetOffset(300.5,132.942,491.5)
level08.colliders.C_Parent_Tile_81169ID69.collider:SetZAxis(0.919145,0,0.393919)
level08.colliders.C_Parent_Tile_81169ID69.collider:SetHalfLengths(0.3,9.13838,3.80789)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID69.collider)
level08.colliders.C_Parent_Tile_81169ID70 = {}
level08.colliders.C_Parent_Tile_81169ID70.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID70.collider:SetOffset(311.5,141.218,485)
level08.colliders.C_Parent_Tile_81169ID70.collider:SetZAxis(-0.961524,0,-0.274721)
level08.colliders.C_Parent_Tile_81169ID70.collider:SetHalfLengths(0.3,8.80731,3.64005)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID70.collider)
level08.colliders.C_Parent_Tile_81169ID71 = {}
level08.colliders.C_Parent_Tile_81169ID71.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID71.collider:SetOffset(322,126.982,485)
level08.colliders.C_Parent_Tile_81169ID71.collider:SetZAxis(1,0,0)
level08.colliders.C_Parent_Tile_81169ID71.collider:SetHalfLengths(0.3,5.4966,7)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID71.collider)
level08.colliders.C_Parent_Tile_81169ID72 = {}
level08.colliders.C_Parent_Tile_81169ID72.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID72.collider:SetOffset(328,127.479,479.5)
level08.colliders.C_Parent_Tile_81169ID72.collider:SetZAxis(-0.178885,0,-0.98387)
level08.colliders.C_Parent_Tile_81169ID72.collider:SetHalfLengths(0.3,5.16553,5.59017)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID72.collider)
level08.colliders.C_Parent_Tile_81169ID73 = {}
level08.colliders.C_Parent_Tile_81169ID73.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID73.collider:SetOffset(332.5,127.313,472.5)
level08.colliders.C_Parent_Tile_81169ID73.collider:SetZAxis(0.964764,0,-0.263117)
level08.colliders.C_Parent_Tile_81169ID73.collider:SetHalfLengths(0.3,5.33107,5.70088)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID73.collider)
level08.colliders.C_Parent_Tile_81169ID74 = {}
level08.colliders.C_Parent_Tile_81169ID74.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID74.collider:SetOffset(340,126.982,476)
level08.colliders.C_Parent_Tile_81169ID74.collider:SetZAxis(0.371391,0,0.928477)
level08.colliders.C_Parent_Tile_81169ID74.collider:SetHalfLengths(0.3,5.4966,5.38516)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID74.collider)
level08.colliders.C_Parent_Tile_81169ID75 = {}
level08.colliders.C_Parent_Tile_81169ID75.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID75.collider:SetOffset(359,127.479,459.5)
level08.colliders.C_Parent_Tile_81169ID75.collider:SetZAxis(-0.847998,0,-0.529999)
level08.colliders.C_Parent_Tile_81169ID75.collider:SetHalfLengths(0.3,5.4966,4.71699)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID75.collider)
level08.colliders.C_Parent_Tile_81169ID76 = {}
level08.colliders.C_Parent_Tile_81169ID76.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID76.collider:SetOffset(351,126.982,461.5)
level08.colliders.C_Parent_Tile_81169ID76.collider:SetZAxis(-0.664364,0,0.747409)
level08.colliders.C_Parent_Tile_81169ID76.collider:SetHalfLengths(0.3,5.16553,6.0208)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID76.collider)
level08.colliders.C_Parent_Tile_81169ID77 = {}
level08.colliders.C_Parent_Tile_81169ID77.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID77.collider:SetOffset(351,127.148,469.5)
level08.colliders.C_Parent_Tile_81169ID77.collider:SetZAxis(0.752577,0,0.658505)
level08.colliders.C_Parent_Tile_81169ID77.collider:SetHalfLengths(0.3,5.16553,5.31507)
level08.colliders.C_Parent_Tile_81169ID67.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID77.collider)
level08.colliders.C_Parent_Tile_81169ID78 = {}
level08.colliders.C_Parent_Tile_81169ID78.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID78.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID78.collider:SetMinPos(303.927,120.492,444.958)
level08.colliders.C_Parent_Tile_81169ID78.collider:SetMaxPos(379.297,147.377,496.296)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID78.collider)
level08.colliders.C_Parent_Tile_81169ID79 = {}
level08.colliders.C_Parent_Tile_81169ID79.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID79.collider:SetOffset(376.5,125.658,456)
level08.colliders.C_Parent_Tile_81169ID79.collider:SetZAxis(0.351123,0,-0.936329)
level08.colliders.C_Parent_Tile_81169ID79.collider:SetHalfLengths(0.3,5,4.272)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID79.collider)
level08.colliders.C_Parent_Tile_81169ID80 = {}
level08.colliders.C_Parent_Tile_81169ID80.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID80.collider:SetOffset(378.5,125.658,448.5)
level08.colliders.C_Parent_Tile_81169ID80.collider:SetZAxis(0.141421,0,-0.98995)
level08.colliders.C_Parent_Tile_81169ID80.collider:SetHalfLengths(0.3,5.16553,3.53553)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID80.collider)
level08.colliders.C_Parent_Tile_81169ID81 = {}
level08.colliders.C_Parent_Tile_81169ID81.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID81.collider:SetOffset(306,137.08,493.5)
level08.colliders.C_Parent_Tile_81169ID81.collider:SetZAxis(0.970143,0,0.242536)
level08.colliders.C_Parent_Tile_81169ID81.collider:SetHalfLengths(0.3,6.65535,2.06155)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID81.collider)
level08.colliders.C_Parent_Tile_81169ID82 = {}
level08.colliders.C_Parent_Tile_81169ID82.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID82.collider:SetOffset(310.5,138.735,494.5)
level08.colliders.C_Parent_Tile_81169ID82.collider:SetZAxis(0.980581,0,0.196116)
level08.colliders.C_Parent_Tile_81169ID82.collider:SetHalfLengths(0.3,7.31749,2.54951)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID82.collider)
level08.colliders.C_Parent_Tile_81169ID83 = {}
level08.colliders.C_Parent_Tile_81169ID83.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID83.collider:SetOffset(316,141.053,495.5)
level08.colliders.C_Parent_Tile_81169ID83.collider:SetZAxis(0.986394,0,0.164399)
level08.colliders.C_Parent_Tile_81169ID83.collider:SetHalfLengths(0.3,5.99321,3.04138)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID83.collider)
level08.colliders.C_Parent_Tile_81169ID84 = {}
level08.colliders.C_Parent_Tile_81169ID84.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID84.collider:SetOffset(322,141.384,486)
level08.colliders.C_Parent_Tile_81169ID84.collider:SetZAxis(-1,0,0)
level08.colliders.C_Parent_Tile_81169ID84.collider:SetHalfLengths(0.3,5.16553,7)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID84.collider)
level08.colliders.C_Parent_Tile_81169ID85 = {}
level08.colliders.C_Parent_Tile_81169ID85.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID85.collider:SetOffset(347,127.479,478.5)
level08.colliders.C_Parent_Tile_81169ID85.collider:SetZAxis(0.894427,0,-0.447214)
level08.colliders.C_Parent_Tile_81169ID85.collider:SetHalfLengths(0.3,5.4966,5.59017)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID85.collider)
level08.colliders.C_Parent_Tile_81169ID86 = {}
level08.colliders.C_Parent_Tile_81169ID86.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID86.collider:SetOffset(336,139.066,484)
level08.colliders.C_Parent_Tile_81169ID86.collider:SetZAxis(0.948683,0,-0.316228)
level08.colliders.C_Parent_Tile_81169ID86.collider:SetHalfLengths(0.3,8.3107,3.16228)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID86.collider)
level08.colliders.C_Parent_Tile_81169ID87 = {}
level08.colliders.C_Parent_Tile_81169ID87.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID87.collider:SetOffset(347.5,132.942,479)
level08.colliders.C_Parent_Tile_81169ID87.collider:SetZAxis(0.83205,0,-0.5547)
level08.colliders.C_Parent_Tile_81169ID87.collider:SetHalfLengths(0.3,10.9593,5.40833)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID87.collider)
level08.colliders.C_Parent_Tile_81169ID88 = {}
level08.colliders.C_Parent_Tile_81169ID88.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID88.collider:SetOffset(358.5,127.479,467.5)
level08.colliders.C_Parent_Tile_81169ID88.collider:SetZAxis(0.633238,0,-0.773957)
level08.colliders.C_Parent_Tile_81169ID88.collider:SetHalfLengths(0.3,5,7.10634)
level08.colliders.C_Parent_Tile_81169ID78.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID88.collider)
level08.colliders.C_Parent_Tile_81169ID89 = {}
level08.colliders.C_Parent_Tile_81169ID89.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID89.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID89.collider:SetMinPos(318.7,120.658,459.866)
level08.colliders.C_Parent_Tile_81169ID89.collider:SetMaxPos(375.268,149.363,511)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID89.collider)
level08.colliders.C_Parent_Tile_81169ID90 = {}
level08.colliders.C_Parent_Tile_81169ID90.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID90.collider:SetOffset(324,142.046,503)
level08.colliders.C_Parent_Tile_81169ID90.collider:SetZAxis(0,0,-1)
level08.colliders.C_Parent_Tile_81169ID90.collider:SetHalfLengths(0.3,5,8)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID90.collider)
level08.colliders.C_Parent_Tile_81169ID91 = {}
level08.colliders.C_Parent_Tile_81169ID91.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID91.collider:SetOffset(326,142.046,495)
level08.colliders.C_Parent_Tile_81169ID91.collider:SetZAxis(1,0,0)
level08.colliders.C_Parent_Tile_81169ID91.collider:SetHalfLengths(0.3,5.33105,2)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID91.collider)
level08.colliders.C_Parent_Tile_81169ID92 = {}
level08.colliders.C_Parent_Tile_81169ID92.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID92.collider:SetOffset(332,141.715,494)
level08.colliders.C_Parent_Tile_81169ID92.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.C_Parent_Tile_81169ID92.collider:SetHalfLengths(0.3,7.64857,4.12311)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID92.collider)
level08.colliders.C_Parent_Tile_81169ID93 = {}
level08.colliders.C_Parent_Tile_81169ID93.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID93.collider:SetOffset(340.5,139.066,492)
level08.colliders.C_Parent_Tile_81169ID93.collider:SetZAxis(0.976187,0,-0.21693)
level08.colliders.C_Parent_Tile_81169ID93.collider:SetHalfLengths(0.3,9.80052,4.60977)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID93.collider)
level08.colliders.C_Parent_Tile_81169ID94 = {}
level08.colliders.C_Parent_Tile_81169ID94.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID94.collider:SetOffset(362.5,125.658,477.5)
level08.colliders.C_Parent_Tile_81169ID94.collider:SetZAxis(0.707107,0,-0.707107)
level08.colliders.C_Parent_Tile_81169ID94.collider:SetHalfLengths(0.3,5,3.53553)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID94.collider)
level08.colliders.C_Parent_Tile_81169ID95 = {}
level08.colliders.C_Parent_Tile_81169ID95.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID95.collider:SetOffset(368,125.658,471.5)
level08.colliders.C_Parent_Tile_81169ID95.collider:SetZAxis(0.650791,0,-0.759257)
level08.colliders.C_Parent_Tile_81169ID95.collider:SetHalfLengths(0.3,5,4.60977)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID95.collider)
level08.colliders.C_Parent_Tile_81169ID96 = {}
level08.colliders.C_Parent_Tile_81169ID96.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID96.collider:SetOffset(373,125.658,464)
level08.colliders.C_Parent_Tile_81169ID96.collider:SetZAxis(0.447214,0,-0.894427)
level08.colliders.C_Parent_Tile_81169ID96.collider:SetHalfLengths(0.3,5,4.47214)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID96.collider)
level08.colliders.C_Parent_Tile_81169ID97 = {}
level08.colliders.C_Parent_Tile_81169ID97.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID97.collider:SetOffset(319,142.046,503.5)
level08.colliders.C_Parent_Tile_81169ID97.collider:SetZAxis(0,0,1)
level08.colliders.C_Parent_Tile_81169ID97.collider:SetHalfLengths(0.3,5,7.5)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID97.collider)
level08.colliders.C_Parent_Tile_81169ID98 = {}
level08.colliders.C_Parent_Tile_81169ID98.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID98.collider:SetOffset(331,141.384,485.5)
level08.colliders.C_Parent_Tile_81169ID98.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.C_Parent_Tile_81169ID98.collider:SetHalfLengths(0.3,7.31749,2.06155)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID98.collider)
level08.colliders.C_Parent_Tile_81169ID99 = {}
level08.colliders.C_Parent_Tile_81169ID99.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID99.collider:SetOffset(341,135.756,482.5)
level08.colliders.C_Parent_Tile_81169ID99.collider:SetZAxis(0.970143,0,-0.242536)
level08.colliders.C_Parent_Tile_81169ID99.collider:SetHalfLengths(0.3,7.8141,2.06155)
level08.colliders.C_Parent_Tile_81169ID89.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID99.collider)
level08.colliders.C_Parent_Tile_81169ID100 = {}
level08.colliders.C_Parent_Tile_81169ID100.collider = AABBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID100.collider:SetOffset(0,0,0)
level08.colliders.C_Parent_Tile_81169ID100.collider:SetMinPos(344.866,120.658,479.834)
level08.colliders.C_Parent_Tile_81169ID100.collider:SetMaxPos(360.25,142.245,491.268)
level08.colliders.C_Parent_Tile_81169ID.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID100.collider)
level08.colliders.C_Parent_Tile_81169ID101 = {}
level08.colliders.C_Parent_Tile_81169ID101.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID101.collider:SetOffset(348,134.266,489.5)
level08.colliders.C_Parent_Tile_81169ID101.collider:SetZAxis(0.894427,0,-0.447214)
level08.colliders.C_Parent_Tile_81169ID101.collider:SetHalfLengths(0.3,7.97963,3.3541)
level08.colliders.C_Parent_Tile_81169ID100.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID101.collider)
level08.colliders.C_Parent_Tile_81169ID102 = {}
level08.colliders.C_Parent_Tile_81169ID102.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID102.collider:SetOffset(354.5,131.286,485.5)
level08.colliders.C_Parent_Tile_81169ID102.collider:SetZAxis(0.813733,0,-0.581238)
level08.colliders.C_Parent_Tile_81169ID102.collider:SetHalfLengths(0.3,9.46946,4.30116)
level08.colliders.C_Parent_Tile_81169ID100.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID102.collider)
level08.colliders.C_Parent_Tile_81169ID103 = {}
level08.colliders.C_Parent_Tile_81169ID103.collider = OBBCollider.Create(-1)
level08.colliders.C_Parent_Tile_81169ID103.collider:SetOffset(359,126.817,481.5)
level08.colliders.C_Parent_Tile_81169ID103.collider:SetZAxis(0.5547,0,-0.83205)
level08.colliders.C_Parent_Tile_81169ID103.collider:SetHalfLengths(0.3,6.15874,1.80278)
level08.colliders.C_Parent_Tile_81169ID100.collider:AddChild(level08.colliders.C_Parent_Tile_81169ID103.collider)
CollisionHandler.AddAABB(level08.colliders.C_Parent_Tile_81169ID.collider, 3)
level08.colliders.C_Parent_Tile_81169ID1 = nil
level08.colliders.C_Parent_Tile_81169ID2 = nil
level08.colliders.C_Parent_Tile_81169ID3 = nil
level08.colliders.C_Parent_Tile_81169ID4 = nil
level08.colliders.C_Parent_Tile_81169ID5 = nil
level08.colliders.C_Parent_Tile_81169ID6 = nil
level08.colliders.C_Parent_Tile_81169ID7 = nil
level08.colliders.C_Parent_Tile_81169ID8 = nil
level08.colliders.C_Parent_Tile_81169ID9 = nil
level08.colliders.C_Parent_Tile_81169ID10 = nil
level08.colliders.C_Parent_Tile_81169ID11 = nil
level08.colliders.C_Parent_Tile_81169ID12 = nil
level08.colliders.C_Parent_Tile_81169ID13 = nil
level08.colliders.C_Parent_Tile_81169ID14 = nil
level08.colliders.C_Parent_Tile_81169ID15 = nil
level08.colliders.C_Parent_Tile_81169ID16 = nil
level08.colliders.C_Parent_Tile_81169ID17 = nil
level08.colliders.C_Parent_Tile_81169ID18 = nil
level08.colliders.C_Parent_Tile_81169ID19 = nil
level08.colliders.C_Parent_Tile_81169ID20 = nil
level08.colliders.C_Parent_Tile_81169ID21 = nil
level08.colliders.C_Parent_Tile_81169ID22 = nil
level08.colliders.C_Parent_Tile_81169ID23 = nil
level08.colliders.C_Parent_Tile_81169ID24 = nil
level08.colliders.C_Parent_Tile_81169ID25 = nil
level08.colliders.C_Parent_Tile_81169ID26 = nil
level08.colliders.C_Parent_Tile_81169ID27 = nil
level08.colliders.C_Parent_Tile_81169ID28 = nil
level08.colliders.C_Parent_Tile_81169ID29 = nil
level08.colliders.C_Parent_Tile_81169ID30 = nil
level08.colliders.C_Parent_Tile_81169ID31 = nil
level08.colliders.C_Parent_Tile_81169ID32 = nil
level08.colliders.C_Parent_Tile_81169ID33 = nil
level08.colliders.C_Parent_Tile_81169ID34 = nil
level08.colliders.C_Parent_Tile_81169ID35 = nil
level08.colliders.C_Parent_Tile_81169ID36 = nil
level08.colliders.C_Parent_Tile_81169ID37 = nil
level08.colliders.C_Parent_Tile_81169ID38 = nil
level08.colliders.C_Parent_Tile_81169ID39 = nil
level08.colliders.C_Parent_Tile_81169ID40 = nil
level08.colliders.C_Parent_Tile_81169ID41 = nil
level08.colliders.C_Parent_Tile_81169ID42 = nil
level08.colliders.C_Parent_Tile_81169ID43 = nil
level08.colliders.C_Parent_Tile_81169ID44 = nil
level08.colliders.C_Parent_Tile_81169ID45 = nil
level08.colliders.C_Parent_Tile_81169ID46 = nil
level08.colliders.C_Parent_Tile_81169ID47 = nil
level08.colliders.C_Parent_Tile_81169ID48 = nil
level08.colliders.C_Parent_Tile_81169ID49 = nil
level08.colliders.C_Parent_Tile_81169ID50 = nil
level08.colliders.C_Parent_Tile_81169ID51 = nil
level08.colliders.C_Parent_Tile_81169ID52 = nil
level08.colliders.C_Parent_Tile_81169ID53 = nil
level08.colliders.C_Parent_Tile_81169ID54 = nil
level08.colliders.C_Parent_Tile_81169ID55 = nil
level08.colliders.C_Parent_Tile_81169ID56 = nil
level08.colliders.C_Parent_Tile_81169ID57 = nil
level08.colliders.C_Parent_Tile_81169ID58 = nil
level08.colliders.C_Parent_Tile_81169ID59 = nil
level08.colliders.C_Parent_Tile_81169ID60 = nil
level08.colliders.C_Parent_Tile_81169ID61 = nil
level08.colliders.C_Parent_Tile_81169ID62 = nil
level08.colliders.C_Parent_Tile_81169ID63 = nil
level08.colliders.C_Parent_Tile_81169ID64 = nil
level08.colliders.C_Parent_Tile_81169ID65 = nil
level08.colliders.C_Parent_Tile_81169ID66 = nil
level08.colliders.C_Parent_Tile_81169ID67 = nil
level08.colliders.C_Parent_Tile_81169ID68 = nil
level08.colliders.C_Parent_Tile_81169ID69 = nil
level08.colliders.C_Parent_Tile_81169ID70 = nil
level08.colliders.C_Parent_Tile_81169ID71 = nil
level08.colliders.C_Parent_Tile_81169ID72 = nil
level08.colliders.C_Parent_Tile_81169ID73 = nil
level08.colliders.C_Parent_Tile_81169ID74 = nil
level08.colliders.C_Parent_Tile_81169ID75 = nil
level08.colliders.C_Parent_Tile_81169ID76 = nil
level08.colliders.C_Parent_Tile_81169ID77 = nil
level08.colliders.C_Parent_Tile_81169ID78 = nil
level08.colliders.C_Parent_Tile_81169ID79 = nil
level08.colliders.C_Parent_Tile_81169ID80 = nil
level08.colliders.C_Parent_Tile_81169ID81 = nil
level08.colliders.C_Parent_Tile_81169ID82 = nil
level08.colliders.C_Parent_Tile_81169ID83 = nil
level08.colliders.C_Parent_Tile_81169ID84 = nil
level08.colliders.C_Parent_Tile_81169ID85 = nil
level08.colliders.C_Parent_Tile_81169ID86 = nil
level08.colliders.C_Parent_Tile_81169ID87 = nil
level08.colliders.C_Parent_Tile_81169ID88 = nil
level08.colliders.C_Parent_Tile_81169ID89 = nil
level08.colliders.C_Parent_Tile_81169ID90 = nil
level08.colliders.C_Parent_Tile_81169ID91 = nil
level08.colliders.C_Parent_Tile_81169ID92 = nil
level08.colliders.C_Parent_Tile_81169ID93 = nil
level08.colliders.C_Parent_Tile_81169ID94 = nil
level08.colliders.C_Parent_Tile_81169ID95 = nil
level08.colliders.C_Parent_Tile_81169ID96 = nil
level08.colliders.C_Parent_Tile_81169ID97 = nil
level08.colliders.C_Parent_Tile_81169ID98 = nil
level08.colliders.C_Parent_Tile_81169ID99 = nil
level08.colliders.C_Parent_Tile_81169ID100 = nil
level08.colliders.C_Parent_Tile_81169ID101 = nil
level08.colliders.C_Parent_Tile_81169ID102 = nil
level08.colliders.C_Parent_Tile_81169ID103 = nil
end
level08.unload = function()
level08.props.tile840ID = nil
Gear.UnbindInstance(level08.props.t8s173ID.transformID)
level08.props.t8s173ID = nil
Gear.UnbindInstance(level08.props.t8s274ID.transformID)
level08.props.t8s274ID = nil
Gear.UnbindInstance(level08.props.t8s375ID.transformID)
level08.props.t8s375ID = nil
Gear.UnbindInstance(level08.props.t8s4690ID.transformID)
level08.props.t8s4690ID = nil
Gear.UnbindInstance(level08.props.t8s5691ID.transformID)
level08.props.t8s5691ID = nil
Gear.UnbindInstance(level08.props.t8s6692ID.transformID)
level08.props.t8s6692ID = nil
Gear.UnbindInstance(level08.props.t8s7693ID.transformID)
level08.props.t8s7693ID = nil
Gear.UnbindInstance(level08.props.t8s8702ID.transformID)
level08.props.t8s8702ID = nil
level08.colliders.Tile8_wallNr782ID = nil
level08.colliders.Tile8_wallNr1783ID = nil
level08.colliders.Tile8_wallNr2784ID = nil
level08.colliders.Tile8_wallNr3785ID = nil
level08.colliders.Tile8_wallNr4786ID = nil
level08.colliders.Tile8_wallNr5787ID = nil
level08.colliders.Tile8_wallNr6788ID = nil
level08.colliders.Tile8_wallNr7789ID = nil
level08.colliders.Tile8_wallNr8790ID = nil
level08.colliders.Tile8_wallNr9791ID = nil
level08.colliders.Tile8_wallNr10792ID = nil
level08.colliders.Tile8_wallNr11793ID = nil
level08.colliders.Tile8_wallNr12794ID = nil
level08.colliders.Tile8_wallNr13795ID = nil
level08.colliders.Tile8_wallNr14796ID = nil
level08.colliders.Tile8_wallNr15797ID = nil
level08.colliders.Tile8_wallNr16798ID = nil
level08.colliders.Tile8_wallNr17799ID = nil
level08.colliders.Tile8_wallNr18800ID = nil
level08.colliders.Tile8_wallNr19801ID = nil
level08.colliders.Tile8_wallNr20802ID = nil
level08.colliders.Tile8_wallNr21803ID = nil
level08.colliders.Tile8_wallNr22804ID = nil
level08.colliders.Tile8_wallNr23805ID = nil
level08.colliders.Tile8_wallNr24806ID = nil
level08.colliders.Tile8_wallNr25807ID = nil
level08.colliders.Tile8_wallNr26808ID = nil
level08.colliders.Tile8_wallNr27809ID = nil
level08.colliders.Tile8_wallNr28810ID = nil
level08.colliders.Tile8_wallNr29811ID = nil
level08.colliders.Tile8_wallNr30812ID = nil
level08.colliders.Tile8_wallNr31813ID = nil
level08.colliders.Tile8_wallNr32814ID = nil
level08.colliders.Tile8_wallNr33815ID = nil
level08.colliders.Tile8_wallNr34816ID = nil
level08.colliders.Tile8_wallNr35817ID = nil
level08.colliders.Tile8_wallNr36818ID = nil
level08.colliders.Tile8_wallNr37819ID = nil
level08.colliders.Tile8_wallNr38820ID = nil
level08.colliders.Tile8_wallNr39821ID = nil
level08.colliders.Tile8_wallNr40822ID = nil
level08.colliders.Tile8_wallNr41823ID = nil
level08.colliders.Tile8_wallNr42824ID = nil
level08.colliders.Tile8_wallNr43825ID = nil
level08.colliders.Tile8_wallNr44826ID = nil
level08.colliders.Tile8_wallNr45827ID = nil
level08.colliders.Tile8_wallNr46828ID = nil
level08.colliders.Tile8_wallNr47829ID = nil
level08.colliders.Tile8_wallNr48830ID = nil
level08.colliders.Tile8_wallNr49831ID = nil
level08.colliders.Tile8_wallNr50832ID = nil
level08.colliders.Tile8_wallNr51833ID = nil
level08.colliders.Tile8_wallNr52834ID = nil
level08.colliders.Tile8_wallNr53835ID = nil
level08.colliders.Tile8_wallNr54836ID = nil
level08.colliders.Tile8_wallNr55837ID = nil
level08.colliders.Tile8_wallNr56838ID = nil
level08.colliders.Tile8_wallNr57839ID = nil
level08.colliders.Tile8_wallNr58840ID = nil
level08.colliders.Tile8_wallNr59841ID = nil
level08.colliders.Tile8_wallNr60842ID = nil
level08.colliders.Tile8_wallNr61843ID = nil
level08.colliders.Tile8_wallNr62844ID = nil
level08.colliders.Tile8_wallNr63845ID = nil
level08.colliders.Tile8_wallNr64846ID = nil
level08.colliders.Tile8_wallNr65847ID = nil
level08.colliders.Tile8_wallNr66848ID = nil
level08.colliders.Tile8_wallNr67849ID = nil
level08.colliders.Tile8_wallNr68850ID = nil
level08.colliders.Tile8_wallNr69851ID = nil
level08.colliders.Tile8_wallNr70852ID = nil
level08.colliders.Tile8_wallNr71853ID = nil
level08.colliders.Tile8_wallNr72854ID = nil
level08.colliders.Tile8_wallNr73855ID = nil
level08.colliders.Tile8_wallNr74856ID = nil
level08.colliders.Tile8_wallNr75857ID = nil
level08.colliders.Tile8_wallNr76858ID = nil
level08.colliders.Tile8_wallNr77859ID = nil
level08.colliders.Tile8_wallNr78860ID = nil
level08.colliders.Tile8_wallNr79861ID = nil
level08.colliders.Tile8_wallNr80862ID = nil
level08.colliders.Tile8_wallNr81863ID = nil
level08.colliders.Tile8_wallNr82864ID = nil
level08.colliders.Tile8_wallNr83865ID = nil
level08.colliders.Tile8_wallNr84866ID = nil
level08.colliders.Tile8_wallNr85867ID = nil
level08.colliders.Tile8_wallNr86868ID = nil
level08.colliders.Tile8_wallNr87869ID = nil
level08.colliders.Tile8_wallNr88870ID = nil
level08.colliders.Tile8_wallNr89871ID = nil
level08.colliders.Tile8_wallNr90872ID = nil
level08.colliders.Tile8_wallNr91873ID = nil
level08.colliders.Tile8_wallNr92874ID = nil
level08.colliders.C_Parent_Tile_811159ID = nil
level08.colliders.C_Parent_Tile_821160ID = nil
level08.colliders.C_Parent_Tile_831161ID = nil
level08.colliders.C_Parent_Tile_841162ID = nil
level08.colliders.C_Parent_Tile_851163ID = nil
level08.colliders.C_Parent_Tile_861164ID = nil
level08.colliders.C_Parent_Tile_871165ID = nil
level08.colliders.C_Parent_Tile_881166ID = nil
level08.colliders.C_Parent_Tile_891167ID = nil
level08.colliders.C_Parent_Tile_8101168ID = nil
level08.colliders.C_Parent_Tile_81169ID = nil
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
