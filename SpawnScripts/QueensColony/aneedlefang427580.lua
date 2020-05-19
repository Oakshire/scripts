--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427580.lua
	Script Purpose	:	Waypoint Path for aneedlefang427580.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:38 
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
	MovementLoopAddLocation(NPC, 70.56, -12.05, -52.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.62, -11.47, -46.79, 2, 0)
	MovementLoopAddLocation(NPC, 97.39, -12.03, -31.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.54, -12.04, -23.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.14, -12.91, -31.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.88, -12.45, -32.75, 2, 0)
	MovementLoopAddLocation(NPC, 85.27, -12.17, -35.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.29, -12.03, -40.66, 2, 0)
	MovementLoopAddLocation(NPC, 70.7, -12.03, -47.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.68, -12, -40.08, 2, 0)
	MovementLoopAddLocation(NPC, 97.22, -12, -35.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.62, -12.03, -39.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.45, -11.96, -34.98, 2, 0)
	MovementLoopAddLocation(NPC, 101.65, -12.9, -27.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.92, -12.8, -23.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.77, -12.13, -33.25, 2, 0)
	MovementLoopAddLocation(NPC, 80, -12.17, -39.87, 2, 0)
	MovementLoopAddLocation(NPC, 77.52, -12.08, -42.72, 2, 0)
end


