--[[
	Script Name		:	bloodsaber_inquisitor.lua
	Script Purpose	:	Waypoint Path for bloodsaber_inquisitor.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:30:55 PM
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
	MovementLoopAddLocation(NPC, 45.77, -4.16, -183.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.36, -4.16, -181.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.75, -4.16, -179.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 43.3, -4.16, -181.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.52, -4.16, -172.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 41.59, -4.16, -178.67, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 44.6, -4.16, -178.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.38, -4.16, -183.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.89, -0.15, -169.1, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.57, -4.16, -178.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.37, -4.16, -181.01, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.57, -4.16, -178.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.89, -0.15, -169.1, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.38, -4.16, -183.86, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 44.6, -4.16, -178.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 41.59, -4.16, -178.67, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.52, -4.16, -172.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 43.3, -4.16, -181.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.75, -4.16, -179.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.36, -4.16, -181.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 45.77, -4.16, -183.75, 2, math.random(0,20))
end


