--[[
	Script Name		:	festering_zombie4.lua
	Script Purpose	:	Waypoint Path for festering_zombie4.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:44:33 AM
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
	MovementLoopAddLocation(NPC, 77.02, 0.01, -9.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.54, 0, -9.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.2, 0, -10.99, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 75.86, 0, -11.36, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.72, -0.03, -23.8, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.72, 0.04, -23.29, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.77, 0, -22.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 79.24, 0.03, -13.79, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.88, 0.07, -14.46, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.1, -0.01, -21.94, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.04, 0, -18.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.57, 0, -10.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.04, 0, -18.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.1, -0.01, -21.94, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.88, 0.07, -14.46, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 79.24, 0.03, -13.79, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.77, 0, -22.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.72, 0.04, -23.29, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.72, -0.03, -23.8, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 75.86, 0, -11.36, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.2, 0, -10.99, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 78.54, 0, -9.83, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 77.02, 0.01, -9.64, 2, math.random(0,7))
end


