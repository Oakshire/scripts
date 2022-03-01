--[[
	Script Name		:	rotten.lua
	Script Purpose	:	Waypoint Path for rotten.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 02:35:26 AM
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
	MovementLoopAddLocation(NPC, 115.41, 7, -111.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.13, 7, -110.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.46, 7, -115.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.04, 7, -116.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.82, 7, -118.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.61, 7, -119.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.35, 7, -119.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.17, 7, -126.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.49, 7, -126.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.46, 7, -126.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.14, 7, -116.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.1, 7, -111.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.86, 7, -109.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.22, 7, -116.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.94, 7, -110.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.85, 7, -113.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.6, 7, -117, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.99, 7, -116.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.16, 7, -117.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.84, 7, -127.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.16, 7, -117.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.99, 7, -116.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.6, 7, -117, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.85, 7, -113.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.94, 7, -110.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.22, 7, -116.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.86, 7, -109.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.1, 7, -111.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.14, 7, -116.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.46, 7, -126.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.49, 7, -126.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.17, 7, -126.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.35, 7, -119.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.61, 7, -119.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.82, 7, -118.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.04, 7, -116.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.46, 7, -115.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.13, 7, -110.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 115.41, 7, -111.92, 2, math.random(0,5))
end


