--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunarianWolfmaster.lua
    Script Author  : Cynnar
    Script Date    : 2017.01.15 02:01:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	local modeltype = GetModelType(NPC)
	if modeltype == 71 then
		SetModelType(NPC, 65)
	end
	local sli = GetSpawnLocationID(NPC)
	if sli == 394954 then
		atw394954(NPC)
	end
end

function hailed(NPC, Spawn)
Say(NPC, "Testing script")
end

function respawn(NPC)
	spawn(NPC)
end

function atw394954(NPC)
MovementLoopAddLocation(NPC, -82.9, -9.01, -32.37, 2, 5)
MovementLoopAddLocation(NPC, -89.3, -9.04, -32.93, 2, 0)
MovementLoopAddLocation(NPC, -93.81, -9.04, -39.63, 2, 0)
MovementLoopAddLocation(NPC, -92.14, -6.69, -44.1, 2, 0)
MovementLoopAddLocation(NPC, -97.23, -3.89, -49.12, 2, 0)
MovementLoopAddLocation(NPC, -100.03, -1.57, -53.72, 2, 0)
MovementLoopAddLocation(NPC, -94.65, 0.25, -57.16, 2, 0)
MovementLoopAddLocation(NPC, -95.38, 2.81, -61.48, 2, 0)
MovementLoopAddLocation(NPC, -97.77, 4.07, -63, 2, 0)
MovementLoopAddLocation(NPC, -92.54, 5.15, -66.36, 2, 0)
MovementLoopAddLocation(NPC, -91.12, 6.01, -77.53, 2, 0)
MovementLoopAddLocation(NPC, -90.65, 4.56, -85.65, 2, 0)
MovementLoopAddLocation(NPC, -97.59, 4.44, -89.64, 2, 0)
MovementLoopAddLocation(NPC, -97.98, 4.44, -93.59, 2, 0)
MovementLoopAddLocation(NPC, -110.26, 4.3, -99.75, 2, 0)
MovementLoopAddLocation(NPC, -119.67, 4.32, -100.01, 2, 0)
MovementLoopAddLocation(NPC, -131.47, 4.37, -92.67, 2, 0)
MovementLoopAddLocation(NPC, -134.29, 4.37, -86.85, 2, 0)
MovementLoopAddLocation(NPC, -130.15, 4.35, -61.75, 2, 0)
MovementLoopAddLocation(NPC, -128.1, 4.34, -53.3, 2, 0)
MovementLoopAddLocation(NPC, -130.09, 4.35, -59.37, 2, 0)
MovementLoopAddLocation(NPC, -133.06, 4.37, -85.97, 2, 0)
MovementLoopAddLocation(NPC, -128.33, 4.55, -71.54, 2, 0)
MovementLoopAddLocation(NPC, -128.16, 4.55, -67.7, 2, 0)
MovementLoopAddLocation(NPC, -129.9, 4.35, -62.65, 2, 0)
MovementLoopAddLocation(NPC, -128.14, 4.34, -53.98, 2, 0)
MovementLoopAddLocation(NPC, -129.55, 4.35, -60.2, 2, 0)
MovementLoopAddLocation(NPC, -133.42, 4.37, -82.19, 2, 0)
MovementLoopAddLocation(NPC, -131.98, 4.37, -89.95, 2, 0)
MovementLoopAddLocation(NPC, -126.96, 4.33, -95.66, 2, 0)
MovementLoopAddLocation(NPC, -118.24, 4.32, -100.61, 2, 0)
MovementLoopAddLocation(NPC, -110.1, 4.29, -100.76, 2, 0)
MovementLoopAddLocation(NPC, -100.42, 4.45, -96.02, 2, 0)
MovementLoopAddLocation(NPC, -94.31, 4.42, -87.22, 2, 0)
MovementLoopAddLocation(NPC, -97.45, 4.44, -86.45, 2, 0)
MovementLoopAddLocation(NPC, -97.31, 4.46, -84.61, 2, 0)
MovementLoopAddLocation(NPC, -91.17, 5.53, -81.39, 2, 0)
MovementLoopAddLocation(NPC, -92.97, 5.45, -68.62, 2, 0)
MovementLoopAddLocation(NPC, -97.44, 5.03, -64.94, 2, 0)
MovementLoopAddLocation(NPC, -98.14, 1.47, -59.36, 2, 0)
MovementLoopAddLocation(NPC, -100.07, 0.17, -56.66, 2, 0)
MovementLoopAddLocation(NPC, -95.31, -1.86, -52.95, 2, 0)
MovementLoopAddLocation(NPC, -96.89, -7.05, -44.33, 2, 0)
MovementLoopAddLocation(NPC, -90.52, -9.04, -36.04, 2, 0)
MovementLoopAddLocation(NPC, -89.3, -9.04, -32.93, 2, 0)
end

