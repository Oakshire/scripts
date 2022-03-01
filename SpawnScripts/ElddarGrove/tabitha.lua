--[[
	Script Name		:	tabitha.lua
	Script Purpose	:	Waypoint Path for tabitha.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 03:52:07 PM
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
	MovementLoopAddLocation(NPC, 774.57, -18.26, -323.88, 2, 0)
	MovementLoopAddLocation(NPC, 745.9, -17.06, -319.85, 2, 0)
	MovementLoopAddLocation(NPC, 720.18, -17.11, -329.29, 2, 0)
	MovementLoopAddLocation(NPC, 696.61, -17.37, -322.9, 2, 0)
	MovementLoopAddLocation(NPC, 649.03, -20.19, -279.39, 2, 0)
	MovementLoopAddLocation(NPC, 634.22, -19.95, -281.35, 2, 0)
	MovementLoopAddLocation(NPC, 617.17, -21.25, -278.33, 2, 0)
	MovementLoopAddLocation(NPC, 611.16, -21, -279.28, 2, 0)
	MovementLoopAddLocation(NPC, 605.59, -21, -279.57, 2, 0)
	MovementLoopAddLocation(NPC, 597.38, -21.75, -279.91, 2, 0)
	MovementLoopAddLocation(NPC, 592.59, -20.79, -307.8, 2, 0)
	MovementLoopAddLocation(NPC, 584.82, -21.27, -311.83, 2, 0)
	MovementLoopAddLocation(NPC, 562.32, -21.9, -311.47, 2, 0)
	MovementLoopAddLocation(NPC, 525.99, -19.93, -347.98, 2, math.random(0,13))
	MovementLoopAddLocation(NPC, 562.32, -21.9, -311.47, 2, 0)
	MovementLoopAddLocation(NPC, 584.82, -21.27, -311.83, 2, 0)
	MovementLoopAddLocation(NPC, 592.59, -20.79, -307.8, 2, 0)
	MovementLoopAddLocation(NPC, 597.38, -21.75, -279.91, 2, 0)
	MovementLoopAddLocation(NPC, 605.59, -21, -279.57, 2, 0)
	MovementLoopAddLocation(NPC, 611.16, -21, -279.28, 2, 0)
	MovementLoopAddLocation(NPC, 617.17, -21.25, -278.33, 2, 0)
	MovementLoopAddLocation(NPC, 634.22, -19.95, -281.35, 2, 0)
	MovementLoopAddLocation(NPC, 649.03, -20.19, -279.39, 2, 0)
	MovementLoopAddLocation(NPC, 696.61, -17.37, -322.9, 2, 0)
	MovementLoopAddLocation(NPC, 720.18, -17.11, -329.29, 2, 0)
	MovementLoopAddLocation(NPC, 745.9, -17.06, -319.85, 2, 0)
	MovementLoopAddLocation(NPC, 774.57, -18.26, -323.88, 2, 0)
end


