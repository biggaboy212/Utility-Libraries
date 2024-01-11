local ListLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/biggaboy212/Utility-Libraries/main/ListLibrary/Source.lua'))()

local Teleports = {
	["Shop"] = Vector3.new(-447.26019287109375, 23.003671646118164, -283.8965759277344),
	["Base"] = Vector3.new(-265.4961853027344, 21.797977447509766, -116.37294006347656),
	["Enemy"] = Vector3.new(-235.43539428710938, 22.065319061279297, -1121.0645751953125),
}

ListLibrary:CreateList("Teleport Menu")

for Name,TP in pairs(Teleports) do
	ListLibrary:CreateListButton(Name, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TP)
	end)
end
