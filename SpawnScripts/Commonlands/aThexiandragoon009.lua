--[[
	Script Name		:	athexiandragoon009.lua
	Script Purpose	:	Waypoint Path for athexiandragoon009.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:48 PM
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
	MovementLoopAddLocation(NPC, 1363.7, -38.81, -246.04, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1373.64, -40.14, -258.74, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.46, -39.83, -253.95, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1385.85, -38.37, -249.5, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1369.59, -37.51, -238.41, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1370.9, -41.37, -270.59, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1361.35, -38.95, -244.56, 1.7,  math.random(9, 21))
end


