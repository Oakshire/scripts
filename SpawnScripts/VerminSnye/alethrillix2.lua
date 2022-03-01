--[[
	Script Name		:	alethrillix2.lua
	Script Purpose	:	Waypoint Path for alethrillix2.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 05:26:49 PM
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
	MovementLoopAddLocation(NPC, 218.24, -6.89, -37.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.66, -6.92, -41.43, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.23, -6.96, -43.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 215.38, -6.97, -39.25, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.18, -6.9, -41.67, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.96, -6.89, -38.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.84, -6.94, -40.84, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 215.44, -6.97, -39.17, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.84, -6.94, -40.84, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.96, -6.89, -38.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.18, -6.9, -41.67, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 215.38, -6.97, -39.25, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.23, -6.96, -43.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.66, -6.92, -41.43, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.24, -6.89, -37.96, 2, math.random(0,15))
end


