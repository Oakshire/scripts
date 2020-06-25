--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428450.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428450.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:22 
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
	MovementLoopAddLocation(NPC, -82.27, -10.7, 11.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.48, -11.09, 14.44, 2, 0)
	MovementLoopAddLocation(NPC, -99, -11.51, 13.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.78, -11.52, 12.61, 2, 0)
	MovementLoopAddLocation(NPC, -90.89, -11.55, 10.03, 2, 0)
	MovementLoopAddLocation(NPC, -86.8, -11.51, 4.95, 2, 0)
	MovementLoopAddLocation(NPC, -79.15, -11.07, -19.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.95, -10.7, -11.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.57, -10.7, -21.88, 2, 0)
	MovementLoopAddLocation(NPC, -41.53, -10.7, -38.37, 2, 0)
	MovementLoopAddLocation(NPC, -43.44, -11.07, -45.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.67, -10.69, -24.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45, -10.7, -24.89, 2, 0)
	MovementLoopAddLocation(NPC, -63.44, -10.7, -15.67, 2, 0)
	MovementLoopAddLocation(NPC, -77.93, -10.7, -11.66, 2, 0)
	MovementLoopAddLocation(NPC, -84.18, -11.44, -6.25, 2, 0)
	MovementLoopAddLocation(NPC, -85.01, -11.4, -2.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79.64, -10.7, -0.1, 2, 0)
	MovementLoopAddLocation(NPC, -57.23, -10.7, 4.09, 2, 0)
	MovementLoopAddLocation(NPC, -51.8, -10.7, 2.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.55, -10.7, 8.99, 2, 0)
	MovementLoopAddLocation(NPC, -46.6, -10.7, 16.43, 2, 0)
	MovementLoopAddLocation(NPC, -40.38, -12.27, 22.86, 2, 0)
	MovementLoopAddLocation(NPC, -30.63, -12.75, 38.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.06, -11.84, 21.99, 2, 0)
	MovementLoopAddLocation(NPC, -52.53, -11.62, 19.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.82, -10.7, 20.27, 2, 0)
	MovementLoopAddLocation(NPC, -69.57, -10.7, 14.21, 2, 0)
	MovementLoopAddLocation(NPC, -76.85, -10.7, 12.52, 2, 0)
end

