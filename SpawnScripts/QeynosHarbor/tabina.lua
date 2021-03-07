--[[
	Script Name		:	soothsayertabina.lua
	Script Purpose	:	Waypoint Path for soothsayertabina.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:54:12 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_fighter_gf_544e4a58.mp3", "Epic battles await your future, but the strength of your arm shall tame them all!", "", 2750782728, 2274979632, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_barmaid_gf_23d3c5ab.mp3", "You seek a life to make yourself happy than trying to please others.", "", 2950244318, 54283461, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_mage_gf_f18445ae.mp3", "Clearly your intellect is your best asset. The world shall marvel at the wonders you control.", "", 2143349270, 291509869, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_guard_gf_8cbf41a3.mp3", "A profound sense of loyalty to your duty is your greatest strength.", "", 1355126191, 913914779, Spawn)
	else
	end

end

function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 797.49, -23.26, 98.44, 2, 30)
	MovementLoopAddLocation(NPC, 798.15, -23.26, 107.18, 2, 20)
	MovementLoopAddLocation(NPC, 805.71, -23.32, 107.4, 2, 0)
	MovementLoopAddLocation(NPC, 807.27, -23.33, 99.33, 2, 0)
	MovementLoopAddLocation(NPC, 819.55, -23.34, 64.6, 2, 0)
	MovementLoopAddLocation(NPC, 814.05, -23.27, 61.7, 2, 0)
	MovementLoopAddLocation(NPC, 809.61, -23.27, 62.88, 2, 0)
	MovementLoopAddLocation(NPC, 808.99, -23.27, 63.88, 2, 0)
	MovementLoopAddLocation(NPC, 809.29, -23.24, 66.71, 2, 0)
	MovementLoopAddLocation(NPC, 806.88, -23.27, 74, 2, 0)
	MovementLoopAddLocation(NPC, 798.86, -20.27, 69.6, 2, 0)
	MovementLoopAddLocation(NPC, 803.77, -17.27, 60.15, 2, 0)
	MovementLoopAddLocation(NPC, 809.55, -17.27, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, 803.01, -17.27, 62.37, 2, 0)
	MovementLoopAddLocation(NPC, 798.64, -20.27, 68.82, 2, 0)
	MovementLoopAddLocation(NPC, 799.61, -20.27, 69.98, 2, 0)
	MovementLoopAddLocation(NPC, 806.66, -23.27, 73.81, 2, 0)
	MovementLoopAddLocation(NPC, 809.86, -23.24, 67.32, 2, 0)
	MovementLoopAddLocation(NPC, 813.33, -23.27, 65.58, 2, 0)
	MovementLoopAddLocation(NPC, 815.09, -23.27, 62.05, 2, 0)
	MovementLoopAddLocation(NPC, 820.09, -23.33, 64.4, 2, 0)
	MovementLoopAddLocation(NPC, 831.65, -23.33, 43.01, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.31, 41.23, 2, 0)
	MovementLoopAddLocation(NPC, 856.03, -25.25, 38.54, 2, 0)
	MovementLoopAddLocation(NPC, 860.98, -25.43, 37.91, 2, 0)
	MovementLoopAddLocation(NPC, 861.98, -25.43, 24.43, 2, 0)
	MovementLoopAddLocation(NPC, 848.36, -25.47, 14.77, 2, 0)
	MovementLoopAddLocation(NPC, 832.3, -25.43, -11.42, 2, 0)
	MovementLoopAddLocation(NPC, 835.61, -25.43, -23.7, 2, 0)
	MovementLoopAddLocation(NPC, 867.36, -25.46, -33.22, 2, 0)
	MovementLoopAddLocation(NPC, 875.66, -25.47, -32.07, 2, 0)
	MovementLoopAddLocation(NPC, 882.76, -25.46, -29.24, 2, 0)
	MovementLoopAddLocation(NPC, 897.46, -25.46, -19.43, 2, 0)
	MovementLoopAddLocation(NPC, 889.44, -25.35, -46.95, 2, 0)
	MovementLoopAddLocation(NPC, 882.31, -25.45, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 877.78, -25.49, -56.75, 2, 0)
	MovementLoopAddLocation(NPC, 874.21, -25.46, -58.26, 2, 0)
	MovementLoopAddLocation(NPC, 841.61, -25.46, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 812.05, -20.4, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 805.57, -20.4, -58.35, 2, 0)
	MovementLoopAddLocation(NPC, 791.84, -21.11, -57.67, 2, 0)
	MovementLoopAddLocation(NPC, 775.18, -20.64, -24.61, 2, 30)
	MovementLoopAddLocation(NPC, 791.84, -21.11, -57.67, 2, 0)
	MovementLoopAddLocation(NPC, 805.57, -20.4, -58.35, 2, 0)
	MovementLoopAddLocation(NPC, 812.05, -20.4, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 841.61, -25.46, -58.23, 2, 0)
	MovementLoopAddLocation(NPC, 874.21, -25.46, -58.26, 2, 0)
	MovementLoopAddLocation(NPC, 877.78, -25.49, -56.75, 2, 0)
	MovementLoopAddLocation(NPC, 882.31, -25.45, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 889.44, -25.35, -46.95, 2, 0)
	MovementLoopAddLocation(NPC, 897.46, -25.46, -19.43, 2, 0)
	MovementLoopAddLocation(NPC, 882.76, -25.46, -29.24, 2, 0)
	MovementLoopAddLocation(NPC, 875.66, -25.47, -32.07, 2, 0)
	MovementLoopAddLocation(NPC, 867.36, -25.46, -33.22, 2, 0)
	MovementLoopAddLocation(NPC, 835.61, -25.43, -23.7, 2, 0)
	MovementLoopAddLocation(NPC, 832.3, -25.43, -11.42, 2, 0)
	MovementLoopAddLocation(NPC, 848.36, -25.47, 14.77, 2, 0)
	MovementLoopAddLocation(NPC, 861.98, -25.43, 24.43, 2, 0)
	MovementLoopAddLocation(NPC, 860.98, -25.43, 37.91, 2, 0)
	MovementLoopAddLocation(NPC, 856.03, -25.25, 38.54, 2, 0)
	MovementLoopAddLocation(NPC, 835.95, -23.31, 41.23, 2, 0)
	MovementLoopAddLocation(NPC, 831.65, -23.33, 43.01, 2, 0)
	MovementLoopAddLocation(NPC, 820.09, -23.33, 64.4, 2, 0)
	MovementLoopAddLocation(NPC, 815.09, -23.27, 62.05, 2, 0)
	MovementLoopAddLocation(NPC, 813.33, -23.27, 65.58, 2, 0)
	MovementLoopAddLocation(NPC, 809.86, -23.24, 67.32, 2, 0)
	MovementLoopAddLocation(NPC, 806.66, -23.27, 73.81, 2, 0)
	MovementLoopAddLocation(NPC, 799.61, -20.27, 69.98, 2, 0)
	MovementLoopAddLocation(NPC, 798.64, -20.27, 68.82, 2, 0)
	MovementLoopAddLocation(NPC, 803.01, -17.27, 62.37, 2, 0)
	MovementLoopAddLocation(NPC, 809.55, -17.27, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, 803.77, -17.27, 60.15, 2, 0)
	MovementLoopAddLocation(NPC, 798.86, -20.27, 69.6, 2, 0)
	MovementLoopAddLocation(NPC, 806.88, -23.27, 74, 2, 0)
	MovementLoopAddLocation(NPC, 809.29, -23.24, 66.71, 2, 0)
	MovementLoopAddLocation(NPC, 808.99, -23.27, 63.88, 2, 0)
	MovementLoopAddLocation(NPC, 809.61, -23.27, 62.88, 2, 0)
	MovementLoopAddLocation(NPC, 814.05, -23.27, 61.7, 2, 0)
	MovementLoopAddLocation(NPC, 819.55, -23.34, 64.6, 2, 0)
	MovementLoopAddLocation(NPC, 807.27, -23.33, 99.33, 2, 0)
	MovementLoopAddLocation(NPC, 805.71, -23.32, 107.4, 2, 0)
	MovementLoopAddLocation(NPC, 798.15, -23.26, 107.18, 2, 20)
	MovementLoopAddLocation(NPC, 797.49, -23.26, 98.44, 2, 30)
end




