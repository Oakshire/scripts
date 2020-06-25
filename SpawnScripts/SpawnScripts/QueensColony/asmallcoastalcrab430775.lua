--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430775.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430775.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:09 
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
	MovementLoopAddLocation(NPC, -32.16, -7.98, 233.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.60, -8.56, 244.27, 2, 0)
	MovementLoopAddLocation(NPC, -30.02, -8.78, 246.02, 2, 0)
	MovementLoopAddLocation(NPC, -30.20, -9.49, 248.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.22, -8.83, 246.02, 2, 0)
	MovementLoopAddLocation(NPC, -39.94, -7.96, 225.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.36, -7.84, 237.38, 2, 0)
	MovementLoopAddLocation(NPC, -27.19, -7.89, 239.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.06, -7.96, 238.34, 2, 0)
	MovementLoopAddLocation(NPC, -38.02, -8.22, 232.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.46, -9.03, 249.01, 2, 0)
	MovementLoopAddLocation(NPC, -28.01, -9.13, 249.93, 2, 0)
	MovementLoopAddLocation(NPC, -26.39, -9.10, 251.87, 2, 0)
	MovementLoopAddLocation(NPC, -26.15, -9.28, 253.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.95, -9.69, 254.03, 2, 0)
	MovementLoopAddLocation(NPC, -28.00, -10.09, 254.80, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.10, -9.67, 253.75, 2, 0)
	MovementLoopAddLocation(NPC, -25.00, -7.95, 234.80, 2, math.random(10, 20))
end

