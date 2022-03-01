--[[
	Script Name		:	rifter_bleeder19.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder19.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:39:35 AM
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
	MovementLoopAddLocation(NPC, -197.92, -0.39, -124.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.68, -0.16, -134.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -189.18, -0.05, -131.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.38, 0, -135.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.15, 0, -130.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.7, 0, -135.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.66, 0, -130.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.52, 0, -135.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.34, 0.57, -130.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.18, 0, -135.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.19, 0, -135.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -167.63, 0, -130.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.76, 0, -130.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.62, -0.39, -132.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.08, 0.44, -130.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.16, 0, -134.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.8, -0.21, -131.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.67, 0, -126.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.15, -0.39, -127.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.45, -0.39, -126.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.88, -0.39, -122.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.61, -0.39, -122.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.88, -0.39, -122.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.45, -0.39, -126.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.15, -0.39, -127.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.67, 0, -126.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.8, -0.21, -131.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.16, 0, -134.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.08, 0.44, -130.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.62, -0.39, -132.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.76, 0, -130.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -167.63, 0, -130.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.19, 0, -135.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.18, 0, -135.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.34, 0.57, -130.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.52, 0, -135.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.66, 0, -130.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.7, 0, -135.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.15, 0, -130.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.38, 0, -135.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -189.18, -0.05, -131.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.68, -0.16, -134.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.92, -0.39, -124.34, 2, math.random(0,5))
end


