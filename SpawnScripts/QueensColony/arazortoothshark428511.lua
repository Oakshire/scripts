--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428511.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428511.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:06 
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
	MovementLoopAddLocation(NPC, -35.5, -12.09, 26.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.85, -12.4, 20.85, 2, 0)
	MovementLoopAddLocation(NPC, -42, -10.7, 7.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.84, -11.26, 7.04, 2, 0)
	MovementLoopAddLocation(NPC, -30.28, -11.5, 2.58, 2, 0)
	MovementLoopAddLocation(NPC, -23.96, -11.52, -6.38, 2, 0)
	MovementLoopAddLocation(NPC, -7.83, -12.58, -11.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.97, -12.16, -17.76, 2, 0)
	MovementLoopAddLocation(NPC, -4.81, -11.76, -23.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.56, -11.38, -18.11, 2, 0)
	MovementLoopAddLocation(NPC, -23.47, -10.64, -4.94, 2, 0)
	MovementLoopAddLocation(NPC, -32.56, -10.7, 1.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.1, -10.7, -4.18, 2, 0)
	MovementLoopAddLocation(NPC, -42.36, -10.7, -22.91, 2, 0)
	MovementLoopAddLocation(NPC, -52.09, -10.7, -50.01, 2, 0)
	MovementLoopAddLocation(NPC, -51.59, -10.7, -55.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.08, -10.7, -47.66, 2, 0)
	MovementLoopAddLocation(NPC, -68.39, -10.7, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -71.33, -10.7, -15.38, 2, 0)
	MovementLoopAddLocation(NPC, -73.38, -10.7, 8.04, 2, 0)
	MovementLoopAddLocation(NPC, -78.82, -10.7, 15.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.83, -10.7, 8.78, 2, 0)
	MovementLoopAddLocation(NPC, -45.21, -10.7, 4.1, 2, 0)
	MovementLoopAddLocation(NPC, -35.98, -10.7, 5.78, 2, 0)
	MovementLoopAddLocation(NPC, -18.28, -12.21, 7.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.73, -12.64, 18.81, 2, 0)
end

