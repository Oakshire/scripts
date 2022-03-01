--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425456.lua
	Script Purpose	:	Waypoint Path for ashoalglider425456.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:15 
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
	MovementLoopAddLocation(NPC, -142.4, -13.4, 76.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.47, -12.97, 48.32, 2, 0)
	MovementLoopAddLocation(NPC, -139.24, -12.43, 54.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.06, -12.05, 54.76, 2, 0)
	MovementLoopAddLocation(NPC, -129.87, -10.95, 55.88, 2, 0)
	MovementLoopAddLocation(NPC, -127.75, -10.5, 60.4, 2, 0)
	MovementLoopAddLocation(NPC, -123.12, -10.5, 68.15, 2, 0)
	MovementLoopAddLocation(NPC, -123.12, -10.99, 70.81, 2, 0)
	MovementLoopAddLocation(NPC, -118.62, -11.5, 72.19, 2, 0)
	MovementLoopAddLocation(NPC, -116.31, -11.5, 74.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.96, -12, 74.76, 2, 0)
	MovementLoopAddLocation(NPC, -144.04, -12.95, 50.87, 2, 0)
	MovementLoopAddLocation(NPC, -146.97, -13.45, 59.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.15, -13.09, 52.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.95, -12.27, 67.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.96, -12.83, 50.9, 2, 0)
	MovementLoopAddLocation(NPC, -136.22, -12.48, 47.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.73, -12.48, 27.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.14, -11.25, 31.57, 2, 0)
	MovementLoopAddLocation(NPC, -143.84, -11.87, 47.98, 2, 0)
	MovementLoopAddLocation(NPC, -148.48, -12.05, 55.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.26, -11.98, 47.69, 2, 0)
	MovementLoopAddLocation(NPC, -142.26, -11.29, 31.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.61, -11.03, 31.08, 2, 0)
	MovementLoopAddLocation(NPC, -123.68, -10.95, 8.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.08, -11.14, 11.09, 2, 0)
	MovementLoopAddLocation(NPC, -124.11, -10.5, 14.77, 2, 0)
	MovementLoopAddLocation(NPC, -122.39, -10.5, 21.81, 2, 0)
	MovementLoopAddLocation(NPC, -123.71, -10.5, 28.16, 2, 0)
	MovementLoopAddLocation(NPC, -121.02, -10.5, 36.47, 2, 0)
	MovementLoopAddLocation(NPC, -107.84, -10.5, 68.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.12, -11.44, 72.3, 2, 0)
	MovementLoopAddLocation(NPC, -128.17, -11.74, 79.29, 2, 0)
	MovementLoopAddLocation(NPC, -135.33, -11.97, 80.72, 2, 0)
	MovementLoopAddLocation(NPC, -142.23, -13.22, 78.18, 2, 0)
end

