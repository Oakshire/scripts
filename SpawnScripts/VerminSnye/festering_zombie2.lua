--[[
	Script Name		:	festering_zombie2.lua
	Script Purpose	:	Waypoint Path for festering_zombie2.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:29:51 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 66.59, -0.01, -129.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.02, -0.02, -132.48, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.08, 0.05, -126.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.18, -0.16, -128.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.47, 0, -128.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 64.74, 0.05, -132.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.6, 0.05, -132.68, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.41, 0.05, -132.6, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.02, -0.24, -129.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.57, 0, -128.23, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.25, 0, -126.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.14, 0.39, -126.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.08, -0.02, -127.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.95, -0.15, -130.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.08, -0.05, -129.11, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.91, -0.14, -128.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.19, 0.03, -132.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.94, 0.1, -126.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.19, 0, -129.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.15, -0.24, -129.6, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.19, 0, -129.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.94, 0.1, -126.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.19, 0.03, -132.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.91, -0.14, -128.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.08, -0.05, -129.11, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.95, -0.15, -130.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.08, -0.02, -127.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.14, 0.39, -126.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.25, 0, -126.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.57, 0, -128.23, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.02, -0.24, -129.65, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.41, 0.05, -132.6, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.6, 0.05, -132.68, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 64.74, 0.05, -132.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.47, 0, -128.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.18, -0.16, -128.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.08, 0.05, -126.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.02, -0.02, -132.48, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.59, -0.01, -129.77, 2, math.random(0,15))
end


