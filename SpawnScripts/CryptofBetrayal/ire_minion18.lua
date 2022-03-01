--[[
	Script Name		:	ire_minion18.lua
	Script Purpose	:	Waypoint Path for ire_minion18.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:17:06 PM
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
	MovementLoopAddLocation(NPC, -4.13, -0.08, -189.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.16, -0.11, -193.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.6, -0.06, -188.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.77, -0.12, -187.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.14, -0.14, -193.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.3, -0.08, -191.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.32, -0.05, -191.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.48, -0.02, -187.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.18, -0.09, -187.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.1, -0.12, -192.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.22, -0.15, -187.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.24, -0.18, -186.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.07, -0.08, -192.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.77, -0.14, -190.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.92, -0.08, -191.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -2.07, -0.12, -188.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.92, -0.08, -191.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.77, -0.14, -190.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.07, -0.08, -192.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.24, -0.18, -186.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.22, -0.15, -187.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.1, -0.12, -192.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.18, -0.09, -187.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.48, -0.02, -187.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.32, -0.05, -191.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.3, -0.08, -191.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.14, -0.14, -193.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.77, -0.12, -187.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.6, -0.06, -188.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.16, -0.11, -193.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.13, -0.08, -189.11, 2, math.random(0,10))
end


