--[[
	Script Name		:	CL004_adervishpatrol0002.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0002.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:28 AM
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
	MovementLoopAddLocation(NPC, 1312.36, -41.41, 77.54, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1333.61, -36.35, 51.99, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1336.64, -37.16, 66.96, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1351.34, -36.32, 92.38, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1363.14, -33.41, 77.2, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1345.55, -36.18, 72.01, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1328.3, -38.92, 72.67, 1.8, math.random(4, 12))
end


