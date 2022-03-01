--[[
	Script Name		:	tortured_essence.lua
	Script Purpose	:	Waypoint Path for tortured_essence.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 03:08:08 PM
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
	MovementLoopAddLocation(NPC, 146.54, 6.99, -12.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.03, 6.99, -3.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.14, 6.99, -3.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.85, 7.72, -10.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.18, 6.99, -8.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.85, 6.99, -16.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.69, 7.74, -15.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.08, 6.99, -21.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.61, 6.99, -21.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.9, 6.99, -20.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.07, 6.99, -6.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.42, 6.99, -6.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.13, 6.99, 4.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.87, 7.38, 8.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.95, 8.25, 8.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.64, 6.99, 9.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.23, 6.99, -22.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.44, 6.99, -21.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.23, 6.99, -22.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.64, 6.99, 9.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.95, 8.25, 8.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.87, 7.38, 8.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.13, 6.99, 4.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.42, 6.99, -6.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.07, 6.99, -6.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.9, 6.99, -20.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.61, 6.99, -21.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.08, 6.99, -21.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.69, 7.74, -15.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.85, 6.99, -16.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.18, 6.99, -8.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.85, 7.72, -10.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.14, 6.99, -3.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.03, 6.99, -3.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.54, 6.99, -12.89, 2, math.random(0,5))
end


