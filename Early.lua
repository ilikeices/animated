
--[[

The universe has collapsed, and the only survivor is...

Andromeda Glitcher!!!!!
he shall thy conquer every civilization in other universes...

Made Absolutely By Theo!(Theo_TheoBenzo)

uses an modified patchma reanimation to work for this script and future scripts!




]]















local ja = "    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd"..tostring(ja))
local Mgui = game:GetService("CoreGui")
if Mgui:FindFirstChild("Patchers") then
    Mgui.Patchers:Destroy()
end
local ScreenGui = Instance.new("ScreenGui",Mgui)
ScreenGui.Name ="Patchers"



--Adjust Here!
local deltaTime=.250 --Default Speed 
local Mode="Neptunian V"
local Mw="Neptunian V"
local Music1="Censored"

local function notif(str,dur)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Service";
    Text = str;})
end

if not isfolder("Music") then 
     makefolder("Music")
end
notif('pls click "click me" first ty!!')
local ui = Instance.new("Frame",ScreenGui)
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Load = Instance.new("TextButton",ui)
local Run1 = Instance.new("TextButton")
local Stop1 = Instance.new("TextButton",ui)
local ced = Instance.new("TextLabel")
local Show =Instance.new("TextButton")
local corner=Instance.new("UICorner",ui)
local corner1=Instance.new("UICorner",Run1)
local Modes=Instance.new("TextButton",ui)
 corner2=Instance.new("UICorner",Stop1)
 corner3=Instance.new("UICorner",Show)
 corner4=Instance.new("UICorner",Load)
 corner5=Instance.new("UICorner",Modes)
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Active = true
ui.BackgroundColor3 = Color3.new(0, 0, 0)
ui.BackgroundTransparency = 0
ui.BorderSizePixel = 3
ui.Position = UDim2.new(.35,0, 1, 0)
ui.Size = UDim2.new(0, 200, 0, 200)

title.Name = "title"
title.Parent = ui
title.BackgroundColor3 = Color3.new(68, 68, 68)
title.BackgroundTransparency = 1
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, 0.0199999996, 0)
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = Enum.Font.Arcade
title.Text = "Made By Theo"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 8
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Load.Name = "F20 FR"
Load.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0, 0, .350, 0)
Load.Size = UDim2.new(0.5, 0, 0, 45)
Load.Font = "Arcade"
Load.Text = "Rigs"
Load.TextColor3 = Color3.new(1,1,1)
Load.TextScaled = true
Load.TextSize = 10
Load.TextWrapped = true

Modes.Name = "F20 FR"
Modes.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Modes.BorderSizePixel = 0
Modes.Position = UDim2.new(0.5, 0, .350, 0)
Modes.Size = UDim2.new(0.5, 0, 0, 45)
Modes.Font = "Arcade"
Modes.Text = "Click Me!"
Modes.TextColor3 = Color3.new(1,1,1)
Modes.TextScaled = false
Modes.TextSize = 15
Modes.TextWrapped = false

Run1.Name = "Stick"
Run1.Parent = ui
Run1.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Run1.BackgroundTransparency = 0
Run1.BorderSizePixel = 0
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
Run1.Size = UDim2.new(0.5, 0, 0, 45)
Run1.Font = "Arcade"
Run1.Text = "Run"
Run1.TextColor3 = Color3.new(1,1,1)
Run1.TextScaled = true
Run1.TextSize = 10
Run1.TextWrapped = true

Stop1.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Stop1.Position=UDim2.new(0.50, 0, 0.629999971, 0)
Stop1.Size = UDim2.new(0.5, 0, 0, 45)
Stop1.TextColor3 = Color3.new(1,1,1)
Stop1.Text ="Stop"
Stop1.TextScaled = true
Stop1.TextSize = 10
Stop1.Font="Arcade"

ui.Draggable = true

ced.Name = "made"
ced.Parent = ui
ced.BackgroundColor3 = Color3.new(1, 1, 1)
ced.BackgroundTransparency = 1
ced.BorderSizePixel = 2
ced.Position = UDim2.new(0, 0, 0.795, 0)
ced.Size = UDim2.new(1, 0, 0, 50)
ced.Font = "Fantasy"
ced.Text = "Andromeda Glitcher"
ced.TextColor3 = Color3.new(1, 1, 1)
ced.TextScaled = true
ced.TextSize = 8
ced.TextWrapped = true
Show.Parent=ScreenGui
Show.Font="Arcade"
Show.Text="Enable"
Show.TextColor3=Color3.new(1,1,1)
Show.TextScaled=true
Show.TextSize=14
Show.Size=UDim2.new(0, 50, 0, 50)
Show.Position=UDim2.new(0, 0, 2, 0)
Show.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
ui.Visible=false 
local isenabled=true
wait(1)
Show.MouseButton1Click:Connect(function()
isenabled=not isenabled
      if isenabled then
local UI = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween300 = game:GetService("TweenService"):Create(ui, UI, {Position = UDim2.new(0, 300, 0, -300)})
tween300:Play()
wait(1.5)
ui.Visible=false
     Show.Text="Enable"
      else
      ui.Visible=true
local UI = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(ui, UI, {Position = UDim2.new(0,300, 0, 100)})
tween:Play()
     Show.Text="Disable"
    end
end)

local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(Show, tweenInfo, {Position = UDim2.new(0, 0, .50, 0)})
tween:Play()
Load.MouseButton1Click:Connect(function()
notif("please wait for the rigs to load")
wait(1)
notif('if the rigs is slow to load and the "-sh shows')
wait(1)
notif('type"-sh"again once the rigs has done loading')
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 131385506535381 85392395166623 129462518582032  138364679836274 12850150835 106249329428811 5316479641 5316539421 5699795428 5268602207 4794315940 4458601937 4315489767 4506945409 112934510372081"..tostring(ja)) 
wait(6.5)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-sh")
end)

Modes.MouseButton1Click:Connect(function()
notif("Check F9 for info")
print("About this script:")
print("Please avoid any some sort of stuff when using this script , kind to the owner, because he is the only developer of this script and the effort of making each animations for every modes...")
print(">--------------[=]---------------<")
print("As always... Love From Theo!")
print(">--------------[=]---------------<")
print("please be kind to the owner of this script, the amount of effort that took into making this is alot, especially every animations thats inside this script ")
print(">--------------[=]---------------<")
print("BEFORE RELOADING THE GUI, PLEASE STOP THE CURRENT RUNNING SCRIPT LIKE THE ANIMATED CHARACTER, ONCE U RELOAD THE UI, U WONT STOP THE LAST SCRIPT, YOU WILL BE STUCK LIKE THAT!!!!")
print(">--------------[=]---------------<")
print("^^^^^^^^^^^^^^^^^^^^^")
print("vvvvvvvvvvvvvvvvvvvvv")
print(">--------------[=]---------------<")
print("Default Mode "..tostring(Mode))
print("1 - Nameless")
print("2 - Abyssal")
print("3 - Swordsman")
print("4 - Fallen")
print("5 - Apex")
print("6 - Dual-Weilder")
print("7 - Arcane")
print("8 - Neptunian V")
print("9 - Crimtane")
print("Q - Dual-Ultima")
print("N - Toggle Music")
print("F - Equip Sword and Unequip Swords on some modes...")
print("T - To Transform into other Modes")
print("Modes that swords can be toggle  to be equipped and unequipped:")
print(">--------------[=]---------------<")
print("Neptunian V \n\t\t -- Dual-Ultima")
print(">--------------[=]---------------<")
print("Modes that can transform by pressing T:")
print("Apex")

end)


local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local min=math.min
local clamp=math.clamp
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack
local next=next
local pcall=pcall
local xpcall=xpcall
local type=type
local typeof=typeof
local game=game
local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local cfl=CFrame.lookAt
local angles=CFrame.Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local sine=osclock()
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_xzL=v3_101*250.1
local v3_net=v3_010*25.01
local function rs(l) 
	l=l or mrandom(8,15) 
	local s="" 
	for i=1,l do 
		if mrandom(1,2)==1 then 
			s=s..schar(mrandom(65,90)) 
		else 
			s=s..schar(mrandom(97,122)) 
		end 
	end 
	return s 
end
local function getMetamethodFromErrorStack(userdata,f,test)
	local ret=nil
	xpcall(f,function()
		ret=debug.info(2,"f")
	end,userdata,nil,0)
	if (type(ret)~="function") or not test(ret) then
		return f
	end
	return ret
end
local insSet=getMetamethodFromErrorStack(game,function(a,b,c) a[b]=c end,function(f) local a=i("Folder") local b=rs() f(a,"Name",b) return a.Name==b end)
local insGet=getMetamethodFromErrorStack(game,function(a,b) return a[b] end,function(f) local a=i("Folder") local b=rs() a.Name=b return f(a,"Name")==b end)
local cfGet=getMetamethodFromErrorStack(cf_0,function(a,b) return a[b] end,function(f) return f(cf(1,2,3),"Position")==v3(1,2,3) end)
local cfMul=getMetamethodFromErrorStack(cf_0,function(a,b) return a*b end,function(f) return angles(1,2,3)*angles(1,2,3)==f(angles(1,2,3),angles(1,2,3)) end)
local cfAdd=getMetamethodFromErrorStack(cf_0,function(a,b) return a+b end,function(f) return cf(1,2,3)+v3(1,2,3)==f(cf(1,2,3),v3(1,2,3)) end)
local v3Get=getMetamethodFromErrorStack(v3_0,function(a,b) return a[b] end,function(f) return v3(1,2,3).Unit==f(v3(1,2,3),"Unit") end)
local Clone=insGet(game,"Clone")
local ClearAllChildren=insGet(game,"ClearAllChildren")
local IsA=insGet(game,"IsA")
local FindFirstChildOfClass=insGet(game,"FindFirstChildOfClass")
local FindFirstChildWhichIsA=insGet(game,"FindFirstChildWhichIsA")
local GetChildren=insGet(game,"GetChildren")
local GetDescendants=insGet(game,"GetDescendants")
local IsDescendantOf=insGet(game,"IsDescendantOf")
local GetPropertyChangedSignal=insGet(game,"GetPropertyChangedSignal")
local plrs=FindFirstChildOfClass(game,"Players")
local rus=FindFirstChildOfClass(game,"RunService")
local ws=FindFirstChildOfClass(game,"Workspace")
local uis=FindFirstChildOfClass(game,"UserInputService")
local gs=FindFirstChildOfClass(game,"GuiService")
local lp=insGet(plrs,"LocalPlayer")
local pg=FindFirstChildOfClass(lp,"PlayerGui")
local mouse=insGet(lp,"GetMouse")(lp)
local stepped=insGet(rus,"Stepped")
local heartbeat=insGet(rus,"Heartbeat")
local renderstepped=insGet(rus,"RenderStepped")
local GetPlayers=insGet(plrs,"GetPlayers")
local Raycast=insGet(ws,"Raycast")
local Connect=heartbeat.Connect
local Disconnect=Connect(GetPropertyChangedSignal(game,"CreatorId"),type).Disconnect
local Wait=heartbeat.Wait
local GetMouseLocation=insGet(uis,"GetMouseLocation")
local GetFocusedTextBox=insGet(uis,"GetFocusedTextBox")
local GetMouseDelta=insGet(uis,"GetMouseDelta")
local IsMouseButtonPressed=insGet(uis,"IsMouseButtonPressed")
local IsKeyDown=insGet(uis,"IsKeyDown")
local Inverse=cfGet(cf_0,"Inverse")
local Lerp=cfGet(cf_0,"Lerp")
local timeposcur = 0
local vol=1
local Players = Game:GetService("Players")
local player = game.Players.LocalPlayer
local Playsound = i("Sound",game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
Playsound.Name = "Danc"
Playsound.Volume = vol
Playsound.Looped = true
Playsound.Parent = game:GetService("RunService")
local exploit = "shitsploit"
        pcall(function()
            exploit = getexecutorname()
        end)
	local customasset = function(id)
        if exploit ~= "CaetSploit" then
        idwithoutthatbit= string.gsub(id,"Music/","")
        if not isfile(id) then 
         writefile(id,game:HttpGet("https://github.com/Solary-3/Scripts/tree/Audios-1"..idwithoutthatbit))
        end
       repeat task.wait() until isfile(id)
    end
        local s = i("Sound")
        s.Parent =game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        s.SoundId = getcustomasset(id)
        task.spawn(function()
            task.wait(1)
            s:Destroy()
        end)
        return s.SoundId
	end
	local function M()
     Running=false
     Playsound:Stop()
--Playsound:Destroy()
    wait(.5)
end

local PatchmaRenimUrl = "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/PatchmaRenim.lua"
local PatchmaSuccess, Patchma = pcall(function()
    return loadstring(game:HttpGet(PatchmaRenimUrl))()
end)

if not PatchmaSuccess then
    Patchma = {
        Reanim = function() 
              return {
                cframes = {},
                joints = {},
                fling = function() end,
                predictionfling = function() end,
                refreshjoints = function() end,
                raycastlegs = function() return 0, 0 end,
                velbycfrvec = function() return 0, 0 end,
                velchgbycfrvec = function() return 0, 0 end,
                velYchg = function() return 0 end,
                addmode = function() end,
                getPart = function() return nil end,
                getPartFromMesh = function() return nil end,
                getAccWeldFromMesh = function() return nil end,
                getJoint = function() return {C0 = CFrame.new(), C1 = CFrame.new()} end,
                getPartJoint = function() return {C0 = CFrame.new()} end,
                rotToMouse = function() end,
                glitchJoint = function() return 0 end,
                setWalkSpeed = function() end,
                setJumpPower = function() end,
                setGravity = function() end,
                setCfr = function() end,
                getVel = function() return Vector3.new() end,
                getCamCF = function() return CFrame.new() end,
                isFirstPerson = function() return false end,
                IsWalking = function() return false end
            }
        end,
        stopreanimate = function() end
    }
end

local reanimate = Patchma.Reanim
local stopreanimate = Patchma.stopreanimate
--Reanimae Essentials

local Destroy=insGet(game,"Destroy")
local Running=false
local CGui = game:GetService("CoreGui")
if CGui:FindFirstChild("Plonkers") then
    CGui.Plonkers:Destroy()
end

--Variables
local kofi=nil
kofi1=nil
kofi2=nil
local WingAnim="Neptunian"
local Clicking=nil

Run1.MouseButton1Click:Connect(function()
if Running then return notif("Script is already running!!!") end 
if ui.Visible then
local UI = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween300 = game:GetService("TweenService"):Create(ui, UI, {Position = UDim2.new(0, 300, 0, -300)})
tween300:Play()
wait(1.5)
ui.Visible=false
Show.Text="Enable"
isenabled=not isenabled
end
     Running=true
     local t=reanimate()
	if type(t)~="table" then  return end
     Mode="Neptunian V"
     local getPart=t.getPart
     local idle=true 
     local velYchg=t.velYchg 
     local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local setWalkSpeed=t.setWalkSpeed
     local walking=false
     local c3rgb=Color3.fromRGB
     local Player=game.Players.LocalPlayer
     local getVel = t.getVel
     local IsWalking=t.IsWalking
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	local getPartFromMesh=t.getPartFromMesh
     local getPartJoint=t.getPartJoint
     local sword0_1 = getPartFromMesh(4315410540, 4506940486)
     local s0_1 = sword0_1 and getPartJoint(sword0_1) or {C0 = cf_0} 
     local sword0_2 = getPartFromMesh(4315410540, 4315250791)
     local s0_2 = sword0_2 and getPartJoint(sword0_2) or {C0 = cf_0}
     local sword0_3 = getPartFromMesh(4315410540, 4458626951)
     local s0_3 = sword0_3 and getPartJoint(sword0_3) or {C0 = cf_0}
     local sword0_4 = getPartFromMesh(4315410540, 4794299274)
     local s0_4 = sword0_4 and getPartJoint(sword0_4) or {C0 = cf_0}
     local Nep=getPartFromMesh(94522224942661,77410806060838)
     local nep=Nep and getPartJoint(Nep) or {C0=cf_0}

     -- Mode 2
     local sword = getPartFromMesh(5254583415, 5268538095)
     local s1_1 = sword and getPartJoint(sword) or {C0 = cf_0}
     local sword2 = getPartFromMesh(5278721954, 5692006383)
     local s1_2 = sword2 and getPartJoint(sword2) or {C0 = cf_0}
     local sword3 = getPartFromMesh(5278721954, 5316510551)
     local s1_3 = sword3 and getPartJoint(sword3) or {C0 = cf_0}
     local sword4 = getPartFromMesh(5278721954, 5278777022)
     local s1_4 = sword4 and getPartJoint(sword4) or {C0 = cf_0}
     

---------------------------
local WingAnims={}
--local Tags="n/a"
local Rq=i("UIGradient")
local Rq1=i("UIGradient")
local G=c3rgb(100, 0, 200)
local A=c3rgb(100,0,150)
local W=c3rgb(100, 0, 150)
local H = cs{
        csk(0, G),
        csk(0.500, A),
        csk(1, W)
    }
local H1 = cs{
    csk(0, G),
    csk(0.500, A),
    csk(1, W)
}
local Text2 =i("UIStroke")
local ScreenGui = Instance.new("ScreenGui", CGui)
ScreenGui.Name ="Plonkers"
local fi = i("Frame",ScreenGui)
local fo=i("Frame",fi)
local Q=i("TextLabel")
local E=i("TextLabel",fi)
local stroke=i("UIStroke",E)
local R=i("TextLabel",fi)
local j1=i("UIStroke",R)
local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(fi, tweenInfo, {Position = UDim2.new(0, 0, 0.85, 0)})
tween:Play()
local tweenInfo1 = TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween1 = game:GetService("TweenService"):Create(fo, tweenInfo1, {Position = UDim2.new(0, 350, -.15, 0)})
tween1:Play()
local tweenInfo2 = TweenInfo.new(2.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween2 = game:GetService("TweenService"):Create(Q, tweenInfo2, {Position = UDim2.new(0, 335, -.15, 0)})
tween2:Play()
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
fi.Name = "hi"
fi.Active = true
fi.BackgroundColor3 = A
fi.BackgroundTransparency = .75
fi.BorderSizePixel = 5.5
fi.Position = UDim2.new(0, 0, 1, 0)
fi.Size = UDim2.new(0, 1000, 0, 200)
fo.BackgroundColor3=A
fo.BackgroundTransparency=.55
fo.BorderSizePixel=5
fo.Position=u2(0,350,0,1)
fo.Size=u2(0,60,0,60)
Q.Text = "Please Wait!"
Q.Font = "Fantasy"
Q.TextColor3 = c3rgb(255, 255, 255)
Q.BackgroundTransparency = 1
Q.Parent = fi
Q.TextSize=55
Q.Position = u2(0, 325, 0, 1) 
Q.Size = u2(0, 100, 0, 100)
Q.Rotation = 0
Q.TextScaled=false
Text2.Thickness = 1
Text2.Color = c3rgb(255,255,255)
Text2.Parent = Q
Text2.LineJoinMode = "Miter"
Rq.Parent = Text2
Rq.Color = H
Rq.Name = "Test3"
Rq.Enabled = true 
Rq.Rotation = 85
Rq1.Parent = Q
Rq1.Color = H
Rq1.Name = "Test3"
Rq1.Enabled = true 
Rq1.Rotation = 50
E.TextColor3=c3rgb(255,255,255)
E.Text="Now Playing:"
E.Font="Sarpanch"
E.BackgroundTransparency=1
E.TextSize=30
E.Size=u2(0,100,0,100)
E.Position=u2(0,30,0,-35)
stroke.Thickness=1.5
stroke.Color=c3rgb(0,0,0)
stroke.LineJoinMode="Miter"
R.Text= Music1
R.TextColor3=c3rgb(255,255,255)
R.Font="Sarpanch"
R.BackgroundTransparency=1
R.TextSize=30
R.Size=u2(0,100,0,100)
R.Position=u2(0,85,0,-15)
j1.Thickness=1.5
j1.Color=c3rgb(0,0,0)
j1.LineJoinMode="Miter"



local function getMusicAsset(file)
    if isfile("Music/"..file) then
        return getcustomasset("Music/"..file)  
    else
writefile("Music/"..file, game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/"..file.."?raw=true"))
notif("Downloading Audio")
        return ""
    end
end


	
local Info={
     {Name="Nameless",WalkSpeed=16,Font="Antique",WingAnim="Nameless1",Music="Shiawase",Tag="None"},
     {Name="Swordsman",WalkSpeed=10,Font="SciFi",WingAnim="Swords",Music="Terabyte",Tag="None"}, 
     {Name="Dual-Wielder",WalkSpeed=16,Font="PermanentMarker",WingAnim="Dual",Music="Malevolence",Tag="None"},
     {Name="Apex",WalkSpeed=5,Font="SourceSansItalic",WingAnim="Clock",Music="Cleartext",Tag="None"},
     {Name="Abyssal",WalkSpeed=10,Font="GrenzeGotisch",WingAnim="Hunter",Music="Clima",Tag="None"},
     {Name="Fallen",WalkSpeed=8.5,Font="Gotham",WingAnim="Memory",Music="Permafrost",Tag="None"},
     {Name="Arcane",Walkspeed=9,Font="Arcade",WingAnim="Arc",Music="Zero Grav"},
     {Name="Neptunian V",Walkspeed=9,Font="Fantasy",WingAnim="Neptunian",Music="Censored",Tag="Neptune"},
     {Name="NV -Unequipped-",Walkspeed=9,Font="Fantasy",WingAnim="NepIdle",Music="Censored",Tag="Neptune"},
     {Name="Crimtane",Walkspeed=9,Font="Bodoni",WingAnim="Crim",Music="Speed Of Light",Tag="None"},
    {Name="Dual-Ultima",Walkspeed=9,Font="Fondamento",WingAnim="DualEquip",Music="Glock",Tag="Dual"},
     {Name="Dual -Unequipped-",Walkspeed=9,Font="Fondamento",WingAnim="DualUn",Music="Glock",Tag="Dual"},
     {Name="Andromeda",Walkspeed=9,Font="Fondamento",WingAnim="Andro",Music="Panorama",Tag="Andro"},
     {Name="Transforming",Walkspeed=9,Font="Fondamento",WingAnim="Trans",Music="Speed Of Light",Tag="None"}
}


local ModeColors = {
    Nameless = {G = Color3.fromRGB(10, 10, 10), A = Color3.fromRGB(150, 150, 150), W = Color3.fromRGB(255, 255, 255)},
    Swordsman = {G = Color3.fromRGB(20, 20, 100), A = Color3.fromRGB(100, 100, 200), W = Color3.fromRGB(200, 200, 255)},
    ["Dual-Wielder"] = {G = Color3.fromRGB(100, 200, 100), A = Color3.fromRGB(200, 100, 100), W = Color3.fromRGB(255, 200, 200)},
    Apex = {G = Color3.fromRGB(100, 100, 150), A = Color3.fromRGB(200, 200, 175), W = Color3.fromRGB(255, 255, 200)},
    Abyssal = {G = Color3.fromRGB(0, 0, 50), A = Color3.fromRGB(0, 0, 150), W = Color3.fromRGB(0, 0, 200)},
    Fallen = {G = Color3.fromRGB(0, 100, 100), A = Color3.fromRGB(0, 100, 200), W = Color3.fromRGB(0, 200, 255)},
    Arcane = {G = Color3.fromRGB(50, 10, 100), A = Color3.fromRGB(150, 100, 200), W = Color3.fromRGB(250, 200, 255)},
    Neptunian = {G = Color3.fromRGB(100, 0, 200), A = Color3.fromRGB(100, 0, 150), W = Color3.fromRGB(100, 0, 150)},
    NepIdle = {G = Color3.fromRGB(100, 0, 200), A = Color3.fromRGB(100, 0, 150), W = Color3.fromRGB(100, 0, 150)},
    Crimtane = {G = Color3.fromRGB(50, 0, 0), A = Color3.fromRGB(100, 0, 0), W =Color3.fromRGB(200, 0, 0)},
    ["Dual-Ultima"] = {G = Color3.fromRGB(0,105,107), A = Color3.fromRGB(0,150,147), W =Color3.fromRGB(0,225,223)},
   ["Dual -Unequipped-"] = {G = Color3.fromRGB(0,105,107), A = Color3.fromRGB(0,150,147), W =Color3.fromRGB(0,225,223)},
    Andromeda = {G = Color3.fromRGB(166,68,0), A = Color3.fromRGB(166,68,0), W =Color3.fromRGB(255,117,20)},
   Transforming = {G = Color3.fromRGB(100,100,100), A = Color3.fromRGB(150,150,150), W =Color3.fromRGB(255,225,225)}
}
function getMode(modeName)
	for i,v in next, Info do
		if(v.Name==modeName)then
			return v
		end
	end
	return Info[1]
end 



Q.Text="Please Wait!"
R.Text="Preparing Script!"
E.Text="Preparing!!!"

wait(1.25)

E.Text="Now Playing:"
R.Text=Music1
Playsound.SoundId = getMusicAsset(Music1..".mp3")
timeposcur=Playsound.TimePosition
Playsound.Volume=1
Playsound:Play()

function changeMode(modeName)
	local info = getMode(modeName)
	Mode=info.Name;
	Q.Text = info.Name;
	Q.Font=info.Font;
	WingAnim=info.WingAnim or "Nameless1";
	--setWalkSpeed(info.WalkSpeed);
	R.Text=info.Music
     local colors = ModeColors[modeName] or ModeColors.Neptunian
     G = colors.G
     A = colors.A
     W = colors.W
     fo.BackgroundColor3=colors.A
     fi.BackgroundColor3=colors.A
     E.TextColor3=colors.G
     R.TextColor3=colors.G
     j1.Color=colors.A
     stroke.Color=colors.A
     H = cs{
        csk(0, G),
        csk(0.500, A),
        csk(1, W)
     }
     H1 = cs{
        csk(0, G),
        csk(0.500, A),
        csk(1, W)
     }
     if Rq then
        Rq.Color = H
     end
     if Rq1 then
        Rq1.Color = H
     end
    Playsound.SoundId=getMusicAsset(info.Music..".mp3");
	timeposcur=Playsound.TimePosition;
end
changeMode(Mode)
local MusicVol=true
Clicking=uis.InputBegan:Connect(function(io,gpe)
      if gpe then return end
      if (io.KeyCode==Enum.KeyCode.One and Mode~="Nameless")then
            changeMode("Nameless")
          
      elseif (io.KeyCode==Enum.KeyCode.Two and Mode~="Abyssal" )then
           changeMode("Abyssal")
           
      elseif (io.KeyCode==Enum.KeyCode.Three and Mode~="Swordsman") then
           changeMode("Swordsman")
            
      elseif (io.KeyCode==Enum.KeyCode.Four and Mode~="Fallen") then 
           changeMode("Fallen")
           
      elseif (io.KeyCode==Enum.KeyCode.Five and Mode~="Apex") then
           changeMode("Apex")
            
      elseif (io.KeyCode==Enum.KeyCode.T and Mode=="Apex") then
           changeMode("Transforming")
           wait(4)
           changeMode("Andromeda")
      elseif (io.KeyCode==Enum.KeyCode.Six and Mode~="Dual-Wielder") then 
           changeMode("Dual-Wielder")
           
      elseif (io.KeyCode==Enum.KeyCode.Seven and Mode ~="Arcane") then 
           changeMode("Arcane")
           
      elseif (io.KeyCode==Enum.KeyCode.Eight and Mode ~="Neptunian V") then 
           changeMode("Neptunian V")        

      elseif (io.KeyCode==Enum.KeyCode.F and Mode =="Neptunian V") then 
           changeMode("NV -Unequipped-")

      elseif (io.KeyCode==Enum.KeyCode.F and Mode  =="NV -Unequipped-") then 
           changeMode("Neptunian V") 

      elseif (io.KeyCode==Enum.KeyCode.Nine and Mode ~="Crimtane") then 
           changeMode("Crimtane") 
      
      elseif (io.KeyCode==Enum.KeyCode.Q and Mode ~="Dual-Ultima") then 
           changeMode("Dual-Ultima") 
           
      elseif (io.KeyCode==Enum.KeyCode.F and Mode =="Dual-Ultima") then 
           changeMode("Dual -Unequipped-")  
           
      elseif (io.KeyCode==Enum.KeyCode.F and Mode =="Dual -Unequipped-") then 
           changeMode("Dual-Ultima") 
           end

      if io.KeyCode==Enum.KeyCode.N then 
           MusicVol=not MusicVol
           if MusicVol then
           Playsound.Volume=1
           else
           Playsound.Volume=0
           end
       end
end)

WingAnims.Nameless1=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_3 then
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(2,2.1,-3-0.55*sin(sine*2)),angles(1.5707963267948966,17.453292519943297*sin(sine*0.15),0)),deltaTime) 
end
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2,1.9,-3-0.55*sin(sine*2)),angles(1.5707963267948966,3.141592653589793+17.453292519943297*sin(sine*0.15),0)),deltaTime) 
end
if s0_2 then
 s0_2.C0=Lerp(s0_2.C0,cfMul(cf(2,2,-0.95),angles(0,0,4.363323129985824+0.8726646259971648*sin(sine*2))),deltaTime) 
end
if s0_4 then
 s0_4.C0=Lerp(s0_4.C0,cfMul(cf(2,2,-0.95),angles(0,0,-0.8726646259971648*sin(sine*2))),deltaTime)
 end
end


WingAnims.Swords=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then 
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1.85+0.1*sin(sine*1.15),4-0.15*sin(sine*1.15),-0.65-0.1*sin(sine*1.15)),angles(0,0,1.5707963267948966)),deltaTime) 
end 
if s0_2 then 
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(0.45,2.75+0.2*sin(sine*1.155),-1.55),angles(1.5707963267948966,-1.5707963267948966,1.5707963267948966)),deltaTime) 
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2.35,2.55-0.15*sin(sine*1.15),-1.55),angles(0,0,1.5707963267948966+3.141592653589793*sin(sine*1))),deltaTime) 
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(2.35,2.55-0.15*sin(sine*1.15),-1.55),angles(0,0,4.71238898038469+3.141592653589793*sin(sine*1))),deltaTime)
end 
end


WingAnims.Dual=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then 
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1.34,4.25,-0.6+0.15*sin(sine*1.15)),angles(1.6580627893946132,-2.443460952792061,0.4363323129985824)),deltaTime)
end 
if s0_2 then 
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(2.35,2.35-0.15*sin(sine*1.25),-1.1),angles(0,0,3.9269908169872414+0.7853981633974483*sin(sine*1))),deltaTime)
end 
if s0_3 then 
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2.35,2.35-0.15*sin(sine*1.15),-1.1),angles(0,0,0.8726646259971648-0.7853981633974483*sin(sine*1))),deltaTime) 
end 
if s0_4 then 
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(2.55,-0.15,-1+0.15*sin(sine*1.15)),angles(1.6580627893946132,0.6457718232379019,0.4363323129985824)),deltaTime)
end 
end


WingAnims.Hunter=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then 
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,17.453292519943297*sin(sine*0.15))),deltaTime)
end 
if s0_2 then 
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,1.5707963267948966+17.453292519943297*sin(sine*0.15))),deltaTime) 
end 
if s0_3 then
 s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,3.141592653589793+17.453292519943297*sin(sine*0.15))),deltaTime)
end 
if s0_4 then 
 s0_4.C0=Lerp(s0_4.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,4.71238898038469+17.453292519943297*sin(sine*0.15))),deltaTime) 
end 
end


WingAnims.Clock=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(2.35,2.35,-1),angles(0,0,2.356194490192345+17.453292519943297*sin(sine*0.25))),deltaTime)
end 
if s0_2 then 
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(2.75+0.25*sin(sine*1.15),2.35+0.15*sin(sine*1.25),-2.35),angles(1.5707963267948966,-0.08726646259971647+0.08726646259971647*sin(sine*1.25),-1.5707963267948966)),deltaTime)  
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2.35,2.35,-1),angles(0,0,3.9269908169872414-0.7853981633974483*sin(sine*1.15))),deltaTime) 
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(2.35,2.35,-1),angles(0,0,0.7853981633974483+0.7853981633974483*sin(sine*1.15))),deltaTime)
end 
end


WingAnims.Memory=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1.75-0.15*sin(sine*1.15),3-0.15*sin(sine*1.15),1.55),angles(-1.6580627893946132,0.6283185307179586,1.5707963267948966)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,1.3089969389957472-17.453292519943297*sin(sine*0.25))),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,3.4033920413889427-17.453292519943297*sin(sine*0.25))),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,5.497787143782138-17.453292519943297*sin(sine*0.25))),deltaTime)
end
end


WingAnims.Arc=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(0,2.35,-2-1*sin(sine*1)),angles(0,-0.3490658503988659,5.497787143782138-17.453292519943297*sin(sine*0.25))),deltaTime) 
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(0,2.35,-2-1*sin(sine*1)),angles(0,-0.3490658503988659,2.356194490192345+17.453292519943297*sin(sine*0.25))),deltaTime) 
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1.1,1.25+0.1*sin(sine*1.25),-0.25),angles(0,0,3.141592653589793)),deltaTime) 
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(3,0.55+0.1*sin(sine*1.15),-1),angles(0,1.5707963267948966,2.356194490192345)),deltaTime) 
end
end

WingAnims.Neptunian=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(4,-0.75,-0.95-0.15*sin((sine+0.75)*3)),angles(2.443460952792061,-0.8726646259971648,3.6651914291880923)),deltaTime) 
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
end

WingAnims.NepIdle=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1.55+0.1*sin((sine+0.65)*1),-0.1 * sin((sine+0.65)*1),0),angles(0,0,0.8726646259971648)),deltaTime) 
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
end

WingAnims.Crim=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,3.4033920413889427-17.453292519943297*sin(sine*0.55))),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,1.3089969389957472-17.453292519943297*sin(sine*0.55))),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,5.497787143782138-17.453292519943297*sin(sine*0.55))),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(0,0,-1-0.1*sin((sine+0.65)*4)),angles(-1.5707963267948966,-1.0297442586766545,0.17453292519943295+0.08726646259971647*sin((sine+0.65)*1))),deltaTime)
end
end

WingAnims.DualUn=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(-0.2021636962890625-0.1*sin((sine+0.65)*1),-0.12768173217773438,-0.2653465270996094),angles(0,0,-1.5707963267948966)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cf(-0.2021636962890625,-0.12768173217773438-0.1*sin((sine+0.65)*1),-0.2653465270996094),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
end

WingAnims.DualEquip=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(0.5,2-0.1*sin((sine+0.65)*1),1.25),angles(0,-0.5235987755982988,3.141592653589793)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(4-0.1*sin((sine+0.65)*1),-0.1 * sin((sine+0.65)*1),0.55),angles(-0.2617993877991494,0.3490658503988659,2.356194490192345)),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
end

WingAnims.Trans=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)    
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime) 
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
end

WingAnims.Andro=function()
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s1_1 then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,5,-3.1),angles(4.537856055185257,1.5707963267948966+0.17453292519943295*sin(sine*1),0)),deltaTime)
end 
if s1_2 then
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(1,2,-6),angles(0.6981317007977318,-1.5707963267948966+0.17453292519943295*sin(sine*1),0)),deltaTime)
end 
if s1_3 then 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,2.35,-5),angles(0,1.5707963267948966-0.17453292519943295*sin(sine*1),0)),deltaTime)
end 
if s1_4 then
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,2,-6),angles(0,1.5707963267948966-0.17453292519943295*sin(sine*1),0.6981317007977318)),deltaTime)
end 
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end
end










local function animate()
    if not Running then return end
    local deltaTime=deltaTime
    sine=osclock()
    walking = IsWalking()
    idle = not walking
    local vel = getVel()
    local ray,ray2=raycastlegs()
    local velYchgVal=velYchg()
    local velXZ=velbycfrvec(v3_xz)
    local velXZ2=velbycfrvec(v3_xzL)
    local velNet=velbycfrvec(v3_net)
    
    if walking then
if Mode == "Neptunian V" then
if nep then 
setWalkSpeed(16)
nep.C0=Lerp(nep.C0,cfMul(cf(5,-0.25+0.1*sin((sine+0.75)*15),0.25),angles(-0.5235987755982988,-3.0543261909900767,0.5235987755982988)),deltaTime)
end
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.065*sin(sine*15),0),angles(-1.4835298641951802,0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,-0.25-0.15*sin((sine+0.65)*15),0.15),angles(-0.8726646259971648,0.3490658503988659,0.5235987755982988)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.95-0.45*sin((sine+0.1)*10),-0.065+0.65*sin(sine*10)),angles(0,1.5707963267948966,-0.17453292519943295-0.6108652381980153*sin((sine+0.65)*10))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.95+0.45*sin((sine+0.1)*10),-0.065-0.65*sin(sine*10)),angles(0,-1.5707963267948966,-0.17453292519943295-0.6108652381980153*sin((sine+0.65)*10))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,1.25-0.15*sin((sine+0.65)*15),-0.5),angles(1.9198621771937625,-0.3490658503988659,0)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.1 * sin(sine*15),0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime)


elseif Mode == "NV -Unequipped-" then
if nep then nep.C0=Lerp(nep.C0,cfMul(cf(1.55+0.1*sin((sine+0.65)*1),-0.1 * sin((sine+0.65)*1),0),angles(0,0,0.8726646259971648)),deltaTime) 
end
setWalkSpeed(12.5)
LeftShoulder.C0 = Lerp(LeftShoulder.C0, cfMul(cf(-1, 0.5 + 0.2 * sin((sine + 1) * 8), 0.25 * sin(sine * 8)), angles(-1.5707963267948966 * sin(sine * 8), -1.5707963267948966, 0)), deltaTime)Neck.C0 = Lerp(Neck.C0, cfMul(cf(0, 1 + 0.05 * sin((sine + 1) * 15), 0), angles(-1.4835298641951802, 0, 3.141592653589793)), deltaTime)RightShoulder.C0 = Lerp(RightShoulder.C0, cfMul(cf(1, 0.5 + 0.2 * sin((sine - 1) * 8), -0.25 * sin(sine * 8)), angles(1.5707963267948966 * sin(sine * 8), 1.5707963267948966, 0)), deltaTime)LeftHip.C0 = Lerp(LeftHip.C0, cfMul(cf(-1, -0.95 + 0.35 * sin((sine + 1) * 8), -0.1 - 0.25 * sin(sine * 8)), angles(-0.17453292519943295, -1.5707963267948966, -0.17453292519943295 - 0.8726646259971648 * sin(sine * 8))), deltaTime)RightHip.C0 = Lerp(RightHip.C0, cfMul(cf(1, -0.95 - 0.35 * sin((sine + 1) * 8), -0.1 + 0.25 * sin(sine * 8)), angles(0, 1.5707963267948966, -0.8726646259971648 * sin(sine * 8))), deltaTime)RootJoint.C0 = Lerp(RootJoint.C0, cfMul(cf(0, 0.1 * sin(sine * 15), 0), angles(-1.7453292519943295, 0, 3.141592653589793)), deltaTime)


elseif Mode == "Dual -Unequipped-" then
setWalkSpeed(12.5)
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.015*sin((sine+0.65)*15),0),angles(-1.3089969389957472,0,3.141592653589793)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.035 * sin(sine*15),0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,-0.25-0.055*sin((sine+0.65)*12.5),0),angles(-1.0471975511965976,0.3490658503988659,0.5235987755982988)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-0.75,-0.1 * sin((sine+0.65)*1),-1.25),angles(0,-0.17453292519943295,1.7453292519943295)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.15,0.5+0.055*sin((sine+0.65)*12.5),-0.5),angles(1.0471975511965976,-0.3490658503988659,-0.5235987755982988)),deltaTime)  LeftHip.C0 = Lerp(LeftHip.C0, cfMul(cf(-1, -0.95 + 0.35 * sin((sine + 1) * 8), -0.1 - 0.25 * sin(sine * 8)), angles(-0.17453292519943295, -1.5707963267948966, -0.17453292519943295 - 0.8726646259971648 * sin(sine * 8))), deltaTime)RightHip.C0 = Lerp(RightHip.C0, cfMul(cf(1, -0.95 - 0.35 * sin((sine + 1) * 8), -0.1 + 0.25 * sin(sine * 8)), angles(0, 1.5707963267948966, -0.8726646259971648 * sin(sine * 8))), deltaTime)
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(-0.2021636962890625-0.1*sin((sine+0.65)*12.5),-0.12768173217773438,-0.2653465270996094),angles(0,0,-1.5707963267948966)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cf(-0.2021636962890625,-0.12768173217773438-0.1*sin((sine+0.65)*12.5),-0.2653465270996094),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end


elseif Mode == "Dual-Ultima" then
setWalkSpeed(16)
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.015*sin((sine+0.65)*15),0),angles(-1.3089969389957472,0,3.141592653589793)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.035 * sin(sine*15),0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,-0.25-0.055*sin((sine+0.65)*12.5),0),angles(-1.0471975511965976,0.3490658503988659,0.5235987755982988)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.15,0.5+0.055*sin((sine+0.65)*12.5),-0.5),angles(1.0471975511965976,-0.3490658503988659,-0.5235987755982988)),deltaTime)  LeftHip.C0 = Lerp(LeftHip.C0, cfMul(cf(-1, -0.95 + 0.35 * sin((sine + 1) * 8), -0.1 - 0.25 * sin(sine * 8)), angles(-0.17453292519943295, -1.5707963267948966, -0.17453292519943295 - 0.8726646259971648 * sin(sine * 8))), deltaTime)RightHip.C0 = Lerp(RightHip.C0, cfMul(cf(1, -0.95 - 0.35 * sin((sine + 1) * 8), -0.1 + 0.25 * sin(sine * 8)), angles(0, 1.5707963267948966, -0.8726646259971648 * sin(sine * 8))), deltaTime)
if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s0_1 then
s0_1.C0=Lerp(s0_1.C0,cfMul(cf(2.55-0.025*sin((sine+0.65)*12.5),0,-1.55),angles(0,2.6179938779914944,-1.5707963267948966)),deltaTime)
end 
if s0_2 then
s0_2.C0=Lerp(s0_2.C0,cfMul(cf(4,2,0.55-0.025*sin((sine+0.6)*1)),angles(1.5707963267948966,-3.141592653589793,0)),deltaTime)
end 
if s0_3 then
s0_3.C0=Lerp(s0_3.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)
end 
if s0_4 then
s0_4.C0=Lerp(s0_4.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)


elseif Mode == "Andromeda" then
setWalkSpeed(16)
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.075+0.075*sin(sine*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-1-0.025*sin((sine+0.65)*1),-0.5),angles(0,3.141592653589793,-0.017453292519943295+0.05235987755982989*sin(sine*1))),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1-0.015*sin((sine+0.65)*1),-0.5),angles(0,-3.141592653589793,0.05235987755982989-0.05235987755982989*sin(sine*1))),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.025*sin((sine+0.55)*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.35,0.5-0.055*sin((sine+0.65)*1),0.55),angles(-0.3490658503988659,-3.141592653589793,-0.6981317007977318)),deltaTime) RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.35,0.5-0.055*sin((sine+0.65)*1),0.55),angles(-0.3490658503988659,3.141592653589793,0.6981317007977318)),deltaTime)
if s1_1 then
s1_1.C0 = Lerp(s1_1.C0,cfMul(cf(2.75, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 0.17453292519943295 - 17.453292519943297 * sin(sine * 0.5))), deltaTime)
            end
if s1_2 then
s1_2.C0 = Lerp(s1_2.C0,cfMul(cf(2.75, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 2.6179938779914944 + 17.453292519943297 * sin(sine * 0.5))), deltaTime)
end
if s1_3 then
s1_3.C0 = Lerp(s1_3.C0,cfMul(cf(2.65, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 4.799655442984406 + 17.453292519943297 * sin(sine * 0.5))), deltaTime)
end
if s1_4 then
s1_4.C0 = Lerp(s1_4.C0,cfMul(cf(2.75, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 2.6179938779914944 - 17.453292519943297 * sin(sine * 0.5))), deltaTime)
end
end


--Default Anims
else


setWalkSpeed(12.5)
LeftShoulder.C0 = Lerp(LeftShoulder.C0, cfMul(cf(-1, 0.5 + 0.2 * sin((sine + 1) * 8), 0.25 * sin(sine * 8)), angles(-1.5707963267948966 * sin(sine * 8), -1.5707963267948966, 0)), deltaTime)Neck.C0 = Lerp(Neck.C0, cfMul(cf(0, 1 + 0.05 * sin((sine + 1) * 15), 0), angles(-1.4835298641951802, 0, 3.141592653589793)), deltaTime)RightShoulder.C0 = Lerp(RightShoulder.C0, cfMul(cf(1, 0.5 + 0.2 * sin((sine - 1) * 8), -0.25 * sin(sine * 8)), angles(1.5707963267948966 * sin(sine * 8), 1.5707963267948966, 0)), deltaTime)LeftHip.C0 = Lerp(LeftHip.C0, cfMul(cf(-1, -0.95 + 0.35 * sin((sine + 1) * 8), -0.1 - 0.25 * sin(sine * 8)), angles(-0.17453292519943295, -1.5707963267948966, -0.17453292519943295 - 0.8726646259971648 * sin(sine * 8))), deltaTime)RightHip.C0 = Lerp(RightHip.C0, cfMul(cf(1, -0.95 - 0.35 * sin((sine + 1) * 8), -0.1 + 0.25 * sin(sine * 8)), angles(0, 1.5707963267948966, -0.8726646259971648 * sin(sine * 8))), deltaTime)RootJoint.C0 = Lerp(RootJoint.C0, cfMul(cf(0, 0.1 * sin(sine * 15), 0), angles(-1.7453292519943295, 0, 3.141592653589793)), deltaTime)

if nep then
nep.C0=Lerp(nep.C0,cfMul(cf(1000,1000,1000),angles(0,1.5707963267948966,0)),deltaTime)  
end
if s0_1 then
s0_1.C0 = Lerp(s0_1.C0,cfMul(cf(2.75, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 0.17453292519943295 - 17.453292519943297 * sin(sine * 0.5))), deltaTime)
            end
if s0_2 then
s0_2.C0 = Lerp(s0_2.C0,cfMul(cf(2.75, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 2.6179938779914944 + 17.453292519943297 * sin(sine * 0.5))), deltaTime)
end
if s0_3 then
s0_3.C0 = Lerp(s0_3.C0,cfMul(cf(2.65, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 4.799655442984406 + 17.453292519943297 * sin(sine * 0.5))), deltaTime)
end
if s0_4 then
s0_4.C0 = Lerp(s0_4.C0,cfMul(cf(2.75, 3, -0.5), angles(0.8726646259971648, -0.4363323129985824, 2.6179938779914944 - 17.453292519943297 * sin(sine * 0.5))), deltaTime)
            end
        end
    else
        -- Idle animations (unchanged)
        if WingAnims[WingAnim] then
            WingAnims[WingAnim]()
          end
if Mode=="Nameless"  then Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(- .9198621771937625,0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.75,0.65+0.25*sin(sine*2),-0.55),angles(-0.08726646259971647+0.17453292519943295*sin(sine*2),-0.3490658503988659,0.3490658503988659+0.08726646259971647*sin(sine*2))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.25,-0.95+0.15*sin(sine*2),0.15),angles(-0.3490658503988659,0.3490658503988659,-0.17453292519943295+0.08726646259971647*sin(sine*2))),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.25,-1,0.25),angles(0.17453292519943295*sin(sine*2),-0.3490658503988659,0)),deltaTime)   LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.75+0.25*sin(sine*2),0.55),angles(3.141592653589793,-0.3490658503988659,-0.6981317007977318)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,7.5+0.95*sin(sine*2),0),angles(-1.5707963267948966,0.17453292519943295,3.141592653589793)),deltaTime) 


elseif Mode=="Abyssal"  then RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25 * sin(sine*1.15),0),angles(-0.6108652381980153,0,3.141592653589793)),deltaTime)    LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-.75,-.95,-.025),angles(-0.7853981633974483-0.17453292519943295*sin(sine*1.15),-155707963267948966,0)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.85,1.16,-0.45+0.1*sin(sine*1.15)),angles(1.5707963267948966,0.3490658503988659,-0.2617993877991494)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0,-0.25+0.15*sin(sine*1.15)),angles(-1.0471975511965976-0.17453292519943295*sin(sine*1.16),0.3490658503988659,0.17453292519943295)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0.05 * sin(sine*1.15)),angles(-2.007128639793479,0,3.141592653589793)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(-1.3089969389957472-0.17453292519943295*sin(sine*1.15),1.5707963267948966,0)),deltaTime)
 
 
elseif Mode=="Swordsman"  then Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.9198621771937625+0.08726646259971647*sin(sine*1.15),0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.45,-0.15-0.15*sin(sine*1),0),angles(-0.7853981633974483,0.3490658503988659,-0.6108652381980153+0.17453292519943295*sin(sine*1.15))),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1-0.25*sin(sine*1.25),0),angles(-1.3962634015954636-0.08726646259971647*sin(sine*1.15),0,3.141592653589793)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.95,-0.55,-0.55),angles(-0.3490658503988659+0.17453292519943295*sin(sine*1.15),-1.5707963267948966,0)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.75,-0.75,0.35),angles(-0.8726646259971648-0.17453292519943295*sin(sine*1.15),0.4363323129985824,0)),deltaTime)   RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.35-0.15*sin(sine*1.15),-0.25),angles(1.5707963267948966-0.04363323129985824*sin(sine*1.15),0.3490658503988659,0.17453292519943295)),deltaTime) 
 

elseif Mode=="Fallen"  then
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.25-0.15*sin(sine*1.15),0),angles(0.17453292519943295,0.3490658503988659,0.5235987755982988)),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.035*sin(sine*1.15),0),angles(-2.007128639793479-0.11344640137963143*sin(sine*1.15),0,3.141592653589793)),deltaTime) LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5+0.15*sin(sine*1.1),-1),angles(1.5707963267948966,0,1.4835298641951802)),deltaTime) RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1.25-0.15*sin(sine*1.15),0),angles(-1.3089969389957472,0,3.141592653589793)),deltaTime) RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1-0.15*sin(sine*1.15),0),angles(-0.9599310885968813+0.17453292519943295*sin(sine*1),1.5707963267948966,0)),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.45-0.15*sin(sine*1.15),-0.85),angles(0.08726646259971647-0.08726646259971647*sin(sine*1.15),-1.5707963267948966,0)),deltaTime) 
 

elseif Mode=="Apex"  then Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.05*sin(sine*1.15),0),angles(-2.181661564992912,0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.55,0,0),angles(-0.17453292519943295+0.3490658503988659*sin(sine*1.15),0.3490658503988659,-0.7853981633974483)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.75-0.25*sin(sine*1.15),-0.55),angles(-0.5235987755982988+0.08726646259971647*sin(sine*1.25),1.5707963267948966,0)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(0.55,-0.15 * sin(sine*1.15),-0.75),angles(1.9198621771937625,2.356194490192345,0.9599310885968813)),deltaTime) RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25 * sin(sine*1.15),0),angles(-1.9198621771937625-0.17453292519943295*sin(sine*1.15),0,3.141592653589793)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75-0.25*sin(sine*1.15),0),angles(-0.3490658503988659-0.08726646259971647*sin(sine*1.15),-1.5707963267948966,0)),deltaTime)  
 

elseif Mode=="Dual-Wielder"  then  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1.25-0.35*sin(sine*1.25),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1.1-0.05*sin(sine*1.15),0),angles(-1.7453292519943295,0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.55,0.75-0.15*sin(sine*1.15),-0.35),angles(1.9198621771937625,0.3490658503988659,0)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.55,0.75-0.15*sin(sine*1.15),-0.5),angles(1.5707963267948966,-0.3490658503988659,-0.2617993877991494)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.55-0.25*sin(sine*1.15),-0.55),angles(-0.2617993877991494+0.17453292519943295*sin(sine*1.15),1.5707963267948966,0)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1-0.25*sin(sine*1.15),0),angles(-0.6108652381980153-0.17453292519943295*sin(sine*1.15),-1.5707963267948966,0)),deltaTime)


elseif Mode=="Arcane"  then
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.25+0.1*sin(sine*1.25),-0.25),angles(-0.3490658503988659,-0.3490658503988659,0.3490658503988659)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.55,-0.75+0.15*sin((sine+0.15)*1.25),0),angles(-0.3490658503988659,-0.3490658503988659,-0.2617993877991494+0.08726646259971647*sin(sine*1.25))),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1+0.25*sin(sine*1.25),0),angles(-1.2217304763960306,0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.55+0.1*sin(sine*1.25),-0.55),angles(0,0.3490658503988659,0.4363323129985824)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1.15+0.05*sin(sine*1.25),-0.15),angles(-2.0943951023931953-0.002617993877991494*sin(sine*1.25),0,3.141592653589793)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.55,-0.65+0.15*sin(sine*1.25),0.36),angles(-0.5235987755982988,0.3490658503988659,0.2617993877991494-0.08726646259971647*sin(sine*1.25))),deltaTime) 


elseif Mode=="Neptunian V"  then LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.25,0.45-0.1*sin((sine+0.75)*3),-0.5),angles(0,-0.3490658503988659,-1.3962634015954636-0.08726646259971647*sin((sine+0.75)*3))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,-0.15-0.1*sin((sine+0.75)*3),-0.25),angles(-0.9599310885968813,0.3490658503988659,0.7853981633974483)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,2-0.25*sin(sine*3.5),0),angles(-1.75,-0.095-0.09599310885968812*sin((sine+0.65)*3.5),190.250)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.1*sin((sine+0.55)*3),0),angles(-2.007128639793479,0,3.9269908169872414)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.65,-0.45,0.05),angles(-0.17453292519943295-0.3490658503988659*sin((sine+1)*3),-0.3490658503988659,0)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.55,-0.85,0.25),angles(-0.2617993877991494-0.6108652381980153*sin((sine+0.45)*3),0.3490658503988659,0)),deltaTime)  


elseif Mode=="NV -Unequipped-"  then RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-1+0.075*sin(sine*1),-0.5),angles(0,3.141592653589793,-0.04363323129985824+0.04363323129985824*sin(sine*1))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.15,0.1 * sin((sine+0.65)*1),-0.95),angles(0,-0.3490658503988659,2.530727415391778)),deltaTime)   LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1+0.075*sin(sine*1),-0.5),angles(0,-3.141592653589793,0.04363323129985824-0.04363323129985824*sin(sine*1))),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.075*sin(sine*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.1 * sin((sine+0.65)*1),-0.5),angles(-0.3490658503988659,0.3490658503988659,-0.5235987755982988)),deltaTime)  nep.C0=Lerp(nep.C0,cfMul(cf(1.55+0.1*sin((sine+0.65)*1),-0.1 * sin((sine+0.65)*1),0),angles(0,0,0.8726646259971648)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,angles(-1.5707963267948966,0,3.141592653589793),deltaTime) 


elseif Mode=="Crimtane"  then LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.75,-0.55-0.1*sin((sine+0.55)*4),0),angles(-0.3490658503988659-0.17453292519943295*sin((sine+0.55)*4),-0.3490658503988659,0)),deltaTime)LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.25,0.75-0.1*sin(sine*4),-0.5),angles(1.5707963267948966+0.08726646259971647*sin((sine+0.65)*4),-0.3490658503988659,0.2617993877991494)),deltaTime)RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.55,-0.55,0),angles(-0.17453292519943295+0.6981317007977318*sin((sine+0.55)*4),0.3490658503988659,0)),deltaTime)RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,6+0.1*sin(sine*4),0),angles(-1.9198621771937625,-0.06981317007977318-0.06981317007977318*sin((sine+0.65)*4),3.141592653589793)),deltaTime)RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,-0.1 *sin((sine+0.65)*4),-0.5),angles(0,0.3490658503988659,-0.3490658503988659)),deltaTime)Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.075*sin((sine+0.15)*4),0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime)


elseif Mode=="Dual-Ultima"  then  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.025*sin(sine*1),0),angles(-1.5707963267948966,0,2.2689280275926285)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.025+0.095*sin(sine*1),0),angles(-1.5707963267948966,0,4.101523742186674)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1-0.1*sin(sine*1),-0.5),angles(0,-3.141592653589793,0.05235987755982989-0.05235987755982989*sin(sine*1))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.15,0.5-0.1*sin((sine+0.65)*1),-0.5),angles(1.9198621771937625,-0.3490658503988659,0.8726646259971648)),deltaTime)   RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-1-0.1*sin(sine*1),-0.5),angles(0,3.141592653589793,-0.05235987755982989+0.05235987755982989*sin(sine*1))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.5-0.1*sin((sine+0.65)*1),-0.5),angles(0,0.3490658503988659,1.5707963267948966+0.0017453292519943296*sin((sine+0.65)*1))),deltaTime) 


elseif Mode=="Dual -Unequipped-"  then  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(0.75,0.5-0.1*sin((sine+0.65)*1),-1.25),angles(0,-0.17453292519943295,-1.5707963267948966)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.15+0.1*sin(sine*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.035*sin(sine*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1-0.1*sin(sine*1),-0.5),angles(0,-3.141592653589793,0.05235987755982989-0.05235987755982989*sin(sine*1))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-0.75,-0.1 * sin((sine+0.65)*1),-1.25),angles(0,-0.17453292519943295,1.7453292519943295)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-1-0.1*sin(sine*1),-0.5),angles(0,3.141592653589793,-0.05235987755982989+0.05235987755982989*sin(sine*1))),deltaTime) 


elseif Mode=="Andromeda"  then  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.075+0.075*sin(sine*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-1-0.025*sin((sine+0.65)*1),-0.5),angles(0,3.141592653589793,-0.017453292519943295+0.05235987755982989*sin(sine*1))),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1-0.015*sin((sine+0.65)*1),-0.5),angles(0,-3.141592653589793,0.05235987755982989-0.05235987755982989*sin(sine*1))),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.025*sin((sine+0.55)*1),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.35,0.5-0.055*sin((sine+0.65)*1),0.55),angles(-0.3490658503988659,-3.141592653589793,-0.6981317007977318)),deltaTime) RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.35,0.5-0.055*sin((sine+0.65)*1),0.55),angles(-0.3490658503988659,3.141592653589793,0.6981317007977318)),deltaTime)


elseif Mode=="Transforming"  then  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(0,1.5707963267948966,0.5235987755982988)),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime) RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.45,0.5,0.25),angles(0,3.141592653589793,2.0943951023931953)),deltaTime) RootJoint.C0=Lerp(RootJoint.C0,angles(-2.0943951023931953,0,3.141592653589793),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(0,-1.5707963267948966,-0.5235987755982988)),deltaTime) LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.45,0.5,0.25),angles(0,-3.141592653589793,-2.0943951023931953)),deltaTime)
           end
    end
end


kofi = Connect(heartbeat, animate)

kofi=renderstepped:Connect(function()
if Mode=="Neptunian V" or Mode=="NV -Unequipped-"then 
Q.Rotation=5*cos(sine/1)+math.random(-3,3)
else
Q.Rotation=5*cos(sine/1)
end
E.Rotation=-2.5*cos(sine/1)
R.Rotation=-2.5*cos(sine/1)
fo.Rotation +=10
Rq.Rotation+=1
Rq1.Rotation-=1

end)
end)
Stop1.MouseButton1Click:Connect(function()
    Running = false
    notif("Stopping Script Please Wait!")
    M()
    if kofi then
        kofi:Disconnect()
        kofi = nil
    end
    
    if kofi1 then
        kofi1:Disconnect()
        kofi1 = nil
    end
    
    if kofi2 then
        kofi2:Disconnect()
        kofi2 = nil
    end
    
    if Clicking then
        Clicking:Disconnect()
        Clicking = nil
    end
    Mode = "Neptunian V"
    Music1 = "Censored"
    WingAnim = "Neptunian"
        if CGui:FindFirstChild("Plonkers") then
        CGui.Plonkers:Destroy()
    end
    if Playsound then
        Playsound:Stop()
        Playsound.Volume = 0
    end
    if Clicking then
        Clicking=nil
      end
    
    
    wait(1)
    stopreanimate()
    if nep then nep = nil end
    if s0_1 then s0_1 = nil end
    if s0_2 then s0_2 = nil end
    if s0_3 then s0_3 = nil end
    if s0_4 then s0_4 = nil end
    if s1_1 then s1_1 = nil end
    if s1_2 then s1_2 = nil end
    if s1_3 then s1_3 = nil end
    if s1_4 then s1_4 = nil end
    
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-rs"..tostring(ja))
    wait(2.150)
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd"..tostring(ja))
end)

local script=i("LocalScript",title)
while wait() do
script.Parent.BackgroundColor3 = c3(255/255,0/255,0/255)
		for i = 0,255,10 do
			wait()
			script.Parent.TextColor3 = c3(255/255,i/255,0/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.TextColor3 = c3(i/255,255/255,0/255)
		end
		for i = 0,255,10 do
			wait()
			script.Parent.TextColor3 = c3(0/255,255/255,i/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.TextColor3 = c3(0/255,i/255,255/255)
		end
		for i = 0,255,10 do
			wait()
			script.Parent.TextColor3 = c3(i/255,0/255,255/255)
		end
		for i = 255,0,-10 do
			wait()
			script.Parent.TextColor3 = c3(255/255,0/255,i/255)
		end
end



-- Ello there!