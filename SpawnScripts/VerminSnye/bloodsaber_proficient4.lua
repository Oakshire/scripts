--[[
	Script Name		:	bloodsaber_proficient4.lua
	Script Purpose	:	Waypoint Path for bloodsaber_proficient4.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 07:05:01 PM
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
	MovementLoopAddLocation(NPC, 26.57, -0.08, -196.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.48, -0.08, -202.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.14, -0.08, -204.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.83, -0.08, -202.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.08, -0.08, -198.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.94, -0.08, -202.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.78, -0.21, -203.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 22.9, -0.08, -196.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.66, -0.08, -195.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.27, -0.08, -198.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.06, -0.08, -196.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.27, -0.08, -198.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.66, -0.08, -195.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 22.9, -0.08, -196.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.78, -0.21, -203.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.94, -0.08, -202.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.08, -0.08, -198.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.83, -0.08, -202.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.14, -0.08, -204.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.48, -0.08, -202.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.57, -0.08, -196.44, 2, math.random(0,5))
end


