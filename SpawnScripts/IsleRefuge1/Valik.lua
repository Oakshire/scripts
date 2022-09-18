--[[
    Script Name    : SpawnScripts/IsleRefuge1/Valik.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 07:09:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	            local choice = math.random(1,5)
	            
					if choice == 1 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_ac88207.mp3", "The goal isn't always catching the pray, rather, its the chase.", "scheme", 152508601, 1517122703, Spawn)
					elseif choice == 2 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_aoi_gm_a3788b05.mp3", "Watch the tail.. watch the tail!", "cringe", 1917905155, 2497295526, Spawn)
					elseif choice == 3 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_44b38e8c.mp3", "Was it me, or did I just see something move over there?", "doubletake", 3599874332, 7461740, Spawn)
					elseif choice == 4 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_6b58eeec.mp3", "I keep my whit as sharp as my claws!  I never know which one I'll need to rely on.", "wink", 3670900464, 1104739099, Spawn)
					elseif choice == 5 then
					PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/kerran/kerran_eco_good_1_hail_gm_a981f363.mp3", "It is better to swallow your pride than to lose your life.", "nod", 2178756893, 2548415956, Spawn)
					end
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -90.79, -8.24, 46.43, 2, math.random(40,65))
	MovementLoopAddLocation(NPC, -91.97, -8.41, 46.07, 2, 0)
	MovementLoopAddLocation(NPC, -91.79, -8.37, 44.74, 2, 0)
	MovementLoopAddLocation(NPC, -86.17, -8.09, 41.91, 2, 0)
	MovementLoopAddLocation(NPC, -76.62, -7.46, 40.35, 2, 0)
	MovementLoopAddLocation(NPC, -67.53, -7.62, 36.94, 2, math.random(40,65))
	MovementLoopAddLocation(NPC, -65.41, -8.2, 35.36, 2, 0)
	MovementLoopAddLocation(NPC, -63.24, -8.56, 35.93, 2, 0)
	MovementLoopAddLocation(NPC, -61.4, -8.61, 38.8, 2, 0)
	MovementLoopAddLocation(NPC, -62.72, -8.34, 43.89, 2, 0)
	MovementLoopAddLocation(NPC, -64.75, -7.61, 49.2, 2, 0)
	MovementLoopAddLocation(NPC, -75.98, -8.05, 53.99, 2, 0)
	MovementLoopAddLocation(NPC, -81.08, -7.17, 62.01, 2, 0)
	MovementLoopAddLocation(NPC, -74.52, -8.05, 76.89, 2, 0)
	MovementLoopAddLocation(NPC, -67.88, -7.48, 80.54, 2, 0)
	MovementLoopAddLocation(NPC, -59.01, -8.19, 85.42, 2, math.random(40,65))
	MovementLoopAddLocation(NPC, -56.76, -9.16, 83.46, 2, 0)
	MovementLoopAddLocation(NPC, -58.53, -8.27, 81.09, 2, 0)
	MovementLoopAddLocation(NPC, -61.7, -7.88, 81.81, 2, 0)
	MovementLoopAddLocation(NPC, -66.12, -7.49, 84.77, 2, 0)
	MovementLoopAddLocation(NPC, -69.87, -7.65, 90.29, 2, 0)
	MovementLoopAddLocation(NPC, -81.1, -7.12, 94.17, 2, 0)
	MovementLoopAddLocation(NPC, -87.62, -7.15, 94.63, 2, 0)
	MovementLoopAddLocation(NPC, -91.69, -8.09, 95.38, 2, math.random(40,65))
	MovementLoopAddLocation(NPC, -93.45, -8.7, 96, 2, 0)
	MovementLoopAddLocation(NPC, -90.12, -7.64, 98.77, 2, 0)
	MovementLoopAddLocation(NPC, -87.81, -7.12, 95.61, 2, 0)
	MovementLoopAddLocation(NPC, -83.89, -7.33, 88.78, 2, 0)
	MovementLoopAddLocation(NPC, -79.52, -7.48, 82.73, 2, 0)
	MovementLoopAddLocation(NPC, -77.75, -7.9, 78.23, 2, 0)
	MovementLoopAddLocation(NPC, -77.08, -7.98, 66.4, 2, 0)
	MovementLoopAddLocation(NPC, -80.17, -7.32, 54.59, 2, 0)
	MovementLoopAddLocation(NPC, -85.47, -7.42, 50.24, 2, 0)
end


