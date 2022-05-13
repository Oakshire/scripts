--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledpriest133769534.lua
	Script Purpose	:	Waypoint Path for adefiledpriest133769534.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:17:31 
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
	MovementLoopAddLocation(NPC, 241.53, -0.27, -151.49, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 231.67, -0.82, -164.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 231.61, -0.92, -152.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 231.43, -0.82, -161.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 229.24, -0.81, -165.64, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 250.5, -0.86, -152.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 246.6, -0.88, -143.32, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 253.94, -1.19, -155.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 233.13, -0.82, -178.64, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 254.01, -1.25, -164.36, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 216.66, -0.76, -176.14, 2, math.random(12, 22))
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