--[[
	Script Name	: SpawnScripts/Graystone/GolanPanicward.lua
	Script Purpose	: Golan Panicward 
	Script Author	: John Adams/Scatman/Jabantiz
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 897.25, -22.61, -100.86, 2, 0)
	MovementLoopAddLocation(NPC, 900.33, -22.36, -106.33, 2, 0)
	MovementLoopAddLocation(NPC, 902.31, -22.3, -112.29, 2, 10, "FaceStone")
	MovementLoopAddLocation(NPC, 900.97, -22.31, -115.43, 2, 0)
	MovementLoopAddLocation(NPC, 898.34, -22.32, -119.24, 2, 0)
	MovementLoopAddLocation(NPC, 896.53, -22.46, -124.49, 2, 0)
	MovementLoopAddLocation(NPC, 895.65, -22.48, -130.99, 2, 0)
	MovementLoopAddLocation(NPC, 892.92, -22.61, -136.48, 2, 0)
	MovementLoopAddLocation(NPC, 887.66, -22.21, -137.06, 2, 0)
	MovementLoopAddLocation(NPC, 881.79, -22.21, -140.53, 2, 0)
	MovementLoopAddLocation(NPC, 877.09, -22.21, -145.92, 2, 0)
	MovementLoopAddLocation(NPC, 865.75, -22.21, -148.23, 2, 10)
	MovementLoopAddLocation(NPC, 865.72, -22.5, -151.71, 2, 0)
	MovementLoopAddLocation(NPC, 861.1, -23.27, -151.98, 2, 0)
	MovementLoopAddLocation(NPC, 855.63, -24.24, -151.78, 2, 0)
	MovementLoopAddLocation(NPC, 852.81, -24.12, -147.26, 2, 0)
	MovementLoopAddLocation(NPC, 850.67, -23.08, -147.17, 2, 0)
	MovementLoopAddLocation(NPC, 848.2, -22.35, -147.01, 2, 0)
	MovementLoopAddLocation(NPC, 844.73, -22.49, -143.91, 2, 0)
	MovementLoopAddLocation(NPC, 842.99, -21.61, -143.39, 2, 0)
	MovementLoopAddLocation(NPC, 841.07, -20.86, -142.96, 2, 0)
	MovementLoopAddLocation(NPC, 836.9, -20.93, -143.56, 2, 0)
	MovementLoopAddLocation(NPC, 833.3, -20.93, -143.42, 2, 10)
	MovementLoopAddLocation(NPC, 833.14, -20.93, -139.68, 2, 0)
	MovementLoopAddLocation(NPC, 835.57, -20.93, -135.04, 2, 0)
	MovementLoopAddLocation(NPC, 838.23, -20.93, -130.37, 2, 0)
	MovementLoopAddLocation(NPC, 834.81, -20.93, -125.75, 2, 0)
	MovementLoopAddLocation(NPC, 834.59, -20.97, -122.12, 2, 0)
	MovementLoopAddLocation(NPC, 834.97, -20.9, -117.55, 2, 0)
	MovementLoopAddLocation(NPC, 837.63, -20.74, -115.58, 2, 0)
	MovementLoopAddLocation(NPC, 840.33, -21.69, -116.32, 2, 0)
	MovementLoopAddLocation(NPC, 842.43, -22.72, -118.97, 2, 0)
	MovementLoopAddLocation(NPC, 844.62, -22.8, -121.65, 2, 10)
	MovementLoopAddLocation(NPC, 845.72, -22.67, -117.15, 2, 0)
	MovementLoopAddLocation(NPC, 845.78, -22.95, -111.79, 2, 0)
	MovementLoopAddLocation(NPC, 847.22, -23.15, -108.4, 2, 0)
	MovementLoopAddLocation(NPC, 849.93, -23.89, -107.18, 2, 0)
	MovementLoopAddLocation(NPC, 853.28, -24.96, -105.86, 2, 0)
	MovementLoopAddLocation(NPC, 866.22, -24.97, -102.99, 2, 0)
	MovementLoopAddLocation(NPC, 879.33, -24.95, -100.31, 2, 0)
	MovementLoopAddLocation(NPC, 882.84, -23.48, -99.63, 2, 0)
	MovementLoopAddLocation(NPC, 885.95, -22.05, -99.03, 2, 0)
	MovementLoopAddLocation(NPC, 889.06, -22.27, -101.34, 2, 0)
	MovementLoopAddLocation(NPC, 891.2, -22.3, -107.62, 2, 0)
	MovementLoopAddLocation(NPC, 895.77, -22.37, -108.66, 2, 0)
	MovementLoopAddLocation(NPC, 896.51, -22.37, -105.48, 2, 0)
	MovementLoopAddLocation(NPC, 896.03, -22.61, -102.33, 2, 0)
	MovementLoopAddLocation(NPC, 893.32, -22.61, -98.13, 2, 0)
	MovementLoopAddLocation(NPC, 891.33, -22.61, -94.38, 2, 10)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomTalk(NPC, Spawn, false)
end

function RandomTalk(NPC, Spawn, Option)
	local choice = 0
	if Option == nil then
		choice = math.random(1, 100)
	end
	
	if choice < 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "", "Haha, I saw you!  I'm not one to fall for the same thing three times.", "", 1689589577, 4560189, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "", "Ah, what I wouldn't give to cradle a mug of good Dwarven Ale just now.", "", 1689589577, 4560189, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "", "A hard day of adventuring makes one long for home, don't it?", "", 1689589577, 4560189, Spawn)
		else
			PlayFlavor(NPC, "", "Only elves would build a city high up in the trees without any railing!", "", 1689589577, 4560189, Spawn)
		end
	end
end

function FaceStone(NPC)
	SpawnSet(NPC, "heading", "52.65")
end