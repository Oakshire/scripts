--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425791.lua
	Script Purpose	:	Waypoint Path for atriggerfish425791.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:36 
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
	MovementLoopAddLocation(NPC, 85.1, -12.91, -23.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.58, -12.09, -40.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.35, -11.36, -46.93, 2, 0)
	MovementLoopAddLocation(NPC, 74.82, -11.36, -50.77, 2, 0)
	MovementLoopAddLocation(NPC, 73.15, -11.49, -53.07, 2, 0)
	MovementLoopAddLocation(NPC, 71.5, -11.95, -58.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.22, -12.24, -34.32, 2, 0)
	MovementLoopAddLocation(NPC, 82.39, -12, -26.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.7, -11.25, -38.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.98, -12.24, -37.59, 2, 0)
	MovementLoopAddLocation(NPC, 80.41, -12.76, -35.43, 2, 0)
	MovementLoopAddLocation(NPC, 80.22, -12.84, -33.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.05, -11.93, -26.4, 2, 0)
	MovementLoopAddLocation(NPC, 79.48, -11.96, -22.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.42, -12.87, -26.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.93, -11.99, -40.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.9, -12.39, -40.81, 2, 0)
	MovementLoopAddLocation(NPC, 79.09, -12.44, -42.66, 2, 0)
	MovementLoopAddLocation(NPC, 73.17, -12.02, -52.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.08, -12.03, -61.74, 2, 0)
	MovementLoopAddLocation(NPC, 77.14, -11.94, -77.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.67, -11.42, -72.91, 2, 0)
	MovementLoopAddLocation(NPC, 71.36, -11.47, -67.44, 2, 0)
	MovementLoopAddLocation(NPC, 70.57, -11.53, -58.4, 2, 0)
	MovementLoopAddLocation(NPC, 67.65, -11.79, -53.85, 2, 0)
	MovementLoopAddLocation(NPC, 64.02, -11.95, -52.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.33, -11.92, -49.77, 2, 0)
	MovementLoopAddLocation(NPC, 69.62, -11.52, -46.14, 2, 0)
	MovementLoopAddLocation(NPC, 76.75, -11.43, -36.01, 2, 0)
	MovementLoopAddLocation(NPC, 80.52, -11.85, -31.38, 2, 0)
	MovementLoopAddLocation(NPC, 83.3, -12.23, -27.31, 2, 0)
	MovementLoopAddLocation(NPC, 84.04, -12.95, -22.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.95, -12.59, -13.67, 2, math.random(10, 20))
end

