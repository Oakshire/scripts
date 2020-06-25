--[[
	Script Name		:	bloodsaber_highguard2.lua
	Script Purpose	:	Waypoint Path for bloodsaber_highguard2.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:45:28 PM
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
	MovementLoopAddLocation(NPC, 47.07, -4.16, -138.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 41.35, -4.16, -148.79, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 43.56, -4.16, -141.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.24, -4.16, -140.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.91, -4.16, -148.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.7, -4.16, -141.51, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 45.79, -4.16, -142.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 46.37, -0.15, -153.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 45.79, -4.16, -142.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.7, -4.16, -141.51, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.91, -4.16, -148.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.24, -4.16, -140.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 43.56, -4.16, -141.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 41.35, -4.16, -148.79, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.07, -4.16, -138.21, 2, math.random(0,20))
end


