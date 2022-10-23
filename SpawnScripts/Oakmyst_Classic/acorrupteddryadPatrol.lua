--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/acorrupteddryadPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.18 09:10:40
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/Dryad_Corrupt1.lua")

function spawn(NPC)
waypoints(NPC)
end



function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133778971 then
	MovementLoopAddLocation(NPC, 910.3, 14.75, -177.67, 1, 6)
	MovementLoopAddLocation(NPC, 909.7, 15.67, -185.22, 1, 0)
	MovementLoopAddLocation(NPC, 913.95, 16.44, -188.68, 1, 0)
	MovementLoopAddLocation(NPC, 919.14, 16.48, -189.56, 1, 0)
	MovementLoopAddLocation(NPC, 924.17, 14.2, -190.29, 1, 0)
	MovementLoopAddLocation(NPC, 927.57, 11.24, -191.23, 1, 0)
	MovementLoopAddLocation(NPC, 930.86, 7.17, -199.94, 1, 0)
	MovementLoopAddLocation(NPC, 931.73, 5.98, -203.1, 1, 0)
	MovementLoopAddLocation(NPC, 934.9, 4.21, -205.88, 1, 0)
	MovementLoopAddLocation(NPC, 940.71, 4.46, -206.98, 1, 0)
	MovementLoopAddLocation(NPC, 944.62, 4.91, -206.77, 1, 0)
	MovementLoopAddLocation(NPC, 947.55, 5.19, -202.25, 1, math.random(6,12))
	MovementLoopAddLocation(NPC, 947.55, 5.19, -202.25, 1, 0)
	MovementLoopAddLocation(NPC, 944.24, 4.93, -205.66, 1, 0)
	MovementLoopAddLocation(NPC, 939.47, 4.29, -206.96, 1, 0)
	MovementLoopAddLocation(NPC, 934.96, 4.23, -205.62, 1, 0)
	MovementLoopAddLocation(NPC, 931.1, 6.12, -202.89, 1, 0)
	MovementLoopAddLocation(NPC, 931.27, 7.4, -199.07, 1, 0)
	MovementLoopAddLocation(NPC, 930.52, 7.89, -196.42, 1, 0)
	MovementLoopAddLocation(NPC, 925.04, 13.53, -191.05, 1, 0)
	MovementLoopAddLocation(NPC, 919.61, 16.1, -190.78, 1, 0)
	MovementLoopAddLocation(NPC, 916.18, 16.22, -190.65, 1, 0)
	MovementLoopAddLocation(NPC, 909.86, 15.72, -186.03, 1, 0)
	MovementLoopAddLocation(NPC, 910.3, 14.75, -177.67, 1, 6)
    end
end
