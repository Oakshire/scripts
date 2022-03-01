--[[
	Script Name		:	cl003athexiandragoon0008.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0008.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:27 AM
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
	MovementLoopAddLocation(NPC, 1365.98, -38.38, -185.68, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1343.75, -42.22, -168.19, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.66, -38.79, -178.68, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1351.87, -41.56, -166.53, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1344.6, -40.95, -180.8, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1371.92, -38.97, -164.97, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1377.8, -41.04, -127.71, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.11, -40.54, -157.33, 1.7, math.random(9, 21))
end


