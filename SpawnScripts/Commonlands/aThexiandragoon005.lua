--[[
	Script Name		:	athexiandragoon005.lua
	Script Purpose	:	Waypoint Path for athexiandragoon005.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:39 PM
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
	MovementLoopAddLocation(NPC, 1369.69, -40.82, -263.45, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1346.36, -39.9, -245.72, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1362.69, -41.55, -265.91, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1364.15, -39.23, -249.26, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1381.82, -40.85, -269.55, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1366.91, -38.3, -243.33, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.29, -37.87, -240.61, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.76, -41.66, -264.54, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1376.38, -36.44, -232.65, 1.7,  math.random(9, 21))
end


