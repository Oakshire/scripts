--[[
	Script Name		:	rifter_bleeder14.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder14.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:06:44 AM
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
	MovementLoopAddLocation(NPC, -207.83, -0.39, -127.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.66, -0.39, -124.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.24, -0.39, -124.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.54, -0.39, -116.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.2, -0.39, -121.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.34, -0.39, -130.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.88, -0.39, -122.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.7, -0.39, -127.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.23, -0.39, -126.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.07, -0.39, -123.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.09, -0.39, -124.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.51, -0.39, -124.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.07, -0.39, -117.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.14, -0.39, -119.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.21, -0.39, -131.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.19, -0.39, -125.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.26, -0.39, -123.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.77, -0.39, -126.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.26, -0.39, -123.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.19, -0.39, -125.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.21, -0.39, -131.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.14, -0.39, -119.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.07, -0.39, -117.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.51, -0.39, -124.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.09, -0.39, -124.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.07, -0.39, -123.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.23, -0.39, -126.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.7, -0.39, -127.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.88, -0.39, -122.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.34, -0.39, -130.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.2, -0.39, -121.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.54, -0.39, -116.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.24, -0.39, -124.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.66, -0.39, -124.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.83, -0.39, -127.15, 2, math.random(0,5))
end


