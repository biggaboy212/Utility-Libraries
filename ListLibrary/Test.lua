local ListLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/biggaboy212/Utility-Libraries/main/ListLibrary/Source.lua'))()

task.wait(1)
local ListLibrary = require(script.ModuleScript)

local Teleports = {
	["Bank"] = Vector3.new(-447.26019287109375, 23.003671646118164, -283.8965759277344),
	["Police"] = Vector3.new(-265.4961853027344, 21.797977447509766, -116.37294006347656),
	["Boxing"] = Vector3.new(-235.43539428710938, 22.065319061279297, -1121.0645751953125),
	["Military"] = Vector3.new(38.51276397705078, 25.253023147583008, -875.2348022460938),
	["Phone Store"] = Vector3.new(-235.43539428710938, 22.065319061279297, -1121.0645751953125),
	["Fitness"] = Vector3.new(-76.6124267578125, 22.69831657409668, -632.8761596679688),
	["Hospital"] = Vector3.new(105.38876342773438, 22.798017501831055, -483.2912902832031),
	["Food"] = Vector3.new(-325.65826416015625, 23.680667877197266, -293.7251281738281),
	["Skate Park"] = Vector3.new(-850.03955078125, 21.79800796508789, -531.6365356445312),
	["Casino"] = Vector3.new(-864.4593505859375, 21.597980499267578, -101.7231216430664),
	["Club"] = Vector3.new(-262.5336608886719, 22.628089904785156, -453.33203125),
	["School"] = Vector3.new(-652.6968383789062, 21.982521057128906, 306.2254943847656),
	["Uphill Guns"] = Vector3.new(483.9078369140625, 48.06851577758789, -623.272521972656),
	["Downhill Guns"] = Vector3.new(-582.5549926757812, 8.312807083129883, -737.0886840820312),
	["Max Armor"] = Vector3.new(-510.3179626464844, 20.275625228881836, -285.819885253906259),
	["High Medium Armor"] = Vector3.new(-934.0250244140625, -28.14982795715332, 570.5496826171875),
	["Medium Armor"] = Vector3.new(-607.9784545898438, 7.449648857116699, -788.4942626953125),
	["Fire Armor"] = Vector3.new(-504.22802734375, 20.25925636291504, -286.00994873046875),
	["RPG"] = Vector3.new(114.18929290771484, -26.752010345458984, -276.26934814453125),
	["Revolver"] = Vector3.new(-643.6868286132812, 21.748022079467773, -121.32481384277344),
	["Double-Barrel shotgun"] = Vector3.new(23.364553451538086, 25.628028869628906, -834.4078369140625),
	["Tactical Shotgun"] = Vector3.new(23.364553451538086, 25.628028869628906, -834.4078369140625),
	["Rifle"] = Vector3.new(-167.8747100830078, -18.040834426879883, -311.8492431640625),
	["AUG"] = Vector3.new(-273.3023376464844, 52.261661529541016, -216.994140625),
	["Knife"] = Vector3.new(-278.2847900390625, 21.74802017211914, -239.21456909179688),
	["Sledgehammer"] = Vector3.new(-901.64404296875, 21.74802017211914, -296.5692443847656),
	["Bat"] = Vector3.new(-80.242919921875, 21.748022079467773, -293.10821533203125),
	["Pitchfork"] = Vector3.new(250.8275604248047, 21.747995376586914, -28.456567764282227),
	["Shovel"] = Vector3.new(150.86940002441406, 21.747995376586914, 31.57048988342285),
	["StopSign"] = Vector3.new(-225.90127563476562, 21.74802017211914, -81.81007385253906),
	["Tazer"] = Vector3.new(-270.2383728027344, 21.7979793548584, -98.4942855834961),
	["TearGas"] = Vector3.new(98.40107727050781, 25.637149810791016, -891.5840454101562),
	["Lockpick"] = Vector3.new(-264.5516357421875, 21.748022079467773, -238.6057891845703),
	["Key"] = Vector3.new(-271.192138671875, 21.748022079467773, -239.74179077148438),
	["Grenade"] = Vector3.new(108.70999145507812, -26.75200653076172, -273.833251953125),
	["Weights"] = Vector3.new(-55.78539276123047, 22.948291778564453, -654.3751220703125),
	["Lettuce"] = Vector3.new(-81.97262573242188, 22.698314666748047, -632.7714233398438),
	["Anti-bodies"] = Vector3.new(109.00323486328125, 22.798017501831055, -471.5952453613281),
	["Mask"] = Vector3.new(105.38876342773438, 22.798017501831055, -483.2912902832031),
}

local New = {
	["Apple"] = "apple",
	["Orange"] = "orange",
	["Banana"] = "banana",
	["Cucumber"] = "cucumber",
}

local NewList = ListLibrary:CreateList("TitleOfThaList")

local startTime = tick()

for Name, TP in pairs(Teleports) do
	NewList:CreateListButton(Name, true, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TP)
	end)
end

local endTime = tick()
local elapsedTime = endTime - startTime
print("Completed in: ", elapsedTime, "ms")

task.wait(1)

NewList:ClearList()

	for Name, String in pairs(New) do
		NewList:CreateListButton(Name, true, function()
			print(String)
		end)
	end

local testbtn = NewList:CreateListButton('Testing', true, function()
	print('a')
end)

task.wait(15)

print('aasdasdsad')
testbtn:UpdateButton("New a")
