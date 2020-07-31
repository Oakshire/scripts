--[[
	Script Name		:	CL004_adervishpatrol0003.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0003.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:31 AM
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
	MovementLoopAddLocation(NPC, 1344.51, -37.4, 93.39, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1364.06, -34.43, 123.38, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1366.19, -33.21, 91.68, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1359.2, -35.82, 122.67, 1.8, 0)
	MovementLoopAddLocation(NPC, 1362.17, -34.8, 132, 1.8, 0)
	MovementLoopAddLocation(NPC, 1347.97, -37.31, 151.5, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1365.01, -34.36, 162.09, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1348.48, -37.24, 142.01, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1348.15, -37.26, 132.34, 1.8, 0)
	MovementLoopAddLocation(NPC, 1346.5, -37.32, 102.34, 1.8, math.random(4, 12))
end


