--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier133769617.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier133769617.lua
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
	MovementLoopAddLocation(NPC, 136.26, -0.46, -193.21, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 147.31, 0.09, -190.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 141.26, 0.48, -181.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 138.3, -0.43, -185.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.23, -0.52, -189.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 147.14, -0.5, -193.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 144.22, -0.49, -194.2, 2, 0)
	MovementLoopAddLocation(NPC, 141.46, -0.48, -198.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 145.67, -0.39, -193.03, 2, 0)
	MovementLoopAddLocation(NPC, 151.45, -0.52, -189.21, 2, math.random(12, 22))
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