--[[
	Script Name		:	Amalthea.lua
	Script Purpose	:	Waypoint Path for Amalthea.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:17:19 PM
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
	MovementLoopAddLocation(NPC, -202.9, -47.25, 263.75, 2, 0)
	MovementLoopAddLocation(NPC, -197.71, -49.79, 243.59, 2, 0)
	MovementLoopAddLocation(NPC, -187.59, -55.05, 214.23, 2, 0)
	MovementLoopAddLocation(NPC, -185.96, -57.05, 198.05, 2, 0)
	MovementLoopAddLocation(NPC, -187.62, -57.25, 134.72, 2, 0)
	MovementLoopAddLocation(NPC, -185.96, -57.05, 198.05, 2, 0)
	MovementLoopAddLocation(NPC, -187.59, -55.05, 214.23, 2, 0)
	MovementLoopAddLocation(NPC, -197.71, -49.79, 243.59, 2, 0)
	MovementLoopAddLocation(NPC, -202.9, -47.25, 263.75, 2, 0)
end


