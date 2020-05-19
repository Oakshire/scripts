--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427390.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427390.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:59 
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
	MovementLoopAddLocation(NPC, 68.54, -11.79, -61.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.39, -10.7, -56.32, 2, 0)
	MovementLoopAddLocation(NPC, 75.47, -10.7, -50.48, 2, 0)
	MovementLoopAddLocation(NPC, 79.7, -10.7, -45.72, 2, 0)
	MovementLoopAddLocation(NPC, 83.17, -10.7, -44.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.91, -12.44, -37.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.34, -12.48, -35.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.14, -11.55, -43.95, 2, 0)
	MovementLoopAddLocation(NPC, 70.68, -11.27, -46.24, 2, 0)
	MovementLoopAddLocation(NPC, 61.76, -10.78, -47.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.88, -11.16, -43.44, 2, 0)
	MovementLoopAddLocation(NPC, 78.37, -11.66, -39.85, 2, 0)
	MovementLoopAddLocation(NPC, 85.1, -11.68, -35.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.26, -11.67, -39.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.57, -12.68, -29.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.05, -11.53, -24.66, 2, 0)
	MovementLoopAddLocation(NPC, 99.28, -11.11, -19.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.11, -11.55, -36.87, 2, 0)
	MovementLoopAddLocation(NPC, 74.2, -11.65, -42.52, 2, 0)
	MovementLoopAddLocation(NPC, 53.1, -10.7, -60.97, 2, 0)
	MovementLoopAddLocation(NPC, 44.47, -10.7, -69.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.41, -10.6, -64.91, 2, math.random(10, 20))
end

