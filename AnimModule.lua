--[[
Anim Module Fix by theo
]]
local AnimatorModule = {}

local function Contains(Table, Check)
for Index, Value in next, Table do 
if rawequal(Check, Index) or rawequal(Check, Value) then 
return true
end
end
return false
end

local AnimDefaults = {
["Chainsaw"] = CFrame.new(0, 0, 0),
["Machete"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(0)),
["Neck"] = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
["RootJoint"] = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
["Right Shoulder"] = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["Left Shoulder"] = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Right Hip"] = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["Left Hip"] = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Head"] = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
["Torso"] = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
["Right Arm"] = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["Left Arm"] = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
["Right Leg"] = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
["Left Leg"] = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
}

local function Edit(Joint, Change, Duration, Style, Direction)
if not Style or not table.find(Enum.EasingStyle:GetEnumItems(), Style) then
Style = Enum.EasingStyle.Cubic
end
Direction = Enum.EasingDirection[string.split(tostring(Direction), ".")[3]]
local Anim = game:GetService("TweenService"):Create(Joint, TweenInfo.new(Duration, Style, Direction), {C0 = Change})
Anim:Play()
return Anim
end

function AnimatorModule:ResetJoints(Rig)
local RigHumanoid = Rig:FindFirstChildOfClass("Humanoid")
assert(RigHumanoid:IsA("Humanoid"), "Rig Humanoid Missing!")
if not RigHumanoid.RigType == Enum.HumanoidRigType.R6 then
return error("Rig Humanoid is not R6!")
end
local Joints = {
["Machete"] = Rig.HumanoidRootPart:FindFirstChild("Machete"),
["Chainsaw"] = Rig.HumanoidRootPart:FindFirstChild("Chainsaw"),
["Torso"] = Rig.HumanoidRootPart:FindFirstChild("RootJoint") or Rig.HumanoidRootPart:FindFirstChild("Root Joint"),
["Left Arm"] = Rig.Torso["Left Shoulder"],
["Right Arm"] = Rig.Torso["Right Shoulder"],
["Left Leg"] = Rig.Torso["Left Hip"],
["Right Leg"] = Rig.Torso["Right Hip"],
["Head"] = Rig.Torso["Neck"],
}
for Limb, Joint in next, Joints do
Edit(Joint, AnimDefaults[Limb], 0.01, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
end
end

function AnimatorModule:LoadAnimation(Rig, KeyframeSequence)
local Sequence = KeyframeSequence
local RigHumanoid = Rig:FindFirstChildOfClass("Humanoid")
if RigHumanoid.RigType ~= Enum.HumanoidRigType.R6 then
return error("Rig Humanoid is not R6!")
end
local Joints = {
["Machete"] = Rig.HumanoidRootPart:FindFirstChild("Machete"),
["Chainsaw"] = Rig.HumanoidRootPart:FindFirstChild("Chainsaw"),
["Torso"] = Rig.HumanoidRootPart:FindFirstChild("RootJoint") or Rig.HumanoidRootPart:FindFirstChild("Root Joint"),
["Left Arm"] = Rig.Torso["Left Shoulder"],
["Right Arm"] = Rig.Torso["Right Shoulder"],
["Left Leg"] = Rig.Torso["Left Hip"],
["Right Leg"] = Rig.Torso["Right Hip"],
["Head"] = Rig.Torso["Neck"],
}
local Class = {}
Class.Speed = 10
Class.KeepLast = 0
local Keyframes = Sequence:GetKeyframes()
table.sort(Keyframes, function(a, b) return a.Time < b.Time end)
Class.Length = Keyframes[#Keyframes].Time
local function Yield(Seconds)
task.wait(Seconds / Class.Speed)
end
for _, v in ipairs(Sequence:GetDescendants()) do
if v:IsA("IntValue") or v:IsA("StringValue") or v:IsA("Folder") then
v:Destroy()
elseif v:IsA("Pose") and not Rig:FindFirstChild(v.Name, true) then
v:Destroy()
end
end
Class.Stopped = true
Class.IsPlaying = false
Class.TimePosition = 0
Class.Looped = Sequence.Loop
local Completion = Instance.new("BindableEvent")
local Reached = Instance.new("BindableEvent")
Class.Completed = Completion.Event
Class.KeyframeReached = Reached.Event
function Class:Play(FadeIn, Speed)
if Speed and Speed < 0 then
Speed = math.abs(Speed)
end
Class.Speed = math.clamp(Speed or 180, 1, 180)
Class.Stopped = false
Class.IsPlaying = true
task.spawn(function()
if FadeIn then
Class.TimePosition -= FadeIn
end
Class.Completed:Connect(function()
if Class.Looped then
Class.TimePosition = 0
end
end)
local connection
connection = game:GetService("RunService").Stepped:Connect(function(_, usegooddevice)
if Class.IsPlaying and not Class.Stopped and RigHumanoid.Health > 0 then
Class.TimePosition += math.min(usegooddevice * Class.Speed, 1)
else
connection:Disconnect()
end
end)
end)
task.spawn(function()
if FadeIn then
Yield(FadeIn)
end
repeat
for K = 1, #Keyframes do
local K0, K1, K2 = Keyframes[K-1], Keyframes[K], Keyframes[K+1]
if not Class.Stopped and RigHumanoid.Health > 0 then
if K0 then
Yield(K1.Time - K0.Time)
end
task.spawn(function()
for _, Pose in ipairs(K1:GetDescendants()) do
if Joints[Pose.Name] then
local Duration = K2 and (K2.Time - K1.Time) / Class.Speed or 1
Edit(Joints[Pose.Name], AnimDefaults[Pose.Name] * Pose.CFrame, Duration, Pose.EasingStyle, Pose.EasingDirection)
end
end
end)
if K == #Keyframes and Class.KeepLast > 0 then
Yield(Class.KeepLast)
end
Reached:Fire(K1.Name)
else
break
end
end
Completion:Fire()
until not Class.Looped or Class.Stopped or RigHumanoid.Health == 0
Class.IsPlaying = false
end)
end
function Class:Stop()
Class.Stopped = true
end
function Class:AdjustSpeed(Speed)
if Speed < 0 then
Speed = math.abs(Speed)
end
Class.Speed = math.clamp(Speed or Class.Speed, 1, 180)
end
return Class
end

return AnimatorModule