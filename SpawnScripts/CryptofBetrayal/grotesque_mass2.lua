--[[
	Script Name		:	grotesque_mass2.lua
	Script Purpose	:	Waypoint Path for grotesque_mass2.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 11:29:26 PM
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
	MovementLoopAddLocation(NPC, 55.6, -0.06, -45.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.38, 0.2, -48.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 36.91, 1.32, -51.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.27, 1.48, -54.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 37.97, 2.08, -58.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.42, 3.29, -68.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 44.5, 3.78, -67.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 43.53, 3.94, -71.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 53.21, 5.18, -71.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 54.08, 5.49, -67.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.18, 6.1, -66.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 59.18, 6.98, -57.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.18, 6.1, -66.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 54.08, 5.49, -67.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 53.21, 5.18, -71.58, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 43.53, 3.94, -71.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 44.5, 3.78, -67.2, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.42, 3.29, -68.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 37.97, 2.08, -58.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 39.27, 1.48, -54.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 36.91, 1.32, -51.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.38, 0.2, -48.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 55.6, -0.06, -45.35, 2, math.random(0,10))
end


