--[[
	Script Name		:	rifter_bleeder17.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder17.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:33:23 AM
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
	MovementLoopAddLocation(NPC, -202.03, -0.39, -127.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.67, -0.32, -133.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.86, -0.2, -134.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.73, -0.39, -128.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.76, -0.39, -123.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.24, -0.39, -125.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.66, -0.39, -116.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.7, -0.39, -117.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.16, -0.39, -118.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.41, -0.39, -123.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.5, -0.39, -132.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.04, -0.39, -132.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.11, -0.39, -124.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.33, -0.39, -126.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.7, -0.39, -125.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.33, -0.39, -126.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.11, -0.39, -124.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.04, -0.39, -132.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.5, -0.39, -132.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.41, -0.39, -123.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.16, -0.39, -118.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.7, -0.39, -117.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.66, -0.39, -116.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.24, -0.39, -125.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.76, -0.39, -123.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.73, -0.39, -128.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.86, -0.2, -134.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.67, -0.32, -133.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.03, -0.39, -127.58, 2, math.random(0,5))
end


