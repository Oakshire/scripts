--[[
        Script Name     :       SpawnScripts/QueensColony/afallenbrigand133770250.lua
	Script Purpose	:	Waypoint Path for afallenbrigand133770250.lua
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
	MovementLoopAddLocation(NPC, -123.51, 4.33, -46.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.71, 4.52, -77.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.4, 4.53, -87.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -123.62, 4.53, -64.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.83, 4.44, -101.3, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -105.04, 4.27, -109.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.11, 3.86, -113.1, 2, 0)
	MovementLoopAddLocation(NPC, -132.1, 3.7, -111.67, 2, 0)
	MovementLoopAddLocation(NPC, -139.91, 4.2, -107.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -135.41, 4.28, -108.17, 2, 0)
	MovementLoopAddLocation(NPC, -131.2, 4.21, -106.76, 2, 0)
	MovementLoopAddLocation(NPC, -123.01, 4.53, -101.16, 2, 0)
	MovementLoopAddLocation(NPC, -117.08, 4.31, -100.36, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -104.88, 4.47, -117.81, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -104.39, 4.46, -99.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -112.1, 4.16, -88.01, 2, 0)
	MovementLoopAddLocation(NPC, -116.69, 4.26, -84.82, 2, 0)
	MovementLoopAddLocation(NPC, -123.55, 4.53, -83, 2, math.random(12, 22))
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