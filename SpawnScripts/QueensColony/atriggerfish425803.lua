--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425803.lua
	Script Purpose	:	Waypoint Path for atriggerfish425803.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:26 
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
	MovementLoopAddLocation(NPC, 34.32, -12.93, -25.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.08, -11.75, -6.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.88, -11.59, -8.76, 2, 0)
	MovementLoopAddLocation(NPC, 8.49, -10.99, -12.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.49, -11.09, -15.48, 2, 0)
	MovementLoopAddLocation(NPC, 9.78, -11.35, -20.4, 2, 0)
	MovementLoopAddLocation(NPC, 5.91, -11.83, -33.2, 2, 0)
	MovementLoopAddLocation(NPC, -0.67, -11.95, -41.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.9, -11.98, -51.78, 2, 0)
	MovementLoopAddLocation(NPC, 0.84, -11.86, -75.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.02, -12.51, -68.28, 2, 0)
	MovementLoopAddLocation(NPC, 5.85, -13.03, -60.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.13, -11.82, -53.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.04, -11.4, -49.75, 2, 0)
	MovementLoopAddLocation(NPC, 18.21, -12.18, -37.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.03, -13.87, -5.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.38, -12.35, -20.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.24, -12.87, -28.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.95, -13.14, -30.06, 2, 0)
	MovementLoopAddLocation(NPC, 26.18, -13.04, -34.1, 2, 0)
	MovementLoopAddLocation(NPC, 23.58, -13.01, -36.96, 2, 0)
	MovementLoopAddLocation(NPC, 21.64, -12.92, -39.61, 2, 0)
	MovementLoopAddLocation(NPC, 16.81, -12.39, -43.13, 2, 0)
	MovementLoopAddLocation(NPC, 15.08, -12.43, -47.36, 2, 0)
	MovementLoopAddLocation(NPC, 11.72, -11.88, -53.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.91, -12.27, -37.03, 2, 0)
end


