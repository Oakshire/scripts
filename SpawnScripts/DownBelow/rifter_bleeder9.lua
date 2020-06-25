--[[
	Script Name		:	rifter_bleeder9.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder9.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:43:48 AM
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
	MovementLoopAddLocation(NPC, -173.06, 1.17, -120.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.16, 1.17, -126.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.67, 1.17, -126.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.2, 1.17, -123.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.01, 1.17, -122.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.78, 1.17, -119.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.4, 1.17, -118.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.47, 1.17, -123.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.52, 0, -133.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -171.88, 0.71, -126.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.76, 1.17, -122.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.54, 1.17, -115.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.57, 1.17, -124.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.9, 1.17, -123.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.53, 1.17, -127.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.71, 1.17, -121.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.55, 1.17, -122.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -171.87, 1.17, -117.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.55, 1.17, -122.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.71, 1.17, -121.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.53, 1.17, -127.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.9, 1.17, -123.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.57, 1.17, -124.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.54, 1.17, -115.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.76, 1.17, -122.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -171.88, 0.71, -126.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.52, 0, -133.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.47, 1.17, -123.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.4, 1.17, -118.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.78, 1.17, -119.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.01, 1.17, -122.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.2, 1.17, -123.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.67, 1.17, -126.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.16, 1.17, -126.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.06, 1.17, -120.33, 2, math.random(0,5))
end


