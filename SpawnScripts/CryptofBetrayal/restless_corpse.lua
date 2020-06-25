--[[
	Script Name		:	restless_corpse.lua
	Script Purpose	:	Waypoint Path for restless_corpse.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 02:33:10 AM
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
	MovementLoopAddLocation(NPC, 113.93, 7, -111.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.5, 7, -113.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.98, 7, -118.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.66, 7, -119.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.8, 7, -119.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.82, 7, -111.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.32, 7, -111.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.62, 7, -117.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.48, 7, -116.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.31, 7, -113.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.13, 7, -109.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.14, 7, -126.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.34, 7, -120.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.85, 7, -114.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.14, 7, -114.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.1, 7, -124.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.82, 7, -126.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.35, 7, -126.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.31, 7, -112.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.35, 7, -126.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.82, 7, -126.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.1, 7, -124.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.14, 7, -114.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.85, 7, -114.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.34, 7, -120.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.14, 7, -126.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.13, 7, -109.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.31, 7, -113.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.48, 7, -116.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.62, 7, -117.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.32, 7, -111.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.82, 7, -111.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.8, 7, -119.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.66, 7, -119.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.98, 7, -118.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.5, 7, -113.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.93, 7, -111.18, 2, math.random(0,5))
end


