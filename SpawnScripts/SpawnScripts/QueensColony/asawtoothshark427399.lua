--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427399.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427399.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:06 
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
	MovementLoopAddLocation(NPC, 94.03, -12.7, -24.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.72, -12.82, -14.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.32, -12.68, -28.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.39, -12.21, -29.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.79, -12.53, -30.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.5, -12.63, -35.24, 2, 0)
	MovementLoopAddLocation(NPC, 81.82, -12.81, -40.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.08, -12.12, -33.71, 2, 0)
	MovementLoopAddLocation(NPC, 81.68, -11.84, -27.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.9, -10.7, -36.74, 2, 0)
	MovementLoopAddLocation(NPC, 64.89, -10.68, -46.93, 2, 0)
	MovementLoopAddLocation(NPC, 59.32, -10.63, -49.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.76, -11.34, -48.46, 2, 0)
	MovementLoopAddLocation(NPC, 79.17, -12, -44.97, 2, 0)
	MovementLoopAddLocation(NPC, 87.44, -12.27, -44.07, 2, 0)
	MovementLoopAddLocation(NPC, 93.68, -12.59, -44.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.21, -12.11, -33.05, 2, math.random(10, 20))
end


