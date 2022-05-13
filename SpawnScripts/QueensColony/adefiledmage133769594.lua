--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage133769594.lua
	Script Purpose	:	Waypoint Path for adefiledmage133769594.lua
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
	MovementLoopAddLocation(NPC, 99.45, -1.42, -157.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 88.56, -0.48, -187.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 90.78, -0.3, -166.14, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 88.5, -1.01, -146.12, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 103.65, -0.53, -172.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 101.55, -1.73, -158.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 90.73, -0.3, -166.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 75.59, -2.25, -150.91, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 82.93, -0.84, -153.52, 2, 0)
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