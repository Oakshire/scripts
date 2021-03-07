--[[
	Script Name		:	tomb_guard3.lua
	Script Purpose	:	Waypoint Path for tomb_guard3.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:44:41 AM
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
	MovementLoopAddLocation(NPC, 76.29, 0, -10.57, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 78.35, 0, -10.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 75.14, 0.05, -13.94, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 78.11, 0, -10.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 76.29, 0, -10.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 77.98, 0.06, -30.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 75.8, 0, -11.4, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 77.98, 0.06, -30.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 76.29, 0, -10.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 78.11, 0, -10.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 75.14, 0.05, -13.94, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 78.35, 0, -10.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 76.29, 0, -10.57, 2, math.random(0,15))
end


