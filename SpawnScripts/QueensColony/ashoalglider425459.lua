--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425459.lua
	Script Purpose	:	Waypoint Path for ashoalglider425459.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:46 
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
	MovementLoopAddLocation(NPC, -148.56, -13.24, 55.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.07, -12.81, 52.65, 2, 0)
	MovementLoopAddLocation(NPC, -138.06, -12.4, 48.06, 2, 0)
	MovementLoopAddLocation(NPC, -126.94, -11.57, 33.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.68, -11.22, 37.08, 2, 0)
	MovementLoopAddLocation(NPC, -122.39, -10.5, 39.1, 2, 0)
	MovementLoopAddLocation(NPC, -115.56, -10.5, 43.9, 2, 0)
	MovementLoopAddLocation(NPC, -107.12, -10.5, 46.82, 2, 0)
	MovementLoopAddLocation(NPC, -101.78, -10.5, 51.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.4, -10.5, 61.38, 2, 0)
	MovementLoopAddLocation(NPC, -124.28, -10.5, 69.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.28, -10.5, 63.45, 2, 0)
	MovementLoopAddLocation(NPC, -129.2, -11.08, 55.23, 2, 0)
	MovementLoopAddLocation(NPC, -131.63, -11.27, 63.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.02, -11.57, 55.99, 2, 0)
	MovementLoopAddLocation(NPC, -136.04, -11.95, 56.4, 2, 0)
	MovementLoopAddLocation(NPC, -140.83, -12.55, 61.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.88, -13.01, 49.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.41, -13.5, 60.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.37, -13.51, 75.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.21, -13.04, 70.24, 2, 0)
	MovementLoopAddLocation(NPC, -133.11, -12.5, 66.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.43, -12.05, 73.78, 2, 0)
	MovementLoopAddLocation(NPC, -140.33, -11.85, 74.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.85, -12.34, 71.43, 2, 0)
	MovementLoopAddLocation(NPC, -150.43, -12.72, 66.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.31, -12.99, 53.61, 2, 0)
	MovementLoopAddLocation(NPC, -150.19, -13.41, 48.86, 2, math.random(10, 20))
end

