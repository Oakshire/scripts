--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425757.lua
	Script Purpose	:	Waypoint Path for atriggerfish425757.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:41 
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
	MovementLoopAddLocation(NPC, -139.34, -12.88, 49.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138, -12.6, 49.27, 2, 0)
	MovementLoopAddLocation(NPC, -142.35, -11.85, 39.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.89, -12.51, 48.33, 2, 0)
	MovementLoopAddLocation(NPC, -145.18, -13.31, 51.59, 2, 0)
	MovementLoopAddLocation(NPC, -146.96, -13.92, 59.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.12, -13.51, 51.07, 2, 0)
	MovementLoopAddLocation(NPC, -134.88, -12.41, 52.01, 2, 0)
	MovementLoopAddLocation(NPC, -129.04, -10.35, 55.92, 2, 0)
	MovementLoopAddLocation(NPC, -119.49, -10.51, 62.63, 2, 0)
	MovementLoopAddLocation(NPC, -115.66, -11.67, 67.35, 2, 0)
	MovementLoopAddLocation(NPC, -110.16, -12.05, 70.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.83, -10.58, 63.73, 2, 0)
	MovementLoopAddLocation(NPC, -121.17, -10.58, 57.55, 2, 0)
	MovementLoopAddLocation(NPC, -127.44, -10.97, 55.1, 2, 0)
	MovementLoopAddLocation(NPC, -136.18, -12.54, 45.52, 2, 0)
	MovementLoopAddLocation(NPC, -128.66, -10.71, 56.26, 2, 0)
	MovementLoopAddLocation(NPC, -125.51, -11.27, 66.23, 2, 0)
	MovementLoopAddLocation(NPC, -122.43, -11.49, 69.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.49, -12.31, 70.43, 2, 0)
	MovementLoopAddLocation(NPC, -125.46, -12.03, 56.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.14, -11.16, 55.7, 2, 0)
	MovementLoopAddLocation(NPC, -136.07, -12.61, 56.02, 2, 0)
	MovementLoopAddLocation(NPC, -140.79, -13, 68.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.14, -12.97, 55.88, 2, 0)
	MovementLoopAddLocation(NPC, -131.87, -12.54, 55.3, 2, 0)
	MovementLoopAddLocation(NPC, -130.15, -11.67, 56.13, 2, 0)
	MovementLoopAddLocation(NPC, -126.85, -11.19, 67.07, 2, 0)
	MovementLoopAddLocation(NPC, -126.95, -11.95, 72.14, 2, 0)
	MovementLoopAddLocation(NPC, -134.32, -12.64, 76.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.56, -11.6, 64.7, 2, 0)
	MovementLoopAddLocation(NPC, -105.29, -11.89, 55.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.67, -11.79, 57.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.29, -11.79, 10.87, 2, math.random(10, 20))
end
