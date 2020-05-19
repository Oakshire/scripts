--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428454.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428454.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:59 
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
	MovementLoopAddLocation(NPC, -17.89, -11.61, 0.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.07, -12.23, -27.32, 2, 0)
	MovementLoopAddLocation(NPC, -23.21, -12.67, -34.29, 2, 0)
	MovementLoopAddLocation(NPC, -22.16, -12.37, -40.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.21, -12.6, -31.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.24, -11.44, -40.83, 2, 0)
	MovementLoopAddLocation(NPC, -43.73, -10.7, -47.76, 2, 0)
	MovementLoopAddLocation(NPC, -49.64, -10.7, -52.91, 2, 0)
	MovementLoopAddLocation(NPC, -62.79, -11.36, -51.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.08, -11.16, -53.22, 2, 0)
	MovementLoopAddLocation(NPC, -51.96, -10.99, -57.05, 2, 0)
	MovementLoopAddLocation(NPC, -47.59, -11.17, -60.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.57, -11.13, -57.56, 2, 0)
	MovementLoopAddLocation(NPC, -31.08, -10.76, -53.9, 2, 0)
	MovementLoopAddLocation(NPC, -21.26, -11.71, -47.86, 2, 0)
	MovementLoopAddLocation(NPC, -18.13, -12.21, -45.27, 2, 0)
	MovementLoopAddLocation(NPC, -15.56, -12.56, -44.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.77, -11.3, -35.86, 2, 0)
	MovementLoopAddLocation(NPC, -18.2, -11.16, -31.35, 2, 0)
	MovementLoopAddLocation(NPC, -29.49, -11.24, -0.68, 2, 0)
	MovementLoopAddLocation(NPC, -31.94, -11.22, 5.6, 2, 0)
	MovementLoopAddLocation(NPC, -34.84, -12.03, 26.63, 2, math.random(10, 20))
end

