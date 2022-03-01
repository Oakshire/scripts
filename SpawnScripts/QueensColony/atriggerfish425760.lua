--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425760.lua
	Script Purpose	:	Waypoint Path for atriggerfish425760.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:13 
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
	MovementLoopAddLocation(NPC, -128.51, -12.03, 33.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.91, -12.75, 59.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.35, -13, 56.98, 2, 0)
	MovementLoopAddLocation(NPC, -134.56, -12.99, 70.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.69, -12.94, 59.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.39, -13.22, 55.58, 2, 0)
	MovementLoopAddLocation(NPC, -144.73, -13.25, 50.78, 2, 0)
	MovementLoopAddLocation(NPC, -147.01, -12.88, 64.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.3, -13.14, 52.61, 2, 0)
	MovementLoopAddLocation(NPC, -135.83, -13.08, 55.98, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -12.99, 68.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.13, -12.54, 56.02, 2, 0)
	MovementLoopAddLocation(NPC, -129.45, -11.51, 55.71, 2, 0)
	MovementLoopAddLocation(NPC, -126.89, -11.03, 57.07, 2, 0)
	MovementLoopAddLocation(NPC, -125.11, -11.42, 60.77, 2, 0)
	MovementLoopAddLocation(NPC, -124.73, -11.97, 62.79, 2, 0)
	MovementLoopAddLocation(NPC, -125.42, -12.02, 64.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.43, -11.6, 59.87, 2, 0)
	MovementLoopAddLocation(NPC, -125.32, -11.6, 59.73, 2, 0)
	MovementLoopAddLocation(NPC, -128.22, -11.56, 55.86, 2, 0)
	MovementLoopAddLocation(NPC, -143.23, -13.56, 47.5, 2, 0)
	MovementLoopAddLocation(NPC, -143.92, -13.96, 31.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.64, -13.45, 48.79, 2, 0)
	MovementLoopAddLocation(NPC, -137.7, -13.05, 51.94, 2, math.random(10, 20))
end


