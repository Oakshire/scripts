--[[
	Script Name		:	athexiandragoon006.lua
	Script Purpose	:	Waypoint Path for athexiandragoon006.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:42 PM
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
	MovementLoopAddLocation(NPC, 1342.29, -43.53, -264.63, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1375.86, -39.28, -252.93, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1359.73, -41.53, -264.54, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1369.71, -38.05, -242.32, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.27, -37.57, -233.54, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1377.64, -38.2, -245.67, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1345, -40.15, -246.94, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1366.57, -40.78, -261.11, 1.7,  math.random(9, 21))
end


