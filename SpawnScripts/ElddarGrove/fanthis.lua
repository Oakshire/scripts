--[[
	Script Name		:	fanthis.lua
	Script Purpose	:	Waypoint Path for fanthis.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:49 PM
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
	MovementLoopAddLocation(NPC, 584.13, -18.24, -408.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 621.86, -15.32, -403.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.44, -11.39, -395.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.06, -13.16, -365.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 643.87, -18.16, -325.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.06, -13.16, -365.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.44, -11.39, -395.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 621.86, -15.32, -403.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 584.13, -18.24, -408.66, 2, math.random(0,8))
end


