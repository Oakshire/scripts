--[[
	Script Name		:	 A Crypt Protector.lua
	Script Purpose	:	Waypoint Path for  A Crypt Protector.lua
	Script Author	:	Auto Generated
	Script Date		:	03/29/2022 01:45:39 PM
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
	MovementLoopAddLocation(NPC, -201.83, -0.39, -122.83, 2, 4)
	MovementLoopAddLocation(NPC, -197.18, -0.39, -124.09, 2, 4)
	MovementLoopAddLocation(NPC, -206.73, -0.39, -126.98, 2, 4)
	MovementLoopAddLocation(NPC, -204.04, -0.39, -126.99, 2, 0)
	MovementLoopAddLocation(NPC, -202.17, -0.39, -131.22, 2, 4)
	MovementLoopAddLocation(NPC, -200.04, -0.39, -123.54, 2, 0)
	MovementLoopAddLocation(NPC, -192.19, -0.22, -122.74, 2, 4)
	MovementLoopAddLocation(NPC, -202, -0.39, -131.16, 2, 0)
	MovementLoopAddLocation(NPC, -203.16, -0.39, -130.97, 2, 4)
	MovementLoopAddLocation(NPC, -197.96, -0.39, -123.69, 2, 4)
	MovementLoopAddLocation(NPC, -201.86, -0.39, -123.15, 2, 4)
end

