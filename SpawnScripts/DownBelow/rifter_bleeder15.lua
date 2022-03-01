--[[
	Script Name		:	rifter_bleeder15.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder15.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:24:13 AM
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
	MovementLoopAddLocation(NPC, -203.96, -0.39, -125.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.71, -0.39, -122.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.69, -0.39, -121.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.12, -0.39, -128.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205.22, 0, -134.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.07, -0.39, -130.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.17, -0.39, -117.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.99, -0.39, -120.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.6, -0.39, -125.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.3, -0.39, -131.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.98, -0.39, -131.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.29, -0.39, -119, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.56, 0, -114.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.01, -0.01, -115.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.27, -0.39, -124.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.01, -0.01, -115.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.56, 0, -114.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.29, -0.39, -119, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.98, -0.39, -131.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.3, -0.39, -131.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.6, -0.39, -125.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.99, -0.39, -120.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.17, -0.39, -117.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -194.07, -0.39, -130.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205.22, 0, -134.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.12, -0.39, -128.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.69, -0.39, -121.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.71, -0.39, -122.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.96, -0.39, -125.5, 2, math.random(0,5))
end


