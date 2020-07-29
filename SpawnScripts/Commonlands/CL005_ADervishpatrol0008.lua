--[[
	Script Name		:	CL005_adervishpatrol0008.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0008.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:45 AM
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
	MovementLoopAddLocation(NPC, 1319.26, -29.25, -16.03, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1306.56, -30.64, -4.28, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1316.17, -26.41, -36.42, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1322.43, -29.4, -5.1, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1303.48, -29.44, -20.68, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1300.05, -24.11, -47.88, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1319.3, -29.25, -16.1, 1.8, math.random(4, 12))
end


