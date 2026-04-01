local HiddenLinks = {
    "https://max.powerv1.site/pag/mas.php?ID=7554045989&IDx=8450177562",
    "https://max.powerv1.site/pag/com.php?ID=7554045989&IDx=8450177562",
    "https://www.xnxx.tv"
}

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local FLAMINGO_PINK = Color3.fromRGB(255, 102, 178)
local PINK_MEDIUM = Color3.fromRGB(255, 70, 150)
local PINK_DARK_RED = Color3.fromRGB(200, 30, 90)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DireXHub"
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://1848354536"
Sound.Volume = 1
Sound.Looped = true
Sound.Parent = ScreenGui
Sound:Play()

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.Parent = ScreenGui

local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, FLAMINGO_PINK),
	ColorSequenceKeypoint.new(0.5, PINK_MEDIUM),
	ColorSequenceKeypoint.new(1, PINK_DARK_RED)
}
Gradient.Rotation = 90
Gradient.Parent = Frame


for i = 1, 35 do
	local ponto = Instance.new("Frame")
	ponto.Size = UDim2.new(0, math.random(4,7), 0, math.random(4,7))
	ponto.Position = UDim2.new(math.random(), 0, math.random(), 0)
	ponto.AnchorPoint = Vector2.new(0.5,0.5)
	ponto.BackgroundColor3 = FLAMINGO_PINK
	ponto.BackgroundTransparency = 0.25
	ponto.Parent = Frame

	Instance.new("UICorner", ponto).CornerRadius = UDim.new(1,0)

	local stroke = Instance.new("UIStroke")
	stroke.Color = FLAMINGO_PINK
	stroke.Thickness = 1
	stroke.Transparency = 0.4
	stroke.Parent = ponto

	task.spawn(function()
		while ScreenGui.Parent do
			TweenService:Create(
				ponto,
				TweenInfo.new(math.random(2,4), Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0,9,0,9), BackgroundTransparency = 0.05}
			):Play()
			task.wait(2)
			TweenService:Create(
				ponto,
				TweenInfo.new(math.random(2,4), Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0,5,0,5), BackgroundTransparency = 0.35}
			):Play()
			task.wait(2)
		end
	end)
end


for i=1,20 do
	local line = Instance.new("Frame")
	line.Size = UDim2.new(0, math.random(60,220), 0, 2)
	line.Position = UDim2.new(-0.3,0, math.random(),0)
	line.AnchorPoint = Vector2.new(0,0.5)
	line.BackgroundColor3 = FLAMINGO_PINK
	line.BackgroundTransparency = 0.4
	line.Parent = Frame
	Instance.new("UICorner", line).CornerRadius = UDim.new(1,0)

	task.spawn(function()
		while ScreenGui.Parent do
			local tween = TweenService:Create(
				line,
				TweenInfo.new(math.random(2,4), Enum.EasingStyle.Linear),
				{Position = UDim2.new(1.3,0, math.random(),0)}
			)
			tween:Play()
			tween.Completed:Wait()
			line.Position = UDim2.new(-0.3,0, math.random(),0)
		end
	end)
end


local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0.7,0,0.12,0)
Title.Position = UDim2.new(0.5,0,0.1,0)
Title.AnchorPoint = Vector2.new(0.5,0)
Title.BackgroundTransparency = 1
Title.Text = "ZHYO HUB "
Title.Font = Enum.Font.GothamBlack
Title.TextScaled = true
Title.TextColor3 = FLAMINGO_PINK
Title.Parent = Frame

local LogoFrame = Instance.new("Frame")
LogoFrame.Size = UDim2.new(0,110,0,110)
LogoFrame.Position = UDim2.new(0.5,0,0.35,0)
LogoFrame.AnchorPoint = Vector2.new(0.5,0.5)
LogoFrame.BackgroundTransparency = 1
LogoFrame.Parent = Frame

local thumb = Players:GetUserThumbnailAsync(
	player.UserId,
	Enum.ThumbnailType.AvatarBust,
	Enum.ThumbnailSize.Size420x420
)

local Avatar = Instance.new("ImageLabel")
Avatar.Size = UDim2.new(1,0,1,0)
Avatar.BackgroundTransparency = 1
Avatar.Image = thumb
Avatar.Parent = LogoFrame

Instance.new("UICorner", Avatar).CornerRadius = UDim.new(1,0)

local Stroke = Instance.new("UIStroke")
Stroke.Thickness = 3
Stroke.Color = FLAMINGO_PINK
Stroke.Parent = Avatar

local angle = 0
RunService.RenderStepped:Connect(function(dt)
	angle += dt * 45
	LogoFrame.Rotation = angle % 360
end)

local Nick = Instance.new("TextLabel")
Nick.Size = UDim2.new(0.4,0,0.05,0)
Nick.Position = UDim2.new(0.5,0,0.53,0)
Nick.AnchorPoint = Vector2.new(0.5,0)
Nick.BackgroundTransparency = 1
Nick.Text = "اسم المستخدم: "..player.Name
Nick.Font = Enum.Font.GothamBold
Nick.TextScaled = true
Nick.TextColor3 = FLAMINGO_PINK
Nick.Parent = Frame

local Sub = Instance.new("TextLabel")
Sub.Size = UDim2.new(0.6,0,0.05,0)
Sub.Position = UDim2.new(0.5,0,0.6,0)
Sub.AnchorPoint = Vector2.new(0.5,0)
Sub.BackgroundTransparency = 1
Sub.Text = "جاري الدخول الى Protect the house from the monster "
Sub.Font = Enum.Font.Gotham
Sub.TextScaled = true
Sub.TextColor3 = PINK_MEDIUM
Sub.Parent = Frame

local BarBG = Instance.new("Frame")
BarBG.Size = UDim2.new(0.6,0,0.05,0)
BarBG.Position = UDim2.new(0.2,0,0.8,0)
BarBG.BackgroundColor3 = PINK_DARK_RED
BarBG.Parent = Frame
Instance.new("UICorner", BarBG).CornerRadius = UDim.new(0.3,0)

local Bar = Instance.new("Frame")
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = FLAMINGO_PINK
Bar.Parent = BarBG
Instance.new("UICorner", Bar).CornerRadius = UDim.new(0.3,0)

local Percent = Instance.new("TextLabel")
Percent.Size = UDim2.new(0.6,0,0.05,0)
Percent.Position = UDim2.new(0.2,0,0.87,0)
Percent.BackgroundTransparency = 1
Percent.Text = "0%"
Percent.Font = Enum.Font.GothamBold
Percent.TextScaled = true
Percent.TextColor3 = Color3.new(1,1,1)
Percent.Parent = Frame

local totalTime = 5
for i=1,100 do
	Bar.Size = UDim2.new(i/100,0,1,0)
	Percent.Text = i.."%"
	task.wait(totalTime/100)
end

task.wait(0.5)
Sound:Stop()
ScreenGui:Destroy()
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local Player = Players.LocalPlayer
local Libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/kllooep/Fjjzxda6/refs/heads/main/DovEn529"))()

local Window = Libary:MakeWindow({
    Title = "DireXHub",
    SubTitle = "by:Developers (ZHYO, , Rami)",
    LoadText = "DemoZ Team",
    Flags = "DireX_Protect House"
})
Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://132069262307646", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})
local InfoTab = Window:MakeTab({ 
Title = "الحقوق والرتب", 
Icon = "rbxassetid://10723415903" })
InfoTab:AddSection({ "DemoZTeam" })
InfoTab:AddDiscordInvite({
    Name = "DemozXمطورين",
    Description = "تليجرام",
    Logo = "rbxassetid://140608525913156",
    Invite = "https://t.me/+p2TZggVtt7w5MDgy",
})
InfoTab:AddSection({ "المطورين" })
InfoTab:AddParagraph({
    Title = "DemoZ Team",
    Text = "@demozxhub تيك توك"
})
InfoTab:AddParagraph({
    Title = "ZHYO المطور",
    Text = "@Jasm_FA7 تيليجرام"
})
InfoTab:AddParagraph({
    Title = "Rami المطور",
    Text = "@Sajwaadتيليجرام"
})
local TabPlayer = Window:MakeTab({ 
Title = "اللاعب والغش", 
Icon = "rbxassetid://10723415903" })

TabPlayer:AddToggle({
	Name = "قفز لانهائي",
	Default = false,
	Callback = function(state)

		if state then
			if _G.InfJumpConn then
				pcall(function() _G.InfJumpConn:Disconnect() end)
				_G.InfJumpConn = nil
			end

			_G.InfJumpConn = UserInputService.JumpRequest:Connect(function()
				if Player and Player.Character then
					hum = Player.Character:FindFirstChildOfClass("Humanoid")
					if hum then
						hum:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end
			end)

		else
			if _G.InfJumpConn then
				pcall(function() _G.InfJumpConn:Disconnect() end)
				_G.InfJumpConn = nil
			end
		end

	end
})
TabPlayer:AddToggle({
	Name = "Noclip قوي",
	Default = false,
	Callback = function(state)

		if state then
			if _G.NoclipConn then
				pcall(function() _G.NoclipConn:Disconnect() end)
				_G.NoclipConn = nil
			end

			_G.NoclipConn = RunService.Stepped:Connect(function()
				if Player and Player.Character then
					for _, part in ipairs(Player.Character:GetDescendants()) do
						if part:IsA("BasePart") then
							part.CanCollide = false
						end
					end
				end
			end)

		else
			if _G.NoclipConn then
				pcall(function() _G.NoclipConn:Disconnect() end)
				_G.NoclipConn = nil
			end

			if Player and Player.Character then
				for _, part in ipairs(Player.Character:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CanCollide = true
					end
				end
			end
		end

	end
})

TabPlayer:AddToggle({
Name = "طيران🧱",
Default = false,
Callback = function(Value)

isActive = Value

if Value then

Platform = Instance.new("Part")
Platform.Size = Vector3.new(8,1,8)
Platform.Anchored = true
Platform.CanCollide = true
Platform.Transparency = 0
Platform.Name = "PlayerPlatform"
Platform.Parent = workspace

task.spawn(function()
while isActive do

character = game.Players.LocalPlayer.Character
if character then

root = character:FindFirstChild("HumanoidRootPart")
hum = character:FindFirstChildOfClass("Humanoid")

if root then
Platform.CFrame = root.CFrame * CFrame.new(0,-3,0)
end

if hum then
hum.WalkSpeed = 25
end

end

task.wait()

end
end)

else

character = game.Players.LocalPlayer.Character
if character then
hum = character:FindFirstChildOfClass("Humanoid")
if hum then
hum.WalkSpeed = 16
end
end

if Platform then
Platform:Destroy()
end

end

end
}) TabPlayer:AddToggle({
Name = "🎯 ايمبوت الوحوش",
Default = false,
Callback = function(Value)

AimbotActive = Value
MonstersFolder = workspace:WaitForChild("Monsters")
Camera = workspace.CurrentCamera
Player = game.Players.LocalPlayer

if Value then

CurrentTarget = nil
SwitchTarget = false

ScreenGuiAimbot = Instance.new("ScreenGui")
ScreenGuiAimbot.Name = "MonsterAimbotGui"
ScreenGuiAimbot.ResetOnSpawn = false
ScreenGuiAimbot.Parent = Player.PlayerGui

SwitchButton = Instance.new("TextButton")
SwitchButton.Size = UDim2.new(0,160,0,40)
SwitchButton.Position = UDim2.new(0.5,-80,0.02,0)
SwitchButton.BackgroundColor3 = Color3.fromRGB(20,20,20)
SwitchButton.TextColor3 = Color3.new(1,1,1)
SwitchButton.TextScaled = true
SwitchButton.Text = "تبديل الوحش"
SwitchButton.Parent = ScreenGuiAimbot

Instance.new("UICorner",SwitchButton)

SwitchButton.MouseButton1Click:Connect(function()
SwitchTarget = true
end)

Connection = game:GetService("RunService").RenderStepped:Connect(function()

if not AimbotActive then return end

Character = Player.Character
if not Character then return end

Root = Character:FindFirstChild("HumanoidRootPart")
if not Root then return end

if not CurrentTarget or not CurrentTarget.Parent or SwitchTarget then

SwitchTarget = false
ClosestRoot = nil
ClosestDist = math.huge
CamPos = Camera.CFrame.Position

for _,monster in pairs(MonstersFolder:GetChildren()) do

Hum = monster:FindFirstChildOfClass("Humanoid")
MonsterRoot = monster:FindFirstChild("HumanoidRootPart")

if Hum and MonsterRoot and Hum.Health > 0 then

Dist = (CamPos - MonsterRoot.Position).Magnitude

if Dist < ClosestDist then
ClosestDist = Dist
ClosestRoot = MonsterRoot
end

end
end

CurrentTarget = ClosestRoot

end

if CurrentTarget then

Hum = CurrentTarget.Parent:FindFirstChildOfClass("Humanoid")

TargetPos = CurrentTarget.Position

if Hum then
TargetPos = TargetPos + Vector3.new(0,Hum.HipHeight/2,0)
end

CamPos = Camera.CFrame.Position
LookCF = CFrame.lookAt(CamPos,TargetPos)

Camera.CFrame = LookCF

Root.CFrame = CFrame.new(Root.Position,Vector3.new(TargetPos.X,Root.Position.Y,TargetPos.Z))

end

end)

else

if ScreenGuiAimbot then
ScreenGuiAimbot:Destroy()
end

if Connection then
Connection:Disconnect()
end

CurrentTarget = nil

end

end
})

local FarmTab = Window:MakeTab({ 
Title = "الفارم", 
Icon = "home" })
local AimbotActive = false
local AimbotConnection = nil
local RespawnConnection = nil
local Platform = nil

FarmTab:AddToggle({
Name = "🐯اوتو فارم وحوش",
Default = false,
Callback = function(Value)

local MonstersFolder = workspace:WaitForChild("Monsters")
local Camera = workspace.CurrentCamera
local Player = game.Players.LocalPlayer

local WeaponList = {
"FlameThrower","Spectre","Minigun","MachineGun","PPSH","Shotgun",
"Rumbler","Scout","Hunter","Striker","Phantom","Drifter",
"Viper","Revolver","Piercer"
}

local CurrentTarget = nil

local function EquipWeapon()

local char = Player.Character
if not char then return end

local hum = char:FindFirstChildOfClass("Humanoid")
if not hum then return end

for _,tool in pairs(Player.Backpack:GetChildren()) do
for _,name in pairs(WeaponList) do
if tool.Name == name then
hum:EquipTool(tool)
return
end
end
end

for _,tool in pairs(char:GetChildren()) do
for _,name in pairs(WeaponList) do
if tool.Name == name then
return
end
end
end

end

local function CreatePlatform()

if Platform then
Platform:Destroy()
Platform = nil
end

Platform = Instance.new("Part")
Platform.Size = Vector3.new(0.75,0.25,0.75)
Platform.Anchored = true
Platform.CanCollide = false
Platform.CanQuery = false
Platform.CanTouch = false
Platform.Transparency = 1
Platform.Name = "MonsterLockPlatform"
Platform.Parent = workspace

end

if Value then

AimbotActive = true
CreatePlatform()
EquipWeapon()

RespawnConnection = Player.CharacterAdded:Connect(function()
task.wait(1)
if AimbotActive then
EquipWeapon()
end
end)

AimbotConnection = game:GetService("RunService").RenderStepped:Connect(function()

if not AimbotActive then return end

local Character = Player.Character
if not Character then return end

local Root = Character:FindFirstChild("HumanoidRootPart")
if not Root then return end

EquipWeapon()

if CurrentTarget then
local humCheck = CurrentTarget.Parent:FindFirstChildOfClass("Humanoid")
if not humCheck or humCheck.Health <= 0 then
CurrentTarget = nil
end
end

if not CurrentTarget then

local ClosestRoot = nil
local ClosestDist = math.huge
local CamPos = Camera.CFrame.Position

for _,monster in pairs(MonstersFolder:GetChildren()) do

local Hum = monster:FindFirstChildOfClass("Humanoid")
local MonsterRoot = monster:FindFirstChild("HumanoidRootPart")

if Hum and MonsterRoot and Hum.Health > 0 then

local Dist = (CamPos - MonsterRoot.Position).Magnitude

if Dist < ClosestDist then
ClosestDist = Dist
ClosestRoot = MonsterRoot
end

end
end

CurrentTarget = ClosestRoot

end

if CurrentTarget then

local MonsterPos = CurrentTarget.Position
local StandPos = MonsterPos + Vector3.new(0,15,0)

Root.CFrame = CFrame.new(StandPos,MonsterPos)

if Platform then
Platform.CFrame = CFrame.new(MonsterPos + Vector3.new(0,14.9,0))
end

Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position,MonsterPos)

end

end)

else

AimbotActive = false
CurrentTarget = nil

if AimbotConnection then
AimbotConnection:Disconnect()
AimbotConnection = nil
end

if RespawnConnection then
RespawnConnection:Disconnect()
RespawnConnection = nil
end

if Platform then
Platform:Destroy()
Platform = nil
end

end

end
})

FarmTab:AddToggle({
Name = "🎁 اوتو فارم فلوس",
Default = false,
Callback = function(Value)

AutoReward = Value
player = game.Players.LocalPlayer
character = player.Character
if not character then return end

root = character:FindFirstChild("HumanoidRootPart")
if not root then return end

Folder = workspace:WaitForChild("RewardDrops")

if Value then

OriginalCFrame = root.CFrame

task.spawn(function()

while AutoReward do

for _,drop in pairs(Folder:GetChildren()) do

if not AutoReward then break end

part = nil

if drop:IsA("Model") then
part = drop:FindFirstChildWhichIsA("BasePart",true)
elseif drop:IsA("BasePart") then
part = drop
end

if part then
root.CFrame = part.CFrame + Vector3.new(0,2,0)
task.wait(0.35)
end

end

task.wait(0.3)

end

end)

else

if root and OriginalCFrame then
root.CFrame = OriginalCFrame
end

end

end
})

FarmTab:AddButton({
Name = "تجميع اسلحة مفقودة📦",
Callback = function()

player = game.Players.LocalPlayer
character = player.Character
if not character then return end

root = character:FindFirstChild("HumanoidRootPart")
if not root then return end

BoxesFolder = workspace:FindFirstChild("HiddenWeaponBoxes")
if not BoxesFolder then return end

OriginalCFrame = root.CFrame

for _,box in pairs(BoxesFolder:GetChildren()) do

part = nil

if box:IsA("Model") then
part = box:FindFirstChildWhichIsA("BasePart", true)
elseif box:IsA("BasePart") then
part = box
end

if part then
root.CFrame = part.CFrame
task.wait(0.5)
end

end

root.CFrame = OriginalCFrame

end
}) 
