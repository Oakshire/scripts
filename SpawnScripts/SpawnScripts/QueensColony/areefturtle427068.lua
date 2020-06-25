--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427068.lua
	Script Purpose	:	Waypoint Path for areefturtle427068.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:51 
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
	MovementLoopAddLocation(NPC, 85.61, -12.79, -39.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.56, -11.89, -44.86, 2, 0)
	MovementLoopAddLocation(NPC, 76.75, -11.4, -48.43, 2, 0)
	MovementLoopAddLocation(NPC, 74.44, -11.41, -51.21, 2, 0)
	MovementLoopAddLocation(NPC, 67.72, -11.74, -74.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.11, -11.7, -74.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.93, -11.72, -76.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.68, -11.91, -68.86, 2, 0)
	MovementLoopAddLocation(NPC, 74.61, -11.67, -59.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.67, -11.5, -63.41, 2, 0)
	MovementLoopAddLocation(NPC, 79.71, -11.2, -71.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.47, -10.39, -63.98, 2, 0)
	MovementLoopAddLocation(NPC, 76.68, -10.2, -52.09, 2, 0)
	MovementLoopAddLocation(NPC, 79.5, -10.2, -49.1, 2, 0)
	MovementLoopAddLocation(NPC, 81.39, -10.2, -47.97, 2, 0)
	MovementLoopAddLocation(NPC, 87.17, -10.98, -45.12, 2, 0)
	MovementLoopAddLocation(NPC, 99.41, -12.3, -40.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.18, -11.03, -46.89, 2, 0)
	MovementLoopAddLocation(NPC, 69.56, -10.42, -55.17, 2, 0)
	MovementLoopAddLocation(NPC, 60.94, -11.55, -58.42, 2, 0)
	MovementLoopAddLocation(NPC, 56.32, -11.88, -59.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.53, -11.81, -67.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.35, -11.93, -51.3, 2, 0)
	MovementLoopAddLocation(NPC, 83.45, -11.75, -32.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.06, -12.67, -38.13, 2, math.random(10, 20))
end

