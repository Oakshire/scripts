--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427403.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427403.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:11 
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
	MovementLoopAddLocation(NPC, 70.4, -11.26, -51.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.85, -11.55, -47.41, 2, 0)
	MovementLoopAddLocation(NPC, 82.91, -11.99, -39.37, 2, 0)
	MovementLoopAddLocation(NPC, 94.37, -12.27, -30.69, 2, 0)
	MovementLoopAddLocation(NPC, 98.72, -11.96, -24.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.4, -12.2, -27.51, 2, 0)
	MovementLoopAddLocation(NPC, 88.59, -12.41, -33.64, 2, 0)
	MovementLoopAddLocation(NPC, 81.85, -12.99, -38.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.93, -12.08, -36.24, 2, 0)
	MovementLoopAddLocation(NPC, 97.58, -11.79, -34.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.52, -11.35, -43.75, 2, 0)
	MovementLoopAddLocation(NPC, 71.59, -11.29, -45.44, 2, 0)
	MovementLoopAddLocation(NPC, 66.75, -11.03, -49.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.51, -11.11, -51.34, 2, 0)
	MovementLoopAddLocation(NPC, 77.88, -11.43, -71.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.46, -11.91, -73.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.19, -10.51, -74.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.68, -10.51, -77.12, 2, 0)
	MovementLoopAddLocation(NPC, 26.05, -11.17, -86.72, 2, 0)
	MovementLoopAddLocation(NPC, 19.52, -10.7, -96.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.3, -11.29, -90.64, 2, 0)
end


