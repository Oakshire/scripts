--[[
        Script Name     :       SpawnScripts/QueensColony/afallenbrigand133770166.lua
	Script Purpose	:	Waypoint Path for afallenbrigand133770166.lua
	Script Author	:	Rylec, VO by Premierio015
	Script Date	:	07-28-2020 10:35:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "difficulty", "6") 
        SpawnSet(NPC, "hp", 150)
        SpawnSet(NPC, "power", 80)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -124.88, 3.67, -107.68, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.21, 3.7, -113.64, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -130.19, 3.69, -110.21, 2, 0)
	MovementLoopAddLocation(NPC, -122.12, 4.33, -96.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -107.65, 4.47, -97.5, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.95, 5.61, -107.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.29, 4.52, -102.17, 2, 0)
	MovementLoopAddLocation(NPC, -122.86, 4.34, -93.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.41, 4.84, -107.02, 2, 0)
	MovementLoopAddLocation(NPC, -106.86, 4.48, -116.1, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -113.14, 4.5, -125.2, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -110.64, 4.17, -115.58, 2, 0)
	MovementLoopAddLocation(NPC, -110.96, 4.39, -105.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -104.91, 4.47, -95.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.6, 4.51, -93.58, 2, 0)
	MovementLoopAddLocation(NPC, -137.33, 4.55, -87.2, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -125.24, 4.42, -103.27, 2, 0)
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