--[[
	Script Name		:	rifter_bleeder20.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder20.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:43:07 AM
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
	MovementLoopAddLocation(NPC, -194.58, -0.39, -129.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.45, -0.39, -120.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.43, 0, -115.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.75, 0, -115.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.08, -0.39, -119.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -212.26, 0, -124.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205, -0.39, -123.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.71, -0.39, -127.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -211.08, -0.18, -129.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -211.61, 0, -134.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.91, 0, -135.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.79, -0.39, -131.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.75, 0, -135.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.19, -0.39, -130.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.1, -0.31, -131.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -189.99, -0.06, -134.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.66, -0.06, -134.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.38, -0.1, -134.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.61, 0, -134.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.61, 0, -134.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.75, 0.57, -126.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.17, 0.86, -119.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.23, 1.17, -119.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.62, 1.17, -118.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.37, 1.17, -121.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.2, 1.17, -120.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.92, 1.17, -121.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.08, 1.17, -124.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.59, 1.17, -124.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.79, -0.07, -131.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.59, 1.17, -124.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.08, 1.17, -124.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.92, 1.17, -121.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.2, 1.17, -120.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.37, 1.17, -121.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.62, 1.17, -118.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.23, 1.17, -119.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.17, 0.86, -119.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -170.75, 0.57, -126.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.61, 0, -134.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.61, 0, -134.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.38, -0.1, -134.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.66, -0.06, -134.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -189.99, -0.06, -134.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.1, -0.31, -131.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.19, -0.39, -130.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.75, 0, -135.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.79, -0.39, -131.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.91, 0, -135.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -211.61, 0, -134.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -211.08, -0.18, -129.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.71, -0.39, -127.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205, -0.39, -123.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -212.26, 0, -124.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.08, -0.39, -119.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.75, 0, -115.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.43, 0, -115.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.45, -0.39, -120.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.58, -0.39, -129.39, 2, math.random(0,5))
end


