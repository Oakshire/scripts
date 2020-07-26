--[[
	Script Name		:	cl003athexiandragoon0004.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0004.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:17 AM
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
	MovementLoopAddLocation(NPC, 1373.66, -40.16, -148.33, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1378.1, -37.41, -173.89, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1387.7, -36.56, -176.39, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1384.31, -38.32, -155.67, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1373.73, -41.95, -122.88, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1393.09, -40.22, -117.97, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1392.31, -39.71, -122.7, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1353.01, -42.12, -157.62, 1.7, math.random(9, 21))
end


