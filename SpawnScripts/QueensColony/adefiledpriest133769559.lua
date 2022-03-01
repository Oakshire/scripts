--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledpriest133769559.lua
	Script Purpose	:	Waypoint Path for adefiledpriest133769559.lua
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
	MovementLoopAddLocation(NPC, 151.66, -0.89, -218.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 138.91, -0.46, -212.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 157.22, -0.58, -215.39, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 142.95, -0.8, -216.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 143.09, -0.48, -213.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 164.77, -0.56, -216.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 170.62, -0.58, -211.2, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 154.85, -0.77, -217.44, 2, 0)
	MovementLoopAddLocation(NPC, 138.64, -0.71, -215.41, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 138.74, -0.79, -218.36, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 131.54, -0.82, -217.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 171.83, -0.59, -211.33, 2, math.random(12, 22))
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