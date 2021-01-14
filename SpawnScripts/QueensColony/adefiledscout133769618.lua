--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledscout133769618.lua
	Script Purpose	:	Waypoint Path for adefiledscout133769618.lua
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
	MovementLoopAddLocation(NPC, 149.4, -0.51, -199.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 159.19, -0.54, -198.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 143.51, 0.01, -187.37, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 156.22, -0.53, -194.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 154.24, -0.53, -192.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 154.24, -0.52, -197.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 140.36, 0.05, -186.2, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 154.18, -0.53, -193.96, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 132.46, 0.07, -172.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 147.97, -0.5, -194.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 150.46, -0.51, -189.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 152.42, -0.44, -187.11, 2, math.random(12, 22))
end

function aggro(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random (1,3)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
        elseif choice == 2 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn) 
        end
end

function death(NPC, Spawn)
        math.randomseed(os.time())
        local choice = math.random(1,2)

        if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
        else
                PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
        end
end