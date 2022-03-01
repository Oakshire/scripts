--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427424.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427424.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:45 
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
	MovementLoopAddLocation(NPC, 12.58, -10.7, -22.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.29, -10.7, -12.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.02, -11.03, -15.55, 2, 0)
	MovementLoopAddLocation(NPC, 67.13, -13.21, -11.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.7, -13.1, -14.9, 2, 0)
	MovementLoopAddLocation(NPC, 53.11, -12.52, -18.91, 2, 0)
	MovementLoopAddLocation(NPC, 40.04, -12.85, -23.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.7, -11.49, -33.59, 2, 0)
	MovementLoopAddLocation(NPC, 43.77, -11.37, -41.58, 2, 0)
	MovementLoopAddLocation(NPC, 41.24, -11.67, -48.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.31, -11.65, -42.92, 2, 0)
	MovementLoopAddLocation(NPC, 45.71, -11.54, -32.45, 2, 0)
	MovementLoopAddLocation(NPC, 43.78, -12.26, -25.78, 2, 0)
	MovementLoopAddLocation(NPC, 39.21, -14.6, -13.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.43, -12.8, -21.7, 2, math.random(10, 20))
end


