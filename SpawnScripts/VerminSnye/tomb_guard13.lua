--[[
	Script Name		:	tomb_guard13.lua
	Script Purpose	:	Waypoint Path for tomb_guard13.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 05:26:59 PM
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
	MovementLoopAddLocation(NPC, 217.67, -6.91, -43.16, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 220.71, -6.97, -41.04, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.59, -6.92, -42.25, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.11, -6.97, -38.93, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 214.19, -6.94, -42.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.06, -6.91, -42.16, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 220.13, -6.96, -39.72, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.3, -6.97, -38.36, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.95, -6.94, -41.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.38, -6.96, -43.76, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.15, -6.94, -41.31, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.15, -6.89, -42.2, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.95, -6.89, -43.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.96, -6.94, -40.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 220.85, -6.97, -40.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.96, -6.94, -40.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.95, -6.89, -43.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.15, -6.89, -42.2, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.15, -6.94, -41.31, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.38, -6.96, -43.76, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.95, -6.94, -41.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.3, -6.97, -38.36, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 220.13, -6.96, -39.72, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.06, -6.91, -42.16, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 214.19, -6.94, -42.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.11, -6.97, -38.93, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.59, -6.92, -42.25, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 220.71, -6.97, -41.04, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.67, -6.91, -43.16, 2, math.random(0,7))
end


