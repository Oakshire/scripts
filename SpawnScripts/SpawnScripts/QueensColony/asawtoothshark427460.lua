--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427460.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427460.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:43 
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
	MovementLoopAddLocation(NPC, -46.11, -11.71, -40.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.67, -11.14, -35.18, 2, 0)
	MovementLoopAddLocation(NPC, -51.24, -10.7, -31, 2, 0)
	MovementLoopAddLocation(NPC, -56.19, -10.7, -19.95, 2, 0)
	MovementLoopAddLocation(NPC, -59.47, -10.7, -15.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.36, -10.7, -16.96, 2, 0)
	MovementLoopAddLocation(NPC, -48.61, -10.7, -34.14, 2, 0)
	MovementLoopAddLocation(NPC, -43.75, -11.17, -35.64, 2, 0)
	MovementLoopAddLocation(NPC, -39.93, -11.44, -41.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.75, -11.07, -35.61, 2, 0)
	MovementLoopAddLocation(NPC, -56.48, -10.7, -20.93, 2, 0)
	MovementLoopAddLocation(NPC, -59.4, -10.7, -9.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.56, -10.7, -18.07, 2, 0)
	MovementLoopAddLocation(NPC, -45.69, -10.68, -33.4, 2, 0)
	MovementLoopAddLocation(NPC, -33.74, -12.42, -37.02, 2, 0)
	MovementLoopAddLocation(NPC, -27.98, -13.22, -41.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.53, -12.7, -44.99, 2, 0)
	MovementLoopAddLocation(NPC, -30.87, -11.31, -49.28, 2, 0)
	MovementLoopAddLocation(NPC, -37.4, -10.7, -59.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.55, -11.29, -19.86, 2, 0)
	MovementLoopAddLocation(NPC, -33.5, -10.7, -5.62, 2, 0)
	MovementLoopAddLocation(NPC, -32.44, -10.7, 1.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.18, -10.7, -5.21, 2, 0)
	MovementLoopAddLocation(NPC, -37.56, -10.7, -20.68, 2, 0)
end

