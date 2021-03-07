--[[
	Script Name		:	tomb_guard4.lua
	Script Purpose	:	Waypoint Path for tomb_guard4.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:50:50 AM
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
	MovementLoopAddLocation(NPC, 70.57, 0, -20.2, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.99, 0.06, -16.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.53, -0.03, -16.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.81, -0.04, -20.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.77, 0.03, -17.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.31, -0.09, -18.34, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.27, 0, -19.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.01, 0.19, -15.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.15, 0.12, -15.33, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.02, 0.01, -20.35, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.37, -0.03, -17.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.56, 0.05, -17.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.32, -0.03, -20.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.76, 0.26, -15.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.32, -0.03, -20.63, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.56, 0.05, -17.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.37, -0.03, -17.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.02, 0.01, -20.35, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.15, 0.12, -15.33, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 69.01, 0.19, -15.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.27, 0, -19.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.31, -0.09, -18.34, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.77, 0.03, -17.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.81, -0.04, -20.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 67.53, -0.03, -16.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.99, 0.06, -16.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.57, 0, -20.2, 2, math.random(0,15))
end


