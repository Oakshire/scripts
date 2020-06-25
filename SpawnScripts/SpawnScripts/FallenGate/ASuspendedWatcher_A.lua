--[[
	Script Name		:	ASuspendedWatcher_A.lua
	Script Purpose	:	Waypoint Path for ASuspendedWatcher_A.lua
	Script Author	:	Auto Generated
	Script Date		:	03/09/2019 12:13:21 PM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, -57.2, -4.68, -98.26, 2, 0)
	MovementLoopAddLocation(NPC, -53.73, -3.52, -100.18, 2, 0)
	MovementLoopAddLocation(NPC, -48.98, -2.86, -105.99, 2, 0)
	MovementLoopAddLocation(NPC, -48.46, -2.84, -107.92, 2, 0)
	MovementLoopAddLocation(NPC, -51.02, -4.03, -111.59, 2, 0)
	MovementLoopAddLocation(NPC, -57.76, -4.17, -114.75, 2, 0)
	MovementLoopAddLocation(NPC, -66.01, -5.12, -117.15, 2, 0)
	MovementLoopAddLocation(NPC, -72.19, -4.52, -117.59, 2, 0)
	MovementLoopAddLocation(NPC, -77.18, -4.19, -114.77, 2, 0)
	MovementLoopAddLocation(NPC, -79.82, -3.81, -110.82, 2, 0)
	MovementLoopAddLocation(NPC, -78.3, -5.13, -103.66, 2, 0)
	MovementLoopAddLocation(NPC, -76.11, -5.13, -100.84, 2, 0)
	MovementLoopAddLocation(NPC, -71.71, -5.14, -99.8, 2, 0)
	MovementLoopAddLocation(NPC, -66.75, -4.87, -99.82, 2, 0)
	MovementLoopAddLocation(NPC, -63.95, -4.59, -98.41, 2, 0)
end


