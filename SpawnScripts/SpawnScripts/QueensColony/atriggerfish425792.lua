--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425792.lua
	Script Purpose	:	Waypoint Path for atriggerfish425792.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:58 
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
	MovementLoopAddLocation(NPC, 68.46, -11.96, -66.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.27, -11.95, -79.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.64, -11.88, -74.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.51, -11.87, -67.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.87, -11.96, -49.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.28, -12.02, -71.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.86, -11.96, -56.47, 2, 0)
	MovementLoopAddLocation(NPC, 72.38, -11.99, -44.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.1, -12.2, -47.83, 2, 0)
	MovementLoopAddLocation(NPC, 65.01, -12.06, -59.3, 2, 0)
	MovementLoopAddLocation(NPC, 62.39, -11.92, -65.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.72, -11.52, -50.95, 2, 0)
	MovementLoopAddLocation(NPC, 75.25, -11.94, -48.02, 2, 0)
	MovementLoopAddLocation(NPC, 77.98, -12.09, -46.02, 2, 0)
	MovementLoopAddLocation(NPC, 82.65, -12.02, -43.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.79, -11.88, -44.92, 2, 0)
	MovementLoopAddLocation(NPC, 78.59, -11.41, -46.24, 2, 0)
	MovementLoopAddLocation(NPC, 74.79, -11.53, -50.31, 2, 0)
	MovementLoopAddLocation(NPC, 73.4, -11.68, -53.11, 2, 0)
end

