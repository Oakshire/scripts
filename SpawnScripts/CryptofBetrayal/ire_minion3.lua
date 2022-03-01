--[[
	Script Name		:	ire_minion3.lua
	Script Purpose	:	Waypoint Path for ire_minion3.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 10:15:35 PM
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
	MovementLoopAddLocation(NPC, 119.24, 7, -50.25, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.14, 6.9, -43.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 124.72, 7.05, -47.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.65, 6.94, -45.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.11, 7, -47.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.89, 6.93, -45.25, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.76, 6.93, -46.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.85, -49.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 117.74, 6.82, -50.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.01, 7.89, -44.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.04, 6.84, -48.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 123.01, 7.89, -44.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 117.74, 6.82, -50.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.22, 6.85, -49.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.76, 6.93, -46.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.89, 6.93, -45.25, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 116.11, 7, -47.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 118.65, 6.94, -45.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 124.72, 7.05, -47.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 120.14, 6.9, -43.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 119.24, 7, -50.25, 2, math.random(0,20))
end


