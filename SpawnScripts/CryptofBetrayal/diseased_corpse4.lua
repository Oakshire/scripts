--[[
	Script Name		:	diseased_corpse4.lua
	Script Purpose	:	Waypoint Path for diseased_corpse4.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 02:13:44 AM
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
	MovementLoopAddLocation(NPC, 112.64, 7, -111.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.67, 7, -111.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.07, 7, -111.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.5, 7, -126.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.16, 7, -125.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.54, 7, -123.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.78, 7.05, -127.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.07, 7, -126.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.11, 7, -126.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.41, 7, -123.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.82, 7, -123.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.1, 7, -115.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.01, 7, -115.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.1, 7, -119, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 126.12, 7, -120.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.28, 7, -120.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.17, 7, -110.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 115.06, 7, -110.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.87, 7, -120.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.14, 7, -117.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.21, 7, -117.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.03, 7, -114.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.78, 7, -110.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.48, 7, -126.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.22, 7, -127.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.67, 7, -123.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.44, 7, -127.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.76, 7, -124.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.62, 7, -110.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.88, 7, -116.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.01, 7, -120.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.72, 7, -110.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.01, 7, -120.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.88, 7, -116.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 116.62, 7, -110.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.76, 7, -124.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.44, 7, -127.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.67, 7, -123.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.22, 7, -127.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.48, 7, -126.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.78, 7, -110.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.03, 7, -114.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.21, 7, -117.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.14, 7, -117.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.87, 7, -120.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 115.06, 7, -110.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.17, 7, -110.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.28, 7, -120.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 126.12, 7, -120.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 122.1, 7, -119, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 124.01, 7, -115.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.1, 7, -115.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 114.82, 7, -123.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 113.41, 7, -123.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.11, 7, -126.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.07, 7, -126.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.78, 7.05, -127.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.54, 7, -123.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.16, 7, -125.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.5, 7, -126.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.07, 7, -111.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 125.67, 7, -111.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.64, 7, -111.18, 2, math.random(0,5))
end


