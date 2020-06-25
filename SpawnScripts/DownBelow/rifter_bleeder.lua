--[[
	Script Name		:	rifter_bleeder.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:16:29 PM
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
	MovementLoopAddLocation(NPC, -167.95, 1.16, -126.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.47, 1.17, -126.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.46, 1.17, -115.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.08, 1.17, -117.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.7, 1.17, -125.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.88, 1.17, -124.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.04, 1.17, -115.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.68, 1.17, -114.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.57, 1.17, -118.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.87, 1.17, -119.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.04, 1.17, -122.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.55, 1.17, -116.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.36, 1.17, -124.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.04, 1.17, -121.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.36, 1.17, -124.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.55, 1.17, -116.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.04, 1.17, -122.3, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.87, 1.17, -119.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.57, 1.17, -118.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.68, 1.17, -114.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.04, 1.17, -115.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.88, 1.17, -124.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.7, 1.17, -125.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.08, 1.17, -117.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.46, 1.17, -115.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -178.47, 1.17, -126.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.95, 1.16, -126.56, 2, math.random(0,10))
end


