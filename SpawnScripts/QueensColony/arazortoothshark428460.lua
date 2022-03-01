--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428460.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428460.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:43 
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
	MovementLoopAddLocation(NPC, -7.88, -11.72, -95.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.52, -11.72, -90.59, 2, 0)
	MovementLoopAddLocation(NPC, -17.39, -11.69, -81.77, 2, 0)
	MovementLoopAddLocation(NPC, -17.57, -11.55, -78.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.66, -11.64, -84.18, 2, 0)
	MovementLoopAddLocation(NPC, -27.32, -11.74, -87.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.15, -11.71, -82.11, 2, 0)
	MovementLoopAddLocation(NPC, -37.05, -10.62, -65.68, 2, 0)
	MovementLoopAddLocation(NPC, -37.17, -10.74, -54.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.26, -11.53, -39.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.24, -11.45, -33.51, 2, 0)
	MovementLoopAddLocation(NPC, -19.78, -11.78, -20.12, 2, 0)
	MovementLoopAddLocation(NPC, -22.41, -11.78, -12.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.66, -12.24, -17.02, 2, 0)
	MovementLoopAddLocation(NPC, -9.78, -12.11, -19.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.83, -12.81, -5.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.45, -12.06, -16.92, 2, 0)
	MovementLoopAddLocation(NPC, -22.38, -12.08, -25.5, 2, 0)
	MovementLoopAddLocation(NPC, -30.57, -12.41, -34.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.12, -11.75, -38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.4, -10.96, -55.2, 2, 0)
	MovementLoopAddLocation(NPC, -44.16, -11.2, -57.79, 2, 0)
	MovementLoopAddLocation(NPC, -45.96, -11.25, -61.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.6, -10.65, -57.61, 2, 0)
	MovementLoopAddLocation(NPC, -54.25, -10.52, -50.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.68, -10.7, -50.01, 2, 0)
	MovementLoopAddLocation(NPC, -35.56, -10.6, -48.86, 2, 0)
	MovementLoopAddLocation(NPC, -22.55, -11.4, -47.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.77, -11.23, -46.2, 2, 0)
	MovementLoopAddLocation(NPC, -41.47, -10.55, -47.23, 2, 0)
	MovementLoopAddLocation(NPC, -52.93, -10.7, -50.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.66, -11.41, -59.55, 2, 0)
end
