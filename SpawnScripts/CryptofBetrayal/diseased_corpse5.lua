--[[
	Script Name		:	diseased_corpse5.lua
	Script Purpose	:	Waypoint Path for diseased_corpse5.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 02:33:22 AM
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
	MovementLoopAddLocation(NPC, 116.53, 7, -111.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.75, 7, -125.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.61, 7, -125.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.82, 7, -125.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.98, 7, -111.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.04, 7, -113.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.69, 7, -116.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.05, 7, -119.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.61, 7, -111.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119, 7, -110.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.99, 7, -115.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.14, 7, -118.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.21, 7, -114.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.54, 7, -116.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.04, 7, -112.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.65, 7, -118.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.06, 7, -112.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.02, 7, -125.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.95, 7, -125.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.59, 7, -125.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.14, 7, -113.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.72, 7, -116.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.27, 7, -111.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.72, 7, -116.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.14, 7, -113.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.59, 7, -125.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.95, 7, -125.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.02, 7, -125.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.06, 7, -112.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.65, 7, -118.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.04, 7, -112.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.54, 7, -116.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.21, 7, -114.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.14, 7, -118.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.99, 7, -115.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119, 7, -110.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.61, 7, -111.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.05, 7, -119.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.69, 7, -116.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.04, 7, -113.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.98, 7, -111.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.82, 7, -125.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.61, 7, -125.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.75, 7, -125.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.53, 7, -111.63, 2, math.random(0,5))
end


