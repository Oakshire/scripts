--[[
        Script Name     :       SpawnScripts/QueensColony/afallenpirate429954.lua
	Script Purpose	:	Waypoint Path for afallenpirate429954.lua
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
	MovementLoopAddLocation(NPC, -126.16, 4.45, -91.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.61, 4.49, -70.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -133.6, 4.57, -99.3, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -114.48, 4.49, -75.49, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -126.83, 4.54, -79.55, 2, 0)
	MovementLoopAddLocation(NPC, -130.03, 4.55, -81.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.88, 4.58, -99.42, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.33, 4.36, -76.86, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.37, 4.55, -87.85, 2, 0)
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