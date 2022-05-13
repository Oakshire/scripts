--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier429404.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier429404.lua
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
	MovementLoopAddLocation(NPC, 236.4, -0.83, -175.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 226.97, -0.8, -165.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 240.47, -0.3, -172.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 239.96, -0.52, -174.91, 2, 0)
	MovementLoopAddLocation(NPC, 238.04, -0.84, -177.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 244.02, 0.21, -159.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 219.49, -0.77, -178.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 231.75, -0.81, -178.1, 2, 0)
	MovementLoopAddLocation(NPC, 239.76, -0.56, -176.06, 2, 0)
	MovementLoopAddLocation(NPC, 248.94, -0.59, -177.37, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 232.61, -0.82, -172.47, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 236.34, -0.47, -167.42, 2, 0)
	MovementLoopAddLocation(NPC, 245.39, 0.21, -161.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 239.86, -0.5, -159.85, 2, math.random(12, 22))
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