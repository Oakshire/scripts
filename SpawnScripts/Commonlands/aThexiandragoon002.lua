--[[
	Script Name		:	athexiandragoon002.lua
	Script Purpose	:	Waypoint Path for athexiandragoon002.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:28 PM
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
	MovementLoopAddLocation(NPC, 1342.51, -40.24, -246.59, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1338.16, -42.59, -254.4, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1344.88, -39.16, -240.5, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1353.44, -41.44, -257.63, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1380.46, -40.19, -263.52, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1343.6, -43.22, -261.06, 1.7,  math.random(9, 21))
end


