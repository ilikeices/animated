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
G2L["Ability1_2"]["Image"] = [[rbxassetid://139471791217039]];
G2L["Ability1_2"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability1_2"]["Name"] = [[Ability1]];
G2L["Ability1_2"]["Position"] = UDim2.new(0.55004, 0, 0.59509, 0);


-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability2
G2L["Ability2_3"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability2_3"]["BorderSizePixel"] = 0;
G2L["Ability2_3"]["BackgroundTransparency"] = 1;
-- G2L["Ability2_3"]["ImageContent"] = ;
G2L["Ability2_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability2_3"]["Image"] = [[rbxassetid://83849304758564]];
G2L["Ability2_3"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability2_3"]["Name"] = [[Ability2]];
G2L["Ability2_3"]["Position"] = UDim2.new(0.64039, 0, 0.59509, 0);


-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability3
G2L["Ability3_4"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability3_4"]["BorderSizePixel"] = 0;
G2L["Ability3_4"]["BackgroundTransparency"] = 1;
-- G2L["Ability3_4"]["ImageContent"] = ;
G2L["Ability3_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability3_4"]["Image"] = [[rbxassetid://83206360003394]];
G2L["Ability3_4"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability3_4"]["Name"] = [[Ability3]];
G2L["Ability3_4"]["Position"] = UDim2.new(0.73074, 0, 0.59509, 0);

G2L["Sprint_5"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Sprint_5"]["BorderSizePixel"] = 0;
G2L["Sprint_5"]["BackgroundTransparency"] = 1;
-- G2L["Sprint_5"]["ImageContent"] = ;
G2L["Sprint_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Sprint_5"]["Image"] = [[rbxassetid://132640025048316]];
G2L["Sprint_5"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Sprint_5"]["Name"] = [[Ability4]];
G2L["Sprint_5"]["Position"] = UDim2.new(0.82108, 0, 0.25, 0);
--[[
John Doe Fe By Theo_TheoBenzo/パノラマ!
]]
local B =
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local A
local id
local i = 90286804566558
local idle = true
local walk = 106992556035804
local walking = false
local run = 138421545751238
local sprinting = false
local sprint = false
local sprint1
local m1 = 113923828536038
local punch = false
local corrupt = 136719367286852
local cor = false
local digital = 71797354624305
local dig = false
local ability = false
local ws = 10
local char = game.Players.LocalPlayer.Character
local hum = char:FindFirstChild("Humanoid")
local uis = game:GetService("UserInputService")
local anim = game:GetObjects("rbxassetid://" .. i)[1]
anim.Parent = char
id = i
A = B.new(char, anim)
A:Play()
hum.WalkSpeed = ws

uis.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.Q and ability== false then
     ability= true
     punch= true
     hum.WalkSpeed= 0
     wait(1.100)
     ability = false
     punch= false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end 
     end
end)
uis.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.E and ability == false then 
     ability= true
     cor= true
     hum.WalkSpeed= 0
     wait(2.550)
     ability=false
     cor= false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end  
     end
end)
uis.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.R and ability== false then
     ability= true
     dig = true
     hum.WalkSpeed= 0
     wait(2.750)
     ability= false
     dig = false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end 
     end
end)
G2L["Sprint_5"]["MouseButton1Click"]:Connect(function()
sprinting = not sprinting
if sprinting then
     hum.WalkSpeed = 27.5
     sprint1 = true
     else
     hum.WalkSpeed = ws
     sprint1 = false
     end
end)
G2L["Ability1_2"]["MouseButton1Click"]:Connect(function()
if ability== false then
     ability= true
     punch= true
     hum.WalkSpeed= 0
     wait(1.100)
     ability = false
     punch= false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end 
     end
end)
G2L["Ability2_3"]["MouseButton1Click"]:Connect(function()
if ability == false then 
     ability= true
     cor= true
     hum.WalkSpeed= 0
     wait(2.550)
     ability=false
     cor= false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end 
     end
end)
G2L["Ability3_4"]["MouseButton1Click"]:Connect(function()
if ability== false then
     ability= true
     dig = true
     hum.WalkSpeed= 0
     wait(2.750)
     ability= false
     dig = false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end 
     end 
end)

while wait() do
if idle == true and walking == false and sprint == false and ability == false and dig == false then
     if id ~= i then 
     A:Stop()
     anim = game:GetObjects("rbxassetid://"..i)[1]
     A = B.new(char, anim)
     A.Looped = true
     A:Play()
     id = i
     end
end
if walking== true and idle== false and sprint== false and ability==false and dig == false then
     if id ~= walk then 
          A:Stop()
          anim = game:GetObjects("rbxassetid://"..walk)[1]
          A = B.new(char, anim)
          A.Looped= true
          A:Play()
          id = walk
          end
     end
if sprint == true and idle== false and walking== false and ability== false and dig == false then
     if id ~= run then
          A:Stop()
          anim = game:GetObjects("rbxassetid://"..run)[1]
          A = B.new(char, anim)
          A.Looped= true
          A:Play()
          id = run
          end
     end
if hum.MoveDirection ~= Vector3.new(0,0,0) and sprint1== true and ability == false then
     idle= false
     walking = false
     sprint= true 
end
if hum.MoveDirection ~= Vector3.new(0,0,0) and sprint1== false then
     idle= false
     walking= true
     sprint= false
end
if hum.MoveDirection == Vector3.new(0,0,0) then
     idle= true
     walking= false
     sprint= false
end
if punch == true then 
     if id ~= punch then
          A:Stop()
          anim = game:GetObjects("rbxassetid://"..m1)[1]
          A = B.new(char, anim)
          A.Looped= false
          A:Play()
          id = punch
          end
     end
if cor == true then 
     if id ~= corrupt then
          A:Stop()
          anim = game:GetObjects("rbxassetid://"..corrupt)[1]
          A = B.new(char, anim)
          A.Looped= false
          A:Play()
          id = corrupt
          end 
     end
if dig == true then
     if id ~= digital then 
          A:Stop()
          anim= game:GetObjects("rbxassetid://"..digital)[1]
          A = B.new(char, anim)
          A.Looped= false
          A:Play()
          id = digital
          end
     end
end
return G2L["AbilityForsaken_1"], require;