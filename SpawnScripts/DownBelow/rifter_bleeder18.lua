--[[
	Script Name		:	rifter_bleeder18.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder18.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:35:24 AM
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
	MovementLoopAddLocation(NPC, -201.26, -0.39, -125.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.22, -0.39, -127.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.47, -0.39, -123.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.13, -0.39, -118.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.63, -0.39, -131.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.4, -0.12, -134.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.59, -0.19, -134.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.22, -0.39, -131.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.8, -0.24, -134.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.99, -0.39, -128.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.12, -0.39, -128.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -212.34, 0, -125.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.19, -0.39, -121.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.78, -0.34, -121.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.72, -0.31, -116.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.02, 0, -114.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205.51, -0.39, -119.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.85, 0, -114.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.63, -0.39, -119.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.47, -0.38, -117.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.5, -0.39, -125.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.73, -0.39, -120.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.24, 0, -127.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.86, -0.39, -128.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.16, -0.39, -133.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.86, -0.39, -128.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.24, 0, -127.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.73, -0.39, -120.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.5, -0.39, -125.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.47, -0.38, -117.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.63, -0.39, -119.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.85, 0, -114.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205.51, -0.39, -119.12, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.02, 0, -114.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.72, -0.31, -116.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.78, -0.34, -121.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.19, -0.39, -121.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -212.34, 0, -125.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.12, -0.39, -128.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.99, -0.39, -128.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.8, -0.24, -134.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.22, -0.39, -131.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.59, -0.19, -134.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.4, -0.12, -134.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.63, -0.39, -131.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.13, -0.39, -118.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.47, -0.39, -123.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -193.22, -0.39, -127.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.26, -0.39, -125.47, 2, math.random(0,5))
end


