--[[
	Script Name		:	infeced_burrower.lua
	Script Purpose	:	Waypoint Path for infeced_burrower.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:54:25 AM
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
	MovementLoopAddLocation(NPC, 51.72, 0.04, -91.85, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 48.38, 0.11, -89.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 55.45, 0.07, -89.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.8, 0.03, -85.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 49.44, 0.06, -94.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.76, 0.05, -91.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 57.76, 0.06, -86.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 54.26, 0.06, -83.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 57.76, 0.06, -86.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 45.76, 0.05, -91.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 49.44, 0.06, -94.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.8, 0.03, -85.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 55.45, 0.07, -89.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 48.38, 0.11, -89.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.72, 0.04, -91.85, 2, math.random(0,10))
end


