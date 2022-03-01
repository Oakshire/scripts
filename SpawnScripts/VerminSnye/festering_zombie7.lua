--[[
	Script Name		:	festering_zombie7.lua
	Script Purpose	:	Waypoint Path for festering_zombie7.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 04:04:12 PM
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
	MovementLoopAddLocation(NPC, 220.69, -6.83, -119.9, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.51, -6.83, -121.76, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.61, -6.87, -115.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.51, -6.79, -121.41, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.43, -6.81, -115.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 220.57, -6.81, -117.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 217.53, -6.73, -120.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.41, -6.83, -122.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 222.28, -6.73, -117.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.98, -6.78, -116.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.14, -6.87, -118.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 222.22, -6.72, -117.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 222.24, -6.78, -118.84, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.7, -6.81, -121.48, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.5, -6.78, -116.4, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.38, -6.82, -115.91, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.5, -6.78, -116.4, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.7, -6.81, -121.48, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 222.24, -6.78, -118.84, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 222.22, -6.72, -117.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.14, -6.87, -118.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 216.98, -6.78, -116.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 222.28, -6.73, -117.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.41, -6.83, -122.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 217.53, -6.73, -120.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 220.57, -6.81, -117.09, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.43, -6.81, -115.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 218.51, -6.79, -121.41, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.61, -6.87, -115.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 219.51, -6.83, -121.76, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 220.69, -6.83, -119.9, 2, math.random(0,15))
end


