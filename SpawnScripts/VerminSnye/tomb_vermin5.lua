--[[
	Script Name		:	tomb_vermin5.lua
	Script Purpose	:	Waypoint Path for tomb_vermin5.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 12:22:46 AM
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
	MovementLoopAddLocation(NPC, 47.99, -0.34, -145.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.8, -0.34, -137.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.97, -0.1, -149.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 56.52, 0.03, -148.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 55.53, 0.04, -130.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.65, 0.04, -130.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.48, 0.04, -134.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.16, -0.34, -133.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 51.75, 0.04, -150.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.18, -0.34, -146.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38, -0.34, -133.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.52, -0.34, -133.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 47.94, -0.34, -144.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.52, -0.34, -133.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38, -0.34, -133.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 38.18, -0.34, -146.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 51.75, 0.04, -150.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.16, -0.34, -133.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.48, 0.04, -134.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.65, 0.04, -130.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 55.53, 0.04, -130.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 56.52, 0.03, -148.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.97, -0.1, -149.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.8, -0.34, -137.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 47.99, -0.34, -145.07, 2, math.random(0,5))
end


