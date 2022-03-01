--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428507.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428507.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:22 
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
	MovementLoopAddLocation(NPC, 1.13, -11.89, -67.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.33, -12.29, -62.55, 2, 0)
	MovementLoopAddLocation(NPC, 21.78, -10.7, -52.18, 2, 0)
	MovementLoopAddLocation(NPC, 44.05, -10.7, -37.54, 2, 0)
	MovementLoopAddLocation(NPC, 49.6, -10.7, -29.52, 2, 0)
	MovementLoopAddLocation(NPC, 53.46, -10.7, -24.59, 2, 0)
	MovementLoopAddLocation(NPC, 62.57, -10.7, -19.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.5, -10.64, -18.37, 2, 0)
	MovementLoopAddLocation(NPC, 78.68, -11.69, -17.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.59, -12.1, -9.23, 2, 0)
	MovementLoopAddLocation(NPC, 46.88, -13.21, -7.94, 2, 0)
	MovementLoopAddLocation(NPC, 41.44, -13.76, -6.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.35, -13.32, -13.41, 2, 0)
	MovementLoopAddLocation(NPC, 29.7, -13.1, -24.15, 2, 0)
	MovementLoopAddLocation(NPC, 21.04, -12.59, -38.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.93, -14.44, -23.55, 2, 0)
	MovementLoopAddLocation(NPC, 26.75, -14.83, -18.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.88, -14.28, -23.82, 2, 0)
	MovementLoopAddLocation(NPC, 19.14, -13.35, -33.75, 2, 0)
	MovementLoopAddLocation(NPC, 14.12, -12.33, -41.88, 2, 0)
	MovementLoopAddLocation(NPC, 7.48, -11.74, -47.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.87, -11.99, -54.79, 2, 0)
end
