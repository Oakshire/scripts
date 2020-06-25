--[[
	Script Name		:	crawler_hatchling11.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling11.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:12:26 PM
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
	MovementLoopAddLocation(NPC, -110.36, -0.08, -114.52, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -117.78, -0.11, -116.52, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.84, 0.58, -120.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.84, -0.11, -127.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.81, -0.16, -135.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.38, -0.15, -137.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -154.56, -0.1, -136.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.56, -0.16, -132.68, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -156.72, 0.37, -107.92, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.47, -0.07, -95.19, 2, math.random(0,20))
end


