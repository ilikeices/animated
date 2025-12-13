--if real == true then
local oa = {}

oa.AddHat = function(id)
local char = game.Players.LocalPlayer.Character
z = game:GetService("InsertService"):LoadLocalAsset("rbxassetid://"..id)
z.Handle.CanCollide = false
z.Handle.CFrame = CFrame.new(0,0,0)
w = Instance.new("Weld",z.Handle)
w.C0 = w.Parent:FindFirstChildOfClass("Attachment").CFrame
w.Name = "AccessoryWeld"
w.Part0 = z.Handle
a  = w.Parent:FindFirstChildOfClass("Attachment")
 if string.find(a.Name,"Left") then
  if string.find(a.Name,"Shoulder") then
w.Part1 = char["Left Arm"]
w.C1 =  char["Left Arm"].LeftShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Shoulder") then
  w.Part1 = char["Right Arm"]
  w.C1 =  char["Right Arm"].RightShoulderAttachment.CFrame;
end
 elseif string.find(a.Name,"Left") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Left Leg"]
  w.C1 =  char["Left Leg"].LeftFootAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Right Leg"]
  w.C1 =  char["Right Leg"].RightFootAttachment.CFrame
end
 elseif string.find(a.Name,"Waist") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].WaistBackAttachment.CFrame
       end    
        elseif string.find(a.Name,"Body") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyBackAttachment.CFrame
       elseif  string.find(a.Name,"Front") then
          w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyFrontAttachment.CFrame
       end    
            elseif string.find(a.Name,"Hat") then
                w.Part1 = char["Head"]
       w.C1 =  char["Head"].HatAttachment.CFrame 
                elseif string.find(a.Name,"FaceFront") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceFrontAttachment.CFrame 
                       elseif string.find(a.Name,"FaceCenter") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceCenterAttachment.CFrame 
                                  elseif string.find(a.Name,"Neck") then
                       w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].NeckAttachment.CFrame 
                           elseif string.find(a.Name,"Hair") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].HairAttachment.CFrame 
end
z.Handle.Anchored = false
char.Humanoid:AddAccessory(z)
end

oa.Fling = function(p)
pcall(function()
attackuno(p)
end)
end
local vim = game:GetService('VirtualInputManager')
 oa.Input = {
    Hold = function(key)
        vim:SendKeyEvent(true, key, false, workspace)
    end,
    Unhold = function(key)
        vim:SendKeyEvent(false, key, false, workspace)
    end,
    Press = function(key)
        vim:SendKeyEvent(true, key, false, workspace)
	task.wait(0.005)
        vim:SendKeyEvent(false, key, false, workspace)
    end
}
oa.Notification = function(text,time)
local OxideNotificationGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Notification = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")


OxideNotificationGui.Name = "OxideNotificationGui"
OxideNotificationGui.Parent = game:GetService("CoreGui")
OxideNotificationGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OxideNotificationGui.ResetOnSpawn = false
Frame.Parent = OxideNotificationGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.316000015, 0, -2, 0)
Frame.Size = UDim2.new(0.363541663, 0, 0.0769230798, 0)

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0138253374, 0, 0.110133804, 0)
Frame_2.Size = UDim2.new(0.972779393, 0, 0.771084309, 0)

UICorner_2.Parent = Frame_2

UIAspectRatioConstraint.Parent = Frame_2
UIAspectRatioConstraint.AspectRatio = 10.609

Notification.Name = text
Notification.Parent = Frame_2
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.BackgroundTransparency = 1.000
Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(0, 0, 0.109374978, 0)
Notification.Size = UDim2.new(1.00000024, 0, 0.75208348, 0)
Notification.Font = Enum.Font.Ubuntu
Notification.Text = text
Notification.TextColor3 = Color3.fromRGB(255, 255, 255)
Notification.TextScaled = true
Notification.TextSize = 14.000
Notification.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 203, 233)), ColorSequenceKeypoint.new(0.59, Color3.fromRGB(120, 203, 244)), ColorSequenceKeypoint.new(0.86, Color3.fromRGB(170, 225, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(155, 222, 255))}
UIGradient.Parent = Frame

UIAspectRatioConstraint_2.Parent = Frame
UIAspectRatioConstraint_2.AspectRatio = 8.410

Frame:TweenPosition(UDim2.new(0.316, 0,0.05, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,2)
task.spawn(function()
	task.wait(time)
Frame:TweenPosition(UDim2.new(0.316, 0,-2, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,1)
task.wait(1)
	Frame:Destroy()
end)
end

local script = game:GetObjects("rbxassetid://106729691142711")[1]
local run = game:GetService("RunService")
local kfs = game:GetService("KeyframeSequenceProvider")
local dummy = script.holder:WaitForChild("DummyR15")
local dummy2 = script.holder:WaitForChild("DummyR6")

local defaults = {}
local maxSteps = 0
local currentStep = 0
local d = dummy:Clone()
d.Parent=script
local d2 = dummy2:Clone()
d2.Parent=script

for i,v in pairs(dummy:GetDescendants()) do
	if v:IsA("Motor6D") then
		defaults[v]=v.C0
	end
end

local function getRelative(cf1,cf2)
	return cf2:ToObjectSpace(cf1)
end

local function CreatePart(name: string, cframe: CFrame, size: Vector3)
	local folder = workspace:FindFirstChild("AnimConverterTestPart") or Instance.new("Folder",workspace)
	folder.Name="AnimConverterTestPart"
	local part = Instance.new("Part")
	part.Name=name
	part.CFrame=cframe
	part.Anchored=true
	part.CanCollide=false
	part.Size=size
	part.Transparency=0.5
	part.BrickColor=BrickColor.random()
	part.Parent=folder
end



local function CalculateLimb(limbCFrame: CFrame, motor: Motor6D, torso: CFrame, offset: Vector3): CFrame
	offset=offset or Vector3.new()
	torso=torso or dummy2.Torso.CFrame

	local r15Rel = dummy2.HumanoidRootPart.CFrame * getRelative(
		limbCFrame,
		dummy.HumanoidRootPart.CFrame
	)+offset

	local cf = (torso*motor.C0):ToObjectSpace(r15Rel)
	return cf*motor.C1,r15Rel
end


oa.convertanim = function(sequence: KeyframeSequence)
	if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R6   and sequence:FindFirstChild("UpperTorso",true)  then 
		currentStep=0
		maxSteps=(5*#sequence:GetKeyframes())+1
		local result = Instance.new("KeyframeSequence")
		result.Name="R15ToR6ConvertedAnimation"
		result.Priority=sequence.Priority
		result.Loop=sequence.Loop

		result.Parent=workspace

		--logText("Created empty keyframe sequence.")
		for _,v in ipairs(dummy:GetDescendants()) do
			if v:IsA("Motor6D") then
				v.C0=defaults[v]
			end
		end
		dummy.Parent=workspace
		for i,v in pairs(sequence:GetKeyframes()) do
			--logText("Converting keyframe "..i.."/"..#sequence:GetKeyframes().." ...")
			local kf = Instance.new("Keyframe")
			kf.Time=v.Time
			local poses = v:GetDescendants()
			for i,v in pairs(poses) do
				local part = dummy:FindFirstChild(tostring(v))
				local motor
				if part then
					motor=part:FindFirstChildOfClass("Motor6D")
				end
				if motor then
					motor.C0=defaults[motor]*v.CFrame
					--motor.C1=CFrame.new()
				end
			end
			--logText('Calculated CFrames for <u>'..#poses..'</u> R15 poses.')
			local r6Poses
			r6Poses = {
				["Torso"]=Instance.new("Pose"),
				["Head"]=Instance.new("Pose"),
				["Right Arm"]=Instance.new("Pose"),
				["Left Arm"]=Instance.new("Pose"),
				["Right Leg"]=Instance.new("Pose"),
				["Left Leg"]=Instance.new("Pose"),
				["HumanoidRootPart"]=Instance.new("Pose")
			}
			local r6R15 = {
				["Head"]={{"Head"},"Head"},
				["Torso"]={{"UpperTorso","LowerTorso"},"UpperTorso"},
				["Right Arm"]={{"RightLowerArm","RightUpperArm"},"RightLowerArm"},
				["Left Arm"]={{"LeftLowerArm","LeftUpperArm"},"LeftLowerArm"},
				["Right Leg"]={{"RightLowerLeg","RightUpperLeg"},"RightLowerLeg"},
				["Left Leg"]={{"LeftLowerLeg","LeftUpperLeg"},"LeftLowerLeg"},
				["HumanoidRootPart"]={{"HumanoidRootPart"},"HumanoidRootPart"}
			}
			for index,pose in pairs(r6Poses) do
				local counterPart = nil
				local posesPresent = {}
				for _,v in ipairs(poses) do
					table.insert(posesPresent,tostring(v))
				end
				for _,val in ipairs(poses) do
					if 
						(
							table.find(posesPresent,r6R15[index][2]) and tostring(val)==r6R15[index][2]
						) or (
							table.find(r6R15[index][1],tostring(val)) and not table.find(posesPresent,r6R15[index][2])
						)
					then
						counterPart=val
						break
					end
				end
				if counterPart then
					if index~="Torso" and index~="HumanoidRootPart" then
						r6Poses.Torso:AddSubPose(pose)
						--pose.Parent=r6Poses.Torso
					elseif index=="Torso" then
						r6Poses.HumanoidRootPart:AddSubPose(pose)
						--pose.Parent=r6Poses.HumanoidRootPart
					elseif index=="HumanoidRootPart" then
						kf:AddPose(pose)
						--pose.Parent=kf
					end
					pose.EasingStyle=counterPart.EasingStyle
					pose.EasingDirection=counterPart.EasingDirection
					pose.Weight=counterPart.Weight
				else
					--pose:Destroy()
					--r6Poses[index]=nil
				end
			end
			for index,pose in pairs(r6Poses) do
				pose.Name=index
			end


				-------------------------------------------- Torso
				local torso
				if r6Poses.Torso then
					local cf,torsoWorldspace = CalculateLimb(dummy.UpperTorso.CFrame,dummy2.HumanoidRootPart["Root Hip"],nil,Vector3.new(0,-0.2,0))
					torso=torsoWorldspace
					r6Poses.Torso.CFrame=cf
				end
			task.spawn(function()
				-------------------------------------------- Right Arm
				if r6Poses["Right Arm"] then
					r6Poses["Right Arm"].CFrame=CalculateLimb(dummy.RightLowerArm.CFrame,dummy2.Torso["Right Shoulder"],torso,Vector3.new(0,0.224,0))
				end
			end)

			task.spawn(function()
				-------------------------------------------- Left Arm
				if r6Poses["Left Arm"] then
					r6Poses["Left Arm"].CFrame=CalculateLimb(dummy.LeftLowerArm.CFrame,dummy2.Torso["Left Shoulder"],torso,Vector3.new(0,0.224,0))
				end
			end)

			task.spawn(function()
				-------------------------------------------- Right Leg
				if r6Poses["Right Leg"] then
					r6Poses["Right Leg"].CFrame=CalculateLimb(dummy.RightLowerLeg.CFrame,dummy2.Torso["Right Hip"],torso,Vector3.new(0,0.201,0))
				end
			end)

			task.spawn(function()
				-------------------------------------------- Left Leg
				if r6Poses["Left Leg"] then
					r6Poses["Left Leg"].CFrame=CalculateLimb(dummy.LeftLowerLeg.CFrame,dummy2.Torso["Left Hip"],torso,Vector3.new(0,0.201,0))
				end
			end)

			task.spawn(function()
				-------------------------------------------- Head
				if r6Poses.Head then
					r6Poses.Head.CFrame=CalculateLimb(dummy.Head.CFrame,dummy2.Torso.Neck,torso)
				end
			end)

			result:AddKeyframe(kf)
		end
		dummy.Parent=script
		return result
	else 
		return sequence
	end
end

return oa;
