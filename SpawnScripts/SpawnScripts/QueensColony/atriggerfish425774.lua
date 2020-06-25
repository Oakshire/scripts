--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425774.lua
	Script Purpose	:	Waypoint Path for atriggerfish425774.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:59 
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
	MovementLoopAddLocation(NPC, -77.23, -11.07, 0.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.95, -10.5, -1.38, 2, 0)
	MovementLoopAddLocation(NPC, -70.62, -10.31, -4.15, 2, 0)
	MovementLoopAddLocation(NPC, -63.91, -10.26, -10.64, 2, 0)
	MovementLoopAddLocation(NPC, -59.4, -10.16, -20.36, 2, 0)
	MovementLoopAddLocation(NPC, -28.42, -12.09, -49.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.94, -12.28, -47.52, 2, 0)
	MovementLoopAddLocation(NPC, -16, -11.99, -42.34, 2, 0)
	MovementLoopAddLocation(NPC, -6.62, -12.1, -31.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.88, -11.99, -36.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.59, -12.12, -38.35, 2, 0)
	MovementLoopAddLocation(NPC, -28.73, -12.89, -43.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.02, -12.66, -46.51, 2, 0)
	MovementLoopAddLocation(NPC, -17.62, -11.59, -51.34, 2, 0)
	MovementLoopAddLocation(NPC, -12.06, -10.99, -56.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.89, -11.07, -48.33, 2, 0)
	MovementLoopAddLocation(NPC, -22.32, -10.47, -24.47, 2, 0)
	MovementLoopAddLocation(NPC, -25.67, -11.11, -9.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.93, -11.21, -0.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.06, -11.45, 8.76, 2, 0)
	MovementLoopAddLocation(NPC, -37.28, -12.02, 14.62, 2, 0)
	MovementLoopAddLocation(NPC, -38.86, -13.11, 19.32, 2, 0)
	MovementLoopAddLocation(NPC, -36.99, -14.01, 22.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.31, -13.02, 18.21, 2, 0)
	MovementLoopAddLocation(NPC, -44.2, -12.26, 16.4, 2, 0)
	MovementLoopAddLocation(NPC, -46.56, -12.1, 16.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.81, -11.21, 16.15, 2, 0)
	MovementLoopAddLocation(NPC, -52.05, -10.5, 16.22, 2, 0)
	MovementLoopAddLocation(NPC, -75.42, -10.6, 4.3, 2, 0)
	MovementLoopAddLocation(NPC, -77.61, -10.81, 1.64, 2, 0)
	MovementLoopAddLocation(NPC, -79.93, -11.18, -12.04, 2, math.random(10, 20))
end
