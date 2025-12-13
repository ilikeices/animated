local Players = game:GetService("Players")
local char = game.Players.LocalPlayer.Character
local hum = char:FindFirstChild("Humanoid")

if not getgenv()["Animator"] then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
	
end
hookAnimatorFunction()
local AnimHandler = loadstring(game:HttpGet("https://raw.githubusercontent.com/ProudNamed/SuperLightning/refs/heads/main/AnimModule/MainModule"))()
local Anim
local id
local uis = game:GetService("UserInputService")
local walk = 83344421079825
local mouse1 = false
local finish = false
local i = 119101007154768
local m1 = 136499705841145
local fid = 89669118763885
local sprinting1 = false
local isSprinting = false
local charge = false
local charges = false
local cend = 79783218569338
local cloop = 97260661704772
local cintro = 71923805310808
local ability = false
local star = 90527905795455
local vstar = false
local tele = false
local tp = 133844318835297
local run = 115159159445224
local walking = false
local sprinting = false
local taunt = false
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
local idle = true
local animation = game:GetObjects("rbxassetid://" .. i)[1]
animation.Parent = char
Anim = AnimHandler.new(char, animation)
Anim:Play()
id = i
hum.WalkSpeed = 8
uis.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift and charge == false and tele == false then
	isSprinting = not isSprinting 
	if isSprinting then
	hum.WalkSpeed = 27.5
	sprinting = true
	else
	     hum.WalkSpeed = 8
	     sprinting = false
	     end
	end
end)


uis.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Q and vstar == false and tele == false and charge == false then
        sprinting1 = false
        Anim:Stop()
        animation = game:GetObjects("rbxassetid://" .. cend)[1]
        Anim = AnimHandler.new(char, animation)
		Anim.Looped = false
		Anim:Play()
        ability = true
        wait(0.1)
        charges = true
        wait(0.6)   
        charges = false
		charge = true
		local c = Instance.new("BodyVelocity")
		c.MaxForce = Vector3.new(1,0,1) * 30000
		c.Parent = char.HumanoidRootPart
		local counter = 10 * 4
		for i = counter, 0, -1 do
		task.wait(.1)
		c.Velocity = char.HumanoidRootPart.CFrame.lookVector * 50
		end
		c:Destroy()
        Anim:Stop()
        hum.WalkSpeed = 8
        charge = false
        wait(.5)
        ability = false
	end
end)
uis.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.R and vstar == false and finish == false and tele == false then
        Anim:Stop()
        sprinting1 = false
        wait(.1)    
        animation = game:GetObjects("rbxassetid://" .. tp)[1]
	    Anim = AnimHandler.new(char, animation)
        Anim:Play()
        local targetPosition = mouse.Hit.p
        tele = true
        hum.WalkSpeed = 0
        wait(1.5)
		player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition) + Vector3.new(0,4,0))
		wait(1.77)
        Anim:Stop()
        tele = false
        hum.WalkSpeed = 9
	end
end)
uis.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.E and vstar == false and tele == false and charge == false then
        sprinting1 = false
        ability = true
        vstar = true
        wait(2)
        vstar = false
        ability = false
	end
end)


while wait() do
	if idle == true and taunt == false and ability == false and vstar == false and tele == false and mouse1 == false and finish == false then
		if id ~= i then 
	    Anim:Stop()
        animation = game:GetObjects("rbxassetid://" .. i)[1]
	    Anim = AnimHandler.new(char, animation)
		Anim.Looped = true
		Anim:Play()
		id = i
		end
	end
	if walking == true and taunt == false and ability == false and sprinting1 == false and vstar == false and tele == false and finish == false and mouse1 == false then
		if id ~= walk then
	    Anim:Stop()
        animation = game:GetObjects("rbxassetid://" .. walk)[1]
	    Anim = AnimHandler.new(char, animation)
		Anim.Looped = true
		Anim:Play() 
		id = walk
		end
	end
	if sprinting == true and taunt == false and ability == false and vstar == false and mouse1 == false then
		if id ~= run then
         Anim:Stop()
         animation = game:GetObjects("rbxassetid://" .. run)[1]
	     Anim = AnimHandler.new(char, animation)
		Anim.Looped = true
		Anim:Play() 
		id = run
		end
	end
	if hum.MoveDirection ~= Vector3.new(0, 0, 0) and sprinting1 == false then
		walking = true
		sprinting = false
		idle = false
		taunt = false
	end
	if hum.MoveDirection ~= Vector3.new(0, 0, 0) and sprinting1 == true and mouse1 == false and finish == false and charge == false then
		walking = false
		sprinting = true
		idle = false
		taunt = false
	end
	if hum.MoveDirection == Vector3.new(0,0,0) then
		idle = true
		walking = false
		sprinting = false
	end
	if vstar == true and taunt == false then
		if id ~= star then 
	    Anim:Stop()
		animation = game:GetObjects("rbxassetid://" .. star)[1]
        Anim = AnimHandler.new(char, animation)
		Anim.Looped = false
		Anim:Play()
		id = star
		end
	end
	if tele == true and taunt == false then
		if id ~= tp then 
	    Anim:Stop()
		animation = game:GetObjects("rbxassetid://" .. tp)[1]
        Anim = AnimHandler.new(char, animation)
		Anim.Looped = false
		Anim:Play()
		id = tp
		end
	end
	if charges == true then
		if id ~= cintro then 
	    Anim:Stop()
		 animation = game:GetObjects("rbxassetid://" .. cintro)[1]
        Anim = AnimHandler.new(char, animation)
		Anim.Looped = false
		Anim:Play()
		id = cintro
		end
	end
		if charge == true then
		if id ~= cloop then 
	    Anim:Stop()
        animation = game:GetObjects("rbxassetid://" .. cloop)[1]
        Anim = AnimHandler.new(char, animation)
		Anim.Looped = true
		Anim:Play()
		id = cloop
	    end
    end
end