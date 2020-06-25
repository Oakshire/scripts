--[[
	Script Name		:	tortured_essence8.lua
	Script Purpose	:	Waypoint Path for tortured_essence8.lua
	Script Author	:	Auto Generated
	Script Date		:	06/02/2020 03:41:20 PM
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
	MovementLoopAddLocation(NPC, 142.91, 6.99, -21.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.88, 7.68, -15.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.82, 6.99, -21.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.82, 6.99, -18.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.86, 6.99, -6.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.14, 6.99, -6.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.22, 6.99, -18.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.77, 6.99, -18.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.22, 6.99, -18.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.14, 6.99, -6.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.86, 6.99, -6.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.82, 6.99, -18.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.82, 6.99, -21.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.88, 7.68, -15.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.91, 6.99, -21.93, 2, math.random(0,5))
end


