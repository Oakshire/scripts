--[[
	Script Name		:	tomb_guard14.lua
	Script Purpose	:	Waypoint Path for tomb_guard14.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 05:27:03 PM
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
	MovementLoopAddLocation(NPC, 219.48, -6.91, -42.99, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.49, -6.86, -44.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.63, -6.95, -38.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.96, -6.95, -38.9, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 215.28, -6.97, -39.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 215.69, -6.96, -40.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.55, -6.95, -39.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 215.14, -6.97, -43.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.01, -6.91, -41.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.6, -6.95, -43.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.25, -6.92, -43.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.97, -6.9, -41.81, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.74, -6.92, -41.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.24, -6.89, -37.96, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.74, -6.92, -41.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.97, -6.9, -41.81, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.25, -6.92, -43.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.6, -6.95, -43.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 217.01, -6.91, -41.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 215.14, -6.97, -43.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.55, -6.95, -39.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 215.69, -6.96, -40.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 215.28, -6.97, -39.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 216.96, -6.95, -38.9, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.63, -6.95, -38.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 218.49, -6.86, -44.24, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 219.48, -6.91, -42.99, 2, math.random(0,7))
end


