--[[
    Script Name    : SpawnScripts/IsleRefuge1/Geredo.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 07:09:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_002.mp3", "Thinking I should design a new mechanical boat. It would be perfect! Yes, perfect indeed!", "ponder", 2630458163, 1309095480, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_001.mp3", "Do you happen to have any mechanical leg extenders? I want to see the water.", "agree", 2902186099, 1357276764, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_003.mp3", "Owie, my elbow is sore!  It always gets this way when I am near water.  I could have helped rescue Anikra and Valik, but I wasn't able to swim.  Thanks for helping me.", "grumble", 2653823570, 1351171804, Spawn, 0)
	end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -39.43, -5.04, 103.58, 2, 0)
	MovementLoopAddLocation(NPC, -34.29, -5.07, 100.42, 2, 0)
	MovementLoopAddLocation(NPC, -30.66, -5.08, 98.78, 2, 0)
	MovementLoopAddLocation(NPC, -21.02, -5.12, 99.58, 2, 0)
	MovementLoopAddLocation(NPC, -10.97, -5.14, 102.09, 2, 0)
	MovementLoopAddLocation(NPC, 3.08, -5.2, 102.39, 2, 0)
	MovementLoopAddLocation(NPC, 9.91, -5.24, 105.16, 2, 0)
	MovementLoopAddLocation(NPC, 14.55, -5.06, 107.97, 2, 25)
	MovementLoopAddLocation(NPC, 12.23, -5.25, 116.93, 2, 0)
	MovementLoopAddLocation(NPC, 13.17, -5.25, 121.49, 2, 0)
	MovementLoopAddLocation(NPC, 19.58, -5.24, 136.56, 2, 0)
	MovementLoopAddLocation(NPC, 9.41, -3.95, 150.58, 2, 25)
	MovementLoopAddLocation(NPC, 8.54, -3.92, 152.24, 2, 0)
	MovementLoopAddLocation(NPC, 15.05, -5.27, 167.21, 2, 0)
	MovementLoopAddLocation(NPC, 11.93, -5.26, 173.57, 2, 0)
	MovementLoopAddLocation(NPC, 8.18, -5.24, 177.8, 2, 0)
	MovementLoopAddLocation(NPC, -2.19, -5.21, 184.95, 2, 0)
	MovementLoopAddLocation(NPC, -10.85, -5.22, 188.39, 2, 0)
	MovementLoopAddLocation(NPC, -20.2, -5.14, 181.75, 2, 0)
	MovementLoopAddLocation(NPC, -30.22, -5.1, 172.94, 2, 0)
	MovementLoopAddLocation(NPC, -44.44, -5.05, 162.84, 2, 0)
	MovementLoopAddLocation(NPC, -49.58, -5.02, 157.63, 2, 0)
	MovementLoopAddLocation(NPC, -52.59, -5.01, 145.79, 2, 0)
	MovementLoopAddLocation(NPC, -56.48, -4.99, 139.49, 2, 0)
	MovementLoopAddLocation(NPC, -58.92, -4.97, 130.9, 2, 0)
	MovementLoopAddLocation(NPC, -56.98, -4.95, 119.72, 2, 0)
	MovementLoopAddLocation(NPC, -56.95, -4.96, 119.5, 2, 0)
	MovementLoopAddLocation(NPC, -52.14, -5.33, 110.43, 2, 0)
	MovementLoopAddLocation(NPC, -36.57, -4.25, 109.65, 2, 0)
	MovementLoopAddLocation(NPC, -32.85, -4.25, 114.16, 2, 25)
	MovementLoopAddLocation(NPC, -32.25, -4.27, 115.03, 2, 0)
	MovementLoopAddLocation(NPC, -34.92, -4.25, 114.46, 2, 0)
	MovementLoopAddLocation(NPC, -49.06, -5.09, 109.86, 2, 0)
	MovementLoopAddLocation(NPC, -52.56, -4.99, 114.95, 2, 0)
	MovementLoopAddLocation(NPC, -54.92, -5, 120.43, 2, 0)
	MovementLoopAddLocation(NPC, -55.93, -5, 135.41, 2, 0)
	MovementLoopAddLocation(NPC, -48.07, -5.03, 150.99, 2, 0)
	MovementLoopAddLocation(NPC, -45.33, -5.04, 159, 2, 0)
	MovementLoopAddLocation(NPC, -33.54, -5.08, 167.37, 2, 0)
	MovementLoopAddLocation(NPC, -21.68, -5.13, 176.61, 2, 0)
	MovementLoopAddLocation(NPC, -10.64, -5.2, 187, 2, 0)
	MovementLoopAddLocation(NPC, -6.41, -5.19, 184.64, 2, 0)
	MovementLoopAddLocation(NPC, 2.45, -5.22, 179.25, 2, 0)
	MovementLoopAddLocation(NPC, 12.23, -5.26, 171.32, 2, 0)
	MovementLoopAddLocation(NPC, 17.24, -5.28, 162.68, 2, 0)
	MovementLoopAddLocation(NPC, 19.41, -5.29, 161.31, 2, 0)
	MovementLoopAddLocation(NPC, 30.4, -5.37, 152.54, 2, 25)
	MovementLoopAddLocation(NPC, 23.19, -5.29, 145.61, 2, 0)
	MovementLoopAddLocation(NPC, 17.17, -5.27, 140.63, 2, 0)
	MovementLoopAddLocation(NPC, 10.25, -5.24, 122.76, 2, 0)
	MovementLoopAddLocation(NPC, 7.74, -5.23, 106.3, 2, 0)
	MovementLoopAddLocation(NPC, -0.38, -5.2, 103.76, 2, 0)
	MovementLoopAddLocation(NPC, -14.09, -5.15, 103.59, 2, 0)
	MovementLoopAddLocation(NPC, -26.43, -5.04, 101.07, 2, 0)
	MovementLoopAddLocation(NPC, -25.48, -4.2, 112.26, 2, 25)
	MovementLoopAddLocation(NPC, -26.61, -4.21, 114.57, 2, 0)
	MovementLoopAddLocation(NPC, -31.45, -4.25, 112.43, 2, 0)
	MovementLoopAddLocation(NPC, -38.42, -4.96, 106.46, 2, 0)
end


