--[[
	Script Name		:	CL004_adervishpatrol0005.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0005.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:37 AM
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
	MovementLoopAddLocation(NPC, 1335.84, -41.14, 212.32, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1353.91, -36.17, 161.86, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1316.58, -41.35, 146.58, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1330.47, -39.63, 150.93, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1318.6, -41.42, 185.81, 1.8, math.random(4, 12))
end


