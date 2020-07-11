--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier133769629.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier133769629.lua
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
	MovementLoopAddLocation(NPC, 172.62, -0.6, -177.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 183.25, -0.64, -167.71, 2, 0)
	MovementLoopAddLocation(NPC, 188.37, -0.66, -158.95, 2, 0)
	MovementLoopAddLocation(NPC, 190.91, -0.67, -157.25, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 190.95, -0.67, -160.16, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 189.6, -0.67, -148.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 196.54, -0.69, -157.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 190.9, -0.67, -145.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 191.12, -0.67, -160.53, 2, 0)
	MovementLoopAddLocation(NPC, 189.5, -0.66, -171.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 197.95, -0.7, -137.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 196.85, -0.69, -140.11, 2, 0)
	MovementLoopAddLocation(NPC, 190.98, -0.67, -149.04, 2, 0)
	MovementLoopAddLocation(NPC, 172.65, 0.46, -165.01, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 189.43, -0.66, -153.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 180.12, -0.63, -165.24, 2, 0)
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