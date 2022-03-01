--[[
        Script Name     :       SpawnScripts/QueensColony/afallenpirate429938.lua
	Script Purpose	:	Waypoint Path for afallenpirate429938.lua
	Script Author	:	Rylec, VO by Premierio015
	Script Date	:	07-28-2020 10:35:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "difficulty", "6") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -124.78, 4.53, -56.36, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -135.52, 4.38, -76.75, 2, 0)
	MovementLoopAddLocation(NPC, -139.78, 4.48, -80.1, 2, 0)
	MovementLoopAddLocation(NPC, -146.29, 3.83, -88.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.51, 4.03, -97.92, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -139.74, 4.59, -94.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -135.43, 4.38, -82.12, 2, 0)
	MovementLoopAddLocation(NPC, -121.64, 4.52, -64.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -140.85, 4.5, -80.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -135.99, 4.38, -84.45, 2, 0)
	MovementLoopAddLocation(NPC, -109.81, 4.34, -113.79, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.42, 4.81, -106.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -130.16, 4.56, -97.28, 2, 0)
	MovementLoopAddLocation(NPC, -135.74, 4.58, -97.2, 2, math.random(12, 22))
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