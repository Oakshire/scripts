--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428496.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428496.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:29:18 
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
	MovementLoopAddLocation(NPC, 10.13, -10.74, -81.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.14, -10.7, -77.98, 2, 0)
	MovementLoopAddLocation(NPC, 14.5, -10.7, -66.96, 2, 0)
	MovementLoopAddLocation(NPC, 23.79, -10.7, -37.43, 2, 0)
	MovementLoopAddLocation(NPC, 32.79, -10.7, -22.97, 2, 0)
	MovementLoopAddLocation(NPC, 34.34, -11.85, -1.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.48, -13.02, -24.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.01, -13.01, -16.55, 2, 0)
	MovementLoopAddLocation(NPC, 39.12, -13.25, -11.77, 2, 0)
	MovementLoopAddLocation(NPC, 33.46, -13.4, -5.32, 2, 0)
	MovementLoopAddLocation(NPC, 31.21, -13.44, -1.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.26, -12.5, 0.47, 2, 0)
	MovementLoopAddLocation(NPC, 34.01, -12.1, 5.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.58, -12.22, 0.26, 2, 0)
	MovementLoopAddLocation(NPC, 31.21, -12.27, -15.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.99, -12.81, -29.24, 2, 0)
	MovementLoopAddLocation(NPC, 20.97, -12.67, -39.51, 2, 0)
	MovementLoopAddLocation(NPC, 15.67, -11.81, -48.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.61, -11.36, -52.18, 2, 0)
	MovementLoopAddLocation(NPC, -3.33, -11.38, -57.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.66, -11.36, -75.34, 2, 0)
	MovementLoopAddLocation(NPC, 8.65, -10.75, -78.89, 2, 0)
end

