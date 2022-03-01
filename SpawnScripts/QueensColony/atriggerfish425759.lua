--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425759.lua
	Script Purpose	:	Waypoint Path for atriggerfish425759.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:03 
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
	MovementLoopAddLocation(NPC, -126.88, -11.88, 55.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.79, -11.14, 54.72, 2, 0)
	MovementLoopAddLocation(NPC, -133.42, -12.32, 52.84, 2, 0)
	MovementLoopAddLocation(NPC, -142.78, -13.13, 51.24, 2, 0)
	MovementLoopAddLocation(NPC, -144.98, -13.31, 51.3, 2, 0)
	MovementLoopAddLocation(NPC, -147.78, -13.67, 52.97, 2, 0)
	MovementLoopAddLocation(NPC, -148.45, -14.29, 65.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.84, -13.52, 52.57, 2, 0)
	MovementLoopAddLocation(NPC, -145.12, -13.39, 51.7, 2, 0)
	MovementLoopAddLocation(NPC, -130.03, -12.98, 57.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.75, -12.3, 53.38, 2, 0)
	MovementLoopAddLocation(NPC, -126.99, -12.09, 51.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.08, -12.06, 31.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.09, -12.45, 44.24, 2, 0)
	MovementLoopAddLocation(NPC, -135.64, -13.23, 50.82, 2, 0)
	MovementLoopAddLocation(NPC, -135.18, -13.37, 56.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.45, -12.99, 48.76, 2, 0)
	MovementLoopAddLocation(NPC, -145.2, -12.88, 41.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.2, -13.27, 47.81, 2, 0)
	MovementLoopAddLocation(NPC, -133.94, -12.32, 55.95, 2, 0)
	MovementLoopAddLocation(NPC, -133.04, -11.74, 70.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.26, -11.81, 70.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.8, -12.9, 35.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.08, -12.47, 47.64, 2, 0)
	MovementLoopAddLocation(NPC, -136.3, -12.48, 48.45, 2, 0)
	MovementLoopAddLocation(NPC, -132.96, -11.64, 51.18, 2, 0)
	MovementLoopAddLocation(NPC, -127.8, -11.89, 54.14, 2, 0)
end

