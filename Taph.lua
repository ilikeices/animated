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
G2L["Ability1_2"]["Image"] = [[rbxassetid://135707604176757]];
G2L["Ability1_2"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability1_2"]["Name"] = [[Ability1]];
G2L["Ability1_2"]["Position"] = UDim2.new(0.55004, 0, 0.59509, 0);


-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability2
G2L["Ability2_3"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability2_3"]["BorderSizePixel"] = 0;
G2L["Ability2_3"]["BackgroundTransparency"] = 1;
-- G2L["Ability2_3"]["ImageContent"] = ;
G2L["Ability2_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability2_3"]["Image"] = [[rbxassetid://95688557988290]];
G2L["Ability2_3"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability2_3"]["Name"] = [[Ability2]];
G2L["Ability2_3"]["Position"] = UDim2.new(0.64039, 0, 0.59509, 0);

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
Taph Forsaken Anim Made By Theo, Converted to Script!
]]
local AnimH =
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local Anim
local New = AnimH.new
local id
local i=101187934796631 --idle 
local idle=true
local walk=129809765506966 -- walk 
local walking=false
local run=97917754365808 -- run 
local run1=false
local run2=false
local sprint=false
local throw=124050450960655 -- throw
local throwing=false
local place=99551786636815 --place
local placing=false
local placerun=false
local placerun1=false
local placeidle=107596214810859 -- holdloop
local placeisidle=false
local placewalk=138983671450465 --holdwalk 
local placeiswalk=false
local placeend=126270246873564 -- Place End 
local ability=false
local ws=10
local pws=5
local Vector3 = Vector3.new
local char=game.Players.LocalPlayer.Character
local hum=char:FindFirstChild("Humanoid")
local uis=game:GetService("UserInputService")
local anim=game:GetObjects("rbxassetid://"..i)[1]
anim.Parent=char
id=i
Anim=New(char, anim)
Anim:Play()
hum.WalkSpeed=ws
G2L["Sprint_5"]["MouseButton1Click"]:Connect(function()
     run1=not run1
     if run1 then
          hum.WalkSpeed=27.5
          run2=true
          else
          hum.WalkSpeed=ws
          run2=false
     end
end)
G2L["Ability1_2"]["MouseButton1Click"]:Connect(function()
      placing=not placing
          if placing then
          placerun=true
          run2=false
          ability=true
          placerun1=true
          G2L["Sprint_5"]["Visible"] = false;
          ability=true
          hum.WalkSpeed=pws
          wait(1)
          placerun=false
          else
          G2L["Sprint_5"]["Visible"] = true;
          Anim:Stop()
          Anim:Stop()
          placerun=false
          ability=false
          placerun1=false
          hum.WalkSpeed=1
          anim=game:GetObjects("rbxassetid://"..placeend)[1]
          Anim=New(char,anim)
          Anim.Looped=false
          Anim:Play()  
          wait(.100)
          G2L["Sprint_5"]["Visible"] = true;
          if run2 == false then
          hum.WalkSpeed = ws
          end
          if run2 == true then
          hum.WalkSpeed = 27.5
          end
      end
end)
G2L["Ability2_3"]["MouseButton1Click"]:Connect(function()
     if ability==false and placerun==false then
          ability=true
          throwing=true
          hum.WalkSpeed=1
          wait(2.750)
          ability=false
          throwing=false
          if run2 == false then
          hum.WalkSpeed = ws
          end
          if run2 == true then
          hum.WalkSpeed = 27.5
          end
     end
end)
while wait() do
if idle==true and walking==false and placerun1==false and sprint==false and ability==false then 
     if id ~= i then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..i)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=i
          end
end
if placeisidle==true and placeiswalk==false then
     if id~=placeidle then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..placeidle)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=i
          end
end
if placeiswalk==true and placeisidle==false then
     if id~=placewalk then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..placewalk)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=placewalk
          end
end
if walking==true and ability==false and idle==false and sprint==false then
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
if hum.MoveDirection ~=Vector3(0,0,0) and run2==true and placerun1== false then
     idle=false
     walking=false
     sprint=true
     end
if hum.MoveDirection ~=Vector3(0,0,0) and run2==false and placerun1==false then
     idle=false
     walking=true
     sprint=false
     end
if hum.MoveDirection ~= Vector3(0,0,0) and placerun1==true then
     placeisidle=false
     placeiswalk=true
     end
if hum.MoveDirection == Vector3(0,0,0) and placerun1==true then
     idle=false
     placeisidle=true
     placeiswalk=false
     walking=false
     sprint=false
end
if hum.MoveDirection == Vector3(0,0,0) and placerun1==false then
     idle=true
     walking=false
     placeiswalk=false
     sprint=false
     placeisidle=false
end
if throwing==true then
     if id~=throw then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..throw)[1]
          Anim=New(char,anim)
          Anim.Looped=false
          Anim:Play()
          id=throw
          end
end
if placerun==true then 
    if id~=place then
              Anim:Stop()
              anim=game:GetObjects("rbxassetid://".. place)[1]
              Anim=New(char,anim)
              Anim.Looped=false
              Anim:Play()
              id=place
              wait(1)
              placerun=false
           end
      end
end
return G2L["AbilityForsaken_1"], require;