--[[
	Script Name		:	crypt_substance17.lua
	Script Purpose	:	Waypoint Path for crypt_substance17.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 04:09:51 PM
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
	MovementLoopAddLocation(NPC, -156.74, -0.08, -127.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -157.23, -0.15, -111.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.26, 0.49, -107.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.68, -0.1, -92.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.19, -0.08, -78.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.02, -0.04, -85.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -162.28, -0.24, -76.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -168.37, -0.29, -74.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -162.28, -0.24, -76.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -146.02, -0.04, -85.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -143.19, -0.08, -78.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -149.68, -0.1, -92.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.26, 0.49, -107.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -157.23, -0.15, -111.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -156.74, -0.08, -127.03, 2, math.random(0,10))
end


