--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428602.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428602.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:18 
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
	MovementLoopAddLocation(NPC, -27.47, -10.7, -75.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.69, -10.4, -66.77, 2, 0)
	MovementLoopAddLocation(NPC, -16.92, -10.7, -43.23, 2, 0)
	MovementLoopAddLocation(NPC, -7.75, -10.7, -22.97, 2, 0)
	MovementLoopAddLocation(NPC, -6.25, -11.03, -15.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.81, -11.21, -26.72, 2, 0)
	MovementLoopAddLocation(NPC, -37.42, -10.7, -32.7, 2, 0)
	MovementLoopAddLocation(NPC, -46.65, -10.7, -42.63, 2, 0)
	MovementLoopAddLocation(NPC, -62.49, -10.7, -47.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.26, -10.7, -41.39, 2, 0)
	MovementLoopAddLocation(NPC, -25.59, -10.7, -18.43, 2, 0)
	MovementLoopAddLocation(NPC, -17.77, -11.78, -9.74, 2, 0)
	MovementLoopAddLocation(NPC, -12.26, -11.78, -5.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.03, -11.47, 9.25, 2, 0)
	MovementLoopAddLocation(NPC, -26.13, -11.44, 12.36, 2, 0)
	MovementLoopAddLocation(NPC, -34.07, -12.3, 23.06, 2, 0)
	MovementLoopAddLocation(NPC, -39.22, -12.31, 26.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.97, -12.07, 19.67, 2, 0)
	MovementLoopAddLocation(NPC, -35.16, -11.74, 12.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23, -12.52, 21.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.83, -12.21, 24.01, 2, 0)
	MovementLoopAddLocation(NPC, -42.86, -12.62, 26.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.98, -11.9, 20.24, 2, 0)
	MovementLoopAddLocation(NPC, -45.61, -11.09, 17.01, 2, 0)
	MovementLoopAddLocation(NPC, -47.73, -10.7, 13.87, 2, 0)
	MovementLoopAddLocation(NPC, -49.55, -10.7, 8.98, 2, 0)
	MovementLoopAddLocation(NPC, -52.44, -10.7, 4.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.73, -10.7, -5.28, 2, 0)
	MovementLoopAddLocation(NPC, -43, -10.7, -51.08, 2, 0)
	MovementLoopAddLocation(NPC, -41.42, -11.29, -59.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.66, -11.7, -66.29, 2, 0)
	MovementLoopAddLocation(NPC, -34.06, -10.79, -75.94, 2, 0)
	MovementLoopAddLocation(NPC, -11.9, -10.7, -70.16, 2, 0)
	MovementLoopAddLocation(NPC, -5.5, -10.7, -70.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.98, -10.7, -70.92, 2, 0)
	MovementLoopAddLocation(NPC, -19.17, -10.7, -73.55, 2, 0)
end

