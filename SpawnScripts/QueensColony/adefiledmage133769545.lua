--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage133769545.lua
	Script Purpose	:	Waypoint Path for adefiledmage133769545.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:17:00 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 216.76, -0.76, -172.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 255.18, -1.18, -178.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 246.49, 0.21, -167.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 242.74, 0.21, -168.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 255.31, -1.14, -177.37, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 251.63, -1, -164.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 247.77, -1, -142.44, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 243.65, -0.09, -152.83, 2, 0)
	MovementLoopAddLocation(NPC, 228.1, -0.8, -170.66, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 243.95, 0.22, -167.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 232.88, -0.82, -176.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 229.23, -0.81, -165.72, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end