--[[
	Script Name		:	bloodsaber_proficient2.lua
	Script Purpose	:	Waypoint Path for bloodsaber_proficient2.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 05:02:02 PM
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
	MovementLoopAddLocation(NPC, 23.69, -0.08, -185.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.82, -0.08, -185.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.94, -0.29, -190.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 20.18, -0.38, -190.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.35, -0.08, -190.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.78, -0.08, -205.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.08, -0.08, -199.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.68, -0.08, -198.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.39, -0.08, -193.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.3, -0.08, -187.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.31, -0.08, -181.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.85, -0.08, -180.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 17.59, -0.08, -186.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.98, 0, -178.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.68, -0.08, -185.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.03, -0.08, -180.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.87, 0.44, -187.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.03, -0.08, -180.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.68, -0.08, -185.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.98, 0, -178.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 17.59, -0.08, -186.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.85, -0.08, -180.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.31, -0.08, -181.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.3, -0.08, -187.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.39, -0.08, -193.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.68, -0.08, -198.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.08, -0.08, -199.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.78, -0.08, -205.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.35, -0.08, -190.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 20.18, -0.38, -190.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.94, -0.29, -190.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.82, -0.08, -185.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.69, -0.08, -185.42, 2, math.random(0,5))
end


