local ListLibrary = {}

local NewName = game:GetService("HttpService"):GenerateGUID()
local UserInputService = game:GetService("UserInputService")
local Minimized = false
local ListParent


local function EnableDragging(Frame)
	local StartedDragging, DraggingInput, DragStart, StartPosition

	local function Update(Input)
		local Delta = Input.Position - DragStart
		Frame.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
	end

	Frame.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			StartedDragging = true
			DragStart = Input.Position
			StartPosition = Frame.Position
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					StartedDragging = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement then
			DraggingInput = Input
		end
	end)

	UserInputService.InputChanged:Connect(function(Input)
		if Input == DraggingInput and StartedDragging then
			Update(Input)
		end
	end)
end


function ListLibrary:CreateList(Name)
local Name = Name or 'Title'
	
local ListDictionary = {
	["_ListGui"] = Instance.new("ScreenGui");
	["_List"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_TopBar"] = Instance.new("Frame");
	["_Title"] = Instance.new("TextLabel");
	["_UICorner1"] = Instance.new("UICorner");
	["_Close"] = Instance.new("ImageButton");
	["_Minimize"] = Instance.new("ImageButton");
	["_LocalScript"] = Instance.new("LocalScript");
	["_ClipRounding"] = Instance.new("Frame");
	["_ListFrame"] = Instance.new("Frame");
	["_ListScrollingFrame"] = Instance.new("ScrollingFrame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UnclipBOTTOM"] = Instance.new("Frame");
	["_UnclipTOP"] = Instance.new("Frame");
}

ListDictionary["_ListGui"].IgnoreGuiInset = true
ListDictionary["_ListGui"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
ListDictionary["_ListGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ListDictionary["_ListGui"].Name = NewName
ListDictionary["_ListGui"].Parent = game:GetService("Players").LocalPlayer.PlayerGui
ListParent = ListDictionary["_ListGui"]

ListDictionary["_List"].AnchorPoint = Vector2.new(0.5, 0.5)
ListDictionary["_List"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_List"].BackgroundTransparency = 0.18000000715255737
ListDictionary["_List"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_List"].BorderSizePixel = 0
ListDictionary["_List"].ClipsDescendants = true
ListDictionary["_List"].Position = UDim2.new(0.5, 0, 0.5, 0)
ListDictionary["_List"].Size = UDim2.new(0, 243, 0, 314)
ListDictionary["_List"].Name = "List"
ListDictionary["_List"].Parent = ListDictionary["_ListGui"]
ListDictionary["_List"].Active = true
EnableDragging(ListDictionary["_List"])

ListDictionary["_UICorner"].CornerRadius = UDim.new(0, 4)
ListDictionary["_UICorner"].Parent = ListDictionary["_List"]

ListDictionary["_TopBar"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
ListDictionary["_TopBar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_TopBar"].BorderSizePixel = 0
ListDictionary["_TopBar"].Size = UDim2.new(0, 243, 0, 22)
ListDictionary["_TopBar"].ZIndex = 3
ListDictionary["_TopBar"].Name = "TopBar"
ListDictionary["_TopBar"].Parent = ListDictionary["_List"]

ListDictionary["_Title"].Font = Enum.Font.GothamMedium
ListDictionary["_Title"].Text = Name
ListDictionary["_Title"].TextColor3 = Color3.fromRGB(240.00000089406967, 240.00000089406967, 240.00000089406967)
ListDictionary["_Title"].TextSize = 12
ListDictionary["_Title"].TextTransparency = 0.10000000149011612
ListDictionary["_Title"].TextXAlignment = Enum.TextXAlignment.Left
ListDictionary["_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListDictionary["_Title"].BackgroundTransparency = 1
ListDictionary["_Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_Title"].BorderSizePixel = 0
ListDictionary["_Title"].Position = UDim2.new(0.028806584, 0, 0.0909090936, 0)
ListDictionary["_Title"].Size = UDim2.new(0, 173, 0, 20)
ListDictionary["_Title"].ZIndex = 3
ListDictionary["_Title"].Name = "Title"
ListDictionary["_Title"].Parent = ListDictionary["_TopBar"]

ListDictionary["_UICorner1"].CornerRadius = UDim.new(0, 4)
ListDictionary["_UICorner1"].Parent = ListDictionary["_TopBar"]

ListDictionary["_Close"].Image = "rbxassetid://10747384394"
ListDictionary["_Close"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListDictionary["_Close"].BackgroundTransparency = 1
ListDictionary["_Close"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_Close"].BorderSizePixel = 0
ListDictionary["_Close"].Position = UDim2.new(0.910000026, 0, 0.136000007, 0)
ListDictionary["_Close"].Size = UDim2.new(0, 17, 0, 17)
ListDictionary["_Close"].ZIndex = 3
ListDictionary["_Close"].Name = "Close"
ListDictionary["_Close"].Parent = ListDictionary["_TopBar"]

ListDictionary["_Minimize"].Image = "rbxassetid://10734896206"
ListDictionary["_Minimize"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListDictionary["_Minimize"].BackgroundTransparency = 1
ListDictionary["_Minimize"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_Minimize"].BorderSizePixel = 0
ListDictionary["_Minimize"].Position = UDim2.new(0.828000009, 0, 0.136000007, 0)
ListDictionary["_Minimize"].Size = UDim2.new(0, 17, 0, 17)
ListDictionary["_Minimize"].ZIndex = 3
ListDictionary["_Minimize"].Name = "Minimize"
ListDictionary["_Minimize"].Parent = ListDictionary["_TopBar"]

ListDictionary["_ClipRounding"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
ListDictionary["_ClipRounding"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_ClipRounding"].BorderSizePixel = 0
ListDictionary["_ClipRounding"].Position = UDim2.new(0, 0, 0.863636374, 0)
ListDictionary["_ClipRounding"].Size = UDim2.new(0, 243, 0, 3)
ListDictionary["_ClipRounding"].ZIndex = 3
ListDictionary["_ClipRounding"].Name = "ClipRounding"
ListDictionary["_ClipRounding"].Parent = ListDictionary["_TopBar"]

ListDictionary["_ListFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListDictionary["_ListFrame"].BackgroundTransparency = 1
ListDictionary["_ListFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_ListFrame"].BorderSizePixel = 0
ListDictionary["_ListFrame"].ClipsDescendants = true
ListDictionary["_ListFrame"].Position = UDim2.new(0.0289999992, 0, 0.0960000008, 0)
ListDictionary["_ListFrame"].Size = UDim2.new(0, 228, 0, 276)
ListDictionary["_ListFrame"].Name = "ListFrame"
ListDictionary["_ListFrame"].Parent = ListDictionary["_List"]

ListDictionary["_ListScrollingFrame"].AutomaticCanvasSize = Enum.AutomaticSize.Y
ListDictionary["_ListScrollingFrame"].CanvasSize = UDim2.new(0, 0, 0, 0)
ListDictionary["_ListScrollingFrame"].ScrollBarImageColor3 = Color3.fromRGB(240.00000089406967, 240.00000089406967, 240.00000089406967)
ListDictionary["_ListScrollingFrame"].ScrollBarImageTransparency = 0.3499999940395355
ListDictionary["_ListScrollingFrame"].ScrollBarThickness = 2
ListDictionary["_ListScrollingFrame"].Active = true
ListDictionary["_ListScrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ListDictionary["_ListScrollingFrame"].BackgroundTransparency = 1
ListDictionary["_ListScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_ListScrollingFrame"].BorderSizePixel = 0
ListDictionary["_ListScrollingFrame"].Size = UDim2.new(0, 228, 0, 276)
ListDictionary["_ListScrollingFrame"].Name = "ListScrollingFrame"
ListDictionary["_ListScrollingFrame"].Parent = ListDictionary["_ListFrame"]

ListDictionary["_UIListLayout"].Padding = UDim.new(0, 5)
ListDictionary["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
ListDictionary["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
ListDictionary["_UIListLayout"].Parent = ListDictionary["_ListScrollingFrame"]

ListDictionary["_UnclipBOTTOM"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_UnclipBOTTOM"].BackgroundTransparency = 1
ListDictionary["_UnclipBOTTOM"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_UnclipBOTTOM"].BorderSizePixel = 0
ListDictionary["_UnclipBOTTOM"].LayoutOrder = 999999999
ListDictionary["_UnclipBOTTOM"].Size = UDim2.new(0, 0, 0, -3)
ListDictionary["_UnclipBOTTOM"].Name = "UnclipBOTTOM"
ListDictionary["_UnclipBOTTOM"].Parent = ListDictionary["_ListScrollingFrame"]
	
ListDictionary["_UnclipTOP"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_UnclipTOP"].BackgroundTransparency = 1
ListDictionary["_UnclipTOP"].BorderColor3 = Color3.fromRGB(0, 0, 0)
ListDictionary["_UnclipTOP"].BorderSizePixel = 0
ListDictionary["_UnclipTOP"].LayoutOrder = -999999999
ListDictionary["_UnclipTOP"].Size = UDim2.new(0, 0, 0, -3)
ListDictionary["_UnclipTOP"].Name = "UnclipTOP"
ListDictionary["_UnclipTOP"].Parent = ListDictionary["_ListScrollingFrame"]
	
	local Debounce = false
	
	local function StartDebounce()
		coroutine.resume(coroutine.create(function()
			Debounce = true
			task.wait(1)
			Debounce = false
		end))
	end
	
	local function ChangeState()
		if not Minimized and not Debounce then
			StartDebounce()
			Minimized = true
			ListDictionary["_ClipRounding"].Visible = false
			game:GetService('TweenService'):Create(ListDictionary["_List"], TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 243,0, 22)}):Play()
			task.wait(0.5)
			ListDictionary["_ListScrollingFrame"].Visible = false
		elseif Minimized and not Debounce then
			StartDebounce()
			Minimized = false
			ListDictionary["_ClipRounding"].Visible = true
			game:GetService('TweenService'):Create(ListDictionary["_List"], TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 243,0, 314)}):Play()
			ListDictionary["_ListScrollingFrame"].Visible = true
		end
	end

	ListDictionary["_Minimize"].MouseButton1Click:Connect(ChangeState)
	ListDictionary["_Close"].MouseButton1Click:Connect(function()
		game:GetService('TweenService'):Create(ListDictionary["_List"], TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 243,0, 0)}):Play()
		task.wait(0.5)
		ListDictionary["_ListGui"]:Destroy()
	end)
	
end

function ListLibrary:CreateListButton(Name, Callback)
	wait()
	local Name = Name or 'Title'
	local Callback = Callback or function() end
	
	local Button = {
		["_Copy"] = Instance.new("TextButton");
		["_UICorner2"] = Instance.new("UICorner");
		["_UIStroke"] = Instance.new("UIStroke");
	}
	
	Button["_Copy"].Font = Enum.Font.GothamMedium
	Button["_Copy"].Text = Name
	Button["_Copy"].TextColor3 = Color3.fromRGB(240.00000089406967, 240.00000089406967, 240.00000089406967)
	Button["_Copy"].TextSize = 11
	Button["_Copy"].TextTransparency = 0.10000000149011612
	Button["_Copy"].AutoButtonColor = false
	Button["_Copy"].BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933)
	Button["_Copy"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button["_Copy"].BorderSizePixel = 0
	Button["_Copy"].Position = UDim2.new(0.0241228063, 0, 0.0181159414, 0)
	Button["_Copy"].Size = UDim2.new(0, 209, 0, 23)
	Button["_Copy"].Name = "Copy"
	Button["_Copy"].Parent = ListParent:WaitForChild("List"):WaitForChild("ListFrame"):WaitForChild("ListScrollingFrame")

	Button["_UICorner2"].Parent = Button["_Copy"]

	Button["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Button["_UIStroke"].Color = Color3.fromRGB(45.00000111758709, 45.00000111758709, 45.00000111758709)
	Button["_UIStroke"].Parent = Button["_Copy"]
	
	Button["_Copy"].MouseButton1Click:Connect(function()
		if not Minimized then
			task.spawn(function()
				Callback()
			end)
		end
	end)
end

return ListLibrary
