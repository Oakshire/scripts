--[[
    Script Name    : SpawnScripts/Caves/aMudpawtaskmaster.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.09 08:10:01
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

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
	MovementLoopAddLocation(NPC, 68.24, 12.42, -70.43, 2, 0)
	MovementLoopAddLocation(NPC, 66.34, 12.41, -68.96, 2, 0)
	MovementLoopAddLocation(NPC, 63.87, 12.47, -68.7, 2, 0)
	MovementLoopAddLocation(NPC, 60.85, 12.52, -69.22, 2, 0)
	MovementLoopAddLocation(NPC, 58.04, 13.22, -72.62, 2, 0)
	MovementLoopAddLocation(NPC, 52.91, 12.38, -77.53, 2, 0)
	MovementLoopAddLocation(NPC, 53.95, 12.38, -85.79, 2, 0)
	MovementLoopAddLocation(NPC, 56.37, 12.38, -85.57, 2, 0)
	MovementLoopAddLocation(NPC, 57.43, 12.39, -79.59, 2, 0)
	MovementLoopAddLocation(NPC, 59.4, 13.29, -77.49, 2, 0)
	MovementLoopAddLocation(NPC, 66.4, 12.5, -73.49, 2, 0)
	MovementLoopAddLocation(NPC, 60.07, 13.2, -76.19, 2, 0)
	MovementLoopAddLocation(NPC, 57.94, 12.38, -80.72, 2, 0)
	MovementLoopAddLocation(NPC, 56.44, 12.38, -87.03, 2, 0)
	MovementLoopAddLocation(NPC, 55.05, 12.38, -86.17, 2, 0)
	MovementLoopAddLocation(NPC, 54.48, 12.38, -77.48, 2, 0)
	MovementLoopAddLocation(NPC, 57.52, 13.24, -73.07, 2, 0)
	MovementLoopAddLocation(NPC, 61.16, 12.5, -69.44, 2, 0)
	MovementLoopAddLocation(NPC, 65.16, 12.47, -67.99, 2, 0)
	MovementLoopAddLocation(NPC, 68.24, 12.42, -70.43, 2, 0)
end

