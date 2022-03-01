--[[
	Script Name		:	grove_deer3.lua
	Script Purpose	:	Waypoint Path for grove_deer3.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:47:44 PM
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
	MovementLoopAddLocation(NPC, 745.21, -16.28, -306.31, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 748.8, -16.66, -284.65, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 776.73, -18.11, -323.43, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 757.75, -20.44, -333.79, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 734.33, -18.68, -329.85, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 740.98, -16.35, -299.53, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 716.05, -17.04, -291.01, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 684.23, -21.1, -305.31, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 726.09, -17.22, -280.33, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 714.97, -17.06, -283.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 723.7, -17.04, -290.11, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 706.86, -17.14, -289.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 747.95, -16.13, -300.55, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 706.86, -17.14, -289.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 723.7, -17.04, -290.11, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 714.97, -17.06, -283.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 726.09, -17.22, -280.33, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 684.23, -21.1, -305.31, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 716.05, -17.04, -291.01, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 740.98, -16.35, -299.53, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 734.33, -18.68, -329.85, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 757.75, -20.44, -333.79, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 776.73, -18.11, -323.43, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 748.8, -16.66, -284.65, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 745.21, -16.28, -306.31, 2, math.random(0,25))
end


