--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier133769591.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier133769591.lua
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
	MovementLoopAddLocation(NPC, 99.62, -0.33, -165.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 92.34, -0.42, -182.19, 2, 0)
	MovementLoopAddLocation(NPC, 89.65, -0.32, -198.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 79.15, -0.15, -178.99, 2, 0)
	MovementLoopAddLocation(NPC, 73.45, 0.42, -174.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 101.52, -1.7, -158.57, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 83.23, -0.26, -187.81, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 89.52, -0.2, -166.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 72.44, -2.58, -160.2, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 78.07, 0.57, -169.35, 2, 0)
	MovementLoopAddLocation(NPC, 79.99, 0.1, -175.61, 2, 0)
	MovementLoopAddLocation(NPC, 88.57, -0.48, -187.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 90.88, -0.3, -156.96, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn) 
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
        end
end