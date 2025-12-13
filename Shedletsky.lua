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
G2L["Ability1_2"]["Image"] = [[rbxassetid://85282571177550]];
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
G2L["Sprint_5"]["Name"] = [[Ability4]];
G2L["Sprint_5"]["Position"] = UDim2.new(0.82108, 0, 0.25, 0);
--[[

Forsaken Shedletsky Anims

]]--
local AnimH =
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local i = 101187934796631
local idle = true
local walk = 129809765506966
local walking = false
local sprintt = 97917754365808
local sprinting = false
local sprint1 = false
local sprint = false
local slash = 107302018639039
local slashing = false
local eat = 79188775702839
local eating = false
local ability = false
local ws = 10
local char = game.Players.LocalPlayer.Character
local hum = char:FindFirstChild("Humanoid")
local uis = game:GetService("UserInputService")
local anim = game:GetObjects("rbxassetid://" .. i)[1]
anim.Parent = char
id = i
Anim = AnimH.new(char, anim)
Anim:Play()
hum.WalkSpeed = ws
G2L["Sprint_5"]["MouseButton1Click"]:Connect(function()
sprint1 = not sprint1
if sprint1 then
     sprint = true
     hum.WalkSpeed = 27.5
     else
     sprint = false
     hum.WalkSpeed = ws
     end
end)

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q and ability== false and slashing == false then
         ability= true
         slashing = true
         hum.WalkSpeed = 0.5
         wait(1.100)
         ability= false
         slashing = false
         if sprinting == false then
         hum.WalkSpeed = ws
         end
         if sprinting == true then
         hum.WalkSpeed = 27.5
      end
   end 
end)
G2L["Ability1_2"]["MouseButton1Click"]:Connect(function()
if ability== false and slashing == false and eating == false then
     ability= true
     slashing = true
     hum.WalkSpeed = 1
     wait(1.100)
     ability= false
     slashing = false
     if sprinting == false then
     hum.WalkSpeed = ws
     end
     if sprinting == true then
     hum.WalkSpeed = 27.5
         end
     end
end)




while wait() do
     if idle == true and sprinting == false and walking == false and ability== false and slashing==false then
          if id ~= i then
          Anim:Stop()
          anim = game:GetObjects("rbxassetid://"..i)[1]
          Anim = AnimH.new(char, anim)
          Anim.Looped = true
          Anim:Play()
          id = i
          end
     end
if walking == true and sprinting == false and idle == false and slashing == false and ability== false then
     if id ~= walk then 
          Anim:Stop()
          anim = game:GetObjects("rbxassetid://"..walk)[1]
          Anim = AnimH.new(char, anim)
          Anim.Looped = true
          Anim:Play()
          id = walk
     end
end
if sprinting == true and walking == false and idle == false and ability == false and slashing == false then
     if id ~= sprint then 
          Anim:Stop()
          anim = game:GetObjects("rbxassetid://"..sprintt)[1]
          Anim = AnimH.new(char, anim)
          Anim.Looped = true
          Anim:Play()
          id = sprint
          end
     end
if hum.MoveDirection ~= Vector3.new(0,0,0) and sprint == true  and ability== false then
     idle= false
     walking= false
     sprinting = true
end
if hum.MoveDirection ~= Vector3.new(0,0,0) and ability== false and sprint == false then
     idle = false
     walking = true
     sprinting = false
     end
if hum.MoveDirection == Vector3.new(0,0,0) then
     idle = true
     walking = false
     sprinting = false
end
if slashing == true then
     if id ~= slash then 
          Anim:Stop()
          anim = game:GetObjects("rbxassetid://"..slash)[1]
          Anim = AnimH.new(char, anim)
          Anim.Looped = false
          Anim:Play()
          id = slash
          end
    end
end 
return G2L["AbilityForsaken_1"], require;