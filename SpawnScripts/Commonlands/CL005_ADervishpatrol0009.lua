--[[
	Script Name		:	CL005_adervishpatrol0009.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0009.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:48 AM
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
	MovementLoopAddLocation(NPC, 1277.01, -33.21, -34.46, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1306.58, -29.06, -26.59, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1316.25, -29.7, -5.04, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1291.18, -33.8, -5.09, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1272.04, -33.97, -37.15, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1290.86, -29.58, -31.41, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1306.88, -20.34, -48.93, 1.8, math.random(4, 12))
end


