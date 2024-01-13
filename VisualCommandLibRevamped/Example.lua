-- // Visual Library Revamped (I have removed the intro from the current source so Intro arguments will have no effect)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Utility-Libraries/main/VisualCommandLibRevamped/Source.lua"))()

local Window = Library:CreateWindow({
	Name = 'Test',
	IntroText = '',
	IntroIcon = '',
	IntroBlur = false,
	IntroBlurIntensity = 15,
	Theme = Library.Themes.nordicdark,
	Position = 'bottom',
	Draggable = false,
	Prefix = ';'
})

local newtable = {
	"Orange",
	"Squash",
	"Peach",
	"Pear",
	"Watermelon",
	"Lime",
	"Lemon",
	"Kiwi",
	"Grape",
	"Coconut",
	"Cranberry",
	"Cherry",
	"Apple",
	"Banana",
	"Cucumber",
	"Pickle",
	"Zucchini",
	"Tomato",
	"Eggplant",
	"Raspberry",
	"Blueberry",
}

-- // Commands
Window:NewSection('Main')

Window:AddCommand('Find', {'String'}, 'Finds the string in a table (First letters)', function(Arguments, Speaker)
	local searchString = Arguments[1]:lower()

	for i, v in pairs(newtable) do
		if v:lower():sub(1, #searchString) == searchString then
			print(v)
			Window:CreateNotification('Found', 'From table: '..v, 5)
		end
	end
end)

Window:AddCommand('Walkspeed', {'Number'}, 'Sets Walkspeed', function(Arguments, Speaker)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Arguments[1]
end)


--
Window:NewSection('Misc')

Window:AddCommand('PrintTable', {}, 'Prints table values', function(Arguments, Speaker)
	for i,v in pairs(newtable) do
		print("_")
		print(v)
	end
end)


--
Window:NewSection('Fruits')

for i,v in pairs(newtable) do
	Window:AddCommand(v, {}, v.. ' fruit', function(Arguments, Speaker)
		print(v)
	end)
end
