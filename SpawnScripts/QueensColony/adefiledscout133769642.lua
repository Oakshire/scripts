--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769642.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769642.lua
	Script Author	:	Rylec, PlayFlavor by premierio015
	Script Date	:	06-26-2020 06:15:07 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "hp", 110)
        SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 197.95, -0.69, -165.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 197.04, -0.69, -138.05, 2, 0)
	MovementLoopAddLocation(NPC, 195.15, -0.69, -132.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 202.1, -0.71, -141.78, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 192.59, -0.68, -150.2, 2, 0)
	MovementLoopAddLocation(NPC, 176.91, 1.08, -157.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 193.8, -0.68, -154.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 200.82, -0.7, -168.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 195.23, -0.68, -151.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 202.16, -0.71, -167.51, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 188.14, -0.66, -135.35, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 182.51, -0.63, -171.43, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
        end
end