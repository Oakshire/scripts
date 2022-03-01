--[[
	Script Name		:	athexiandragoon003.lua
	Script Purpose	:	Waypoint Path for athexiandragoon003.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:34 PM
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
	MovementLoopAddLocation(NPC, 1362.4, -37.48, -234.67, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1366.82, -41.05, -263.59, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1381.87, -38.36, -247.96, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1380.44, -37.76, -243.23, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.36, -38.19, -242.14, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.08, -41.54, -270.57, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1350.04, -39.63, -244.54, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1362.83, -37.62, -235.81, 1.7,  math.random(9, 21))
end


