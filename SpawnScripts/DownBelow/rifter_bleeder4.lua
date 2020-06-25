--[[
	Script Name		:	rifter_bleeder4.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder4.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:26:37 PM
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
	MovementLoopAddLocation(NPC, -169.22, 0.34, -118.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.1, 1.17, -123.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.76, 1.16, -126.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.74, 1.17, -126.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.46, 1.17, -114.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.55, 1.17, -126.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.12, 1.17, -126.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.62, 1.17, -123.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.19, 1.17, -123.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.88, 1.17, -118.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.42, 1.17, -115.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170, 1.17, -114.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.64, 1.17, -127.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.06, 1.17, -118.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.27, 1.17, -120.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.47, 1.17, -123.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.3, 1.17, -123.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.77, 1.17, -126.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.52, 1.17, -127.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.77, 1.17, -125.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.4, 1.17, -118.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.77, 1.17, -125.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -184.52, 1.17, -127.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.77, 1.17, -126.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.3, 1.17, -123.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -182.47, 1.17, -123.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.27, 1.17, -120.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.06, 1.17, -118.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -177.64, 1.17, -127.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -170, 1.17, -114.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -176.42, 1.17, -115.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -181.88, 1.17, -118.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -183.19, 1.17, -123.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.62, 1.17, -123.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -185.12, 1.17, -126.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -187.55, 1.17, -126.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -188.46, 1.17, -114.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -173.74, 1.17, -126.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -167.76, 1.16, -126.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -171.1, 1.17, -123.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -169.22, 0.34, -118.99, 2, math.random(0,10))
end


