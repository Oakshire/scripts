--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425761.lua
	Script Purpose	:	Waypoint Path for atriggerfish425761.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:31 
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
	MovementLoopAddLocation(NPC, -129.93, -12.01, 45.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.35, -12.23, 47.58, 2, 0)
	MovementLoopAddLocation(NPC, -103.8, -11.97, 66.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.1, -12.23, 67.85, 2, 0)
	MovementLoopAddLocation(NPC, -108.48, -12.07, 68.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.33, -11.94, 66.93, 2, 0)
	MovementLoopAddLocation(NPC, -118.9, -11.45, 64.68, 2, 0)
	MovementLoopAddLocation(NPC, -121.01, -10.39, 62.96, 2, 0)
	MovementLoopAddLocation(NPC, -128.31, -10.57, 57, 2, 0)
	MovementLoopAddLocation(NPC, -129.04, -11.96, 58.65, 2, 0)
	MovementLoopAddLocation(NPC, -128.32, -12.08, 60.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.14, -11.35, 56.83, 2, 0)
	MovementLoopAddLocation(NPC, -127.32, -10.52, 57.43, 2, 0)
	MovementLoopAddLocation(NPC, -118.08, -10.58, 63.55, 2, 0)
	MovementLoopAddLocation(NPC, -113.93, -11.76, 67.4, 2, 0)
	MovementLoopAddLocation(NPC, -110.11, -11.92, 68.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.24, -11.28, 64.84, 2, 0)
	MovementLoopAddLocation(NPC, -111.29, -10.48, 46.99, 2, 0)
	MovementLoopAddLocation(NPC, -105.13, -10.24, 43.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.79, -11.01, 45.2, 2, 0)
	MovementLoopAddLocation(NPC, -113.65, -10.39, 45, 2, 0)
	MovementLoopAddLocation(NPC, -118.72, -10.5, 43, 2, 0)
	MovementLoopAddLocation(NPC, -122.23, -11.07, 40.93, 2, 0)
	MovementLoopAddLocation(NPC, -122.68, -11.09, 39.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.76, -11.12, 38.8, 2, 0)
	MovementLoopAddLocation(NPC, -128.82, -10.98, 39.37, 2, 0)
	MovementLoopAddLocation(NPC, -130.91, -10.37, 47.9, 2, 0)
	MovementLoopAddLocation(NPC, -143.52, -10.54, 50.35, 2, 0)
	MovementLoopAddLocation(NPC, -146.02, -12.46, 66.57, 2, 0)
	MovementLoopAddLocation(NPC, -145.34, -12.81, 74.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.8, -13.26, 51.13, 2, 0)
	MovementLoopAddLocation(NPC, -138.25, -13.3, 48.27, 2, 0)
	MovementLoopAddLocation(NPC, -137.76, -13.02, 39.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.25, -12.51, 41, 2, 0)
	MovementLoopAddLocation(NPC, -126.99, -12.02, 43.71, 2, math.random(10, 20))
end

