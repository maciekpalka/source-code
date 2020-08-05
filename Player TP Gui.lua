-- Objects

local ScreenGui = Instance.new("ScreenGui")
local tpgui = Instance.new("Frame")
local PlayerName = Instance.new("TextBox")
local TPButton = Instance.new("TextButton")
local CloseFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

tpgui.Name = "tpgui"
tpgui.Parent = ScreenGui
tpgui.BackgroundColor3 = Color3.new(1, 1, 1)
tpgui.BorderSizePixel = 0
tpgui.Position = UDim2.new(0.414915979, 0, 0.568218231, 0)
tpgui.Size = UDim2.new(0, 261, 0, 123)
tpgui.Draggable = true

PlayerName.Name = "PlayerName"
PlayerName.Parent = tpgui
PlayerName.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerName.Position = UDim2.new(0, 0, -0.000174961984, 0)
PlayerName.Size = UDim2.new(0, 261, 0, 49)
PlayerName.Font = Enum.Font.GothamBold
PlayerName.PlaceholderText = "Enter Name"
PlayerName.Text = ""
PlayerName.TextColor3 = Color3.new(0, 0, 0)
PlayerName.TextScaled = true
PlayerName.TextSize = 14
PlayerName.TextWrapped = true
PlayerName.Draggable = true

TPButton.Name = "TPButton"
TPButton.Parent = tpgui
TPButton.BackgroundColor3 = Color3.new(0.0117647, 0.623529, 1)
TPButton.BorderSizePixel = 0
TPButton.Position = UDim2.new(0.0279291961, 0, 0.527109027, 0)
TPButton.Size = UDim2.new(0, 246, 0, 48)
TPButton.Font = Enum.Font.GothamBold
TPButton.Text = "TP to player"
TPButton.TextColor3 = Color3.new(0, 0, 0)
TPButton.TextScaled = true
TPButton.TextSize = 14
TPButton.TextWrapped = true
TPButton.Draggable = true

CloseFrame.Name = "CloseFrame"
CloseFrame.Parent = tpgui
CloseFrame.BackgroundColor3 = Color3.new(1, 1, 1)
CloseFrame.BorderSizePixel = 0
CloseFrame.Position = UDim2.new(1, 0, 0.454268306, 0)
CloseFrame.Size = UDim2.new(0, 67, 0, 67)
CloseFrame.Draggable = true

Close.Name = "Close"
Close.Parent = CloseFrame
Close.BackgroundColor3 = Color3.new(0.0117647, 0.623529, 1)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.120466888, 0, 0.149652839, 0)
Close.Size = UDim2.new(0, 49, 0, 48)
Close.Font = Enum.Font.GothamBold
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.Draggable = true
Close.MouseButton1Down:connect(function()
tpgui.Visible = false
end)


TPButton.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerName.Text].Character.HumanoidRootPart.CFrame
end)