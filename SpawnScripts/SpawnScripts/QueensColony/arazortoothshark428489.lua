--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428489.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428489.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:13 
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
	MovementLoopAddLocation(NPC, 70.5, -11.72, -64.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.22, -11.73, -71.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58, -11.58, -77.52, 2, 0)
	MovementLoopAddLocation(NPC, 52.6, -11.4, -82.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.08, -11.49, -80.96, 2, 0)
	MovementLoopAddLocation(NPC, 39.87, -11.88, -80.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.8, -11.81, -84.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.67, -11.96, -78.34, 2, 0)
	MovementLoopAddLocation(NPC, 49.43, -11.86, -71.94, 2, 0)
	MovementLoopAddLocation(NPC, 55.93, -11.62, -63.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.02, -11.29, -59.75, 2, 0)
	MovementLoopAddLocation(NPC, 59.03, -10.7, -42.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.38, -10.94, -61.75, 2, 0)
	MovementLoopAddLocation(NPC, 49.54, -10.7, -70.96, 2, 0)
	MovementLoopAddLocation(NPC, 44.46, -11.04, -76.41, 2, 0)
	MovementLoopAddLocation(NPC, 37.27, -11.63, -83.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.33, -11.42, -85.66, 2, 0)
	MovementLoopAddLocation(NPC, 27.04, -10.7, -87.78, 2, 0)
	MovementLoopAddLocation(NPC, 19.35, -11.55, -92.72, 2, 0)
	MovementLoopAddLocation(NPC, 14.73, -11.95, -94.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.51, -11.86, -90.35, 2, 0)
	MovementLoopAddLocation(NPC, 55.36, -11.81, -68.37, 2, 0)
end

