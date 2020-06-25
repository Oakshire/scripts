--[[
	Script Name		:	rifter_bleeder5_1.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder5_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:32:48 PM
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
	MovementLoopAddLocation(NPC, -175.52, 1.17, -118.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.08, 1.17, -114.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.92, 1.17, -123.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.92, 1.17, -126.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.36, 1.17, -118.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.04, 1.17, -115.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.36, 1.17, -117, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.69, 1.17, -120.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.85, 1.17, -125.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.78, 1.17, -126.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.69, 1.17, -123.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.43, 1.17, -119.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.88, 1.17, -124.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.21, 0.11, -113.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.89, 1.17, -118.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.23, 1.17, -114.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.5, 1.17, -123.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.1, 1.17, -121.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.5, 1.17, -123.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.23, 1.17, -114.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.89, 1.17, -118.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.21, 0.11, -113.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.88, 1.17, -124.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.43, 1.17, -119.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.69, 1.17, -123.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.78, 1.17, -126.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.85, 1.17, -125.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.69, 1.17, -120.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.36, 1.17, -117, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.04, 1.17, -115.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -180.36, 1.17, -118.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.92, 1.17, -126.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.92, 1.17, -123.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.08, 1.17, -114.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.52, 1.17, -118.5, 2, math.random(0,10))
end


