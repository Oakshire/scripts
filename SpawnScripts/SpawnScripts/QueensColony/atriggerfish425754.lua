--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425754.lua
	Script Purpose	:	Waypoint Path for atriggerfish425754.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:08 
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
	MovementLoopAddLocation(NPC, -126.94, -12.06, 31.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.03, -12.42, 46.08, 2, 0)
	MovementLoopAddLocation(NPC, -137.89, -12.36, 48.71, 2, 0)
	MovementLoopAddLocation(NPC, -139.34, -12.18, 52.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.24, -12.66, 54.6, 2, 0)
	MovementLoopAddLocation(NPC, -130.08, -12.96, 62.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.36, -13.06, 43.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.17, -12.09, 55.69, 2, 0)
	MovementLoopAddLocation(NPC, -133.06, -11.82, 68.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.57, -11.93, 72.21, 2, 0)
	MovementLoopAddLocation(NPC, -123.19, -11.92, 72.1, 2, 0)
	MovementLoopAddLocation(NPC, -119.2, -11.07, 70.14, 2, 0)
	MovementLoopAddLocation(NPC, -117.69, -10.95, 66.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.17, -10.59, 38.5, 2, 0)
	MovementLoopAddLocation(NPC, -128.07, -11.86, 30.69, 2, 0)
	MovementLoopAddLocation(NPC, -130.07, -12.02, 17.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.21, -12.46, 8.54, 2, 0)
	MovementLoopAddLocation(NPC, -136.91, -12.64, 7.89, 2, 0)
	MovementLoopAddLocation(NPC, -144.25, -13.2, 7.97, 2, 0)
	MovementLoopAddLocation(NPC, -145.23, -12.77, 8.69, 2, 0)
	MovementLoopAddLocation(NPC, -144.48, -12.86, 10.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.59, -13.19, 8.09, 2, 0)
	MovementLoopAddLocation(NPC, -138.76, -13.28, 8.07, 2, 0)
	MovementLoopAddLocation(NPC, -134.39, -12.67, 9.03, 2, 0)
	MovementLoopAddLocation(NPC, -130, -12.04, 15.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129, -12.41, 23.97, 2, 0)
end

