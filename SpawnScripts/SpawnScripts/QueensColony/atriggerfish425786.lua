--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425786.lua
	Script Purpose	:	Waypoint Path for atriggerfish425786.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:51 
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
	MovementLoopAddLocation(NPC, 101.96, -12.9, -29.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.5, -12.79, -37.01, 2, 0)
	MovementLoopAddLocation(NPC, 94.61, -12.24, -45.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.96, -12.46, -25.99, 2, 0)
	MovementLoopAddLocation(NPC, 93.89, -11.77, -14.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.63, -12.59, -23.94, 2, 0)
	MovementLoopAddLocation(NPC, 100.94, -12.99, -34.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.06, -12.95, -25.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.27, -11.75, -37.19, 2, 0)
	MovementLoopAddLocation(NPC, 73.93, -11.51, -39.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.23, -12.59, -30.57, 2, 0)
	MovementLoopAddLocation(NPC, 88.26, -12.32, -24.22, 2, 0)
	MovementLoopAddLocation(NPC, 96.56, -11.89, -19.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.8, -12.39, -30.87, 2, 0)
	MovementLoopAddLocation(NPC, 84.84, -12.1, -39.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.69, -11.99, -44.01, 2, 0)
	MovementLoopAddLocation(NPC, 71.77, -11.91, -50.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.32, -12.03, -74.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.68, -12.33, -47.73, 2, 0)
	MovementLoopAddLocation(NPC, 81.24, -12.83, -42.99, 2, 0)
	MovementLoopAddLocation(NPC, 88.98, -12.9, -40.82, 2, math.random(10, 20))
end

