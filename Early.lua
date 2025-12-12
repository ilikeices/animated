local Occasions="Normal"
local Global = (getgenv and getgenv()) or shared
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local ReanimateVer="Gelatek"

if isfolder and not isfolder("KDV3") then 
	makefolder("KDV3")
end

if not isfolder("KRYSTALDANCE") then
        makefolder("KRYSTALDANCE")
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/src/packages/FunctionPack.lua"))()
local KDV3 = game:GetService("CoreGui")
if KDV3:FindFirstChild("KRYSTALDANCE") then
    KDV3.KRYSTALDANCE:Destroy()
end
local function choot(msg)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(msg)
end

local function notify(text,dur)
local Notify=game:GetService("StarterGui")
Notify:SetCore("SendNotification",{
Title="R6 Tool Dance";
Text=text;
Duration=5 or dur})
end
local ws=game.Workspace
if ws:FindFirstChild("full") then
ws.full:Destroy()
end
local ScreenGui = Instance.new("ScreenGui",KDV3)
ScreenGui.Name ="KRYSTALDANCE"
local ui = Instance.new("Frame",ScreenGui)
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local REANIMATE = Instance.new("TextButton",ui)
local Run1 = Instance.new("TextButton")
local Stop1 = Instance.new("TextButton",ui)
local ced = Instance.new("TextLabel")
local Show =Instance.new("TextButton")
local corner=Instance.new("UICorner",ui)
--local DANCEINFO=Instance.new("TextButton",ui)
--local Enable =Instance.new("TextButton",ui)
local corner1=Instance.new("UICorner",Run1)
corner2=Instance.new("UICorner",Stop1)
corner3=Instance.new("UICorner",Show)
corner4=Instance.new("UICorner",REANIMATE)
corner5=Instance.new("UICorner",DANCEINFO)
--corner4=Instance.new("UICorner",Enable)
local CurrentFrame=Instance.new("Frame",ScreenGui)
local Stroke=Instance.new("UIStroke",CurrentFrame)
local Corner=Instance.new("UICorner",CurrentFrame)
Stroke.Thickness=3
Stroke.Transparency=.65
local CurrentPage=Instance.new("TextLabel",CurrentFrame)
local Page=Instance.new("TextLabel",CurrentFrame)
local CurrentKey=Instance.new("TextLabel",CurrentFrame)
local Key=Instance.new("TextLabel",CurrentFrame)
local DanceInfo=Instance.new("TextLabel",CurrentFrame)
local Dance=Instance.new("TextLabel",CurrentFrame)
local Credits=Instance.new("TextLabel",CurrentFrame)

ui.Name = "ui"
ui.Active = true
ui.BackgroundColor3 = Color3.new(0, 0, 0)
ui.BackgroundTransparency = 0
ui.BorderSizePixel = 3
ui.Position=UDim2.new(0.35, 0, 0.5, -100)
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
title.TextSize = 7.5
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

REANIMATE.Name = "F20 FR"
REANIMATE.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
REANIMATE.BorderSizePixel = 0
REANIMATE.Position = UDim2.new(0, 0, .350, 0)
REANIMATE.Size = UDim2.new(0.5, 0, 0, 45)
REANIMATE.Font = "Arcade"
REANIMATE.Text = "REANIMATE"
REANIMATE.TextColor3 = Color3.new(1,1,1)
REANIMATE.TextScaled = true
REANIMATE.TextSize = 10
REANIMATE.TextWrapped = true
--[[
DANCEINFO.Name = "F20 FR"
DANCEINFO.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
DANCEINFO.BorderSizePixel = 0
DANCEINFO.Position = UDim2.new(0.5, 0, .350, 0)
DANCEINFO.Size = UDim2.new(0.5, 0, 0, 45)
DANCEINFO.Font = "Arcade"
DANCEINFO.Text = "Click Me!"
DANCEINFO.TextColor3 = Color3.new(1,1,1)
DANCEINFO.TextScaled = false
DANCEINFO.TextSize = 15
DANCEINFO.TextWrapped = false
]]
Run1.Name = "Stick"
Run1.Parent = ui
Run1.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Run1.BackgroundTransparency = 0
Run1.BorderSizePixel = 0
Run1.Position = UDim2.new(10, 0, 0.629999971, 0)
Run1.Size = UDim2.new(0.5, 0, 0, 45)
Run1.Font = "Arcade"
Run1.Text = "Run"
Run1.TextColor3 = Color3.new(1,1,1)
Run1.TextScaled = true
Run1.TextSize = 10
Run1.TextWrapped = true
--[[
Enable.Name = "Stick"
Enable.Parent = ui
Enable.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Enable.BackgroundTransparency = 0
Enable.BorderSizePixel = 0
Enable.Position = UDim2.new(1, 0, .35, 0)
Enable.Size = UDim2.new(0.5, 0, 0, 45)
Enable.Font = Enum.Font.Sarpanch
Enable.Text = "Enabled"
Enable.TextColor3 = Color3.new(1,1,1)
Enable.TextScaled = true
Enable.TextSize = 10
Enable.TextWrapped = true
]]
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
ced.Text = "R6 Tool Dance"
ced.TextColor3 = Color3.new(1, 1, 1)
ced.TextScaled = true
ced.TextSize = 6
ced.TextWrapped = true

Show.Parent=ScreenGui
Show.Font="Arcade"
Show.Text="Hide"
Show.TextColor3=Color3.new(1,1,1)
Show.TextScaled=true
Show.TextSize=14
Show.Size=UDim2.new(0, 50, 0, 50)
Show.Position=UDim2.new(0, 0, 2, 0)
Show.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
local originalUIPosition = ui.Position
local isTweening = false
Show.MouseButton1Click:Connect(function()
    if isTweening then return end
    
    isTweening = true
    isenabled = not isenabled
    
    if isenabled then
        local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = game:GetService("TweenService"):Create(ui, tweenInfo, {Position = UDim2.new(1.5, 0, originalUIPosition.Y.Scale, originalUIPosition.Y.Offset)})
        tween:Play()
        Show.Text = "Show"
        
        tween.Completed:Connect(function()
            ui.Visible = false
            isTweening = false
        end)
    else
                ui.Visible = true
        local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = game:GetService("TweenService"):Create(ui, tweenInfo, {Position = originalUIPosition})
        tween:Play()
        Show.Text = "Hide"
        
        tween.Completed:Connect(function()
            isTweening = false
        end)
    end
end)
local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(Show, tweenInfo, {Position = UDim2.new(0, 0, .50, 0)})
tween:Play()

function respawn()
local ws=gam.Workspace
local char=game.Players.LocalPlayer.Character
local newChar = Instance.new("Model")
newChar.Parent = workspace
newChar.Name="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
char:ClearAllChildren()
game.Players.LocalPlayer.Character = newChar
if ws then
dele=ws:WaitForChild(char.Name)
if dele then
dele:Destroy()
end
end
game.Players.LocalPlayer.Character = char
wait(.1)
newChar:Destroy()
end

local REANIMATION=false
local Place = game.placeId
local function Backup()
--// BY MrY7zz
REANIMATION=true
if not game.IsLoaded then
	game.Loaded:Wait()
end

--// Check configdoc.md for settings documentation (CHECK THE DESCRIPTION OF THIS POST)

--// Below are the settings
-- SETTINGS --
local settings = _G

settings["Use default animations"] = true
settings["Fake character transparency level"] = 1
settings["Disable character scripts"] = true
settings["Fake character should collide"] = true
settings["Parent real character to fake character"] = false
settings["Respawn character"] = true
settings["Instant respawn"] = false
settings["Hide HumanoidRootPart"] = false
settings["PermaDeath fake character"] = true
settings["R15 Reanimate"] = false
settings["Click Fling"] = false
settings["Hide RootPart Distance"] = CFrame.new(255, 255, 0)

settings["Names to exclude from transparency"] = {
    --[=[ example:
    ["HumanoidRootPart"] = true,
    ["Left Arm"] = true
    ]=]
}
--// Settings end

loadstring(game:HttpGet("https://raw.githubusercontent.com/somethingsimade/CurrentAngleV4/refs/heads/main/v4.lua"))()
REANIMATION=false 
end
REANIMATE.MouseButton1Click:Connect(function()
if Place == 17574618959 or Place == 88308889239232 then
if REANIMATION then return notify([[ALREADY REANIMATING]]) end
if game.Workspace:FindFirstChild ("GelatekReanimate") then
return notify("Already Reanimated") end
if game.Workspace:FindFirstChild (game.Players.LocalPlayer.Name.."_Fake") then
return notify("Already Reanimated") end
if ReanimateVer=="Gelatek" then
Run1.Position = UDim2.new(100, 0, 0.629999971, 0)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Reanimate.lua"))()
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
REANIMATION=true
elseif ReanimateVer=="Current" then
Backup()
REANIMATION=true
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
end
else 
Backup()
REANIMATION=true
end

wait(2)
if ReanimateVer=="Gelatek" and ws:WaitForChild("GelatekReanimate")  then
REANIMATION=false
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
elseif ReanimateVer=="Current" and ws:WaitForChild(game.Players.LocalPlayer.Name.."_Fake") then 
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
REANIMATION=false
end
end)





local full = game:GetObjects("rbxassetid://107495486817639")[1]:Clone()
full.Parent = game:GetService("Workspace")
local fallback = game:GetObjects("rbxassetid://117971041844492")[1]:FindFirstChildOfClass("KeyframeSequence")
fallback.Parent = full







local is = newproxy(true)
local function loadlocalasset(id)
    local id = tostring(id)
    local id = id:gsub("^rbxassetid://", "")
    local _, asset = pcall(function() return full[id] end)
    if not _ or not asset then
        asset = fallback
    end

    return asset:Clone()
end
getmetatable(is).__namecall = function(_, id)
	return loadlocalasset(id)
end
local danceCache = {}
local function AddDance(Name, ScriptUrl)
    local filePath = "KRYSTALDANCE/"..Name
    if isfile(filePath) then
        local success, danceData = pcall(function()
            return loadstring(readfile(filePath))()
        end)
        
        if success and danceData then
            if danceData:IsA("KeyframeSequence") then
                local newDance = danceData:Clone()
                newDance.Name = Name
                newDance.Parent = full
                print("Loaded from storage: "..Name)
                return newDance
            else
                notify("Saved dance doesn't return KeyframeSequence: "..Name)
            end
        else
            notify("Failed to load saved dance: "..Name.." - "..tostring(danceData))
        end
    end
    notify("Downloading dance: "..Name)
    local success, danceData = pcall(function()
        return loadstring(game:HttpGet(ScriptUrl))()
    end)
    
    if success and danceData then
        if danceData:IsA("KeyframeSequence") then
            local newDance = danceData:Clone()
            newDance.Name = Name
            newDance.Parent = full
            notify("Loaded: "..Name)
            writefile(filePath, game:HttpGet(ScriptUrl))
            return newDance
        else
            notify("Dance doesn't return KeyframeSequence: "..Name)
            return nil
        end
    else
        notify("Failed to load dance: "..Name.." - "..tostring(danceData))
        return nil
    end
end





local danceCache = {}
local function LoadDance(danceName, scriptUrl)
    if danceCache[danceName] then
        return danceCache[danceName]
    end
    
    local dance = AddDance(danceName, scriptUrl)
    if dance then
        danceCache[danceName] = dance
    end
    return dance
end






local timeposcur = 0 
local sound69 = Instance.new("Sound",game:GetService("RunService"))
local Playsound = Instance.new("Sound",game:GetService("RunService"))
Playsound.Name = "Danc"
Playsound.Volume = .75
Playsound.Looped = true
Playsound.Parent = game:GetService("RunService")
sound69.Looped = true
sound69.Name = "danc"
sound69.Playing = true
sound69.Volume = .75






local validAudioFiles = {
    "Sphere.mp3",
    "rat.mp3",
    "FunkedUp.mp3",
    "Assumptions.mp3",
    "Egypt.mp3",
    "DO THE FLOP.mp3",
    "caramell.mp3",
    "Heel.mp3",
    "gangnamm.mp3",
    "Monkey.mp3",
    "dancingin.mp3",
    "dr.wav",
    "griddy.mp3",
    "lux.ogg",
    "kazot.mp3",
    "Domino.mp3",
    "Liar.mp3",
    "Mesmerizer.mp3",
    "Box.mp3",
    "Static.mp3",
    "Prism.mp3",
    "Headlock.mp3",
    "TUCA DONKA.mp3",
    "Break.mp3",
    "XO.mp3",
    "Soda.mp3",
    "LoveForU.mp3",
    "assum.mp3",
    "balls.mp3",
    "Distraction.mp3",
    "ItBurns.mp3",
    "chronoshift.mp3",
    "KeepUp.mp3",
    "Boombox.mp3",
    "bloodpop.mp3",
    "leftright.mp3",
    "heavylove.mp3",
    "Million.mp3",
    "Bjean.mp3",
    "Savor.mp3",
    "Yamero.mp3",
    "InternetAngel.mp3",
    "CLUB PENGUIN DANCE.mp3",
    "Runaway.mp3",
    "MioHonda.mp3",
    "Firework.mp3",
    "C14.mp3",
    "Slickback.mp3",
    "Doodle.mp3",
    "Goat.mp3",
    "Bumblebee.mp3",
    "Stock.mp3",
    "Shuba Duck.mp3",
    "Lemon.mp3",
    "Birdbrain2.mp3",
    "Fein.mp3",
    "Popipo.mp3",
    "Pickup.mp3",
    "Billy.mp3",
    "rotten.mp3",
    "Spooky.mp3",
    "JK.mp3",
    "Flexworks.mp3",
    "Unlockit.mp3",
    "Insanity.mp3",
    "Cafeteria.mp3",
    "Tenna.mp3",
    "Suki.mp3",
    "CrissCross.mp3",
    "Dare.mp3",
    "Lagtrain.mp3",
    "SmoothMoves.mp3",
    "brain.mp3",
    "espresso.mp3",
    "rakuten.mp3",
    "tort.mp3",
    "TakeDown.mp3",
    "Side Shuffle.mp3",
    "Rambunctious.mp3",
    "Electro Swing.mp3",
    "Crank.mp3",
    "Apple Pen.mp3",
    "Igaku2.mp3",
    "Down.mp3",
    "Kemusan.mp3",
    "Guli.mp3",
    "ImOk.mp3",
    "Spamton.mp3",
    "Sit.mp3",
    "Results.mp3",
    "Yell.mp3",
    "Yell1.mp3",
    "Pixelation.mp3",
    "Yell2.mp3",
    "Touch.mp3",
    "Lonely.mp3",
    "whateverlike.mp3",
    "matchmaker.mp3",
    "faster.ogg",
    "Metro.mp3",
    "Jumpstyle.mp3",
    "Invincible.mp3",
    "CrackDown.mp3",
    "CyberBop.mp3",
    "BrickBattler.mp3",
    "BreakDance2005.mp3",
    "BreakDance.mp3",
    "CrackDown.mp3",
    "Halloween.mp3",
    "TANOC.mp3",
    "Shiawase.mp3",
    "Tf2.mp3",
    "Smug.mp3",
    "Wait2.mp3",
    "Livesey.mp3",
    "Pokedance.mp3",
    "Slash.mp3",
}
local function DanceAsset(file)
    if not table.find(validAudioFiles, file) then
        notify("Audio file not found: " .. file)
        return ""
    end
    local filePath = "KDV3/"..file
    if isfile(filePath) then
        local fileSize = 0
        pcall(function()
            fileSize = #readfile(filePath)
        end)
        if fileSize < 204800 then
            notify("Redownloading corrupted audio: " .. file)
            delfile(filePath)
        end
    end

    if not isfile(filePath) then 
        notify("Downloading Audio: " .. file)
        local success, errorMsg = pcall(function()
            writefile(filePath, game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/"..file.."?raw=true"))
        end)
        
        if not success then
            notify("Failed to download audio: " .. file .. " - " .. errorMsg)
            writefile(filePath, "")
            return ""
        end
        notify("Downloaded Audio: " .. file)
    end
    if isfile(filePath) then
        local fileSize = 0
        pcall(function()
            fileSize = #readfile(filePath)
        end)
        if fileSize > 204800 then
            return getcustomasset(filePath)  
        else
            notify("Audio file is empty/corrupted: " .. file)
            return ""
        end
    else
        notify("File Not Found: " .. file)
        return ""
    end
end

local RUNNING = false
function MainScript()
if RUNNING==true then return end
RUNNING=true

--// Custom Tool/Inventory Gui
local G2L={};
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Custom Inventory]];
G2L["1"]["ResetOnSpawn"] = true;


-- StarterGui.Custom Inventory.Inventory
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["ZIndex"] = 0;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["SliceCenter"] = Rect.new(5, 5, 945, 612);
G2L["2"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["2"]["Size"] = UDim2.new(0, 225, 0, 100);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["BackgroundTransparency"] = 0.5;
G2L["2"]["Name"] = [[Inventory]];
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.925, -20);
G2L["2"]["BackgroundTransparency"] = .75;


-- StarterGui.Custom Inventory.Inventory.Frame
G2L["3"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["3"]["Active"] = true;
G2L["3"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["3"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["3"]["TopImage"] = [[]];
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["Name"] = [[Frame]];
G2L["3"]["ScrollBarImageTransparency"] = 0.4;
G2L["3"]["BottomImage"] = [[]];
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["3"]["Size"] = UDim2.new(0.98, 0, 0.86193, 0);
G2L["3"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Position"] = UDim2.new(0.50106, 0, 0.54904, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3"]["ScrollBarThickness"] = 5;
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.Custom Inventory.Inventory.Frame.Grid
G2L["4"] = Instance.new("UIGridLayout", G2L["3"]);
G2L["4"]["CellSize"] = UDim2.new(0, 90, 0, 100);
G2L["4"]["Name"] = [[Grid]];
G2L["4"]["CellPadding"] = UDim2.new(0, 15, 0, 15);


-- StarterGui.Custom Inventory.Inventory.Frame.UIPadding
G2L["5"] = Instance.new("UIPadding", G2L["3"]);
G2L["5"]["PaddingTop"] = UDim.new(0, 5);
G2L["5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.Custom Inventory.Inventory.SearchBox
G2L["6"] = Instance.new("TextBox", G2L["2"]);
G2L["6"]["LineHeight"] = 1.1;
G2L["6"]["Name"] = [[SearchBox]];
G2L["6"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextColor3"] = Color3.new(1, 1, 1);
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["6"]["Font"] = Enum.Font.Sarpanch;
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["PlaceholderText"] = [[Search...]];
G2L["6"]["Size"] = UDim2.new(0, 225, 0.04893, 20);
G2L["6"]["Position"] = UDim2.new(0, 112,0,-30);
G2L["6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6"]["Text"] = [[]];
G2L["6"]["BackgroundTransparency"] = .75;


-- StarterGui.Custom Inventory.Inventory.SearchBox.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.Custom Inventory.Inventory.UICorner
G2L["8"] = Instance.new("UICorner", G2L["2"]);
G2L["8"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.Custom Inventory.hotBar
G2L["9"] = Instance.new("Frame", G2L["1"]);
G2L["9"]["ZIndex"] = 0;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["9"]["Size"] = UDim2.new(0.45209, 0, 0.05, 20);
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.99, -5);
G2L["9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9"]["Name"] = [[hotBar]];
G2L["9"]["BackgroundTransparency"] = 1;


-- StarterGui.Custom Inventory.hotBar.Grid
G2L["a"] = Instance.new("UIGridLayout", G2L["9"]);
G2L["a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["a"]["CellSize"] = UDim2.new(0, 100, 0, 100);
G2L["a"]["Name"] = [[Grid]];
G2L["a"]["CellPadding"] = UDim2.new(0.01, 5, 0, 5);


-- StarterGui.Custom Inventory.openButton
G2L["b"] = Instance.new("ImageButton", G2L["1"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["b"]["ZIndex"] = 6;
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["b"]["Size"] = UDim2.new(0, 60, 0, 60);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[openButton]];
G2L["b"]["Position"] = UDim2.new(.34, 0, 1.043, 0);

G2L["b1"] =Instance.new("UICorner", G2L["b"]);

-- StarterGui.Custom Inventory.openButton.info
G2L["c"] = Instance.new("TextLabel", G2L["b"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["ZIndex"] = 1;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["c"]["Font"] = Enum.Font.Sarpanch;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundTransparency"] = .50;
---G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Show]];
G2L["c"]["TextSize"] = 14;
G2L["c"]["Name"] = [[info]];
G2L["c"]["Position"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.Custom Inventory.openButton.info.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["c"]);
G2L["d1"] = Instance.new("UICorner", G2L["c"]);
G2L["d"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["d"]["Thickness"] = 0;


-- StarterGui.Custom Inventory.InventoryController
G2L["e"] = Instance.new("LocalScript", G2L["1"]);
G2L["e"]["Name"] = [[InventoryController]];


-- StarterGui.Custom Inventory.InventoryController.SETTINGS
G2L["f"] = Instance.new("ModuleScript", G2L["e"]);
G2L["f"]["Name"] = [[SETTINGS]];


-- StarterGui.Custom Inventory.InventoryController.toolButton
G2L["10"] = Instance.new("ImageButton", G2L["e"]);
G2L["10"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["SliceCenter"] = Rect.new(5, 11, 942, 606);
G2L["10"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["10"]["AutoButtonColor"] = false;
G2L["10"]["BackgroundTransparency"] = .75;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["10"]["Size"] = UDim2.new(0, 0, 0, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["10"]["Name"] = [[toolButton]];
G2L["10"]["Position"] = UDim2.new(0.44899, 0, 0.40652, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolNumber
G2L["11"] = Instance.new("TextLabel", G2L["10"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["ZIndex"] = 2;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextTransparency"] = .50;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(.4, 0, .4, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["11"]["Text"] = [[1]];
G2L["11"]["Name"] = [[toolNumber]];


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolName
G2L["12"] = Instance.new("TextLabel", G2L["10"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["ZIndex"] = 3;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 16;
G2L["12"]["TextScaled"] = true;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Font"] = Enum.Font.Sarpanch;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["Size"] = UDim2.new(0.8, 0, 0.518, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["12"]["Text"] = [[N/A]];
G2L["12"]["Name"] = [[toolName]];
G2L["12"]["Position"] = UDim2.new(0.515, 0, 0.47079, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolName.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["12"]);
G2L["13"]["Thickness"] = 1;


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolName.UITextSizeConstraint
G2L["14"] = Instance.new("UITextSizeConstraint", G2L["12"]);
G2L["14"]["MaxTextSize"] = 20;
G2L["14"]["MinTextSize"] = 5;


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolAmount
G2L["15"] = Instance.new("TextLabel", G2L["10"]);
G2L["15"]["TextWrapped"] = true;
G2L["15"]["ZIndex"] = 3;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 14;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(1.13, 0, 0.17, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["15"]["Text"] = [[]];
G2L["15"]["Name"] = [[toolAmount]];
G2L["15"]["Position"] = UDim2.new(-0.065, 0, 0.725, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolAmount.UIStroke
G2L["16"] = Instance.new("UIStroke", G2L["15"]);
G2L["16"]["Thickness"] = 3;


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolIcon
G2L["17"] = Instance.new("ImageLabel", G2L["10"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17"]["Image"] = [[rbxassetid://10202636594]];
G2L["17"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["17"]["Visible"] = false;
G2L["17"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Selectable"] = true;
G2L["17"]["Name"] = [[toolIcon]];
G2L["17"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolIcon.UIAspectRatioConstraint
G2L["18"] = Instance.new("UIAspectRatioConstraint", G2L["17"]);



-- StarterGui.Custom Inventory.InventoryController.toolButton.UIStroke
G2L["19"] = Instance.new("UIStroke", G2L["10"]);
G2L["19"]["Thickness"] = 1;


-- StarterGui.Custom Inventory.InventoryController.toolButton.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["10"]);


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["f"]] = {
Closure = function()
    local script = G2L["f"];local module = {OBJECTS = {}, SETTINGS = {},
    slotAmount = 4}
module.OBJECTS.HotBar = {}
module.OBJECTS.Inventory = {}

-- SETTINGS
local SETTINGS = module.SETTINGS
SETTINGS.DEFAULT_COLOR = Color3.fromRGB(0, 0, 0) -- ToolFrame background color when unequipped
SETTINGS.EQUIPPED_COLOR = Color3.fromRGB(100, 100, 100) -- ToolFrame background color when equipped
SETTINGS.DISABLED_COLOR = Color3.fromRGB(50, 50, 50) -- ToolFrame background color when the tool is disabled
SETTINGS.DEFAULT_IMAGEID = ""
SETTINGS.EQUIPPED_IMAGEID = ""
SETTINGS.DISABLED_IMAGEID = ""
SETTINGS.INVENTORY_KEYBIND = Enum.KeyCode.Backquote -- KeyCode to open the Inventory itself (set to nil to disable the Inventory or Backpack)
SETTINGS.DRAG_OUTSIDE_TO_DROP = false -- If set to true any tool you drag outside of the Inventory or HotBar will be dropped to the floor
SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR = false -- If set to true it will display all the tool frames in the HotBar even if they are empty and the Inventory closed
SETTINGS.SCROLL_HOTBAR_WITH_WHEEL = false -- If set to true it will enable you to scroll the HotBar with the mouse wheel
SETTINGS.EQUIP_TOUCH_SENSITIVITY = 60 -- The limit of how much you can drag a tool before it dosent equips/unequips it when you release it
SETTINGS.OPEN_BUTTON = true
SETTINGS.ALWAYS_SHOW_TOOL_NAME = true





-- services
local ContextActionService = game:GetService("ContextActionService")
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

--// PLAYER
local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local mouse = player:GetMouse()

--// INVENTORY_SYSTEM \\--
local inventoryGui = script.Parent.Parent
local hotbar = inventoryGui.hotBar
local inventoryFrame = inventoryGui.Inventory
local toolButton = script.Parent.toolButton

local EnumKeys = {
	Enum.KeyCode.One,
	Enum.KeyCode.Two,
	Enum.KeyCode.Three,
}
-- tool object methods
local toolObjectMetatable = {}
toolObjectMetatable.__index = toolObjectMetatable

function toolObjectMetatable:isEquipped() -- Checks if the current object.Tool is equipped
	local character = player.Character

	if character then
		return self.Tool.Parent == player.Character
	else
		return false
	end
end

function toolObjectMetatable:DisconnectAll() -- Makes a cleanup of connections and binds as well as deletes object.Frame
	for _, v in pairs(self.CONNECTIONS) do
		v:Disconnect()
	end

	self.didRemoval = true

	if (inventoryFrame.Visible or module.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR) and self.Frame.Parent ~= inventoryGui and self.Frame.Parent ~= inventoryFrame.Frame then
		local toolName = self.Frame:FindFirstChild("toolName")
		local toolAmount = self.Frame:FindFirstChild("toolAmount")
		local toolIcon = self.Frame:FindFirstChild("toolIcon")

		if toolName and toolAmount and toolIcon then
			toolName.Text = ""
			toolAmount.Text = ""
			toolIcon.Image = ""
		end
		self.Frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
		self.Frame.Image = SETTINGS.DEFAULT_IMAGEID
	else
		self.Frame:Destroy()
	end

	if self.Parent == "HotBar" and self.Position then
		ContextActionService:UnbindAction(self.Position .. "hotBar")
		module.OBJECTS.HotBar[self.Position] = nil
	elseif self.Parent == "Inventory" then
		module.OBJECTS.Inventory[self.Tool.Name] = nil
	end
	self = nil
end

function toolObjectMetatable:updateIcon() -- Updates the tool Texture
	local tool = self.Tool
	local frame = self.Frame
	local textureId = tool.TextureId

	if textureId == "" or textureId == nil then
		frame.toolName.Visible = true
		frame.toolIcon.Visible = false
		frame.toolIcon.Image = ""
	else
		frame.toolName.Visible = SETTINGS.ALWAYS_SHOW_TOOL_NAME
		frame.toolIcon.Visible = true
		frame.toolIcon.Image = textureId
	end
end

function toolObjectMetatable:getParentInstance()
	return self.Parent == "Inventory" and inventoryFrame.Frame or hotbar
end

function toolObjectMetatable:showDescription() -- Shows the object.Tool.ToolTip
	local toolDescription = self.Tool.ToolTip
	local frame = self.Frame
	if toolDescription == "" then
		return
	end

	local descriptionFrame = Instance.new("TextLabel")
	descriptionFrame.Name = "descriptionFrame"
	descriptionFrame.AnchorPoint = Vector2.new(0.5, 0)
	descriptionFrame.Font = Enum.Font.SourceSansSemibold
	descriptionFrame.TextColor = BrickColor.Black()
	descriptionFrame.TextSize = 14
	descriptionFrame.BorderSizePixel = 0
	descriptionFrame.BackgroundColor = BrickColor.White()
	descriptionFrame.ZIndex = 99
	descriptionFrame.TextWrapped = true
	descriptionFrame.Parent = inventoryGui

	local corner = Instance.new("UICorner")
	corner.Parent = descriptionFrame
	corner.CornerRadius = UDim.new(0.12, 0)

	local textBounds = TextService:GetTextSize(toolDescription, descriptionFrame.TextSize, descriptionFrame.Font, Vector2.new(400, 1000)) + Vector2.new(10, 4)
	descriptionFrame.Size = UDim2.new(0, textBounds.X, 0, textBounds.Y)
	descriptionFrame.Position = UDim2.new(0, frame.AbsolutePosition.X + (frame.AbsoluteSize.X / 2), 0, frame.AbsolutePosition.Y - textBounds.Y - 2 + 57)
	descriptionFrame.Text = toolDescription
	self.DescriptionFrame = descriptionFrame
	game:GetService("Debris"):AddItem(descriptionFrame, 15)
end

function toolObjectMetatable:removeDescription() -- Destroys the object.DescriptionFrame created by object:showDescription()
	if self.DescriptionFrame then
		self.DescriptionFrame:Destroy()
	end
end

function module:removeCurrentDescription() -- Destroys any current active descriptionFrame
	local descriptionFrame = inventoryGui:FindFirstChild("descriptionFrame")
	if descriptionFrame then
		descriptionFrame:Destroy()
	end
end

function module:getObjectFromTool(tool: Tool) -- Returns the ToolObject of a Tool
	local function searchToolObject(toolParent)
		for _, toolObject in pairs(toolParent) do
			if toolObject.Tool == tool then 
				return toolObject 
			end
		end
	end
	
	return searchToolObject(self.OBJECTS.HotBar) or searchToolObject(self.OBJECTS.Inventory)
end

function module:getToolPosition(tool: Tool) -- Returns the tool position on the hotbar (if in inventory retuns nil)
	local toolObject = self:getObjectFromTool(tool)
	return toolObject and toolObject.Position
end

function module:searchTool() -- Handler for the tool search feature in the inventory
	local toolName: string = inventoryFrame.SearchBox.Text
	if toolName == "" then
		for _, toolObject in pairs(self.OBJECTS["Inventory"]) do
			toolObject.Frame.Visible = true
		end
	elseif toolName then
		for _, toolObject in pairs(self.OBJECTS["Inventory"]) do
			toolObject.Frame.Visible = string.find(toolObject.Name:lower(), toolName:lower()) and true or false
		end
	end
end

function module:lockSlots(unequipCurrentTool: boolean) -- Locks the slots so they cant be equipped or unequipped
	self.slotsLocked = true
	
	if unequipCurrentTool then
		local character = player.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:UnequipTools()
		end
	end
end
function module:unlockSlots() -- Unlocks the slots so they can be equipped and unequipped again
	self.slotsLocked = false
end
function module:lockSlotsPosition() -- Locks the slots position so they cant be moved around
	self.slotsPositionLocked = true
end
function module:unlockSlotsPosition() -- Unlocks the slots positions so they can be moved again
	self.slotsPositionLocked = false
end

function module:newTool(tool: Tool)
	if tool:GetAttribute("toolAdded") or not tool:IsA("Tool") then
		return
	end

	local length = 0
	for _, _ in pairs(module.OBJECTS.HotBar) do
		length += 1
	end

	module:addTool(tool, length == self.slotAmount and "Inventory" or "HotBar", tool:GetAttribute("position"))
end

function module:addTool(tool: Tool, parent: string, position: number)
	tool:SetAttribute("position", nil)
	if position == -1 then
		parent = "Inventory"
		position = nil
	end

	if not position and parent == "HotBar" then
		for index = 1, self.slotAmount do
			if self.OBJECTS.HotBar[index] == nil then
				position = index
				break
			end
		end
	end

	if position and hotbar:FindFirstChild(position) then
		hotbar:FindFirstChild(position):Destroy()
	end

	local frame = toolButton:Clone()
	local amount = tool:GetAttribute("amount") or 1
	if amount > 1 then
		frame.toolAmount.Text = "x" .. amount
	end
	frame.toolName.Text = tool.Name
	frame.Parent = parent == "Inventory" and inventoryFrame.Frame or hotbar
	frame.Name = parent == "Inventory" and tool.Name or position
	frame.toolNumber.Text = parent == "Inventory" and "" or position

	local object = {}
	setmetatable(object, toolObjectMetatable)

	object.Tool = tool
	object.Frame = frame
	object.Parent = parent
	object.Position = position
	object.Name = tool.Name
	self.OBJECTS[parent][position == nil and frame.Name or position] = object
	local function manageTool(_, inputState, inputObject)
		if inputObject and inputObject.UserInputType ~= Enum.UserInputType.Keyboard and inputObject.UserInputType ~= Enum.UserInputType.Touch then
			return
		end
		
		local character = player.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if
			not humanoid
			or humanoid.Health <= 0
			or not tool.Parent
			or inputState == Enum.UserInputState.End
			or self.slotsLocked
		then
			return
		end

		if object:isEquipped() then -- if tool is equipped then unequip it
			humanoid:UnequipTools()
			frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
			frame.Image = SETTINGS.DEFAULT_IMAGEID
			module.currentlyEquipped = nil
		elseif tool.Enabled then -- if tool isnt equipped then equip it
			humanoid:EquipTool(tool)
			if module.currentlyEquipped and module.currentlyEquipped.Parent then
				module.currentlyEquipped.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
				module.currentlyEquipped.Image = SETTINGS.DEFAULT_IMAGEID
			end
			module.currentlyEquipped = frame
			frame.BackgroundColor3 = SETTINGS.EQUIPPED_COLOR
			frame.Image = SETTINGS.EQUIPPED_IMAGEID
		end
	end

	local function updateEquipped()
		if object:isEquipped() and tool.Enabled then
			if module.currentlyEquipped and module.currentlyEquipped.Parent then
				module.currentlyEquipped.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
				module.currentlyEquipped.Image = SETTINGS.DEFAULT_IMAGEID
			end
			module.currentlyEquipped = frame
			frame.BackgroundColor3 = SETTINGS.EQUIPPED_COLOR
			frame.Image = SETTINGS.EQUIPPED_IMAGEID
		else
			frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
			frame.Image = SETTINGS.DEFAULT_IMAGEID
			module.currentlyEquipped = nil
		end
	end

	local function updateEnabled()
		if tool.Enabled then
			frame.Image = SETTINGS.DEFAULT_IMAGEID
			frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
			frame.ImageTransparency = 0
			frame.toolIcon.ImageTransparency = 0
			frame.toolName.TextTransparency = 0
			frame.toolNumber.TextTransparency = 0
			frame.toolAmount.TextTransparency = 0

			frame.toolAmount.UIStroke.Transparency = 0
			--frame.toolNumber.Transparency = 0
			frame.toolName.UIStroke.Transparency = 0
		else
			frame.Image = SETTINGS.DISABLED_IMAGEID
			frame.BackgroundColor3 = SETTINGS.DISABLED_COLOR
			frame.ImageTransparency = 0.35
			frame.toolIcon.ImageTransparency = 0.5
			frame.toolName.TextTransparency = 0.6
			frame.toolNumber.TextTransparency = 0.6
			frame.toolAmount.TextTransparency = 0.6

			frame.toolAmount.UIStroke.Transparency = 0.6
			--frame.toolNumber.Transparency = 0.6
			frame.toolName.UIStroke.Transparency = 0.6
		end
	end
	updateEnabled()
	updateEquipped()
	object:updateIcon()

	--// CONNECTIONS
	object.CONNECTIONS = {}
	object.CONNECTIONS.EnabledConn = tool:GetPropertyChangedSignal("Enabled"):Connect(updateEnabled)
	object.CONNECTIONS.ToolRemoved = tool.AncestryChanged:Connect(function(_, newParent)
		if player and (newParent == nil or (newParent ~= player.Backpack and newParent ~= player.Character)) then
			object:DisconnectAll()
			tool:SetAttribute("toolAdded", false)
		end
		updateEquipped()
	end)
	object.CONNECTIONS.NameChanged = tool:GetPropertyChangedSignal("Name"):Connect(function()
		frame.toolName.Text = tool.Name
		object.Name = tool.Name
	end)
	object.CONNECTIONS.TextureIdChanged = tool:GetPropertyChangedSignal("TextureId"):Connect(function()
		object:updateIcon()
	end)
	object.CONNECTIONS.AmountChanged = tool:GetAttributeChangedSignal("amount"):Connect(function()
		amount = tool:GetAttribute("amount") or 1
		if amount > 1 then
			frame.toolAmount.Text = "x" .. amount
		else
			frame.toolAmount.Text = ""
		end
	end)
	object.CONNECTIONS.MouseEnter = frame.MouseEnter:Connect(function()
		if object.isGrabbed then
			return
		end
		object:showDescription()
	end)
	object.CONNECTIONS.MouseLeave = frame.MouseLeave:Connect(function()
		object:removeDescription()
	end)
	object.CONNECTIONS.GrabConn = frame.MouseButton1Down:Connect(function()
		if self.slotsPositionLocked then
			return
		end

		local mouseEnd
		local mouseConn
		local newFrame
		local CellSize = inventoryFrame.Frame.Grid.CellSize
		local frameStartPosition = frame.AbsolutePosition
		object:removeDescription()

		local function endGrab()
			mouseEnd:Disconnect()
			mouseConn:Disconnect()
			object.isGrabbed = false

			local droppedGuis = playerGui:GetGuiObjectsAtPosition(mouse.X, mouse.Y)
			local wasSwapped = false
			local dropTool = true
			for _, newSlot in pairs(droppedGuis) do
				if newSlot:IsA("ImageButton") and (newSlot.Parent == hotbar or newSlot.Parent == inventoryFrame.Frame) then
					local newSlotObject = self.OBJECTS[newSlot.Parent == hotbar and "HotBar" or "Inventory"][newSlot.Parent == hotbar and tonumber(newSlot.Name) or newSlot.Name]
					if newSlotObject == object then
						dropTool = false
						if newFrame then
							newFrame:Destroy()
						end
						continue
					end

					if newSlotObject then -- Swap between tools
						wasSwapped = true
						
						object:DisconnectAll()
						newSlotObject:DisconnectAll()

						self:addTool(newSlotObject.Tool, parent, position)
						self:addTool(tool, newSlotObject.Parent, newSlotObject.Position)

						if newFrame then
							newFrame:Destroy()
						end
					elseif newSlot.Parent == hotbar then -- Send to Hotbar
						wasSwapped = true
						
						object:DisconnectAll()
						self:addTool(tool, "HotBar", tonumber(newSlot.Name))
						if parent == "Inventory" and newFrame then
							newFrame:Destroy()
						end
						newSlot:Destroy()
					end

					if newSlotObject then
						newSlotObject:removeDescription()
					end
					if object then
						object:removeDescription()
					end
				elseif newSlot:IsA("ImageLabel") and newSlot == inventoryFrame and not wasSwapped and parent == "HotBar" then -- Send to Inventory
					wasSwapped = true
					object:DisconnectAll()
					self:addTool(tool, "Inventory")
					self:searchTool()
					break
				end
			end
			
			if not wasSwapped then
				if newFrame then
					newFrame:Destroy()
				end
				frame.Parent = object:getParentInstance()
				
				if SETTINGS.DRAG_OUTSIDE_TO_DROP and dropTool and tool.CanBeDropped then
					local character = player.Character
					if character then
						tool.Parent = character
						RunService.RenderStepped:Wait()
						tool.Parent = workspace
					end
				end
				
				if (frameStartPosition - Vector2.new(mouse.X, mouse.Y)).Magnitude <= SETTINGS.EQUIP_TOUCH_SENSITIVITY then
					manageTool()
				end
			end
		end
		mouseEnd = UserInputService.InputEnded:Connect(function(inputObject)
			if
				inputObject.UserInputType == Enum.UserInputType.MouseButton1
				or inputObject.UserInputType == Enum.UserInputType.Touch
			then
				endGrab()
			end
		end)

		local function updateFramePos()
			if not object.isGrabbed then
				object.isGrabbed = true
				newFrame = toolButton:Clone()
				newFrame.toolName.Text = ""
				newFrame.toolAmount.Text = ""
				newFrame.toolNumber.Text = position or ""
				newFrame.Name = frame.Name
				newFrame.Size = frame.Size
				newFrame.Parent = object:getParentInstance()

				frame.Size = CellSize
				frame.Parent = inventoryGui
			end

			local mousePos = Vector2.new(mouse.X, mouse.Y)
			frame.Position = UDim2.new(0, mousePos.X - (CellSize.X.Offset / 2), 0, mousePos.Y - (CellSize.Y.Offset / 2) + 57)
		end
		mouseConn = mouse.Move:Connect(updateFramePos)
	end)

	tool:SetAttribute("toolAdded", true)
	if parent == "HotBar" and position then
		ContextActionService:BindAction(position .. "hotBar", manageTool, false, EnumKeys[position])
	end
end

return module

end;
};
-- StarterGui.Custom Inventory.InventoryController
local function C_e()
local script = G2L["e"];
	-- services
	local StarterGui = game:GetService("StarterGui")
	local ContextActionService = game:GetService("ContextActionService")
	local UserInputService = game:GetService("UserInputService")
	
	-- references
	local player = game:GetService("Players").LocalPlayer
	local backpack = player:WaitForChild("Backpack")
	local camera = workspace.CurrentCamera
	
	-- DISABLE BASIC ROBLOX HOTBAR
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	
	local CustomInventoryGUI = script.Parent
	local hotBar = CustomInventoryGUI.hotBar
	local Inventory = CustomInventoryGUI.Inventory
	local toolButton = script.toolButton
	
	local inventoryHandler = require(script.SETTINGS)
	
	local function showSlots()
		for index = 1, inventoryHandler.slotAmount do
			local toolObject = inventoryHandler.OBJECTS.HotBar[index]
			if not toolObject and not hotBar:FindFirstChild(index) and index <= inventoryHandler.slotAmount then
				local frame = toolButton:Clone()
				frame.toolName.Text = ""
				frame.toolAmount.Text = ""
				frame.toolNumber.Text = index
				frame.Name = index
				frame.Parent = hotBar
			end
		end
	end
	local function removeEmptySlots()
		for index = 1, 9 do
			local toolObject = inventoryHandler.OBJECTS.HotBar[index]
			local toolFrame = hotBar:FindFirstChild(index)
			if not toolObject and toolFrame then
				toolFrame:Destroy()
				if hotBar:FindFirstChild(index) then
					removeEmptySlots()
				end
			end
		end
	end
	
	local function manageInventory (_, inputState)
		if inputState == Enum.UserInputState.Begin then
			Inventory.Visible = not Inventory.Visible
			local currentState = Inventory.Visible
	
			inventoryHandler:removeCurrentDescription()
			if currentState then
				showSlots()
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Hide"
			else
				if not inventoryHandler.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR then
					removeEmptySlots()
				end
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Show"
			end
		elseif not inputState then
			for index = inventoryHandler.slotAmount + 1, inventoryHandler.slotAmount do
				local toolObject = inventoryHandler.OBJECTS.HotBar[index]
				local toolFrame = hotBar:FindFirstChild(index)
				if toolObject then
					local tool = toolObject.Tool
					toolObject:DisconnectAll()
					tool:SetAttribute("toolAdded", nil)
					inventoryHandler:newTool(tool)
				elseif toolFrame then
					toolFrame:Destroy()
				end
			end
		end
	end
	
	local function searchTool()
		inventoryHandler:searchTool()
	end
	local function newTool(tool)
		if tool:IsA("Tool") then
			inventoryHandler:newTool(tool)
		end
	end
	
	local function reloadInventory(character)
		inventoryHandler.currentlyEquipped = nil
		backpack = player:WaitForChild("Backpack")
	
		for _, tool in pairs(backpack:GetChildren()) do
			if tool:IsA("Tool") then
				newTool(tool)
			end
		end
		backpack.ChildAdded:Connect(newTool)
		character.ChildAdded:Connect(newTool)
	end
	local function updateHudPosition()
		local viewPortSize = camera.ViewportSize
		local slotSize = UDim2.fromOffset(hotBar.AbsoluteSize.Y, hotBar.AbsoluteSize.Y)
		
		Inventory.Frame.Grid.CellSize = slotSize
		hotBar.Grid.CellSize = slotSize
	
		manageInventory()
	end
	
	updateHudPosition(); updateHudPosition()
	reloadInventory(player.Character or player.CharacterAdded:Wait())
	camera:GetPropertyChangedSignal("ViewportSize"):Connect(updateHudPosition)
	player.CharacterAdded:Connect(reloadInventory)
	Inventory.SearchBox:GetPropertyChangedSignal("Text"):Connect(searchTool)
	if inventoryHandler.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR then showSlots() end
	if inventoryHandler.SETTINGS.INVENTORY_KEYBIND then ContextActionService:BindAction("manageInventory", manageInventory, false, inventoryHandler.SETTINGS.INVENTORY_KEYBIND) end
	if inventoryHandler.SETTINGS.OPEN_BUTTON then
		CustomInventoryGUI.openButton.MouseButton1Down:Connect(function()
			Inventory.Visible = not Inventory.Visible
			local currentState = Inventory.Visible
			
			inventoryHandler:removeCurrentDescription()
			if currentState then
				showSlots()
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Hide"
			else
				if not inventoryHandler.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR then
					removeEmptySlots()
				end
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Show"
			end
		end)
	else
		CustomInventoryGUI.openButton.Visible = false
	end
	
	local function getToolEquipped()
		local character = player.Character
		return character and character:FindFirstChildOfClass("Tool")
	end
	
	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseWheel and inventoryHandler.SETTINGS.SCROLL_HOTBAR_WITH_WHEEL then
			local direction = input.Position.Z
			local character = player.Character
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	
			local toolEquipped = getToolEquipped()
			local toolPosition = inventoryHandler:getToolPosition(toolEquipped) or 0
			
			for i=toolPosition + direction, direction < 0 and 1 or inventoryHandler.slotAmount, direction do
				local toolObject = inventoryHandler.OBJECTS.HotBar[i]
				if toolObject and humanoid then
					humanoid:EquipTool(toolObject.Tool)
					break
				end
			end
		end
	end)
end;
task.spawn(C_e);












local lol = math.random(1,5)
local walkanim = is:LoadLocalAsset("rbxassetid://73688515498572") -- uuid. 130213485744288
local idleanim = is:LoadLocalAsset("rbxassetid://74204337812128") -- uuid. 136078657506707
local randompart = Instance.new("Part",game:GetService("RunService"))
local coolparticles = game:GetObjects("rbxassetid://87299663038091")[1].ParticleAttachment
coolparticles.Parent = randompart
local playbacktrack = true 
local script = Instance.new("LocalScript")
real = true
pcall(function()
	local OxideApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/somethingsimade/Utils/refs/heads/main/OxideApi"))()
	OxideApi.Notification("R6 Tool Dance By Theo",10)
end)
local mrandom=math.random
local playanother = false
local playing = false
local dancing = false
local sin=math.sin
local osclock=os.clock
local sine=1
local cos=math.cos
local change = 1
local rtrnv;
local c;
local tbl3;
local v;
local anim;
local count;
local hhhh;
local asdf;
local s;
local animid;
local plr;
local legitjustran = false
local loopsplaying=0 
local rst 
local lst
local rht 
local lht 
local nt 
local rjt
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local cframe;
local torso;
local rs;
local ls;
local rh;
local lh;
local n;
local rj;
local rsc0;
local lsc0;
local rhc0;
local lhc0;
local rjc0;
local nc02;
local gc0;
local orsc0;
local olsc0;
local orhc0;
local olhc0;
local orjc0;
local onc0;
local count2;
local maxcount2;
local walking = false
local idle = false
local char=game:GetService("Players").LocalPlayer.Character
local RunService = game:GetService("RunService")
local hum=char:FindFirstChildOfClass("Humanoid")
local h=char.Head
local t=char.Torso
local hrp=char.HumanoidRootPart 
if char:FindFirstChild("Animate") then
	char.Animate.Enabled = false
end
for i, v in pairs(hum:GetPlayingAnimationTracks()) do
	v:Stop()
end
local function getnext(tbl, number)
	local best = math.huge
	local r
	for t in pairs(tbl) do
		local d = t - number
		if d > 0 and d < best then
			best = d
			r = t
		end
	end
	if not r then
		for t in pairs(tbl) do
			if not r or t < r then
				r = t
			end
		end
	end
	return r
end

local function wait2(tim)
	if tim<0.1 then
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i=1,tim*40 do
			game:GetService("RunService").Heartbeat:Wait()
		end
	end
end
local function kftotbl(kf)
	tbl3 = {}
	for i,v in pairs(kf:GetDescendants()) do
		if v:IsA("Pose") then
			tbl3[string.sub(v.Name,1,1)..string.sub(v.Name,#v.Name,#v.Name)] = v.CFrame
		end
	end
	return(tbl3)
end
local plr = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

local function functionToBind()
	char.Humanoid:Move(Vector3.new(0,0,-1),false)
end
local script = Instance.new("Script")
ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
				pcall(function()
					script.Heartbeat:Fire()
				end)
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
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function fwait(seconds)
	seconds = (seconds < 0.000001) and 0.000001 or seconds
	local event = game:GetService("RunService").PreRender or game:GetService("RunService").Heartbeat

   	local startTime = tick()
   	while tick() - startTime < seconds do
   		event:Wait()
   	end
end		
local function makeanimlibrary()
	local RunService = game:GetService("RunService")

	local __EasingStyles__ = Enum.EasingStyle
	local __EasingDirections__ = Enum.EasingDirection
	local __Enum__PoseEasingStyle__ = #"Enum.PoseEasingStyle."
	local __Enum__PoseEasingDirection__ = #"Enum.PoseEasingDirection."

	local function EasingStyleFix(style)
		local name = string.sub(tostring(style), __Enum__PoseEasingStyle__ + 1)
		return (function()
			local suc, res = pcall(function() return __EasingStyles__[name] end)
			if not suc then
				return Enum.EasingStyle.Linear
			else
				return res
			end
		end)()
	end

	local function EasingDirectionFix(dir)
		local name = string.sub(tostring(dir), __Enum__PoseEasingDirection__ + 1)
		return __EasingDirections__[name] or Enum.EasingDirection.In
	end

	local function ConvertToTable(animationInstance)
		assert(animationInstance and typeof(animationInstance) == "Instance" and animationInstance:IsA("KeyframeSequence"),
			"ConvertToTable requires a KeyframeSequence instance")
		local keyframes = animationInstance:GetKeyframes()
		local sequence = {}
		for i, frame in ipairs(keyframes) do
			local entry = { Time = frame.Time, Data = {} }
			for _, child in ipairs(frame:GetDescendants()) do
				if child:IsA("Pose") and child.Weight > 0 then
					entry.Data[child.Name] = {
						CFrame = child.CFrame,
						EasingStyle = EasingStyleFix(child.EasingStyle),
						EasingDirection = EasingDirectionFix(child.EasingDirection),
						Weight = child.Weight
					}
				end
			end
			sequence[i] = entry
		end
		table.sort(sequence, function(a, b) return a.Time < b.Time end)
		return sequence, animationInstance.Loop
	end

	local function AutoGetMotor6D(model, motorType)
		assert(model and typeof(model) == "Instance" and model:IsA("Model"), "AutoGetMotor6D requires a Model instance")
		local useBone = false
		if motorType == "Bone" then
			useBone = true
		else
			for _, desc in ipairs(model:GetDescendants()) do
				if desc:IsA("Bone") then useBone = true; break end
			end
		end
		local motors = {}
		if useBone then
			for _, bone in ipairs(model:GetDescendants()) do
				if bone:IsA("Bone") then
					motors[bone.Name] = bone
				end
			end
		else
			for _, part in ipairs(model:GetDescendants()) do
				if part:IsA("BasePart") then
					for _, joint in ipairs(part:GetJoints()) do
						if joint:IsA("Motor6D") and joint.Part1 == part then
							motors[part.Name] = joint
							break
						end
					end
				end
			end
		end
		return motors
	end

	local cframe_zero = CFrame.new()
	local UpdateEvent = RunService.PreSimulation

	local AnimLibrary = {}
	AnimLibrary.__index = AnimLibrary

	function AnimLibrary.new(target, keyframeSeq, settings, motorType)
		local self = setmetatable({}, AnimLibrary)
		self.Looped = false
		self.TimePosition = 0
		self.IsPlaying = false
		self.Speed = 1
		self.Settings = settings or {}

		if typeof(target) == "Instance" and target:IsA("Model") then
			self.Motor6D = AutoGetMotor6D(target, motorType)
		else
			self.Motor6D = target
		end

		assert(keyframeSeq, "Animation keyframe sequence required")
		if typeof(keyframeSeq) == "Instance" then
			local seq, looped = ConvertToTable(keyframeSeq)
			self.Animation = seq
			self.Looped = looped
		elseif type(keyframeSeq) == "table" then
			self.Animation = keyframeSeq
		else
			error("Invalid keyframe sequence format")
		end

		self.Length = self.Animation[#self.Animation].Time
		return self
	end

	local function getSurrounding(seq, t)
		local prev, next = seq[1], seq[#seq]
		for i = 1, #seq-1 do
			if seq[i].Time <= t and seq[i+1].Time >= t then
				prev, next = seq[i], seq[i+1]
				break
			end
		end
		return prev, next
	end

	function AnimLibrary:Play()
		if self.IsPlaying then return end
		self.IsPlaying = true
		if self.TimePosition >= self.Length then self.TimePosition = 0 end

		self._conn = UpdateEvent:Connect(function(delta)
			if not self.IsPlaying then return end
			local dt = delta * (self.Speed or 1)
			local pos = self.TimePosition + dt
			if pos > self.Length then
				if self.Looped then
					pos = pos - self.Length
				else
					pos = self.Length
					self:Stop()
					return
				end
			end
			self.TimePosition = pos

			local prev, next = getSurrounding(self.Animation, pos)
			local span = next.Time - prev.Time
			local alpha = span > 0 and (pos - prev.Time)/span or 0
			for joint, prevData in pairs(prev.Data) do
				local nextData = next.Data[joint] or prevData
				local ease = game:GetService("TweenService"):GetValue(alpha, nextData.EasingStyle, nextData.EasingDirection)
				local cf1, cf2 = prevData.CFrame, nextData.CFrame
				local cf = cf1:Lerp(cf2, ease)
				local motor = self.Motor6D[joint]
				if motor then motor.Transform = cf end
			end
		end)
	end

	function AnimLibrary:Stop()
		self.IsPlaying = false
		if self._conn then self._conn:Disconnect(); self._conn = nil end
		for _, motor in pairs(self.Motor6D) do motor.Transform = cframe_zero end
	end

	AnimLibrary.AutoGetMotor6D = AutoGetMotor6D
	AnimLibrary.KeyFrameSequanceToTable = ConvertToTable
	return AnimLibrary
end
local animplayer = makeanimlibrary()
local currentanim = nil
local iscurrentadance = nil
local rigTable = animplayer.AutoGetMotor6D(char, "Motor6D")
local function playanim(id, speed, isadance, custominstance)
    local asset
    
    if typeof(id) == "Instance" then
        asset = id
    elseif type(id) == "string" and full:FindFirstChild(id) then
        asset = full:FindFirstChild(id)
    elseif type(id) == "string" and full.DanceLookup and full.DanceLookup:FindFirstChild(id) then
        asset = full:FindFirstChild(full.DanceLookup[id].Value)
    elseif custominstance then
        asset = custominstance
    else
        asset = is:LoadLocalAsset(id)
    end
	
	if isadance then
		if iscurrentadance then
			if currentanim then
				if not iscurrentadance then
					iscurrentadance = true
					local keyframeTable = animplayer.GenerateKeyframe(asset)
					currentanim = animplayer.new(keyframeTable, asset, nil, settings, "Motor6D")
					currentanim.Speed = speed or 1
					
					currentanim.Looped = true
					currentanim:Play(0)
				else
					currentanim:Stop()
				end
			else
				iscurrentadance = true
				local keyframeTable = animplayer.KeyFrameSequanceToTable(asset)

				currentanim = animplayer.new(keyframeTable, asset, nil, nil, "Motor6D")
				
				currentanim.Speed = speed or 1
				currentanim.Looped = true
				currentanim:Play(0)
			end
		end
	else
		iscurrentadance = false
		if currentanim then
			currentanim:Stop()
		end
		local keyframeTable = animplayer.KeyFrameSequanceToTable(asset)

		currentanim = animplayer.new(rigTable, asset, nil, nil, "Motor6D")

		currentanim.Looped = true
		currentanim:Play(0)
	end
end
local function choose()
	local choice = math.random(1, 3)
	if choice == 1 then
		return "rbxassetid://35930009"
	elseif choice == 2 then
		return "rbxassetid://1846368080"
	elseif choice == 3 then
		return "rbxassetid://17422147220"
	end
end
wait(.1)
playbacktrack=true
local function stopanim()
     loopsplaying = math.max(0, loopsplaying - 1)
     local SavedTime = Playsound.TimePosition
     playanother = true 
     if dancing then
         Playsound.PlaybackSpeed = 1
         if playbacktrack == true then
             Playsound.Volume = 0
             Playsound:Stop()
         else 
             Playsound.Volume = 0
             Playsound:Stop()
         end
     end
     
     coolparticles.Parent = randompart
     pcall(function()
          rst:Cancel()
          rht:Cancel()
          lht:Cancel()
          lst:Cancel()
          nt:Cancel()
          rjt:Cancel()
     end)
     
     if dancing == true then 
         dancing = false
         idle = true 
         char.Humanoid:Move(Vector3.new(0,0,-1),true)
         walking = false 
         wait(.065)
         
         if playbacktrack and not dancing then
             sound69:Stop()
             sound69.Volume=.75
             if Occasions=="Halloween" then
             Playsound.SoundId = DanceAsset("Halloween.mp3")
             end
             Playsound.TimePosition = SavedTime
             Playsound.Volume = .75
             Playsound:Play()
         end
         
         if walking == true and idle == false and char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and playanother == true then 
             task.spawn(function()
                 playanim(74204337812128, 1, false)
             end)
         end
     end
end
if Occasions=="Halloween" then
Playsound.SoundId = DanceAsset("Halloween.mp3")
else
if lol==1 then 
Playsound.SoundId = DanceAsset("Sphere.mp3")
elseif lol==2 then
Playsound.SoundId = DanceAsset("Shiawase.mp3")
elseif lol==3 then 
Playsound.SoundId = DanceAsset("TANOC.mp3")
elseif lol==4 then 
Playsound.SoundId = DanceAsset("Tf2.mp3")
elseif lol==5 then 
Playsound.SoundId = DanceAsset("Slash.mp3")
end
end 
Playsound.TimePosition =0
Playsound.Volume = .75
Playsound:Play()








local TableOfDances={
  {Name="Rat 1",Music="rat.mp3",DanceName="Rat1",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Rat1.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Boogie Down",Music="FunkedUp.mp3",DanceName="None",Url="None",Id=122471664395501,Offset=0,WalkSpeed=14},
  {Name="Assumptions",Music="Assumptions.mp3",DanceName="Assumptions",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Assumptions.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Egypt",Music="Egypt.mp3",DanceName="Egypt",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Egypt.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Flop",Music="DO THE FLOP.mp3",DanceName="Flop",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Flop.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="CaramellDansen",Music="caramell.mp3",DanceName="Nonw",Url="None",Id=114964447248296,Offset=0,WalkSpeed=14},
  {Name="Heel Toe Hop",Music="Heel.mp3",DanceName="Heel",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/HeelToeHop.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Gangnam",Music="gangnamm.mp3",DanceName="None",Url="None",Id=133530633475679,Offset=0,WalkSpeed=14},
  {Name="Bomb Monkey",Music="Monkey.mp3",DanceName="BombMonkey",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Bomb Monkey.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Starlit",Music="dancingin.mp3",DanceName="None",Url="None",Id=136139381223407,Offset=0,WalkSpeed=14},
  {Name="Swag Walk",Music="dr.wav",DanceName="None",Url="None",Id=110403709064010,Offset=0,WalkSpeed=4},
  {Name="Griddy",Music="griddy.mp3",DanceName="None",Url="None",Id=114928062507098,Offset=0,WalkSpeed=4},
  {Name="Luxurious",Music="lux.ogg",DanceName="None",Url="None",Id=94534967284996,Offset=0,WalkSpeed=14},
  {Name="Kazotsky",Music="kazot.mp3",DanceName="None",Url="None",Id=86634257330162,Offset=0,WalkSpeed=14},
  {Name="Domino",Music="Domino.mp3",DanceName="Domino",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Domino.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Liar Dancer",Music="Liar.mp3",DanceName="Liar",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Liar.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Mesmerizer",Music="Mesmerizer.mp3",DanceName="Mesmerizer",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Mesmerizer.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Box Swing",Music="Box.mp3",DanceName="BoxSwing",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Box Swing.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Static 1",Music="Static.mp3",DanceName="Static",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Static.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Prism Shuffle",Music="Prism.mp3",DanceName="Prism",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Prism Shuffle.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Headlock",Music="Headlock.mp3",DanceName="Headlock",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Headlock.lua",Id="None",Offset=6.5,WalkSpeed=14},
  {Name="Hakari",Music="TUCA DONKA.mp3",DanceName="Hakari",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Hakari.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Commercial Break",Music="Break.mp3",DanceName="Commercial",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Commercial.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Soda Pop",Music="Soda.mp3",DanceName="Soda",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Soda Pop.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="XO",Music="XO.mp3",DanceName="None",Url="None",Id=89807443968447,Offset=0,WalkSpeed=14},
  {Name="L4U",Music="LoveForU.mp3",DanceName="L4U",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Love4U.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Assumptios Shuffle",Music="assum.mp3",DanceName="None",Url="None",Id=129275138998868,Offset=0,WalkSpeed=14},
  {Name="Peashooter",Music="balls.mp3",DanceName="None",Url="None",Id=124616782933406,Offset=0,WalkSpeed=14},
  {Name="Distraction",Music="Distraction.mp3",DanceName="Distraction",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Distraction.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Very Hot",Music="ItBurns.mp3",DanceName="ItBurns",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/It Burns.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Chronoshift",Music="chronoshift.mp3",DanceName="Chronoshift",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Chronoshift.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Keep Up",Music="KeepUp.mp3",DanceName="Keep",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Keep Up.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="BoomBox",Music="Boombox.mp3",DanceName="None",Url="None",Id=92629504992703,Offset=0,WalkSpeed=14},
  {Name="BloodPop",Music="bloodpop.mp3",DanceName="None",Url="None",Id=82472212108809,Offset=0,WalkSpeed=14},
  {Name="Sit",Music="Sit.mp3",DanceName="Sit",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Sit.lua",Id="None",Offset=0,WalkSpeed=0},
  {Name="Left Right",Music="leftright.mp3",DanceName="None",Url="None",Id=107261816578577,Offset=0,WalkSpeed=14},
  {Name="Heavy Love",Music="heavylove.mp3",DanceName="None",Url="None",Id=101332118847458,Offset=0,WalkSpeed=14},
  {Name="Million",Music="Million.mp3",DanceName="None",Url="None",Id=109123683211464,Offset=0,WalkSpeed=14},
  {Name="Billie Jean",Music="Bjean.mp3",DanceName="BillieJean",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/BillieJean.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Savor W",Music="Savor.mp3",DanceName="Savor",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Savor.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Yamero",Music="Yamero.mp3",DanceName="Yamero",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Yamero.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Angel",Music="InternetAngel.mp3",DanceName="Angel",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Angel.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Club Penguin",Music="CLUB PENGUIN DANCE.mp3",DanceName="ClubPenguin",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Club Penguin.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Runaway",Music="Runaway.mp3",DanceName="Runaway",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Runaway.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="MioHonda",Music="MioHonda.mp3",DanceName="MioHonda",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/MioHonda.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Firework",Music="Firework.mp3",DanceName="Firework",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Firework.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="C14",Music="C14.mp3",DanceName="C14",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/C14.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Slickback",Music="Slickback.mp3",DanceName="Slickback",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Slickback.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Doodle",Music="Doodle.mp3",DanceName="Doodle",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Doodle.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Goated Dance",Music="Goat.mp3",DanceName="Goat",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Goat.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Bumblebee",Music="Bumblebee.mp3",DanceName="Bumblebee",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Bumblebee.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Stock Shuffle",Music="Stock.mp3",DanceName="Stock",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Stock.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Rat 2",Music="rat.mp3",DanceName="Rat2",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Rat2.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Shuba Duck",Music="Shuba Duck.mp3",DanceName="Shuba",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Shuba Duck.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Lemon Melon",Music="Lemon.mp3",DanceName="None",Url="None",Id=138510336377177,Offset=0,WalkSpeed=14},
  {Name="Birdbrain",Music="Birdbrain2.mp3",DanceName="Birdbrain",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Birdbrain.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Fein",Music="Fein.mp3",DanceName="Fein",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Fein.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Popipo",Music="Popipo.mp3",DanceName="Popipo",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Popipo.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Pickup",Music="Pickup.mp3",DanceName="Pickup",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Pickup.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Silly Billy 1",Music="Billy.mp3",DanceName="Billy",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Billy.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Sinful",Music="rotten.mp3",DanceName="None",Url="None",Id=89457637802764,Offset=0,WalkSpeed=14},
  {Name="Spooky",Music="Spooky.mp3",DanceName="Spooky",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Spooky.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="JK",Music="JK.mp3",DanceName="Limited",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Limited.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="KJ",Music="Flexworks.mp3",DanceName="Flexworks",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Flexworks.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="CrissCross",Music="CrissCross.mp3",DanceName="None",Url="None",Id=109275255555630,Offset=0,WalkSpeed=14},
  {Name="Too Much Brain",Music="brain.mp3",DanceName="None",Url="None",Id=93547721311170,Offset=0,WalkSpeed=4},
  {Name="Espresso",Music="espresso.mp3",DanceName="None",Url="None",Id=87342159331194,Offset=0,WalkSpeed=14},
  {Name="Rakuten",Music="rakuten.mp3",DanceName="None",Url="None",Id=121967347012647,Offset=0,WalkSpeed=14},
  {Name="Torture",Music="tort.mp3",DanceName="None",Url="None",Id=99811468921857,Offset=0,WalkSpeed=14},
  {Name="Unlockit",Music="Unlockit.mp3",DanceName="Unlockit",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Unlockit.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Smooth Moves",Music="SmoothMoves.mp3",DanceName="SmoothMoves",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/SmoothMoves.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Lagtrain",Music="Lagtrain.mp3",DanceName="Lagtrain",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Lagtrain.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Suki",Music="Suki.mp3",DanceName="Suki",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Suki.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Cafeteria",Music="Cafeteria.mp3",DanceName="Cafeteria",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Cafeteria.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Dare",Music="Dare.mp3",DanceName="Dare",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Dare.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Tenna 1",Music="Tenna.mp3",DanceName="Tenna",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Tenna.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Insanity",Music="Insanity.mp3",DanceName="Insanity",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Insanity.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Tenna 2",Music="Tenna.mp3",DanceName="Tenna2",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Tenna 2.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Rambunctious",Music="Rambunctious.mp3",DanceName="Rambunctious",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Rambunctious.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Side Shuffle",Music="Side Shuffle.mp3",DanceName="Sideshuffle",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Side Shuffle.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Electro Swing",Music="Electro Swing.mp3",DanceName="Electro",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Electro Swing.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="MioHonda Step",Music="MioHonda.mp3",DanceName="Step",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Step.lua",Id="None",Offset=0,WalkSpeed=4},
  {Name="Apple Pen",Music="Apple Pen.mp3",DanceName="Applepen",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Apple Pen.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Crank That",Music="Crank.mp3",DanceName="Crankthat",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Crank That.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Take Down",Music="TakeDown.mp3",DanceName="TakeDown",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Takedown.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Going Down",Music="Down.mp3",DanceName="Down",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Going Down.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Spamton",Music="Spamton.mp3",DanceName="Spamton",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Spamton.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Kemusan",Music="Kemusan.mp3",DanceName="Kemusan",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Kemusan.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Im Ok",Music="ImOk.mp3",DanceName="ImOk",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/ImOk.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Igaku",Music="Igaku2.mp3",DanceName="Igaku",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Igaku.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Headlock 2",Music="Headlock.mp3",DanceName="Headlock3",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Headlock3.lua",Id="None",Offset=6.5,WalkSpeed=14},
  {Name="Guli",Music="Guli.mp3",DanceName="Guli",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Guli.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Results",Music="Results.mp3",DanceName="Results",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Results.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Static 2",Music="Static.mp3",DanceName="Static2",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Static2.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Silly Billy 2",Music="Billy.mp3",DanceName="Billy2",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Billy2.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Yell 2",Music="Yell.mp3",DanceName="Yell",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Yell.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Yell 3",Music="Yell1.mp3",DanceName="Yell1",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Yell1.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Yell 1",Music="Yell2.mp3",DanceName="Yell2",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Yell2.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Out of Touch",Music="Touch.mp3",DanceName="Touch",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Touch.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Hakari (Lonely)",Music="Lonely.mp3",DanceName="Hakari",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Hakari.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Rat 3",Music="rat.mp3",DanceName="None",Url="None",Id=117971041844492,Offset=0,WalkSpeed=14},
  {Name="Uh",Music="whateverlike.mp3",DanceName="None",Url="None",Id=99152023738830,Offset=0,WalkSpeed=14},
  {Name="CyberBop",Music="CyberBop.mp3",DanceName="CyberBop",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/CyberBop.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Invincible",Music="Invincible.mp3",DanceName="Invincible",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Invincible.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Jumpstyle",Music="Jumpstyle.mp3",DanceName="Jumpstyle",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Jumpstyle3.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="BreakDance",Music="BreakDance.mp3",DanceName="BreakDance",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/BreakDance.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="BreakDance 2005",Music="BreakDance2005.mp3",DanceName="BreakDance2005",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/BreakDance2005.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Requiem",Music="faster.ogg",DanceName="Requiem",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Requiem.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Metro Man",Music="Metro.mp3",DanceName="Metro",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Metro.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="CrackDown",Music="CrackDown.mp3",DanceName="CrackDown",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/CrackDown.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Wait",Music="Wait2.mp3",DanceName="Wait",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Wait.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Smug Dance",Music="Smug.mp3",DanceName="Smug",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Smug.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Takino",Music="Takino.mp3",DanceName="Takino",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Takino.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Jumpstyle 1",Music="Jumpstyle.mp3",DanceName="Jumpstyle4",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Jumpstyle4.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Livesey Walk",Music="Livesey.mp3",DanceName="Livesey",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Livesey.lua",Id="None",Offset=0,WalkSpeed=4},
  {Name="Mesmerizer 1",Music="Mesmerizer.mp3",DanceName="Mesmerizer1",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Mesmerizer1.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Pokedance",Music="Pokedance.mp3",DanceName="Pokedance",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Pokedance.lua",Id="None",Offset=0,WalkSpeed=14},
  {Name="Keep Up 1",Music="KeepUp.mp3",DanceName="KeepUp1",Url="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Keep Up1.lua",Id="None",Offset=0,WalkSpeed=14},
}






local ws=game.Workspace
ws.CurrentCamera.CameraSubject=char:WaitForChild("Head")
for _,v in ipairs(TableOfDances) do 
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local tool=Instance.new("Tool",backpack)
tool.Name=v.Name
tool.RequiresHandle=false
tool.Equipped:Connect(function()
if dancing==false then 
stopanim()
dancing = true
Playsound.Volume=0
wait(.005)
char.Humanoid.WalkSpeed=v.WalkSpeed
if v.Name=="Takino" then 
if isfile and not isfile("KDV3/Takino.mp3") then
writefile("KDV3/Takino.mp3",game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Takino.mp3?raw=true"))
end
sound69.SoundId = getcustomasset("KDV3/"..v.Music)
elseif v.Name=="Bomb Monkey" then
if isfile and not isfile("KDV3/Monkey.mp3") then
writefile("KDV3/Takino.mp3",game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monkey.mp3?raw=true"))
end
sound69.SoundId = getcustomasset("KDV3/"..v.Music)
end

sound69.SoundId = getcustomasset("KDV3/"..v.Music)
if v.Offset==0 then
sound69.TimePosition=0
else 
sound69.TimePosition=v.Offset
end
if v.DanceName~="None" and v.Url~="None" and v.Id=="None" then
local dance=LoadDance(v.DanceName, v.Url)
if dance then
playanim(dance)
end
else
playanim(v.Id)
end
sound69:Play()
else
stopanim()
end
end)
tool.Unequipped:Connect(function()
char.Humanoid.WalkSpeed = 14
stopanim()
end)
end








local sprinting=false

char.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
	if char.Humanoid.Sit == false then 
		if char.Humanoid.MoveDirection == Vector3.new(0,0,0) and dancing == false and idle == false then
			walking = false
			idle = true
			stopanim()
			fwait(1/500)
			if idle == true and walking == false and char.Humanoid.MoveDirection == Vector3.new(0,0,0) and dancing == false and playanother==true then
				playanim(0,1,false,idleanim )
			end
		elseif char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and walking == false then 
			char.Humanoid.WalkSpeed = 14*char:GetScale()
			walking = true
			idle = false
			stopanim()
			fwait(1/500)
			if sprinting == false then
				char.Humanoid.WalkSpeed = 14*char:GetScale()
				if walking == true and idle == false and  char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and playanother==true  then 
					playanim(130213485744288,1,false,walkanim)
				end
			else
				char.Humanoid.WalkSpeed = 24*char:GetScale()
				if walking == true and idle == false and  char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and playanother==true  then 
				     local dance=LoadDance("Sprint", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Sprint.lua")
				     if dance then
					playanim(dance,2.2,false)
					end
				end
			end
		end
	end
end)



local Player = game:GetService("Players").LocalPlayer
local PlayerMouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Character =char
local Humanoid = Character:WaitForChild("Humanoid")
local IsR6 = (Humanoid.RigType == Enum.HumanoidRigType.R6)
local Head = Character:WaitForChild("Head")
local Torso = if IsR6 then Character:WaitForChild("Torso") else Character:WaitForChild("UpperTorso")
local Neck = if IsR6 then Torso:WaitForChild("Neck") else Head:WaitForChild("Neck")
local Waist = if IsR6 then nil else Torso:WaitForChild("Waist")
local NeckOriginC0 = Neck.C0
local WaistOriginC0 = if Waist then Waist.C0 else nil
Neck.MaxVelocity = 1/3
local AllowedStates = {Enum.HumanoidStateType.Running, Enum.HumanoidStateType.Climbing, Enum.HumanoidStateType.Swimming, Enum.HumanoidStateType.Freefall, Enum.HumanoidStateType.Seated}
local IsAllowedState = (table.find(AllowedStates, Humanoid:GetState()) ~= nil)
local find = table.find
local atan = math.atan
local atan2 = math.atan2
Humanoid.StateChanged:Connect(function(_, new)
	IsAllowedState = (find(AllowedStates, new) ~= nil)
end)
local oldC0N = Neck.C0
local updatesPerSecond = 10
local Character = char 
local Root = char.HumanoidRootPart

local hum = char.Humanoid
local cf = CFrame.new
local DIEDLOOP 
local HEADLOOP
local deltaTime=1



while game.RunService.Heartbeat:Wait(.001) do
if not ws:FindFirstChild("GelatekReanimate") or ws:FindFirstChild(game.Players.LocalPlayer.Name.."_Fake") then
sound69.Volume=0 
sound69.TimePosition=0 
Playsound.Volume=0
Playsound.TimePosition=0
Playsound:Stop()
sound69:Stop()
wait(1)
RUNNING=false
local ws=game.Workspace
ws.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character:WaitForChild("Head")
break
end

if dancing==false and char.Humanoid.MoveDirection == Vector3.new(0,0,0) then
walking = false 
idle = true 
else 
walking = true 
idle = false 
end
end
end
Run1.MouseButton1Click:Connect(function()
if RUNNING then return notify("SCRIPT IS RUNNING!!") end
if REANIMATION then return notify("Reanimating please wait") end
if ReanimateVer=="Gelatek" then
if ws:FindFirstChild("GelatekReanimate") then
if ReanimateVer=="Gelatek" then
if ws:FindFirstChild("GelatekReanimate").Humanoid.Health==0.03500000014901161 then
MainScript()
Run1.Position = UDim2.new(10, 0, 0.629999971, 0)
RUNNING = true
else
notify("Wait for the health to be 0")
end
end
else
notif("Not Reanimated")
end
end
if ReanimateVer=="Current" then
if ws:FindFirstChild(Character1.Name.."_Fake") then
if ReanimateVer=="Current" then
if ws:FindFirstChild(Character1.Name.."_Fake") then
Run1.Position = UDim2.new(10, 0, 0.629999971, 0)
RUNNING = true
MainScript()
end
end
else
notify("Not Reanimated")
end
end
end)


Stop1.MouseButton1Click:Connect(function()
    if RUNNING then
        RUNNING = false
        local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = game:GetService("TweenService"):Create(CurrentFrame, tweenInfo, {Position = UDim2.new(0.385, 0, 1.15, 0)})
    Playsound:Stop()
    Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
    end
--[[    local player = game.Players.LocalPlayer
    if player.Character then
        local head = player.Character:FindFirstChild("Head")
        if head then
            local billboard = head:FindFirstChild("Test")
            if billboard then
                billboard:Destroy()
            end
        end
    end]]
    RUNNING = false
    RUNNING = false
    if STATES then 
        STATES:Disconnect()
        STATES = nil 
    end
    if Place == 17574618959 or Place == 88308889239232 then
      if ReanimateVer=="Gelatek" then 
        StopScript()
        wait(1)
        choot("-rs")
        end
        if ReanimateVer=="Current" then
          wait(1)
          for _,v in ipairs(ws:GetChildren()) do
            if v.Name==Character1.Name.."_Fake" then 
              v:Destroy()
              end
            end
          end
    else
        wait(1)
        respawn()
        wait(1)
        respawn()
    end
end)
