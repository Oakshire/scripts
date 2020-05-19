--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425463.lua
	Script Purpose	:	Waypoint Path for ashoalglider425463.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:37 
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
	MovementLoopAddLocation(NPC, -139.22, -12.48, 15.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.82, -12.47, 8.14, 2, 0)
	MovementLoopAddLocation(NPC, -129.67, -11.11, 11.83, 2, 0)
	MovementLoopAddLocation(NPC, -116.2, -11.46, 15.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.34, -11.09, 10.9, 2, 0)
	MovementLoopAddLocation(NPC, -130.14, -11.1, 8.98, 2, 0)
	MovementLoopAddLocation(NPC, -133.28, -11.36, 6.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.83, -11.79, 25.01, 2, 0)
	MovementLoopAddLocation(NPC, -125.33, -11.47, 28.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.33, -10.98, 32.55, 2, 0)
	MovementLoopAddLocation(NPC, -119.72, -10.95, 44.41, 2, 0)
	MovementLoopAddLocation(NPC, -106.95, -11.45, 55.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.68, -10.5, 54.56, 2, 0)
	MovementLoopAddLocation(NPC, -129.23, -10.5, 54.38, 2, 0)
	MovementLoopAddLocation(NPC, -137.56, -11.81, 55.87, 2, 0)
	MovementLoopAddLocation(NPC, -144.1, -12.29, 55.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.25, -11.95, 55.27, 2, 0)
	MovementLoopAddLocation(NPC, -130.42, -10.98, 56.16, 2, 0)
	MovementLoopAddLocation(NPC, -128.76, -10.5, 58.56, 2, 0)
	MovementLoopAddLocation(NPC, -119.27, -10.5, 69.66, 2, 0)
	MovementLoopAddLocation(NPC, -115.13, -11.43, 72.86, 2, 0)
	MovementLoopAddLocation(NPC, -114.52, -11.42, 76.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.26, -12.04, 80.87, 2, 0)
	MovementLoopAddLocation(NPC, -142.46, -13.08, 74.02, 2, 0)
	MovementLoopAddLocation(NPC, -143.88, -13.51, 68.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.89, -12.28, 50.47, 2, 0)
	MovementLoopAddLocation(NPC, -125.34, -11.54, 45.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.79, -11.18, 29.46, 2, 0)
	MovementLoopAddLocation(NPC, -144.21, -12.13, 20.38, 2, 0)
end
