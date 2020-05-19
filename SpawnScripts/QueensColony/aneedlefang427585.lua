--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427585.lua
	Script Purpose	:	Waypoint Path for aneedlefang427585.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:59 
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
	MovementLoopAddLocation(NPC, 68.48, -11.14, -43.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.22, -10.23, -55.15, 2, 0)
	MovementLoopAddLocation(NPC, 60.25, -10.6, -74.25, 2, 0)
	MovementLoopAddLocation(NPC, 53.46, -11.21, -82.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.05, -9.96, -74.99, 2, 0)
	MovementLoopAddLocation(NPC, 73.92, -10.73, -52.88, 2, 0)
	MovementLoopAddLocation(NPC, 77.83, -10.76, -47.53, 2, 0)
	MovementLoopAddLocation(NPC, 85.88, -10.99, -41.18, 2, 0)
	MovementLoopAddLocation(NPC, 100.79, -11.97, -30.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.58, -12.23, -15.07, 2, 0)
	MovementLoopAddLocation(NPC, 80.03, -12.29, -10.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.56, -12.93, -34.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.71, -12.93, -41.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.87, -12.08, -59.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.7, -12.17, -53.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.66, -11.55, -43.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.76, -11.92, -48.14, 2, 0)
	MovementLoopAddLocation(NPC, 58.85, -12.43, -61.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.82, -11.13, -63.76, 2, 0)
	MovementLoopAddLocation(NPC, 44.19, -10.47, -64.7, 2, math.random(10, 20))
end

