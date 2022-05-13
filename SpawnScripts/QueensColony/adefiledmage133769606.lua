--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage133769606.lua
	Script Purpose	:	Waypoint Path for adefiledmage133769606.lua
	Script Author	:	Rylec, PlayFlavor by premierio015
	Script Date	:	06-26-2020 06:15:07 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "hp", 110)
        SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 88.63, -0.29, -173.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 92.69, -0.49, -178.49, 2, 0)
	MovementLoopAddLocation(NPC, 96.17, -0.31, -180.19, 2, 0)
	MovementLoopAddLocation(NPC, 97.2, -0.28, -182, 2, 0)
	MovementLoopAddLocation(NPC, 97.29, 0.4, -184.88, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 83.2, -0.27, -178.5, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 75.59, -2.05, -149.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 78.05, -1.89, -153.93, 2, 0)
	MovementLoopAddLocation(NPC, 89.7, -0.22, -166.46, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 91.75, -0.29, -198.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 90.17, -0.48, -194.72, 2, 0)
	MovementLoopAddLocation(NPC, 77.99, 0.09, -177.37, 2, 0)
	MovementLoopAddLocation(NPC, 74.54, 0.29, -175.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 91.69, -1.02, -144.8, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 87.43, 0.02, -163.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 92.76, -0.49, -178.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 88.55, -0.47, -192.6, 2, math.random(12, 22))
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