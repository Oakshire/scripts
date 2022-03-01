--[[
	Script Name		:	tortured_essence3.lua
	Script Purpose	:	Waypoint Path for tortured_essence3.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 03:42:59 PM
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
	MovementLoopAddLocation(NPC, 156.31, 6.99, -26.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.32, 6.99, -27.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.45, 6.99, -41.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.48, 6.99, -35.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.52, 6.99, -26.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.8, 6.99, -30.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 144.76, 7.45, -33.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.52, 6.99, -38.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.32, 7.73, -37.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.04, 6.99, -44.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.31, 7.06, -35.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 147.69, 6.99, -26.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.6, 6.99, -34.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 144.5, 6.99, -44.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.95, 6.99, -36.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.26, 6.99, -44.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.38, 6.99, -41.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.26, 6.99, -44.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.95, 6.99, -36.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 144.5, 6.99, -44.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.6, 6.99, -34.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 147.69, 6.99, -26.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.31, 7.06, -35.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.04, 6.99, -44.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.32, 7.73, -37.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.52, 6.99, -38.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 144.76, 7.45, -33.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.8, 6.99, -30.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.52, 6.99, -26.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.48, 6.99, -35.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.45, 6.99, -41.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.32, 6.99, -27.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.31, 6.99, -26.51, 2, math.random(0,5))
end


