local CollectionService = game:GetService("CollectionService");
local G2L = {};

-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken
G2L["AbilityForsaken_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["AbilityForsaken_1"]["Name"] = [[AbilityForsaken]];
G2L["AbilityForsaken_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- Tags
CollectionService:AddTag(G2L["AbilityForsaken_1"], [[main]]);

-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability1
G2L["Ability1_2"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability1_2"]["BorderSizePixel"] = 0;
G2L["Ability1_2"]["BackgroundTransparency"] = 1;
-- G2L["Ability1_2"]["ImageContent"] = ;
G2L["Ability1_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability1_2"]["Image"] = [[rbxassetid://129584849098794]];
G2L["Ability1_2"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability1_2"]["Name"] = [[Ability1]];
G2L["Ability1_2"]["Position"] = UDim2.new(0.55004, 0, 0.59509, 0);

G2L["Sprint_5"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Sprint_5"]["BorderSizePixel"] = 0;
G2L["Sprint_5"]["BackgroundTransparency"] = 1;
-- G2L["Sprint_5"]["ImageContent"] = ;
G2L["Sprint_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Sprint_5"]["Image"] = [[rbxassetid://132640025048316]];
G2L["Sprint_5"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Sprint_5"]["Name"] = [[Sprint]];
G2L["Sprint_5"]["Position"] = UDim2.new(0.82108, 0, 0.25, 0);
--[[
Forsaken Dussekar Anim Made By Theo!
]]
local AnimH =
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local Anim
local New = AnimH.new
local id
local i=93526776499226 --idle
local idle=true
local walk=89456298800839 --walk
local walking=false
local run=99828872947674 --run
local run1=false
local run2=false
local srpint=false
local staff=109105742564174 --Staff
local usingstaff=false
local ability=false
local ws=10
local Vector3 = Vector3.new
local char = game.Players.LocalPlayer.Character
local hum = char:FindFirstChild("Humanoid")
local uis = game:GetService("UserInputService")
local anim = game:GetObjects("rbxassetid://" .. i)[1]
anim.Parent = char
id = i
Anim = New(char, anim)
Anim:Play()
hum.WalkSpeed = ws
G2L["Sprint_5"]["MouseButton1Click"]:Connect(function()
      run1=not run1
      if run1 then 
           run2=true
           hum.WalkSpeed=27.5
           else
          run2=false
          hum.WalkSpeed=ws
      end
end)
G2L["Ability1_2"]["MouseButton1Click"]:Connect(function()
      if ability==false then
           usingstaff=true
           ability=true
           hum.WalkSpeed=1
           wait(2)
           ability=false
           usingstaff=false
           if run2 == false then
           hum.WalkSpeed = ws
           end
           if run2 == true then
           hum.WalkSpeed = 27.5
           end
      end
end)

while wait() do
if idle==true and walking==false and sprint==false and ability==false then 
     if id~=i then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..i)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=i
          end
end
if walking==true and idle==false and sprint==false and ability==false then 
     if id~=walk then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..walk)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=walk
          end
end
if sprint==true and walking==false and idle==false and ability==false then 
     if id~=run then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..run)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=run
          end
end
if hum.MoveDirection ~= Vector3(0,0,0) and run2==true then
     idle=false
     walking=false 
     sprint=true
end
if hum.MoveDirection ~= Vector3(0,0,0) and run2==false then
     idle=false
     walking=true 
     sprint=false
end
if hum.MoveDirection == Vector3(0,0,0) then 
     idle=true
     walking=false
     sprint=false
end
if usingstaff==true then 
     if id~=staff then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..staff)[1]
          Anim=New(char,anim)
          Anim.Looped=false
          Anim:Play()
          id=staff
          end
     end
end


return G2L["AbilityForsaken_1"], require;