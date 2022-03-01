--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427576.lua
	Script Purpose	:	Waypoint Path for aneedlefang427576.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:21 
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
	MovementLoopAddLocation(NPC, 41.81, -12.05, -80.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.11, -11.7, -80.12, 2, 0)
	MovementLoopAddLocation(NPC, 75.66, -12.06, -74.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.51, -11.17, -59.58, 2, 0)
	MovementLoopAddLocation(NPC, 63.48, -11.03, -47.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.06, -11.02, -54.49, 2, 0)
	MovementLoopAddLocation(NPC, 67.82, -12.08, -70.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.52, -12.07, -55.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.36, -11.98, -72.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.23, -12.01, -52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.19, -11.73, -49.5, 2, 0)
	MovementLoopAddLocation(NPC, 79.55, -11.75, -44.65, 2, 0)
	MovementLoopAddLocation(NPC, 94.9, -12.8, -35.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.92, -10.3, -42.98, 2, 0)
	MovementLoopAddLocation(NPC, 62.7, -10.32, -44.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.73, -10.27, -48.91, 2, 0)
	MovementLoopAddLocation(NPC, 48.7, -11.1, -67.59, 2, 0)
	MovementLoopAddLocation(NPC, 46.83, -12.04, -74.36, 2, math.random(10, 20))
end


