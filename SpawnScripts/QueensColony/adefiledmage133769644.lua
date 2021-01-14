--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage133769644.lua
	Script Purpose	:	Waypoint Path for adefiledmage133769644.lua
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
	MovementLoopAddLocation(NPC, 181.03, 0, -146.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 171.17, -0.59, -177.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 190.42, -0.66, -161.66, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 182.54, -0.63, -166.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 203.52, -0.71, -158.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 211.94, -0.75, -154.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 190.92, -0.67, -140.47, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 181, 0.87, -152.13, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 191.04, -0.67, -170.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 205.11, -0.72, -162.46, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 185.2, -0.65, -145.47, 2, math.random(12, 22))
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