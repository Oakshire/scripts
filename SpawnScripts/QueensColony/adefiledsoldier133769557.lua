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