loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Tag"))()
if isfolder and not isfolder("KDV3") then 
	makefolder("KDV3")
end
if not isfolder("KRYSTALDANCE") then
        makefolder("KRYSTALDANCE")
end
local KDV3 = game:GetService("CoreGui")
if KDV3:FindFirstChild("KRYSTALDANCE") then
    KDV3.KRYSTALDANCE:Destroy()
end
local function notify(text,dur)
local Notify=game:GetService("StarterGui")
Notify:SetCore("SendNotification",{
Title="Krystal Dance V3";
Text=text;
Duration=5 or dur})
end
notify("KDV3 Made by Nitro-GT")
wait(.95)
notify("Fixed By MrY7zz")
wait(.95)
notify("Modded By Theo")
wait(.95)
notify("Credits goes to them!!!!")
wait(1)
notify('pls click "click me" first ty!!')
wait(2)




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
local corner1=Instance.new("UICorner",Run1)
local DANCEINFO=Instance.new("TextButton",ui)
corner2=Instance.new("UICorner",Stop1)
corner3=Instance.new("UICorner",Show)
corner4=Instance.new("UICorner",REANIMATE)
corner5=Instance.new("UICorner",DANCEINFO)

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

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
title.Text = "Modded By Theo"
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
ced.Text = "Krystal Dance V3"
ced.TextColor3 = Color3.new(1, 1, 1)
ced.TextScaled = true
ced.TextSize = 6
ced.TextWrapped = true

Show.Parent=ScreenGui
Show.Font="Arcade"
Show.Text="Disable"
Show.TextColor3=Color3.new(1,1,1)
Show.TextScaled=true
Show.TextSize=14
Show.Size=UDim2.new(0, 50, 0, 50)
Show.Position=UDim2.new(0, 0, 2, 0)
Show.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
ui.Visible=true 
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
        Show.Text = "Enable"
        
        tween.Completed:Connect(function()
            ui.Visible = false
            isTweening = false
        end)
    else
                ui.Visible = true
        local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = game:GetService("TweenService"):Create(ui, tweenInfo, {Position = originalUIPosition})
        tween:Play()
        Show.Text = "Disable"
        
        tween.Completed:Connect(function()
            isTweening = false
        end)
    end
end)

local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(Show, tweenInfo, {Position = UDim2.new(0, 0, .50, 0)})
tween:Play()
local CHECKF9=false
DANCEINFO.MouseButton1Click:Connect(function()
notify("Check Console!")
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
if CHECKF9 then return end
CHECKF9=true 
DANCEINFO.Text="Check Console"
print("------------------------------------------")
print("Q - RAT DANCE, PAGE 2 - XO, PAGE 3 - C14, PAGE 4 - UNLOCKIT")
print("E - BOOGIE, PAGE 2 - SODA POP, PAGE 3 - Slickback, PAGE 4 - SMOOTHMOVES")
print("R - ASSUMPTIONS, PAGE 2 - LOVE FOR YOU, PAGE 3 - DOODLE, PAGE 4 - LAGTRAIN")
print("T - EGYPT, PAGE 2 - ASSUMPTIONS SHUFFLE, PAGE 3 - GOAT, PAGE 4 - SUKI")
print("Y - DO THR FLOP, PAGE 2 - PEASHOOTER, PAGE 3 - BUMBLEBEE, PAGE 4 - CAFETERIA")
print("U - CARAMELLDANSEN, PAGE 2 - BLOODPOP, PAGE 3 - STOCK SHUFFLE, PAGE 4 - DARE")
print("P - BOMB MONKEY, PAGE 2 - INTERNET YAMERO, PAGE 3 - RAT DANCE 2, PAGE 4 - TENNA ")
print("F - HEEL TOE HOP, PAGE 2 - CHRONOSHIFT, PAGE 3 - SHUBA DUCK, PAGE 4 - INSANITY")
print("G - GANGNAM, PAGE 2 - IT BURNS, PAGE 3 - LEMON MELON COOKIE")
print("H - DOMINO, PAGE 2 - DISTRACTION DANCE, PAGE 3 - BIRDBRAIN")
print("J - STARLIT, PAGE 2 - KEEP UP, PAGE 3 - FEIN")
print("K - WALK, PAGE 2 - BOOMBOX, PAGE 3 - POPIPO")
print("L - GRIDDY, PAGE 2 - FIREWORK, PAGE 3 - PICKUP THE PHONE")
print("Z - LUX, PAGE 2 - TWO, PAGE 3 - SILLY BILLY")
print("X - KAZOTSKY KICK, PAGE 2 - HEAVY LOVE, PAGE 3 - ROTTEN")
print("C - MESMERIZER, PAGE 2 - MILLION, PAGE 3 - SPOOKY MONTH")
print("V - LIAR DANCER, PAGE 2 - BILLIE JEAN, PAGE 3 - LIMITED FLEXWORKS")
print("B - HAKARI, PAGE 2 - SAVOR THE W, PAGE 3 - UNLIMITED FLEXWORKS")
print("N - BOX SWING, PAGE 2 - LAY, PAGE 3 - CRISSCROSS")
print("M - CHANGE PAGES")
print("MINUS OR '-' - COMMERCIAL BREAK, PAGE 2 - CLUB PENGUIN, PAGE 3 - TORT")
print("COMMA OR ',' - STATIC, PAGE 2 - INTERNET YAMERO, PAGE 3 - BRAIN")
print("LEFTBRACKET OR '[' - EMOTIONAL PRISM, PAGE 2 - I WANNA RUNAWAY, PAGE 3 - ESPRESSO")
print("RIGHTBRACKET OR ']' - HEADLOCK, PAGE 2 - MIO HONDA, PAGE 3 - RAKUTEN")
print("EQUALS OR '=' TOGGLE BACKGROUND MUSIC WHEN NOT DANCING")
wait(1)
DANCEINFO.Text="Click me!"
CHECKF9=false
end)

local delfile = delfile or function(path)
    if isfile and isfile(path) then
        pcall(function()
            if syn and syn.io then
                syn.io.remove(path)
            else
                writefile(path, "")
            end
        end)
    end
end


local REANIMATION=false
REANIMATE.MouseButton1Click:Connect(function()
if REANIMATION then return end
if game:GetService("Players").LocalPlayer.Character.Name == "GelatekReanimate" then
return notify("ALREADY REANIMATED CUH") end
REANIMATION=true
Run1.Position = UDim2.new(100, 0, 0.629999971, 0)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-rs")
wait(2.15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Reanimate.lua"))()
wait(6.25)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-rs")
wait(2.15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Reanimate.lua"))()
wait(6.25)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
REANIMATION=false
wait(1)
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
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
                notify("Loaded from storage: "..Name)
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





local LOADTHEDANCE=false
wait(2)
if not LOADTHEDANCE then
LOADTHEDANCE=true
local Dance_01=AddDance("Hakari", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Hakari.lua")
wait(1)
Dance_02=AddDance("Prism", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Prism Shuffle.lua")
wait(1)
Dance_03=AddDance("Soda", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Soda Pop.lua")
wait(1)
Dance_04=AddDance("Headlock", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Headlock.lua")
wait(1)
Dance_05=AddDance("C14", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/C14.lua")
wait(1)
Dance_06=AddDance("Slickback", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Slickback.lua")
wait(1)
Dance_07=AddDance("Chronoshift", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Chronoshift.lua")
wait(1)
Dance_08=AddDance("BillieJean", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/BillieJean.lua")
wait(1)
Dance_09=AddDance("Rat1", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Rat1.lua")
wait(1)
Dance_10=AddDance("Egypt", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Egypt.lua")
wait(1)
Dance_11=AddDance("Liar", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Liar.lua")
wait(1)
Dance_12=AddDance("L4U", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Love4U.lua")
wait(1)
Dance_13=AddDance("Mesmerizer", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Mesmerizer.lua")
wait(1)
Dance_14=AddDance("Domino", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Domino.lua")
wait(1)
Dance_15=AddDance("Static", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Static.lua")
wait(1)
Dance_16=AddDance("HeelToeHop", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/HeelToeHop.lua")
wait(1)
Dance_17=AddDance("BombMonkey", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Bomb Monkey.lua")
wait(1)
Dance_18=AddDance("BoxSwing", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Box Swing.lua")
wait(1)
Dance_19=AddDance("Flop", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Flop.lua")
wait(1)
Dance_20=AddDance("Assumptions", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Assumptions.lua")
wait(1)
Dance_21=AddDance("Commercial", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Commercial.lua")
wait(1)
Dance_22=AddDance("Distraction", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Distraction.lua")
wait(1)
Dance_23=AddDance("ItBurns", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/It Burns.lua")
wait(1)
Dance_24=AddDance("Keep", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Keep Up.lua")
wait(1)
Dance_25=AddDance("Yamero", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Yamero.lua")
wait(1)
Dance_26=AddDance("Savor", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Savor.lua")
wait(1)
Dance_27=AddDance("Angel", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Angel.lua")
wait(1)
Dance_28=AddDance("ClubPenguin", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Club Penguin.lua")
wait(1)
Dance_29=AddDance("Firework", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Firework.lua")
wait(1)
Dance_30=AddDance("Runaway", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Runaway.lua")
wait(1)
Dance_31=AddDance("Miohonda", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Miohonda.lua")
wait(1)
Dance_32=AddDance("Rat2", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Rat2.lua")
wait(1)
Dance_33=AddDance("Stock", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Stock Shuffle.lua")
wait(1)
Dance_34=AddDance("Goat", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Goat.lua")
wait(1)
Dance_35=AddDance("Shuba", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Shuba Duck.lua")
wait(1)
Dance_36=AddDance("Bumblebee", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Bumblebee.lua")
wait(1)
Dance_37=AddDance("Popipo", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Popipo.lua")
wait(1)
Dance_38=AddDance("Fein", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Fein.lua")
wait(1)
Dance_39=AddDance("Birdbrain", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Birdbrain.lua")
wait(1)
Dance_40=AddDance("Billy", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Billy.lua")
wait(1)
Dance_41=AddDance("Spooky", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Spooky.lua")
wait(1)
Dance_42=AddDance("Pickup", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Pickup.lua")
wait(1)
Dance_43=AddDance("Limited", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Limited.lua")
wait(1)
Dance_44=AddDance("Flexworks", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Flexworks.lua")
wait(1)
Dance_45=AddDance("Doodle", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Doodle.lua")
wait(1)
Dance_46=AddDance("Cafeteria", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Cafeteria.lua")
wait(1)
Dance_47=AddDance("Unlockit", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Unlockit.lua")
wait(1)
Dance_48=AddDance("Suki", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Suki.lua")
wait(1)
Dance_48=AddDance("CrissCross", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/CrissCross.lua")
wait(1)
Dance_49=AddDance("Lagtrain", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Lagtrain.lua")
wait(1)
Dance_50=AddDance("Dare", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Dare.lua")
wait(1)
Dance_51=AddDance("Insanity", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Insanity.lua")
wait(1)
Dance_52=AddDance("SmoothMoves", "https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/SmoothMoves.lua")
Dance_53=AddDance("Tenna",
"https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Tenna.lua")
wait(1)
end


local timeposcur = 0 
local sound69 = Instance.new("Sound",game:GetService("RunService"))
sound69.Looped = true
sound69.Name = "danc"
sound69.Playing = true
sound69.Volume = .75
local exploit = "shitsploit"
        pcall(function()
            exploit = getexecutorname()
        end)
	local customasset = function(id)
        if exploit ~= "CaetSploit" then
        idwithoutthatbit= string.gsub(id,"KDV3/","")
        if not isfile(id) then 
         writefile(id,game:HttpGet("https://github.com/Solary-3/Scripts/tree/Audios-1"..idwithoutthatbit))
        end
       repeat task.wait() until isfile(id)
    end
        local s = Instance.new("Sound")
        s.Parent =game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        s.SoundId = getcustomasset(id)
        task.spawn(function()
            task.wait(1)
            s:Destroy()
        end)
        return s.SoundId
	end

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
    "million.mp3",
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
    "Birdbrain.mp3",
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
    "tort.mp3"
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
        if fileSize < 1024 then
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
        if fileSize > 1024 then
            return customasset(filePath)  
        else
            notify("Audio file is empty/corrupted: " .. file)
            return ""
        end
    else
        notify("File Not Found: " .. file)
        return ""
    end
end

local function Forcestop()
     sound69:Stop()
end
local char=game:GetService("Players").LocalPlayer.Character
local Character =char
local Humanoid = Character:WaitForChild("Humanoid")
local mode = 1 
local INPUTLOOP =nil
local STATES =nil
local SITTING=nil
local UPDATE=nil
local sprinting = false 
local uis = game:GetService("UserInputService")


local RUNNING = false
Run1.MouseButton1Click:Connect(function()
if RUNNING then return notify("SCRIPT IS RUNNING!!") end
if game:GetService("Players").LocalPlayer.Character.Name ~= "GelatekReanimate" then
return notify("REANIMATE FIRST CUH") end
Run1.Position = UDim2.new(10, 0, 0.629999971, 0)
RUNNING = true










-- Krystal Dance V3, Made by Hemi (es muy janky)
local lol = math.random(1,30)
if lol == 2 then 
	lol = true 
end
local idleanim = is:LoadLocalAsset("rbxassetid://74204337812128") -- uuid. 136078657506707
local walkanim = is:LoadLocalAsset("rbxassetid://73688515498572") -- uuid. 130213485744288
local sprintanim = is:LoadLocalAsset("rbxassetid://73688515498572") -- uuid. 119558526211035
local randompart = Instance.new("Part",game:GetService("RunService"))
local coolparticles = game:GetObjects("rbxassetid://87299663038091")[1].ParticleAttachment
coolparticles.Parent = randompart
local playbacktrack = true 
local script = Instance.new("LocalScript")
real = true
pcall(function()
	local OxideApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/somethingsimade/Utils/refs/heads/main/OxideApi"))()
	OxideApi.Notification("Krystal Dance V3, Made by Hemi, fixed by MrY7zz",10)
end)
local playanother = false
local playing = false
local dancing = false
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
local function kftotbl(kf) -- Below this is literal pain..
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
	seconds = (seconds < 0.000001) and 0.000001 or seconds -- absolute limit of roblox, anything below just crashes lol so this limits it so it doesnt crash

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
    
    if type(id) == "string" and full:FindFirstChild(id) then
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
	if loopsplaying>0 then 
		loopsplaying-=1
	end
	playanother = true 
	playanother = true 
	playanother = true 
	playanother = true 
	if dancing then
		sound69.PlaybackSpeed = 1
		if playbacktrack == true then 
            sound69:Stop()
			sound69.SoundId = DanceAsset("Sphere.mp3")
			sound69.Volume = .75
			sound69.TimePosition=timeposcur
		else 
			sound69:Stop()
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
            sound69.TimePosition=timeposcur
			sound69.SoundId = DanceAsset("Sphere.mp3")
			sound69.Volume = .75
			sound69:Play()
		end
		
		if walking == true and idle == false and char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and playanother==true then 
			task.spawn(function()
				playanim(74204337812128,1,false) -- uuid.
			end)
		end
	end
end


INPUTLOOP = uis.InputBegan:Connect(function(k,chatting)
	if char.Humanoid.Sit == true then return end
	if chatting then return end 
	local k = string.lower(string.gsub(tostring(k.KeyCode),"Enum.KeyCode.",""))
	if mode == 1 then 
		if k == "q" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("rat.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Rat1") -- uuid. 106353328250763
			else
				stopanim()
			end
		elseif k == "e" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("FunkedUp.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(122471664395501) -- uuid. 16769959846
			else
				stopanim()
				sound69.PlaybackSpeed = 1

			end
		elseif k == "r" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Assumptions.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Assumptions") -- uuid. 136962185637891
			else
				stopanim()
				sound69.PlaybackSpeed = 1

			end
		elseif k == "t" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Egypt.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Egypt") -- uuid. 130968726197789
			else
				stopanim()
				sound69.PlaybackSpeed = 1

			end
		elseif k == "y" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("DO THE FLOP.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Flop") -- uuid. 100864643591096
			else
				stopanim()
				sound69.PlaybackSpeed = 1

			end
		elseif k == "u" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("caramell.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(114964447248296) -- uuid. 103597509139287
			else
				stopanim()
				sound69.PlaybackSpeed = 1

			end
		elseif k == "f" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Heel.mp3")
				char.Humanoid.WalkSpeed = 4*char:GetScale()
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim('HeelToeHop')
			else
				stopanim()

			end
		elseif k == "g" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("gangnamm.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(133530633475679) -- uuid. 12438774071
			else
				stopanim()

			end
		elseif k == "p" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Monkey.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("BombMonkey")
			else
				stopanim()

			end
		elseif k == "j" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("dancingin.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(136139381223407) -- uuid. 96444866125796
			else
				stopanim()

			end
		elseif k == "k" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("dr.wav")
				char.Humanoid.WalkSpeed = 4*char:GetScale()
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(110403709064010,2) -- uuid. 12637912409
			else
				char.Humanoid.WalkSpeed = 14*char:GetScale()
				stopanim()

			end
		elseif k == "l" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("griddy.mp3")
				char.Humanoid.WalkSpeed = 4*char:GetScale()
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(114928062507098) -- uuid. 15704995372
			else
				char.Humanoid.WalkSpeed = 14*char:GetScale()
				stopanim()

			end
		elseif k == "z" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("lux.ogg")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(94534967284996) -- uuid. 15092317950
			else
				stopanim()

			end
		elseif k == "x" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("kazot.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(86634257330162,1) -- uuid. 114036336168567
			else
				stopanim()

			end
		elseif k == "h" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Domino.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Domino") -- impossible for now
			else
				stopanim()

			end
		elseif k == "v" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Liar.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Liar") -- uuid. 16361564081
			else
				stopanim()

			end

		elseif k == "c" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Mesmerizer.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Mesmerizer") -- uuid. 118766274919427
			else
				stopanim()

			end
		elseif k == "n" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Box.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("BoxSwing")
			else
				stopanim()

			end

		elseif k == "comma" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Static.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Static") -- uuid. 131401099812672
			else
				stopanim()

			end
		elseif k == "leftbracket" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Prism.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Prism")
			else
				stopanim()

			end
		elseif k == "rightbracket" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Headlock.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Headlock")
			else
				stopanim()

			end
		elseif k == "b" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("TUCA DONKA.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Hakari")
			else
				stopanim()

			end
		elseif k == "minus" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Break.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Commercial")
			else
				stopanim()

			end
		end
	end
	if mode == 2 then 
		if k == "q" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("XO.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(89807443968447) -- uuid. 73559770055600
			else
				stopanim()

			end 
		elseif k == "e" then
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Soda.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Soda") -- uuid. 100177280567649
			else
				stopanim()

			end 
		elseif k == "r" then
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("LoveForU.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("L4U") -- uuid. 101564911432113
			else
				stopanim()

			end 
		elseif k == "t" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("assum.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(129275138998868) -- uuid. 15705077587
			else
				stopanim()

			end
		elseif k == "y" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("balls.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(124616782933406) -- uuid. 15039779727
			else
				stopanim()

			end
		elseif k == "h" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Distraction.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Distraction")
			else
				stopanim()

			end
		elseif k == "g" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("ItBurns.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("ItBurns") -- uuid. 14887006269
			else
				stopanim()

			end
		elseif k == [[f]] then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("chronoshift.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Chronoshift") -- uuid. 125834337223799
			else
				stopanim()

			end
		elseif k == "j" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("KeepUp.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				coolparticles.Parent = char.Torso
				playanim("Keep") -- uuid. 93585895457618
			else
				stopanim()
				sound69.PlaybackSpeed = 1

			end
		elseif k == "k" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Boombox.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(92629504992703) -- uuid. 84471848998012
			else
				stopanim()

			end
		elseif k == "u" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("bloodpop.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(82472212108809) -- uuid. 132026285699359
			else
				stopanim()

			end
		elseif k == "n" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				playanim(91732165937556) -- uuid. 90819860436349
			else
				stopanim()

			end
		elseif k == "z" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("leftright.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(107261816578577) -- uuid. 137845929482571
			else
				stopanim()

			end    
		elseif k == "x" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("heavylove.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(101332118847458) -- uuid. 85856686932206
			else
				stopanim()

			end
		elseif k == "c" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("million.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(109123683211464)
			else
				stopanim()
			end
		elseif k == "v" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Bjean.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("BillieJean") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "b" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Savor.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Savor") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "p" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Yamero.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Yamero") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "comma" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("InternetAngel.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Angel") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "minus" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("CLUB PENGUIN DANCE.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("ClubPenguin") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "leftbracket" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Runaway.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Runaway") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "rightbracket" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("MioHonda.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Miohonda") -- uuid. 118311613925473
			else
				stopanim()
			end
		elseif k == "l" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Firework.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play(Firework)
				playanim("Firework") -- uuid. 118311613925473
			else
				stopanim()
			end
		end 
	end
	if mode == 3 then 
		if k == "q" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("C14.mp3")
				timeposcur = sound69.TimePosition  
				sound69:Play()
				playanim("C14") -- uuid. 72723551972407
			else
				stopanim()
			end
		elseif k == "e" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Slickback.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Slickback") -- uuid. 90069083924245
			else
				stopanim()
			end
		elseif k == "r" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Doodle.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Doodle") -- uuid. 13357063395
			else
				stopanim()
			end
		elseif k == "t" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Goat.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Goat") -- uuid. 87342159331194
			else
				stopanim()
			end
		elseif k == "y" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Bumblebee.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Bumblebee") -- uuid. 18985726113
			else
				stopanim()
			end
		elseif k == "u" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Stock.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Stock") -- uuid. 8915458946
			else
				stopanim()
			end
		elseif k == "p" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("rat.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Rat2") -- uuid. 8915458946
			else
				stopanim()
			end
		elseif k == "f" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Shuba Duck.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Shuba") -- uuid. 79630525228564
			else
				stopanim()
			end
		elseif k == "g" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Lemon.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(138510336377177,.8) -- uuid. 120262284704633
			else
				stopanim()
			end
		elseif k == "h" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Birdbrain.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Birdbrain") -- uuid. 84471848998012
			else
				stopanim()
			end
		elseif k == "j" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Fein.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Fein") -- uuid. 13357063395
			else
				stopanim()
			end
		elseif k == "k" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Popipo.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Popipo") -- uuid. 13357063395
			else
				stopanim()
			end
		elseif k == "l" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Pickup.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Pickup") -- uuid. 13357063395
			else
				stopanim()
			end
		elseif k == "z" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Billy.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Billy") -- uuid. 15705077587
			else
				stopanim()
			end
		elseif k == "x" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("rotten.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(89457637802764,2) -- uuid. 109990576374190
			else
				stopanim()
			end
		elseif k == "c" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Spooky.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Spooky") -- uuid. 84587788869282
			else
				stopanim()
			end
		elseif k == "v" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("JK.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Limited") -- uuid. 100305033962391
			else
				stopanim()
			end
		elseif k == "b" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Flexworks.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Flexworks") -- uuid. 71723925114737
			else
				stopanim()
			end
		elseif k == "n" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = customasset("CrissCross.mp3")
				sound69.PlaybackSpeed = 1
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(109275255555630) -- uuid. 136962185637891
			else
				stopanim()
			end
		elseif k == "comma" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("brain.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(93547721311170) -- uuid. 71723925114737
			else
				stopanim()
			end
		elseif k == "leftbracket" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("espresso.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(87342159331194) -- uuid. 71723925114737
			else
				stopanim()
			end
		elseif k == "rightbracket" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("rakuten.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(121967347012647) -- uuid. 71723925114737
			else
				stopanim()
			end
		elseif k == "minus" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("tort.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim(99811468921857) -- uuid. 71723925114737
			else
				stopanim()
			end
		end 
	end
	if mode == 4 then
			if k == "q" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Unlockit.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Unlockit") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "e" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("SmoothMoves.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("SmoothMoves") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "r" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Lagtrain.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Lagtrain") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "t" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Suki.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Suki") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "y" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Cafeteria.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Cafeteria") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "u" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Dare.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Dare") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "p" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Tenna.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Tenna") -- uuid. 71723925114737
			else
				stopanim()
			end
			elseif k == "f" then 
			if dancing == false then 
				stopanim()
				dancing = true
				task.wait(.005)
				sound69.SoundId = DanceAsset("Insanity.mp3")
				timeposcur = sound69.TimePosition 
				sound69:Play()
				playanim("Insanity") -- uuid. 71723925114737
			else
				stopanim()
			end
		end
	end
	if k == "equals" then 
		playbacktrack = not playbacktrack
		if dancing == false then 
			if playbacktrack == true then 
				sound69:Play()
				sound69.Volume = .75
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Krystal Dance V3";
					Duration = 5;
					Text = "Background music enabled"
				})
			else 
				sound69:Stop()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Krystal Dance V3";
					Duration = 5;
					Text = "Background music disabled"
				})
			end
		end
	end
	if k == "leftcontrol" then 
		sprinting = not sprinting
	end
if k == "m" then  --Modes
    if mode == 3 then 
mode = 4

  game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 4"
})
elseif mode == 2  then
    mode = 3 
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 3"
})
elseif mode == 1 then
        mode = 2 
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 2"
})
elseif mode == 4  then 
    mode = 1
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 1"
})
    end
end
end)








STATES=char.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
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
					playanim(130213485744288,2.2,false,sprintanim)
				end
			end
		end
	end
end)
SITTING=char.Humanoid:GetPropertyChangedSignal("Sit"):Connect(function()
	print("sit")
	if char.Humanoid.Sit == true then 
		stopanim()

		math.randomseed(os.clock())
		if math.random(1,2) == 1 then 
			playanim(133312100962627,1,false)
		else 
			playanim(122775909441631,1,false)
		end
	else 
		stopanim()
		task.wait(.05)
		stopanim()
		char.Humanoid:Move(Vector3.new(0,0,-1),true)
		char.Humanoid:Move(Vector3.new(0,0,-1),true)
		char.Humanoid:Move(Vector3.new(0,0,-1),true)
	end
end)

local RunService = game:GetService("RunService")
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
introsound = Instance.new("Sound",Root)
introsound.SoundId = "rbxassetid://236146895"
introsound.Volume = 1
introsound:Play()
bigfedora = Instance.new("Part",Character)
bigfedora.Size = Vector3.new(2,2,2)
bigfedora.CFrame = bigfedora.CFrame:inverse() * Root.CFrame * CFrame.new(math.random(-60,60),-.2,math.random(-60,60)) * CFrame.Angles(0,math.rad(math.random(-180,180)),0)
bigfedora.CanCollide = false
bigfedora.Anchored = true
bigfedora.Name = "mbigf"
mbigfedora = Instance.new("SpecialMesh", bigfedora)
mbigfedora.MeshType = "FileMesh"
mbigfedora.Scale = Vector3.new(5, 5, 5)
mbigfedora.MeshId,mbigfedora.TextureId = 'http://www.roblox.com/asset/?id=1125478','http://www.roblox.com/asset/?id=1125479'
for i = 1, 60 do
	bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(Root.Position) * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.09)
	task.wait(1/60)
end
wait(.25)
for i = 1, 50 do
	bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(char.Head.Position),.05)
	task.wait(1/60)
end
zmc = 0
for i = 1, 29 do
	zmc = zmc + 2
	mbigfedora.Scale = mbigfedora.Scale - Vector3.new(.25,.25,.25)
	bigfedora.CFrame = bigfedora.CFrame * CFrame.Angles(math.rad(0),math.rad(zmc),0)
	task.wait(1/60)
end
bigfedora:Remove()
local nim= 0
char.Humanoid.Died:Connect(function()
	sound69.PlaybackSpeed = 0
	sound69.Parent = nil 
	sound69.Volume = 0
end)
local hum = char.Humanoid
local cf = CFrame.new
local DIEDLOOP 
local HEADLOOP
repeat 
	char.Humanoid:Move(Vector3.new(0,0,-1),true)
	task.wait(1/60)
	nim=nim+1
until nim==3
UPDATE=RunService.RenderStepped:Connect(function(deltaTime: number)
	local function Alpha(n)
		return math.clamp(n*deltaTime*60,0,1)
	end
	hum.CameraOffset =  hum.CameraOffset:Lerp((hrp.CFrame*cf(0,1.5,0)):PointToObjectSpace(h.Position),Alpha(.15))
	if IsAllowedState  and dancing == false then
		local HeadPosition = Head.Position
		if Neck then
			local MousePos = PlayerMouse.Hit.Position
			local TranslationVector = (HeadPosition - MousePos).Unit
			local Pitch = atan(TranslationVector.Y)
			local Yaw = TranslationVector:Cross(Torso.CFrame.LookVector).Y
			local Roll = atan(Yaw)

			local NeckCFrame
			if IsR6 then
				NeckCFrame = CFrame.Angles(Pitch, 0, Yaw)
			else
			   	NeckCFrame = CFrame.Angles(-Pitch * 0.5, Yaw, -Roll * 0.5)				
			   	local waistCFrame = CFrame.Angles(-Pitch * 0.5, Yaw * 0.5, 0)
			   	Waist.C0 = Waist.C0:Lerp(WaistOriginC0 * waistCFrame, updatesPerSecond * deltaTime)
			end			
			Neck.C0 = Neck.C0:Lerp(NeckOriginC0 * NeckCFrame, updatesPerSecond * deltaTime)
		end
	elseif dancing == true then 
	   	Neck.C0 = oldC0N
	end	
	if char.Humanoid.MoveDirection == Vector3.new(0,0,0) then 
		walking = false 
		idle = true 
	else 
		walking = true 
		idle = false 
	end
end)


end)


Stop1.MouseButton1Click:Connect(function()
if RUNNING then
RUNNING=false
Forcestop()
Run1.Position = UDim2.new(0, 0, 0.629999971, 0)
if UPDATE then
     UPDATE:Disconnect()
     UPDATE=nil
end
if STATES then 
     STATES=nil 
end
if SITTING then
     SITTING=nil
end 
if INPUTLOOP then
     INPUTLOOP:Disconnect()
     INPUTLOOP=nil
end
if sprinting then
     sprinting=false
end
end
wait(1)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-rs")
end)
