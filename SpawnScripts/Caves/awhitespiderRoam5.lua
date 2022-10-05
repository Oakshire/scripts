--[[
    Script Name    : SpawnScripts/Caves/awhitespiderRoam5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.04 07:10:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -0.3, 14.99, -75.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1.65, 13.99, -68.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1.65, 13.99, -68.24, 2, 0)
	MovementLoopAddLocation(NPC, 5.99, 14.81, -75.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 5.99, 14.81, -75.41, 2, 0)
	MovementLoopAddLocation(NPC, 6.8, 14.75, -93.18, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 6.8, 14.75, -93.18, 2, 0)
	MovementLoopAddLocation(NPC, -8.11, 15.01, -76.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -8.11, 15.01, -76.52, 2, 0)
	MovementLoopAddLocation(NPC, -0.56, 15.53, -78.93, 2, 0)
	MovementLoopAddLocation(NPC, 3.51, 14.95, -75.72, 2, 0)
	MovementLoopAddLocation(NPC, 5.1, 14.13, -69.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 5.1, 14.13, -69.3, 2, 0)
	MovementLoopAddLocation(NPC, 1.39, 14.36, -71.02, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.39, 14.36, -71.02, 2, 0)
	MovementLoopAddLocation(NPC, 6.84, 13.38, -65.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 6.84, 13.38, -65.41, 2, 0)
	MovementLoopAddLocation(NPC, -0.3, 14.99, -75.22, 2, 0)
end

