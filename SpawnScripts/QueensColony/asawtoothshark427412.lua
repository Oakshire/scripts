--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427412.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427412.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:17 
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
	MovementLoopAddLocation(NPC, 22.9, -13.75, -1.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.57, -11.83, -12.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.51, -11.95, -6.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.31, -13.86, -6.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.55, -14.24, -8.15, 2, 0)
	MovementLoopAddLocation(NPC, 34.48, -14.68, -9.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.93, -14.33, -7.68, 2, 0)
	MovementLoopAddLocation(NPC, 43.87, -12.67, -0.76, 2, 0)
	MovementLoopAddLocation(NPC, 47.21, -12.56, 5.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.27, -13.2, -2.22, 2, 0)
	MovementLoopAddLocation(NPC, 32.69, -13.68, -8.85, 2, 0)
	MovementLoopAddLocation(NPC, 25.1, -13.77, -14.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.78, -13.96, -8.25, 2, 0)
end

