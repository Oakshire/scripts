--[[
	Script Name		:	rifter_bleeder5.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder5.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:29:05 PM
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
	MovementLoopAddLocation(NPC, -187.38, 1.17, -116.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.63, 1.13, -126.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.33, 1.17, -126.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.84, 1.17, -122.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.38, 1.17, -123.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.69, 1.17, -121.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.16, 1.17, -126.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.34, 1.17, -126.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.64, 1.17, -123.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.9, 1.17, -118.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.96, 1.17, -122.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.36, 1.17, -114.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.97, 1.17, -127.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.02, 1.17, -127.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.9, 1.17, -124.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.35, 1.17, -120.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.69, 1.17, -119.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.19, 0.11, -113.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.69, 1.17, -119.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.35, 1.17, -120.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.9, 1.17, -124.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.02, 1.17, -127.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.97, 1.17, -127.4, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.36, 1.17, -114.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.96, 1.17, -122.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.9, 1.17, -118.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.64, 1.17, -123.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.34, 1.17, -126.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.16, 1.17, -126.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.69, 1.17, -121.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.38, 1.17, -123.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.84, 1.17, -122.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.33, 1.17, -126.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.63, 1.13, -126.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.38, 1.17, -116.97, 2, math.random(0,10))
end


