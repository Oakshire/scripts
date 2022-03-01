--[[
	Script Name		:	cl003athexiandragoon0007.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0007.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:24 AM
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
	MovementLoopAddLocation(NPC, 1375.58, -37.74, -174.03, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386.4, -39.38, -136.46, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.72, -40.04, -157.53, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1392.84, -36.38, -173.65, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1372.38, -38.21, -173.67, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1387.87, -38.87, -143.67, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1351.74, -42.64, -152.56, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.75, -38.62, -189.67, 1.7, math.random(9, 21))
end


