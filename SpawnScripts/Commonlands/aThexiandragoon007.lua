--[[
	Script Name		:	athexiandragoon007.lua
	Script Purpose	:	Waypoint Path for athexiandragoon007.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:44 PM
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
	MovementLoopAddLocation(NPC, 1373.75, -38.49, -246.8, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.45, -39.68, -252.9, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1340.96, -41.81, -252.6, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1372.33, -36.46, -231.61, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1381.62, -39.91, -261, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1362.81, -38.5, -242.38, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1364.14, -39.86, -253.8, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1364.41, -38.74, -245.79, 1.7,  math.random(9, 21))
end


