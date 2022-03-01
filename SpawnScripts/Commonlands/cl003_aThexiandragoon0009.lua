--[[
	Script Name		:	cl003athexiandragoon0009.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0009.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:31 AM
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
	MovementLoopAddLocation(NPC, 1382.86, -38.3, -157.25, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1363.34, -38.94, -182.73, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1390.11, -36.23, -189.57, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1384.51, -36.66, -178.44, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1372.27, -38.19, -174.13, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1375.74, -37.05, -189.9, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1403.46, -35.61, -176.63, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1402.04, -35.91, -193.95, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1363.11, -37.91, -192.92, 1.7, math.random(9, 21))
end


