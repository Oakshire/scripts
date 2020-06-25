--[[
	Script Name		:	ire_warlock.lua
	Script Purpose	:	Waypoint Path for ire_warlock.lua
	Script Author	:	Auto Generated
	Script Date		:	06/08/2020 01:00:35 PM
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
	MovementLoopAddLocation(NPC, -33.97, 6.86, -22.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.24, 6.89, -19.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.55, 6.9, -25.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.48, 7.17, -20.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -27.91, 6.86, -21.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.63, 6.86, -23.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.65, 6.88, -20.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -33.18, 7.22, -24.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.65, 6.88, -20.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -28.63, 6.86, -23.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -27.91, 6.86, -21.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.48, 7.17, -20.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.55, 6.9, -25.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.24, 6.89, -19.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -33.97, 6.86, -22.05, 2, math.random(0,5))
end


