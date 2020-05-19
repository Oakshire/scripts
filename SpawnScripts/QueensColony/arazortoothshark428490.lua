--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428490.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428490.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:38 
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
	MovementLoopAddLocation(NPC, 43.84, -11.84, -72.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.19, -11.98, -72.24, 2, 0)
	MovementLoopAddLocation(NPC, 52.02, -11.85, -70.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.07, -12.22, -79.75, 2, 0)
	MovementLoopAddLocation(NPC, 45.88, -11.81, -83.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.15, -11.77, -84.43, 2, 0)
	MovementLoopAddLocation(NPC, 35.98, -10.7, -87.26, 2, 0)
	MovementLoopAddLocation(NPC, 27.75, -10.7, -91.13, 2, 0)
	MovementLoopAddLocation(NPC, 18.68, -10.54, -92.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.03, -10.73, -82.17, 2, 0)
	MovementLoopAddLocation(NPC, 48.97, -10.65, -60.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.11, -10.7, -70.97, 2, 0)
	MovementLoopAddLocation(NPC, 34.48, -10.7, -77.56, 2, 0)
	MovementLoopAddLocation(NPC, 30.25, -11.74, -82.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.5, -11.86, -85.03, 2, 0)
	MovementLoopAddLocation(NPC, 49.83, -11.64, -83.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.12, -11.81, -81.61, 2, 0)
	MovementLoopAddLocation(NPC, 68.87, -11.98, -80.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.99, -11.58, -57.95, 2, 0)
	MovementLoopAddLocation(NPC, 69.11, -11.31, -52.25, 2, 0)
	MovementLoopAddLocation(NPC, 68.43, -10.94, -44.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.22, -11.91, -63.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.21, -11.77, -58.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.12, -12.08, -71.69, 2, 0)
end

