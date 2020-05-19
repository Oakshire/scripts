--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427065.lua
	Script Purpose	:	Waypoint Path for areefturtle427065.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:44 
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
	MovementLoopAddLocation(NPC, 89.98, -11.69, -41.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.61, -11.75, -29.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.6, -11.57, -36.46, 2, 0)
	MovementLoopAddLocation(NPC, 74.35, -11.61, -41.95, 2, 0)
	MovementLoopAddLocation(NPC, 68.82, -10.92, -47.36, 2, 0)
	MovementLoopAddLocation(NPC, 47.31, -10.47, -65.43, 2, 0)
	MovementLoopAddLocation(NPC, 40.95, -10.2, -70.77, 2, 0)
	MovementLoopAddLocation(NPC, 35.38, -10.37, -76.31, 2, 0)
	MovementLoopAddLocation(NPC, 27.84, -11.76, -82.58, 2, 0)
	MovementLoopAddLocation(NPC, 14.6, -11.66, -85.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.52, -11.74, -95.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.06, -11.63, -92.42, 2, 0)
	MovementLoopAddLocation(NPC, 24.6, -11.73, -88.25, 2, 0)
	MovementLoopAddLocation(NPC, 43.88, -11.81, -78.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.12, -11.04, -60.98, 2, 0)
	MovementLoopAddLocation(NPC, 61.02, -10.69, -51.23, 2, 0)
	MovementLoopAddLocation(NPC, 59.49, -10.55, -40.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.95, -10.71, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, 68.11, -11.05, -48.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.81, -11.35, -35.33, 2, 0)
	MovementLoopAddLocation(NPC, 85.96, -11.42, -23.68, 2, math.random(10, 20))
end

