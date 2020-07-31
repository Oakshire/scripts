--[[
        Script Name     :       SpawnScripts/QueensColony/afallenpirate133770248.lua
	Script Purpose	:	Waypoint Path for afallenpirate133770248.lua
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
	MovementLoopAddLocation(NPC, -136.04, 4.48, -74.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -126.1, 4.54, -67.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -118.81, 4.52, -93.16, 2, 0)
	MovementLoopAddLocation(NPC, -114.93, 4.31, -101.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.96, 4.53, -70.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -109.69, 4.22, -88.56, 2, 0)
	MovementLoopAddLocation(NPC, -102.98, 4.46, -98.12, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -105.24, 4.46, -99.12, 2, 0)
	MovementLoopAddLocation(NPC, -106.82, 4.27, -100.78, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -102.3, 4.26, -113.86, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.82, 4.49, -91.3, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.4, 4.35, -99.44, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -129.05, 4.01, -105.51, 2, 0)
	MovementLoopAddLocation(NPC, -133.11, 4.36, -107.8, 2, 0)
	MovementLoopAddLocation(NPC, -134.87, 3.71, -111.68, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.37, 4.58, -105.74, 2, 0)
	MovementLoopAddLocation(NPC, -138.12, 4.59, -99.96, 2, 0)
	MovementLoopAddLocation(NPC, -143.71, 3.98, -95.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -137.99, 4.59, -89.68, 2, 0)
	MovementLoopAddLocation(NPC, -118.6, 4.51, -66.82, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.89, 4.52, -71.73, 2, 0)
	MovementLoopAddLocation(NPC, -119.97, 4.21, -76.83, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,6)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
        elseif choice == 3 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
        elseif choice == 4 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn) 
        elseif choice == 5 then
                PlayFavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
        elseif choice == 6 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,4)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
        elseif choice == 3 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        elseif choice == 4 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end