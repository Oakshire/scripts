--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427393.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427393.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:03 
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
	MovementLoopAddLocation(NPC, 44.84, -11.84, -80.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.04, -11.87, -79.5, 2, 0)
	MovementLoopAddLocation(NPC, 72.96, -11.87, -72.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.8, -11.43, -68, 2, 0)
	MovementLoopAddLocation(NPC, 51.65, -11.66, -67.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.62, -11.02, -57.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.61, -11, -51.13, 2, 0)
	MovementLoopAddLocation(NPC, 71.01, -11.19, -47.89, 2, 0)
	MovementLoopAddLocation(NPC, 78.26, -11.75, -43.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.77, -11.96, -31.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.73, -11.43, -39.98, 2, 0)
	MovementLoopAddLocation(NPC, 78.88, -11.18, -45.06, 2, 0)
	MovementLoopAddLocation(NPC, 72.88, -11.42, -49.31, 2, 0)
	MovementLoopAddLocation(NPC, 70.79, -11.7, -52.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.63, -11.83, -66.65, 2, math.random(10, 20))
end


