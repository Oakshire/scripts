--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428485.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428485.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:53 
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
	MovementLoopAddLocation(NPC, 28.72, -11.81, -81.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.38, -11.72, -78.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.25, -11.8, -80.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.19, -11.91, -71.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.88, -10.7, -60.47, 2, 0)
	MovementLoopAddLocation(NPC, 59.01, -11.02, -51.16, 2, 0)
	MovementLoopAddLocation(NPC, 62.6, -10.7, -48.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.08, -10.7, -53.04, 2, 0)
	MovementLoopAddLocation(NPC, 42.3, -10.7, -66.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.18, -11.72, -70.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.74, -11.27, -60.46, 2, 0)
	MovementLoopAddLocation(NPC, 73.73, -10.7, -54.5, 2, 0)
	MovementLoopAddLocation(NPC, 75.97, -10.66, -49.7, 2, 0)
	MovementLoopAddLocation(NPC, 79.06, -10.7, -46.28, 2, 0)
	MovementLoopAddLocation(NPC, 85.17, -10.67, -45.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.27, -11.68, -37.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.57, -11.07, -46.04, 2, 0)
	MovementLoopAddLocation(NPC, 59.68, -10.94, -51.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.05, -10.74, -76.88, 2, 0)
	MovementLoopAddLocation(NPC, 34.28, -11.22, -81.86, 2, 0)
end


