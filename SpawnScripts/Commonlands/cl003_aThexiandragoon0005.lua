--[[
	Script Name		:	cl003athexiandragoon0005.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0005.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:19 AM
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
	MovementLoopAddLocation(NPC, 1357.16, -41.2, -161.96, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1353.59, -41.33, -166.52, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1341.27, -40.63, -185.61, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1343.27, -41.75, -175.23, 1.7, 0)
	MovementLoopAddLocation(NPC, 1347.75, -40.73, -180.37, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1380.48, -36.93, -178.22, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1396.35, -35.99, -178.96, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386.25, -38.96, -145.77, 1.7, math.random(9, 21))
end


