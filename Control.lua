local playerfold = Instance.new("Folder")
playerfold.Name = "PlayerFolder"
playerfold.Parent = game.Workspace
game.Players.LocalPlayer.Character.Parent = playerfold
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 100

game:GetObjects("rbxassetid://12817203782")[1].Parent = game.Workspace
if syn then
task.spawn(function()
    pcall(delfile, 'WitherStrom.mp3')
    writefile('WitherStrom.mp3', syn.request({Url='https://cdn.discordapp.com/attachments/1086313480472252447/1092902955520372736/WitherStrom.mp3',  Method='GET'}).Body)
end)
end
wait(7)
if syn then
local music = Instance.new("Sound")
music.SoundId = getsynasset("WitherStrom.mp3")
music.Looped = true
music.Volume = 5
music.Parent = game.Workspace
music.RollOffMaxDistance = 10000000
music:Play()
else
local music = Instance.new("Sound")
music.SoundId = getcustomasset("WitherStrom.mp3")
music.Looped = true
music.Volume = 5
music.Parent = game.Workspace
music.RollOffMaxDistance = 10000000
music:Play()
end




for i,v in pairs(game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm"):GetDescendants()) do
	if v:IsA("BasePart") then
		if v.Name == "Beam1" then
			v.Touched:Connect(function(hit)
				local hum = hit.Parent:FindFirstChild("Humanoid")
				if hum ~= nil and not hum.Parent:FindFirstChild("Caught") then
					local Caughter = Instance.new("BoolValue",hum.Parent)
					Caughter.Name = "Caught"
					hum.Parent.HumanoidRootPart.Anchored = false
					local chanceagain = math.random(1,100)
					if chanceagain ~= 1 then
					wait(1.5)
					hum.Parent.PrimaryPart.Anchored = true
					game:GetService("TweenService"):Create(hum.Parent.PrimaryPart,TweenInfo.new(15),{CFrame = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").Head1.HeadV2.HeadUnion.CFrame}):Play()

					wait(1)
					wait(14)
					hum.Health = 0
					wait(5)
					hum.Parent:Destroy()
					end
				end
			end)
		elseif v.Name == "Beam2" then
			v.Touched:Connect(function(hit)
				local hum = hit.Parent:FindFirstChild("Humanoid")
				if hum ~= nil and not hum.Parent:FindFirstChild("Caught") then
					local Caughter = Instance.new("BoolValue",hum.Parent)
					Caughter.Name = "Caught"
					hum.Parent.HumanoidRootPart.Anchored = false
					wait(1.5)
					hum.Parent.PrimaryPart.Anchored = true
					game:GetService("TweenService"):Create(hum.Parent.PrimaryPart,TweenInfo.new(15),{CFrame = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").Head2.HeadV2.HeadUnion.CFrame}):Play()

					wait(15)
					hum.Health = 0
											wait(5)
					hum.Parent:Destroy()
				end
			end)
		elseif v.Name == "Beam3" then
			v.Touched:Connect(function(hit)
				local hum = hit.Parent:FindFirstChild("Humanoid")
				if hum ~= nil and not hum.Parent:FindFirstChild("Caught") then
					local Caughter = Instance.new("BoolValue",hum.Parent)
					Caughter.Name = "Caught"
					hum.Parent.HumanoidRootPart.Anchored = false
					wait(1.5)
					hum.Parent.PrimaryPart.Anchored = true
					game:GetService("TweenService"):Create(hum.Parent.PrimaryPart,TweenInfo.new(15),{CFrame = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").Head3.HeadV2.HeadUnion.CFrame}):Play()

					wait(15)
					hum.Health = 0
											wait(5)
					hum.Parent:Destroy()
				end
			end)
		elseif v.Name == "Beam4" then
			v.Touched:Connect(function(hit)
				local hum = hit.Parent:FindFirstChild("Humanoid")
				if hum ~= nil and not hum.Parent:FindFirstChild("Caught") then
					local Caughter = Instance.new("BoolValue",hum.Parent)
					Caughter.Name = "Caught"
					hum.Parent.HumanoidRootPart.Anchored = false
					wait(1.5)
					hum.Parent.PrimaryPart.Anchored = true
					game:GetService("TweenService"):Create(hum.Parent.PrimaryPart,TweenInfo.new(15),{CFrame = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").Head4.HeadV2.HeadUnion.CFrame}):Play()

					wait(15)
					hum.Health = 0
											wait(5)
					hum.Parent:Destroy()
				end
			end)
		elseif v.Name == "Beam5" then
			v.Touched:Connect(function(hit)
				local hum = hit.Parent:FindFirstChild("Humanoid")
				if hum ~= nil and not hum.Parent:FindFirstChild("Caught") and hum.Parent:FindFirstChild("HumanoidRootPart") then
					local Caughter = Instance.new("BoolValue",hum.Parent)
					Caughter.Name = "Caught"
					hum.Parent.HumanoidRootPart.Anchored = false
					wait(1.5)
					hum.Parent.PrimaryPart.Anchored = true
					game:GetService("TweenService"):Create(hum.Parent.PrimaryPart,TweenInfo.new(15),{CFrame = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").Head5.HeadV2.HeadUnion.CFrame}):Play()

					wait(15)
					hum.Health = 0
											wait(5)
					hum.Parent:Destroy()
				end
			end)
		end
	end
end
local Coruse = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").CommandBlock
Coruse.Anchored = true
spawn(function()

	while true do
		local timse = 15
			if game.Workspace:FindFirstChild("CurrentRooms") then
		game:GetService("TweenService"):Create(Coruse,TweenInfo.new(0.3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame}):Play()
		wait(15)
	       else
	      game:GetService("TweenService"):Create(Coruse,TweenInfo.new(0.3,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame}):Play()
		wait(15)
	   end
	end
end)
if game.Workspace:FindFirstChild("CurrentRooms") then
    local CanWitherMove = false
-- Get the command block part
local commandBlock = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").CommandBlock
-- Define the duration of the tween in seconds
local tweenDuration = 2

-- Define the easing style of the tween
local easingStyle = Enum.EasingStyle.Quad

-- Define the direction of the tween
local easingDirection = Enum.EasingDirection.InOut

-- Get the TweenService
local tweenService = game:GetService("TweenService")

-- Create a function that tweens a part towards the command block
local function tweenPart(part)
	local partPosition = part.Position
	local commandBlockPosition = commandBlock.Position
	local tweenInfo = TweenInfo.new(tweenDuration, easingStyle, easingDirection)
	local tween = tweenService:Create(part, tweenInfo, {Position = commandBlockPosition;Color = Color3.fromRGB(0, 0, 0);CFrame = commandBlock.CFrame})
	tween:Play()
	game:GetService("Debris"):AddItem(part,tweenDuration+5)
end

-- Loop forever, tweening a random part every 0.5 seconds
distance = 5 --the distance it ends up waving
speed = 2 --how fast it is

rs = game:GetService'RunService'.RenderStepped
cam = workspace.CurrentCamera
while true do
	wait(0.05)
		rs:wait()
	cam.CoordinateFrame = cam.CoordinateFrame
		* CFrame.Angles(0,0,
			math.rad( distance * math.sin( tick() * speed ) )
		)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	local parts = game.Workspace.CurrentRooms:GetDescendants()
	local randomPart = parts[math.random(#parts)]
	if randomPart:IsA("BasePart") and randomPart ~= commandBlock or randomPart:IsA("BasePart") and randomPart.Name ~= "HumanoidRootPart" or randomPart:IsA("BasePart") and randomPart.Name ~= "Floor" or randomPart:IsA("BasePart") and randomPart.Name ~= "UpperTorso" or randomPart:IsA("BasePart") and randomPart.Name ~= "LowerTorso" or randomPart:IsA("BasePart") and randomPart.Name ~= "Head" then
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
	end
end
elseif game.Workspace:FindFirstChild("WorkspaceCom") then
    local CanWitherMove = false
-- Get the command block part
local commandBlock = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").CommandBlock
-- Define the duration of the tween in seconds
local tweenDuration = 2

-- Define the easing style of the tween
local easingStyle = Enum.EasingStyle.Quad

-- Define the direction of the tween
local easingDirection = Enum.EasingDirection.InOut

-- Get the TweenService
local tweenService = game:GetService("TweenService")

-- Create a function that tweens a part towards the command block
local function tweenPart(part)
	local partPosition = part.Position
	local commandBlockPosition = commandBlock.Position
	local tweenInfo = TweenInfo.new(tweenDuration, easingStyle, easingDirection)
	local tween = tweenService:Create(part, tweenInfo, {Position = commandBlockPosition;Color = Color3.fromRGB(0, 0, 0);CFrame = commandBlock.CFrame})
	tween:Play()
	game:GetService("Debris"):AddItem(part,tweenDuration+5)
end

-- Loop forever, tweening a random part every 0.5 seconds
distance = 5 --the distance it ends up waving
speed = 2 --how fast it is

rs = game:GetService'RunService'.RenderStepped
cam = workspace.CurrentCamera
while true do
	wait(0.05)
		rs:wait()
	cam.CoordinateFrame = cam.CoordinateFrame
		* CFrame.Angles(0,0,
			math.rad( distance * math.sin( tick() * speed ) )
		)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	local parts = game.Workspace.Model:GetDescendants()
	local randomPart = parts[math.random(#parts)]
	if randomPart:IsA("BasePart") and randomPart ~= commandBlock or randomPart:Isa("BasePart") and randomPart.Name ~= "HumanoidRootPart" then
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
	end
end
	elseif game.Workspace:FindFirstChild("Props") then
	    local CanWitherMove = false
-- Get the command block part
local commandBlock = game.Workspace.WitherStorm_Main:FindFirstChild("WitherStorm").CommandBlock
-- Define the duration of the tween in seconds
local tweenDuration = 2

-- Define the easing style of the tween
local easingStyle = Enum.EasingStyle.Quad

-- Define the direction of the tween
local easingDirection = Enum.EasingDirection.InOut

-- Get the TweenService
local tweenService = game:GetService("TweenService")

-- Create a function that tweens a part towards the command block
local function tweenPart(part)
	local partPosition = part.Position
	local commandBlockPosition = commandBlock.Position
	local tweenInfo = TweenInfo.new(tweenDuration, easingStyle, easingDirection)
	local tween = tweenService:Create(part, tweenInfo, {Position = commandBlockPosition;Color = Color3.fromRGB(0, 0, 0);CFrame = commandBlock.CFrame})
	tween:Play()
	game:GetService("Debris"):AddItem(part,tweenDuration+5)
end

-- Loop forever, tweening a random part every 0.5 seconds
distance = 5 --the distance it ends up waving
speed = 2 --how fast it is

rs = game:GetService'RunService'.RenderStepped
cam = workspace.CurrentCamera
while true do
	wait(0.05)
		rs:wait()
	cam.CoordinateFrame = cam.CoordinateFrame
		* CFrame.Angles(0,0,
			math.rad( distance * math.sin( tick() * speed ) )
		)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
	local parts = game.Workspace.Props:GetDescendants()
	local randomPart = parts[math.random(#parts)]
	if randomPart:IsA("BasePart") and randomPart ~= commandBlock or randomPart:IsA("BasePart") and randomPart.Name ~= "HumanoidRootPart" or randomPart:IsA("BasePart") and randomPart.Name ~= "Floor" or randomPart:IsA("BasePart") and randomPart.Name ~= "UpperTorso" or randomPart:IsA("BasePart") and randomPart.Name ~= "LowerTorso" or randomPart:IsA("BasePart") and randomPart.Name ~= "Head" then
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
		tweenPart(randomPart)
	end
end
end


