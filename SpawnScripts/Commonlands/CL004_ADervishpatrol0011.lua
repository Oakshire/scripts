--[[
	Script Name		:	CL004_adervishpatrol0011.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0011.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:54 AM
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
	MovementLoopAddLocation(NPC, 1368.04, -34.17, 147.32, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1356.04, -36.53, 127.11, 1.8, 0)
	MovementLoopAddLocation(NPC, 1344.83, -37.53, 122.38, 1.8, 0)
	MovementLoopAddLocation(NPC, 1340.9, -37.88, 121.95, 1.8, 0)
	MovementLoopAddLocation(NPC, 1342.14, -37.75, 117.03, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1329.07, -39.83, 102.3, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1322.96, -40.63, 85.87, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1372.51, -33.47, 128.57, 1.8, math.random(4, 12))
end


