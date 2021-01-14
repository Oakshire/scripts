--[[
        Script Name     :       SpawnScripts/QueensColony/afallenpirate133770148.lua
	Script Purpose	:	Waypoint Path for afallenpirate133770148.lua
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
	MovementLoopAddLocation(NPC, -145.46, 3.77, -103, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.12, 3.71, -110.78, 2, 0)
	MovementLoopAddLocation(NPC, -117.67, 3.64, -115.95, 2, 0)
	MovementLoopAddLocation(NPC, -114.07, 3.63, -118.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -112.11, 4.22, -121.02, 2, 0)
	MovementLoopAddLocation(NPC, -106.53, 4.48, -123.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -108.65, 4.28, -103.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.67, 4.34, -97.5, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -107.53, 4.48, -115.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -120.08, 3.65, -113.31, 2, 0)
	MovementLoopAddLocation(NPC, -129.64, 3.69, -112.61, 2, 0)
	MovementLoopAddLocation(NPC, -138.59, 4.33, -107.68, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -133.08, 3.74, -110.67, 2, 0)
	MovementLoopAddLocation(NPC, -116.94, 3.68, -114.37, 2, 0)
	MovementLoopAddLocation(NPC, -111.59, 3.96, -114.76, 2, 0)
	MovementLoopAddLocation(NPC, -102.17, 4.43, -117.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -127.39, 4.55, -87.2, 2, math.random(12, 22))
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