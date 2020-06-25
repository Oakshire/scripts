--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428469.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428469.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:34 
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
	MovementLoopAddLocation(NPC, -30.4, -10.57, -53.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.64, -10.7, -47.44, 2, 0)
	MovementLoopAddLocation(NPC, -40.57, -10.7, 7.66, 2, 0)
	MovementLoopAddLocation(NPC, -42.36, -12.19, 13.89, 2, 0)
	MovementLoopAddLocation(NPC, -42.11, -12.6, 17.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.84, -11.84, 14.59, 2, 0)
	MovementLoopAddLocation(NPC, -29.46, -12.31, 12.13, 2, 0)
	MovementLoopAddLocation(NPC, -18.61, -12.97, 9.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.3, -12.95, 24.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.52, -12.34, 23.26, 2, 0)
	MovementLoopAddLocation(NPC, -42.28, -12.21, 27.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.24, -12.06, 23.35, 2, 0)
	MovementLoopAddLocation(NPC, -47.45, -10.7, 14.36, 2, 0)
	MovementLoopAddLocation(NPC, -52.28, -10.7, 0.63, 2, 0)
	MovementLoopAddLocation(NPC, -56.8, -10.7, -7.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.79, -10.7, -19.51, 2, 0)
	MovementLoopAddLocation(NPC, -53.49, -10.65, -27.45, 2, 0)
	MovementLoopAddLocation(NPC, -50.55, -10.66, -33.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.88, -10.7, -18.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.86, -10.7, -23.73, 2, 0)
end


