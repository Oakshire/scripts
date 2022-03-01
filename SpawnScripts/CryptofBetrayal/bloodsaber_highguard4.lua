--[[
	Script Name		:	bloodsaber_highguard4.lua
	Script Purpose	:	Waypoint Path for bloodsaber_highguard4.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:37:43 PM
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
	MovementLoopAddLocation(NPC, -36.5, -0.24, -173.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.82, -0.18, -166.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -35.77, -0.18, -169.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.97, -0.18, -165.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.96, -0.34, -173.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -37.27, -0.42, -173.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.96, -0.34, -173.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.97, -0.18, -165.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -35.77, -0.18, -169.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.82, -0.18, -166.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -36.5, -0.24, -173.47, 2, math.random(0,5))
end


