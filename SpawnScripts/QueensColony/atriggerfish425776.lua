--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425776.lua
	Script Purpose	:	Waypoint Path for atriggerfish425776.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:28 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, 96.92, -12, -31.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.39, -12.89, -23.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.87, -12.93, -41.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.53, -12.88, -34.05, 2, 0)
	MovementLoopAddLocation(NPC, 99.53, -12.1, -25.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.41, -12.51, -32.28, 2, 0)
	MovementLoopAddLocation(NPC, 86.21, -12.49, -39.86, 2, 0)
	MovementLoopAddLocation(NPC, 85.67, -12.51, -42.89, 2, 0)
	MovementLoopAddLocation(NPC, 78.02, -12.46, -43.85, 2, 0)
	MovementLoopAddLocation(NPC, 70.84, -12.04, -45.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.78, -11.49, -43.59, 2, 0)
	MovementLoopAddLocation(NPC, 74.74, -11.27, -38.89, 2, 0)
	MovementLoopAddLocation(NPC, 78.67, -11.55, -33.7, 2, 0)
	MovementLoopAddLocation(NPC, 80.56, -12.03, -31.64, 2, 0)
	MovementLoopAddLocation(NPC, 85.28, -12, -29.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.55, -13, -31.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.01, -11.96, -37.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.18, -11.98, -31.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.51, -12.95, -23.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.07, -13.12, -39.55, 2, 0)
	MovementLoopAddLocation(NPC, 94.76, -12.97, -41.97, 2, math.random(10, 20))
end


