--[[
	Script Name		:	tomb_guard7.lua
	Script Purpose	:	Waypoint Path for tomb_guard7.lua
	Script Author	:	Devn00b
	Script Date		:	06/21/2020 03:06:57 PM
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
	MovementLoopAddLocation(NPC, 42.55, 0.09, -21.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.84, 0, -24.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.6, 0.08, -27.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.89, 0.06, -23.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 43.08, 0.06, -22.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.23, 0, -25.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.26, 0.02, -26.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 42.83, 0.06, -23.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.44, 0.12, -23.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.18, 0.02, -27.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.76, 0.05, -24.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 43.8, 0.1, -26.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 42.43, 0.16, -28.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 38.27, 0, -24.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 44.73, 0, -22.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.06, 0, -23.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 40.44, 0, -25.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.06, 0, -23.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 44.73, 0, -22.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 38.27, 0, -24.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 42.43, 0.16, -28.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 43.8, 0.1, -26.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.76, 0.05, -24.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.18, 0.02, -27.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.44, 0.12, -23.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 42.83, 0.06, -23.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.26, 0.02, -26.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.23, 0, -25.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 43.08, 0.06, -22.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.89, 0.06, -23.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.6, 0.08, -27.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.84, 0, -24.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 42.55, 0.09, -21.83, 2, math.random(0,10))
end


