--[[
	Script Name		:	CL004_adervishpatrol0006.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0006.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:40 AM
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
	MovementLoopAddLocation(NPC, 1342.22, -37.8, 136.23, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1362.8, -34.8, 137.13, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1368.01, -34, 127.19, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1364.85, -33.79, 96.75, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1342.69, -37.75, 102.06, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1329.41, -39.89, 133.17, 1.8, math.random(4, 12))
end


