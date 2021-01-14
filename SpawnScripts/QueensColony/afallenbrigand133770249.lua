--[[
        Script Name     :       SpawnScripts/QueensColony/afallenbrigand133770249.lua
	Script Purpose	:	Waypoint Path for afallenbrigand133770249.lua
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
	MovementLoopAddLocation(NPC, -134.85, 4.4, -68.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -136.13, 4.38, -81.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -133.62, 4.57, -97.32, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -129.98, 4.36, -89.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.36, 4.37, -91.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -114.29, 4.21, -87.19, 2, 0)
	MovementLoopAddLocation(NPC, -104.86, 4.4, -89.32, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -114.3, 4.3, -96.77, 2, 0)
	MovementLoopAddLocation(NPC, -119.97, 5.26, -103.91, 2, 0)
	MovementLoopAddLocation(NPC, -122.23, 5.5, -104.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.36, 4.33, -98.57, 2, 0)
	MovementLoopAddLocation(NPC, -125.59, 4.54, -88.02, 2, 0)
	MovementLoopAddLocation(NPC, -136.09, 4.57, -66.89, 2, math.random(12, 22))
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