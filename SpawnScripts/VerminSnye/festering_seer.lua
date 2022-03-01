--[[
	Script Name		:	festering_seer.lua
	Script Purpose	:	Waypoint Path for festering_seer.lua
	Script Author	:	Devn00b
	Script Date		:	06/24/2020 03:18:26 PM
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
	MovementLoopAddLocation(NPC, 141.26, 0.01, -148.65, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 139.53, 0.28, -146.77, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 139.56, 0.05, -148.78, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 136.63, 0.08, -148.03, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 136.44, 0, -143.97, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 137.07, 0.1, -148.46, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.76, 0, -147.03, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.99, 0.05, -143.6, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 136.76, 0, -143.86, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 135.44, 0.02, -146.38, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 137.25, 0.15, -146.95, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.22, 0, -148.11, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 139.58, 0.28, -146.77, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 135.9, 0.04, -146.97, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 139.58, 0.28, -146.77, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.22, 0, -148.11, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 137.25, 0.15, -146.95, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 135.44, 0.02, -146.38, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 136.76, 0, -143.86, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.99, 0.05, -143.6, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.76, 0, -147.03, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 137.07, 0.1, -148.46, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 136.44, 0, -143.97, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 136.63, 0.08, -148.03, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 139.56, 0.05, -148.78, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 139.53, 0.28, -146.77, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 141.26, 0.01, -148.65, 2, math.random(0,25))
end


