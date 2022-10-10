--[[
    Script Name    : SpawnScripts/Caves/aDustpawTaskmaster.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.09 04:10:52
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
	MovementLoopAddLocation(NPC, 49.37, 0.85, -104.11, 2, 0)
	MovementLoopAddLocation(NPC, 43.61, 0.88, -106.43, 2, 0)
	MovementLoopAddLocation(NPC, 41, 0.64, -111.98, 2, 0)
	MovementLoopAddLocation(NPC, 43.36, 0.57, -114.37, 2, 0)
	MovementLoopAddLocation(NPC, 48.23, 0.36, -115.99, 2, 0)
	MovementLoopAddLocation(NPC, 56.24, 0.61, -112.83, 2, 0)
	MovementLoopAddLocation(NPC, 57.56, 1.02, -107.82, 2, 0)
	MovementLoopAddLocation(NPC, 55.3, 0.88, -103.4, 2, 0)
	MovementLoopAddLocation(NPC, 50.19, 1.01, -102.29, 2, 0)
	MovementLoopAddLocation(NPC, 50.19, 1.01, -102.29, 2, 6)
	MovementLoopAddLocation(NPC, 50.19, 1.01, -102.29, 2, 0)
	MovementLoopAddLocation(NPC, 54.61, 0.92, -101.83, 2, 0)
	MovementLoopAddLocation(NPC, 56.37, 0.89, -104.14, 2, 0)
	MovementLoopAddLocation(NPC, 56.83, 0.9, -108.79, 2, 0)
	MovementLoopAddLocation(NPC, 53.5, 0.19, -112.31, 2, 0)
	MovementLoopAddLocation(NPC, 50.57, 0.17, -114.91, 2, 0)
	MovementLoopAddLocation(NPC, 45.2, 0.42, -114.16, 2, 0)
	MovementLoopAddLocation(NPC, 41.05, 0.67, -112.79, 2, 0)
	MovementLoopAddLocation(NPC, 41.22, 0.76, -108.48, 2, 0)
	MovementLoopAddLocation(NPC, 43.99, 1.02, -104.56, 2, 6)
	MovementLoopAddLocation(NPC, 43.99, 1.02, -104.56, 2, 0)
	MovementLoopAddLocation(NPC, 41.87, 0.95, -106.62, 2, 0)
	MovementLoopAddLocation(NPC, 40.46, 0.64, -110.74, 2, 0)
	MovementLoopAddLocation(NPC, 41.86, 0.66, -113.83, 2, 0)
	MovementLoopAddLocation(NPC, 47.87, 0.24, -114.88, 2, 0)
	MovementLoopAddLocation(NPC, 54.52, 0.32, -112.66, 2, 0)
	MovementLoopAddLocation(NPC, 56.7, 0.78, -109.95, 2, 0)
	MovementLoopAddLocation(NPC, 57, 0.98, -106.18, 2, 0)
	MovementLoopAddLocation(NPC, 49.37, 0.85, -104.11, 2, 6)
end

