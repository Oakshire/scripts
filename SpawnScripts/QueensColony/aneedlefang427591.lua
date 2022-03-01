--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427591.lua
	Script Purpose	:	Waypoint Path for aneedlefang427591.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:50 
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
	MovementLoopAddLocation(NPC, 90.16, -12.95, -18.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.02, -12.4, -23.13, 2, 0)
	MovementLoopAddLocation(NPC, 80.8, -12.17, -23.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.43, -12.93, -24.11, 2, 0)
	MovementLoopAddLocation(NPC, 91.72, -12.8, -23.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.3, -12.18, -32.29, 2, 0)
	MovementLoopAddLocation(NPC, 80.04, -12.02, -36.56, 2, 0)
	MovementLoopAddLocation(NPC, 73.57, -11.9, -47.52, 2, 0)
	MovementLoopAddLocation(NPC, 71.06, -12.16, -54.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.24, -12.16, -59.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.75, -11.92, -49.87, 2, 0)
	MovementLoopAddLocation(NPC, 78.54, -11.78, -38.95, 2, 0)
	MovementLoopAddLocation(NPC, 87.19, -12.8, -19.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.57, -11.9, -39.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.29, -11.94, -44.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.28, -12.1, -15.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.41, -11.1, -45.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.25, -11.82, -31.31, 2, 0)
	MovementLoopAddLocation(NPC, 98.7, -12.2, -22.79, 2, math.random(10, 20))
end


