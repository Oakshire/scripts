--[[
	Script Name		:	tomb_guard20.lua
	Script Purpose	:	Waypoint Path for tomb_guard20.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:17:52 PM
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
	MovementLoopAddLocation(NPC, 234.44, 0, -173.15, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.26, 0, -163.07, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.29, 0, -163.16, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 237.97, 0, -162.78, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 233.86, 0, -158.27, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 238.25, 0, -158.16, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 238.26, 0, -160.88, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 233.68, 0, -160, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.69, 0, -159.85, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 236.06, 0, -173.58, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 235.61, 0, -160.07, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 236.06, 0, -173.58, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.69, 0, -159.85, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 233.68, 0, -160, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 238.26, 0, -160.88, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 238.25, 0, -158.16, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 233.86, 0, -158.27, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 237.97, 0, -162.78, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 232.29, 0, -163.16, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.26, 0, -163.07, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 234.44, 0, -173.15, 2, math.random(0,3))
end


