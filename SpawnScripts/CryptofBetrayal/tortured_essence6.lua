--[[
	Script Name		:	tortured_essence6.lua
	Script Purpose	:	Waypoint Path for tortured_essence6.lua
	Script Author	:	Auto Generated
	Script Date		:	06/02/2020 03:36:08 PM
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
	MovementLoopAddLocation(NPC, 155.33, 6.99, 16.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.1, 6.99, 0.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 147.99, 7.74, 7.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.28, 6.99, 16.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.67, 6.99, 13.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.51, 6.99, 1.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.23, 6.99, 1.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.34, 6.99, -10.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.05, 7.74, -11.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.08, 6.99, -10.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.82, 6.99, -21.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.08, 6.99, -10.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.05, 7.74, -11.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.34, 6.99, -10.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.23, 6.99, 1.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.51, 6.99, 1.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.67, 6.99, 13.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.28, 6.99, 16.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 147.99, 7.74, 7.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.1, 6.99, 0.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.33, 6.99, 16.33, 2, math.random(0,5))
end


