TestCharacter_1 = {}
TestCharacter_1.transformID = Transform.Bind()
Transform.SetPosition(TestCharacter_1.transformID, {x=167, y=36.3, z=146.5})
TestCharacter_1.model = Assets.LoadModel('Models/Robot.model')
Gear.AddStaticInstance(TestCharacter_1.model, TestCharacter_1.transformID)
TestCharacter_2 = {}
TestCharacter_2.transformID = Transform.Bind()
Transform.SetPosition(TestCharacter_2.transformID, {x=41, y=61.3, z=183.5})
TestCharacter_2.model = Assets.LoadModel('Models/Robot.model')
Gear.AddStaticInstance(TestCharacter_2.model, TestCharacter_2.transformID)
TestCharacter_3 = {}
TestCharacter_3.transformID = Transform.Bind()
Transform.SetPosition(TestCharacter_3.transformID, {x=0, y=0, z=0})
TestCharacter_3.model = Assets.LoadModel('Models/Robot.model')
Gear.AddStaticInstance(TestCharacter_3.model, TestCharacter_3.transformID)
TestCharacter_4 = {}
TestCharacter_4.transformID = Transform.Bind()
Transform.SetPosition(TestCharacter_4.transformID, {x=0, y=1, z=7})
TestCharacter_4.model = Assets.LoadModel('Models/niclasland_scale1.model')
Gear.AddStaticInstance(TestCharacter_4.model, TestCharacter_4.transformID)
