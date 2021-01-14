--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage133769581.lua
	Script Purpose	:	Waypoint Path for adefiledmage133769581.lua
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
	MovementLoopAddLocation(NPC, 130.39, -0.44, -207.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 136.8, -0.46, -208.25, 2, 0)
	MovementLoopAddLocation(NPC, 157.77, -0.53, -212.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 164.05, -0.56, -217.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 135.43, -0.5, -213.72, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 151.82, -0.91, -218.14, 2, 0)
	MovementLoopAddLocation(NPC, 158.04, -0.53, -220.51, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 141.37, -0.47, -209.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 135.66, -0.45, -209.74, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 157.72, -0.53, -210.7, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.92, -0.52, -212.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 156.15, -0.53, -212.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 123.8, -0.84, -218.62, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 134.17, -0.73, -218.26, 2, 0)
	MovementLoopAddLocation(NPC, 157.33, -0.53, -219.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 162.63, -0.55, -219.71, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 157.55, -0.54, -218.75, 2, 0)
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