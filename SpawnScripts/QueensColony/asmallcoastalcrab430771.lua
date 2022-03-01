--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430771.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430771.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:01 
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
	MovementLoopAddLocation(NPC, -18.11, -7.83, 241.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.20, -7.83, 239.75, 2, 0)
	MovementLoopAddLocation(NPC, -22.97, -7.97, 236.55, 2, 0)
	MovementLoopAddLocation(NPC, -23.76, -7.97, 235.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.93, -7.97, 234.45, 2, 0)
	MovementLoopAddLocation(NPC, -39.32, -8.35, 232.29, 2, 0)
	MovementLoopAddLocation(NPC, -43.18, -8.93, 232.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.16, -8.41, 230.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.62, -8.46, 231.85, 2, 0)
	MovementLoopAddLocation(NPC, -38.01, -8.41, 233.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.89, -7.83, 235.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.52, -7.18, 232.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.10, -7.86, 233.85, 2, 0)
	MovementLoopAddLocation(NPC, -26.41, -7.91, 232.99, 2, 0)
	MovementLoopAddLocation(NPC, -27.62, -7.92, 231.93, 2, 0)
	MovementLoopAddLocation(NPC, -29.52, -8.00, 231.80, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.07, -7.96, 232.33, 2, 0)
	MovementLoopAddLocation(NPC, -21.97, -8.12, 251.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.11, -9.87, 250.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.55, -9.75, 250.88, 2, 0)
end

