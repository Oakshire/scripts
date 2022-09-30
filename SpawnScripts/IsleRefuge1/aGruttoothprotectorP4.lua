--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorP4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.14 04:09:52
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

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
	MovementLoopAddLocation(NPC, -44.02, 2.84, -160.32, 2, 5)
	MovementLoopAddLocation(NPC, -12.56, 2.46, -175.21, 2, 0)
	MovementLoopAddLocation(NPC, -7.07, 2.44, -180.44, 2, 0)
	MovementLoopAddLocation(NPC, -4.41, 2.43, -185.61, 2, 0)
	MovementLoopAddLocation(NPC, 6.07, 1.84, -210.59, 2, 0)
	MovementLoopAddLocation(NPC, 9.59, 1.83, -215.86, 2, 0)
	MovementLoopAddLocation(NPC, 20.74, 1.79, -224.5, 2, 0)
	MovementLoopAddLocation(NPC, 30.51, 1.76, -229.48, 2, 0)
	MovementLoopAddLocation(NPC, 37.02, 1.73, -230.67, 2, 0)
	MovementLoopAddLocation(NPC, 45.57, 1.7, -228.27, 2, 0)
	MovementLoopAddLocation(NPC, 49.46, 1.68, -226.92, 2, 0)
	MovementLoopAddLocation(NPC, 51.12, 1.68, -224.88, 2, 0)
	MovementLoopAddLocation(NPC, 52.95, 1.67, -219.92, 2, 0)
	MovementLoopAddLocation(NPC, 59.19, 1.46, -214.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 59.19, 1.46, -214.6, 2, 0)
	MovementLoopAddLocation(NPC, 57, 1.38, -216.56, 2, 0)
	MovementLoopAddLocation(NPC, 54.7, 1.66, -219.23, 2, 0)
	MovementLoopAddLocation(NPC, 52.09, 1.67, -224.31, 2, 0)
	MovementLoopAddLocation(NPC, 48.92, 1.74, -227.29, 2, 0)
	MovementLoopAddLocation(NPC, 45.64, 1.7, -228.81, 2, 0)
	MovementLoopAddLocation(NPC, 38.38, 1.73, -230.77, 2, 0)
	MovementLoopAddLocation(NPC, 33.83, 1.74, -230.73, 2, 0)
	MovementLoopAddLocation(NPC, 24.61, 1.78, -227.01, 2, 0)
	MovementLoopAddLocation(NPC, 12.75, 1.82, -219.32, 2, 0)
	MovementLoopAddLocation(NPC, 7.71, 1.84, -214.29, 2, 0)
	MovementLoopAddLocation(NPC, -3.6, 2.41, -187.21, 2, 0)
	MovementLoopAddLocation(NPC, -7.93, 2.45, -180.18, 2, 0)
	MovementLoopAddLocation(NPC, -12.16, 2.46, -175.64, 2, 0)
	MovementLoopAddLocation(NPC, -44.02, 2.84, -160.32, 2, 0)
end

