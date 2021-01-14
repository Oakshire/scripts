--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769533.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769533.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:17:23 
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
	MovementLoopAddLocation(NPC, 254.12, -1.25, -144.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 221.62, -0.78, -167.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 228.47, -0.8, -168.37, 2, 0)
	MovementLoopAddLocation(NPC, 243.85, -0.08, -177.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 238.07, -0.84, -178.88, 2, 0)
	MovementLoopAddLocation(NPC, 229.12, -0.8, -185.32, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 250.27, -0.78, -160.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 219.14, -0.77, -177.3, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 235.56, -0.83, -179.78, 2, math.random(12, 22))
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