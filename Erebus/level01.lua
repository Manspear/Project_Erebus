testActor_1 = {}
testActor_1.transformID = Transform.Bind()
Transform.SetPosition(testActor_1.transformID, {x=167, y=36.3, z=146.5})
testActor_1.model = Assets.LoadModel('Models/Robot.model')
Gear.AddStaticInstance(testActor_1.model, testActor_1.transformID)
testActor_2 = {}
testActor_2.transformID = Transform.Bind()
Transform.SetPosition(testActor_2.transformID, {x=41, y=61.3, z=183.5})
testActor_2.model = Assets.LoadModel('Models/Robot.model')
Gear.AddStaticInstance(testActor_2.model, testActor_2.transformID)
testActor_3 = {}
testActor_3.transformID = Transform.Bind()
Transform.SetPosition(testActor_3.transformID, {x=0, y=0, z=0})
testActor_3.model = Assets.LoadModel('Models/Robot.model')
Gear.AddStaticInstance(testActor_3.model, testActor_3.transformID)
testActor_4 = {}
testActor_4.transformID = Transform.Bind()
Transform.SetPosition(testActor_4.transformID, {x=0, y=1, z=7})
testActor_4.model = Assets.LoadModel('Models/niclasland_scale1.model')
Gear.AddStaticInstance(testActor_4.model, testActor_4.transformID)
