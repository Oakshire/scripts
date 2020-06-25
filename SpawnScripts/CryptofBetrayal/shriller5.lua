--[[
	Script Name		:	shriller5_1.lua
	Script Purpose	:	Waypoint Path for shriller5_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 10:05:50 PM
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
	MovementLoopAddLocation(NPC, 120.75, 6.9, -81.61, 2, 0)
	MovementLoopAddLocation(NPC, 123.21, 6.89, -80.25, 2, 0)
	MovementLoopAddLocation(NPC, 117.81, 6.89, -71.75, 2, 0)
	MovementLoopAddLocation(NPC, 123.34, 6.85, -62.46, 2, 0)
	MovementLoopAddLocation(NPC, 105.21, 7.22, -46.6, 2, 0)
	MovementLoopAddLocation(NPC, 99.28, 6.85, -44.87, 2, 0)
	MovementLoopAddLocation(NPC, 96.35, 7.36, -50.7, 2, 0)
	MovementLoopAddLocation(NPC, 94.42, 7.28, -61.57, 2, 0)
	MovementLoopAddLocation(NPC, 93.06, 6.91, -63.49, 2, 0)
	MovementLoopAddLocation(NPC, 79.72, 6.85, -63.76, 2, 0)
	MovementLoopAddLocation(NPC, 70.68, 6.88, -58.05, 2, 0)
	MovementLoopAddLocation(NPC, 60.92, 6.98, -57.8, 2, 0)
	MovementLoopAddLocation(NPC, 70.68, 6.88, -58.05, 2, 0)
	MovementLoopAddLocation(NPC, 79.72, 6.85, -63.76, 2, 0)
	MovementLoopAddLocation(NPC, 93.06, 6.91, -63.49, 2, 0)
	MovementLoopAddLocation(NPC, 94.42, 7.28, -61.57, 2, 0)
	MovementLoopAddLocation(NPC, 96.35, 7.36, -50.7, 2, 0)
	MovementLoopAddLocation(NPC, 99.28, 6.85, -44.87, 2, 0)
	MovementLoopAddLocation(NPC, 105.21, 7.22, -46.6, 2, 0)
	MovementLoopAddLocation(NPC, 123.34, 6.85, -62.46, 2, 0)
	MovementLoopAddLocation(NPC, 117.81, 6.89, -71.75, 2, 0)
	MovementLoopAddLocation(NPC, 123.21, 6.89, -80.25, 2, 0)
	MovementLoopAddLocation(NPC, 120.75, 6.9, -81.61, 2, 0)
end


