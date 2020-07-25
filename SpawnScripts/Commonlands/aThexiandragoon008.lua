--[[
	Script Name		:	athexiandragoon008.lua
	Script Purpose	:	Waypoint Path for athexiandragoon008.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:46 PM
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
	MovementLoopAddLocation(NPC, 1354.7, -42.04, -263.1, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1377.91, -36.47, -233.38, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1364.06, -41.62, -268.17, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.17, -37.58, -237.28, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1345.12, -38.14, -233.75, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1343.21, -38.19, -233.7, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1380.59, -38.89, -251.63, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1351.9, -42.25, -262.43, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1366.71, -41.23, -265.83, 1.7,  math.random(9, 21))
end


