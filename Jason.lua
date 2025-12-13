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
G2L["Ability1_2"]["Image"] = [[rbxassetid://115318212003121]];
G2L["Ability1_2"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability1_2"]["Name"] = [[Ability1]];
G2L["Ability1_2"]["Position"] = UDim2.new(0.55004, 0, 0.59509, 0);


-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability2
G2L["Ability2_3"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability2_3"]["BorderSizePixel"] = 0;
G2L["Ability2_3"]["BackgroundTransparency"] = 1;
-- G2L["Ability2_3"]["ImageContent"] = ;
G2L["Ability2_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability2_3"]["Image"] = [[rbxassetid://83553911625628]];
G2L["Ability2_3"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability2_3"]["Name"] = [[Ability2]];
G2L["Ability2_3"]["Position"] = UDim2.new(0.64039, 0, 0.59509, 0);


-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability3
G2L["Ability3_4"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability3_4"]["BorderSizePixel"] = 0;
G2L["Ability3_4"]["BackgroundTransparency"] = 1;
-- G2L["Ability3_4"]["ImageContent"] = ;
G2L["Ability3_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability3_4"]["Image"] = [[rbxassetid://108142339498789]];
G2L["Ability3_4"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability3_4"]["Name"] = [[Ability3]];
G2L["Ability3_4"]["Position"] = UDim2.new(0.73074, 0, 0.59509, 0);


-- Players.Theo_TheoBenzo.PlayerGui.AbilityForsaken.Ability4
G2L["Ability4_5"] = Instance.new("ImageButton", G2L["AbilityForsaken_1"]);
G2L["Ability4_5"]["BorderSizePixel"] = 0;
G2L["Ability4_5"]["BackgroundTransparency"] = 1;
-- G2L["Ability4_5"]["ImageContent"] = ;
G2L["Ability4_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Ability4_5"]["Image"] = [[rbxassetid://112952508748158]];
G2L["Ability4_5"]["Size"] = UDim2.new(0.08636, 0, 0.19939, 0);
G2L["Ability4_5"]["Name"] = [[Ability4]];
G2L["Ability4_5"]["Position"] = UDim2.new(0.82108, 0, 0.59509, 0);

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
Forsaken Jason Anims Made By Theo!
]]

local AnimH =
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local Anim
local New = AnimH.new
local id
local i=79847722809411 --idle
local idle=true
local walk=100715036105609 --walk 
local walking=false
local run=130266370655318 --run 
local run1=false
local run2=false
local sprint=false
local m1=101757043928040 --m1
local usem1=false
local behead=74733952175669 --behead
local beh=false
local crashing=104508004691131 --crashing
local crash=false
local ragebegin=70859697570957 -- Ragingbegin
local rage=false
local rage1=false
local ragei=113587955333779 --ragingidle
local rageidle=false
local ragewalk=101132996950958 -- ragingwalk
local ragewalking=false
local ability=false
local ws=10
local rws=5
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
           run2=true 
           hum.WalkSpeed=27.5
           else
           run2=false
           hum.WalkSpeed=ws
     end 
end)
G2L["Ability1_2"]["MouseButton1Click"]:Connect(function()
      if ability==false and rage==false then 
      ability=true
      usem1=true
      hum.WalkSpeed=1
      wait(1)
      ability=false
      usem1=false
      if run2 == false then 
      hum.WalkSpeed = ws
      end 
      if run2 == true then
      hum.WalkSpeed = 27.5
          end
     end
end)
G2L["Ability2_3"]["MouseButton1Click"]:Connect(function()
      if ability==false and rage==false then
           ability=true
           beh=true
           hum.WalkSpeed=1
           wait(1)
           ability=false
           beh=false
           if run2 == false then 
           hum.WalkSpeed = ws
           end 
           if run2 == true then
           hum.WalkSpeed = 27.5
         end
      end
end)
G2L["Ability3_4"]["MouseButton1Click"]:Connect(function()
      if ability==false and rage==false then
           ability=true
           crash=true
           hum.WalkSpeed=1
           wait(1)
           ability=false
           crash=false
           if run2 == false then 
           hum.WalkSpeed = ws
           end 
           if run2 == true then
           hum.WalkSpeed = 27.5
         end
     end
end)
G2L["Ability4_5"]["MouseButton1Click"]:Connect(function()
      if ability==false then
           ability=true
           rage=true
           G2L["Sprint_5"]["Visible"] =false;
           hum.WalkSpeed=0
           wait(1.025)
           rage=false
           hum.WalkSpeed=16
           rage1=true
           wait(10)
           rage1=false
           ability=false
           Anim:Stop()
           G2L["Sprint_5"]["Visible"] =true;
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
if rageidle==true and ragewalking==false then
     if id~=ragei then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..ragei)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=ragei
          end 
end
if ragewalking==true and rageidle==false then
     if id~=ragewalk then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..ragewalk)[1]
          Anim=New(char,anim)
          Anim.Looped=true
          Anim:Play()
          id=ragewalk
          end
end
if hum.MoveDirection~=Vector3(0,0,0) and rage1==true then
     rageidle=false
     ragewalking=true
     end
if hum.MoveDirection~=Vector3(0,0,0) and rage1==false and run2==true then
     idle=false
     walking=false
     sprint=true
     rageidle=false
     ragewalking=false
end
if hum.MoveDirection~=Vector3(0,0,0) and rage1==false and run2==false then
     idle=false
     walking=true
     sprint=false
     rageidle=false
     ragewalking=false
     end
if hum.MoveDirection==Vector3(0,0,0) and rage1==true then 
     idle=false
     walking=false
     sprint=false
     rageidle=true
     ragewalking=false
     end
if hum.MoveDirection==Vector3(0,0,0) and rage1==false then 
     idle=true
     walking=false
     sprint=false
     rageidle=false
     ragewalking=false
end
if usem1==true then 
     if id~=m1 then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..m1)[1]
          Anim=New(char,anim)
          Anim.Looped=false 
          Anim:Play()
          id=m1
          end
end
if beh==true then
     if id~=behead then
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..behead)[1]
          Anim=New(char,anim)
          Anim.Looped=false
          Anim:Play()
          id=behead
          end
end
if crash==true then
     if id~=crashing then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..crashing)[1]
          Anim=New(char,anim)
          Anim.Looped=false
          Anim:Play()
          id=crashing
          end
end
if rage==true then 
     if id~=ragebegin then 
          Anim:Stop()
          anim=game:GetObjects("rbxassetid://"..ragebegin)[1]
          Anim=New(char,anim)
          Anim.Looped=false
          Anim:Play()
          id=ragebegin
          wait(1.100)
          rage=false
          end
     end
end
return G2L["AbilityForsaken_1"], require;