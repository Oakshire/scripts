--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428468.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428468.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:15 
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
	MovementLoopAddLocation(NPC, -61.79, -10.66, -50.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.72, -10.58, -45.4, 2, 0)
	MovementLoopAddLocation(NPC, -19.08, -11.59, -26.36, 2, 0)
	MovementLoopAddLocation(NPC, -12.69, -11.86, -22.91, 2, 0)
	MovementLoopAddLocation(NPC, 4.41, -12, -23.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.52, -11.77, -16.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.39, -12.29, -11.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.99, -12.22, -10.37, 2, 0)
	MovementLoopAddLocation(NPC, -13.75, -12.2, -8.18, 2, 0)
	MovementLoopAddLocation(NPC, -16.12, -12.29, -0.74, 2, 0)
	MovementLoopAddLocation(NPC, -16.36, -12.35, 1.75, 2, 0)
	MovementLoopAddLocation(NPC, -19.53, -13.42, 11.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.28, -12.37, 2, 2, 0)
	MovementLoopAddLocation(NPC, -9.62, -11.86, -19.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.14, -11.59, -28.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.76, -11.41, -26.51, 2, 0)
	MovementLoopAddLocation(NPC, -27.04, -11.06, -23.93, 2, 0)
	MovementLoopAddLocation(NPC, -41.56, -10.57, -22.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.33, -10.7, -22.4, 2, 0)
	MovementLoopAddLocation(NPC, -58.94, -10.7, -15.59, 2, 0)
	MovementLoopAddLocation(NPC, -70.91, -10.7, -13.46, 2, 0)
	MovementLoopAddLocation(NPC, -80.61, -11.21, -13.46, 2, 0)
	MovementLoopAddLocation(NPC, -83.43, -11.52, -14.32, 2, 0)
	MovementLoopAddLocation(NPC, -86.78, -11.69, -16.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.52, -11.63, -4.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79.13, -10.67, -0.11, 2, 0)
	MovementLoopAddLocation(NPC, -69.89, -10.7, 9.88, 2, 0)
	MovementLoopAddLocation(NPC, -53.85, -10.7, 17.79, 2, 0)
	MovementLoopAddLocation(NPC, -48.46, -11.11, 19.17, 2, 0)
	MovementLoopAddLocation(NPC, -41.24, -12.06, 17.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.98, -11.81, 14.14, 2, 0)
	MovementLoopAddLocation(NPC, -32.73, -11.51, 9.96, 2, 0)
	MovementLoopAddLocation(NPC, -25.24, -11.89, 0.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.67, -11.71, 4.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.02, -11.34, 1.52, 2, 0)
	MovementLoopAddLocation(NPC, -30.86, -10.7, -4.87, 2, 0)
	MovementLoopAddLocation(NPC, -39.2, -10.56, -11.77, 2, 0)
	MovementLoopAddLocation(NPC, -48.55, -10.7, -15.61, 2, 0)
	MovementLoopAddLocation(NPC, -54.25, -10.62, -21.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.44, -10.55, -35.34, 2, 0)
	MovementLoopAddLocation(NPC, -50.62, -10.51, -43, 2, 0)
	MovementLoopAddLocation(NPC, -57.26, -10.54, -50.64, 2, 0)
	MovementLoopAddLocation(NPC, -60.62, -10.57, -52.28, 2, 0)
	MovementLoopAddLocation(NPC, -70.33, -10.51, -43.32, 2, math.random(10, 20))
end

