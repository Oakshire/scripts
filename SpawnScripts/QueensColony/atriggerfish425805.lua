--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425805.lua
	Script Purpose	:	Waypoint Path for atriggerfish425805.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:08 
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
	MovementLoopAddLocation(NPC, 31.39, -12.99, 1.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.47, -12.15, -25.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.15, -12.8, -27.22, 2, 0)
	MovementLoopAddLocation(NPC, 29.37, -13.23, -28.99, 2, 0)
	MovementLoopAddLocation(NPC, 30.26, -13.31, -32.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.68, -13.53, -26.24, 2, 0)
	MovementLoopAddLocation(NPC, 43.92, -12.49, -17.22, 2, 0)
	MovementLoopAddLocation(NPC, 53.21, -11.82, -13.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.17, -12.49, -26.25, 2, 0)
	MovementLoopAddLocation(NPC, 18.79, -12.21, -30.3, 2, 0)
	MovementLoopAddLocation(NPC, 14.43, -11.91, -32.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.79, -12.04, -38.98, 2, 0)
	MovementLoopAddLocation(NPC, 6.32, -12.91, -66.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.72, -12.52, -60.78, 2, 0)
	MovementLoopAddLocation(NPC, 22.59, -11.46, -51.58, 2, 0)
	MovementLoopAddLocation(NPC, 29.34, -11.24, -47.86, 2, 0)
	MovementLoopAddLocation(NPC, 36.17, -10.94, -41.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.29, -10.73, -47.77, 2, 0)
	MovementLoopAddLocation(NPC, 24.34, -10.2, -57.37, 2, 0)
	MovementLoopAddLocation(NPC, 22.8, -10.2, -59.82, 2, 0)
	MovementLoopAddLocation(NPC, 21.71, -10.2, -62.69, 2, 0)
	MovementLoopAddLocation(NPC, 20.37, -10.2, -64.7, 2, 0)
	MovementLoopAddLocation(NPC, 18.19, -10.2, -66.51, 2, 0)
	MovementLoopAddLocation(NPC, 12.65, -11, -73.08, 2, 0)
	MovementLoopAddLocation(NPC, 8.4, -11.88, -74.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.21, -12.12, -63.04, 2, 0)
	MovementLoopAddLocation(NPC, -0.65, -11.91, -54.56, 2, 0)
	MovementLoopAddLocation(NPC, -2.59, -12.99, -46.96, 2, 0)
	MovementLoopAddLocation(NPC, -2.08, -12.77, -43.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.47, -12.13, -40.41, 2, 0)
	MovementLoopAddLocation(NPC, 4.89, -11.03, -28.44, 2, 0)
	MovementLoopAddLocation(NPC, 9.38, -10.46, -14.89, 2, 0)
	MovementLoopAddLocation(NPC, 10.46, -11.41, -8.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.38, -11.55, -13.84, 2, 0)
	MovementLoopAddLocation(NPC, 39.83, -11.98, -29.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.43, -12.29, -27.48, 2, 0)
	MovementLoopAddLocation(NPC, 51.61, -12.93, -19.49, 2, 0)
	MovementLoopAddLocation(NPC, 55.93, -13.23, -16.76, 2, 0)
	MovementLoopAddLocation(NPC, 59.55, -13.43, -14.09, 2, 0)
	MovementLoopAddLocation(NPC, 62.63, -14.08, -11.65, 2, 0)
	MovementLoopAddLocation(NPC, 64.38, -14.4, -9.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.57, -13.78, -8.74, 2, 0)
	MovementLoopAddLocation(NPC, 44.43, -13.99, -5.21, 2, 0)
	MovementLoopAddLocation(NPC, 33.83, -12.74, -0.56, 2, 0)
end
