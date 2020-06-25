--[[
	Script Name		:	deathly_scarab4.lua
	Script Purpose	:	Waypoint Path for deathly_scarab4.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 11:09:26 AM
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
	MovementLoopAddLocation(NPC, 67.02, 6.93, -57.84, 2, 0)
	MovementLoopAddLocation(NPC, 81.42, 6.87, -63.94, 2, 0)
	MovementLoopAddLocation(NPC, 93.07, 6.91, -64.01, 2, 0)
	MovementLoopAddLocation(NPC, 98.58, 6.85, -45.7, 2, 0)
	MovementLoopAddLocation(NPC, 105.58, 7.01, -46.23, 2, 0)
	MovementLoopAddLocation(NPC, 120.34, 7.49, -58.81, 2, 0)
	MovementLoopAddLocation(NPC, 123.65, 6.83, -62.35, 2, 0)
	MovementLoopAddLocation(NPC, 117.81, 6.89, -71.42, 2, 0)
	MovementLoopAddLocation(NPC, 122.89, 6.83, -82.12, 2, 0)
	MovementLoopAddLocation(NPC, 117.83, 6.88, -69.6, 2, 0)
	MovementLoopAddLocation(NPC, 123.86, 6.83, -62.76, 2, 0)
	MovementLoopAddLocation(NPC, 134.66, 6.85, -72.3, 2, 0)
	MovementLoopAddLocation(NPC, 149.97, 6.73, -70.83, 2, 0)
	MovementLoopAddLocation(NPC, 156.9, 7.18, -60.88, 2, 0)
	MovementLoopAddLocation(NPC, 166.2, 6.79, -54.64, 2, 0)
	MovementLoopAddLocation(NPC, 157.44, 6.98, -60.67, 2, 0)
	MovementLoopAddLocation(NPC, 149.38, 6.95, -53.1, 2, 0)
	MovementLoopAddLocation(NPC, 149.15, 6.99, -43.26, 2, 0)
	MovementLoopAddLocation(NPC, 149.38, 6.95, -53.1, 2, 0)
	MovementLoopAddLocation(NPC, 157.44, 6.98, -60.67, 2, 0)
	MovementLoopAddLocation(NPC, 166.2, 6.79, -54.64, 2, 0)
	MovementLoopAddLocation(NPC, 156.9, 7.18, -60.88, 2, 0)
	MovementLoopAddLocation(NPC, 149.97, 6.73, -70.83, 2, 0)
	MovementLoopAddLocation(NPC, 134.66, 6.85, -72.3, 2, 0)
	MovementLoopAddLocation(NPC, 123.86, 6.83, -62.76, 2, 0)
	MovementLoopAddLocation(NPC, 117.83, 6.88, -69.6, 2, 0)
	MovementLoopAddLocation(NPC, 122.89, 6.83, -82.12, 2, 0)
	MovementLoopAddLocation(NPC, 117.81, 6.89, -71.42, 2, 0)
	MovementLoopAddLocation(NPC, 123.65, 6.83, -62.35, 2, 0)
	MovementLoopAddLocation(NPC, 120.34, 7.49, -58.81, 2, 0)
	MovementLoopAddLocation(NPC, 105.58, 7.01, -46.23, 2, 0)
	MovementLoopAddLocation(NPC, 98.58, 6.85, -45.7, 2, 0)
	MovementLoopAddLocation(NPC, 93.07, 6.91, -64.01, 2, 0)
	MovementLoopAddLocation(NPC, 81.42, 6.87, -63.94, 2, 0)
	MovementLoopAddLocation(NPC, 67.02, 6.93, -57.84, 2, 0)
end


