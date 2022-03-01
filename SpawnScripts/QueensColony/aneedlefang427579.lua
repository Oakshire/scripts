--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427579.lua
	Script Purpose	:	Waypoint Path for aneedlefang427579.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:16 
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
	MovementLoopAddLocation(NPC, 99.5, -12.07, -27.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.1, -12.1, -25.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.93, -12.18, -31.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.97, -11.18, -25.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.02, -12.15, -37.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.2, -12.94, -31.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.26, -12.02, -25.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.99, -11.69, -32.16, 2, 0)
	MovementLoopAddLocation(NPC, 76.04, -11.57, -39.91, 2, 0)
	MovementLoopAddLocation(NPC, 70.93, -12.01, -47.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.89, -12.04, -70.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.85, -12.07, -70.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.53, -10.99, -46.56, 2, 0)
	MovementLoopAddLocation(NPC, 73.17, -11, -39.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.6, -11.02, -54.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.11, -10.75, -45.81, 2, 0)
	MovementLoopAddLocation(NPC, 95.17, -12.05, -31.92, 2, 0)
end


