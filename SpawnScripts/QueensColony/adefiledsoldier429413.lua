--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier429413.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier429413.lua
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
	MovementLoopAddLocation(NPC, 242.62, -0.86, -129.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 246.01, -0.82, -134.76, 2, 0)
	MovementLoopAddLocation(NPC, 254.04, -1.19, -153.31, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 241.62, -0.86, -128.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 240.7, -0.86, -138.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 237.6, -1, -116.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 241.32, -0.88, -136.3, 2, 0)
	MovementLoopAddLocation(NPC, 243.97, -0.87, -144.59, 2, 0)
	MovementLoopAddLocation(NPC, 244.56, -0.09, -152.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 240.45, -0.85, -147.86, 2, 0)
	MovementLoopAddLocation(NPC, 228.72, -0.82, -118.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 241.63, -0.25, -152, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 240.8, -0.85, -147.15, 2, 0)
	MovementLoopAddLocation(NPC, 243.79, -0.87, -136.38, 2, 0)
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