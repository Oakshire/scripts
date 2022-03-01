--[[
	Script Name		:	ire_minion5.lua
	Script Purpose	:	Waypoint Path for ire_minion5.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 10:15:57 PM
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
	MovementLoopAddLocation(NPC, 119.77, 6.91, -43.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.4, 6.92, -46.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.33, 6.93, -45.1, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.01, 6.85, -48.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 121.47, 6.91, -47.31, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.37, 6.88, -49.66, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.72, 6.86, -49.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.83, 6.92, -47.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.9, -43.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 122.68, 7.24, -45.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.04, 6.84, -48.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.89, 6.93, -46.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.83, 7.23, -47.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.89, 6.93, -46.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.04, 6.84, -48.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 122.68, 7.24, -45.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.9, -43.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.83, 6.92, -47.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.72, 6.86, -49.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.37, 6.88, -49.66, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 121.47, 6.91, -47.31, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.01, 6.85, -48.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.33, 6.93, -45.1, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.4, 6.92, -46.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.77, 6.91, -43.71, 2, math.random(0,20))
end


