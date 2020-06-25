--[[
	Script Name		:	taskmaster.lua
	Script Purpose	:	Waypoint Path for taskmaster.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:38:23 PM
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
	MovementLoopAddLocation(NPC, 70.78, -17.81, 125.67, 2, 0)
	MovementLoopAddLocation(NPC, 55.92, -12.09, 176.4, 2, 0)
	MovementLoopAddLocation(NPC, 39.46, -12.09, 184.79, 2, 0)
	MovementLoopAddLocation(NPC, 36.67, -12.09, 199.04, 2, 0)
	MovementLoopAddLocation(NPC, 42.99, -12.09, 207.52, 2, 0)
	MovementLoopAddLocation(NPC, 53.88, -12.09, 210.69, 2, 0)
	MovementLoopAddLocation(NPC, 57.4, -12.09, 215.74, 2, 0)
	MovementLoopAddLocation(NPC, 61.24, -12.09, 227.14, 2, 0)
	MovementLoopAddLocation(NPC, 61.35, -12.09, 239.35, 2, 0)
	MovementLoopAddLocation(NPC, 61.24, -12.09, 227.14, 2, 0)
	MovementLoopAddLocation(NPC, 57.4, -12.09, 215.74, 2, 0)
	MovementLoopAddLocation(NPC, 53.88, -12.09, 210.69, 2, 0)
	MovementLoopAddLocation(NPC, 42.99, -12.09, 207.52, 2, 0)
	MovementLoopAddLocation(NPC, 36.67, -12.09, 199.04, 2, 0)
	MovementLoopAddLocation(NPC, 39.46, -12.09, 184.79, 2, 0)
	MovementLoopAddLocation(NPC, 55.92, -12.09, 176.4, 2, 0)
	MovementLoopAddLocation(NPC, 70.78, -17.81, 125.67, 2, 0)
end


