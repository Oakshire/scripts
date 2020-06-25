--[[
	Script Name		:	tortured_essence4.lua
	Script Purpose	:	Waypoint Path for tortured_essence4.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 03:43:10 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 142.89, 6.99, -25.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.52, 6.99, -28.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.61, 6.99, -42.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.76, 6.99, -44.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.17, 6.99, -45.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.93, 6.99, -41.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.81, 7.62, -35.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.76, 6.99, -33.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.55, 6.99, -30.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.52, 7.74, -35.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.13, 6.99, -45.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.9, 6.99, -36.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.1, 6.99, -25.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.45, 6.99, -45.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.32, 7.74, -37.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.32, 6.99, -38.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.32, 7.74, -37.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.45, 6.99, -45.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.1, 6.99, -25.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.9, 6.99, -36.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.13, 6.99, -45.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.52, 7.74, -35.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.55, 6.99, -30.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.76, 6.99, -33.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.81, 7.62, -35.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.93, 6.99, -41.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.17, 6.99, -45.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.76, 6.99, -44.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.61, 6.99, -42.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.52, 6.99, -28.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.89, 6.99, -25.99, 2, math.random(0,5))
end


