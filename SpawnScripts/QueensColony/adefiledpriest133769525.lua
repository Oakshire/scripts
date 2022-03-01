--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledpriest133769525.lua
	Script Purpose	:	Waypoint Path for adefiledpriest133769525.lua
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
	MovementLoopAddLocation(NPC, 230.75, -0.82, -127.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 247.68, -0.99, -142.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 245.65, -0.1, -151.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 237.82, -0.84, -146.29, 2, 0)
	MovementLoopAddLocation(NPC, 237.67, -0.84, -134.89, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 235.75, -1.17, -112.24, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 241.58, -0.89, -133.62, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 238.56, -0.85, -142.4, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 228.77, -0.92, -107.6, 2, math.random(12, 22))
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