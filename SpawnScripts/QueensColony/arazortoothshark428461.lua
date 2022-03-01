--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428461.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428461.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:15 
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
	MovementLoopAddLocation(NPC, -25.34, -12.83, 19.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.91, -11.91, 5.74, 2, 0)
	MovementLoopAddLocation(NPC, -25.43, -11.53, 1.74, 2, 0)
	MovementLoopAddLocation(NPC, -25.15, -11.22, -9.97, 2, 0)
	MovementLoopAddLocation(NPC, -24.84, -11.61, -18.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.08, -11.95, -5.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.17, -11.66, -6.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.88, -11.77, -18.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.1, -11.95, -27.08, 2, 0)
	MovementLoopAddLocation(NPC, -40.51, -11.59, -31.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.56, -11.15, -33.11, 2, 0)
	MovementLoopAddLocation(NPC, -49.45, -10.49, -41.28, 2, 0)
	MovementLoopAddLocation(NPC, -56.9, -10.7, -44.46, 2, 0)
	MovementLoopAddLocation(NPC, -67.28, -10.71, -41.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.46, -10.7, -49.37, 2, 0)
	MovementLoopAddLocation(NPC, -54.66, -10.62, -55.28, 2, 0)
	MovementLoopAddLocation(NPC, -49.07, -11.08, -59.96, 2, 0)
	MovementLoopAddLocation(NPC, -44, -11.16, -67.89, 2, 0)
	MovementLoopAddLocation(NPC, -41.18, -11.55, -72.08, 2, 0)
	MovementLoopAddLocation(NPC, -36.96, -12.26, -80.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.01, -11.21, -72.26, 2, 0)
	MovementLoopAddLocation(NPC, -38.02, -10.67, -62.96, 2, 0)
	MovementLoopAddLocation(NPC, -36.85, -10.81, -47.76, 2, 0)
	MovementLoopAddLocation(NPC, -38.75, -11.1, -34.07, 2, 0)
	MovementLoopAddLocation(NPC, -40.31, -10.96, -28.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.11, -10.52, -14.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.47, -10.7, -12.04, 2, 0)
	MovementLoopAddLocation(NPC, -33.21, -10.7, -0.93, 2, 0)
	MovementLoopAddLocation(NPC, -28.38, -12.02, 10.19, 2, 0)
end
