--[[
	Script Name		:	a_rat.lua
	Script Purpose	:	Waypoint Path for a_rat.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 03:20:22 PM
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
	MovementLoopAddLocation(NPC, 602, -31.23, -241.01, 2, 0)
	MovementLoopAddLocation(NPC, 609.41, -35.26, -229.93, 2, 0)
	MovementLoopAddLocation(NPC, 612.4, -35.72, -231.92, 2, 0)
	MovementLoopAddLocation(NPC, 604.44, -35.79, -244.07, 2, 0)
	MovementLoopAddLocation(NPC, 605.41, -36.45, -244.94, 2, 0)
	MovementLoopAddLocation(NPC, 616.26, -36.47, -229.21, 2, 0)
	MovementLoopAddLocation(NPC, 613.22, -35.23, -227.51, 2, 0)
	MovementLoopAddLocation(NPC, 603.78, -31.21, -240.71, 2, 0)
	MovementLoopAddLocation(NPC, 588.46, -28, -230.24, 2, 0)
	MovementLoopAddLocation(NPC, 603.78, -31.21, -240.71, 2, 0)
	MovementLoopAddLocation(NPC, 613.22, -35.23, -227.51, 2, 0)
	MovementLoopAddLocation(NPC, 616.26, -36.47, -229.21, 2, 0)
	MovementLoopAddLocation(NPC, 605.41, -36.45, -244.94, 2, 0)
	MovementLoopAddLocation(NPC, 604.44, -35.79, -244.07, 2, 0)
	MovementLoopAddLocation(NPC, 612.4, -35.72, -231.92, 2, 0)
	MovementLoopAddLocation(NPC, 609.41, -35.26, -229.93, 2, 0)
	MovementLoopAddLocation(NPC, 602, -31.23, -241.01, 2, 0)
end


