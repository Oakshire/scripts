--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425896.lua
	Script Purpose	:	Waypoint Path for atriggerfish425896.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:58:58 
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
	MovementLoopAddLocation(NPC, -145.15, -12.79, 47.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.23, -12.55, 52.16, 2, 0)
	MovementLoopAddLocation(NPC, -130.62, -12.49, 52.26, 2, 0)
	MovementLoopAddLocation(NPC, -116.06, -12.04, 55.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.11, -10.49, 54.86, 2, 0)
	MovementLoopAddLocation(NPC, -127.41, -10.61, 54.92, 2, 0)
	MovementLoopAddLocation(NPC, -129.44, -11.66, 58.04, 2, 0)
	MovementLoopAddLocation(NPC, -133.16, -11.81, 70.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.75, -11.77, 68.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.7, -12.59, 49.99, 2, 0)
	MovementLoopAddLocation(NPC, -136.2, -13.02, 45.77, 2, 0)
	MovementLoopAddLocation(NPC, -138.71, -13.32, 41.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.5, -13.6, 46.88, 2, 0)
	MovementLoopAddLocation(NPC, -146.99, -13.95, 17.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.14, -13.92, 8.6, 2, 0)
	MovementLoopAddLocation(NPC, -143.36, -12.14, 7.09, 2, 0)
	MovementLoopAddLocation(NPC, -139.3, -11.77, 15.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.94, -12.06, 7.78, 2, 0)
	MovementLoopAddLocation(NPC, -133.79, -12.56, 9.13, 2, 0)
	MovementLoopAddLocation(NPC, -132.85, -12.48, 15.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.95, -12.67, 8.89, 2, 0)
	MovementLoopAddLocation(NPC, -136.9, -12.63, 7.68, 2, 0)
	MovementLoopAddLocation(NPC, -138.26, -12.68, 8.24, 2, 0)
	MovementLoopAddLocation(NPC, -140.81, -13.08, 13.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.04, -12.63, 31.58, 2, 0)
	MovementLoopAddLocation(NPC, -133.1, -12.02, 39.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.46, -12.84, 35.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.47, -13.45, 23.09, 2, math.random(10, 20))
end

