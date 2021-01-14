--[[
        Script Name     :       SpawnScripts/QueensColony/afallenpirate133770191.lua
	Script Purpose	:	Waypoint Path for afallenpirate133770191.lua
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
	MovementLoopAddLocation(NPC, -134.7, 4.57, -93.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -111.32, 4.03, -84.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.09, 4.05, -75.82, 2, 0)
	MovementLoopAddLocation(NPC, -119.16, 4.51, -73.49, 2, 0)
	MovementLoopAddLocation(NPC, -129.96, 4.35, -51.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -133.45, 4.37, -62.15, 2, 0)
	MovementLoopAddLocation(NPC, -137.52, 4.53, -66.91, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.66, 4.37, -69.93, 2, 0)
	MovementLoopAddLocation(NPC, -123.67, 4.53, -91.16, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -125.99, 4.54, -76.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.33, 4.5, -68.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -115.93, 4.49, -72.49, 2, 0)
	MovementLoopAddLocation(NPC, -118.07, 4.51, -90.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -127.59, 4.34, -93.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -135.19, 4.58, -99.83, 2, 0)
	MovementLoopAddLocation(NPC, -136.76, 4.58, -103.42, 2, 0)
	MovementLoopAddLocation(NPC, -139.84, 4.25, -107.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -140.03, 4.6, -102.93, 2, 0)
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