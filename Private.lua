

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Global = (getgenv and getgenv()) or shared



--[[Nice Try You Skididdy]]--
local Window = Rayfield:CreateWindow({
   Name = "Just A Baseplate",
   LoadingTitle = "Just A Baseplate",
   LoadingSubtitle = "By Theo/Paradigm",
   Theme = "Serenity", 
   ToggleUIKeybind = "K", 
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "JustABaseplate", 
      FileName = "Config"
   },
   KeySystem = false,
   

})
local ReadTab = Window:CreateTab("READ", nil)
local Paragraph = ReadTab:CreateParagraph({Title = "PLEASE READ BEFORE READING BELLOW!:", Content = "I DO NOT OWN THE SCRIPTS THAT ARE INSIDE THIS SCRIPT!! I ONLY CONFIGURED THEM!! ALL CREDITS GOES TO THE RESPECTIVE OWNERS OF THE SCRIPTS!!. THOSE WHO GATEKEEP OR CLAIM THAT THEY OWN THE HUB, FUCK YOU AND GET A LIFE"})
local Divider = ReadTab:CreateDivider()
local Paragraph1 = ReadTab:CreateParagraph({Title = "How to use this hub🤔", Content = " If Your gonna use genesis, go to the hats and rigs tab, same as the achromatics and neko!!, once your done loading the hats and rigs, head to the Main tab and execute the scripts there!!"})


local HomeTab = Window:CreateTab("Home", nil) -- Title, Image
local HomeSection = HomeTab:CreateSection("Main")

local Paragraph = HomeTab:CreateParagraph({Title = "Just A Baseplate Hub By Theo/Paradigm", Content = "This Was Made on 06/13/25!"})
local Paragraph1 = HomeTab:CreateParagraph({Title = "CHANGELOGS:", Content =
"Replaced some of the reanimation on some scripts with gelatek reanimation to prevent hats and your body from flying away"})
local Divider = HomeTab:CreateDivider()
local Button = HomeTab:CreateButton({
   Name = "Sit",
   Callback = function()
       game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-sit")
   end,
})
local Button1 = HomeTab:CreateButton({
   Name = "Boost Fps",
   Callback = function()
 
   local ToDisable = {
    VisualEffects = true,
    Parts = true,
    Particles = true,
    Sky = true
}

local ToEnable = {
    FullBright = true
}

local Stuff = {}

for _, v in next, game:GetDescendants() do
    if ToDisable.Parts then
        if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Particles then
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
            v.Enabled = false
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.VisualEffects then
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Sky then
        if v:IsA("Sky") then
            v.Parent = nil
            table.insert(Stuff, 1, v)
        end
    end
end

game:GetService("TestService"):Message("Effects Disabler Script: Successfully disabled "..#Stuff.." assets/effects. Settings:")

for i, v in next, ToDisable do
    print(tostring(i)..": "..tostring(v))
end

if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")

    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 5
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
end

   end,
})
local Button2 = HomeTab:CreateButton({
   Name = "Serverhop",
   Callback = function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end


Teleport()
end,
})

local Slider = HomeTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {16, 350},
   Increment = 1,
   Suffix = "Walkspeed",
   CurrentValue = 16,
   Flag = "sliderws", 
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = HomeTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {50, 400},
   Increment = 1,
   Suffix = "Jump Power",
   CurrentValue = 50,
   Flag = "sliderjp", 
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
local Input = HomeTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})
local Toggle = HomeTab:CreateToggle({
   Name = "Dark Mode",
   CurrentValue = false,
   Flag = "DM", 
   Callback = function(DM)
   if (DM) then
Window.ModifyTheme {
    TextColor = Color3.fromRGB(255, 255, 255),

    Background = Color3.fromRGB(0, 0, 0),
    Topbar = Color3.fromRGB(0, 0, 0),
    Shadow = Color3.fromRGB(0, 0, 0),

    NotificationBackground = Color3.fromRGB(0, 0, 0),
    NotificationActionsBackground = Color3.fromRGB(0, 0, 0),

    TabBackground = Color3.fromRGB(0, 0, 0),
    TabStroke = Color3.fromRGB(255, 255, 255),
    TabBackgroundSelected = Color3.fromRGB(255, 255, 255),
    TabTextColor = Color3.fromRGB(255, 255, 255),
    SelectedTabTextColor = Color3.fromRGB(0, 0, 0),

    ElementBackground = Color3.fromRGB(15, 15, 15),
    ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
    SecondaryElementBackground = Color3.fromRGB(0, 0, 0),
    ElementStroke = Color3.fromRGB(150, 150, 150),
    SecondaryElementStroke = Color3.fromRGB(255, 255, 255),
            
    SliderBackground = Color3.fromRGB(255, 255, 255),
    SliderProgress = Color3.fromRGB(0, 0, 0),
    SliderStroke = Color3.fromRGB(255, 255, 255),

    ToggleBackground = Color3.fromRGB(0, 0, 0),
    ToggleEnabled = Color3.fromRGB(255, 255,255),
    ToggleDisabled = Color3.fromRGB(255, 255, 255),
    ToggleEnabledStroke = Color3.fromRGB(0, 0, 0),
    ToggleDisabledStroke = Color3.fromRGB(0, 0, 0),
    ToggleEnabledOuterStroke = Color3.fromRGB(0, 0, 0),
    ToggleDisabledOuterStroke = Color3.fromRGB(0, 0, 0),

    DropdownSelected = Color3.fromRGB(100, 0, 255),
    DropdownUnselected = Color3.fromRGB(0, 0, 0),

    InputBackground = Color3.fromRGB(0, 0, 0),
    InputStroke = Color3.fromRGB(255, 255, 255),
    PlaceholderColor = Color3.fromRGB(255, 25, 255)
}
elseif true then
Window.ModifyTheme('Serenity')
end
   end,
})







local ThemesSection = HomeTab:CreateSection("Themes Section")
local Button2 = HomeTab:CreateButton({
   Name = "Ocean",
   Callback = function()
   Window.ModifyTheme('Ocean')
end,
})
local Button3 = HomeTab:CreateButton({
   Name = "Bloom",
   Callback = function()
   Window.ModifyTheme('Bloom')
end,
})
local Button4 = HomeTab:CreateButton({
   Name = "Dark Blue",
   Callback = function()
   Window.ModifyTheme('DarkBlue')
end,
})
local Button5 = HomeTab:CreateButton({
   Name = "Amethyst",
   Callback = function()
   Window.ModifyTheme('Amethyst')
end,
})
local Button6 = HomeTab:CreateButton({
   Name = "Serenity",
   Callback = function()
   Window.ModifyTheme('Serenity')
end,
})

local CustomThemesSection = HomeTab:CreateSection("Custon Themes Section")
local Button7 = HomeTab:CreateButton({
   Name = "Outer Space",
   Callback = function()
   Window.ModifyTheme {
    TextColor = Color3.fromRGB(255, 255, 255),

    Background = Color3.fromRGB(0, 0, 0),
    Topbar = Color3.fromRGB(0, 0, 0),
    Shadow = Color3.fromRGB(0, 0, 0),

    NotificationBackground = Color3.fromRGB(0, 0, 0),
    NotificationActionsBackground = Color3.fromRGB(100, 0, 255),

    TabBackground = Color3.fromRGB(0, 0, 0),
    TabStroke = Color3.fromRGB(100, 0, 255),
    TabBackgroundSelected = Color3.fromRGB(50, 0, 132.5),
    TabTextColor = Color3.fromRGB(255, 255, 255),
    SelectedTabTextColor = Color3.fromRGB(255, 255, 255),

    ElementBackground = Color3.fromRGB(15, 15, 15),
    ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
    SecondaryElementBackground = Color3.fromRGB(0, 0, 0),
    ElementStroke = Color3.fromRGB(150, 150, 150),
    SecondaryElementStroke = Color3.fromRGB(255, 255, 255),
            
    SliderBackground = Color3.fromRGB(75, 0, 200),
    SliderProgress = Color3.fromRGB(50, 0, 255),
    SliderStroke = Color3.fromRGB(75, 0, 255),

    ToggleBackground = Color3.fromRGB(100, 0, 255),
    ToggleEnabled = Color3.fromRGB(255, 255,255),
    ToggleDisabled = Color3.fromRGB(255, 255, 255),
    ToggleEnabledStroke = Color3.fromRGB(0, 0, 0),
    ToggleDisabledStroke = Color3.fromRGB(0, 0, 0),
    ToggleEnabledOuterStroke = Color3.fromRGB(0, 0, 0),
    ToggleDisabledOuterStroke = Color3.fromRGB(0, 0, 0),

    DropdownSelected = Color3.fromRGB(100, 0, 255),
    DropdownUnselected = Color3.fromRGB(0, 0, 0),

    InputBackground = Color3.fromRGB(0, 0, 0),
    InputStroke = Color3.fromRGB(100, 0, 255),
    PlaceholderColor = Color3.fromRGB(100, 0, 255)
}
end,
})
local Button8 = HomeTab:CreateButton({
   Name = "Outer Space[Red]",
   Callback = function()
   Window.ModifyTheme {
    TextColor = Color3.fromRGB(255, 255, 255),

    Background = Color3.fromRGB(0,0, 0),
    Topbar = Color3.fromRGB(0, 0, 0),
    Shadow = Color3.fromRGB(0, 0, 0),

    NotificationBackground = Color3.fromRGB(0, 0, 0),
    NotificationActionsBackground = Color3.fromRGB(100, 0, 255),

    TabBackground = Color3.fromRGB(0, 0, 0),
    TabStroke = Color3.fromRGB(255, 0, 0),
    TabBackgroundSelected = Color3.fromRGB(135.5, 0, 0),
    TabTextColor = Color3.fromRGB(255, 255, 255),
    SelectedTabTextColor = Color3.fromRGB(255, 255, 255),

    ElementBackground = Color3.fromRGB(15, 15, 15),
    ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
    SecondaryElementBackground = Color3.fromRGB(0, 0, 0),
    ElementStroke = Color3.fromRGB(150, 0, 0),
    SecondaryElementStroke = Color3.fromRGB(255, 0, 0),
            
    SliderBackground = Color3.fromRGB(0, 0, 0),
    SliderProgress = Color3.fromRGB(255, 0, 0),
    SliderStroke = Color3.fromRGB(255, 0, 0),

    ToggleBackground = Color3.fromRGB(130, 0, 0),
    ToggleEnabled = Color3.fromRGB(130, 0, 0),
    ToggleDisabled = Color3.fromRGB(120, 0, 0),
    ToggleEnabledStroke = Color3.fromRGB(140, 0, 0),
    ToggleDisabledStroke = Color3.fromRGB(70, 0, 0),
    ToggleEnabledOuterStroke = Color3.fromRGB(70, 0, 0),
    ToggleDisabledOuterStroke = Color3.fromRGB(40, 0, 0),

    DropdownSelected = Color3.fromRGB(255, 0, 0),
    DropdownUnselected = Color3.fromRGB(0, 0, 0),

    InputBackground = Color3.fromRGB(0, 0, 0),
    InputStroke = Color3.fromRGB(255, 0, 0),
    PlaceholderColor = Color3.fromRGB(255, 0, 0)
}
end,
})
local Button9 = HomeTab:CreateButton({
Name = "Outer Space[Blue]",
   Callback = function()
   Window.ModifyTheme {
    TextColor = Color3.fromRGB(255, 255, 255),

    Background = Color3.fromRGB(0,0, 0),
    Topbar = Color3.fromRGB(0, 0, 0),
    Shadow = Color3.fromRGB(0, 0, 0),

    NotificationBackground = Color3.fromRGB(0, 0, 0),
    NotificationActionsBackground = Color3.fromRGB(0, 0, 125),

    TabBackground = Color3.fromRGB(0, 0, 0),
    TabStroke = Color3.fromRGB(0, 0, 255),
    TabBackgroundSelected = Color3.fromRGB(0, 0, 132.5),
    TabTextColor = Color3.fromRGB(255, 255, 255),
    SelectedTabTextColor = Color3.fromRGB(255, 255, 255),

    ElementBackground = Color3.fromRGB(15, 15, 15),
    ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
    SecondaryElementBackground = Color3.fromRGB(0, 0, 0),
    ElementStroke = Color3.fromRGB(0, 0, 150),
    SecondaryElementStroke = Color3.fromRGB(0, 0, 255),
            
    SliderBackground = Color3.fromRGB(0, 0, 0),
    SliderProgress = Color3.fromRGB(0, 0, 255),
    SliderStroke = Color3.fromRGB(0, 0, 255),

    ToggleBackground = Color3.fromRGB(0, 0, 130),
    ToggleEnabled = Color3.fromRGB(0, 0, 255),
    ToggleDisabled = Color3.fromRGB(0, 0, 120),
    ToggleEnabledStroke = Color3.fromRGB(0, 0, 140),
    ToggleDisabledStroke = Color3.fromRGB(0, 0, 120),
    ToggleEnabledOuterStroke = Color3.fromRGB(0, 0, 120),
    ToggleDisabledOuterStroke = Color3.fromRGB(0, 0, 90),

    DropdownSelected = Color3.fromRGB(0, 0, 255),
    DropdownUnselected = Color3.fromRGB(0, 0, 0),

    InputBackground = Color3.fromRGB(0, 0, 0),
    InputStroke = Color3.fromRGB(0, 0, 255),
    PlaceholderColor = Color3.fromRGB(0, 0, 255)
}
end,
})
local Button10 = HomeTab:CreateButton({
   Name = "Blue And Yellow",
   Callback = function()
   Window.ModifyTheme {
    TextColor = Color3.fromRGB(0, 0,0),

    Background = Color3.fromRGB(255, 255, 125),
    Topbar = Color3.fromRGB(125, 255, 255),
    Shadow = Color3.fromRGB(200, 200, 200),

    NotificationBackground = Color3.fromRGB(230, 230, 125),
    NotificationActionsBackground = Color3.fromRGB(100, 0, 255),

    TabBackground = Color3.fromRGB(210, 210, 100),
    TabStroke = Color3.fromRGB(0, 255, 255),
    TabBackgroundSelected = Color3.fromRGB(125, 230, 230),
    TabTextColor = Color3.fromRGB(0, 0, 0),
    SelectedTabTextColor = Color3.fromRGB(0, 0, 0),

    ElementBackground = Color3.fromRGB(245, 245, 115),
    ElementBackgroundHover = Color3.fromRGB(125, 255, 255),
    SecondaryElementBackground = Color3.fromRGB(245, 245, 115),
    ElementStroke = Color3.fromRGB(115, 245, 245),
    SecondaryElementStroke = Color3.fromRGB(125, 245, 245),
            
    SliderBackground = Color3.fromRGB(0, 200, 200),
    SliderProgress = Color3.fromRGB(0, 255, 255),
    SliderStroke = Color3.fromRGB(230, 230,75),

    ToggleBackground = Color3.fromRGB(220, 220, 65),
    ToggleEnabled = Color3.fromRGB(125, 255, 255),
    ToggleDisabled = Color3.fromRGB(255,255, 125),
    ToggleEnabledStroke = Color3.fromRGB(255, 255, 125),
    ToggleDisabledStroke = Color3.fromRGB(125, 255, 255),
    ToggleEnabledOuterStroke = Color3.fromRGB(125, 255, 255),
    ToggleDisabledOuterStroke = Color3.fromRGB(255, 255, 125),

    DropdownSelected = Color3.fromRGB(125, 255, 255),
    DropdownUnselected = Color3.fromRGB(255, 255, 125),

    InputBackground = Color3.fromRGB(125, 255, 255),
    InputStroke = Color3.fromRGB(100, 0, 255),
    PlaceholderColor = Color3.fromRGB(100, 0, 255)
}
end,
})





local MainTab = Window:CreateTab("Main", nil)
local KrystalDanceSection = MainTab:CreateSection("Krystal Dance V3")
local Input = MainTab:CreateInput({
   Name = "Dance Speed [Theo Version]",
   CurrentValue = "1.5",
   PlaceholderText = "1-10",
   RemoveTextAfterFocusLost = false,
   Callback = function(Speed)
        
   end,
})
Rayfield:LoadConfiguration(KDV3)
local Button1 = MainTab:CreateButton({
   Name = "Krystal Dance V3, Modded By Theo",
   Callback = function(A)
_G.Speed = (Speed)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Kdv3.lua"))()
   end,
})
local Button12 = MainTab:CreateButton({
Name = "Krystal Dance V3, Modded By Sonixdev",
   Callback = function(A)
loadstring(game:HttpGet("https://raw.githubusercontent.com/sparezirt/Script/refs/heads/main/.github/workflows/JustABaseplate.lua"))()
end,
})

local GenesisSection = MainTab:CreateSection("Genesis")
local Button2 = MainTab:CreateButton({
   Name = "Genesis Neptunian V",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd") loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()  
   end,
})

local Button3 = MainTab:CreateButton({
   Name = "Genesis Sniper",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
        --[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = false --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = false --highlight fling
discharscripts = true --disable character scripts
flingchangestate = false--fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()

--==========================================================================================================================--


   end,
})
local Button4 = MainTab:CreateButton({
   Name = "Genesis Sin Dragon",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
 --[[ Sin Dragon
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--===================================--
--=         Script Options          =--
--===================================--

transparent = true --toggle clientsided parts (dragon head, claws, etc)
effects = true --toggle clientsided effects (punch effect, laser effect, etc), set this to false if you use an emulator and you are lagging

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = false --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sin%20Dragon"))()

--==========================================================================================================================--
   end,
})
local Button5 = MainTab:CreateButton({
   Name = "Genesis Goner",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
 --[[ Goner
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Goner"))()

--==========================================================================================================================--
   end,
})
local Button6 = MainTab:CreateButton({
   Name = "Genesis Ban Hammer",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
--[[ Banhammer 
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = false --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()

--==========================================================================================================================--
   end,
})
local MainSection = MainTab:CreateSection("Other")

local Button7 = MainTab:CreateButton({
   Name = "FE Neko",
   Callback = function(A) 
  loadstring(game:HttpGet("https://pastefy.app/gHRJrLLX/raw"))()
end,
})

local Button8 = MainTab:CreateButton({
   Name = "Achromoonic",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(.1)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(2.150)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/achromoonic edit.luau"))()
end,
})

local Button9 = MainTab:CreateButton({
   Name = "Achromatix",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(.1)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(2.150)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Achromatix_V6-1.lua"))()
end,
})

local Button10= MainTab:CreateButton({
   Name = "Encription Glitcher",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(.1)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(2.150)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Encription%20Glitcher.lua"))()
   end,
})

local Button11 = MainTab:CreateButton({
   Name = "Achromatic V5",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(.1)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(2.150)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/achromatic%20v5%20edited%20yes.luau"))()
end,
})

local NebulaDivider1 = MainTab:CreateDivider()
local NebulaInput = MainTab:CreateInput({
   Name = "Nebula Wings",
   CurrentValue = "18334257663 18335331660",
   PlaceholderText = "Insert ID",
   RemoveTextAfterFocusLost = false,
   Callback = function(Nebula)
     local Neb = (Nebula)
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh "..tostring(Neb))
   end,
})
local NebulaExampleButton = MainTab:CreateButton({
   Name = "Reload Example ID",
   Callback = function() 
  NebulaInput:Set("18334257663 18335331660")
   end,
})
local NebulaButton = MainTab:CreateButton({
   Name = "Reload",
   Callback = function() 
  NebulaInput:Set("")
   end,
})
local Button12 = MainTab:CreateButton({
   Name = "Nebula Glitcher",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(3)


loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Reanimate.lua"))()
loadstring(game:HttpGet("https://pastebin.com/raw/j09BnGB3"))()
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Those who claims its your script, i dont like you.")
end,
})




----================----
local ExecutorsTab = Window:CreateTab("Executors", nil) -- Title, Image


local ExecutorsParagraph = ExecutorsTab:CreateParagraph({Title = "IMPORTANT", Content = "Some executors takes time to load, so be patient"})
local ExecutorsDivider = ExecutorsTab:CreateDivider()
local Button1 = ExecutorsTab:CreateButton({
   Name = "Codex",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Codex.lua"))()
   end,
})

local Button2 = ExecutorsTab:CreateButton({
   Name = "Delta",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Delta.lua"))()
   end,
})
local Button3  = ExecutorsTab:CreateButton({
   Name = "Appleware",
   Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AppleWare-Executor-Ui-33190"))()
   end,
})




----================----
local HatsTab = Window:CreateTab("Hats And Rigs", nil)
local PDParagraph = HatsTab:CreateParagraph({Title = "PermDeath", Content = "Click The button below so you wont get invisible to everyone else's screen"})
local PDButton  = HatsTab:CreateButton({
   Name = "PermDeath For Genesis",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd") 
   end,
})

local RemoveHatsButton = HatsTab:CreateButton({
   Name = "Remove Hats",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-ch")
  task.wait(2.250)
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-rs")
   end,
})
local RemoveHatsDivider1 = HatsTab:CreateDivider()
local HatsParagraph = HatsTab:CreateParagraph({Title = "IMPORTANT!", Content = "It is important that you should always load the rigs for genesis so everyone can see you"})
local Button  = HatsTab:CreateButton({
   Name = "Genesis Rigs",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 138364679836274 82942681251131 140395948277978 102599402682100 90960046381276 13058406993") 
   end,
})
local Divider1 = HatsTab:CreateDivider()
local Paragraph1 = HatsTab:CreateParagraph({Title = "Custom", Content = "Here You can load custom Genesis hats or custom neko🤔, if you want custom hats for genesis, consider looking it at the Foundations game."})

local Input = HatsTab:CreateInput({
   Name = "Custom!",
   CurrentValue = "",
   PlaceholderText = "Input Your ID Here!",
   RemoveTextAfterFocusLost = false,
   Callback = function(ID)
   local Custom = (ID)
         game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh "..tostring(Custom))
   end,
})
local customButton = HatsTab:CreateButton({
   Name = "Reload",
   Callback = function() 
  Input:Set("")
   end,
})



local Divider2 = HatsTab:CreateDivider()
local Button2  = HatsTab:CreateButton({
   Name = "Neptunian V",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 5316479641 ")
   end,
})

local Button3 = HatsTab:CreateButton({
   Name = "Sniper",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 5168118559 4504231783")
   end,
})

local Button4 = HatsTab:CreateButton({
   Name = "Sin Dragon",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBGeneral:SendAsync("-gh 117186631495734 99965319383570 132770514241770 3756389957 14864581977  150381051 4504231783")
   end,
})

local Button5 = HatsTab:CreateButton({
   Name = "Goner",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 17770317484 17822722698 17822749561 17772174303 17835236579")
   end,
})

local Button6 = HatsTab:CreateButton({
   Name = "Ban Hammer",
   Callback = function() 
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 15548314241")
   end,
})

local OthersSection = HatsTab:CreateSection("Others")


local Button7 = HatsTab:CreateButton({
   Name = "Neko",
   Callback = function() 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 77917993519250 85116979996842 92063324591630 98341593609358 113853274176516 77672223870158 15320850378 14131279465 108224319902592 82404150383568 72453363936733 12652350571 104171310829757") 
task.wait(2.250)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 77168546665148 136057321928717 120250605827304 97686460219356")
   task.wait(3.950)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(2.250)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
   end,
})

local Button8 = HatsTab:CreateButton({
   Name = "Glitchers",
   Callback = function() 
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 4820152700 4524991457 4794315940 4506945409 4458601937 4315489767 4623728953 5030789687 4773883146 4773932088 4855847190 4932541287")
   end,
})








-----==============-----
local HubsTab = Window:CreateTab("Hubs", nil) -- Title, Image

local Button = HubsTab:CreateButton({
   Name = "Gelatek Hub",
   Callback = function() 
   -- https://scriptblox.com/script/Universal-Script-Gelatek-hub-26438l9cal

loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/Main.lua"))()
   end,
})
local Button1 = HubsTab:CreateButton({
    Name = "Fire X Hub V2",
    Callback = function()
loadstring("\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\48\49\95\115\101\114\118\101\114\34\41\32\116\104\101\110\32\114\101\116\117\114\110\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101\34\41\58\84\101\108\101\112\111\114\116\40\49\55\53\55\52\54\49\56\57\53\57\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\41\32\101\110\100\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\116\121\114\101\108\116\114\105\106\111\47\102\105\114\101\47\109\97\105\110\47\102\105\114\101\34\41\41\40\41\10")()
end,
})


-----==============-----
local OthersTab = Window:CreateTab("Others", nil) -- Title, Image

local Button = OthersTab:CreateButton({
   Name = "Pshade Ultimate",
   Callback = function() 
 loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
end,
})

local Button1 = OthersTab:CreateButton({
   Name = "Cat Bypasser",
   Callback = function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow62x/catbypass/main/upfix"))()
end,
})


