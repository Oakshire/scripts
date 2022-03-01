--[[
	Script Name		:	athexiandragoon001.lua
	Script Purpose	:	Waypoint Path for athexiandragoon001.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:24 PM
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
	MovementLoopAddLocation(NPC, 1358.89, -41.4, -262.49, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1336.99, -42.38, -252.83, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.49, -39.86, -255.07, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1347.68, -41.98, -258.74, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1362.84, -38.33, -240.97, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.48, -38.72, -246.81, 1.7, math.random(9, 21))
end


