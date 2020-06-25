--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430792.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430792.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:12 
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
	MovementLoopAddLocation(NPC, -15.43, -7.86, 241.00, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.82, -7.15, 241.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.43, -8.17, 249.57, 2, 0)
	MovementLoopAddLocation(NPC, -25.05, -8.73, 251.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.75, -8.70, 250.85, 2, 0)
	MovementLoopAddLocation(NPC, -41.28, -9.14, 235.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.40, -9.99, 236.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.94, -9.67, 236.89, 2, 0)
	MovementLoopAddLocation(NPC, -41.44, -9.27, 236.19, 2, 0)
	MovementLoopAddLocation(NPC, -33.03, -7.96, 227.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.77, -8.36, 231.97, 2, 0)
	MovementLoopAddLocation(NPC, -43.71, -9.43, 234.96, 2, 0)
	MovementLoopAddLocation(NPC, -45.25, -9.97, 236.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.98, -9.51, 234.32, 2, 0)
	MovementLoopAddLocation(NPC, -44.20, -9.09, 232.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.36, -8.46, 232.06, 2, 0)
	MovementLoopAddLocation(NPC, -24.17, -7.91, 238.13, 2, 0)
	MovementLoopAddLocation(NPC, -22.90, -7.91, 238.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.00, -7.85, 239.99, 2, 0)
	MovementLoopAddLocation(NPC, -31.43, -8.93, 244.95, 2, math.random(10, 20))
end

