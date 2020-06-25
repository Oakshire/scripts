--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428520.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428520.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:01 
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
	MovementLoopAddLocation(NPC, 23.15, -13.05, -25.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.84, -13.12, -19.49, 2, 0)
	MovementLoopAddLocation(NPC, 47.05, -13.56, -11.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.17, -13.94, -25.03, 2, 0)
	MovementLoopAddLocation(NPC, 30.57, -14.1, -29.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.53, -13.06, -29.94, 2, 0)
	MovementLoopAddLocation(NPC, 13.79, -12.29, -31.17, 2, 0)
	MovementLoopAddLocation(NPC, 6.12, -11.97, -33.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.45, -11.75, -38.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.73, -11.98, -20.62, 2, 0)
	MovementLoopAddLocation(NPC, 20.97, -12.02, -17.43, 2, 0)
	MovementLoopAddLocation(NPC, 16.13, -12.33, -9.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.21, -12.02, -21.46, 2, 0)
	MovementLoopAddLocation(NPC, 17.91, -11.82, -30.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.01, -11.69, -35.9, 2, 0)
	MovementLoopAddLocation(NPC, 8.45, -11.7, -50.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.1, -11.66, -29.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.31, -11.33, -36.46, 2, 0)
	MovementLoopAddLocation(NPC, 29.88, -11.13, -41.8, 2, 0)
	MovementLoopAddLocation(NPC, 39.12, -11.18, -48.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.6, -11.04, -41.84, 2, 0)
	MovementLoopAddLocation(NPC, 28.85, -11.85, -35.11, 2, 0)
end
