--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledmage429831.lua
	Script Purpose	:	Waypoint Path for adefiledmage429831.lua
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
	MovementLoopAddLocation(NPC, 242.72, -0.08, -175.79, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 231.7, -0.82, -163.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 239.15, -0.66, -181.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 236.67, -0.83, -163.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 245.04, 0.21, -161.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 220.57, -0.77, -167.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 226.12, -0.8, -167.8, 2, 0)
	MovementLoopAddLocation(NPC, 248.11, -0.74, -180.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 244.17, 0.22, -162.78, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 250.21, -0.81, -154.19, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 225.38, -0.79, -180.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 226.41, -0.79, -176.3, 2, 0)
	MovementLoopAddLocation(NPC, 228.16, -0.8, -171.42, 2, 0)
	MovementLoopAddLocation(NPC, 231.65, -0.85, -153.88, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, 229.2, -1, -155.2, 2, math.random(12, 22))
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