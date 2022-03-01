--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425462.lua
	Script Purpose	:	Waypoint Path for ashoalglider425462.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:28 
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
	MovementLoopAddLocation(NPC, -128.45, -11.49, 49.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.36, -10.5, 61.99, 2, 0)
	MovementLoopAddLocation(NPC, -119.99, -10.5, 70.19, 2, 0)
	MovementLoopAddLocation(NPC, -118.01, -11.5, 72.57, 2, 0)
	MovementLoopAddLocation(NPC, -114.97, -11.64, 72.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.5, -12.15, 74.92, 2, 0)
	MovementLoopAddLocation(NPC, -133.12, -12.54, 66.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.3, -12.67, 56.29, 2, 0)
	MovementLoopAddLocation(NPC, -142.46, -12.98, 53.98, 2, 0)
	MovementLoopAddLocation(NPC, -145.48, -13.44, 60.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.2, -12.87, 55.4, 2, 0)
	MovementLoopAddLocation(NPC, -133.05, -12.39, 57.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.35, -12.01, 54.74, 2, 0)
	MovementLoopAddLocation(NPC, -126.95, -11.56, 47.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -122.89, -10.55, 38.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.59, -11.48, 41.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.69, -11.17, 32.32, 2, 0)
	MovementLoopAddLocation(NPC, -146.86, -12.2, 25.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.42, -12.09, 55.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.72, -12.46, 51.73, 2, 0)
end


