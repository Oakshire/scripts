--[[
    Script Name    : SpawnScripts/ThunderingSteppes/OutlandSentryLanders.lua
    Script Author  : Jabantiz
    Script Date    : 2015.07.12 02:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 79.15, 2.91, -572.45, 2)
	MovementLoopAddLocation(NPC, 70.78, 6.95, -560.78, 2)
	MovementLoopAddLocation(NPC, 57.14, 8.62, -554.45, 2)
	MovementLoopAddLocation(NPC, 36.07, 12.80, -553.58, 2)
	MovementLoopAddLocation(NPC, 20.67, 16.58, -559.86, 2)
	MovementLoopAddLocation(NPC, -3.70, 19.40, -569.21, 2)
	MovementLoopAddLocation(NPC, -56.73, 19.30, -580.18, 2)
	MovementLoopAddLocation(NPC, -73.70, 18.98, -577.56, 2)
	MovementLoopAddLocation(NPC, -89.31, 18.93, -571.66, 2)
	MovementLoopAddLocation(NPC, -117.40, 19.60, -548.26, 2)
	MovementLoopAddLocation(NPC, -131.36, 18.13, -532.85, 2)
	MovementLoopAddLocation(NPC, -146.61, 13.67, -515.87, 2)
	MovementLoopAddLocation(NPC, -162.29, 8.37, -496.02, 2)
	MovementLoopAddLocation(NPC, -174.85, 2.48, -483.08, 2)
	MovementLoopAddLocation(NPC, -190.58, -0.66, -464.35, 2)
	MovementLoopAddLocation(NPC, -198.52, -4.40, -447.93, 2)
	MovementLoopAddLocation(NPC, -204.33, -8.51, -440.59, 2)
	
	MovementLoopAddLocation(NPC, -198.52, -4.40, -447.93, 2)
	MovementLoopAddLocation(NPC, -190.58, -0.66, -464.35, 2)
	MovementLoopAddLocation(NPC, -174.85, 2.48, -483.08, 2)
	MovementLoopAddLocation(NPC, -162.29, 8.37, -496.02, 2)
	MovementLoopAddLocation(NPC, -146.61, 13.67, -515.87, 2)
	MovementLoopAddLocation(NPC, -131.36, 18.13, -532.85, 2)
	MovementLoopAddLocation(NPC, -117.40, 19.60, -548.26, 2)
	MovementLoopAddLocation(NPC, -89.31, 18.93, -571.66, 2)
	MovementLoopAddLocation(NPC, -73.70, 18.98, -577.56, 2)
	MovementLoopAddLocation(NPC, -56.73, 19.30, -580.18, 2)
	MovementLoopAddLocation(NPC, -3.70, 19.40, -569.21, 2)
	MovementLoopAddLocation(NPC, 20.67, 16.58, -559.86, 2)
	MovementLoopAddLocation(NPC, 36.07, 12.80, -553.58, 2)
	MovementLoopAddLocation(NPC, 57.14, 8.62, -554.45, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC,Spawn)
    	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_steppes/ft/human/human_steppes_1_death_gm_85ef3300.mp3", "No!  That was my friend!", "", 572896703, 552083718, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_steppes/ft/human/human_steppes_1_death_gm_f56b206a.mp3", "At least they died with their boots on.", "", 2785078984, 3057500781, Spawn, 0)
	end
end
