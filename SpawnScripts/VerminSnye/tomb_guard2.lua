--[[
	Script Name		:	tomb_guard2.lua
	Script Purpose	:	Waypoint Path for tomb_guard2.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:30:06 AM
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
	MovementLoopAddLocation(NPC, 65.12, 0, -126.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.12, -0.04, -128.56, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.12, 0.04, -127.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.29, 0.04, -132.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.08, 0, -132.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.08, -0.17, -130.66, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.26, 0, -129.91, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 64.52, 0.04, -132.68, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.7, 0, -128.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.51, -0.14, -128.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.83, 0.1, -126.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.65, 0.04, -132.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.73, -0.15, -128.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.18, 0, -128.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 64.96, 0.02, -130.79, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.54, 0, -129.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.83, -0.15, -128.68, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.46, 0.03, -132.24, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.43, -0.23, -129.82, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.73, 0.05, -126.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.39, 0.03, -131.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.73, 0.05, -126.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.43, -0.23, -129.82, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.46, 0.03, -132.24, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.83, -0.15, -128.68, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.54, 0, -129.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 64.96, 0.02, -130.79, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.18, 0, -128.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.73, -0.15, -128.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.65, 0.04, -132.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.83, 0.1, -126.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.51, -0.14, -128.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.7, 0, -128.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 64.52, 0.04, -132.68, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.26, 0, -129.91, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.08, -0.17, -130.66, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.08, 0, -132.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.29, 0.04, -132.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.12, 0.04, -127.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.12, -0.04, -128.56, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.12, 0, -126.62, 2, math.random(0,15))
end


