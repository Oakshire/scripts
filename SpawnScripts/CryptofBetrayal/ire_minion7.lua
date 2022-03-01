--[[
	Script Name		:	ire_minion7.lua
	Script Purpose	:	Waypoint Path for ire_minion7.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 11:17:49 PM
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
	MovementLoopAddLocation(NPC, 88.91, 6.88, -70.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 89.12, 7.04, -74.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.13, 6.92, -69.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.23, 6.84, -68.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.64, 6.89, -74.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.85, 6.89, -72.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.45, 6.85, -72.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.12, 6.87, -74.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.42, 6.85, -71.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.18, 6.93, -69.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.85, 6.92, -72.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.88, 6.88, -74.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.63, 6.84, -72.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.88, 6.88, -74.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.85, 6.92, -72.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.18, 6.93, -69.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.42, 6.85, -71.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.12, 6.87, -74.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 83.45, 6.85, -72.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.85, 6.89, -72.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 86.64, 6.89, -74.9, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 87.23, 6.84, -68.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 85.13, 6.92, -69.46, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 89.12, 7.04, -74.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 88.91, 6.88, -70.05, 2, math.random(0,10))
end


