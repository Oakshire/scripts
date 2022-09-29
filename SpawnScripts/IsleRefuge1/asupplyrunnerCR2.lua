--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplyrunnerCR2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.06 06:09:56
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
	MovementLoopAddLocation(NPC, 232.69, -4.55, -6.96, 4, 5)
	MovementLoopAddLocation(NPC, 236.31, -4.06, -0.3, 4, 0)
	MovementLoopAddLocation(NPC, 232.45, -3.96, 4.15, 4, 0)
	MovementLoopAddLocation(NPC, 230.37, -4.04, 9.01, 4, 0)
	MovementLoopAddLocation(NPC, 232.28, -4.05, 25.23, 4, 0)
	MovementLoopAddLocation(NPC, 234.55, -4.06, 28.92, 4, 0)
	MovementLoopAddLocation(NPC, 246.83, -4.11, 39.3, 4, 0)
	MovementLoopAddLocation(NPC, 251.47, -4.13, 45.21, 4, 0)
	MovementLoopAddLocation(NPC, 251.64, -4.13, 50.95, 4, 0)
	MovementLoopAddLocation(NPC, 249.08, -4.12, 57.52, 4, 0)
	MovementLoopAddLocation(NPC, 246.6, -6.98, 84.93, 4, 0)
	MovementLoopAddLocation(NPC, 246.39, -7.23, 93.03, 4, 0)
	MovementLoopAddLocation(NPC, 245.08, -7.23, 98.61, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 245.08, -7.23, 98.61, 4, 0)
	MovementLoopAddLocation(NPC, 246.33, -7.23, 90.64, 4, 0)
	MovementLoopAddLocation(NPC, 248.63, -4.5, 61.72, 4, 0)
	MovementLoopAddLocation(NPC, 251.76, -4.13, 54.34, 4, 0)
	MovementLoopAddLocation(NPC, 252.54, -4.13, 48.76, 4, 0)
	MovementLoopAddLocation(NPC, 250.76, -4.12, 44.24, 4, 0)
	MovementLoopAddLocation(NPC, 234.09, -4.06, 28.9, 4, 0)
	MovementLoopAddLocation(NPC, 231.73, -4.05, 24.24, 4, 0)
	MovementLoopAddLocation(NPC, 230.05, -4.04, 10.14, 4, 0)
	MovementLoopAddLocation(NPC, 233.47, -4.02, 3.84, 4, 0)
end




