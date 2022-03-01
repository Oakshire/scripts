--[[
	Script Name		:	ASuspendedWatcher_B.lua
	Script Purpose	:	Waypoint Path for ASuspendedWatcher_B.lua
	Script Author	:	Auto Generated
	Script Date		:	03/09/2019 12:21:25 PM
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
	MovementLoopAddLocation(NPC, -82.45, -8.57, -149.99, 2, 0)
	MovementLoopAddLocation(NPC, -85.91, -9.24, -149.65, 2, 0)
	MovementLoopAddLocation(NPC, -88.41, -9.17, -151.06, 2, 0)
	MovementLoopAddLocation(NPC, -89.37, -9.15, -153.62, 2, 0)
	MovementLoopAddLocation(NPC, -89.36, -9.16, -155.63, 2, 0)
	MovementLoopAddLocation(NPC, -89.37, -9.15, -153.62, 2, 0)
	MovementLoopAddLocation(NPC, -88.41, -9.17, -151.06, 2, 0)
	MovementLoopAddLocation(NPC, -85.91, -9.24, -149.65, 2, 0)
	MovementLoopAddLocation(NPC, -82.45, -8.57, -149.99, 2, 0)
	MovementLoopAddLocation(NPC, -78.66, -8.482, -150.79, 2, 0)
end


