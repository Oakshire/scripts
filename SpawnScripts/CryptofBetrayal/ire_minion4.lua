--[[
	Script Name		:	ire_minion4.lua
	Script Purpose	:	Waypoint Path for ire_minion4.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 10:15:45 PM
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
	MovementLoopAddLocation(NPC, 123.32, 6.88, -47.92, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 122.12, 7.24, -45.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.9, -43.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.09, 7.04, -47.22, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.41, 6.92, -44.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 121.01, 6.91, -47.51, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.78, 6.84, -51.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.54, 6.84, -49.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.31, 6.91, -47.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 124.05, 6.88, -47.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.73, 6.93, -46.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.9, -43.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.89, 7.02, -44.98, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.63, 6.88, -49.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.35, 6.86, -50.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.63, 6.88, -49.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.89, 7.02, -44.98, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.9, -43.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.73, 6.93, -46.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 124.05, 6.88, -47.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.31, 6.91, -47.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.54, 6.84, -49.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.78, 6.84, -51.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 121.01, 6.91, -47.51, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.41, 6.92, -44.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.09, 7.04, -47.22, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.9, -43.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 122.12, 7.24, -45.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.32, 6.88, -47.92, 2, math.random(0,20))
end


