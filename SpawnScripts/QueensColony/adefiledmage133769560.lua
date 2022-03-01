--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage133769560.lua
	Script Purpose	:	Waypoint Path for adefiledmage133769560.lua
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
	MovementLoopAddLocation(NPC, 168.84, -0.57, -213.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 151.74, -0.51, -210.37, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 134.17, -0.85, -217.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 138.25, -0.84, -216.67, 2, 0)
	MovementLoopAddLocation(NPC, 167.41, -0.76, -205.41, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.9, -0.8, -216.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 140.34, -0.79, -216.26, 2, 0)
	MovementLoopAddLocation(NPC, 136.97, -0.7, -215.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 130, -0.85, -217.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 136.29, -0.64, -214.88, 2, 0)
	MovementLoopAddLocation(NPC, 145, -0.65, -208.87, 2, 0)
	MovementLoopAddLocation(NPC, 150.22, -0.65, -209.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 156.85, -0.65, -209.52, 2, 0)
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