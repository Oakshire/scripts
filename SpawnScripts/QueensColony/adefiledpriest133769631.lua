--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledpriest133769631.lua
	Script Purpose	:	Waypoint Path for adefiledpriest133769631.lua
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
	MovementLoopAddLocation(NPC, 179.85, -0.62, -171.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 193.76, -0.68, -165, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 200.8, -0.71, -146.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 197.94, -0.7, -143.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 200.77, -0.7, -159.77, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 187.76, -0.66, -154.5, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 188.04, -0.66, -160.75, 2, 0)
	MovementLoopAddLocation(NPC, 192.36, -0.67, -166.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 198.92, -0.7, -134.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 194.06, -0.68, -149.34, 2, 0)
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