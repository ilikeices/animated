
--[[
   Weapons:
   // Pink Musical Cannon: https://www.roblox.com/catalog/17559555288/back-Musical-Cannon-gun-Pink
   // Grey Musical Cannon: https://www.roblox.com/catalog/17553972420/back-Musical-Cannon-gun-grey
   // White Musical Cannon:
   https://www.roblox.com/catalog/17550887328/back-Musical-Cannon-gun-White
]]--

function Reanimate()
	local OptionsAccessories = nil
	local OptionsRigTransparency = nil
	local OptionsRigR15 = nil
	local OptionsRigSetHumanoidDescription = nil
	local OptionsRigSetCharacter = nil
	local OptionsTeleportXandZoffset = nil
	local OptionsTeleportYoffset = nil
	local OptionsDisableScripts = nil
	local OptionsDisableScreenGUIs = nil
	local OptionsFlingEnabled = nil
	local OptionsFlingToolFling = nil
	local OptionsFlingTimeout = nil
	local OptionsFlingVelocity = nil
	local OptionsFlingHighlightTargets = nil

	local BindableEvent = nil
	local Boolean = false
	local Humanoid = nil
	local Rig = nil
	local RigHumanoid = nil
	local RigHumanoidRootPart = nil
	local Success = false
	local Time = nil
	local DeltaTime = nil
	local LastTime = nil

	local Attachments = { }
	local BaseParts = { }
	local Blacklist = { }
	local Enableds = { }
	local Handles = { }
	local Highlights = { }
	local RBXScriptConnections = { }
	local RigAccessories = { }
	local Tables = { }
	local Targets = { }

	local CFrame = CFrame
	local CFrameAngles = CFrame.Angles
	local CFrameidentity = CFrame.identity
	local CFramenew = CFrame.new

	local coroutine = coroutine
	local coroutinecreate = coroutine.create
	local coroutineclose = coroutine.close
	local coroutineresume = coroutine.resume

	local Enum = Enum
	local HumanoidStateType = Enum.HumanoidStateType
	local Physics = HumanoidStateType.Physics
	local Running = HumanoidStateType.Running
	local Track = Enum.CameraType.Track
	local UserInputType = Enum.UserInputType
	local MouseButton1 = UserInputType.MouseButton1
	local Touch = UserInputType.Touch

	local game = game
	local Clone = game.Clone
	local Destroy = game.Destroy
	local FindFirstAncestorOfClass = game.FindFirstAncestorOfClass
	local FindFirstChildOfClass = game.FindFirstChildOfClass
	local GetPropertyChangedSignal = game.GetPropertyChangedSignal
	local GetChildren = game.GetChildren
	local GetDescendants = game.GetDescendants
	local IsA = game.IsA
	local Players = FindFirstChildOfClass(game, "Players")
	local CreateHumanoidModelFromUserId = Players.CreateHumanoidModelFromUserId
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local RunService = FindFirstChildOfClass(game, "RunService")
	local PostSimulation = RunService.PostSimulation
	local PreRender = RunService.PreRender
	local PreSimulation = RunService.PreSimulation
	local Connect = PostSimulation.Connect
	local Disconnect = Connect(GetPropertyChangedSignal(game, "Parent"), function() end).Disconnect
	local Wait = PostSimulation.Wait
	local StarterGui = FindFirstChildOfClass(game, "StarterGui")
	local SetCore = StarterGui.SetCore
	local UserInputService = FindFirstChildOfClass(game, "UserInputService")
	local IsMouseButtonPressed = UserInputService.IsMouseButtonPressed
	local Workspace = FindFirstChildOfClass(game, "Workspace")
	local CurrentCamera = Workspace.CurrentCamera

	local Instancenew = Instance.new
	local Humanoid = Instancenew("Humanoid")
	local ApplyDescription = Humanoid.ApplyDescription
	local ChangeState = Humanoid.ChangeState
	local GetAppliedDescription = Humanoid.GetAppliedDescription
	local Move = Humanoid.Move
	Destroy(Humanoid)
	local Part = Instancenew("Part")
	local GetJoints = Part.GetJoints
	Destroy(Part)

	local math = math
	local mathabs = math.abs
	local mathrandom = math.random
	local mathsin = math.sin

	local osclock = os.clock

	local pairs = pairs
	local pcall = pcall

	local script = script

	local string = string
	local stringchar = string.char
	local stringfind = string.find
	local stringrep = string.rep

	local table = table
	local tableclear = table.clear
	local tablefind = table.find
	local tableinsert = table.insert
	local tableremove = table.remove

	local task = task
	local taskdefer = task.defer
	local taskdelay = task.delay
	local taskspawn = task.spawn
	local taskwait = task.wait

	local sethiddenproperty = sethiddenproperty or function() end

	local type = type
	local typeof = typeof

	local Vector3 = Vector3
	local Vector3new = Vector3.new
	local Vector3yAxis = Vector3.yAxis
	local Vector3zero = Vector3.zero

	local CameraCFrame = CFrameidentity

	local LimbSize = Vector3new(1, 2, 1)
	local TorsoSize = Vector3new(2, 2, 1)

	local function BreakJoints(Parent)
		for _, Instance in pairs(GetDescendants(Parent)) do
			if IsA(Instance, "JointInstance") then
				Destroy(Instance)
			end
		end
	end

	local function CameraSubject()
		CurrentCamera.CameraSubject = RigHumanoid
		Wait(PreRender)
		CurrentCamera.CFrame = CameraCFrame
	end

	local function CameraType()
		if CurrentCamera.CameraType ~= Track then
			CurrentCamera.CameraType = Track
		end
	end

	local function Camera()
		local Camera = Workspace.CurrentCamera

		if Camera then
			CameraCFrame = Camera.CFrame
			CurrentCamera = Camera

			CameraSubject()
			CameraType()

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Camera, "CameraSubject"), CameraSubject))
			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Camera, "CameraType"), CameraType))
		end
	end

	local function FindFirstChildOfClassAndName(Parent, ClassName, Name)
		for Index, Instance in pairs(GetChildren(Parent)) do
			if IsA(Instance, ClassName) and Instance.Name == Name then
				return Instance
			end
		end
	end

	local function WaitForChildOfClassAndName(Parent, ...)
		local Instance = FindFirstChildOfClassAndName(Parent, ...)

		while not Instance and typeof(Parent) == "Instance" do
			Instance = FindFirstChildOfClassAndName(Parent, ...)
			Wait(Parent.ChildAdded)
		end

		return Instance
	end

	local function Invisible(Instance)
		if IsA(Instance, "BasePart") or IsA(Instance, "Decal") then
			Instance.Transparency = OptionsRigTransparency
		elseif IsA(Instance, "ForceField") or IsA(Instance, "Explosion") then
			Instance.Visible = false
		elseif IsA(Instance, "ParticleEmitter") or IsA(Instance, "Fire") or IsA(Instance, "Sparkles") then
			Instance.Enabled = false
		end
	end

	local function DescendantAdded(Instance)
		if IsA(Instance, "Attachment") then
			local Handle = Instance.Parent

			if IsA(Handle, "BasePart") then
				local AttachmentsAttachment = Attachments[Instance.Name]

				if AttachmentsAttachment then
					local MeshId = ""
					local TextureId = ""

					if IsA(Handle, "MeshPart") then
						MeshId = Handle.MeshId
						TextureId = Handle.TextureID
					else
						local SpecialMesh = FindFirstChildOfClass(Handle, "SpecialMesh")

						if SpecialMesh then
							MeshId = SpecialMesh.MeshId
							TextureId = SpecialMesh.TextureId
						end
					end

					for Index, Table in pairs(OptionsAccessories) do
						if stringfind(MeshId, Table.MeshId or "") and stringfind(TextureId, Table.TextureId or "") then
							local Instance = FindFirstChildOfClassAndName(Rig, "BasePart", Table.Name)

							local AlternativeName = Table.AlternativeName
							local AlternativeInstance = false

							if not Instance and AlternativeName then
								Instance = FindFirstChildOfClassAndName(Rig, "BasePart", AlternativeName)
								AlternativeInstance = true
							end

							if Instance and not tablefind(Blacklist, Instance) then
								if Table.Blacklist then
									tableinsert(Blacklist, Instance)
								end
								BreakJoints(Handle)
								tableinsert(Tables, { Part0 = Handle, Part1 = Instance, CFrame = AlternativeInstance and Table.AllowAlternativeCFrame and Table.AlternativeCFrame or Table.CoordinateFrame, LastPosition = Instance.Position })
								return
							end
						end
					end
					for Index, Table in pairs(RigAccessories) do
						local TableHandle = Table.Handle

						if typeof(TableHandle) == "Instance" and Table.MeshId == MeshId and Table.TextureId == TextureId then
							BreakJoints(Handle)
							tableinsert(Tables, { Part0 = Handle, Part1 = TableHandle, LastPosition = TableHandle.Position })
							return
						end
					end

					local Accessory = Handle.Parent

					if IsA(Accessory, "Accessory") then
						local AccessoryClone = Instancenew("Accessory")
						AccessoryClone.Name = Accessory.Name

						local HandleClone = Clone(Handle)
						Invisible(HandleClone)
						BreakJoints(HandleClone)
						HandleClone.Parent = AccessoryClone

						local Weld = Instancenew("Weld")
						Weld.Name = "AccessoryWeld"
						Weld.C0 = Instance.CFrame
						Weld.C1 = AttachmentsAttachment.CFrame
						Weld.Part0 = HandleClone
						Weld.Part1 = AttachmentsAttachment.Parent
						Weld.Parent = HandleClone

						tableinsert(RigAccessories, { Handle = HandleClone, MeshId = MeshId, TextureId = TextureId })
						tableinsert(Tables, { Part0 = Handle, Part1 = HandleClone, LastPosition = HandleClone.Position })

						AccessoryClone.Parent = Rig
					end
				end
			end
		elseif IsA(Instance, "BasePart") then
			Instance.CanQuery = false
			tableinsert(BaseParts, Instance)
		end
	end

	local function ApplyDescriptionRig()
		local Description = GetAppliedDescription(Humanoid)
		Description.HatAccessory = ""
		Description.BackAccessory = ""
		Description.FaceAccessory = ""
		Description.HairAccessory = ""
		Description.NeckAccessory = ""
		Description.FrontAccessory = ""
		Description.WaistAccessory = ""
		Description.ShouldersAccessory = ""
		ApplyDescription(RigHumanoid, Description)

		for Index, Instance in pairs(GetDescendants(Rig)) do
			Invisible(Instance)
		end
	end

	local function SetCharacter()
		taskwait()
		LocalPlayer.Character = Rig
	end
	local Tools = { }
	local function CharacterAdded()
		local Character = LocalPlayer.Character

		if Character and Character ~= Rig then
			if OptionsFlingToolFling then
				for Index, Backpack in pairs(GetChildren(LocalPlayer)) do
					if IsA(Backpack, "Backpack") then
						for Index, Instance in pairs(GetChildren(Backpack)) do
							if IsA(Instance, "Tool") then
								Tools[Instance] = FindFirstChildOfClassAndName(Instance, "BasePart", "Handle")	
								Instance.Parent = Character
							end
						end
					end
				end
			end

			if OptionsRigSetCharacter then
				taskspawn(SetCharacter)
			end

			tableclear(BaseParts)
			tableclear(Blacklist)
			tableclear(Tables)

			if CurrentCamera then
				CameraCFrame = CurrentCamera.CFrame
			end

			for Index, Instance in pairs(GetDescendants(Character)) do
				DescendantAdded(Instance)
			end

			tableinsert(RBXScriptConnections, Connect(Character.DescendantAdded, DescendantAdded))

			Humanoid = WaitForChildOfClassAndName(Character, "Humanoid", "Humanoid")
			local HumanoidRootPart = WaitForChildOfClassAndName(Character, "BasePart", "HumanoidRootPart")

			if Boolean then
				Camera()

				if HumanoidRootPart then
					RigHumanoidRootPart.CFrame = HumanoidRootPart.CFrame
					Boolean = false
				end

				if OptionsRigSetHumanoidDescription and RigHumanoid and Humanoid then
					pcall(ApplyDescriptionRig)
				end
			end

			if HumanoidRootPart then
				for Index, Table in pairs(Targets) do
					if not HumanoidRootPart then
						break
					end

					if Humanoid then
						ChangeState(Humanoid, Physics)
					end

					local Target = Table.Target

					local Timeout = Time + OptionsFlingTimeout
					local LastPosition = Target.Position

					while Target and HumanoidRootPart do
						if Time > Timeout then
							break
						end

						local Position = Target.Position
						local LinearVelocity = ( Position - LastPosition ) / DeltaTime

						if LinearVelocity.Magnitude > 50 then
							break
						end

						LastPosition = Position

						HumanoidRootPart.AssemblyAngularVelocity = OptionsFlingVelocity
						HumanoidRootPart.AssemblyLinearVelocity = OptionsFlingVelocity

						HumanoidRootPart.CFrame = Target.CFrame * CFramenew(0, 0, 4 * mathsin(Time * 30)) * CFrameAngles(mathrandom(- 360, 360), mathrandom(- 360, 360), mathrandom(- 360, 360)) + ( LinearVelocity * 0.5) 
						taskwait()
					end

					local Highlight = Table.Highlight

					if Highlight then
						Destroy(Highlight)
					end

					Targets[Index] = nil
				end

				if Humanoid then
					ChangeState(Humanoid, Running)
				end

				if RigHumanoidRootPart then
					HumanoidRootPart.AssemblyAngularVelocity = Vector3zero
					HumanoidRootPart.AssemblyLinearVelocity = Vector3zero

					HumanoidRootPart.CFrame = RigHumanoidRootPart.CFrame + Vector3new(mathrandom(- OptionsTeleportXandZoffset, OptionsTeleportXandZoffset), OptionsTeleportYoffset, mathrandom(- OptionsTeleportXandZoffset, OptionsTeleportXandZoffset))
				end
			end

			taskwait(0.26 + Wait(PreSimulation))

			if Character then
				BreakJoints(Character)
			end
	

		end
	end

	local function PostSimulationConnect()
		sethiddenproperty(LocalPlayer, "SimulationRadius", 2147483647)

		Time = osclock()
		DeltaTime = Time - LastTime
		LastTime = Time

		local Integer = 29 + mathsin(Time)
		local Vector3 = Vector3new(0, 0, 0.002 * mathsin(Time * 25))

		for Index, Table in pairs(Tables) do
			local Part0 = Table.Part0
			local Part1 = Table.Part1

			if Part0 and # GetJoints(Part0) == 0 and Part0.ReceiveAge == 0 and Part1 then
				Part0.AssemblyAngularVelocity = Vector3zero

				local Position = Part1.Position
				local LinearVelocity = ( ( Table.LastPosition - Position ) / DeltaTime ) * Integer
				Table.LastPosition = Position

				Part0.AssemblyLinearVelocity = Vector3new(LinearVelocity.X, Integer, LinearVelocity.Z)

				Part0.CFrame = Part1.CFrame * ( Table.CFrame or CFrameidentity ) + Vector3
			end
		end

		local Hit = Mouse.Hit
		local Holding = IsMouseButtonPressed(UserInputService, MouseButton1)

		for Tool, BasePart in pairs(Tools) do
			if BasePart.ReceiveAge == 0 and # GetJoints(BasePart) == 0 then
				BasePart.CanCollide = false
				BasePart.AssemblyAngularVelocity = OptionsFlingVelocity
				BasePart.AssemblyLinearVelocity = OptionsFlingVelocity

				if Holding then
					BasePart.CFrame = Hit
				elseif RigHumanoidRootPart then
					BasePart.CFrame = RigHumanoidRootPart.CFrame * CFramenew(0, OptionsTeleportYoffset, 0) * CFrameAngles(mathrandom(- 360, 360), mathrandom(- 360, 360), mathrandom(- 360, 360))
				else
					BasePart.CFrame = CFrameidentity
				end
			end
		end

		if RigHumanoid and Humanoid then
			RigHumanoid.Jump = Humanoid.Jump
			Move(RigHumanoid, Humanoid.MoveDirection)
		end

		if not Success then
			Success = pcall(SetCore, StarterGui, "ResetButtonCallback", BindableEvent)
		else
			SetCore(StarterGui, "ResetButtonCallback", BindableEvent)
		end
	end

	local function PreSimulationConnect()
		for Index, BasePart in pairs(BaseParts) do
			BasePart.CanCollide = false
		end
	end

	local function Fling(Target)
		if typeof(Target) == "Instance" then
			if IsA(Target, "Humanoid") then
				Target = Target.Parent
			end
			if IsA(Target.Parent, "Accessory") then
				Target = FindFirstAncestorOfClass(Target, "Model")
			end
			if IsA(Target, "Model") then
				Target = FindFirstChildOfClassAndName(Target, "BasePart", "HumanoidRootPart")
			end
			if IsA(Target, "BasePart") then
				for Index, Table in pairs(Targets) do
					if Table.Target == Target then
						return
					end
				end

				local Parent = Target.Parent

				local Highlight = nil

				if OptionsFlingHighlightTargets then
					Highlight = Instancenew("Highlight")
					Highlight.Adornee = Parent
					Highlight.Parent = Parent
					tableinsert(Highlights, Highlight)
				end

				tableinsert(Targets, {Highlight = Highlight, Target = Target})
			end
		end
	end

	local function InputBegan(InputObject)
		local UserInputType = InputObject.UserInputType

		if UserInputType == MouseButton1 or UserInputType == Touch then
			local Target = Mouse.Target

			if Target and not Target.Anchored then
				local Model = Target.Parent

				if IsA(Model, "Model") and FindFirstChildOfClass(Model, "Humanoid") then
					local HumanoidRootPart = FindFirstChildOfClassAndName(Model, "BasePart", "HumanoidRootPart")

					if HumanoidRootPart then
						Fling(HumanoidRootPart)
					end
				else
					Fling(Target)
				end
			end
		end
	end

	local function gameDescendantAdded(Instance)
		if ( OptionsDisableScreenGUIs and IsA(Instance, "ScreenGui") ) or ( OptionsDisableScripts and Instance ~= script and ( IsA(Instance, "LocalScript") or IsA(Instance, "Script") ) ) then
			Enableds[Instance] = Instance.Enabled
			Instance.Enabled = false

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Instance, "Enabled"), function()
				Enableds[Instance] = Instance.Enabled
				Instance.Enabled = false
			end))
		end
	end

	local function Stop()
		for Index, RBXScriptConnection in pairs(RBXScriptConnections) do
			Disconnect(RBXScriptConnection)
		end
		for Index, Highlight in pairs(Highlights) do
			Destroy(Highlight)
		end
		for Instance, Boolean in pairs(Enableds) do
			Instance.Enabled = Boolean
		end

		tableclear(Attachments)
		tableclear(BaseParts)
		tableclear(Enableds)
		tableclear(Handles)
		tableclear(Highlights)
		tableclear(RBXScriptConnections)
		tableclear(Tables)
		tableclear(Targets)

		if Rig then
			Destroy(Rig)
		end

		Destroy(BindableEvent)
		SetCore(StarterGui, "ResetButtonCallback", true)
	end

	local Emperean = {
		Stop = Stop,
		Start = function(Options)
			Options = Options or { }
			OptionsAccessories = Options.Accessories or {}
			local OptionsRig = Options.Rig
			OptionsRigTransparency = OptionsRig.Transparency
			OptionsRigR15 = OptionsRig.R15
			OptionsRigSetHumanoidDescription = OptionsRig.SetHumanoidDescription
			OptionsRigSetCharacter = OptionsRig.SetCharacter
			local OptionsTeleport = Options.Teleport or {}
			local XandYoffset = OptionsTeleport.XandYoffset
			OptionsTeleportXandZoffset = XandYoffset and mathabs(XandYoffset) or 6
			OptionsTeleportYoffset = OptionsTeleport.Yoffset or 0
			local OptionsDisable = Options.Disable
			OptionsDisableScripts = OptionsDisable.Scripts
			OptionsDisableScreenGUIs = OptionsDisable.GUIs
			local OptionsFling = Options.Fling or {}
			OptionsFlingEnabled = OptionsFling.Enabled
			OptionsFlingToolFling = OptionsFling.ToolFling
			OptionsFlingTimeout = OptionsFling.Timeout or 1.5
			OptionsFlingVelocity = OptionsFling.Velocity or Vector3new(0, 4096, 0)
			OptionsFlingHighlightTargets = OptionsFling.HighlightTargets

			if OptionsDisableScripts or OptionsDisableScreenGUIs then
				for Index, Instance in pairs(GetDescendants(game)) do
					gameDescendantAdded(Instance)
				end

				tableinsert(RBXScriptConnections, Connect(game.DescendantAdded, gameDescendantAdded))
			end

			Boolean = true
			LastTime = osclock()

			Rig = OptionsRigR15 and CreateHumanoidModelFromUserId(Players, 5532894300) or CreateHumanoidModelFromUserId(Players, 5532891747)
			Rig.Name = "MaxDesignPro"
			RigHumanoid = Rig.Humanoid
			RigHumanoidRootPart = Rig.HumanoidRootPart
			Rig.Parent = Workspace

			for Index, Instance in pairs(GetDescendants(Rig)) do
				if IsA(Instance, "Attachment") then
					Attachments[Instance.Name] = Instance
				else
					Invisible(Instance)
				end
			end

			BindableEvent = Instancenew("BindableEvent")
			Connect(BindableEvent.Event, Stop)

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Workspace, "CurrentCamera"), Camera))

			CharacterAdded()
			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(LocalPlayer, "Character"), CharacterAdded))

			if OptionsFlingEnabled then
				tableinsert(RBXScriptConnections, Connect(UserInputService.InputBegan, InputBegan))
			end

			tableinsert(RBXScriptConnections, Connect(PreSimulation, PreSimulationConnect))
			tableinsert(RBXScriptConnections, Connect(PostSimulation, PostSimulationConnect))

			return { 
				Rig = Rig,
				Options = Options,
				Fling = Fling,
			},
			taskwait()
		end,
	}

	Emperean.Start({
		Accessories = {
			--  Free Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "4819720316", TextureId = "4819722776", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 0, -0.25), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "3030546036", TextureId = "3033903209", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, -1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "3030546036", TextureId = "3360978739", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "3030546036", TextureId = "3033898741", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, -1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "3030546036", TextureId = "3409604993", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, 1.57), AlternativeCFrame = CFrameidentity },

			-- Cheap Paid Rig
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "12344206657", TextureId = "12344206675", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(-0.095, 0, 0) * CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "12344207333", TextureId = "12344207341", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0.095, 0, 0) * CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "11263221350", TextureId = "11263219250", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, - 1.57, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "11159370334", TextureId = "11159284657", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },
			
			-- Noob Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "18640899369", TextureId = "18640899481", AllowAlternativeCFrame = false, CoordinateFrame = CFrameidentity, AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "18640914129", TextureId = "18640914168", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "18640914129", TextureId = "18640914168", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 0), AlternativeCFrame = CFrameidentity },    
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "18640901641", TextureId = "18640901676", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "18640901641", TextureId = "18640901676", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 0), AlternativeCFrame = CFrameidentity },
			
			-- Accurate Paid Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "14241018198", TextureId = "14251599953", AllowAlternativeCFrame = false, CoordinateFrame = CFrameidentity, AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "17374767929", TextureId = "17374768001", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "17374767929", TextureId = "17374768001", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },	
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "17387586286", TextureId = "17387586304", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "17387586286", TextureId = "17387586304", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },

			-- White limbs below
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "14255522247", TextureId = "14255543546", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "14255522247", TextureId = "14255543546", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerArm", MeshId = "14768684979", TextureId = "14768683674", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "LeftLowerArm", MeshId = "14768684979", TextureId = "14768683674", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },

			{ Blacklist = true, Name = "Dubstep Gun", AlternativeName = "White", MeshId = "17550839817", TextureId = "17550153957", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0.25, -1.25 , -0.65) * CFrameAngles(3.15, -1.57, -0.57), AlternativeCFrame = CFrameidentity },
            { Blacklist = true, Name = "Dubstep Gun", AlternativeName = "Pink", MeshId = "17559536886", TextureId = "17559364405", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0.25, -1.25 , -0.65) * CFrameAngles(3.15, -1.57, -0.57), AlternativeCFrame = CFrameidentity },
  			{ Blacklist = true, Name = "Dubstep Gun", AlternativeName = "Grey", MeshId = "17550839817", TextureId = "17553942348", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0.25, -1.25 , -0.65) * CFrameAngles(3.15, -1.57, -0.57), AlternativeCFrame = CFrameidentity },

		},
		Rig = {
			Transparency = 1,
			R15 = false,
			SetHumanoidDescription = true,
			SetCharacter = false
		},
		Teleport = {
			XandZoffset = 0,
			Yoffset = -100
		},
		Disable = {
			Scripts = true,
			ScreenGUIs = false
		},
		Fling = {
			Enabled = true,
			ToolFling = true,
			Timeout = 0.75,
			Velocity = Vector3new(15250, 16250, 15250),
			HighlightTargets = true
		}
	})
end

Reanimate()

local Player = game.Players.LocalPlayer
local Mouse,mouse = Player:GetMouse(),Player:GetMouse()

Player=game.Players.LocalPlayer
Character=workspace.MaxDesignPro
hum = Character.Humanoid
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
walking = false
hitdebounce = false
jumping = false
attacking = false
firsttime = false
tauntdebounce = false
position = nil
classical = true
dada = false
industrial = false
popstar = false
vinyl = false
brutal = false
love = false
godgun = false
MseGuide = true
running = false
settime = 0
sine = 0
t = 0
ws = 60
change = 1
combo1 = true
equip = false
swetch = false
dgs = 75
combo2 = false
switch1 = true
switch2 = false
firsttime2 = false
stop = false
combo3 = false
gunallowance = false
shooting = false
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
smoothen = game:GetService("TweenService")
cam = workspace.CurrentCamera
randomcolortable={"Cyan","Really red","Cyan","Royal purple","Lime green","Crimson","Daisy yellow","Eggplant"} ---rainbow effect
randomsound={1841352043,1841310110,1841352055}
random = #randomcolortable

screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

dubgun = Instance.new("Part", Character)
dubgun.Size = Vector3.new(1,1,1)
dubgun.Transparency = 1
dubgun.Name = "Dubstep Gun"
dubgun.CanCollide = false
dubgun.BrickColor = LeftArm.BrickColor
dubgunweld = weldBetween(dubgun,RightArm)
dubgunweld.C0 = CFrame.new(0, 0 ,0)

dubgun2 = Instance.new("Part", Torso)
dubgun2.Size = Vector3.new(1,1,1)
dubgun2.Transparency = 0
dubgun2.CanCollide = false
dubgun2.BrickColor = LeftArm.BrickColor
 

coroutine.wrap(function()
while wait() do
hum.WalkSpeed = ws
hum.JumpPower = 75
end
end)()

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='z' then
if debounce then return end
debounce = true
industrial = false
godgun = false
classical = true
vinyl = false
love = false
dada = false
popstar = false
brutal = false
crimson = false
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='x' then
if debounce then return end
debounce = true
industrial = true
vinyl = false
love = false
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='c' then
if debounce then return end
debounce = true
industrial = false
godgun = true
vinyl = false
love = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='v' then
if debounce then return end
debounce = true
industrial = false
love = true
vinyl = false
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='b' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = true
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = false
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='n' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = false
godgun = false
classical = false
popstar = false
dada = true
brutal = false
crimson = false
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='l' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = false
godgun = false
classical = false
crimson = false
popstar = false
dada = false
brutal = true
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
elseif Press=='k' then
if debounce then return end
debounce = true
industrial = false
love = false
vinyl = false
godgun = false
classical = false
popstar = false
dada = false
brutal = false
crimson = true
local sm = Instance.new("Part",Torso)
sm.Size = Vector3.new(2,2,2)
sm.Shape = "Ball"
sm.Anchored = true
sm.CanCollide = false
sm.CFrame = dubgun.CFrame
sm.Transparency = 0
sm.BrickColor = BrickColor.new("White")
sm.Material = "Neon"
coroutine.wrap(function()
for i = 1, 30 do
swait()
sm.Size = sm.Size + Vector3.new(1,1,1)
sm.Transparency = sm.Transparency + .05
end
sm:Remove()
end)()
local wb = Instance.new("Sound",dubgun)
wb.Volume = 4
wb.SoundId = "rbxassetid://1678747502"
wb:Play()
removeuseless:AddItem(wb,5)
local particlemiter = Instance.new("ParticleEmitter",dubgun)
particlemiter.Texture = "rbxassetid://1955503112"
particlemiter.Size = NumberSequence.new(2,.5)
particlemiter.Transparency = NumberSequence.new(0,1)
particlemiter.Enabled = true
particlemiter.LockedToPart = false
particlemiter.Speed = NumberRange.new(20)
particlemiter.RotSpeed = NumberRange.new(210)
particlemiter.Lifetime = NumberRange.new(2)
particlemiter.SpreadAngle = Vector2.new(-100,100)
particlemiter.Rate = 500
local particlemiter2 = Instance.new("ParticleEmitter",dubgun)
particlemiter2.Texture = "rbxassetid://149310730"
particlemiter2.Size = NumberSequence.new(2,.5)
particlemiter2.Transparency = NumberSequence.new(0,1)
particlemiter2.Enabled = true
particlemiter2.LockedToPart = false
particlemiter2.Speed = NumberRange.new(20)
particlemiter2.RotSpeed = NumberRange.new(210)
particlemiter2.Lifetime = NumberRange.new(2)
particlemiter2.SpreadAngle = Vector2.new(-100,100)
particlemiter2.Rate = 500
local particlemiter3 = Instance.new("ParticleEmitter",dubgun)
particlemiter3.Texture = "rbxassetid://35755888"
particlemiter3.Size = NumberSequence.new(2,.5)
particlemiter3.Transparency = NumberSequence.new(0,1)
particlemiter3.Enabled = true
particlemiter3.LockedToPart = false
particlemiter3.Speed = NumberRange.new(20)
particlemiter3.RotSpeed = NumberRange.new(210)
particlemiter3.Lifetime = NumberRange.new(2)
particlemiter3.SpreadAngle = Vector2.new(-100,100)
particlemiter3.Rate = 500
wait(.15)
coroutine.wrap(function()
particlemiter.Enabled = false
particlemiter2.Enabled = false
particlemiter3.Enabled = false
wait(5)
particlemiter3:Remove()
particlemiter:Remove()
particlemiter2:Remove()
end)()
debounce = false
end
end)

mouse.Button1Down:connect(function()
if debounce then return end
debounce = true
attacking = true
stop = false
change = .5
local enigma = false
x1 = Instance.new("Sound",dubgun)
if industrial then
x1.SoundId = "rbxassetid://3083319302"
elseif brutal then
x1.SoundId = "rbxassetid://3105571797"
elseif dada then
x1.SoundId = "rbxassetid://3105045607"
elseif crimson then
x1.SoundId = "rbxassetid://3107799061"
elseif love then
x1.SoundId = "rbxassetid://3102055459"
elseif vinyl then
x1.SoundId = "rbxassetid://3102210476"
elseif classical then
x1.SoundId = "rbxassetid://3076784522"
elseif godgun then
x1.SoundId = "rbxassetid://3101688545"
end
x1.Volume = 8
x1.Looped = false
x1:Play()
local zm = true
local mz = false
local g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 2000
g1.MaxTorque = Vector3.new(0,9000000,0)
wait(.1)
coroutine.wrap(function()
while zm do
if stop then break end
change = .5
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
if swetch then
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(48), math.rad(0)),.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(21), math.rad(0)),.2)
end
if godgun then
elseif crimson then
else
end
swait()
end
if stop then
mz = true
removeuseless:AddItem(g1,.001)
end
end)()
wait(x1.TimeLength)
if mz then
removeuseless:AddItem(g1,.001)
else
enigma = true
DASOUND = Instance.new("Sound",dubgun)
DASOUND.Volume = 8
if industrial then
DASOUND.SoundId = "rbxassetid://324499479"
elseif dada then
DASOUND.SoundId = "rbxassetid://1736332220"
elseif love then
DASOUND.SoundId = "rbxassetid://1736518563"
elseif vinyl then
DASOUND.SoundId = "rbxassetid://1839911846"
elseif classical then
DASOUND.SoundId = "rbxassetid://3076799059"
elseif brutal then
DASOUND.SoundId = "rbxassetid://3105617268"
DASOUND.Pitch = .945
elseif crimson then
DASOUND.SoundId = "rbxassetid://3107798630"
elseif godgun then
DASOUND.SoundId = "rbxassetid://3101767795"
DASOUND.Pitch = .7
end
DASOUND.Looped = true
DASOUND:Play()
t = 0
n = 0
b = 0
 
if swetch then
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(48), math.rad(0)),.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(21), math.rad(0)),.2)
end
swait()
end
end)

mouse.Button1Up:connect(function()
attacking = false
debounce = false
stop = true
ws = 60
pcall(function()
x1:Remove()
DASOUND:Remove()
ROOTLERP.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
end)

end)

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.y > 1 then
position = "Jump"
elseif Root.Velocity.y < -1 then
position = "Falling"
elseif Root.Velocity.Magnitude < 5 then
position = "Idle"
elseif Root.Velocity.Magnitude > 5 then
position = "Walking"
else
end
wait()
end
end)
checks1()

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
while true do
hum:SetStateEnabled("Dead",false) hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if hum.Health < .1 then
immortality()
end
wait()
end
end)()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Jump" then
change = 1
spin = false
if attacking then
swetch = false
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-105), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-110), math.rad(-60), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-46 + 3 * math.sin(sine/8)), math.rad(9 + 1 * math.sin(sine/8)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-55 + 4 *math.sin(sine/8)), math.rad(-60 + 2 * math.sin(sine/8)), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
end
elseif position == "Falling" then
change = 1
spin = false
if attacking then
swetch = false
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-85), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-90), math.rad(-60), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.09)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/12), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.25)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.09)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-46 + 3 * math.sin(sine/8)), math.rad(9 + 1 * math.sin(sine/8)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-55 + 4 *math.sin(sine/8)), math.rad(-60 + 2 * math.sin(sine/8)), math.rad(0)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/12), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/12)), math.rad(0), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.25)
end
elseif position == "Walking" then
change = 1.2
walking = true
spin = false
ws = 60
if attacking then
swetch = true
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-95), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-100), math.rad(-60), math.rad(0)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.62 + .54 * math.cos(sine/8)/2.8,.2 + .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 + 60* math.sin(sine/8)), math.rad(9-16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.62 - .54 * math.cos(sine/8)/2.8,.2 - .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 - 60* math.sin(sine/8)), math.rad(-9+16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + 0.19*math.sin(sine/4), 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.1)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-46 + 3 * math.sin(sine/8)), math.rad(9 + 1 * math.sin(sine/8)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-55 + 4 *math.sin(sine/8)), math.rad(-60 + 2 * math.sin(sine/8)), math.rad(0)), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + 0.19*math.sin(sine/4), 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.62 + .54 * math.cos(sine/8)/2.8,.2 + .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 + 60* math.sin(sine/8)), math.rad(9-16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.62 - .54 * math.cos(sine/8)/2.8,.2 - .5 * math.sin(sine/8)) * CFrame.Angles(math.rad(20 - 60* math.sin(sine/8)), math.rad(-9+16)*math.cos(sine/8), math.rad(0), math.cos(65 * math.cos(sine/8))), 0.3)
end
elseif position == "Idle" then
change = .5
spin = true
if attacking then
swetch = false
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, 1, .35) * CFrame.Angles(math.rad(-85), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, .45) * CFrame.Angles(math.rad(-90), math.rad(-60), math.rad(0)), 0.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),.2)
else
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9, .85, .35) * CFrame.Angles(math.rad(-52 + 2 * math.sin(sine/12)), math.rad(9 + 1 * math.sin(sine/12)), math.rad(13)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, -.2, -.05) * CFrame.Angles(math.rad(-62 + 3 *math.sin(sine/12)), math.rad(-60 + 2 * math.sin(sine/12)), math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),.2)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.4, 2 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(-5), math.rad(30 + 0 * math.sin(sine/12)), math.rad(-5 - .1 * math.sin(sine/12))), 0.2)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.55, 2.0 - .1 * math.sin(sine/12), .2) * CFrame.Angles(math.rad(5), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(5 + .1 * math.sin(sine/12))), 0.2)
end
end
swait()
end
end)
anims()
 