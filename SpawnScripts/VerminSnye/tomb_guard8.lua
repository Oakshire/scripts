--[[
	Script Name		:	tomb_guard_1.lua
	Script Purpose	:	Waypoint Path for tomb_guard_1.lua
	Script Author	:	Devn00b
	Script Date		:	06/24/2020 03:19:11 PM
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
	MovementLoopAddLocation(NPC, 136.4, 0.09, -149.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.91, 0, -146.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.9, 0.06, -143.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.3, 0, -143.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.54, 0.03, -145.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 138.05, 0.03, -143.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.57, 0.07, -143.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.59, 0, -148.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.73, 0.08, -147.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.68, 0, -144.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.42, 0.02, -146.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.88, 0.02, -143.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.84, 0.06, -143.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.15, 0, -144.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.5, 0.02, -145.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.31, 0.02, -147.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.47, 0, -146.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.9, 0.01, -149.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.34, 0.05, -149.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.82, 0.04, -146.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.34, 0.05, -149.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.9, 0.01, -149.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.47, 0, -146.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.31, 0.02, -147.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.5, 0.02, -145.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.15, 0, -144.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.84, 0.06, -143.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.88, 0.02, -143.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.42, 0.02, -146.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.68, 0, -144.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.73, 0.08, -147.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.59, 0, -148.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.57, 0.07, -143.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 138.05, 0.03, -143.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 135.54, 0.03, -145.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.3, 0, -143.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.9, 0.06, -143.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.91, 0, -146.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.4, 0.09, -149.42, 2, math.random(0,5))
end


