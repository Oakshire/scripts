--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769558.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769558.lua
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
	MovementLoopAddLocation(NPC, 160.99, -0.55, -215.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.44, -0.51, -213.15, 2, 0)
	MovementLoopAddLocation(NPC, 143.79, -0.67, -208.21, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 138.44, -0.46, -208.7, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 144.13, -0.68, -208.39, 2, 0)
	MovementLoopAddLocation(NPC, 172.23, -0.59, -214.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 144.8, -0.61, -214.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 136.59, -0.46, -207.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 122.63, -0.41, -206.7, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 153.05, -0.52, -210.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 114.52, -0.37, -211.71, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 127.97, -0.43, -213.29, 2, 0)
	MovementLoopAddLocation(NPC, 136.28, -0.7, -215.41, 2, 0)
	MovementLoopAddLocation(NPC, 140.29, -0.63, -214.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 144.21, -0.88, -216.98, 2, 0)
	MovementLoopAddLocation(NPC, 154.53, -0.63, -219.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 151.13, -0.63, -214.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 143.2, -0.73, -215.7, 2, 0)
	MovementLoopAddLocation(NPC, 138.5, -0.62, -214.73, 2, math.random(12, 22))
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