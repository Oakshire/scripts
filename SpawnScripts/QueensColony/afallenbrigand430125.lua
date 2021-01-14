--[[
        Script Name     :       SpawnScripts/QueensColony/afallenbrigand430125.lua
	Script Purpose	:	Waypoint Path for afallenbrigand430125.lua
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
	MovementLoopAddLocation(NPC, -105.1, 4.27, -103.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -121.44, 4.33, -99.66, 2, 0)
	MovementLoopAddLocation(NPC, -129.59, 4.16, -105.38, 2, 0)
	MovementLoopAddLocation(NPC, -133.56, 4.57, -104.94, 2, 0)
	MovementLoopAddLocation(NPC, -134.83, 4.58, -103.66, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.82, 4.57, -104.42, 2, 0)
	MovementLoopAddLocation(NPC, -129.34, 4.18, -105.04, 2, 0)
	MovementLoopAddLocation(NPC, -123.26, 4.53, -101.76, 2, 0)
	MovementLoopAddLocation(NPC, -112.34, 4.3, -99.24, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -118.93, 4.52, -92.89, 2, 0)
	MovementLoopAddLocation(NPC, -124.79, 4.53, -64.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.46, 4.52, -62.56, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.29, 4.31, -99.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -107.02, 4.48, -113.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -112.06, 4.34, -103.59, 2, 0)
	MovementLoopAddLocation(NPC, -118.62, 4.51, -91.14, 2, 0)
	MovementLoopAddLocation(NPC, -117.86, 4.17, -82.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -118.11, 4.51, -92.15, 2, 0)
	MovementLoopAddLocation(NPC, -109.9, 4.32, -113.11, 2, math.random(12, 22))
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