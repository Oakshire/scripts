--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplyrunnerCR1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 06:09:36
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

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
	MovementLoopAddLocation(NPC, 244.39, -7.22, 98.91, 4, 5)
	MovementLoopAddLocation(NPC, 246.54, -7.1, 87.68, 4, 0)
	MovementLoopAddLocation(NPC, 249.11, -4.12, 59.02, 4, 0)
	MovementLoopAddLocation(NPC, 251.44, -4.13, 52.44, 4, 0)
	MovementLoopAddLocation(NPC, 252, -4.13, 47.4, 4, 0)
	MovementLoopAddLocation(NPC, 234.89, -4.06, 29.17, 4, 0)
	MovementLoopAddLocation(NPC, 232.9, -4.05, 26.45, 4, 0)
	MovementLoopAddLocation(NPC, 230.76, -4.04, 10.54, 4, 0)
	MovementLoopAddLocation(NPC, 231.76, -4.04, 6, 4, 0)
	MovementLoopAddLocation(NPC, 236.4, -4.06, 0.37, 4, 0)
	MovementLoopAddLocation(NPC, 233.74, -4.65, -7.68, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 233.74, -4.65, -7.68, 4, 0)
	MovementLoopAddLocation(NPC, 235.52, -4.06, -0.84, 4, 0)
	MovementLoopAddLocation(NPC, 232.63, -3.98, 3.37, 4, 0)
	MovementLoopAddLocation(NPC, 230.6, -4.04, 9.51, 4, 0)
	MovementLoopAddLocation(NPC, 231.98, -4.05, 24.05, 4, 0)
	MovementLoopAddLocation(NPC, 233.96, -4.06, 27.96, 4, 0)
	MovementLoopAddLocation(NPC, 247.46, -4.11, 39.45, 4, 0)
	MovementLoopAddLocation(NPC, 251.42, -4.13, 45.38, 4, 0)
	MovementLoopAddLocation(NPC, 252.22, -4.13, 51.13, 4, 0)
	MovementLoopAddLocation(NPC, 249.4, -4.12, 57.49, 4, 0)
	MovementLoopAddLocation(NPC, 246.51, -6.98, 86.01, 4, 0)
	MovementLoopAddLocation(NPC, 246.6, -7.23, 90.96, 4, 0)
end

