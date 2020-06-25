--[[
	Script Name		:	rifter_bleeder7.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder7.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:34:42 PM
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
	MovementLoopAddLocation(NPC, -173.74, 1.17, -116.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.22, -0.02, -118.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.77, 1.17, -122.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.07, 1.17, -123.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.95, 1.17, -117.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.83, 1.17, -120.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.97, 1.17, -117.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.78, 1.17, -116.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.79, 1.17, -118.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.43, 1.17, -120.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.76, 1.17, -126.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.58, 1.17, -127.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.52, 1.17, -125.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.52, 1.17, -121.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.63, 1.17, -120.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.77, 1.17, -119.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.1, 1.17, -124.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.49, 1.17, -127.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -179.34, 1.17, -119.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.49, 1.17, -127.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.1, 1.17, -124.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.77, 1.17, -119.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.63, 1.17, -120.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.52, 1.17, -121.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.52, 1.17, -125.01, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.58, 1.17, -127.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.76, 1.17, -126.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.43, 1.17, -120.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.79, 1.17, -118.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.78, 1.17, -116.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.97, 1.17, -117.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.83, 1.17, -120.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.95, 1.17, -117.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -172.07, 1.17, -123.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.77, 1.17, -122.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.22, -0.02, -118.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.74, 1.17, -116.58, 2, math.random(0,10))
end


