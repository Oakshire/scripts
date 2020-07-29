--[[
	Script Name		:	CL005_adervishpatrol0001.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0001.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:28 AM
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
	MovementLoopAddLocation(NPC, 1255.07, -31.69, -143.65, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1262.78, -35.19, -116.39, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1278.73, -33.07, -127.12, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1285.21, -32.63, -105.12, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1276.22, -32.86, -132.57, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1256.07, -33.87, -131.84, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1268.89, -32.35, -137.65, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1231.55, -41.35, -116.25, 1.8, 0)
	MovementLoopAddLocation(NPC, 1225.97, -39.67, -131.92, 1.8, math.random(4, 12))
end


