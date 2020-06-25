--[[
	Script Name		:	ire_minion13.lua
	Script Purpose	:	Waypoint Path for ire_minion13.lua
	Script Author	:	Auto Generated
	Script Date		:	06/08/2020 01:00:30 PM
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
	MovementLoopAddLocation(NPC, -30.4, 6.92, -24.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.63, 6.9, -18.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -35, 6.86, -21.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.1, 6.86, -20.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.43, 7.14, -19.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.74, 6.86, -23.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.2, 6.86, -24.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.18, 6.86, -22.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.59, 6.86, -22.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.78, 7.13, -19.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.01, 6.86, -22.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.78, 7.13, -19.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.59, 6.86, -22.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.18, 6.86, -22.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.2, 6.86, -24.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.74, 6.86, -23.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.43, 7.14, -19.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.1, 6.86, -20.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -35, 6.86, -21.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.63, 6.9, -18.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.4, 6.92, -24.22, 2, math.random(0,5))
end


