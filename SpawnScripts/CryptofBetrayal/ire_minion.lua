--[[
	Script Name		:	ire_minion.lua
	Script Purpose	:	Waypoint Path for ire_minion.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 01:54:40 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 164.96, 7.23, -156.12, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.61, 6.88, -150.09, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 170.45, 6.88, -153.24, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.03, 6.96, -152.38, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.1, 7.15, -158.18, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 168.62, 6.88, -156.76, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.21, 7.15, -158.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.22, 7.15, -152.1, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.68, 6.87, -151.05, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 169.79, 6.88, -153.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.34, 6.94, -153.03, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.22, 6.88, -150.57, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.34, 6.94, -153.03, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 169.79, 6.88, -153.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.68, 6.87, -151.05, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.22, 7.15, -152.1, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.21, 7.15, -158.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 168.62, 6.88, -156.76, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.1, 7.15, -158.18, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.03, 6.96, -152.38, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 170.45, 6.88, -153.24, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.61, 6.88, -150.09, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.96, 7.23, -156.12, 2, math.random(0,25))
end


