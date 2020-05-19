--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430770.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430770.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:58 
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
	MovementLoopAddLocation(NPC, -43.16, -8.28, 230.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.08, -8.70, 233.82, 2, 0)
	MovementLoopAddLocation(NPC, -38.19, -8.95, 237.70, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.49, -8.88, 240.14, 2, 0)
	MovementLoopAddLocation(NPC, -26.58, -8.66, 249.70, 2, 0)
	MovementLoopAddLocation(NPC, -23.23, -8.38, 251.90, 2, 0)
	MovementLoopAddLocation(NPC, -20.99, -8.36, 253.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.53, -7.88, 243.40, 2, 0)
	MovementLoopAddLocation(NPC, -28.11, -7.88, 239.98, 2, 0)
	MovementLoopAddLocation(NPC, -30.23, -7.99, 236.20, 2, 0)
	MovementLoopAddLocation(NPC, -31.84, -7.98, 232.45, 2, 0)
	MovementLoopAddLocation(NPC, -35.02, -8.01, 227.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.82, -7.84, 231.87, 2, math.random(10, 20))
end


