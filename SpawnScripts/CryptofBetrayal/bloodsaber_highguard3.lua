--[[
	Script Name		:	bloodsaber_highguard3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_highguard3.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:37:39 PM
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
	MovementLoopAddLocation(NPC, -33.04, -0.8, -175.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.68, -0.18, -180.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -25.05, -0.18, -181.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -33.52, -0.47, -174.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.21, -0.09, -169.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -39, -0.18, -165.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -36.46, -0.18, -170.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.49, -0.28, -173.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -24.55, -0.18, -174.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -20.19, -0.18, -188.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.08, -0.48, -181.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -27.85, -0.18, -171.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -38.01, -0.18, -164.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -27.85, -0.18, -171.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.08, -0.48, -181.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -20.19, -0.18, -188.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -24.55, -0.18, -174.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.49, -0.28, -173.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -36.46, -0.18, -170.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -39, -0.18, -165.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.21, -0.09, -169.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -33.52, -0.47, -174.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -25.05, -0.18, -181.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.68, -0.18, -180.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -33.04, -0.8, -175.22, 2, math.random(0,5))
end


