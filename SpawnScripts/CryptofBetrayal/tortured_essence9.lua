--[[
	Script Name		:	tortured_essence9.lua
	Script Purpose	:	Waypoint Path for tortured_essence9.lua
	Script Author	:	Auto Generated
	Script Date		:	06/02/2020 06:16:36 PM
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
	MovementLoopAddLocation(NPC, 119.83, 6.99, 17.06, 2, 20)
	MovementLoopAddLocation(NPC, 120.43, 6.99, 5.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.62, 7.12, 4.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 110.45, 6.85, 5.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 99.31, 7.37, 15.04, 2, 15)
	MovementLoopAddLocation(NPC, 110.45, 6.85, 5.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.62, 7.12, 4.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.43, 6.99, 5.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.83, 6.99, 17.06, 2, 20)
end


