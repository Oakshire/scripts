--[[
	Script Name		:	bloodsaber_ritualist3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_ritualist3.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:36:49 PM
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
	MovementLoopAddLocation(NPC, 53.22, -4.16, -173.13, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.79, -4.16, -178.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.94, -4.16, -181.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.63, -4.16, -181.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.63, -4.16, -184, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.44, -0.21, -169.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.53, -4.16, -184.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.94, -4.16, -180.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.43, -4.16, -180.67, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.94, -4.16, -180.43, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.53, -4.16, -184.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.44, -0.21, -169.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.63, -4.16, -184, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.63, -4.16, -181.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.94, -4.16, -181.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.79, -4.16, -178.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.22, -4.16, -173.13, 2, math.random(0,20))
end


