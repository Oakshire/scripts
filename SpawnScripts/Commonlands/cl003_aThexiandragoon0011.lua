--[[
	Script Name		:	cl003athexiandragoon0011.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0011.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:36 AM
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
	MovementLoopAddLocation(NPC, 1392.62, -38.17, -144.52, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1375.42, -40.71, -139.32, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.8, -40.97, -162.05, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1344.53, -42.06, -171.2, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1349.74, -41.06, -175.76, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1370.42, -39.23, -164.26, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1383.87, -36.73, -177.93, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1377.19, -40.38, -141.32, 1.7, math.random(9, 21))
end


