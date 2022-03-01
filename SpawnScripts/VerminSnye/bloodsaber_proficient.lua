--[[
	Script Name		:	bloodsaber_proficient.lua
	Script Purpose	:	Waypoint Path for bloodsaber_proficient.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 05:01:58 PM
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
	MovementLoopAddLocation(NPC, 23.41, -0.08, -186.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.54, -0.08, -184.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.46, -0.08, -188.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.49, -0.08, -193, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 5.87, -0.08, -196.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 5.57, -0.08, -204.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.27, -0.09, -200.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.1, -0.67, -198.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.65, -0.21, -191.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.55, -0.35, -190.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.53, -0.08, -190.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.5, -0.08, -184.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.79, -0.08, -185.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.42, -0.08, -179.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.18, -0.08, -185.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.85, -0.08, -185.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.54, -0.08, -180.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.65, -0.08, -181.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.54, -0.08, -180.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.85, -0.08, -185.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.18, -0.08, -185.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.42, -0.08, -179.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.79, -0.08, -185.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.5, -0.08, -184.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.53, -0.08, -190.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 19.55, -0.35, -190.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.65, -0.21, -191.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 12.1, -0.67, -198.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.27, -0.09, -200.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 5.57, -0.08, -204.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 5.87, -0.08, -196.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.49, -0.08, -193, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.46, -0.08, -188.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.54, -0.08, -184.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.41, -0.08, -186.37, 2, math.random(0,5))
end


