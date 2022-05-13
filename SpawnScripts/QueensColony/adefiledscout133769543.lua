--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769543.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769543.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:17:00 
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
	MovementLoopAddLocation(NPC, 224.14, -0.79, -176.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 235.69, -0.57, -172.14, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 252.57, -1.08, -159.11, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 221.73, -0.78, -176.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 223.91, -0.79, -174.32, 2, 0)
	MovementLoopAddLocation(NPC, 228.24, -0.8, -171.54, 2, 0)
	MovementLoopAddLocation(NPC, 249.15, -0.59, -152.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 256.24, -0.82, -163.81, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 240.55, -0.46, -151.41, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 249.1, -0.58, -151.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 247.88, -0.92, -185.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 250.42, -0.84, -147.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 252.72, -1.1, -159.15, 2, math.random(12, 22))
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