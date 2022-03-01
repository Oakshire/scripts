--[[
	Script Name		:	festering_zombie9.lua
	Script Purpose	:	Waypoint Path for festering_zombie9.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:34:26 PM
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
	MovementLoopAddLocation(NPC, 174.9, -6.91, -69.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 172.24, -6.96, -72.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.77, -6.96, -75.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.91, -6.97, -69.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.44, -6.96, -71.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 173.01, -6.92, -71.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 174.81, -6.9, -70.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 175.03, -6.94, -72.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.48, -6.88, -73.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.95, -6.97, -70.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.13, -6.94, -75.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.95, -6.97, -70.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.48, -6.88, -73.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 175.03, -6.94, -72.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 174.81, -6.9, -70.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 173.01, -6.92, -71.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.44, -6.96, -71.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.91, -6.97, -69.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.77, -6.96, -75.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 172.24, -6.96, -72.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 174.9, -6.91, -69.88, 2, math.random(0,5))
end


