--[[
	Script Name		:	deathly_scarab6.lua
	Script Purpose	:	Waypoint Path for deathly_scarab6.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 03:35:55 PM
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
	MovementLoopAddLocation(NPC, 157.36, 6.99, -26.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.19, 6.99, -43.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.32, 6.91, -51.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.98, 6.95, -59.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.08, 6.84, -68.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.23, 6.92, -69.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 133.07, 6.78, -70.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 110.29, 6.88, -47.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 103.78, 6.93, -43.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 98.04, 6.93, -44.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.58, 7.36, -50.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 93.81, 6.89, -65.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 80.99, 6.92, -65.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.79, 6.87, -59.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.17, 6.98, -56.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 67.34, 7.11, -61.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.48, 6.92, -55.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.73, 6.84, -58.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 77.23, 6.91, -59.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 73.94, 6.91, -62.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 77.23, 6.91, -59.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.73, 6.84, -58.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.48, 6.92, -55.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 67.34, 7.11, -61.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.17, 6.98, -56.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.79, 6.87, -59.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 80.99, 6.92, -65.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 93.81, 6.89, -65.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.58, 7.36, -50.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 98.04, 6.93, -44.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 103.78, 6.93, -43.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 110.29, 6.88, -47.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 133.07, 6.78, -70.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.23, 6.92, -69.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.08, 6.84, -68.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.98, 6.95, -59.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.32, 6.91, -51.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.19, 6.99, -43.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.36, 6.99, -26.13, 2, math.random(0,5))
end


