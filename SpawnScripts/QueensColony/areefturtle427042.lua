--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427042.lua
	Script Purpose	:	Waypoint Path for areefturtle427042.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:13 
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
	MovementLoopAddLocation(NPC, -32.89, -12.8, -34.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.74, -12.64, -30.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.65, -12.16, -24.07, 2, 0)
	MovementLoopAddLocation(NPC, -25.31, -11.71, -18.39, 2, 0)
	MovementLoopAddLocation(NPC, -22.75, -11.99, -3.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.54, -11.47, -15.81, 2, 0)
	MovementLoopAddLocation(NPC, -15.25, -11.44, -20.41, 2, 0)
	MovementLoopAddLocation(NPC, -8.49, -11.88, -31.31, 2, 0)
	MovementLoopAddLocation(NPC, -5.74, -11.77, -37.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.86, -11.37, -37.42, 2, 0)
	MovementLoopAddLocation(NPC, -20.15, -11.46, -37.14, 2, 0)
	MovementLoopAddLocation(NPC, -26.09, -12.31, -35.92, 2, 0)
	MovementLoopAddLocation(NPC, -30.52, -12.6, -34.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27, -12.18, -31.62, 2, 0)
	MovementLoopAddLocation(NPC, -15.65, -11.78, -21.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.4, -11.23, -39.9, 2, 0)
	MovementLoopAddLocation(NPC, -40.19, -11.26, -40.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.71, -11.27, -38.88, 2, 0)
	MovementLoopAddLocation(NPC, -37.45, -10.49, -33.8, 2, 0)
	MovementLoopAddLocation(NPC, -32.43, -10.43, -18.67, 2, 0)
	MovementLoopAddLocation(NPC, -30.72, -10.65, -15.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.95, -10.2, -9.84, 2, 0)
	MovementLoopAddLocation(NPC, -45.1, -10.2, -9.06, 2, 0)
	MovementLoopAddLocation(NPC, -49.75, -10.2, -5.05, 2, 0)
	MovementLoopAddLocation(NPC, -52.41, -10.11, 0.66, 2, 0)
	MovementLoopAddLocation(NPC, -73.11, -10.27, 8, 2, 0)
	MovementLoopAddLocation(NPC, -84.23, -11.24, 13.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.73, -11.86, -2.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.49, -10.34, -2.31, 2, 0)
	MovementLoopAddLocation(NPC, -69.91, -10.35, -4.11, 2, 0)
	MovementLoopAddLocation(NPC, -55.25, -10.54, -4.56, 2, 0)
	MovementLoopAddLocation(NPC, -50.25, -10.6, -5.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.84, -10.39, -3.67, 2, 0)
	MovementLoopAddLocation(NPC, -32.15, -10.26, -2.26, 2, 0)
	MovementLoopAddLocation(NPC, -15.46, -11.79, -2.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.5, -12.2, -15.79, 2, 0)
	MovementLoopAddLocation(NPC, -23.59, -12.27, -23.01, 2, 0)
end

