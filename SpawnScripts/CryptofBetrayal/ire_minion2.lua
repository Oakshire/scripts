--[[
	Script Name		:	ire_minion2.lua
	Script Purpose	:	Waypoint Path for ire_minion2.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 01:56:12 AM
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
	MovementLoopAddLocation(NPC, 164.17, 6.9, -152.73, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 170.72, 6.88, -154.11, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.58, 6.85, -151.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.33, 6.88, -154.99, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 168.7, 6.88, -152.43, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.11, 6.97, -154.13, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.84, 7.04, -157.85, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 165.42, 6.88, -156.36, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.54, 6.91, -154.4, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 169.39, 6.88, -152.84, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.5, 6.97, -154.05, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.64, 6.87, -150.7, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.76, 6.78, -153.96, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.73, 6.9, -152.75, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.76, 6.78, -153.96, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.64, 6.87, -150.7, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.5, 6.97, -154.05, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 169.39, 6.88, -152.84, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.54, 6.91, -154.4, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 165.42, 6.88, -156.36, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.84, 7.04, -157.85, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 166.11, 6.97, -154.13, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 168.7, 6.88, -152.43, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.33, 6.88, -154.99, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 167.58, 6.85, -151.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 170.72, 6.88, -154.11, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 164.17, 6.9, -152.73, 2, math.random(0,25))
end


