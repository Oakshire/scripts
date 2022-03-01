--[[
	Script Name		:	CL003athexiandragoon0001.lua
	Script Purpose	:	Waypoint Path for CL003athexiandragoon0001.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:10 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1353.85, -39.27, -187.45, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1394.02, -38.24, -138.9, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386, -39.21, -141.74, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1385.7, -42.19, -111.7, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1369.04, -41.57, -138.8, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1352.15, -41.03, -173.78, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1347.88, -41.48, -173.51, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1383.07, -36.67, -182.8, 1.7, math.random(9, 21))
end


