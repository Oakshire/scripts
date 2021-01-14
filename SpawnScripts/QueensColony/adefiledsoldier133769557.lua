--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier133769557.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier133769557.lua
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
	MovementLoopAddLocation(NPC, 163.15, -0.55, -210.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.73, -0.79, -216.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 125.57, -0.85, -217.2, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 155.84, -0.68, -217.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 141.52, -0.69, -215.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 153.65, -0.68, -209.15, 2, 0)
	MovementLoopAddLocation(NPC, 159.31, -0.7, -209.19, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 165.2, -0.56, -211.47, 2, 0)
	MovementLoopAddLocation(NPC, 176.47, -0.6, -219.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 167.71, -0.57, -218.3, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 164.08, -0.56, -215.03, 2, 0)
	MovementLoopAddLocation(NPC, 158.76, -0.61, -209.86, 2, 0)
	MovementLoopAddLocation(NPC, 155.76, -0.68, -209.19, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 151.2, -0.7, -208.63, 2, 0)
	MovementLoopAddLocation(NPC, 128.53, -0.59, -214.4, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 131.79, -0.81, -217.4, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 150.64, -0.69, -208.95, 2, 0)
	MovementLoopAddLocation(NPC, 154.77, -0.72, -208.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 159.92, -0.73, -208.32, 2, 0)
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