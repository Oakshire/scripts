--[[
	Script Name		:	rifter_bleeder10_1.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder10_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:40:23 AM
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
	MovementLoopAddLocation(NPC, -180.09, 1.17, -122.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -184.44, 1.17, -117.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.84, 1.17, -115.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173, 1.17, -116.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.86, 1.17, -123.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.05, 1.17, -118.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.44, 1.17, -125.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.68, 1.17, -119.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.73, 1.17, -119.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.06, 1.17, -119.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.04, 0.37, -114.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.55, 0.29, -120.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -169.6, 1.17, -114.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.09, 1.17, -127.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.59, 1.17, -127.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.01, 2.15, -126, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.75, 2.15, -121.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.71, 1.17, -122.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.09, 1.17, -118.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.2, 1.17, -122.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173.97, 1.17, -120.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -181.2, 1.17, -122.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.09, 1.17, -118.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.71, 1.17, -122.54, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.75, 2.15, -121.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.01, 2.15, -126, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.59, 1.17, -127.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.09, 1.17, -127.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -169.6, 1.17, -114.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -168.55, 0.29, -120.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.04, 0.37, -114.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.06, 1.17, -119.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.73, 1.17, -119.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.68, 1.17, -119.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.44, 1.17, -125.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.05, 1.17, -118.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.86, 1.17, -123.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -173, 1.17, -116.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.84, 1.17, -115.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -184.44, 1.17, -117.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.09, 1.17, -122.41, 2, math.random(0,5))
end


