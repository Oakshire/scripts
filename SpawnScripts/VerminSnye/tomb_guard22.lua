--[[
	Script Name		:	tomb_guard22.lua
	Script Purpose	:	Waypoint Path for tomb_guard22.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 10:07:49 PM
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
	MovementLoopAddLocation(NPC, 189.98, -6.97, -152.9, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 186.75, -6.97, -155.04, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 188.35, -7.01, -156.86, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 191.96, -6.97, -154.06, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 192.21, -6.98, -156.49, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 187.28, -6.97, -154.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 189.05, -7.04, -158.09, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 188.9, -6.97, -154.05, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 186.55, -6.97, -156.31, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 190.6, -7.02, -155.92, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 186.55, -6.97, -156.31, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 188.9, -6.97, -154.05, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 189.05, -7.04, -158.09, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 187.28, -6.97, -154.39, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 192.21, -6.98, -156.49, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 191.96, -6.97, -154.06, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 188.35, -7.01, -156.86, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 186.75, -6.97, -155.04, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 189.98, -6.97, -152.9, 2, math.random(0,8))
end


