--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout429311.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier429413.lua
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
	MovementLoopAddLocation(NPC, 230.79, -0.82, -118.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 247.61, -0.98, -144.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 232.65, -0.83, -130.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 232.55, -1.21, -108.5, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 241.52, -0.86, -131.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 236.52, -0.85, -141.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 229.54, -0.82, -120.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 227.91, -0.81, -124.83, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 235.47, -1.49, -122.11, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 234.67, -1.45, -121.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 232.64, -0.83, -137.07, 2, math.random(12, 22))
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