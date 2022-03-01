--[[
	Script Name		:	giant_burrower.lua
	Script Purpose	:	Waypoint Path for giant_burrower.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:57:31 AM
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
	MovementLoopAddLocation(NPC, 54.66, 0.07, -82.56, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 56.18, 0.12, -87.22, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 44.13, -0.01, -99.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 44.94, 0, -93.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.22, 0.18, -90.88, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 50.62, 0.18, -88.37, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 54.95, 0.09, -83.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 57.27, 0.18, -83.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 62.74, -0.09, -82.07, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 57.27, 0.18, -83.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 54.95, 0.09, -83.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 50.62, 0.18, -88.37, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.22, 0.18, -90.88, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 44.94, 0, -93.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 44.13, -0.01, -99.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 56.18, 0.12, -87.22, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 54.66, 0.07, -82.56, 2, math.random(0,20))
end


