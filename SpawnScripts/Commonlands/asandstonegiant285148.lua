--[[
	Script Name		:	asandstonegianttest02.lua
	Script Purpose	:	Waypoint Path for asandstonegianttest02.lua
	Script Author	:	Auto Generated
	Script Date		:	07/23/2020 03:07:18 AM
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
	MovementLoopAddLocation(NPC, 1457.85, -31.51, 112.89, 2, 0)
	MovementLoopAddLocation(NPC, 1448.95, -37.99, 36.8, 2, 0)
	MovementLoopAddLocation(NPC, 1446.77, -38.46, 34.5, 2, 0)
	MovementLoopAddLocation(NPC, 1398.17, -49.93, -16.7, 2, 0)
	MovementLoopAddLocation(NPC, 1395.87, -49.19, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 1411.21, -46.71, -76.68, 2, 0)
	MovementLoopAddLocation(NPC, 1395.87, -49.19, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 1398.17, -49.93, -16.7, 2, 0)
	MovementLoopAddLocation(NPC, 1446.77, -38.46, 34.5, 2, 0)
	MovementLoopAddLocation(NPC, 1448.95, -37.99, 36.8, 2, 0)
	MovementLoopAddLocation(NPC, 1457.85, -31.51, 112.89, 2, 0)
end


