--[[
        Script Name     :       SpawnScripts/QueensColony/afallenpirate429996.lua
	Script Purpose	:	Waypoint Path for afallenpirate429996.lua
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
	MovementLoopAddLocation(NPC, -138.66, 3.95, -109.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -135.77, 3.9, -109.94, 2, 0)
	MovementLoopAddLocation(NPC, -125.66, 3.67, -112.97, 2, 0)
	MovementLoopAddLocation(NPC, -103.56, 4.27, -113.49, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -110.55, 4.37, -89.88, 2, 0)
	MovementLoopAddLocation(NPC, -120.24, 4.52, -73.94, 2, 0)
	MovementLoopAddLocation(NPC, -123.73, 4.53, -64.78, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -129.79, 4.4, -66.7, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -129.81, 4.41, -88.23, 2, 0)
	MovementLoopAddLocation(NPC, -127.77, 4.39, -97.03, 2, 0)
	MovementLoopAddLocation(NPC, -128.25, 3.86, -106.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -115.54, 4.5, -73.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -118.22, 4.2, -75.27, 2, 0)
	MovementLoopAddLocation(NPC, -122.49, 4.48, -77.12, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -136.52, 4.58, -102.83, 2, 0)
	MovementLoopAddLocation(NPC, -138.71, 4.52, -105.76, 2, 0)
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