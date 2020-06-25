--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425762.lua
	Script Purpose	:	Waypoint Path for atriggerfish425762.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:40 
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
	MovementLoopAddLocation(NPC, -145.48, -14, 23.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.03, -13.69, 24.73, 2, 0)
	MovementLoopAddLocation(NPC, -136.36, -11.42, 27.8, 2, 0)
	MovementLoopAddLocation(NPC, -129.02, -11.57, 28, 2, 0)
	MovementLoopAddLocation(NPC, -133.21, -11.97, 33.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.58, -12, 21.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.01, -12.43, 32.03, 2, 0)
	MovementLoopAddLocation(NPC, -135.83, -12.85, 43.6, 2, 0)
	MovementLoopAddLocation(NPC, -137.66, -13.04, 47.83, 2, 0)
	MovementLoopAddLocation(NPC, -142.37, -12.85, 51.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.13, -13.57, 47.75, 2, 0)
	MovementLoopAddLocation(NPC, -145.4, -14, 37.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.07, -13.63, 47.74, 2, 0)
	MovementLoopAddLocation(NPC, -130.05, -12.92, 60.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.91, -12.4, 53.32, 2, 0)
	MovementLoopAddLocation(NPC, -124.01, -10.98, 35.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.35, -10.67, 39.49, 2, 0)
	MovementLoopAddLocation(NPC, -139.6, -11.36, 60.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.63, -12.56, 54.24, 2, 0)
	MovementLoopAddLocation(NPC, -133.12, -12.83, 51.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.55, -11.82, 68.24, 2, 0)
	MovementLoopAddLocation(NPC, -130.54, -11.73, 73.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.93, -12.44, 55.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.9, -12.73, 58.85, 2, 0)
	MovementLoopAddLocation(NPC, -129.92, -12.96, 62.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.17, -13.59, 49.58, 2, 0)
	MovementLoopAddLocation(NPC, -146.61, -14.29, 50.31, 2, 0)
	MovementLoopAddLocation(NPC, -146.88, -13.96, 48.79, 2, math.random(10, 20))
end

