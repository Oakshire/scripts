--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427467.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427467.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:32 
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
	MovementLoopAddLocation(NPC, -54.5, -10.66, -15.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.37, -10.7, -18.65, 2, 0)
	MovementLoopAddLocation(NPC, -41.01, -10.7, -24.9, 2, 0)
	MovementLoopAddLocation(NPC, -32.54, -10.65, -30.91, 2, 0)
	MovementLoopAddLocation(NPC, -19.47, -11.87, -42.76, 2, 0)
	MovementLoopAddLocation(NPC, -5.17, -12.1, -49.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.89, -12.2, -44.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.27, -12, -44.46, 2, 0)
	MovementLoopAddLocation(NPC, -20.25, -11.78, -41.43, 2, 0)
	MovementLoopAddLocation(NPC, -39.72, -11.24, -26.48, 2, 0)
	MovementLoopAddLocation(NPC, -42.55, -10.95, -25.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.71, -11.23, -29.28, 2, 0)
	MovementLoopAddLocation(NPC, -37.95, -11.37, -34.97, 2, 0)
	MovementLoopAddLocation(NPC, -36.48, -11.45, -39.04, 2, 0)
	MovementLoopAddLocation(NPC, -34.55, -11.44, -42.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.53, -10.7, -41.65, 2, 0)
	MovementLoopAddLocation(NPC, -63.15, -10.7, -41.23, 2, 0)
	MovementLoopAddLocation(NPC, -69.76, -10.7, -38.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -59.84, -10.7, -42.85, 2, 0)
	MovementLoopAddLocation(NPC, -43.47, -11.04, -43.6, 2, 0)
	MovementLoopAddLocation(NPC, -35.6, -11.46, -37.19, 2, 0)
	MovementLoopAddLocation(NPC, -33.32, -11.83, -33.3, 2, 0)
	MovementLoopAddLocation(NPC, -32.52, -11.75, -27.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.44, -12.11, -19.78, 2, 0)
	MovementLoopAddLocation(NPC, -12.75, -11.53, -15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.28, -11.46, -17.49, 2, 0)
	MovementLoopAddLocation(NPC, -23.77, -11.28, -24.87, 2, 0)
	MovementLoopAddLocation(NPC, -26.04, -11.3, -26.17, 2, 0)
	MovementLoopAddLocation(NPC, -27.93, -11.56, -27.96, 2, 0)
	MovementLoopAddLocation(NPC, -33.42, -11.84, -31.36, 2, 0)
	MovementLoopAddLocation(NPC, -37.79, -11.45, -31.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.61, -10.7, -24.96, 2, 0)
	MovementLoopAddLocation(NPC, -51.21, -10.7, -19.27, 2, 0)
end
