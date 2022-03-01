--[[
	Script Name		:	CL005_adervishpatrol00010.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol00010.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:50 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1244.3, -31.64, -164.88, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1209.18, -37.21, -180.56, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1235.09, -32.89, -158.75, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1216.2, -35.09, -185.88, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1225.69, -39.68, -132.22, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1225.49, -38.7, -136.98, 1.8, math.random(4, 12))
end


