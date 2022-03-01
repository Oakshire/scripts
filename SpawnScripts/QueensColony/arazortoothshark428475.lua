--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428475.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428475.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:44 
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
	MovementLoopAddLocation(NPC, 99.3, -11.09, -19.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.35, -11.51, -21.14, 2, 0)
	MovementLoopAddLocation(NPC, 89.6, -11.9, -21.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.3, -12.78, -33.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.14, -12.68, -41.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.06, -12.6, -19.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.36, -11.96, -27.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.66, -12.1, -29.28, 2, 0)
	MovementLoopAddLocation(NPC, 87.6, -12.28, -33.75, 2, 0)
	MovementLoopAddLocation(NPC, 82.61, -12.68, -36.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.16, -12.66, -39.67, 2, 0)
	MovementLoopAddLocation(NPC, 77.96, -12.46, -42.49, 2, 0)
	MovementLoopAddLocation(NPC, 75.94, -12.33, -45.33, 2, 0)
	MovementLoopAddLocation(NPC, 54.48, -11.98, -69.38, 2, 0)
	MovementLoopAddLocation(NPC, 48.97, -11.81, -76.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.42, -11.29, -81.55, 2, 0)
	MovementLoopAddLocation(NPC, 39.91, -11.28, -84.93, 2, 0)
	MovementLoopAddLocation(NPC, 37.34, -10.99, -86.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.04, -10.73, -70.33, 2, 0)
	MovementLoopAddLocation(NPC, 88.18, -11.4, -31.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.57, -10.64, -27.14, 2, 0)
end


