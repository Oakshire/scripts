--[[
	Script Name		:	CL004_adervishpatrol0008.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0008.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:46 AM
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
	MovementLoopAddLocation(NPC, 1342.33, -38.59, 168.89, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1353.03, -37.56, 191.03, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1358.21, -39.41, 221.52, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1355.01, -39.14, 210.78, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1330.56, -40.73, 236.51, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1325.26, -41.76, 206.06, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1338.48, -40.04, 231.51, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1343.27, -39.64, 222.69, 1.8, math.random(4, 12))
end


