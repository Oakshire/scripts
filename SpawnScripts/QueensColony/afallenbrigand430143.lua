--[[
        Script Name     :       SpawnScripts/QueensColony/afallenbrigand430143.lua
	Script Purpose	:	Waypoint Path for afallenbrigand430143.lua
	Script Author	:	Rylec, VO by Premierio015
	Script Date	:	07-28-2020 10:35:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "difficulty", "6") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -134.02, 4.37, -87.53, 2, 0)
	MovementLoopAddLocation(NPC, -129.31, 4.35, -53, 2, 0)
	MovementLoopAddLocation(NPC, -123.34, 4.32, -41.62, 2, 0)
	MovementLoopAddLocation(NPC, -130.61, 4.35, -56.4, 2, 0)
	MovementLoopAddLocation(NPC, -134.25, 4.37, -85.84, 2, 0)
	MovementLoopAddLocation(NPC, -129.55, 4.36, -93.14, 2, 0)
	MovementLoopAddLocation(NPC, -115.89, 4.31, -98.55, 2, 0)
	MovementLoopAddLocation(NPC, -102.96, 4.46, -95.44, 2, 0)
	MovementLoopAddLocation(NPC, -89.65, 4.78, -83.8, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -91.49, 6.01, -73.24, 2, 0)
	MovementLoopAddLocation(NPC, -94.33, 4.59, -64.72, 2, 0)
	MovementLoopAddLocation(NPC, -96.13, -0.75, -55.32, 2, 0)
	MovementLoopAddLocation(NPC, -95.98, -7.18, -43.74, 2, 0)
	MovementLoopAddLocation(NPC, -93.47, -9.04, -38.46, 2, 0)
	MovementLoopAddLocation(NPC, -88.13, -9.04, -34.94, 2, 0)
	MovementLoopAddLocation(NPC, -84.64, -8.93, -35.25, 2, 0)
	MovementLoopAddLocation(NPC, -84.07, -8.93, -52.05, 2, 0)
	MovementLoopAddLocation(NPC, -85.26, -8.93, -34.59, 2, 0)
	MovementLoopAddLocation(NPC, -88.56, -9.04, -34.88, 2, 0)
	MovementLoopAddLocation(NPC, -93.76, -9.04, -38.4, 2, 0)
	MovementLoopAddLocation(NPC, -96.03, -7.09, -44.15, 2, 0)
	MovementLoopAddLocation(NPC, -96.22, -0.45, -56.02, 2, 0)
	MovementLoopAddLocation(NPC, -91.18, 6.01, -74.59, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -89.72, 4.78, -83.82, 2, 0) 
	MovementLoopAddLocation(NPC, -103.74, 4.46, -95.75, 2, 0)
	MovementLoopAddLocation(NPC, -116.13, 4.31, -98.44, 2, 0)
	MovementLoopAddLocation(NPC, -129.86, 4.36, -92.86, 2, 0)
	MovementLoopAddLocation(NPC, -134.18, 4.37, -85.52, 2, 0)
	MovementLoopAddLocation(NPC, -130.26, 4.35, -55.23, 2, 0)
	MovementLoopAddLocation(NPC, -123.35, 4.32, -41.7, 2, 0)
	MovementLoopAddLocation(NPC, -129.65, 4.35, -53.83, 2, 0)
--[[	MovementLoopAddLocation(NPC, -134.2, 4.37, -88.49, 2, 0)
	MovementLoopAddLocation(NPC, 55.36, 1.85, -235.47, 2, 0)
	MovementLoopAddLocation(NPC, 45.26, 1.7, -230.55, 2, 0)
	MovementLoopAddLocation(NPC, 35.32, 1.74, -230.62, 2, 0)
	MovementLoopAddLocation(NPC, 19.14, 1.8, -222.63, 2, 0)
	MovementLoopAddLocation(NPC, 6.52, 1.84, -211.63, 2, 0)
	MovementLoopAddLocation(NPC, -12.9, 2.46, -175.29, 2, 0)
	MovementLoopAddLocation(NPC, -48.62, 2.02, -158.23, 2, 0)
--]]end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 2656047938)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 819993724)
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