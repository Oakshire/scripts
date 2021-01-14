--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledpriest133769643.lua
	Script Purpose	:	Waypoint Path for adefiledpriest133769643.lua
	Script Author	:	Rylec, PlayFlavor by premierio015
	Script Date	:	06-26-2020 06:15:07 
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
	MovementLoopAddLocation(NPC, 185.55, -0.35, -153.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 181.3, -0.63, -163.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 183.56, -0.64, -164.42, 2, 0)
	MovementLoopAddLocation(NPC, 196.61, -0.68, -173.92, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 203.58, -0.71, -163.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 190.45, -0.66, -165.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 195.15, -0.68, -164.96, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 201.36, -0.71, -157.74, 2, 0)
	MovementLoopAddLocation(NPC, 202.33, -0.71, -152.92, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 195.28, -0.68, -164.9, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 209.2, -0.74, -155.94, 2, math.random(12, 22))
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