--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledsoldier133769641.lua
	Script Purpose	:	Waypoint Path for adefiledsoldier133769641.lua
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
	MovementLoopAddLocation(NPC, 190.97, -0.67, -136.36, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 179.71, 0.81, -149.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 186.36, -0.65, -141.22, 2, 0)
	MovementLoopAddLocation(NPC, 195.01, -0.69, -134.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 196.82, -0.69, -138.26, 2, 0)
	MovementLoopAddLocation(NPC, 200.94, -0.7, -159.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 218.71, -0.77, -146.89, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 196.39, -0.69, -159.76, 2, 0)
	MovementLoopAddLocation(NPC, 190.48, -0.66, -164.77, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 189.46, -0.66, -170.12, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 175.33, -0.29, -167.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 188.23, -0.66, -167.5, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 172.74, -0.32, -170.31, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 179.77, -0.62, -173.9, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 183.31, -0.64, -166.58, 2, 0)
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