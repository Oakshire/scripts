--[[
	Script Name		:	cl003athexiandragoon0012.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0012.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:44 AM
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
	MovementLoopAddLocation(NPC, 1368.34, -38.75, -173.7, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1383.23, -36.64, -186.18, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.11, -41.44, -157.62, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1381.04, -40.66, -127.45, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1360.3, -41.98, -147.95, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.17, -39.74, -166.66, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1382.37, -37.5, -166.31, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1359.99, -41.97, -148.62, 1.7, math.random(9, 21))
end


