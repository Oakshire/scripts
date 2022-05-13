--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage429841.lua
	Script Purpose	:	Waypoint Path for adefiledmage429841.lua
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
	MovementLoopAddLocation(NPC, 250.68, -0.89, -152.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 251.78, -1.18, -142.11, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 230.46, -0.82, -124.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 227.72, -0.81, -122.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 253.54, -1.15, -146.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 248.8, -0.89, -146.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 248.59, -0.48, -148.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 248.54, -1.08, -141.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 240.55, -0.86, -132.89, 2, 0)
	MovementLoopAddLocation(NPC, 238.58, -0.85, -129.51, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 234.58, -1.05, -111.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 233.7, -0.83, -137.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 235.6, -0.84, -129.87, 2, math.random(12, 22))
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