--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769579.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769579.lua
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
	MovementLoopAddLocation(NPC, 148.21, -0.92, -217.68, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 168.86, -0.57, -212.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.73, -0.6, -209.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 144.22, -0.7, -215.4, 2, 0)
	MovementLoopAddLocation(NPC, 141.33, -0.72, -215.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 135.66, -0.71, -215.51, 2, 0)
	MovementLoopAddLocation(NPC, 122.73, -0.41, -208.36, 2, 0)
	MovementLoopAddLocation(NPC, 120.91, -0.4, -207.71, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 117.66, -0.39, -211.6, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 151.13, -0.51, -212.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 130.58, -0.56, -214.39, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 132.02, -0.44, -210.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 124.04, -0.41, -207.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 129.22, -0.79, -218.19, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 135.04, -0.81, -217.67, 2, 0)
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