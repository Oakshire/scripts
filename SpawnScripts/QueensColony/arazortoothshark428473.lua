--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428473.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428473.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:02 
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
	MovementLoopAddLocation(NPC, 58.9, -11.73, -57.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.81, -11.78, -52.5, 2, 0)
	MovementLoopAddLocation(NPC, 78.25, -12.58, -41.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.48, -12.51, -31.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.27, -12.21, -33.7, 2, 0)
	MovementLoopAddLocation(NPC, 94.42, -11.77, -37.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.12, -11.85, -44.36, 2, 0)
	MovementLoopAddLocation(NPC, 69.36, -11.54, -47.97, 2, 0)
	MovementLoopAddLocation(NPC, 61.28, -10.7, -50.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.15, -11.44, -55.94, 2, 0)
	MovementLoopAddLocation(NPC, 59.04, -11.83, -67.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.73, -10.7, -55.78, 2, 0)
	MovementLoopAddLocation(NPC, 78.07, -10.7, -45.49, 2, 0)
	MovementLoopAddLocation(NPC, 86.54, -11.55, -43.21, 2, 0)
	MovementLoopAddLocation(NPC, 92.67, -12.08, -37.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.38, -11.85, -23.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90, -12.52, -40.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.33, -12.3, -41.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.55, -11.49, -44.93, 2, 0)
	MovementLoopAddLocation(NPC, 75.5, -10.7, -53.48, 2, 0)
	MovementLoopAddLocation(NPC, 77.11, -10.7, -65.28, 2, 0)
	MovementLoopAddLocation(NPC, 77.68, -10.73, -73.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.52, -11.97, -67.58, 2, 0)
end


