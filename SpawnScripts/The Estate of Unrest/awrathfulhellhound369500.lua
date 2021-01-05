--[[
	Script Name		:	new.lua
	Script Purpose	:	Waypoint Path for new.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 01:14:13 PM
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
	MovementLoopAddLocation(NPC, 13, 3.88, 70.96, 2, 0)
	MovementLoopAddLocation(NPC, -1.41, 3.88, 76.1, 2, 14)
	MovementLoopAddLocation(NPC, -0.82, 3.88, 79.43, 2, 14)
	MovementLoopAddLocation(NPC, 1.59, 3.88, 78.41, 2, 14)
	MovementLoopAddLocation(NPC, 5.48, 3.88, 77.9, 2, 14)
	MovementLoopAddLocation(NPC, 18.13, 3.88, 74, 2, 14)
	MovementLoopAddLocation(NPC, 19.45, 3.88, 73.14, 2, 14)
	MovementLoopAddLocation(NPC, 15.48, 3.88, 78.09, 2, 14)
	MovementLoopAddLocation(NPC, 17.47, 3.88, 80.12, 2, 14)
	MovementLoopAddLocation(NPC, 6.16, 3.88, 82.21, 2, 0)
	MovementLoopAddLocation(NPC, -3.33, 3.88, 70.55, 2, 14)
	MovementLoopAddLocation(NPC, -1.93, 3.88, 67.49, 2, 14)
	MovementLoopAddLocation(NPC, 13.55, 3.88, 71.06, 2, 0)
end