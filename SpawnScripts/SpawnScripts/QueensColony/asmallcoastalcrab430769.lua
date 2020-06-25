--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430769.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430769.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:55 
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
	MovementLoopAddLocation(NPC, -31.05, -10.09, 250.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.52, -10.14, 250.52, 2, 0)
	MovementLoopAddLocation(NPC, -32.09, -9.58, 247.38, 2, 0)
	MovementLoopAddLocation(NPC, -26.05, -7.83, 241.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.05, -7.88, 240.00, 2, 0)
	MovementLoopAddLocation(NPC, -31.34, -8.16, 238.13, 2, 0)
	MovementLoopAddLocation(NPC, -39.90, -8.43, 232.29, 2, 0)
	MovementLoopAddLocation(NPC, -42.22, -8.53, 231.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.19, -8.51, 231.87, 2, 0)
	MovementLoopAddLocation(NPC, -40.11, -8.56, 232.90, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.02, -8.95, 235.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.03, -8.05, 233.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.21, -8.86, 243.39, 2, 0)
	MovementLoopAddLocation(NPC, -30.93, -9.04, 246.10, 2, 0)
end

