--[[
	Script Name		:	tortured_essence.lua
	Script Purpose	:	Waypoint Path for tortured_essence.lua
	Script Author	:	Auto Generated
	Script Date		:	06/02/2020 07:31:01 PM
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
	MovementLoopAddLocation(NPC, 117.2, 6.99, 14.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.14, 6.99, 14.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.12, 6.99, 10.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.92, 7.74, 7.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.23, 7.02, 0.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.67, 6.99, 14.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.74, 6.99, 2.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.27, 6.99, 14.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.48, 6.99, 3.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.95, 6.99, 3.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.37, 6.99, 13.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.95, 6.99, 3.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.48, 6.99, 3.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.27, 6.99, 14.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.74, 6.99, 2.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.67, 6.99, 14.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.23, 7.02, 0.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.92, 7.74, 7.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.12, 6.99, 10.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.14, 6.99, 14.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.2, 6.99, 14.4, 2, math.random(0,5))
end


