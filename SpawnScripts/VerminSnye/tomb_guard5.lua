--[[
	Script Name		:	tomb_guard5.lua
	Script Purpose	:	Waypoint Path for tomb_guard5.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:50:53 AM
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
	MovementLoopAddLocation(NPC, 68, 0.23, -15.84, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.43, -0.03, -20.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.29, 0.06, -16.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.1, -0.03, -18.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.33, -0.09, -19.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.13, 0.21, -15.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.65, 0.04, -20.28, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.24, 0.04, -17.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.44, 0.02, -17.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.41, 0, -19.66, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.96, -0.03, -19.04, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.48, -0.07, -19.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.37, 0.25, -15.82, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.53, 0.3, -15.26, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.53, -0.01, -17.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.53, 0.3, -15.26, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.37, 0.25, -15.82, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.48, -0.07, -19.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.96, -0.03, -19.04, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.41, 0, -19.66, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.44, 0.02, -17.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.24, 0.04, -17.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68.65, 0.04, -20.28, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.13, 0.21, -15.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 66.33, -0.09, -19.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 71.1, -0.03, -18.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 70.29, 0.06, -16.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 65.43, -0.03, -20.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 68, 0.23, -15.84, 2, math.random(0,15))
end


