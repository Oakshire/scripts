--[[
	Script Name		:	ire_minion17.lua
	Script Purpose	:	Waypoint Path for ire_minion17.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:17:02 PM
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
	MovementLoopAddLocation(NPC, 0.38, 0.03, -190.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.3, -0.15, -192.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.17, -0.05, -187.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.27, -0.12, -187.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.5, -0.1, -187.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -2.43, -0.15, -193.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.27, 0.05, -191.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.22, 0, -192.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.61, -0.13, -189.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.95, -0.06, -187.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.23, -0.08, -190.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.44, -0.09, -193.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.18, -0.14, -187.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.75, -0.03, -189.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.9, 0.18, -190.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.75, -0.03, -189.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.18, -0.14, -187.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -3.44, -0.09, -193.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.23, -0.08, -190.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.95, -0.06, -187.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.61, -0.13, -189.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.22, 0, -192.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.27, 0.05, -191.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -2.43, -0.15, -193.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -4.5, -0.1, -187.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.27, -0.12, -187.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 1.17, -0.05, -187.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -1.3, -0.15, -192.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.38, 0.03, -190.11, 2, math.random(0,10))
end


