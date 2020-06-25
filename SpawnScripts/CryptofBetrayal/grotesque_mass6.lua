--[[
	Script Name		:	grotesque_mass6.lua
	Script Purpose	:	Waypoint Path for grotesque_mass6.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 03:11:04 AM
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
	MovementLoopAddLocation(NPC, 63.23, 6.97, -55.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.29, 6.98, -58.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.1, 5.93, -67.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 50.56, 4.87, -71.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.81, 3.29, -67.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.43, 2.08, -58.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.94, 0.85, -49.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 47.8, -0.05, -44.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.57, -0.06, -48.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.77, -0.06, -54.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.24, -0.06, -58.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 57.54, -0.06, -63.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 53.63, -0.06, -67.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 47.69, -0.06, -68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.58, -0.06, -67.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 47.69, -0.06, -68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 53.63, -0.06, -67.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 57.54, -0.06, -63.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.24, -0.06, -58.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.77, -0.06, -54.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.57, -0.06, -48.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 47.8, -0.05, -44.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.94, 0.85, -49.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.43, 2.08, -58.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 39.81, 3.29, -67.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 50.56, 4.87, -71.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.1, 5.93, -67.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.29, 6.98, -58.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 63.23, 6.97, -55.29, 2, math.random(0,5))
end


