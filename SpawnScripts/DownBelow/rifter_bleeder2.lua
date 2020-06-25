--[[
	Script Name		:	rifter_bleeder2.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder2.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:17:56 PM
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
	MovementLoopAddLocation(NPC, -173.18, 1.17, -122.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.23, 1.17, -115.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.78, 1.17, -114.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.15, 1.17, -126.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.21, 1.17, -115.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.67, 1.17, -118.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.27, 1.17, -123.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.72, 1.47, -125.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.17, 1.17, -126.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.56, 1.17, -117.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.12, 1.16, -116.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.72, 1.15, -119.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.5, 1.17, -125.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.28, 1.17, -122.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.82, 1.17, -119.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.54, 1.17, -114.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -174.82, 1.17, -119.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.28, 1.17, -122.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -175.5, 1.17, -125.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170.72, 1.15, -119.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.12, 1.16, -116.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.56, 1.17, -117.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.17, 1.17, -126.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.72, 1.47, -125.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.27, 1.17, -123.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.67, 1.17, -118.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.21, 1.17, -115.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.15, 1.17, -126.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.78, 1.17, -114.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.23, 1.17, -115.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.18, 1.17, -122.86, 2, math.random(0,10))
end


