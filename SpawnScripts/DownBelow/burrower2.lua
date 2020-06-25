--[[
	Script Name		:	burrower2.lua
	Script Purpose	:	Waypoint Path for burrower2.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:37:18 PM
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
	MovementLoopAddLocation(NPC, 22.83, -1.01, -78.27, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.16, -0.77, -78.27, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.21, -0.05, -70.15, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.46, -0.08, -65.77, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.28, -0.05, -65.65, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 13.97, -0.03, -61.43, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 2.71, -0.08, -63.9, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -6.74, -0.04, -53.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.8, -0.08, -56.98, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.43, 0.57, -45.81, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.7, -0.07, -39.46, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.62, -0.07, -37.85, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -11.42, -0.08, -34.03, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -3.39, -0.08, -33.7, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -3.02, -0.03, -28.31, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.13, -0.05, -30.43, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.37, -0.07, -22.87, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 2.29, -0.05, -22.54, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.05, -0.11, -22.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 2.29, -0.05, -22.54, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.37, -0.07, -22.87, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.13, -0.05, -30.43, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -3.02, -0.03, -28.31, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -3.39, -0.08, -33.7, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -11.42, -0.08, -34.03, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.62, -0.07, -37.85, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.7, -0.07, -39.46, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.43, 0.57, -45.81, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.8, -0.08, -56.98, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -6.74, -0.04, -53.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 2.71, -0.08, -63.9, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 13.97, -0.03, -61.43, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.28, -0.05, -65.65, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.46, -0.08, -65.77, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.21, -0.05, -70.15, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.16, -0.77, -78.27, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.83, -1.01, -78.27, 2, math.random(0,2))
end


