--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769592.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769592.lua
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
	MovementLoopAddLocation(NPC, 96.02, -0.92, -147.92, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 91.73, -0.35, -171.17, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 89.63, -0.48, -189.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 71.35, -2.48, -155.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 75.95, 0.25, -175.85, 2, 0)
	MovementLoopAddLocation(NPC, 76.01, -0.37, -181.96, 2, 0)
	MovementLoopAddLocation(NPC, 78.8, -0.54, -189.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 75.96, -0.52, -183.43, 2, 0)
	MovementLoopAddLocation(NPC, 73.47, -2.59, -155.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 75.68, -2.35, -157.14, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 88.71, -0.11, -163.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 92.8, -1.02, -152.39, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 106.91, -0.43, -164.59, 2, math.random(12, 22))
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