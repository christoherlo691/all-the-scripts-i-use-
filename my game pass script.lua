-- Gui to Lua
-- Version: 3.2

-- Instances:

local TextButton = Instance.new("TextButton")

--Properties:

TextButton.Parent = game.StarterGui.ScreenGui.Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.194552526, 0)
TextButton.Size = UDim2.new(0, 397, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "all game pass's"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
all game passes.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Gamepasses.NitroSpeed.Value = true

	local basket_status = game.Players.LocalPlayer.NonSaveVars.BasketStatus
	local backpack_amount = game.Players.LocalPlayer.NonSaveVars.BackpackAmount
	local washing_machine_capacity = game.Players.LocalPlayer.NonSaveVars.TotalWashingMachineCapacity
	local basket_size = game.Players.LocalPlayer.NonSaveVars.BasketSize
	local remaining_basket = math.min(basket_size.Value - backpack_amount.Value, washing_machine_capacity.Value - backpack_amount.Value)
end)
-- Scripts:


local function IMQLEXS_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	frame = script.Parent.Frame -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(IMQLEXS_fake_script)()