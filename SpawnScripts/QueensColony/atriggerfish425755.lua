--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425755.lua
	Script Purpose	:	Waypoint Path for atriggerfish425755.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:19 
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
	MovementLoopAddLocation(NPC, -136.28, -11.79, 13.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.9, -13.46, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, -147.85, -14.38, 44.67, 2, 0)
	MovementLoopAddLocation(NPC, -148.53, -15, 47.66, 2, 0)
	MovementLoopAddLocation(NPC, -150.85, -15.22, 53.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.75, -13.39, 51.34, 2, 0)
	MovementLoopAddLocation(NPC, -145.51, -13.31, 52.44, 2, 0)
	MovementLoopAddLocation(NPC, -140.83, -13.06, 66.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.99, -12.9, 55.7, 2, 0)
	MovementLoopAddLocation(NPC, -132.06, -12.47, 55.07, 2, 0)
	MovementLoopAddLocation(NPC, -129.05, -11.38, 56.39, 2, 0)
	MovementLoopAddLocation(NPC, -126.62, -10.46, 58.62, 2, 0)
	MovementLoopAddLocation(NPC, -125.3, -11.39, 60.38, 2, 0)
	MovementLoopAddLocation(NPC, -125.2, -12, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, -125.91, -12, 62.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.08, -11.78, 74.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134, -12, 55.92, 2, 0)
	MovementLoopAddLocation(NPC, -136.42, -12.47, 53.27, 2, 0)
	MovementLoopAddLocation(NPC, -143.87, -12.75, 33.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.22, -12.5, 49.99, 2, 0)
	MovementLoopAddLocation(NPC, -128.43, -12.06, 66.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.07, -11.64, 56.41, 2, 0)
	MovementLoopAddLocation(NPC, -126.9, -11.92, 60.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.53, -11.55, 55.66, 2, 0)
	MovementLoopAddLocation(NPC, -136.85, -12.77, 51.11, 2, 0)
	MovementLoopAddLocation(NPC, -142.38, -13.69, 51.04, 2, 0)
	MovementLoopAddLocation(NPC, -142.85, -14.02, 49.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.14, -11.75, 60.96, 2, 0)
	MovementLoopAddLocation(NPC, -130.87, -11.25, 67.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.12, -11.76, 51.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.99, -12.44, 31.93, 2, 0)
	MovementLoopAddLocation(NPC, -129.21, -12.54, 26.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.84, -11.95, 22.31, 2, 0)
end

