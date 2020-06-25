--[[
	Script Name		:	rifter_bleeder3.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder3.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:21:40 PM
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
	MovementLoopAddLocation(NPC, -172.57, 1.17, -120.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.23, 1.17, -115.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.87, 1.17, -126.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.99, 1.17, -126.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.9, 1.17, -127.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.67, 1.17, -125.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.62, 1.17, -123.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.84, 1.17, -124.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.41, 1.17, -126.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.05, 1.17, -116.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.28, 1.17, -116.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.76, 1.17, -117.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.62, 1.17, -118.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.41, 1.17, -115.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.85, 1.17, -122.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.18, 1.17, -122.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.62, 1.17, -121.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.1, 1.17, -120.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.18, 1.17, -118.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.14, 1.17, -118.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.18, 1.17, -118.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.1, 1.17, -120.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.62, 1.17, -121.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.18, 1.17, -122.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.85, 1.17, -122.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.41, 1.17, -115.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.62, 1.17, -118.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.76, 1.17, -117.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.28, 1.17, -116.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.05, 1.17, -116.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.41, 1.17, -126.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.84, 1.17, -124.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.62, 1.17, -123.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.67, 1.17, -125.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.9, 1.17, -127.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.99, 1.17, -126.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.87, 1.17, -126.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.23, 1.17, -115.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.57, 1.17, -120.71, 2, math.random(0,10))
end


